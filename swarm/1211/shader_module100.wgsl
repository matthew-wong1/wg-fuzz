struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec2<u32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_4,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5 = Struct_5(vec2<f32>(199f, 865f), vec4<bool>(true, true, false, true), Struct_2(-217f, Struct_1(i32(-2147483648)), -197f, Struct_1(1i)), Struct_4(Struct_2(2318f, Struct_1(1i), 629f, Struct_1(1i)), -1000f, vec2<u32>(0u, 24942u)), Struct_3(Struct_2(-1000f, Struct_1(-1i), 138f, Struct_1(37743i)), 0u, -1i, vec3<f32>(-1088f, -638f, -1428f)));

var<private> global1: array<vec2<i32>, 25>;

var<private> global2: array<vec3<bool>, 21>;

var<private> global3: vec2<bool>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: bool) -> bool {
    global2 = array<vec3<bool>, 21>();
    let var_0 = vec3<u32>(_wgslsmith_add_u32(abs(4294967295u), u_input.b.x), u_input.b.x >> (34048u % 32u), 1257u);
    global2 = array<vec3<bool>, 21>();
    var var_1 = Struct_3(global0.c, 1u, 1i, vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1496f - 624f))))), _wgslsmith_f_op_f32(abs(538f)), global0.c.a));
    let var_2 = -var_1.c;
    return _wgslsmith_f_op_f32(sign(-384f)) >= var_1.d.x;
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.c, -12041i, -2722i) & _wgslsmith_mod_vec3_i32(vec3<i32>(global0.d.a.d.a, -29642i, global0.d.a.b.a), vec3<i32>(-19813i, 46981i, -3599i)), ~countOneBits(vec3<i32>(global0.c.d.a, global0.d.a.d.a, global0.d.a.b.a))), 1i), abs(abs(firstLeadingBit(vec2<i32>(global0.c.d.a, 0i)))));
    var var_1 = !select(global0.b.yz, vec2<bool>(false, true), select(vec2<bool>(u_input.b.x == global0.e.b, true), global0.b.wy, global0.b.yw));
    global2 = array<vec3<bool>, 21>();
    let var_2 = _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(abs(firstLeadingBit(vec3<i32>(global0.e.c, var_0, var_0))), -abs(vec3<i32>(var_0, global0.c.b.a, 863i) << (vec3<u32>(1u, u_input.b.x, 50286u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec3_i32(reverseBits(vec3<i32>(-15741i, _wgslsmith_add_i32(global0.c.b.a, global0.c.d.a), -2147483647i)), _wgslsmith_mult_vec3_i32(countOneBits(~vec3<i32>(-2147483647i, global0.e.a.d.a, -10074i)), vec3<i32>(-global0.e.c, var_0, -1i)), ~(-vec3<i32>(1i, global0.d.a.d.a, 18459i))), _wgslsmith_div_vec3_i32(~(~vec3<i32>(var_0, -18353i, 2147483647i)), ~vec3<i32>(-1i, 0i, global0.e.a.b.a) & vec3<i32>(max(var_0, -5740i), -var_0, 27380i)));
    var var_3 = _wgslsmith_f_op_f32(-1128f * _wgslsmith_f_op_f32(global0.c.a + 592f));
    return select(!global0.b, select(!vec4<bool>(!global0.b.x, any(global0.b.zw), u_input.a > 37449u, !global3.x), vec4<bool>(global0.b.x, true || (var_1.x || var_1.x), var_1.x, !(global0.a.x < -520f)), global0.b), _wgslsmith_div_f32(-407f, global0.e.a.c) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.c.a) + global0.c.c) * _wgslsmith_f_op_f32(min(global0.a.x, 1585f))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec2<f32>, arg_3: i32) -> i32 {
    var var_0 = u_input.c.yw;
    let var_1 = _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(~u_input.b.zz), u_input.b.zx, global0.d.c), select(vec2<u32>(var_0.x, var_0.x), ~vec2<u32>(~5620u, u_input.c.x << (3158u % 32u)), select(select(!global0.b.wx, vec2<bool>(global3.x, arg_1), false), select(select(vec2<bool>(global3.x, true), vec2<bool>(true, false), global3.x), vec2<bool>(true, true), !vec2<bool>(global0.b.x, global3.x)), !vec2<bool>(false, arg_1))), ~_wgslsmith_mod_vec2_u32(~_wgslsmith_mult_vec2_u32(u_input.b.xz, u_input.b.zx), vec2<u32>(u_input.b.x, ~96575u)));
    var var_2 = ~vec2<u32>(_wgslsmith_add_u32(0u, ~46737u), 1u);
    global0 = Struct_5(global0.e.d.yx, select(vec4<bool>((2147483647i <= arg_3) || global3.x, false, (global0.b.x & global0.b.x) || all(global0.b.ww), global3.x), global0.b, select(select(global0.b, global0.b, false | global0.b.x), func_3(), !(!global0.b))), global0.c, Struct_4(global0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) - arg_2.x)), vec2<u32>(~32373u, global0.e.b) << (vec2<u32>(_wgslsmith_div_u32(arg_0, var_1.x), 19742u) % vec2<u32>(32u))), global0.e);
    global3 = !vec2<bool>(false, global0.b.x);
    return arg_3;
}

fn func_4(arg_0: vec3<i32>) -> Struct_5 {
    let var_0 = _wgslsmith_mod_i32(-1i, arg_0.x) >> (35310u % 32u);
    global2 = array<vec3<bool>, 21>();
    var var_1 = global0.d;
    let var_2 = Struct_1(var_0);
    let var_3 = Struct_4(global0.d.a, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-632f * -1067f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + 209f)))), ~var_1.c);
    return Struct_5(_wgslsmith_f_op_vec2_f32(global0.e.d.zy + vec2<f32>(_wgslsmith_f_op_f32(355f * _wgslsmith_f_op_f32(abs(-1397f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1424f))))), !select(!(!global0.b), !select(global0.b, vec4<bool>(global0.b.x, true, global3.x, global0.b.x), global3.x), !(!vec4<bool>(true, true, true, global3.x))), global0.c, Struct_4(global0.d.a, _wgslsmith_f_op_f32(abs(290f)), firstLeadingBit(firstLeadingBit(vec2<u32>(20231u, var_1.c.x)))), Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(636f, var_3.a.a, global0.b.x)))), Struct_1(_wgslsmith_dot_vec2_i32(global1[_wgslsmith_index_u32(1u, 25u)], arg_0.xx)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(245f)), 1f), Struct_1(var_0)), var_1.c.x, 0i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.b, global0.d.a.a, var_3.a.a)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 21>();
    var var_0 = !(!vec4<bool>(!any(global0.b.zxz), all(!global0.b.xw), func_1(false), true));
    var var_1 = global0.e.a.b;
    var var_2 = func_4(vec3<i32>(var_1.a, _wgslsmith_sub_i32(var_1.a, func_2(1u, !var_0.x, _wgslsmith_f_op_vec2_f32(ceil(global0.e.d.yy)), -8969i)), -_wgslsmith_clamp_i32(34729i, abs(-6004i), global0.e.a.b.a)));
    let var_3 = 4294967295u ^ var_2.d.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.e.d, global0.e.d) + var_2.e.d) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(var_2.e.d, vec3<f32>(-427f, global0.e.a.a, -253f)), vec3<f32>(var_2.c.a, 1246f, -1000f))))), u_input.b.x);
}

