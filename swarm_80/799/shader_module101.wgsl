struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<u32>(27185u, 0u, 35744u, 0u), -1i, vec3<f32>(-505f, -1089f, 911f), vec3<bool>(false, true, true));

var<private> global1: array<Struct_1, 15>;

var<private> global2: Struct_1;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32) -> u32 {
    global0 = Struct_1(min(firstLeadingBit(vec4<u32>(u_input.b, _wgslsmith_add_u32(global0.a.x, 0u), 1u, global0.a.x)), vec4<u32>(global2.a.x, min(max(global2.a.x, 4294967295u), _wgslsmith_add_u32(global2.a.x, 54606u)), 10206u, _wgslsmith_dot_vec2_u32(~global0.a.wy, ~vec2<u32>(4294967295u, 4294967295u)))), firstLeadingBit(-_wgslsmith_clamp_i32(select(-2147483647i, global0.b, false), u_input.c.x, arg_0)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-611f, global2.c.x, global0.c.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.c))))), !global0.d);
    var var_0 = global0.d;
    global1 = array<Struct_1, 15>();
    var_0 = global2.d;
    var var_1 = select(vec3<bool>(global2.d.x, (15312u >> (~u_input.a.x % 32u)) >= global0.a.x, true), vec3<bool>(2147483647i > (_wgslsmith_dot_vec4_i32(vec4<i32>(-6927i, global0.b, 0i, global0.b), vec4<i32>(29260i, 1i, 5808i, global0.b)) << (~global0.a.x % 32u)), select(false, var_0.x, true), !var_0.x), global2.d.x);
    return ~57024u;
}

fn func_2(arg_0: vec3<u32>) -> u32 {
    global2 = Struct_1(~_wgslsmith_add_vec4_u32(global0.a, vec4<u32>(func_3(-1i), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.x, arg_0.x), vec2<u32>(arg_0.x, 93438u)), min(u_input.a.x, 4446u))), ~_wgslsmith_div_i32(~min(0i, global2.b), -_wgslsmith_clamp_i32(1i, 27695i, global2.b)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.c.x, 651f, -558f))), global0.c)), select(global2.d, !global2.d, true));
    var var_0 = _wgslsmith_dot_vec3_u32(abs(global2.a.ywy), u_input.a);
    var var_1 = u_input.b;
    global1 = array<Struct_1, 15>();
    let var_2 = countOneBits(abs(arg_0.x));
    return ~arg_0.x;
}

fn func_4(arg_0: Struct_1) -> i32 {
    global1 = array<Struct_1, 15>();
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(global2.a.x), 15u)];
    var var_1 = ~var_0.b;
    var_1 = (45387i ^ _wgslsmith_add_i32(_wgslsmith_sub_i32(global0.b, reverseBits(0i)), _wgslsmith_mult_i32(~0i, countOneBits(-2147483647i)))) & _wgslsmith_dot_vec2_i32(vec2<i32>(~2147483647i, countOneBits(0i)), firstLeadingBit(abs(_wgslsmith_sub_vec2_i32(u_input.c.zz, vec2<i32>(arg_0.b, global2.b)))));
    let var_2 = _wgslsmith_f_op_f32(-775f - _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    return 1i;
}

fn func_1() -> Struct_1 {
    global0 = global1[_wgslsmith_index_u32(~(~global2.a.x), 15u)];
    var var_0 = func_4(Struct_1(vec4<u32>((1u >> (global0.a.x % 32u)) & ~u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 87286u, global0.a.x), ~global0.a.zzx), global2.a.x | 4294967295u, func_2(global2.a.zzx) >> (_wgslsmith_div_u32(0u, 20455u) % 32u)), -abs(-global0.b), global0.c, select(select(select(vec3<bool>(true, global2.d.x, global0.d.x), global0.d, true), !vec3<bool>(global2.d.x, false, global0.d.x), vec3<bool>(false, true, false)), !vec3<bool>(true, false, global0.d.x), vec3<bool>(any(vec2<bool>(false, global0.d.x)), global0.d.x, global2.d.x))));
    var var_1 = Struct_1(~select(vec4<u32>(firstLeadingBit(0u), _wgslsmith_mod_u32(global2.a.x, u_input.a.x), 4294967295u, ~global2.a.x), vec4<u32>(global0.a.x >> (global2.a.x % 32u), u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, global2.a.x, global2.a.x, 4294967295u), global2.a), global2.a.x), !vec4<bool>(global2.d.x, true, global0.d.x, global0.d.x)), ~_wgslsmith_dot_vec2_i32(~max(vec2<i32>(u_input.c.x, 61230i), u_input.c.zy), ~vec2<i32>(27995i, -70527i)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1734f, 1000f, global0.c.x), vec3<f32>(-978f, global0.c.x, global0.c.x))))) * vec3<f32>(global2.c.x, _wgslsmith_f_op_f32(global0.c.x + -1434f), _wgslsmith_f_op_f32(-1000f - global2.c.x))))), select(global0.d, !vec3<bool>(true, false, all(vec2<bool>(global0.d.x, global0.d.x))), all(global2.d.zz)));
    let var_2 = var_1.d;
    global2 = Struct_1(vec4<u32>(abs(global2.a.x), 42282u, countOneBits(_wgslsmith_dot_vec3_u32(select(global2.a.yzy, vec3<u32>(u_input.b, global0.a.x, global2.a.x), global2.d.x), vec3<u32>(global2.a.x, var_1.a.x, var_1.a.x))), 1u), reverseBits(-min(-2147483647i, var_1.b)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(508f, _wgslsmith_f_op_f32(550f + -1340f), -271f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.x, global2.c.x, _wgslsmith_f_op_f32(-global0.c.x))))), var_1.d);
    return global1[_wgslsmith_index_u32(global0.a.x, 15u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    let var_1 = -2147483647i;
    let var_2 = Struct_1(max(max(min(vec4<u32>(1u, 4294967295u, global0.a.x, 33597u), global2.a), var_0.a), var_0.a) ^ ~global0.a, u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(global0.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(197f, 738f, -1599f)), var_0.d.x))), select(func_1().d, vec3<bool>(!(!global0.d.x), !select(var_0.d.x, false, true), true), global0.c.x == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x * -2158f))));
    let var_3 = true;
    let var_4 = reverseBits(vec2<u32>(~1u, ~(~max(0u, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b);
}

