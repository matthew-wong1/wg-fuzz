struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 26>;

var<private> global1: array<vec2<bool>, 22>;

var<private> global2: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true));

var<private> global3: array<bool, 6> = array<bool, 6>(false, false, true, false, true, true);

var<private> global4: vec2<i32> = vec2<i32>(2147483647i, -9874i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: i32) -> vec4<u32> {
    var var_0 = Struct_1(vec3<u32>(u_input.e, _wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.d, u_input.b, 12308u), u_input.e << (96967u % 32u)), 1u) ^ ~_wgslsmith_add_vec3_u32(vec3<u32>(2125u, u_input.b, 117410u), min(vec3<u32>(37478u, 1u, 5059u), vec3<u32>(u_input.e, u_input.d, u_input.e))), !vec4<bool>((false && global3[_wgslsmith_index_u32(0u, 6u)]) | !global3[_wgslsmith_index_u32(4294967295u, 6u)], u_input.e >= 1u, global3[_wgslsmith_index_u32(max(u_input.d & 1u, 4294967295u << (0u % 32u)), 6u)], true), vec3<bool>(true, true, !all(select(global2[_wgslsmith_index_u32(0u, 23u)], global2[_wgslsmith_index_u32(u_input.b, 23u)], global3[_wgslsmith_index_u32(u_input.d, 6u)]))));
    var var_1 = global0[_wgslsmith_index_u32(1u, 26u)];
    let var_2 = Struct_2(true, vec4<u32>(~u_input.e, 0u, 17865u, u_input.d), (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-184f))) < _wgslsmith_f_op_f32(floor(arg_1))) | (_wgslsmith_dot_vec3_i32(-vec3<i32>(-1216i, -2072i, 1i), -u_input.a.xyx) != min(-52960i, global4.x)), _wgslsmith_add_u32(~u_input.b, _wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(4294967295u), u_input.e, var_1.a.x), u_input.b | ~var_1.a.x)));
    let var_3 = vec4<i32>(_wgslsmith_div_i32(~50265i, countOneBits(-1i)), _wgslsmith_mod_i32(u_input.a.x, countOneBits(-9055i)), global4.x, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(2147483647i, -1i)), vec2<i32>(u_input.c.x, arg_0)), -3590i | global4.x)) ^ ~(u_input.c | ~(~u_input.a));
    let var_4 = var_0.b.yy;
    return var_2.b;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> u32 {
    var var_0 = Struct_2(any(vec2<bool>(all(!vec3<bool>(arg_2.x, true, arg_2.x)), true)), ~_wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(58115u, 4294967295u, 1u, 39711u)), ~func_3(-24806i, arg_0, u_input.a.x), ~vec4<u32>(u_input.e, 4294967295u, arg_1.a.x, 31926u)), arg_1.c.x, 0u);
    let var_1 = ~select(-vec4<i32>(firstLeadingBit(u_input.c.x), 13454i, _wgslsmith_mod_i32(-58577i, global4.x), ~1i), _wgslsmith_clamp_vec4_i32(u_input.a, _wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(-80628i, global4.x, 0i, global4.x)) | (u_input.c ^ u_input.c), u_input.c), select(select(select(vec4<bool>(var_0.c, global3[_wgslsmith_index_u32(36492u, 6u)], false, false), global2[_wgslsmith_index_u32(4294967295u, 23u)], true), select(arg_1.b, arg_1.b, global3[_wgslsmith_index_u32(arg_1.a.x, 6u)]), select(vec4<bool>(var_0.a, arg_1.b.x, false, global3[_wgslsmith_index_u32(arg_1.a.x, 6u)]), arg_1.b, arg_1.b)), arg_1.b, !any(vec3<bool>(false, true, global3[_wgslsmith_index_u32(arg_3, 6u)]))));
    return ~(~1u);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-1223f, 1309f)), _wgslsmith_f_op_f32(f32(-1f) * -390f))))))));
    var var_1 = ~(~_wgslsmith_dot_vec4_i32(vec4<i32>(firstLeadingBit(30060i), -arg_3.x, _wgslsmith_add_i32(u_input.c.x, 72357i), global4.x | -2147483647i), select(u_input.c, vec4<i32>(u_input.c.x, 13458i, u_input.a.x, u_input.a.x), global3[_wgslsmith_index_u32(u_input.e, 6u)])));
    let var_2 = ~_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.e, arg_2), (0u & ~arg_2) << ((~arg_2 << (~arg_2 % 32u)) % 32u));
    global1 = array<vec2<bool>, 22>();
    global0 = array<Struct_1, 26>();
    return Struct_2(!select(all(vec4<bool>(true, false, true, false)), !(-1377f >= var_0), !all(vec3<bool>(false, true, global3[_wgslsmith_index_u32(var_2, 6u)]))), countOneBits(vec4<u32>(_wgslsmith_sub_u32(~var_2, 1u), arg_0.a.x, arg_2, (u_input.b >> (2149u % 32u)) & abs(var_2))), all(vec3<bool>(true, true, false)), abs(func_2(1164f, Struct_1(~vec3<u32>(var_2, 4466u, arg_0.a.x), vec4<bool>(true, global3[_wgslsmith_index_u32(arg_0.a.x, 6u)], arg_1, false), vec3<bool>(true, true, true)), arg_0.c, ~(~var_2))));
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = u_input.d;
    var_0 = ~0u;
    global1 = array<vec2<bool>, 22>();
    global1 = array<vec2<bool>, 22>();
    var_0 = _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~(arg_2.b >> (vec4<u32>(u_input.b, 4294967295u, u_input.b, 35594u) % vec4<u32>(32u))) >> (_wgslsmith_div_vec4_u32(arg_2.b, vec4<u32>(u_input.e, 1u, 1u, u_input.b)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.e, arg_2.b.x, 1u), ~vec4<u32>(arg_2.d, 75775u, 24947u, 1u)), 0u, ~(~1u), ~abs(43178u))), 65984u);
    return arg_2;
}

fn func_1() -> Struct_2 {
    global2 = array<vec4<bool>, 23>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    global1 = array<vec2<bool>, 22>();
    let var_1 = abs(~countOneBits(0i));
    let var_2 = func_5(-43299i, -1404f, func_4(global0[_wgslsmith_index_u32(~func_2(_wgslsmith_f_op_f32(abs(518f)), Struct_1(vec3<u32>(58295u, u_input.e, 0u), vec4<bool>(global3[_wgslsmith_index_u32(u_input.d, 6u)], false, global3[_wgslsmith_index_u32(4294967295u, 6u)], true), vec3<bool>(false, false, global3[_wgslsmith_index_u32(5704u, 6u)])), vec3<bool>(true, true, true), _wgslsmith_div_u32(u_input.b, u_input.d)), 26u)], min(~u_input.b, 1u) > ~_wgslsmith_sub_u32(4294967295u, 4294967295u), u_input.e, vec4<i32>(~_wgslsmith_dot_vec3_i32(u_input.a.www, u_input.a.ywy), 26801i, _wgslsmith_mod_i32(global4.x, 21456i), var_1)), select(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_3(-2147483647i, var_0.x, i32(-1i) * -39885i).x, ~1u & _wgslsmith_clamp_u32(u_input.e, u_input.e, u_input.b)), 23u)], !(!vec4<bool>(true, true, false, global3[_wgslsmith_index_u32(11300u, 6u)])), true));
    return func_5(~global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(163f, _wgslsmith_f_op_f32(-var_0.x))) * _wgslsmith_f_op_f32(f32(-1f) * -2113f)) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2954f - _wgslsmith_f_op_f32(max(616f, var_0.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_0.x, -402f)))))), Struct_2(all(select(vec2<bool>(global3[_wgslsmith_index_u32(1u, 6u)], false), global1[_wgslsmith_index_u32(var_2.b.x, 22u)], false)) && !global3[_wgslsmith_index_u32(~var_2.b.x, 6u)], ~max(~vec4<u32>(u_input.e, var_2.b.x, u_input.b, var_2.d), ~vec4<u32>(var_2.b.x, 4294967295u, u_input.d, u_input.b)), var_2.c, _wgslsmith_sub_u32(97602u, 21245u << (0u % 32u)) ^ _wgslsmith_mult_u32(~0u, u_input.e)), vec4<bool>(false, true, true, var_2.c));
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> i32 {
    let var_0 = firstTrailingBit(41250u);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(arg_1)))));
    let var_2 = true;
    var var_3 = arg_0;
    var var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-728f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1))) * arg_1)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(-2625f, arg_1)), _wgslsmith_f_op_f32(arg_1 - arg_1)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(452f, 1309f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-300f, 1000f), vec2<f32>(arg_1, 183f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(487f, arg_1))))))));
    return _wgslsmith_mod_i32(global4.x, 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_mod_vec2_i32(u_input.c.yx, _wgslsmith_sub_vec2_i32(firstLeadingBit(-vec2<i32>(1i, global4.x)), -(u_input.a.yw ^ vec2<i32>(u_input.a.x, global4.x))));
    let var_1 = vec4<i32>(var_0.x | 0i, func_6(func_1(), -369f), firstLeadingBit(-2147483647i), u_input.c.x);
    var var_2 = 55195u;
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(select(~func_4(global0[_wgslsmith_index_u32(u_input.b, 26u)], true, 3395u, var_1).b.zxw, vec3<u32>(u_input.d, ~u_input.e, _wgslsmith_mult_u32(1u, u_input.e)), select(vec3<bool>(false, false, true), !vec3<bool>(false, global3[_wgslsmith_index_u32(4548u, 6u)], global3[_wgslsmith_index_u32(u_input.b, 6u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.b, 6u)], global3[_wgslsmith_index_u32(u_input.e, 6u)], false))), ~vec3<u32>(u_input.d, 14551u, ~4294967295u)), global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_sub_u32(func_3(max(10840i, -28520i), _wgslsmith_f_op_f32(step(-854f, -173f)), -1i).x, 0u)), 23u)], !(!(!(!vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.e, 6u)], global3[_wgslsmith_index_u32(u_input.b, 6u)])))));
    let var_4 = vec4<i32>(1i, -25718i, -func_6(Struct_2(global3[_wgslsmith_index_u32(~0u, 6u)], select(vec4<u32>(0u, var_3.a.x, 0u, 32872u), vec4<u32>(0u, 0u, 1u, var_3.a.x), var_3.b.x), true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 0u), var_3.a.yz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1869f)) + 1f)), var_0.x);
    let var_5 = i32(-1i) * -var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(Struct_1(~vec3<u32>(var_3.a.x, 37847u, 0u), var_3.b, vec3<bool>(true, !global3[_wgslsmith_index_u32(83409u, 6u)], false || var_3.b.x)), false, var_3.a.x, vec4<i32>(12593i, max(-1i, -2147483647i), -reverseBits(var_0.x), firstTrailingBit(var_5))).d, _wgslsmith_mod_i32((var_5 ^ _wgslsmith_div_i32(global4.x, var_4.x)) & ~(var_1.x << (4294967295u % 32u)), 0i));
}

