struct Struct_1 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec4<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 11>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec4<bool> {
    let var_0 = Struct_1(-22717i, _wgslsmith_mult_vec2_i32(-_wgslsmith_div_vec2_i32(abs(vec2<i32>(u_input.a.x, -41553i)), -u_input.a.zz), firstLeadingBit(vec2<i32>(1i, 1i))));
    global0 = array<u32, 11>();
    return vec4<bool>(false, ~global0[_wgslsmith_index_u32(4294967295u, 11u)] != _wgslsmith_mult_u32(~_wgslsmith_add_u32(11362u, 31933u), _wgslsmith_mod_u32(21732u, global0[_wgslsmith_index_u32(firstLeadingBit(61057u), 11u)])), false, true | all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: i32) -> Struct_2 {
    let var_0 = ~(~(~(~select(arg_1.xx, vec2<u32>(0u, 32682u), vec2<bool>(arg_0, true)))));
    let var_1 = func_3();
    global0 = array<u32, 11>();
    let var_2 = Struct_2(arg_1.zyx, reverseBits(select(u_input.a.zx, u_input.a.xz, !(!var_1.wz))), !select(select(var_1.xxz, !var_1.zww, var_1.x & false), vec3<bool>(arg_0, all(var_1.zzy), true & arg_0), true), abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -1i, arg_2), min(vec3<i32>(arg_2, 1i, u_input.b), vec3<i32>(39862i, arg_2, arg_2))), _wgslsmith_add_i32(~(-903i), 55271i), -_wgslsmith_dot_vec3_i32(u_input.a, u_input.a), -u_input.c)), select(-u_input.a.xz, select(vec2<i32>(-37942i, 1i), vec2<i32>(arg_2, u_input.c), var_1.x), vec2<bool>(all(vec2<bool>(var_1.x, arg_0)), true)) << (arg_1.ww % vec2<u32>(32u)));
    let var_3 = u_input.c;
    return var_2;
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = func_2(true, _wgslsmith_clamp_vec4_u32(~max(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(45576u, 11u)], 11u)], 85599u, arg_0, arg_0), _wgslsmith_mult_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(arg_0, 11u)], 1u, arg_0, global0[_wgslsmith_index_u32(43573u, 11u)]), vec4<u32>(arg_0, 14338u, global0[_wgslsmith_index_u32(arg_0, 11u)], arg_0))), vec4<u32>(countOneBits(arg_0 | arg_0), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 25272u), 11u)], ~(~arg_0), 61659u), ~vec4<u32>(global0[_wgslsmith_index_u32(1u, 11u)] << (4294967295u % 32u), global0[_wgslsmith_index_u32(arg_0, 11u)] ^ arg_0, arg_0, _wgslsmith_mult_u32(1u, global0[_wgslsmith_index_u32(25641u, 11u)]))), 15320i);
    var var_1 = ~_wgslsmith_dot_vec2_u32(var_0.a.zz, _wgslsmith_div_vec2_u32(var_0.a.xz, var_0.a.zx << (vec2<u32>(global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(arg_0, 11u)]) % vec2<u32>(32u)))) | ~arg_0;
    var_1 = ~var_0.a.x;
    var_1 = 19703u;
    var var_2 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.a, min(u_input.a, _wgslsmith_mult_vec3_i32(abs(vec3<i32>(u_input.b, 1i, u_input.a.x)), ~vec3<i32>(26215i, u_input.b, 45810i)))), min(_wgslsmith_add_vec2_i32(u_input.a.yy, vec2<i32>(12001i, -7717i) >> (vec2<u32>(arg_0, 4294967295u) % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(var_0.b, u_input.a.yx)));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~27257u, global0[_wgslsmith_index_u32(~53917u, 11u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(43991u, 125851u), 11u)], 11u)], ~10574u, ~95770u)), 4294967295u));
    let var_1 = Struct_1(min(-(-15857i << (var_0.a.x % 32u)), var_0.b.x) ^ _wgslsmith_add_i32(~(~50176i), 3178i), countOneBits(var_0.b));
    let var_2 = vec2<bool>(!func_1(~0u).c.x, !var_0.c.x);
    var var_3 = _wgslsmith_sub_i32(u_input.b, _wgslsmith_clamp_i32(-var_0.e.x << (20393u % 32u), -59806i, reverseBits(~u_input.c) ^ 1i));
    var var_4 = var_0;
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-412f, -637f))), -587f, _wgslsmith_f_op_f32(trunc(-1035f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1032f, 1137f, 121f), vec3<f32>(-509f, 1555f, -1350f), vec3<bool>(false, var_2.x, var_4.c.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(-1666f, -380f, -339f), vec3<f32>(468f, -1256f, 649f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-426f, -1509f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_5.x, -207f)), !(!vec2<bool>(var_2.x, var_2.x)))))));
}

