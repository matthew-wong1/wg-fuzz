struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 32> = array<bool, 32>(false, false, false, false, false, false, true, false, false, true, false, false, false, false, false, false, true, false, true, false, true, false, true, false, false, true, false, false, false, false, false, false);

var<private> global2: array<f32, 13> = array<f32, 13>(988f, -1726f, 2190f, -885f, 885f, -2600f, -718f, 481f, 1870f, -1038f, -414f, 599f, 789f);

var<private> global3: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false));

var<private> global4: vec3<i32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec4<u32> {
    global1 = array<bool, 32>();
    let var_0 = false;
    let var_1 = !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~12115u, 13u)])) * _wgslsmith_f_op_f32(ceil(arg_1.d.x))) > _wgslsmith_f_op_f32(exp2(arg_1.b)));
    global4 = _wgslsmith_div_vec3_i32(min(-(_wgslsmith_mod_vec3_i32(vec3<i32>(1i, -2147483647i, global4.x), vec3<i32>(global4.x, 0i, 2147483647i)) | abs(vec3<i32>(global0.x, 2147483647i, 22091i))), _wgslsmith_mod_vec3_i32(select(vec3<i32>(7077i, -21645i, global4.x), vec3<i32>(global0.x, global0.x, global0.x), false) << (_wgslsmith_sub_vec3_u32(vec3<u32>(32977u, arg_1.c.x, 24734u), vec3<u32>(u_input.a.x, 1u, 25047u)) % vec3<u32>(32u)), select(-vec3<i32>(global4.x, 25040i, global4.x), vec3<i32>(global0.x, -6261i, global0.x), select(var_1, var_0, true)))), select(_wgslsmith_div_vec3_i32(vec3<i32>(global4.x, global0.x, 20841i), vec3<i32>(2147483647i, global4.x, 64667i)) >> (vec3<u32>(u_input.a.x, 1u, arg_1.c.x) % vec3<u32>(32u)), ~(-vec3<i32>(global0.x, global4.x, 4756i)), vec3<bool>(true, true, true)) & vec3<i32>(-1i, ~1i, 58098i));
    return firstLeadingBit(u_input.a);
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(arg_1.d, _wgslsmith_f_op_vec2_f32(select(arg_1.d, vec2<f32>(global2[_wgslsmith_index_u32(30040u & arg_0, 13u)], -277f), all(select(global3[_wgslsmith_index_u32(u_input.a.x, 11u)], vec4<bool>(false, false, true, false), global3[_wgslsmith_index_u32(arg_0, 11u)])))), vec2<bool>(true, global1[_wgslsmith_index_u32(firstLeadingBit(abs(56576u)), 32u)])))));
    let var_1 = Struct_1(abs(~func_3(all(vec3<bool>(global1[_wgslsmith_index_u32(arg_0, 32u)], global1[_wgslsmith_index_u32(33616u, 32u)], global1[_wgslsmith_index_u32(4294967295u, 32u)])), Struct_1(vec4<u32>(45050u, 0u, 1u, 4294967295u), global2[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.xzy, vec2<f32>(586f, arg_1.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.b) - _wgslsmith_f_op_f32(f32(-1f) * -1883f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.x)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 13u)] - 162f), 12245i > global0.x))) * global2[_wgslsmith_index_u32(1u, 13u)]), abs(~vec3<u32>(1u, arg_1.c.x, 4294967295u)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(624f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1936f + arg_1.b))))));
    global1 = array<bool, 32>();
    var var_2 = countOneBits(vec2<i32>(_wgslsmith_add_i32(0i, 13793i), -1i));
    global0 = global4.zz;
    return arg_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = arg_0;
    global1 = array<bool, 32>();
    let var_1 = func_2(arg_0.c.x, Struct_1(~(min(vec4<u32>(58689u, var_0.c.x, arg_2.c.x, 1u), arg_0.a) & _wgslsmith_add_vec4_u32(vec4<u32>(58296u, 4294967295u, arg_0.c.x, 1u), vec4<u32>(38961u, 1u, arg_0.c.x, 52629u))), -299f, vec3<u32>(_wgslsmith_clamp_u32(arg_2.c.x, 1u, ~var_0.a.x), firstTrailingBit(func_2(arg_2.c.x, Struct_1(arg_2.a, var_0.b, vec3<u32>(0u, 4294967295u, arg_2.c.x), vec2<f32>(1330f, arg_2.b)), vec2<i32>(global4.x, 0i)).c.x), u_input.a.x), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.b, 1345f), arg_2.d, true)), _wgslsmith_div_vec2_f32(arg_0.d, vec2<f32>(arg_1.x, 607f))), vec2<f32>(1f, 1f)))), global4.xy).a.x;
    var var_2 = vec3<u32>(4294967295u, 1u, min(_wgslsmith_dot_vec4_u32(select(min(vec4<u32>(0u, 69524u, arg_2.a.x, arg_2.a.x), arg_2.a), vec4<u32>(u_input.a.x, var_1, var_0.c.x, 1u), !global3[_wgslsmith_index_u32(31438u, 11u)]), ~(u_input.a ^ vec4<u32>(54115u, 4294967295u, arg_2.a.x, u_input.a.x))), countOneBits(firstLeadingBit(arg_0.a.x))));
    var var_3 = vec2<u32>(firstTrailingBit(~var_0.c.x), arg_0.a.x) >> (vec2<u32>(min(min(24611u, u_input.a.x) ^ var_0.a.x, 0u ^ var_1), 1u) % vec2<u32>(32u));
    return !select(vec4<bool>(true, all(vec3<bool>(true, global1[_wgslsmith_index_u32(14682u, 32u)], global1[_wgslsmith_index_u32(var_3.x, 32u)])) != true, select(true, true, global1[_wgslsmith_index_u32(10869u << (arg_0.c.x % 32u), 32u)]), (72599u & var_3.x) > u_input.a.x), !vec4<bool>(all(vec2<bool>(false, global1[_wgslsmith_index_u32(var_3.x, 32u)])), global1[_wgslsmith_index_u32(max(var_0.a.x, 53297u), 32u)], !global1[_wgslsmith_index_u32(var_1, 32u)], global1[_wgslsmith_index_u32(arg_2.c.x, 32u)]), false);
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(2201f * _wgslsmith_f_op_f32(-1104f + 802f));
    let var_1 = select(select(vec4<bool>(all(select(vec2<bool>(global1[_wgslsmith_index_u32(arg_0.x, 32u)], global1[_wgslsmith_index_u32(arg_0.x, 32u)]), vec2<bool>(true, false), false)), global1[_wgslsmith_index_u32(8717u, 32u)], (global0.x << (0u % 32u)) != ~(-1i), any(vec3<bool>(true, true, true))), select(global3[_wgslsmith_index_u32(u_input.a.x, 11u)], vec4<bool>(any(vec4<bool>(false, global1[_wgslsmith_index_u32(u_input.a.x, 32u)], false, global1[_wgslsmith_index_u32(4294967295u, 32u)])), true, any(vec2<bool>(true, global1[_wgslsmith_index_u32(50941u, 32u)])), true), global1[_wgslsmith_index_u32(4294967295u, 32u)]), all(select(vec3<bool>(true, true, true), vec3<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 32u)], global1[_wgslsmith_index_u32(4977u, 32u)]), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], true, global1[_wgslsmith_index_u32(0u, 32u)])))), !(!func_4(func_2(u_input.a.x, Struct_1(u_input.a, global2[_wgslsmith_index_u32(u_input.a.x, 13u)], u_input.a.wwx, vec2<f32>(157f, global2[_wgslsmith_index_u32(arg_0.x, 13u)])), vec2<i32>(global0.x, global0.x)), vec3<f32>(var_0, var_0, -1254f), Struct_1(vec4<u32>(39892u, 1u, arg_0.x, 16204u), 739f, vec3<u32>(arg_0.x, 58517u, 25108u), vec2<f32>(573f, -693f)))), false);
    global4 = vec3<i32>(1i, abs(global4.x) << (14355u % 32u), -firstTrailingBit(global4.x) >> (arg_0.x % 32u));
    global3 = array<vec4<bool>, 11>();
    let var_2 = global4.x;
    return 462f;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(5898u, 13u)], -956f, arg_1.d.x, arg_1.b))))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.d.x, arg_1.d.x, 740f, global2[_wgslsmith_index_u32(12403u, 13u)]), _wgslsmith_f_op_vec4_f32(vec4<f32>(1114f, 221f, global2[_wgslsmith_index_u32(arg_2, 13u)], global2[_wgslsmith_index_u32(34017u, 13u)]) - vec4<f32>(arg_1.d.x, global2[_wgslsmith_index_u32(arg_1.c.x, 13u)], 532f, -1140f)), arg_0))))));
    global2 = array<f32, 13>();
    var var_1 = _wgslsmith_clamp_i32(select(-global0.x, max(global0.x, 0i), all(select(global3[_wgslsmith_index_u32(arg_1.c.x, 11u)], !global3[_wgslsmith_index_u32(arg_2, 11u)], vec4<bool>(false, arg_0, false, false)))), _wgslsmith_dot_vec4_i32(vec4<i32>(max(8466i, global4.x) >> (max(arg_2, arg_1.a.x) % 32u), 18372i, ~(1i | global4.x), global0.x), vec4<i32>(~global0.x, global4.x, abs(global0.x), _wgslsmith_div_i32(global0.x, global4.x)) << (u_input.a % vec4<u32>(32u))), _wgslsmith_dot_vec2_i32(max(global4.yx, global4.xz & global4.zz), vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(global0.x, global4.x), 1i), 0i)));
    var var_2 = func_2(u_input.a.x, func_2(0u, func_2(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_1.c.x, 0u, 1u), vec3<u32>(arg_1.a.x, arg_2, 28999u)), arg_1.c), func_2(~u_input.a.x, arg_1, _wgslsmith_mult_vec2_i32(vec2<i32>(23244i, global4.x), vec2<i32>(global4.x, global4.x))), -global4.xy >> (~vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), _wgslsmith_mod_vec2_i32(~_wgslsmith_mod_vec2_i32(vec2<i32>(global4.x, global4.x), vec2<i32>(23164i, global4.x)), vec2<i32>(-global0.x, _wgslsmith_mod_i32(0i, -2147483647i)))), global4.zz);
    let var_3 = _wgslsmith_div_vec2_i32(global4.zz, max(min(_wgslsmith_add_vec2_i32(global4.zx, vec2<i32>(2147483647i, 0i)), vec2<i32>(9275i, 1i)), vec2<i32>(global0.x, -1i)) ^ -vec2<i32>(_wgslsmith_sub_i32(-2147483647i, global0.x), 8626i));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(countOneBits(u_input.a) << (~min(u_input.a, u_input.a) % vec4<u32>(32u)), abs(select(u_input.a, vec4<u32>(13905u, 56673u, u_input.a.x, u_input.a.x), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)], true, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(u_input.a.x, 32u)])))), 13u)]);
    global2 = array<f32, 13>();
    global2 = array<f32, 13>();
    let var_1 = func_5(true | !select(true, !global1[_wgslsmith_index_u32(u_input.a.x, 32u)], global4.x > 15439i), Struct_1(~reverseBits(vec4<u32>(1u, u_input.a.x, 6921u, u_input.a.x)), _wgslsmith_f_op_f32(func_1(_wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(u_input.a.zx, u_input.a.xw), ~vec2<u32>(116450u, 1u)))), _wgslsmith_clamp_vec3_u32(u_input.a.xwz, ~(~u_input.a.zww), min(select(u_input.a.zyw, u_input.a.zyw, vec3<bool>(false, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(17994u, 32u)])), ~vec3<u32>(1u, u_input.a.x, u_input.a.x))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2[_wgslsmith_index_u32(38157u, 13u)], -1696f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(global2[_wgslsmith_index_u32(0u, 13u)], 1935f) + vec2<f32>(var_0, 812f))), vec2<f32>(-1263f, -1199f)))), ~u_input.a.x);
    global0 = ~(global4.xy >> ((var_1.c.yz ^ (vec2<u32>(var_1.c.x, 75181u) & (vec2<u32>(u_input.a.x, u_input.a.x) | vec2<u32>(var_1.a.x, u_input.a.x)))) % vec2<u32>(32u)));
    let var_2 = -19941i;
    var var_3 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global4.x | global4.x, -global4.x), global4.yy), _wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(global0.x, -2147483647i) ^ vec2<i32>(var_2, -2147483647i)), vec2<i32>(select(global0.x, global0.x, global1[_wgslsmith_index_u32(4294967295u, 32u)]), select(global4.x, var_2, global1[_wgslsmith_index_u32(u_input.a.x, 32u)])))), global4.x, -var_2);
    let var_4 = func_5(true, var_1, max(u_input.a.x & ~4294967295u, ~(~70175u)));
    let var_5 = Struct_1(var_4.a, var_0, func_3(false, Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a.x, 4294967295u, var_1.a.x, u_input.a.x), vec4<u32>(52962u, 0u, 15354u, 34461u), min(vec4<u32>(var_4.c.x, 0u, 33769u, 84083u), var_4.a)), _wgslsmith_f_op_f32(f32(-1f) * -118f), vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a.x, var_1.c.x), func_3(false, Struct_1(vec4<u32>(var_1.a.x, 0u, var_1.a.x, 0u), var_0, var_4.c, var_1.d)).x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_4.d))))).wyy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.b, -1063f) - vec2<f32>(var_1.b, global2[_wgslsmith_index_u32(20723u, 13u)])) - func_5(false, Struct_1(var_4.a, -686f, vec3<u32>(70934u, var_1.a.x, 1u), var_4.d), u_input.a.x).d)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, u_input.a.x), var_5.c.x, ~_wgslsmith_sub_vec3_i32(max(vec3<i32>(var_2, var_2, 94934i), select(vec3<i32>(var_2, -17930i, 0i), vec3<i32>(-1i, -40828i, global0.x), vec3<bool>(false, false, false))), vec3<i32>(firstLeadingBit(-21821i), 1i, 19800i)));
}

