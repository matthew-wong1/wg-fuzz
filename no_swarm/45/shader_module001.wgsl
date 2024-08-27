struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: f32,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 31111u;

var<private> global1: array<Struct_4, 29> = array<Struct_4, 29>(Struct_4(Struct_2(Struct_1(true), vec3<u32>(4294967295u, 0u, 26798u), 4294967295u), 885f, -684f, Struct_3(23534i, Struct_1(false), Struct_1(false))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(53406u, 0u, 4294967295u), 42837u), 245f, -896f, Struct_3(-34111i, Struct_1(true), Struct_1(false))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(29038u, 1u, 86849u), 1u), -912f, -2104f, Struct_3(2147483647i, Struct_1(true), Struct_1(true))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(3308u, 25100u, 13957u), 119074u), -295f, -227f, Struct_3(6638i, Struct_1(true), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(4294967295u, 0u, 4294967295u), 1u), 533f, -1000f, Struct_3(-1i, Struct_1(false), Struct_1(false))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(16189u, 54808u, 0u), 1u), 768f, -800f, Struct_3(i32(-2147483648), Struct_1(true), Struct_1(false))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(4294967295u, 18893u, 4294967295u), 1u), -139f, -337f, Struct_3(15828i, Struct_1(true), Struct_1(false))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(33784u, 4294967295u, 4294967295u), 37894u), 2683f, -626f, Struct_3(i32(-2147483648), Struct_1(false), Struct_1(true))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(4294967295u, 72391u, 4294967295u), 3012u), 1059f, -679f, Struct_3(10539i, Struct_1(false), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(33368u, 0u, 44589u), 4294967295u), 1544f, 2325f, Struct_3(44914i, Struct_1(true), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(0u, 4294967295u, 1u), 1u), -1000f, -2072f, Struct_3(-15355i, Struct_1(false), Struct_1(false))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(1u, 0u, 66336u), 1u), 1497f, 1136f, Struct_3(-54209i, Struct_1(true), Struct_1(false))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(47963u, 42420u, 92572u), 1u), -1040f, 242f, Struct_3(0i, Struct_1(false), Struct_1(false))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(4294967295u, 99893u, 4294967295u), 1u), 838f, -151f, Struct_3(-60639i, Struct_1(true), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(1u, 0u, 51748u), 51776u), -774f, 125f, Struct_3(i32(-2147483648), Struct_1(true), Struct_1(false))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(1u, 1u, 1u), 0u), -1204f, -1000f, Struct_3(0i, Struct_1(true), Struct_1(true))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(0u, 4294967295u, 1u), 1u), -553f, -178f, Struct_3(25044i, Struct_1(false), Struct_1(true))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(78907u, 4294967295u, 4747u), 33245u), -1152f, -564f, Struct_3(6353i, Struct_1(false), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(14993u, 1u, 1u), 1u), 1273f, -720f, Struct_3(8582i, Struct_1(false), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(0u, 4294967295u, 11567u), 0u), 210f, -143f, Struct_3(i32(-2147483648), Struct_1(false), Struct_1(false))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(15526u, 4294967295u, 1u), 1u), 943f, -823f, Struct_3(74415i, Struct_1(false), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(25029u, 1u, 0u), 4294967295u), 1169f, -1006f, Struct_3(2147483647i, Struct_1(false), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(1u, 4294967295u, 4294967295u), 71057u), -219f, -1124f, Struct_3(799i, Struct_1(true), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(0u, 78088u, 0u), 0u), -2613f, -963f, Struct_3(i32(-2147483648), Struct_1(true), Struct_1(false))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(0u, 0u, 0u), 54278u), 1181f, -1678f, Struct_3(27753i, Struct_1(false), Struct_1(false))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(50132u, 11217u, 4294967295u), 4294967295u), -529f, 127f, Struct_3(23630i, Struct_1(true), Struct_1(true))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(20921u, 91587u, 10862u), 39853u), -283f, 1000f, Struct_3(i32(-2147483648), Struct_1(true), Struct_1(false))), Struct_4(Struct_2(Struct_1(true), vec3<u32>(4294967295u, 28463u, 68574u), 4294967295u), -1014f, -620f, Struct_3(1i, Struct_1(false), Struct_1(false))), Struct_4(Struct_2(Struct_1(false), vec3<u32>(45656u, 1u, 1u), 4294967295u), 869f, -171f, Struct_3(24271i, Struct_1(true), Struct_1(true))));

var<private> global2: u32;

var<private> global3: array<Struct_2, 21>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = -1194f;
    global2 = u_input.b;
    let var_1 = vec3<bool>(true, !arg_0.x, !arg_0.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -937f) * 2232f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0))))));
}

fn func_2() -> Struct_2 {
    global2 = 28498u;
    var var_0 = global3[_wgslsmith_index_u32(countOneBits(u_input.c.x), 21u)];
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-105f + -409f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(199f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_3(select(vec3<bool>(true, false, var_0.a.a), vec3<bool>(var_0.a.a, var_0.a.a, true), true))), _wgslsmith_f_op_f32(-436f + _wgslsmith_f_op_f32(abs(645f)))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 292f) - vec2<f32>(-518f, 1572f)))), vec2<f32>(_wgslsmith_f_op_f32(select(-378f, -866f, true)), _wgslsmith_f_op_f32(-2350f - 1443f)))))));
    global0 = countOneBits(31765u);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(step(-773f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, var_0.a.a, var_0.a.a))))), _wgslsmith_f_op_f32(-var_1.x)), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.x - -509f), -464f)), !var_0.a.a)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, -501f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-118f, var_1.x)))), vec2<f32>(_wgslsmith_div_f32(var_1.x, -268f), 2193f), vec2<bool>(true, any(vec2<bool>(var_0.a.a, true)))))));
    return Struct_2(var_0.a, vec3<u32>(firstTrailingBit(~_wgslsmith_add_u32(var_0.c, var_0.c)), 4294967295u, u_input.d.x), ~4294967295u);
}

fn func_1(arg_0: vec2<i32>) -> f32 {
    var var_0 = func_2();
    let var_1 = vec3<bool>(true, var_0.a.a, false);
    return _wgslsmith_f_op_f32(func_3(vec3<bool>(var_1.x | (true && (var_1.x | false)), any(select(vec2<bool>(true, true), !var_1.yx, !var_1.x)), all(var_1.yy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(true, true, !any(vec3<bool>(true, false, true)), false);
    let var_1 = global3[_wgslsmith_index_u32(4294967295u, 21u)];
    let var_2 = 1i;
    let var_3 = -(~_wgslsmith_sub_i32(_wgslsmith_div_i32(var_2, _wgslsmith_sub_i32(var_2, 33160i)), var_2));
    var var_4 = _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 17224u, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(u_input.d.x, u_input.a.x, var_1.c, 11910u)), ~u_input.a)), var_1.b), var_1.b);
    var var_5 = _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec2_i32(~vec2<i32>(_wgslsmith_div_i32(var_3, var_2), -var_2), vec2<i32>(i32(-1i) * -520i, var_2))));
    var var_6 = max(~vec3<u32>(_wgslsmith_div_u32(~55166u, 0u << (var_4.x % 32u)), 69408u, ~u_input.b >> (u_input.c.x % 32u)), vec3<u32>(u_input.c.x, 1u, var_1.c));
    let var_7 = Struct_3(-var_3, var_1.a, func_2().a);
    let x = u_input.a;
    s_output = StorageBuffer(-1358f);
}

