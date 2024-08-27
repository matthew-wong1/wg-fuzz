struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: Struct_4;

var<private> global2: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_5(reverseBits(firstLeadingBit(-15081i ^ min(global1.a, 1i))), true, -(~(-(i32(-1i) * -17741i))));
    var var_1 = Struct_1(all(select(select(vec2<bool>(true, global1.d), vec2<bool>(false, var_0.b), vec2<bool>(false, var_0.b)), vec2<bool>(var_0.b, var_0.b), true)) & var_0.b, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global1.b)) + 944f), _wgslsmith_f_op_f32(f32(-1f) * -271f), _wgslsmith_f_op_f32(max(-770f, _wgslsmith_f_op_f32(step(global1.b, 1037f))))))), -1i, firstLeadingBit(~(~(~vec4<u32>(global0.x, global0.x, 44180u, 83773u)))));
    global1 = Struct_4(global1.a, 1000f, min(vec3<i32>(var_0.a, ~var_0.c, 33213i), vec3<i32>(_wgslsmith_add_i32(-1i, var_1.c), ~var_0.c, -2147483647i)), true);
    let var_2 = var_1.b.zw;
    return vec3<i32>(firstTrailingBit(_wgslsmith_div_i32(-2147483647i, var_1.c & firstTrailingBit(-1i))), countOneBits(_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, abs(0i)), firstTrailingBit(u_input.c))), (_wgslsmith_sub_i32(firstTrailingBit(u_input.c), -var_0.c) & -(~u_input.c)) << ((select(34119u, 4294967295u & u_input.b, any(vec3<bool>(false, true, false))) ^ u_input.a.x) % 32u));
}

fn func_4(arg_0: vec3<i32>) -> u32 {
    global1 = Struct_4(arg_0.x, _wgslsmith_f_op_f32(trunc(global1.b)), arg_0, global1.d);
    global2 = any(!(!vec4<bool>(true, 1106f > global1.b, false | global1.d, true)));
    var var_0 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(848f)) * global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1576f * 275f))), global1.b, 715f);
    let var_1 = Struct_3(~global0.x, vec3<u32>(1u, u_input.b, abs(~global0.x)));
    global0 = ~firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(4294967295u, 73471u, var_1.a, var_1.a) & (vec4<u32>(global0.x, var_1.a, 74657u, 13656u) >> (vec4<u32>(1u, global0.x, global0.x, global0.x) % vec4<u32>(32u))), abs(~vec4<u32>(global0.x, 1u, var_1.b.x, 39160u))));
    return 6447u;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<bool>) -> vec4<u32> {
    global0 = ~vec4<u32>(7030u, 1u, func_4(func_3()), min(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(4294967295u, u_input.b, global0.x)) & global0.x, _wgslsmith_clamp_u32(global0.x, u_input.a.x, global0.x) >> (func_4(vec3<i32>(-1i, u_input.c, 0i)) % 32u)));
    global1 = Struct_4(global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b, global1.b))), countOneBits(vec3<i32>(_wgslsmith_mod_i32(-7702i, ~55319i), -1i, _wgslsmith_mult_i32(-7499i, -21136i))), global1.d);
    return vec4<u32>(u_input.b, u_input.a.x, 0u, 65183u);
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-533f, _wgslsmith_f_op_f32(global1.b * -1686f), _wgslsmith_f_op_f32(min(global1.b, 1000f))))))));
    global0 = countOneBits(func_2(!(!vec4<bool>(false, global1.d, false, true)), !vec4<bool>(all(vec4<bool>(false, global1.d, false, global1.d)), any(vec2<bool>(false, global1.d)), global1.b > -490f, false)));
    global1 = Struct_4(global1.c.x, -1000f, abs(func_3()), !all(vec2<bool>(global1.d, false)));
    global0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.x, ~44131u, _wgslsmith_dot_vec4_u32(arg_0, arg_0)), u_input.a & (_wgslsmith_add_vec3_u32(global0.wxx, vec3<u32>(u_input.b, 4294967295u, 106551u)) & ~vec3<u32>(global0.x, u_input.a.x, 4294967295u))), u_input.b, abs(4294967295u), ~4294967295u);
    let var_1 = Struct_4(26222i, _wgslsmith_f_op_f32(524f - _wgslsmith_f_op_f32(sign(865f))), global1.c, !(601f > var_0.x));
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(~(~(~(vec4<u32>(71252u, 1u, global0.x, 1u) ^ vec4<u32>(global0.x, global0.x, u_input.a.x, 27752u)))));
    let var_0 = ((vec4<i32>(-1i) * -vec4<i32>(2147483647i, 1759i, global1.a, global1.c.x)) << (~(~_wgslsmith_div_vec4_u32(vec4<u32>(16864u, 7750u, u_input.b, 73744u), vec4<u32>(50286u, global0.x, u_input.a.x, global0.x))) % vec4<u32>(32u))) >> (vec4<u32>(1u, ~func_1(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(u_input.a.zx, vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(132901u, u_input.a.x)), _wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, u_input.b, global0.x, global0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, u_input.b, u_input.b, global0.x) >> (vec4<u32>(u_input.b, 55736u, u_input.b, 1u) % vec4<u32>(32u)), vec4<u32>(u_input.b, 4294967295u, global0.x, global0.x)))) % vec4<u32>(32u));
    global1 = Struct_4(_wgslsmith_add_i32(-u_input.c, i32(-1i) * -183i), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.b)) + global1.b)))), abs(global1.c), global1.d);
    let var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(abs(global1.b)), _wgslsmith_f_op_f32(-global1.b), _wgslsmith_f_op_f32(-527f + _wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.b, 2012f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -770f, 665f)) - vec3<f32>(1029f, -1105f, global1.b))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1152f, 724f, global1.b))))))))));
    let var_3 = var_2.yy;
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(0u));
}

