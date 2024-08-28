struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: bool,
    d: vec4<u32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, true, true), false, vec4<u32>(103406u, 67609u, 81981u, 0u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, false, false, false), false, vec4<u32>(51582u, 0u, 8191u, 13080u)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, false, false, false), true, vec4<u32>(4294967295u, 1u, 19571u, 66475u)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, true, false), false, vec4<u32>(4294967295u, 68951u, 0u, 0u)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, true, false, false), true, vec4<u32>(98141u, 0u, 51639u, 4294967295u)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(false, false, false, true), false, vec4<u32>(1u, 1u, 0u, 57768u)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, true, true), false, vec4<u32>(0u, 1u, 53442u, 17736u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, false, true), false, vec4<u32>(1u, 4294967295u, 4294967295u, 0u)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(true, true, true, true), true, vec4<u32>(4294967295u, 4294967295u, 4294967295u, 0u)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, false), false, vec4<u32>(44123u, 52413u, 4294967295u, 35388u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, false, true, true), false, vec4<u32>(1u, 65742u, 13236u, 4294967295u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, false, false), true, vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(false, true, false, true), false, vec4<u32>(0u, 0u, 4294967295u, 59195u)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(true, true, true, false), true, vec4<u32>(0u, 1837u, 1u, 4380u)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(true, false, true, true), false, vec4<u32>(14259u, 1u, 1u, 4294967295u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(true, true, true, true), false, vec4<u32>(7548u, 1u, 66565u, 113984u)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, false), false, vec4<u32>(4294967295u, 1u, 67850u, 25963u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, false, false, false), false, vec4<u32>(27532u, 12246u, 9731u, 1u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, false, false), false, vec4<u32>(4294967295u, 0u, 0u, 4294967295u)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, true), false, vec4<u32>(1u, 9834u, 0u, 23975u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, false, true), false, vec4<u32>(0u, 0u, 48411u, 1u)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, true, false, false), false, vec4<u32>(0u, 55251u, 74505u, 54444u)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, true, false, true), true, vec4<u32>(20705u, 1u, 15383u, 31150u)), Struct_1(vec3<bool>(true, true, false), vec4<bool>(false, false, false, false), true, vec4<u32>(1u, 10152u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, false, false), true, vec4<u32>(4294967295u, 0u, 32882u, 1u)), Struct_1(vec3<bool>(false, false, false), vec4<bool>(false, true, true, false), true, vec4<u32>(8657u, 1466u, 4294967295u, 4294967295u)), Struct_1(vec3<bool>(false, true, false), vec4<bool>(false, true, true, true), true, vec4<u32>(8280u, 4294967295u, 0u, 38118u)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, false, false), false, vec4<u32>(4294967295u, 4294967295u, 1u, 0u)), Struct_1(vec3<bool>(true, false, true), vec4<bool>(false, true, true, true), true, vec4<u32>(4294967295u, 3594u, 34778u, 39099u)), Struct_1(vec3<bool>(false, true, true), vec4<bool>(true, false, true, false), false, vec4<u32>(4294967295u, 0u, 53046u, 1u)), Struct_1(vec3<bool>(true, false, false), vec4<bool>(true, false, true, false), true, vec4<u32>(421u, 24543u, 54079u, 4294967295u)), Struct_1(vec3<bool>(true, true, true), vec4<bool>(false, false, true, true), false, vec4<u32>(12052u, 71429u, 78802u, 40643u)));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, false, true), vec4<bool>(true, true, true, false), false, vec4<u32>(45902u, 0u, 0u, 39776u));

var<private> global2: array<vec2<f32>, 28>;

var<private> global3: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: f32) -> u32 {
    global2 = array<vec2<f32>, 28>();
    var var_0 = vec3<bool>(global1.c, true, global1.a.x);
    let var_1 = global0[_wgslsmith_index_u32(abs(reverseBits(~(~global1.d.x)) & _wgslsmith_sub_u32(global1.d.x, abs(~51920u))), 32u)];
    let var_2 = _wgslsmith_f_op_f32(-arg_0);
    let var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(min(41701u, var_1.d.x & abs(4294967295u)), 0u), 32u)];
    return select(_wgslsmith_mod_u32(25341u, var_1.d.x), var_1.d.x, var_1.b.x);
}

fn func_2() -> bool {
    var var_0 = vec4<u32>(_wgslsmith_div_u32(func_3(_wgslsmith_f_op_f32(sign(-1000f))), ~(~121430u) ^ _wgslsmith_clamp_u32(global1.d.x ^ global1.d.x, global1.d.x & 0u, 4294967295u)), global1.d.x, _wgslsmith_dot_vec4_u32(~global1.d, global1.d), 90232u);
    let var_1 = global1.d;
    var var_2 = 69261i;
    var var_3 = !(!global1.b.wyy);
    var var_4 = global1.b.x;
    return false;
}

fn func_1() -> Struct_2 {
    global3 = !(true && !func_2());
    global0 = array<Struct_1, 32>();
    let var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1054f), -1061f, global1.c))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1005f), _wgslsmith_f_op_f32(trunc(218f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1460f)) * 1f), _wgslsmith_f_op_f32(sign(1160f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -824f)), 731f, 1140f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1323f))))));
    let var_1 = global1.b;
    global0 = array<Struct_1, 32>();
    return Struct_2(~1u, -_wgslsmith_div_i32(select(1i, -22340i, false), u_input.a.x) != ~_wgslsmith_mod_i32(~u_input.a.x, u_input.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_1 {
    global3 = ((~(~0u) >> (0u % 32u)) & arg_0.a) >= ~arg_0.a;
    var var_0 = global1.d.xwy;
    var var_1 = global1.b.x;
    global1 = Struct_1(global1.b.wwz, !global1.b, true, _wgslsmith_mult_vec4_u32(~(~(~vec4<u32>(0u, 0u, var_0.x, 27383u))), select(~vec4<u32>(arg_0.a, arg_0.a, global1.d.x, var_0.x), vec4<u32>(58906u, 77628u, var_0.x, 1u), global1.c || !global1.a.x)));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(32552u, min(~(arg_0.a >> (14871u % 32u)), min(_wgslsmith_add_u32(0u, 0u), _wgslsmith_add_u32(var_0.x, 21350u))) >> (global1.d.x % 32u)), 32u)];
    return Struct_1(global1.b.zyy, select(global1.b, !(!vec4<bool>(global1.c, false, true, arg_0.b)), true && all(select(global1.b, vec4<bool>(true, true, true, true), vec4<bool>(false, var_2.c, false, true)))), true, ~vec4<u32>(global1.d.x, arg_0.a << (var_0.x % 32u), var_2.d.x, 35705u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = global1.d.x;
    global3 = any(vec4<bool>(!(!global1.a.x & (global1.a.x & true)), !global1.c, global1.b.x, !global1.c || false));
    var var_2 = func_4(func_1(), vec3<i32>(_wgslsmith_mod_i32(21538i, var_0), _wgslsmith_div_i32(-1i, _wgslsmith_sub_i32(~var_0, u_input.a.x)), i32(-1i) * -30439i));
    let var_3 = 4294967295u >> (abs(func_1().a) % 32u);
    var var_4 = Struct_2(global1.d.x, !any(!select(var_2.a, vec3<bool>(var_2.a.x, false, global1.b.x), vec3<bool>(global1.c, global1.b.x, var_2.c))));
    let var_5 = Struct_2(~select(_wgslsmith_add_u32(var_4.a, var_2.d.x) << ((0u << (var_2.d.x % 32u)) % 32u), ~(var_3 & var_4.a), min(var_3, var_2.d.x) == _wgslsmith_mult_u32(var_2.d.x, 0u)), true);
    let var_6 = global1.a;
    var var_7 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-980f * -2584f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(982f, 885f, true))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(525f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -813f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-136f, _wgslsmith_f_op_f32(467f * 1159f), 982f, _wgslsmith_f_op_f32(step(-1087f, -1197f))))), _wgslsmith_clamp_i32(1i, i32(-1i) * -18345i, u_input.a.x), ~_wgslsmith_mult_u32(select(_wgslsmith_add_u32(global1.d.x, 0u), 1u, true), func_3(_wgslsmith_f_op_f32(floor(958f)))), ~reverseBits(-vec3<i32>(-18683i, var_0, u_input.a.x)));
}

