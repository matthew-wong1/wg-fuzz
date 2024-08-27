struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 21> = array<vec2<f32>, 21>(vec2<f32>(-317f, -866f), vec2<f32>(629f, 1038f), vec2<f32>(1524f, -1000f), vec2<f32>(-717f, 712f), vec2<f32>(2130f, 831f), vec2<f32>(762f, 1207f), vec2<f32>(504f, -405f), vec2<f32>(659f, -1914f), vec2<f32>(1678f, 340f), vec2<f32>(518f, -437f), vec2<f32>(-1022f, 160f), vec2<f32>(1820f, -1522f), vec2<f32>(-1395f, 1559f), vec2<f32>(557f, -778f), vec2<f32>(1900f, -436f), vec2<f32>(-1041f, -903f), vec2<f32>(-1000f, 175f), vec2<f32>(475f, -1293f), vec2<f32>(-939f, -1644f), vec2<f32>(-1192f, -919f), vec2<f32>(584f, -1970f));

var<private> global1: Struct_4;

var<private> global2: Struct_2 = Struct_2(vec2<i32>(34913i, -1i), 47586i, Struct_1(false, 45570u, vec4<u32>(0u, 68497u, 13728u, 58083u), -156f, vec2<bool>(false, true)));

var<private> global3: array<u32, 4>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    global1 = Struct_4(Struct_1(true, global1.b.a.x, ~(~global2.c.c), _wgslsmith_f_op_f32(global1.d.x + _wgslsmith_f_op_f32(step(global1.c.x, 1f))), vec2<bool>(global2.c.e.x || true, !global1.b.c.c.e.x)), Struct_3(~_wgslsmith_add_vec2_u32(~global2.c.c.zy, vec2<u32>(global2.c.c.x, 5603u)), ~global1.b.a.x, global1.b.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-global1.d)))), global1.d);
    global3 = array<u32, 4>();
    let var_0 = ~select(33064u, ~global2.c.c.x, global1.a.e.x);
    global0 = array<vec2<f32>, 21>();
    global1 = Struct_4(global2.c, Struct_3(global2.c.c.wx, firstLeadingBit(_wgslsmith_mult_u32(var_0, firstTrailingBit(0u))), global1.b.c), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global1.d, vec4<f32>(-460f, 1f, global1.c.x, global2.c.d)), _wgslsmith_f_op_vec4_f32(-global1.c)), _wgslsmith_f_op_vec4_f32(-global1.d));
    return global2.c.c.x == 25273u;
}

fn func_2() -> Struct_1 {
    global0 = array<vec2<f32>, 21>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(ceil(global1.c.x)), global2.c.d, global1.b.c.c.d, _wgslsmith_f_op_f32(step(global2.c.d, global2.c.d))))) * _wgslsmith_f_op_vec4_f32(sign(global1.d)))));
    var var_1 = true;
    var var_2 = Struct_5(any(select(vec4<bool>(func_3(), true, global2.c.a, true), !select(vec4<bool>(true, global1.a.e.x, false, global2.c.a), vec4<bool>(false, false, false, global2.c.a), false), any(select(vec4<bool>(global2.c.e.x, false, global2.c.a, true), vec4<bool>(global1.a.e.x, true, false, global1.b.c.c.e.x), vec4<bool>(true, true, false, global1.b.c.c.a))))), func_3(), Struct_1(!(global2.c.e.x & (global1.d.x < -414f)), min(firstLeadingBit(27699u), ~global1.a.b) & _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(8445u, 4u)], global1.a.b, global3[_wgslsmith_index_u32(1u, 4u)]), global2.c.c.wxz), 4u)], global1.b.a.x), firstTrailingBit(~firstTrailingBit(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4133u, 4u)], 4u)], 39684u, 53450u, 4294967295u))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(148f + -1616f), _wgslsmith_f_op_f32(global2.c.d * -849f)) + _wgslsmith_f_op_f32(ceil(1697f))), vec2<bool>(global2.c.e.x, global1.b.c.c.e.x)), Struct_4(Struct_1(!all(global1.a.e), 96493u, select(global1.a.c, ~vec4<u32>(global1.b.b, global3[_wgslsmith_index_u32(global2.c.c.x, 4u)], global1.a.c.x, 22098u), any(vec3<bool>(global1.a.a, false, global1.b.c.c.a))), _wgslsmith_f_op_f32(select(1165f, _wgslsmith_f_op_f32(-global1.d.x), all(vec2<bool>(global2.c.a, true)))), vec2<bool>(true, true)), global1.b, _wgslsmith_f_op_vec4_f32(-var_0), _wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec4_f32(round(global1.d)))))));
    let var_3 = !select(vec3<bool>(false, true, all(select(vec4<bool>(global2.c.a, global2.c.a, global2.c.a, global2.c.e.x), vec4<bool>(global1.a.a, true, false, global1.a.e.x), false))), !vec3<bool>(all(var_2.c.e), any(vec3<bool>(var_2.c.a, global1.a.a, false)), true), any(select(!global2.c.e, select(global2.c.e, var_2.c.e, vec2<bool>(false, var_2.a)), any(vec2<bool>(global1.a.e.x, var_2.b)))));
    return Struct_1(!(!(global1.b.c.c.a | true)), global2.c.c.x, _wgslsmith_add_vec4_u32(vec4<u32>(30231u, firstLeadingBit(var_2.d.b.c.c.c.x) | var_2.d.a.b, ~_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(4294967295u, 4u)], var_2.d.b.b), ~firstTrailingBit(global3[_wgslsmith_index_u32(15419u, 4u)])), global1.a.c | firstLeadingBit(select(vec4<u32>(global2.c.c.x, 51200u, var_2.c.c.x, global1.a.b), vec4<u32>(global1.a.c.x, 78235u, 4294967295u, 0u), vec4<bool>(false, false, true, false)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.d.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-226f, global1.a.d)))), global2.c.e);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-global1.c.yxw))));
    var var_1 = global1.b;
    let var_2 = _wgslsmith_mult_vec2_u32(arg_2.c.c.wy, vec2<u32>(~global2.c.c.x, 6703u) ^ abs(arg_1));
    global0 = array<vec2<f32>, 21>();
    return global2.c;
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool) -> Struct_3 {
    global1 = Struct_4(func_4(18186u, global1.b.c.c.c.yw, Struct_2(-global1.b.c.a, _wgslsmith_sub_i32(countOneBits(global1.b.c.b), global2.a.x), func_2()), min(vec4<i32>(u_input.a.x, 2147483647i, global2.b, 0i) >> (vec4<u32>(global2.c.b, 22900u, 1u, global2.c.c.x) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, -1i), _wgslsmith_sub_i32(u_input.a.x, -20242i), firstTrailingBit(0i), -5333i))), global1.b, vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(713f + arg_0)), _wgslsmith_f_op_f32(-global1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -851f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.c.x, global2.c.d, arg_0, arg_0))))))));
    global1 = Struct_4(func_4(_wgslsmith_dot_vec3_u32(global2.c.c.xzw, vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.c.b, 0u), global2.c.c.xz), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.c.c.wwx, global2.c.c.wxy), 4u)], 10491u)), vec2<u32>(32682u, 31343u), Struct_2(global1.b.c.a, 1i, global1.b.c.c), vec4<i32>(_wgslsmith_sub_i32(12033i, -53739i), global2.b << (global1.b.b % 32u), select(0i, global1.b.c.a.x, global1.a.e.x), ~0i) >> (vec4<u32>(~global2.c.b, 22623u, global3[_wgslsmith_index_u32(global2.c.c.x, 4u)], global1.b.b) % vec4<u32>(32u))), global1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-134f, -484f, _wgslsmith_f_op_f32(global1.a.d - 652f), _wgslsmith_f_op_f32(f32(-1f) * -378f)) - _wgslsmith_f_op_vec4_f32(-global1.d))), global1.d);
    let var_0 = vec4<bool>((select(true, all(arg_1), global2.c.a) & (_wgslsmith_f_op_f32(-arg_0) < arg_0)) & true, true, all(select(!select(vec3<bool>(false, false, arg_1.x), vec3<bool>(false, true, global2.c.e.x), vec3<bool>(global1.b.c.c.a, true, global2.c.e.x)), select(select(vec3<bool>(global1.b.c.c.e.x, false, global1.b.c.c.a), vec3<bool>(false, false, true), arg_1.x), !vec3<bool>(false, arg_1.x, false), !vec3<bool>(global2.c.a, global1.b.c.c.e.x, global1.b.c.c.e.x)), select(vec3<bool>(true, true, global1.a.a), !vec3<bool>(global1.a.e.x, true, true), !vec3<bool>(arg_1.x, false, arg_2)))), false);
    global2 = global1.b.c;
    var var_1 = global1.b;
    return Struct_3(~_wgslsmith_sub_vec2_u32(max(vec2<u32>(4294967295u, 39638u), global1.b.c.c.c.yw) ^ func_4(45758u, vec2<u32>(36978u, 40902u), Struct_2(global1.b.c.a, global2.b, global1.a), vec4<i32>(-1i, -1i, var_1.c.b, 0i)).c.wz, global2.c.c.yy), func_2().b, global1.b.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-608f, global2.c.d, false))))))), select(!global1.b.c.c.e, select(vec2<bool>(global2.c.a, !global1.b.c.c.e.x), vec2<bool>(global2.c.a, global1.b.c.c.e.x), vec2<bool>(!global1.a.e.x, global2.c.a)), select(global1.b.c.c.e, global2.c.e, global2.c.e)), global1.b.c.c.a);
    global3 = array<u32, 4>();
    var var_1 = !(!select(select(select(vec3<bool>(var_0.c.c.e.x, global1.b.c.c.a, global1.b.c.c.a), vec3<bool>(false, global1.b.c.c.a, global1.a.e.x), var_0.c.c.e.x), select(vec3<bool>(global2.c.a, var_0.c.c.a, true), vec3<bool>(true, false, true), vec3<bool>(var_0.c.c.a, true, true)), select(vec3<bool>(true, global1.a.a, false), vec3<bool>(false, global2.c.a, true), vec3<bool>(var_0.c.c.e.x, true, global1.a.e.x))), !vec3<bool>(true, true, global1.b.c.c.a), !(!vec3<bool>(global1.a.e.x, global2.c.a, true))));
    let var_2 = false;
    global3 = array<u32, 4>();
    var_1 = select(!vec3<bool>(reverseBits(global1.a.c.x) < 1u, var_2, global1.a.a), select(vec3<bool>(all(select(vec3<bool>(var_0.c.c.a, false, true), vec3<bool>(true, var_2, true), global2.c.e.x)), all(!vec3<bool>(var_1.x, global2.c.e.x, var_1.x)), any(vec4<bool>(var_1.x, var_1.x, global1.b.c.c.e.x, global2.c.e.x))), select(!vec3<bool>(true, var_2, global2.c.e.x), !select(vec3<bool>(var_1.x, global1.b.c.c.e.x, var_2), vec3<bool>(true, var_0.c.c.e.x, global2.c.e.x), false), !(!vec3<bool>(var_0.c.c.e.x, var_2, var_1.x))), any(select(!vec3<bool>(false, var_0.c.c.a, global2.c.e.x), select(vec3<bool>(global1.b.c.c.a, var_2, global2.c.a), vec3<bool>(true, global2.c.e.x, true), vec3<bool>(global1.a.e.x, global1.a.a, global2.c.e.x)), !global1.b.c.c.a))), vec3<bool>(_wgslsmith_mod_u32(abs(31058u), 1u) < _wgslsmith_add_u32(var_0.a.x, global2.c.c.x), true, func_1(global2.c.d, !vec2<bool>(true, global2.c.a), var_1.x).c.c.e.x || true));
    var var_3 = var_0.c.c;
    global2 = Struct_2(_wgslsmith_clamp_vec2_i32(var_0.c.a, ~(~firstTrailingBit(vec2<i32>(var_0.c.b, var_0.c.a.x))), max(~vec2<i32>(-19478i, global1.b.c.b), vec2<i32>(max(0i, global1.b.c.b), var_0.c.b))), select(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x >> (0u % 32u), -1i), firstTrailingBit(u_input.a.x), true), Struct_1(true, var_3.c.x >> (global3[_wgslsmith_index_u32(18920u, 4u)] % 32u), func_1(_wgslsmith_f_op_f32(1513f * var_0.c.c.d), !vec2<bool>(var_1.x, true), true).c.c.c >> (abs(select(var_3.c, vec4<u32>(1u, 62714u, global1.b.b, global1.b.b), vec4<bool>(true, var_3.e.x, var_2, var_1.x))) % vec4<u32>(32u)), var_3.d, select(select(!vec2<bool>(false, global1.a.a), var_1.zz, !var_1.x), global2.c.e, vec2<bool>(func_3(), false | global2.c.e.x))));
    var_1 = !select(vec3<bool>(true, ~u_input.a.x > _wgslsmith_sub_i32(8485i, u_input.a.x), func_4(var_0.a.x, vec2<u32>(global3[_wgslsmith_index_u32(1u, 4u)], 4294967295u), Struct_2(vec2<i32>(1i, 22315i), global2.a.x, Struct_1(false, global1.a.c.x, var_3.c, var_3.d, vec2<bool>(var_1.x, false))), vec4<i32>(2161i, 2147483647i, 29722i, u_input.a.x)).a | true), select(!select(vec3<bool>(true, global1.b.c.c.a, global2.c.a), vec3<bool>(var_3.a, var_2, global1.a.e.x), false), !(!vec3<bool>(false, global2.c.e.x, var_0.c.c.e.x)), !var_1.x | false), vec3<bool>(var_3.a, any(select(vec2<bool>(false, false), vec2<bool>(true, var_1.x), vec2<bool>(var_1.x, var_2))), true));
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-27784i, -1i, -(i32(-1i) * -1i), _wgslsmith_div_i32(1i, 1i >> (global1.a.b % 32u))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1414f, -2048f) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(global0[_wgslsmith_index_u32(global1.b.c.c.c.x, 21u)], global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 4u)], 21u)])))))), firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, var_0.c.a.x), vec2<i32>(var_0.c.a.x, global2.a.x))) >> (global1.a.c.x % 32u));
}

