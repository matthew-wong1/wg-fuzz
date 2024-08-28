struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec2<f32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 22>;

var<private> global2: array<bool, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec4<bool> {
    global1 = array<Struct_2, 22>();
    var var_0 = !(!arg_0.b.a.yx);
    global0 = true;
    let var_1 = vec2<bool>(any(arg_2.a.xz), ~countOneBits(_wgslsmith_dot_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, arg_0.b.b))) >= 26160u);
    var var_2 = arg_3.x;
    return !select(select(vec4<bool>(var_1.x, false, true, true), vec4<bool>(true, true, false && global2[_wgslsmith_index_u32(32648u, 23u)], arg_0.c.x > arg_0.a.x), arg_1.x), vec4<bool>(false, var_1.x, !(arg_1.x | var_0.x), any(vec2<bool>(arg_0.b.a.x, true))), vec4<bool>(true, arg_0.a.x < -166f, false, arg_2.a.x));
}

fn func_2(arg_0: vec4<i32>) -> vec4<u32> {
    var var_0 = !(!select(select(func_3(global1[_wgslsmith_index_u32(u_input.a.x, 22u)], vec2<bool>(true, true), Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(22882u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], false), u_input.d, global2[_wgslsmith_index_u32(47304u, 23u)], u_input.d), arg_0), !vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.d, 23u)], true, true), !vec4<bool>(global2[_wgslsmith_index_u32(15844u, 23u)], false, true, global2[_wgslsmith_index_u32(u_input.d, 23u)])), vec4<bool>(select(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], false, false), !global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)], true), !all(vec3<bool>(false, global2[_wgslsmith_index_u32(14981u, 23u)], global2[_wgslsmith_index_u32(4294967295u, 23u)]))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.a.x, 22u)];
    return abs(select(select(vec4<u32>(u_input.d, firstLeadingBit(24611u), u_input.d, firstLeadingBit(10903u)), ~vec4<u32>(u_input.a.x, 4294967295u, 79632u, var_1.d.x), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, var_1.b.c, true), vec4<bool>(global2[_wgslsmith_index_u32(1u, 23u)], false, true, true))), countOneBits(abs(vec4<u32>(66006u, 4294967295u, u_input.a.x, u_input.a.x))), vec4<bool>(all(!vec3<bool>(var_1.b.c, true, true)), false, false, !all(vec4<bool>(var_1.b.a.x, var_1.b.c, global2[_wgslsmith_index_u32(50416u, 23u)], global2[_wgslsmith_index_u32(63611u, 23u)])))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool, arg_3: vec4<u32>) -> vec2<bool> {
    let var_0 = func_2(reverseBits(~(~vec4<i32>(u_input.c, -50270i, 2691i, -1i)))) ^ vec4<u32>(select(0u, _wgslsmith_mod_u32(min(4294967295u, arg_0.d), arg_0.d), _wgslsmith_mod_i32(-2147483647i, -48033i) >= (u_input.b.x & -32309i)), max(abs(arg_0.b), ~countOneBits(46395u)), ~0u, countOneBits(arg_0.b));
    global2 = array<bool, 23>();
    let var_1 = arg_1.b;
    var var_2 = Struct_2(arg_1.a, Struct_1(func_3(global1[_wgslsmith_index_u32(1248u, 22u)], select(arg_0.a.yx, select(vec2<bool>(global2[_wgslsmith_index_u32(var_0.x, 23u)], true), arg_1.b.a.zy, arg_2), !arg_0.a.x), Struct_1(!arg_0.a, 0u >> (0u % 32u), all(var_1.a.yz), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, 0u, 40982u, 4294967295u), var_0)), max(vec4<i32>(25359i, u_input.b.x, arg_1.e.x, u_input.c) >> (vec4<u32>(arg_1.b.d, 3858u, 1u, 11810u) % vec4<u32>(32u)), ~vec4<i32>(u_input.c, u_input.c, -43790i, u_input.b.x))).wzx, arg_1.b.d, select(!any(var_1.a), arg_2, !any(arg_1.b.a)), var_0.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_1.a.wx))), vec2<u32>(arg_3.x, _wgslsmith_sub_u32(var_1.b, ~19709u)), firstLeadingBit(firstLeadingBit(_wgslsmith_add_vec3_i32(u_input.b, u_input.b))) << (select(reverseBits(arg_3.xzx), ~u_input.a, !arg_1.b.a) % vec3<u32>(32u)));
    var_2 = Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(arg_1.a, vec4<f32>(arg_1.c.x, 456f, arg_1.a.x, arg_1.a.x))), arg_1.a), arg_0, _wgslsmith_f_op_vec2_f32(var_2.a.zz - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a.x, 1446f))), _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, _wgslsmith_add_u32(4695u, var_2.b.b)), ~vec2<u32>(u_input.d, arg_0.d)) >> (~vec2<u32>(~arg_3.x, _wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_3.x, 4294967295u, 4294967295u))) % vec2<u32>(32u)), select(vec3<i32>(_wgslsmith_sub_i32(arg_1.e.x >> (0u % 32u), _wgslsmith_add_i32(-1i, arg_1.e.x)), 24896i, 1i), -arg_1.e, arg_1.b.c));
    return vec2<bool>(!(_wgslsmith_f_op_f32(-arg_1.c.x) == 1f), arg_1.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.zy | _wgslsmith_mod_vec2_i32(~max(vec2<i32>(52235i, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)), u_input.b.zx >> (vec2<u32>(~u_input.d, ~19006u) % vec2<u32>(32u)));
    global1 = array<Struct_2, 22>();
    let var_1 = select(select(vec2<bool>(true, false), select(vec2<bool>(!global2[_wgslsmith_index_u32(6063u, 23u)], false), func_1(Struct_1(vec3<bool>(global2[_wgslsmith_index_u32(63657u, 23u)], global2[_wgslsmith_index_u32(0u, 23u)], true), 1u, global2[_wgslsmith_index_u32(4294967295u, 23u)], 0u), Struct_2(vec4<f32>(-341f, -1000f, -835f, 585f), Struct_1(vec3<bool>(false, true, false), u_input.a.x, true, u_input.d), vec2<f32>(-149f, 121f), vec2<u32>(83221u, u_input.d), vec3<i32>(49759i, 2147483647i, 2147483647i)), global2[_wgslsmith_index_u32(u_input.d, 23u)], countOneBits(vec4<u32>(u_input.d, u_input.a.x, u_input.d, 46163u))), vec2<bool>(!global2[_wgslsmith_index_u32(u_input.d, 23u)], global2[_wgslsmith_index_u32(1084u, 23u)] | true)), vec2<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 23u)])), func_1(Struct_1(select(func_3(global1[_wgslsmith_index_u32(4294967295u, 22u)], vec2<bool>(false, true), Struct_1(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 23u)], global2[_wgslsmith_index_u32(80415u, 23u)]), u_input.d, global2[_wgslsmith_index_u32(u_input.d, 23u)], 1u), vec4<i32>(var_0.x, 36499i, -1i, 8158i)).yxy, !vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(u_input.d, 23u)]), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(1u, 23u)]), vec3<bool>(global2[_wgslsmith_index_u32(28374u, 23u)], global2[_wgslsmith_index_u32(u_input.a.x, 23u)], false), global2[_wgslsmith_index_u32(u_input.d, 23u)])), _wgslsmith_add_u32(u_input.d, 0u) | u_input.a.x, true, _wgslsmith_add_u32(~0u, firstTrailingBit(u_input.d))), global1[_wgslsmith_index_u32(u_input.d, 22u)], !all(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.d, 23u)], false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 43695u, 1u) >> (vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 1u) % vec4<u32>(32u)), ~vec4<u32>(u_input.d, 9122u, u_input.a.x, u_input.a.x), ~vec4<u32>(94812u, 1u, u_input.d, 35963u))), vec2<bool>(!(u_input.c != var_0.x), all(!select(vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], true, global2[_wgslsmith_index_u32(38076u, 23u)], global2[_wgslsmith_index_u32(u_input.d, 23u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 23u)], global2[_wgslsmith_index_u32(422u, 23u)], global2[_wgslsmith_index_u32(u_input.d, 23u)], false), false))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(1814f * 1390f), _wgslsmith_f_op_f32(-820f + 904f), _wgslsmith_f_op_f32(2577f * 1419f), _wgslsmith_f_op_f32(abs(-1000f))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(930f, -629f, -1348f, -702f)) * vec4<f32>(1f, 1f, 1f, 1f))));
    var var_3 = vec3<i32>(0i, _wgslsmith_div_i32(u_input.b.x, abs(_wgslsmith_div_i32(var_0.x, var_0.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c & -1i, -15945i, min(var_0.x, var_0.x)), vec3<i32>(-u_input.c, i32(-1i) * -26458i, -var_0.x))) | vec3<i32>(~(~var_0.x), 0i, ~u_input.c);
    let var_4 = u_input.b.yy;
    var_3 = -(~_wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(var_4.x, var_3.x, 2147483647i) & u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -938f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + var_2.x), var_2.x, _wgslsmith_f_op_f32(var_2.x + -423f))), (func_2(vec4<i32>(var_0.x, -48318i, 1i, var_3.x)) >> (select(~vec4<u32>(u_input.d, 0u, 0u, u_input.a.x), ~vec4<u32>(u_input.d, 1u, u_input.a.x, 0u), false) % vec4<u32>(32u))) | ~(~(vec4<u32>(u_input.a.x, 1u, 1832u, u_input.d) >> (vec4<u32>(u_input.d, 104262u, 1u, u_input.a.x) % vec4<u32>(32u)))));
}

