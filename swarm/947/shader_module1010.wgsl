struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13> = array<u32, 13>(0u, 4294967295u, 2446u, 40039u, 14852u, 4294967295u, 4294967295u, 16299u, 16946u, 0u, 74374u, 1u, 4294967295u);

var<private> global1: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(1125f, 2033f, 1039f, -367f), vec4<f32>(-1735f, -1000f, 355f, 1234f), vec4<f32>(1245f, -408f, -521f, 103f), vec4<f32>(-588f, 659f, 141f, -841f), vec4<f32>(-1433f, 304f, -1392f, -136f), vec4<f32>(381f, 1167f, -3976f, -1137f), vec4<f32>(2047f, -509f, 1088f, -256f), vec4<f32>(-1106f, -260f, 431f, -649f), vec4<f32>(-644f, 236f, 100f, -1757f), vec4<f32>(-1862f, -1153f, 1243f, -428f), vec4<f32>(-1753f, 613f, 730f, 272f), vec4<f32>(1000f, 1232f, 1240f, 1194f), vec4<f32>(1132f, -2485f, 143f, 2223f), vec4<f32>(1000f, -1000f, 1082f, -771f), vec4<f32>(2835f, -1925f, -1852f, 465f), vec4<f32>(-1259f, -370f, 371f, -1283f), vec4<f32>(230f, -359f, -719f, 591f), vec4<f32>(-473f, 712f, 958f, 1587f), vec4<f32>(-1139f, -1229f, -1268f, -409f));

var<private> global2: array<Struct_1, 10>;

var<private> global3: vec4<i32> = vec4<i32>(74170i, 16366i, -1i, 0i);

var<private> global4: Struct_1 = Struct_1(vec2<u32>(14133u, 47745u), 0u, vec3<bool>(false, true, true), false, vec3<f32>(1893f, -290f, -941f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: i32, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: vec3<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3.x, ~(-15580i), 1i), reverseBits(vec3<i32>(global3.x, -33888i, -2442i))), vec3<i32>(u_input.c, _wgslsmith_mult_i32(firstLeadingBit(-2147483647i), u_input.a), 7098i)), ~global3.zyz & abs(vec3<i32>(1i, ~u_input.c, firstLeadingBit(-2147483647i))), vec3<i32>(-global3.x, _wgslsmith_sub_i32(~u_input.a, abs(global3.x)), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global3.zzy, global3.wyz), ~_wgslsmith_add_i32(global3.x, 1i))));
    var var_1 = ~3619u == global4.a.x;
    var var_2 = var_0.x;
    var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), min(vec2<i32>(34252i, ~(-2147483647i)), ~(-vec2<i32>(global3.x, 1i))));
    let var_3 = _wgslsmith_f_op_f32(-global4.e.x);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1307f, global4.e.x, arg_1.x)), _wgslsmith_f_op_f32(global4.e.x * -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(396f - 1000f), arg_1.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1247f) * _wgslsmith_f_op_f32(arg_3.x * 730f)))) * global4.e);
}

fn func_4(arg_0: Struct_5, arg_1: u32, arg_2: Struct_3) -> vec4<f32> {
    var var_0 = arg_0;
    global2 = array<Struct_1, 10>();
    global3 = vec4<i32>(15402i, countOneBits(_wgslsmith_dot_vec3_i32(min(global3.yzw, global3.ywy), -global3.zxz)) ^ _wgslsmith_dot_vec3_i32(-global3.wzy, -global3.xxz), _wgslsmith_mult_i32(-(~38072i) & _wgslsmith_add_i32(_wgslsmith_mod_i32(1i, 2147483647i), ~global3.x), -1i), global3.x);
    global4 = arg_2.d;
    let var_1 = select(!select(select(arg_2.d.c, vec3<bool>(true, true, true), select(vec3<bool>(global4.d, arg_2.d.d, true), global4.c, true)), !global4.c, !select(global4.c, vec3<bool>(global4.d, arg_2.d.d, true), arg_2.d.c)), arg_2.d.c, any(global4.c));
    return _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(~reverseBits(28639u), 19u)], vec4<f32>(global4.e.x, _wgslsmith_f_op_vec3_f32(func_3(-62983i, select(vec4<bool>(arg_2.d.d, var_1.x, false, false), select(vec4<bool>(var_1.x, arg_2.d.d, false, true), vec4<bool>(arg_2.d.c.x, var_1.x, var_1.x, global4.d), vec4<bool>(var_1.x, arg_2.d.c.x, arg_2.d.d, true)), select(false, arg_2.d.c.x, false)), global4.e.xx, var_0.b)).x, -302f, 1376f));
}

fn func_2(arg_0: vec3<f32>) -> bool {
    global1 = array<vec4<f32>, 19>();
    global3 = abs(-(~firstTrailingBit(abs(vec4<i32>(-1811i, 2147483647i, u_input.c, -1i)))));
    let var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_5(firstLeadingBit(90984u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), arg_0) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, global4.e.x, global4.e.x))), _wgslsmith_f_op_vec3_f32(func_3(1i, !vec4<bool>(global4.d, false, true, false), _wgslsmith_f_op_vec2_f32(global4.e.zy + arg_0.yy), _wgslsmith_f_op_vec3_f32(max(global4.e, global4.e)))))), global4.a.x & global4.a.x, Struct_3(_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(global4.a, ~global4.a), max(global4.a, global4.a)), ~(~(~global4.a.x)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global4.e.x + global4.e.x), -797f), _wgslsmith_div_f32(arg_0.x, 1000f), arg_0.x), global2[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(1u, 13u)], 10u)])));
    global0 = array<u32, 13>();
    global1 = array<vec4<f32>, 19>();
    return any(!(!select(!global4.c, global4.c, !global4.c)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> i32 {
    var var_0 = select(vec4<u32>(~global4.a.x, ~firstLeadingBit(abs(arg_1.b.b)), arg_1.b.a.x, 55726u), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(_wgslsmith_mult_u32(4188u, arg_1.b.a.x), reverseBits(global0[_wgslsmith_index_u32(arg_1.b.a.x, 13u)]), 38286u, firstTrailingBit(15204u))), select(vec4<u32>(1u, u_input.b, global4.a.x, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, global0[_wgslsmith_index_u32(71805u, 13u)], 4468u, global0[_wgslsmith_index_u32(arg_1.b.b, 13u)]), vec4<u32>(4294967295u, 109791u, 1u, 49737u)), 4639u >= u_input.b) >> (vec4<u32>(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.b.a.x, 13u)], 13u)], 13u)], global4.a.x), 13u)], _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1.b.b, arg_1.b.b, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1.b.b, 13u)], 13u)]), vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 13u)], 4294967295u, 27578u, global0[_wgslsmith_index_u32(arg_1.b.a.x, 13u)])), global4.a.x | arg_1.b.a.x, 1u) % vec4<u32>(32u))), !select(!(!vec4<bool>(arg_1.b.d, true, global4.d, arg_1.b.c.x)), vec4<bool>(func_2(vec3<f32>(-328f, 1000f, global4.e.x)), true, true, true), false));
    global3 = _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(1i, ~global3.x), 1i, u_input.a, -2147483647i), firstTrailingBit(~vec4<i32>(global3.x, -17053i, 2147483647i, u_input.c)) ^ firstTrailingBit(firstLeadingBit(vec4<i32>(2147483647i, u_input.a, 2147483647i, u_input.c)) ^ -vec4<i32>(u_input.c, -1i, -2147483647i, u_input.a)));
    global0 = array<u32, 13>();
    let var_1 = !vec3<bool>(!(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.x, global3.x, 17690i, -5303i), vec4<i32>(u_input.a, -3545i, 8004i, -12766i)) > abs(-2147483647i)), arg_0 && true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.e.x - arg_1.b.e.x) + -2810f) < arg_1.b.e.x);
    global4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~arg_1.b.a.x, arg_1.b.b), 10u)];
    return _wgslsmith_clamp_i32(~0i, i32(-1i) * -(~(i32(-1i) * -24923i)), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec4<i32>(38668i, -2147483647i, func_1(true, Struct_2(global4.c.yx, global2[_wgslsmith_index_u32(~1u, 10u)], !global4.c.xy)), 1i);
    let var_0 = global4.e.x;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.e.x, _wgslsmith_f_op_f32(-1219f - global4.e.x)))))));
    var var_2 = Struct_5(abs(_wgslsmith_dot_vec4_u32(firstTrailingBit(max(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.b, 13u)], 13u)], u_input.b, global4.b), vec4<u32>(global4.a.x, 41869u, global4.b, u_input.b))), select(abs(vec4<u32>(global4.a.x, global4.a.x, u_input.b, global4.b)), ~vec4<u32>(0u, u_input.b, global4.a.x, 0u), select(vec4<bool>(global4.d, true, false, global4.d), vec4<bool>(global4.c.x, global4.d, true, global4.d), vec4<bool>(false, false, true, global4.d))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global4.e.x, _wgslsmith_f_op_f32(var_1 + -1788f), _wgslsmith_f_op_f32(-global4.e.x)) - global4.e));
    var_2 = Struct_5(~(~global4.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(var_2.b, var_2.b)) - var_2.b))));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_2.b, vec3<f32>(var_1, global4.e.x, -858f)) + global4.e)) * vec3<f32>(var_2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)), _wgslsmith_f_op_vec4_f32(func_4(Struct_5(664u, global4.e), _wgslsmith_div_u32(global0[_wgslsmith_index_u32(global4.b, 13u)], 4294967295u), Struct_3(vec2<u32>(22741u, 58446u), 34628u, vec3<f32>(var_2.b.x, -1984f, -2212f), global2[_wgslsmith_index_u32(4294967295u, 10u)]))).x)));
    var var_4 = -_wgslsmith_dot_vec4_i32(~_wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.c, -1i, 1i), vec4<i32>(-2147483647i, 0i, global3.x, 20826i), vec4<i32>(global3.x, 1i, 1i, u_input.c)), vec4<i32>(-8826i, -47963i, -3736i, -1i) ^ vec4<i32>(global3.x, -16596i, 77580i, global3.x)), -((vec4<i32>(20446i, u_input.a, 43150i, -34497i) >> (vec4<u32>(u_input.b, var_2.a, 1u, global4.b) % vec4<u32>(32u))) << (_wgslsmith_sub_vec4_u32(vec4<u32>(7388u, 4294967295u, 0u, var_2.a), vec4<u32>(618u, 4294967295u, global0[_wgslsmith_index_u32(u_input.b, 13u)], 1u)) % vec4<u32>(32u))));
    var_4 = u_input.c;
    var var_5 = Struct_4(_wgslsmith_f_op_vec3_f32(func_3(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-67011i, 0i, global3.x), vec3<i32>(15829i, 9546i, u_input.c) << (vec3<u32>(var_2.a, global4.a.x, 0u) % vec3<u32>(32u)))), vec4<bool>((0u >> (global4.b % 32u)) >= ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25406u, 13u)], 13u)], 13u)], global4.c.x, false, any(!vec4<bool>(true, global4.c.x, true, global4.d))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global4.e.x, var_1), var_3.zz)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b))))).xz);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32(select(reverseBits(global3.xz), global3.zx, select(true, global4.d, global4.c.x)) | global3.xz, select(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 2147483647i), global3.wy), firstLeadingBit(vec2<i32>(global3.x, u_input.a)), select(global4.c.xx, global4.c.yz, vec2<bool>(global4.c.x, false))) >> (_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(46119u, global0[_wgslsmith_index_u32(global4.b, 13u)]), global4.a), ~global4.a) % vec2<u32>(32u))), _wgslsmith_sub_i32(abs(global3.x), countOneBits(u_input.a)), ~5361u, 3457i, -7525i);
}

