struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: vec2<f32>,
    d: vec2<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 17>;

var<private> global1: u32;

var<private> global2: array<bool, 22>;

var<private> global3: bool = true;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: u32) -> bool {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(~(97681u << (u_input.a % 32u)), 17u)], Struct_2(arg_1.b.a, arg_1.b.b), Struct_2(Struct_1(true, arg_1.a.b, 35512u, arg_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -121f))));
    let var_1 = global0[_wgslsmith_index_u32(arg_2, 17u)];
    let var_2 = Struct_1(all(var_1.b), arg_1.a.b, var_1.d, arg_2);
    var_0 = Struct_4(Struct_1(true, select(arg_1.a.b, vec3<bool>(true, arg_1.c.a.a, var_0.a.a), var_0.c.a.b), u_input.a, var_1.d), Struct_2(Struct_1(any(vec2<bool>(var_0.a.b.x, var_0.a.b.x)), select(!vec3<bool>(var_1.b.x, false, var_1.b.x), select(arg_1.a.b, vec3<bool>(var_2.a, true, var_1.a), var_2.a), vec3<bool>(var_0.a.b.x, var_2.a, var_0.c.a.a)), abs(_wgslsmith_add_u32(var_2.d, var_1.d)), 57893u), arg_1.b.b), var_0.b);
    let var_3 = _wgslsmith_sub_vec2_u32(vec2<u32>(~arg_1.a.c >> (~u_input.a % 32u), arg_0.x), ~vec2<u32>(1u, ~var_1.d));
    return true;
}

fn func_4(arg_0: u32, arg_1: vec4<bool>, arg_2: vec3<f32>, arg_3: f32) -> i32 {
    global3 = false == arg_1.x;
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, 12483u)) << (reverseBits(vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), ~min(vec2<u32>(0u, arg_0), vec2<u32>(37503u, 4294967295u))), ~reverseBits(vec2<u32>(arg_0, arg_0))), 17u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), arg_3)));
    var var_1 = 1i;
    let var_2 = Struct_1(all(!vec2<bool>(any(vec4<bool>(false, var_0.a.b.x, true, var_0.a.a)), all(arg_1))), vec3<bool>(true, true, true), 67374u, ~(~firstLeadingBit(u_input.a)));
    global1 = 74714u;
    return -38731i;
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2;
    var_0 = Struct_2(Struct_1(true, select(var_0.a.b, arg_2.a.b, vec3<bool>(true, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_2.a.d, 4294967295u), 22u)], any(vec2<bool>(false, arg_2.a.a)))), _wgslsmith_div_u32(~1u, _wgslsmith_mult_u32(~arg_0.x, _wgslsmith_mod_u32(var_0.a.c, 1u))), ~abs(_wgslsmith_add_u32(10806u, 1u))), _wgslsmith_f_op_f32(f32(-1f) * -524f));
    global3 = select(true, false, true);
    global2 = array<bool, 22>();
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(362f * var_0.b))))), _wgslsmith_add_i32(arg_1, func_4(arg_0.x, vec4<bool>(func_3(vec3<u32>(48424u, u_input.a, u_input.a), Struct_4(Struct_1(true, arg_2.a.b, 14419u, 37607u), arg_2, Struct_2(var_0.a, arg_2.b)), 4294967295u), true, false, select(global2[_wgslsmith_index_u32(arg_0.x, 22u)], var_0.a.b.x, true)), vec3<f32>(var_0.b, -101f, 1f), _wgslsmith_f_op_f32(-arg_2.b))), vec2<f32>(_wgslsmith_f_op_f32(arg_2.b + arg_2.b), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.b, -1000f), vec2<f32>(-295f, -1845f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, 906f) * vec2<f32>(arg_2.b, -1046f)))))), arg_2);
    return 1916f;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    var var_0 = 2036u;
    var_0 = ~arg_1.e.a.c;
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), -386f)), _wgslsmith_f_op_f32(-arg_0.a));
    var var_2 = select(!vec2<bool>(~arg_1.e.a.d > (arg_0.e.a.d & arg_0.e.a.d), any(!vec2<bool>(false, global2[_wgslsmith_index_u32(arg_1.e.a.c, 22u)]))), arg_0.e.a.b.yx, !vec2<bool>(true, arg_1.b > select(arg_0.b, 2147483647i, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a * arg_1.a)) * 1000f), -1164f) + vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(701f)))), arg_0.d.x));
    return Struct_3(-1244f, arg_0.b, _wgslsmith_f_op_vec2_f32(trunc(arg_1.c)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_3.x), var_3.x)), Struct_2(arg_1.e.a, _wgslsmith_f_op_f32(trunc(-1000f))));
}

fn func_6(arg_0: f32, arg_1: Struct_3, arg_2: f32) -> Struct_4 {
    let var_0 = Struct_1(!global2[_wgslsmith_index_u32(~64163u, 22u)], vec3<bool>(!global2[_wgslsmith_index_u32(~reverseBits(arg_1.e.a.c), 22u)], any(vec4<bool>(true, false, true, any(vec3<bool>(arg_1.e.a.b.x, true, global2[_wgslsmith_index_u32(18654u, 22u)])))), !(u_input.a > arg_1.e.a.c)), _wgslsmith_mod_u32(arg_1.e.a.c, arg_1.e.a.d), arg_1.e.a.c & 27448u);
    let var_1 = global0[_wgslsmith_index_u32(43683u, 17u)];
    global2 = array<bool, 22>();
    var var_2 = arg_1.e;
    let var_3 = Struct_4(global0[_wgslsmith_index_u32(abs(var_1.c), 17u)], Struct_2(arg_1.e.a, 428f), Struct_2(Struct_1(select(global2[_wgslsmith_index_u32(~13838u, 22u)], var_0.c < 32900u, any(vec4<bool>(false, false, true, arg_1.e.a.a))), func_5(arg_1, Struct_3(arg_0, -6253i, vec2<f32>(arg_2, -599f), vec2<f32>(arg_0, arg_0), Struct_2(Struct_1(false, arg_1.e.a.b, arg_1.e.a.c, u_input.a), 886f))).e.a.b, ~var_1.d, ~arg_1.e.a.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-arg_0), !var_0.a)) + _wgslsmith_f_op_f32(step(-909f, _wgslsmith_f_op_f32(arg_0 + -1415f))))));
    return var_3;
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<f32>) -> vec2<f32> {
    global2 = array<bool, 22>();
    let var_0 = func_6(arg_0.x, func_5(Struct_3(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 1u, 23908u, 54806u), vec4<u32>(4294967295u, 89238u, 13393u, u_input.a)), _wgslsmith_mult_i32(-15587i, 0i), arg_1)), -44178i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_0.xx, vec2<f32>(arg_0.x, arg_2.x)))), arg_2.zy, arg_1), Struct_3(arg_2.x, -2147483647i, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(902f, arg_0.x), vec2<f32>(-783f, -762f), arg_1.a.b.zy)), vec2<f32>(-1152f, arg_2.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yz) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1365f, arg_2.x))), arg_1)), -267f);
    global3 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.c.b, 1281f, true)), 720f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-395f + -901f)))) > _wgslsmith_f_op_f32(max(arg_1.b, _wgslsmith_f_op_f32(arg_2.x - -1475f)));
    var_1 = !var_0.c.a.b.x;
    return _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-861f, arg_1.b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.wx + vec2<f32>(-1000f, 291f)))))));
}

fn func_7(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_1) -> StorageBuffer {
    global2 = array<bool, 22>();
    global3 = any(select(vec4<bool>(_wgslsmith_f_op_f32(arg_0.e.b + 1480f) <= func_6(arg_0.d.x, Struct_3(597f, -33131i, arg_0.d, arg_0.c, Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 22u)], vec3<bool>(true, arg_2.a, arg_1.c.a.b.x), arg_0.e.a.c, 0u), -347f)), 1000f).b.b, (arg_0.b ^ arg_0.b) == ~arg_0.b, func_5(Struct_3(arg_0.d.x, 0i, arg_0.d, vec2<f32>(916f, arg_1.c.b), Struct_2(arg_2, 1000f)), Struct_3(arg_1.c.b, arg_0.b, arg_0.d, vec2<f32>(arg_1.b.b, arg_1.b.b), Struct_2(Struct_1(false, vec3<bool>(arg_2.b.x, false, arg_2.b.x), 10250u, 64807u), -108f))).e.a.b.x, func_6(_wgslsmith_f_op_f32(-arg_0.e.b), func_5(Struct_3(arg_1.c.b, arg_0.b, arg_0.c, arg_0.d, arg_1.c), arg_0), _wgslsmith_f_op_f32(ceil(430f))).c.a.a), vec4<bool>(arg_0.e.a.b.x, arg_0.b < (arg_0.b ^ arg_0.b), func_6(566f, Struct_3(-702f, arg_0.b, vec2<f32>(arg_1.c.b, arg_1.b.b), vec2<f32>(-566f, arg_1.c.b), arg_1.c), arg_1.c.b).a.b.x & func_3(vec3<u32>(4294967295u, 8886u, 4294967295u), arg_1, 77404u), arg_2.a), !select(vec4<bool>(true, false, arg_1.a.b.x, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(49217u, 22u)], true, false), arg_0.e.a.b.x), !vec4<bool>(arg_0.e.a.a, arg_2.b.x, false, arg_0.e.a.a))));
    let var_0 = _wgslsmith_mod_vec3_i32(~select(_wgslsmith_add_vec3_i32(vec3<i32>(1i, 2147483647i, arg_0.b), vec3<i32>(-2147483647i, -2147483647i, 2147483647i) ^ vec3<i32>(arg_0.b, 1462i, arg_0.b)), vec3<i32>(1i, 1i, 1i) | select(vec3<i32>(arg_0.b, 28593i, -2035i), vec3<i32>(arg_0.b, 1i, arg_0.b), arg_1.c.a.b.x), vec3<bool>(true, any(arg_0.e.a.b), arg_1.a.b.x || true)), select(min(min(reverseBits(vec3<i32>(2147483647i, arg_0.b, 0i)), vec3<i32>(arg_0.b, arg_0.b, arg_0.b) >> (vec3<u32>(arg_1.c.a.d, 0u, 4294967295u) % vec3<u32>(32u))), abs(firstTrailingBit(vec3<i32>(arg_0.b, arg_0.b, 49581i)))), vec3<i32>(-(~1i), select(~arg_0.b, countOneBits(arg_0.b), false), _wgslsmith_mult_i32(max(arg_0.b, -32129i), select(-2147483647i, 2147483647i, arg_0.e.a.b.x))), true));
    global1 = ~(~_wgslsmith_mod_u32(arg_1.b.a.d, 188u));
    let var_1 = !vec3<bool>(all(!vec3<bool>(true, false, arg_1.b.a.a)), true || arg_2.a, !arg_2.a);
    return StorageBuffer(~24704u, _wgslsmith_f_op_f32(1159f * _wgslsmith_f_op_f32(round(1782f))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 22>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1021f));
    let x = u_input.a;
    s_output = func_7(Struct_3(var_0, select(i32(-1i) * -45142i, 0i, !global2[_wgslsmith_index_u32(u_input.a, 22u)]) >> (1u % 32u), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, 1794f, var_0) + vec3<f32>(-383f, -1000f, var_0)), Struct_2(Struct_1(global2[_wgslsmith_index_u32(4294967295u, 22u)], vec3<bool>(global2[_wgslsmith_index_u32(1u, 22u)], false, false), u_input.a, u_input.a), var_0), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, 1000f, -171f, -1938f) - vec4<f32>(var_0, var_0, -1242f, -1674f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0)))))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), Struct_2(Struct_1(true, select(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(33949u, 22u)]), vec3<bool>(global2[_wgslsmith_index_u32(66287u, 22u)], true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 22u)], false)), ~u_input.a, u_input.a << (u_input.a % 32u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1162f)), _wgslsmith_f_op_f32(var_0 - 730f))))), func_6(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1839f)), var_0) - -397f), func_5(func_5(func_5(Struct_3(var_0, 9423i, vec2<f32>(var_0, var_0), vec2<f32>(var_0, var_0), Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 22u)], vec3<bool>(global2[_wgslsmith_index_u32(74926u, 22u)], false, false), u_input.a, u_input.a), var_0)), Struct_3(-1937f, 12892i, vec2<f32>(var_0, -401f), vec2<f32>(var_0, var_0), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 17u)], -453f))), Struct_3(-843f, 18048i, vec2<f32>(404f, 107f), vec2<f32>(292f, -1000f), Struct_2(Struct_1(false, vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)]), 65390u, u_input.a), var_0))), func_5(func_5(Struct_3(var_0, 4583i, vec2<f32>(-1544f, -1778f), vec2<f32>(var_0, 373f), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 17u)], 965f)), Struct_3(var_0, 0i, vec2<f32>(180f, -1691f), vec2<f32>(1500f, -206f), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 17u)], var_0))), func_5(Struct_3(-625f, -10529i, vec2<f32>(var_0, -366f), vec2<f32>(-341f, 572f), Struct_2(global0[_wgslsmith_index_u32(0u, 17u)], var_0)), Struct_3(-1008f, 11087i, vec2<f32>(345f, var_0), vec2<f32>(-2210f, -993f), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 17u)], 1421f))))), var_0), func_5(Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 + var_0)), i32(-1i) * -1i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1738f, -575f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1545f)), func_5(func_5(Struct_3(var_0, -1i, vec2<f32>(948f, var_0), vec2<f32>(var_0, -708f), Struct_2(global0[_wgslsmith_index_u32(20295u, 17u)], var_0)), Struct_3(-1169f, -31900i, vec2<f32>(var_0, 1686f), vec2<f32>(var_0, 630f), Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 22u)], vec3<bool>(global2[_wgslsmith_index_u32(0u, 22u)], true, global2[_wgslsmith_index_u32(u_input.a, 22u)]), 4294967295u, 0u), 364f))), Struct_3(var_0, 0i, vec2<f32>(844f, 257f), vec2<f32>(var_0, -1017f), Struct_2(Struct_1(global2[_wgslsmith_index_u32(u_input.a, 22u)], vec3<bool>(global2[_wgslsmith_index_u32(0u, 22u)], true, global2[_wgslsmith_index_u32(55016u, 22u)]), u_input.a, u_input.a), -1148f))).e), func_5(Struct_3(_wgslsmith_div_f32(var_0, -1282f), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -7734i, 1i, 0i), vec4<i32>(-25222i, -31262i, -1i, -36689i)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_0, var_0))), vec2<f32>(523f, var_0), func_5(Struct_3(-1028f, 33716i, vec2<f32>(var_0, 699f), vec2<f32>(var_0, 1153f), Struct_2(global0[_wgslsmith_index_u32(2036u, 17u)], 2445f)), Struct_3(-2676f, -9915i, vec2<f32>(-715f, 700f), vec2<f32>(var_0, var_0), Struct_2(Struct_1(false, vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)]), 28608u, u_input.a), var_0))).e), func_5(Struct_3(1573f, -1i, vec2<f32>(var_0, 1375f), vec2<f32>(var_0, var_0), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 17u)], var_0)), Struct_3(var_0, -46713i, vec2<f32>(256f, var_0), vec2<f32>(var_0, var_0), Struct_2(Struct_1(global2[_wgslsmith_index_u32(24639u, 22u)], vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.a, 22u)]), 2132u, 0u), -314f))))).e.a);
}

