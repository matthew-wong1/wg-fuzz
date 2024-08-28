struct Struct_1 {
    a: i32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 9> = array<vec3<i32>, 9>(vec3<i32>(-18946i, 0i, -10546i), vec3<i32>(-15304i, 66411i, -10197i), vec3<i32>(9198i, 0i, 2147483647i), vec3<i32>(11444i, 8471i, 20762i), vec3<i32>(-6960i, -8799i, -1i), vec3<i32>(0i, -4497i, 29146i), vec3<i32>(0i, -11333i, i32(-2147483648)), vec3<i32>(-59630i, 1i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 2147483647i));

var<private> global1: array<bool, 5>;

var<private> global2: array<Struct_1, 17>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: i32, arg_3: Struct_2) -> i32 {
    var var_0 = vec4<u32>(arg_1.x, ~(firstTrailingBit(55189u) << (arg_1.x % 32u)), ~arg_1.x, _wgslsmith_dot_vec2_u32(abs(abs(vec2<u32>(arg_1.x, 5183u))), arg_1.zz)) | abs(select(~(vec4<u32>(8177u, arg_1.x, arg_1.x, arg_1.x) | vec4<u32>(arg_1.x, 1u, 41883u, arg_1.x)), firstTrailingBit(vec4<u32>(4344u, 18351u, arg_1.x, arg_1.x) ^ vec4<u32>(arg_1.x, 4294967295u, arg_1.x, 1705u)), !vec4<bool>(false, false, arg_3.b.x, global1[_wgslsmith_index_u32(39284u, 5u)])));
    let var_1 = ~firstLeadingBit(~(~vec2<u32>(4294967295u, var_0.x)));
    let var_2 = global2[_wgslsmith_index_u32(347u, 17u)];
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -328f))))) >= -1000f;
    var var_4 = var_2.b;
    return arg_2;
}

fn func_2() -> f32 {
    var var_0 = Struct_1(select(108268i, -1i, func_3(!vec4<bool>(global1[_wgslsmith_index_u32(0u, 5u)], false, true, false), vec3<u32>(4294967295u, 1u, 0u), abs(1i), Struct_2(Struct_1(2147483647i, vec4<bool>(true, false, false, false)), vec4<bool>(global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], global1[_wgslsmith_index_u32(45808u, 5u)], global1[_wgslsmith_index_u32(1u, 5u)]), vec4<i32>(0i, -1i, 1i, -63796i), vec4<i32>(-2147483647i, 0i, 20243i, u_input.b))) != u_input.a.x), select(vec4<bool>(!(!global1[_wgslsmith_index_u32(1u, 5u)]), false, global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(0u, 4294967295u)), 5u)], global1[_wgslsmith_index_u32(_wgslsmith_div_u32(41861u, 9425u), 5u)] & any(vec2<bool>(global1[_wgslsmith_index_u32(85848u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)]))), !(!(!vec4<bool>(false, false, global1[_wgslsmith_index_u32(1u, 5u)], global1[_wgslsmith_index_u32(32821u, 5u)]))), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(76438u, 5u)], false, global1[_wgslsmith_index_u32(11610u, 5u)], true), vec4<bool>(true, global1[_wgslsmith_index_u32(12953u, 5u)], global1[_wgslsmith_index_u32(0u, 5u)], false), false))));
    let var_1 = Struct_1(abs(~select(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(31729i, u_input.b, var_0.a, u_input.b), vec4<i32>(u_input.a.x, 1i, var_0.a, 15153i)), select(true, var_0.b.x, false))), select(var_0.b, var_0.b, var_0.b));
    global0 = array<vec3<i32>, 9>();
    let var_2 = vec4<i32>(~select(var_0.a | 19804i, var_0.a, 23427i <= var_0.a), _wgslsmith_mult_i32(reverseBits(-1i), ~_wgslsmith_div_i32(1i, var_1.a)), 18328i, _wgslsmith_mult_i32(u_input.b, 43343i)) & vec4<i32>(-2147483647i, i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a, -1i, -1i), u_input.a), -_wgslsmith_sub_i32(8109i, reverseBits(var_1.a)), 2147483647i);
    var_0 = var_1;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-104f)));
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    global0 = array<vec3<i32>, 9>();
    let var_0 = Struct_1(arg_0.d.x, select(!(!(!arg_0.a.b)), arg_0.b, true));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))));
    let var_2 = arg_0;
    let var_3 = Struct_2(Struct_1(var_2.a.a, vec4<bool>(false, any(var_2.b), global1[_wgslsmith_index_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 50125u, 51737u), vec3<u32>(13646u, 58029u, 9803u)), 35555u), 5u)], any(vec3<bool>(var_0.b.x, var_0.b.x, global1[_wgslsmith_index_u32(27512u, 5u)])))), vec4<bool>(true, arg_0.b.x, false, select(any(!var_2.a.b.yy), global1[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(4294967295u, 3587u)), 5u)], true)), var_2.c, ~_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(11163i, var_2.c.x), var_2.d.x, var_2.c.x, max(39460i, 1i)), ~var_2.d));
    return Struct_2(Struct_1(1i, !var_0.b), select(vec4<bool>(global1[_wgslsmith_index_u32(countOneBits(30082u), 5u)] || any(arg_0.a.b.zz), true, !(!var_0.b.x), false), vec4<bool>(any(select(vec3<bool>(true, var_3.b.x, true), vec3<bool>(var_0.b.x, true, true), vec3<bool>(false, true, true))), true, var_0.b.x, true), all(!select(vec2<bool>(false, false), vec2<bool>(false, arg_0.b.x), vec2<bool>(var_3.a.b.x, false)))), abs(var_3.d), var_3.c);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global1 = array<bool, 5>();
    let var_0 = arg_0;
    global2 = array<Struct_1, 17>();
    let var_1 = var_0.a.a;
    global0 = array<vec3<i32>, 9>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -189f));
}

fn func_5(arg_0: bool, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = vec4<bool>(global1[_wgslsmith_index_u32(~abs(4294967295u), 5u)], !global1[_wgslsmith_index_u32(1u, 5u)], !(true | arg_0) & global1[_wgslsmith_index_u32(reverseBits(41054u), 5u)], true);
    global1 = array<bool, 5>();
    var var_1 = reverseBits(~_wgslsmith_div_vec4_u32(select(~vec4<u32>(37136u, 27640u, 4294967295u, 1u), abs(vec4<u32>(4021u, 84587u, 0u, 4294967295u)), true), reverseBits(vec4<u32>(1u, 53318u, 26722u, 0u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1268f, _wgslsmith_f_op_f32(abs(292f)), false)) - _wgslsmith_f_op_f32(exp2(1f))))) * -547f);
    var_2 = -726f;
    return func_1(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x), vec4<u32>(var_1.x, 1u, var_1.x, var_1.x)) % 32u), firstLeadingBit(_wgslsmith_div_u32(26087u, var_1.x))), 17u)], select(func_1(func_1(Struct_2(Struct_1(1897i, var_0), var_0, vec4<i32>(u_input.b, -5141i, -2147483647i, 2147483647i), vec4<i32>(-23106i, arg_1.x, u_input.a.x, u_input.a.x)))).a.b, select(vec4<bool>(true, true, true, false), vec4<bool>(arg_0, false, true, false), vec4<bool>(arg_0, false, global1[_wgslsmith_index_u32(var_1.x, 5u)], true)), vec4<bool>(!var_0.x, false, global1[_wgslsmith_index_u32(var_1.x, 5u)], true)), vec4<i32>(func_3(func_1(Struct_2(Struct_1(-2147483647i, vec4<bool>(var_0.x, arg_0, true, var_0.x)), vec4<bool>(true, arg_0, true, true), vec4<i32>(1i, 3681i, 0i, -2962i), vec4<i32>(-5216i, -24219i, arg_1.x, u_input.a.x))).b, abs(vec3<u32>(1u, 1u, var_1.x)), max(-64769i, 47332i), func_1(Struct_2(Struct_1(arg_1.x, vec4<bool>(arg_0, arg_0, global1[_wgslsmith_index_u32(4294967295u, 5u)], global1[_wgslsmith_index_u32(var_1.x, 5u)])), vec4<bool>(global1[_wgslsmith_index_u32(var_1.x, 5u)], false, true, true), vec4<i32>(-2147483647i, u_input.a.x, arg_1.x, arg_1.x), vec4<i32>(-35113i, -43811i, 10587i, arg_1.x)))), 6710i, u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.a.xz, vec2<i32>(0i, -19653i)), select(u_input.a.yy, vec2<i32>(40973i, 1i), vec2<bool>(true, var_0.x)))), select(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-7011i, 5554i, 0i, u_input.a.x)), firstLeadingBit(vec4<i32>(u_input.b, 9359i, -24527i, arg_1.x))), firstLeadingBit(vec4<i32>(u_input.b, -2147483647i, 0i, u_input.a.x)), !var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec3<bool>(false, !(true | !global1[_wgslsmith_index_u32(4294967295u, 5u)]), true && global1[_wgslsmith_index_u32(4294967295u, 5u)]);
    var var_1 = countOneBits(_wgslsmith_sub_i32(u_input.a.x, u_input.b));
    var var_2 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(select(1000f, 2541f, global1[_wgslsmith_index_u32(4294967295u, 5u)]))) - _wgslsmith_f_op_f32(func_4(func_1(Struct_2(global2[_wgslsmith_index_u32(61655u, 17u)], vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 5u)], false, false, var_0.x), vec4<i32>(1i, u_input.b, u_input.b, -2147483647i), vec4<i32>(10814i, u_input.a.x, u_input.a.x, 1i))), func_1(Struct_2(global2[_wgslsmith_index_u32(12632u, 17u)], vec4<bool>(false, var_0.x, global1[_wgslsmith_index_u32(1u, 5u)], false), vec4<i32>(u_input.a.x, 0i, 0i, 1i), vec4<i32>(-115120i, u_input.b, u_input.b, 83158i)))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(293f - -620f)))), reverseBits(~u_input.a.zy) >> (vec2<u32>(20935u, 1u) % vec2<u32>(32u)));
    var var_3 = Struct_2(Struct_1(~var_2.c.x, vec4<bool>(global1[_wgslsmith_index_u32(~7287u, 5u)], any(var_0.xx), !all(vec3<bool>(var_0.x, false, false)), true)), var_2.b, var_2.d, _wgslsmith_div_vec4_i32(-var_2.c, vec4<i32>(_wgslsmith_sub_i32(-2147483647i, u_input.a.x), -1i, u_input.a.x, -(~(-23147i)))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - -442f);
    let var_5 = Struct_1(_wgslsmith_mult_i32(var_3.d.x, ~var_3.a.a), select(vec4<bool>(var_0.x, true | !var_2.b.x, true, true), select(var_3.a.b, var_3.a.b, global1[_wgslsmith_index_u32(~4294967295u, 5u)] && !var_3.a.b.x), global1[_wgslsmith_index_u32(~(~(~0u)), 5u)]));
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(721f * _wgslsmith_f_op_f32(f32(-1f) * -100f)));
    var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x & u_input.a.x, i32(-1i) * -2147483647i, 14245i, var_2.c.x), ~firstTrailingBit(vec4<i32>(var_2.c.x, var_5.a, -15526i, var_5.a))), vec4<i32>(min(var_3.c.x, -6138i) | _wgslsmith_dot_vec3_i32(vec3<i32>(var_5.a, -42669i, 56031i), vec3<i32>(-2320i, 1i, var_5.a)), -24647i, 0i, abs(-2147483647i))), 1i, ~_wgslsmith_dot_vec4_i32(-abs(var_3.d), ~var_3.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1416f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-186f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(1200f)), -2399f))))), vec2<f32>(_wgslsmith_f_op_f32(-364f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(813f)))), 1000f));
}

