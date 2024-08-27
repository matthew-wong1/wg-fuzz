struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 13>;

var<private> global1: array<bool, 25> = array<bool, 25>(true, false, false, true, true, false, false, false, true, false, false, true, false, true, true, false, false, false, false, true, true, true, true, true, false);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec2<bool> {
    global1 = array<bool, 25>();
    var var_0 = u_input.c.yyw;
    let var_1 = Struct_2(768f, vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 25u)], 7633i == var_0.x));
    global0 = array<vec3<bool>, 13>();
    let var_2 = Struct_2(529f, select(select(select(select(var_1.b, vec2<bool>(false, var_1.b.x), var_1.b), vec2<bool>(var_1.b.x, false), !var_1.b), var_1.b, var_1.b), select(!(!var_1.b), vec2<bool>(true, true), select(!var_1.b, select(var_1.b, vec2<bool>(true, false), global1[_wgslsmith_index_u32(10015u, 25u)]), any(vec3<bool>(false, true, var_1.b.x)))), select(var_1.b, var_1.b, select(vec2<bool>(global1[_wgslsmith_index_u32(u_input.b, 25u)], false), vec2<bool>(true, true), global1[_wgslsmith_index_u32(abs(0u), 25u)]))));
    return vec2<bool>(var_2.b.x, var_2.b.x);
}

fn func_2() -> vec2<bool> {
    global1 = array<bool, 25>();
    let var_0 = Struct_1(u_input.c.x, _wgslsmith_clamp_vec3_i32(~_wgslsmith_mult_vec3_i32(~u_input.c.yyz, -u_input.c.zzy), ~(-u_input.c.xyw & u_input.c.yyy), u_input.c.zxy));
    var var_1 = vec3<i32>(~0i, u_input.c.x, i32(-1i) * -27392i);
    global0 = array<vec3<bool>, 13>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-138f, _wgslsmith_f_op_f32(trunc(282f))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1606f, 1238f))));
    return func_3();
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    let var_0 = arg_2;
    global1 = array<bool, 25>();
    let var_1 = arg_1;
    global1 = array<bool, 25>();
    let var_2 = !select(var_0, func_3().x | any(select(vec4<bool>(arg_0.b.x, true, global1[_wgslsmith_index_u32(4294967295u, 25u)], arg_0.b.x), vec4<bool>(false, false, false, global1[_wgslsmith_index_u32(4294967295u, 25u)]), arg_2)), false);
    return Struct_2(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(select(-632f, arg_0.a, true))), vec2<bool>(select(true == arg_2, arg_2, (arg_2 || false) | true), all(!vec2<bool>(arg_2, true))));
}

fn func_1(arg_0: f32, arg_1: bool) -> Struct_1 {
    global1 = array<bool, 25>();
    var var_0 = 8654i >> ((~(~(~u_input.b)) ^ ~(~_wgslsmith_add_u32(u_input.b, 1u))) % 32u);
    var var_1 = 0u;
    var var_2 = vec4<bool>(false, false, all(!select(select(vec4<bool>(true, arg_1, false, true), vec4<bool>(false, true, false, true), global1[_wgslsmith_index_u32(u_input.b, 25u)]), select(vec4<bool>(arg_1, false, global1[_wgslsmith_index_u32(u_input.b, 25u)], false), vec4<bool>(arg_1, global1[_wgslsmith_index_u32(u_input.b, 25u)], true, true), vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 25u)], global1[_wgslsmith_index_u32(4294967295u, 25u)], arg_1, global1[_wgslsmith_index_u32(u_input.b, 25u)])), true)), true);
    let var_3 = func_4(Struct_2(3114f, func_2()), Struct_1(u_input.c.x, vec3<i32>(u_input.d.x, _wgslsmith_add_i32(0i, u_input.a) & 1i, firstTrailingBit(~u_input.a))), var_2.x);
    return Struct_1(u_input.c.x, countOneBits(u_input.c.wzy));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~1i, min(countOneBits(u_input.c.zxw), u_input.c.zzx));
    let var_1 = true;
    global0 = array<vec3<bool>, 13>();
    var var_2 = func_1(1f, global1[_wgslsmith_index_u32(~u_input.b, 25u)]);
    var var_3 = func_3().x;
    let var_4 = Struct_1(-2147483647i, -func_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(171f, -1351f), 1f, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.b, 22387u, 7238u), vec4<u32>(u_input.b, u_input.b, u_input.b, 5122u)), 25u)])), true).b);
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.b, abs(25525u) ^ ~u_input.b, ~(68442u << (u_input.b % 32u))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2073f - _wgslsmith_f_op_f32(f32(-1f) * -269f)), 1000f), 552f)), ~((select(vec4<i32>(-18227i, -1i, var_0.a, -18329i), u_input.c, vec4<bool>(false, true, true, global1[_wgslsmith_index_u32(u_input.b, 25u)])) ^ vec4<i32>(8387i, 1i, -1i, var_0.a)) >> (~(~vec4<u32>(86784u, 30959u, u_input.b, u_input.b)) % vec4<u32>(32u))));
}

