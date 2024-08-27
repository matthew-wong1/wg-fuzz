struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<vec2<f32>, 18>;

var<private> global2: bool;

var<private> global3: array<bool, 18>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: f32, arg_2: bool, arg_3: i32) -> vec2<i32> {
    global1 = array<vec2<f32>, 18>();
    let var_0 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, -1182f, arg_1) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-988f, arg_1, 423f, 681f), vec4<f32>(arg_1, 1730f, -1256f, arg_1)))), vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_1)), _wgslsmith_f_op_f32(-577f - 397f), arg_1, -1000f))))));
    global2 = false;
    global3 = array<bool, 18>();
    let var_1 = Struct_1(~_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(-12281i, arg_3) << (u_input.b.xx % vec2<u32>(32u))), vec2<i32>(arg_3, arg_3)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.x * 1000f), -1535f, arg_2 || false)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.x)), var_0.x)), 148f)), _wgslsmith_f_op_f32(-578f + -431f));
    return var_1.a;
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: vec2<f32>) -> i32 {
    let var_0 = -105f;
    global0 = false;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global1[_wgslsmith_index_u32(arg_0, 18u)], global1[_wgslsmith_index_u32(32276u, 18u)], vec2<bool>(global3[_wgslsmith_index_u32(28173u, 18u)], true))) * vec2<f32>(-2263f, -368f)), vec2<f32>(_wgslsmith_f_op_f32(select(var_0, 1256f, false)), -2686f))));
    var var_2 = Struct_1(_wgslsmith_mult_vec2_i32(min(vec2<i32>(1i, 1i) ^ -vec2<i32>(arg_1, 0i), _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_1, arg_1), abs(vec2<i32>(arg_1, arg_1)), ~vec2<i32>(-1i, arg_1))), min(vec2<i32>(arg_1, arg_1), _wgslsmith_mult_vec2_i32(func_3(arg_0, -361f, false, -2491i), vec2<i32>(arg_1, 4062i)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-725f - -476f)))), _wgslsmith_f_op_f32(-724f * arg_2.x));
    let var_3 = Struct_1(var_2.a, _wgslsmith_f_op_f32(-var_1.x), 378f);
    return arg_1;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: bool) -> bool {
    let var_0 = select(_wgslsmith_clamp_i32(reverseBits(~arg_1.a.x), func_2(1u, arg_1.a.x, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b, arg_1.c) - vec2<f32>(arg_1.c, arg_1.c))), firstLeadingBit(2147483647i)), abs(arg_1.a.x), true) | _wgslsmith_dot_vec3_i32(countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.x, arg_1.a.x, 43206i), vec3<i32>(3668i, 0i, -844i))) & vec3<i32>(_wgslsmith_mod_i32(arg_1.a.x, arg_1.a.x), i32(-1i) * -32780i, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.a.x, 2147483647i, arg_1.a.x, arg_1.a.x), vec4<i32>(arg_1.a.x, 1i, arg_1.a.x, -44588i))), ~vec3<i32>(-76728i, -1i, 2147483647i) | (~vec3<i32>(1i, arg_1.a.x, arg_1.a.x) >> ((u_input.b | u_input.b) % vec3<u32>(32u))));
    var var_1 = select(select(vec4<bool>(global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(arg_0, arg_0), 18u)], true, any(select(vec2<bool>(arg_3, arg_2), vec2<bool>(arg_2, true), vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 18u)]))), arg_1.a.x < arg_1.a.x), !select(!vec4<bool>(arg_2, arg_2, false, false), !vec4<bool>(global3[_wgslsmith_index_u32(0u, 18u)], true, global3[_wgslsmith_index_u32(62255u, 18u)], global3[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec4<bool>(arg_2, true, arg_2, false)), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~u_input.b.x) ^ ~_wgslsmith_mult_u32(arg_0, 39865u), 18u)]), select(vec4<bool>(arg_3, true, all(select(vec2<bool>(true, arg_3), vec2<bool>(true, false), vec2<bool>(false, arg_3))), true), vec4<bool>(1u == u_input.b.x, false, !arg_2, all(vec4<bool>(true, true, true, true))), !vec4<bool>(false, true, true, all(vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0, 18u)], arg_3)))), arg_2);
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_0, -var_0, var_0), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0, arg_1.a.x, arg_1.a.x, arg_1.a.x) | vec4<i32>(arg_1.a.x, -2147483647i, arg_1.a.x, arg_1.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0, var_0, -1i, var_0), vec4<i32>(var_0, var_0, arg_1.a.x, -29717i)), abs(vec4<i32>(21906i, -22639i, var_0, -1i)))) ^ -2147483647i, i32(-1i) * -reverseBits(~arg_1.a.x));
    let var_3 = _wgslsmith_sub_i32(func_3(firstTrailingBit(~arg_0), 788f, (var_0 & var_0) > func_2(arg_0, 4809i, global1[_wgslsmith_index_u32(4294967295u, 18u)]), arg_1.a.x).x | _wgslsmith_dot_vec2_i32(max(vec2<i32>(15891i, var_0), arg_1.a) << (abs(u_input.a.yy) % vec2<u32>(32u)), _wgslsmith_mod_vec2_i32(arg_1.a, vec2<i32>(arg_1.a.x, -1i)) << ((vec2<u32>(u_input.a.x, 0u) | vec2<u32>(15161u, 1u)) % vec2<u32>(32u))), 1i);
    var var_4 = vec2<bool>(arg_2, false);
    return global3[_wgslsmith_index_u32(0u, 18u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x >> (u_input.b.x % 32u);
    global3 = array<bool, 18>();
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_div_u32(reverseBits(~min(1u, 20026u)), u_input.b.x), _wgslsmith_dot_vec3_u32(u_input.a.wyx, max(vec3<u32>(1u, u_input.b.x, 0u) >> (vec3<u32>(u_input.b.x, u_input.b.x, u_input.a.x) % vec3<u32>(32u)), ~u_input.a.xzy) << (_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x), u_input.b), vec3<u32>(3323u, u_input.b.x, 55420u)) % vec3<u32>(32u))));
    let var_2 = vec4<bool>(all(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a.x, 18u)])), func_1(22665u, Struct_1(vec2<i32>(1i, -55769i), _wgslsmith_f_op_f32(f32(-1f) * -659f), _wgslsmith_f_op_f32(round(-2823f))), !global3[_wgslsmith_index_u32(4294967295u, 18u)] & true, global3[_wgslsmith_index_u32(u_input.b.x, 18u)]), true, all(vec4<bool>(true, true, global3[_wgslsmith_index_u32(37489u, 18u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, u_input.b.x) >> (~u_input.b.x % 32u), 18u)])));
    var var_3 = u_input.b;
    let var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1134f, 455f))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4, _wgslsmith_f_op_f32(floor(var_4)), 1u >> ((_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(0u, var_3.x)), vec2<u32>(0u, 1u) & u_input.b.xy) | 4294967295u) % 32u), global1[_wgslsmith_index_u32(31396u, 18u)]);
}

