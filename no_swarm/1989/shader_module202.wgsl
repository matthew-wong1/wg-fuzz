struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec3<bool>,
    e: bool,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<Struct_1, 10>;

var<private> global2: vec2<f32> = vec2<f32>(1817f, -649f);

var<private> global3: array<f32, 1>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> u32 {
    global3 = array<f32, 1>();
    let var_0 = arg_2;
    let var_1 = arg_1;
    let var_2 = vec3<i32>(-1i) * -u_input.b.wyw;
    var var_3 = 76671u;
    return 0u;
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_3(vec2<u32>(arg_3.a, _wgslsmith_mult_u32(func_2(vec2<u32>(arg_3.b, 1u), Struct_3(vec2<u32>(0u, 60395u)), global1[_wgslsmith_index_u32(5157u, 10u)], -344f), ~arg_3.a)) & vec2<u32>(arg_3.a, select(firstLeadingBit(46037u), 129592u, true)));
    var var_1 = Struct_3(~vec2<u32>(76203u, 4294967295u));
    global2 = vec2<f32>(-197f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, global2.x)))) - _wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(min(33799u, arg_3.a) << (var_0.a.x % 32u), 1u)]))));
    let var_2 = Struct_1(_wgslsmith_sub_u32(var_1.a.x, var_1.a.x), var_1.a.x);
    let var_3 = arg_3;
    return var_2;
}

fn func_3(arg_0: vec4<i32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(10978u, 1u)], Struct_1(max(~6182u, ~1u), 0u >> ((32254u << ((arg_1.b >> (4294967295u % 32u)) % 32u)) % 32u)), global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~arg_1.a & 90552u), 10u)], !select(vec3<bool>(true, true, any(vec2<bool>(false, true))), vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, false)), true, true)), true);
    let var_1 = Struct_1(countOneBits(~(~4294967295u)), var_0.c.a);
    global3 = array<f32, 1>();
    var var_2 = u_input.b;
    var var_3 = global3[_wgslsmith_index_u32(1u, 1u)];
    return _wgslsmith_mod_u32(~1u, 4485u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = true;
    let var_2 = Struct_2(global3[_wgslsmith_index_u32(min(func_3(vec4<i32>(-1i, 1i, u_input.b.x, u_input.b.x), func_1(vec2<bool>(false, false), vec2<bool>(true, true), -33647i, global1[_wgslsmith_index_u32(1u, 10u)])) << (~1u % 32u), 1u << (func_2(~vec2<u32>(0u, 33265u), Struct_3(vec2<u32>(22664u, 1u)), global1[_wgslsmith_index_u32(1u, 10u)], _wgslsmith_f_op_f32(global2.x * global2.x)) % 32u)), 1u)], func_1(!select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec2<bool>(true, true), -1i, Struct_1(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(19544u, 1u), vec2<u32>(4294967295u, 0u)), 4294967295u), ~1u)), global1[_wgslsmith_index_u32(0u, 10u)], select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(-13144i != u_input.b.x, true, false), all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true)))), !select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true), vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), true)), false), all(vec4<bool>(any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false)), false, !any(vec4<bool>(false, true, false, true)), true)));
    let var_3 = _wgslsmith_dot_vec3_i32(-_wgslsmith_mod_vec3_i32(u_input.b.zzx, vec3<i32>(min(u_input.a, -17972i), u_input.b.x >> (var_2.c.b % 32u), u_input.b.x)), u_input.b.zyw);
    global0 = any(vec3<bool>(var_2.d.x, any(vec4<bool>(select(var_2.e, var_2.e, var_2.d.x), true, !var_2.e, global3[_wgslsmith_index_u32(var_2.b.a, 1u)] != -1128f)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(var_2.c.b, 0u), vec2<u32>(16824u, var_2.b.a)), firstLeadingBit(vec2<u32>(var_2.b.a, 18101u))) <= ~(var_2.b.b | 23207u)));
    var var_4 = vec2<i32>(~2147483647i, ~(-762i));
    var var_5 = !(_wgslsmith_f_op_f32(trunc(var_2.a)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a)))));
    var_4 = _wgslsmith_add_vec2_i32(select(reverseBits(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.zy, vec2<i32>(-38584i, var_4.x)), vec2<i32>(u_input.a, -66425i))), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_4.x, _wgslsmith_add_i32(22215i, -2147483647i)), countOneBits(u_input.b.zy), vec2<i32>(~var_4.x, u_input.a)), false), u_input.b.wz);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.wwz);
}

