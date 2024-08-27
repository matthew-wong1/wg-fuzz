struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec4<i32>, 17>;

var<private> global2: array<f32, 5> = array<f32, 5>(-1383f, -1000f, -1310f, 1794f, -116f);

var<private> global3: array<vec3<bool>, 12>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec4<f32> {
    var var_0 = arg_0.c;
    global0 = any(vec2<bool>(true, true));
    global2 = array<f32, 5>();
    let var_1 = arg_0;
    global2 = array<f32, 5>();
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0.d, 299f, arg_0.d, var_1.d), vec4<f32>(arg_0.d, -797f, arg_1, 331f)))))))));
}

fn func_2(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: i32) -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_1.d << (arg_1.d % 32u), arg_1.d), 5u)])), _wgslsmith_f_op_vec4_f32(func_3(Struct_4(~(~83416u), firstTrailingBit(select(vec2<u32>(arg_1.d, arg_1.d), vec2<u32>(84229u, arg_1.d), true)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_1.d, arg_1.d, arg_1.d, 0u), vec4<u32>(0u, 34979u, arg_1.d, 1u)), abs(vec4<u32>(arg_1.d, arg_1.d, 1u, arg_1.d))), arg_1.c), 331f)), vec2<bool>(!(!all(vec4<bool>(false, true, false, false))), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_1.b + _wgslsmith_f_op_f32(sign(-362f))), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(56082u, arg_1.d) & (67531u << (0u % 32u)), 5u)], _wgslsmith_f_op_vec4_f32(func_3(Struct_4(arg_1.d, vec2<u32>(1u, arg_1.d), vec4<u32>(arg_1.d, arg_1.d, 50996u, arg_1.d), arg_1.a), _wgslsmith_f_op_f32(ceil(1089f)))).x) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) * global2[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)))));
    let var_1 = select(!vec3<bool>(false, (arg_1.d | arg_1.d) > ~arg_1.d, any(select(global3[_wgslsmith_index_u32(arg_1.d, 12u)], global3[_wgslsmith_index_u32(15391u, 12u)], global3[_wgslsmith_index_u32(4294967295u, 12u)]))), select(vec3<bool>(true, !var_0.c.x, !var_0.c.x), select(!global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 29881u), vec2<u32>(arg_1.d, arg_1.d)), 12u)], vec3<bool>(any(global3[_wgslsmith_index_u32(1u, 12u)]), all(vec3<bool>(true, var_0.c.x, true)), !var_0.c.x), select(vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), select(global3[_wgslsmith_index_u32(1u, 12u)], global3[_wgslsmith_index_u32(arg_1.d, 12u)], global3[_wgslsmith_index_u32(35560u, 12u)]), var_0.c.x)), select(global3[_wgslsmith_index_u32(0u, 12u)], select(global3[_wgslsmith_index_u32(arg_1.d, 12u)], !vec3<bool>(var_0.c.x, var_0.c.x, var_0.c.x), global3[_wgslsmith_index_u32(79172u, 12u)]), global3[_wgslsmith_index_u32(8388u, 12u)])), all(!select(vec4<bool>(var_0.c.x, var_0.c.x, true, var_0.c.x), vec4<bool>(true, false, var_0.c.x, true), false)) | var_0.c.x);
    var var_2 = 4294967295u;
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b.yw, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.d.xy) * _wgslsmith_f_op_vec2_f32(-var_0.d.zz)) * vec2<f32>(_wgslsmith_f_op_f32(-arg_1.c), _wgslsmith_f_op_f32(min(var_0.b.x, global2[_wgslsmith_index_u32(arg_1.d, 5u)])))), !var_1.xy)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.a))) + -1046f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(arg_1.d, 5u)])))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_3.x * global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1.d, arg_1.d), vec3<u32>(19137u, arg_1.d, arg_1.d)), 5u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(6917u, 5u)] - -551f) - _wgslsmith_f_op_f32(-var_3.x))))));
    return _wgslsmith_f_op_vec4_f32(-var_0.b);
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_4, arg_2: i32, arg_3: Struct_3) -> Struct_3 {
    let var_0 = Struct_3(arg_3.a, _wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(arg_2, _wgslsmith_dot_vec2_i32(u_input.a.xz, vec2<i32>(0i, arg_2)), _wgslsmith_mult_i32(arg_2, 2147483647i), -1i | arg_2) << (arg_1.c % vec4<u32>(32u)), Struct_2(arg_1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(arg_0.x, 1089f)), -468f)), _wgslsmith_f_op_f32(max(arg_3.a, _wgslsmith_f_op_f32(round(154f)))), arg_1.a), select(~(-u_input.a.x), 3071i, arg_3.c.x))), arg_3.c, arg_0);
    let var_1 = _wgslsmith_clamp_i32(-1i, u_input.a.x, 1i);
    let var_2 = firstLeadingBit(vec2<i32>(-u_input.a.x, var_1)) & (-(~(-vec2<i32>(-2147483647i, var_1))) << (arg_1.c.zx % vec2<u32>(32u)));
    global1 = array<vec4<i32>, 17>();
    global3 = array<vec3<bool>, 12>();
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) - 312f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, -1183f, arg_1.d))), !select(var_0.c, arg_3.c, select(vec2<bool>(true, false), vec2<bool>(true, arg_3.c.x), select(vec2<bool>(arg_3.c.x, false), vec2<bool>(var_0.c.x, arg_3.c.x), vec2<bool>(arg_3.c.x, false)))), arg_0);
}

fn func_1() -> u32 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(1u, 5u)], 1000f, -1000f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(55455u, 5u)], global2[_wgslsmith_index_u32(15356u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]))) - vec3<f32>(_wgslsmith_f_op_f32(select(global2[_wgslsmith_index_u32(23678u, 5u)], global2[_wgslsmith_index_u32(8947u, 5u)], false)), _wgslsmith_f_op_f32(f32(-1f) * -602f), global2[_wgslsmith_index_u32(~0u, 5u)])), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-194f, global2[_wgslsmith_index_u32(80835u, 5u)], global2[_wgslsmith_index_u32(3972u, 5u)]), vec3<f32>(-559f, 809f, global2[_wgslsmith_index_u32(27719u, 5u)]))))))), vec3<bool>(true, true, true))), Struct_4(~(~_wgslsmith_mult_u32(25861u, 28632u)), reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(28081u, 52566u))), ~vec4<u32>(1u, 74294u, 4294967295u, 38885u), _wgslsmith_f_op_f32(step(428f, _wgslsmith_f_op_f32(859f - 771f)))), reverseBits(2147483647i), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(4294967295u, 5u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 5u)] + global2[_wgslsmith_index_u32(1u, 5u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, 1000f, global2[_wgslsmith_index_u32(4294967295u, 5u)], global2[_wgslsmith_index_u32(4294967295u, 5u)]))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(571f, 1626f, -1526f, 111f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, global2[_wgslsmith_index_u32(4294967295u, 5u)], -492f, global2[_wgslsmith_index_u32(40098u, 5u)]), vec4<f32>(global2[_wgslsmith_index_u32(87200u, 5u)], global2[_wgslsmith_index_u32(17035u, 5u)], 788f, -191f)) - _wgslsmith_f_op_vec4_f32(func_2(vec4<i32>(u_input.a.x, -74510i, u_input.a.x, u_input.a.x), Struct_2(global2[_wgslsmith_index_u32(42959u, 5u)], global2[_wgslsmith_index_u32(119803u, 5u)], 233f, 57463u), 2147483647i)))), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), vec3<f32>(global2[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(4294967295u, 4294967295u), _wgslsmith_mult_u32(1u, 4294967295u)), 5u)], -1726f, 1f)));
    var var_1 = select(vec4<bool>(var_0.c.x, true, func_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2229f, -245f, var_0.a))) + var_0.b.zzy), Struct_4(reverseBits(0u), ~vec2<u32>(35142u, 66753u), firstLeadingBit(vec4<u32>(8139u, 0u, 429u, 1u)), var_0.b.x), firstTrailingBit(-2147483647i) >> (~90772u % 32u), func_4(vec3<f32>(var_0.b.x, -543f, var_0.b.x), Struct_4(1623u, vec2<u32>(4294967295u, 0u), vec4<u32>(34403u, 0u, 3619u, 57880u), global2[_wgslsmith_index_u32(36936u, 5u)]), -1480i, func_4(vec3<f32>(var_0.d.x, 571f, 726f), Struct_4(39865u, vec2<u32>(30858u, 24974u), vec4<u32>(12580u, 8568u, 4294967295u, 11522u), var_0.d.x), u_input.a.x, var_0))).c.x, true), select(!(!select(vec4<bool>(true, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(true, true, true, false), var_0.c.x)), vec4<bool>(false, func_4(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.x, var_0.b.x, 2275f)), Struct_4(1u, vec2<u32>(34944u, 42833u), vec4<u32>(0u, 7569u, 76732u, 29372u), 1167f), 3473i, Struct_3(554f, vec4<f32>(var_0.b.x, var_0.a, global2[_wgslsmith_index_u32(2990u, 5u)], -350f), vec2<bool>(true, true), vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 5u)], 108f, var_0.d.x))).c.x, true, var_0.c.x), countOneBits(1u) <= _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(0u, 4294967295u, 41962u))), !any(select(!var_0.c, !var_0.c, var_0.c)));
    var var_2 = _wgslsmith_f_op_vec3_f32(select(var_0.b.xzw, vec3<f32>(_wgslsmith_div_f32(-755f, global2[_wgslsmith_index_u32(abs(~0u), 5u)]), global2[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -487f)))), var_1.zyz));
    let var_3 = min(select(-1i, firstTrailingBit(-1i), var_0.c.x) << (~_wgslsmith_mod_u32(~8200u, 1u) % 32u), -reverseBits(u_input.a.x));
    var var_4 = u_input.a.x;
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(func_1(), 12u)];
    var var_1 = abs(_wgslsmith_div_i32(~firstTrailingBit(1i), 1i));
    global3 = array<vec3<bool>, 12>();
    var var_2 = u_input.a.x;
    var var_3 = u_input.a.x;
    let var_4 = select(~(~vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 4294967295u, 1u)), 1u)), vec2<u32>(~4074u, 1u), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(1u, 44720u), ~var_4.x), ~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(var_4, vec2<u32>(1u, 0u)), vec2<u32>(4294967295u, var_4.x))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(97544u, var_4, vec4<u32>(var_4.x, var_4.x, var_4.x, var_4.x), 1666f), 258f)).x, _wgslsmith_f_op_f32(f32(-1f) * -1161f)) + -183f), global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(var_4, firstTrailingBit(vec2<u32>(1u, var_4.x))), 5u)], (_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(77990u, 5u)])) == _wgslsmith_f_op_f32(f32(-1f) * -932f)) || !(1606f < global2[_wgslsmith_index_u32(var_4.x, 5u)]))), vec4<i32>(~(~u_input.a.x), -6918i, _wgslsmith_mult_i32(u_input.a.x, 12593i), abs(_wgslsmith_sub_i32(firstTrailingBit(30598i), _wgslsmith_div_i32(u_input.a.x, u_input.a.x)))), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, -u_input.a.x, ~u_input.a.x, u_input.a.x), min(-select(vec4<i32>(-16463i, 2147483647i, u_input.a.x, -2147483647i), u_input.a, true), select(global1[_wgslsmith_index_u32(abs(4294967295u), 17u)], global1[_wgslsmith_index_u32(var_4.x << (0u % 32u), 17u)], true))));
}

