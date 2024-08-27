struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: vec4<u32>) -> bool {
    global0 = array<vec3<bool>, 23>();
    global0 = array<vec3<bool>, 23>();
    var var_0 = select(!select(vec3<bool>(arg_0.c.a.x, !arg_1, true), !global0[_wgslsmith_index_u32(4294967295u, 23u)], false), select(!select(vec3<bool>(false, arg_1, arg_1), !arg_0.c.a.zwy, all(arg_0.a.a.zy)), arg_0.c.a.zyy, true), false);
    let var_1 = u_input.e;
    let var_2 = arg_1;
    return var_0.x;
}

fn func_2(arg_0: u32) -> u32 {
    var var_0 = Struct_2(Struct_1(vec4<bool>(!all(global0[_wgslsmith_index_u32(1u, 23u)]), func_3(Struct_2(Struct_1(vec4<bool>(true, false, false, false), vec4<f32>(-867f, -1110f, -945f, 642f), 13351u, -512f), vec2<f32>(793f, 386f), Struct_1(vec4<bool>(true, true, false, false), vec4<f32>(-207f, -901f, -639f, -3292f), u_input.d, 1060f), vec2<bool>(true, true)), true, vec4<u32>(0u, u_input.c.x, arg_0, 12205u)) & any(vec2<bool>(true, true)), true, true), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(vec4<f32>(489f, -1095f, -379f, 2020f), vec4<f32>(857f, 1297f, 901f, 1178f)))) * vec4<f32>(1f, 1f, 1f, 1f)), select(~reverseBits(0u), ~(~4294967295u), func_3(Struct_2(Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-1000f, 443f, 386f, -909f), 22965u, -804f), vec2<f32>(1677f, 947f), Struct_1(vec4<bool>(false, true, true, true), vec4<f32>(548f, 1230f, 1415f, -2187f), 0u, 449f), vec2<bool>(false, false)), true, firstLeadingBit(vec4<u32>(40093u, 15618u, 0u, 0u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(553f, _wgslsmith_f_op_f32(-1539f - -1096f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(552f, -1853f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(2023f, -1000f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-961f, 1000f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-840f, 225f) - vec2<f32>(-892f, -603f)))), Struct_1(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, -620f, 157f, 1368f))))), 1u, -853f), vec2<bool>(true, !all(vec2<bool>(true, true))));
    let var_1 = u_input.e.x;
    var var_2 = false;
    let var_3 = -645f;
    return _wgslsmith_mult_u32(u_input.d ^ _wgslsmith_add_u32(21247u, arg_0), abs(1u));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1594f * 270f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -937f)))))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1618f * 1723f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-398f, 686f) + 679f) * _wgslsmith_f_op_f32(f32(-1f) * -182f)));
    var var_1 = Struct_2(Struct_1(select(vec4<bool>(true, true, true, true), vec4<bool>(u_input.e.x <= -2147483647i, true, 39560u != u_input.d, any(vec4<bool>(false, true, false, false))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1f, 1f, 1f, 1f)))), func_2(_wgslsmith_div_u32(~0u, ~1u)), _wgslsmith_f_op_f32(f32(-1f) * -578f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-311f, 620f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-2926f, -910f))))) * vec2<f32>(1f, 1f))), Struct_1(vec4<bool>(func_3(Struct_2(Struct_1(vec4<bool>(false, false, true, true), vec4<f32>(-842f, 894f, -248f, 1765f), 0u, -1110f), vec2<f32>(-940f, 495f), Struct_1(vec4<bool>(true, true, false, true), vec4<f32>(374f, -570f, -851f, -492f), 50789u, -218f), vec2<bool>(false, true)), false, vec4<u32>(u_input.d, u_input.a, 1u, 1u)) && any(vec2<bool>(false, false)), true, true, 4294967295u == abs(u_input.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(921f, -1668f, -1336f, -1029f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-400f, 537f, 432f, 1423f)), true)), ~firstLeadingBit(25565u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(329f * _wgslsmith_f_op_f32(-1147f + -102f)))), select(select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, true)), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, false), vec2<bool>(true, true)), vec2<bool>(all(vec3<bool>(false, false, true)), false)), vec2<bool>(true, true), false));
    var_0 = true;
    let var_2 = _wgslsmith_mult_u32(~(_wgslsmith_dot_vec3_u32(u_input.c, u_input.c) & 1u) ^ var_1.c.c, countOneBits(var_1.c.c | 38239u));
    var_0 = ~abs(firstTrailingBit(~55299u)) <= var_2;
    return var_1.c;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> i32 {
    let var_0 = Struct_2(func_1(), arg_2.b.yz, Struct_1(arg_1.a.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(618f, arg_1.c.b.x, 830f, 360f), _wgslsmith_f_op_vec4_f32(-arg_2.b)))), ~arg_1.a.c, _wgslsmith_f_op_f32(-arg_0.b.x)), select(!(!select(vec2<bool>(false, arg_0.a.x), vec2<bool>(true, true), true)), arg_1.d, arg_0.a.yx));
    var var_1 = func_1();
    var var_2 = any(vec4<bool>(!arg_0.a.x, arg_1.d.x, any(vec2<bool>(select(arg_2.a.x, var_0.a.a.x, false), any(var_1.a.yyw))), arg_2.a.x));
    let var_3 = Struct_1(select(vec4<bool>(true & var_1.a.x, arg_2.a.x, arg_1.a.a.x, select(var_0.a.a.x, arg_0.a.x, all(vec3<bool>(arg_0.a.x, var_0.a.a.x, true)))), !vec4<bool>(true, true, -21134i == arg_3, arg_1.a.a.x != var_0.d.x), vec4<bool>(all(func_1().a.ww), all(!arg_1.a.a.zz), false, 1432f > _wgslsmith_f_op_f32(arg_2.d + arg_1.b.x))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.b + var_1.b)), func_1().b)))), firstLeadingBit(arg_2.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.b.x)), _wgslsmith_f_op_f32(-var_1.b.x), var_1.a.x)))));
    var var_4 = 3401u < var_0.a.c;
    return 2147483647i;
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = func_1();
    var var_1 = vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d + var_0.d) - var_0.d)) == _wgslsmith_f_op_f32(sign(201f)), all(var_0.a));
    var var_2 = func_1().a.yx;
    global0 = array<vec3<bool>, 23>();
    var_1 = arg_0;
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), false), vec2<bool>(true, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), vec2<bool>(true, true)), true), _wgslsmith_dot_vec4_i32(vec4<i32>(i32(-1i) * -18965i, u_input.e.x, u_input.b, func_4(func_1(), Struct_2(Struct_1(vec4<bool>(true, true, true, false), vec4<f32>(825f, 2419f, 333f, 178f), 37098u, 169f), vec2<f32>(139f, -832f), Struct_1(vec4<bool>(false, false, true, false), vec4<f32>(-1449f, -333f, 1000f, 1070f), u_input.c.x, -199f), vec2<bool>(true, true)), func_1(), firstLeadingBit(20068i))), vec4<i32>(u_input.b, min(~u_input.b, -u_input.b), u_input.e.x | reverseBits(u_input.b), u_input.e.x)), u_input.c.xy);
    var var_1 = Struct_2(Struct_1(!(!vec4<bool>(var_0.a.x, false, var_0.a.x, var_0.a.x)), vec4<f32>(_wgslsmith_f_op_f32(sign(-1124f)), var_0.b.x, _wgslsmith_f_op_f32(step(-571f, _wgslsmith_f_op_f32(abs(var_0.d)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2401f + var_0.b.x)))), 11507u, _wgslsmith_f_op_f32(sign(-475f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.zw * _wgslsmith_div_vec2_f32(var_0.b.yw, vec2<f32>(-1276f, var_0.d))) - _wgslsmith_f_op_vec2_f32(select(var_0.b.yx, var_0.b.ww, -1179f <= var_0.d)))), func_1(), vec2<bool>(any(!select(var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, var_0.a.x), true)), -1306f < _wgslsmith_f_op_f32(-881f + _wgslsmith_f_op_f32(-var_0.b.x))));
    global0 = array<vec3<bool>, 23>();
    global0 = array<vec3<bool>, 23>();
    let var_2 = Struct_2(var_1.c, _wgslsmith_f_op_vec2_f32(var_1.a.b.yx * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.yy - var_1.a.b.xx), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.b.x, var_0.b.x)))), func_5(func_5(var_1.d, firstLeadingBit(u_input.b), select(u_input.c.zz, ~vec2<u32>(89587u, var_0.c), func_5(var_1.a.a.wy, u_input.e.x, u_input.c.yz).a.zw)).a.wy, abs(_wgslsmith_div_i32(min(0i, -30400i), _wgslsmith_mult_i32(-19626i, u_input.e.x))), u_input.c.zx), var_0.a.ww);
    var var_3 = all(!(!(!vec3<bool>(false, var_2.c.a.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(select(u_input.e.xx, ~(u_input.e.zx >> (u_input.c.zz % vec2<u32>(32u))), any(var_2.a.a))), i32(-1i) * -14913i, firstLeadingBit(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(43098i, -22596i, u_input.b, 30809i)), vec4<i32>(u_input.e.x, -17724i, -18267i, u_input.b))) ^ (vec4<i32>(u_input.e.x, _wgslsmith_add_i32(u_input.b, 2147483647i), firstTrailingBit(u_input.e.x), -1i) << (vec4<u32>(u_input.d, 65625u, select(var_0.c, u_input.c.x, true), _wgslsmith_mult_u32(15564u, u_input.c.x)) % vec4<u32>(32u))));
}

