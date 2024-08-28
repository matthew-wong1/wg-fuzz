struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: i32,
    d: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: f32;

var<private> global2: array<Struct_2, 7>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec3<u32>, arg_2: vec3<f32>) -> vec4<bool> {
    let var_0 = Struct_3(vec4<bool>(true, all(vec2<bool>(true, true)), (_wgslsmith_mod_u32(u_input.a.x, arg_1.x) > arg_1.x) & !any(vec3<bool>(false, false, false)), false), global2[_wgslsmith_index_u32(select(1u, abs(22247u), !all(vec4<bool>(false, false, true, true))), 7u)], -max(-_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -17902i, -1i), vec3<i32>(1i, 2147483647i, 2147483647i)), _wgslsmith_add_i32(0i, 2147483647i) << (~4294967295u % 32u)), arg_0.x);
    let var_1 = 2196f;
    let var_2 = var_0.b.a.a;
    var var_3 = var_0.a.x;
    let var_4 = Struct_5(Struct_1(var_2));
    return vec4<bool>(var_0.a.x, var_0.a.x, any(vec3<bool>(!select(var_0.a.x, var_0.a.x, var_0.a.x), true, false)), true);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    var var_0 = all(select(select(vec4<bool>(true, true, true, true), select(func_3(vec4<f32>(arg_0.x, 1024f, arg_0.x, arg_0.x), u_input.d, vec3<f32>(119f, -471f, -1000f)), func_3(vec4<f32>(569f, -1548f, arg_0.x, arg_0.x), global0.xyy, vec3<f32>(821f, arg_0.x, arg_0.x)), false), func_3(vec4<f32>(-1000f, -802f, -1000f, -1214f), firstLeadingBit(vec3<u32>(u_input.b.x, u_input.c, 81171u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, 660f, arg_0.x) - vec3<f32>(arg_0.x, arg_0.x, -765f)))), func_3(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1110f, -1274f, arg_0.x, arg_0.x), vec4<f32>(229f, 1143f, arg_0.x, arg_0.x))))), ~vec3<u32>(u_input.c, global0.x, u_input.d.x), vec3<f32>(-3827f, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)), arg_0.x)), vec4<bool>(!(global0.x != 66105u), true, true, false)));
    let var_1 = Struct_2(Struct_1(arg_1.a), Struct_1(vec4<i32>(-1i) * -firstTrailingBit(arg_1.a)), global0.zyy);
    global0 = u_input.b;
    var var_2 = !(true && any(vec2<bool>(true, true)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -808f), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x)));
    return !(var_1.c.x >= (_wgslsmith_mult_u32(62608u, 32156u) >> (~(var_1.c.x | global0.x) % 32u)));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_3, arg_3: Struct_1) -> i32 {
    var var_0 = any(!select(!(!vec3<bool>(arg_2.a.x, arg_2.a.x, arg_2.a.x)), select(!vec3<bool>(arg_2.a.x, true, arg_0), select(vec3<bool>(true, true, arg_0), arg_2.a.yzw, arg_2.a.yyw), true), select(select(arg_2.a.yyw, arg_2.a.yzz, vec3<bool>(arg_2.a.x, true, false)), arg_2.a.yxx, false)));
    global0 = _wgslsmith_sub_vec4_u32(max(vec4<u32>(arg_2.b.c.x, ~1u, arg_1.x, firstTrailingBit(40310u)), _wgslsmith_sub_vec4_u32(~_wgslsmith_mod_vec4_u32(u_input.b, arg_1), arg_1)), vec4<u32>(~_wgslsmith_add_u32(2988u, arg_2.b.c.x), 34358u, 1u, 4294967295u));
    global2 = array<Struct_2, 7>();
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(855f, -894f, 608f, 646f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-143f, arg_2.d, -1582f, arg_2.d)))))));
    let var_2 = _wgslsmith_sub_u32(arg_2.b.c.x, 1025u >> (_wgslsmith_div_u32(0u, 86754u) % 32u));
    return arg_3.a.x;
}

fn func_5(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-arg_0.d);
    global2 = array<Struct_2, 7>();
    var var_0 = 0u << (~_wgslsmith_clamp_u32(arg_3.c.x, arg_1.x, 8034u) % 32u);
    var_0 = 12618u;
    var var_1 = Struct_1(vec4<i32>(-21272i, -10911i, arg_3.b.a.x, arg_3.b.a.x));
    return Struct_1(abs(vec4<i32>(arg_2.c, arg_2.b.b.a.x, 24197i, var_1.a.x)));
}

fn func_1() -> Struct_1 {
    return func_5(Struct_3(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, false)), global2[_wgslsmith_index_u32(global0.x, 7u)], max(func_4(func_2(vec2<f32>(-863f, 170f), Struct_1(vec4<i32>(-1i, 1i, 0i, 21401i))), vec4<u32>(56590u, 122837u, 20357u, u_input.c), Struct_3(vec4<bool>(false, true, false, true), Struct_2(Struct_1(vec4<i32>(-2147483647i, 0i, 37054i, -27100i)), Struct_1(vec4<i32>(1i, -2832i, -28495i, 2147483647i)), vec3<u32>(0u, global0.x, 25669u)), 30567i, -245f), Struct_1(vec4<i32>(-2147483647i, -26245i, -72036i, 0i))), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(6345i, -1i, 2147483647i)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(434f, -1651f))), vec2<u32>(~(_wgslsmith_clamp_u32(u_input.b.x, global0.x, 4294967295u) ^ _wgslsmith_dot_vec2_u32(u_input.b.yw, u_input.d.yx)), _wgslsmith_clamp_u32(global0.x, _wgslsmith_sub_u32(abs(0u), _wgslsmith_mult_u32(global0.x, u_input.a.x)), ~(~39162u))), Struct_3(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1708f, -1020f, 201f, 1300f) * vec4<f32>(-1904f, 605f, 205f, 1365f)), vec3<u32>(0u, 75201u, 24357u), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(2884f, -1680f, -747f))))), Struct_2(Struct_1(vec4<i32>(1i, 1i, 1i, 1i)), Struct_1(vec4<i32>(-40025i, 4930i, -1i, -17432i)), _wgslsmith_div_vec3_u32(countOneBits(vec3<u32>(global0.x, 35912u, u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(18119u, global0.x, 1u), vec3<u32>(u_input.d.x, 1u, 33692u)))), ~abs(-1i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * -310f), -545f, true)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -470f), _wgslsmith_f_op_f32(f32(-1f) * -236f), true)))), global2[_wgslsmith_index_u32(firstLeadingBit(u_input.c), 7u)]);
}

fn func_6(arg_0: i32, arg_1: u32, arg_2: Struct_5) -> Struct_4 {
    global0 = u_input.b;
    global1 = 441f;
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(318f, -843f)))) - 792f);
    var var_0 = max(~(~vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wzz, vec3<u32>(u_input.a.x, arg_1, global0.x)), ~4294967295u, 63537u)), vec3<u32>(_wgslsmith_add_u32(~global0.x ^ arg_1, _wgslsmith_mod_u32(_wgslsmith_add_u32(arg_1, arg_1), global0.x << (u_input.c % 32u))), arg_1, ~u_input.d.x));
    let var_1 = Struct_1(~vec4<i32>(10764i, -min(-39031i, 1i), _wgslsmith_dot_vec3_i32(-arg_2.a.a.xww, firstTrailingBit(arg_2.a.a.yzx)), arg_0));
    return Struct_4(Struct_3(vec4<bool>(true, true, true, false), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(u_input.b.x, var_0.x, arg_1), u_input.a), global0.xwz), _wgslsmith_clamp_u32(u_input.d.x, _wgslsmith_dot_vec3_u32(global0.zyw, vec3<u32>(u_input.a.x, 0u, 1u)), _wgslsmith_dot_vec2_u32(global0.xz, var_0.zz))), 7u)], abs(252i), 1000f), Struct_1(reverseBits(arg_2.a.a) ^ var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(firstLeadingBit(-1i), ~min(~(global0.x >> (u_input.d.x % 32u)), 11039u | u_input.d.x), Struct_5(func_1()));
    let var_1 = !vec4<bool>(true, false, var_0.a.a.x, var_0.a.a.x);
    var var_2 = Struct_5(var_0.b);
    var var_3 = var_2.a.a.wy;
    let var_4 = Struct_4(func_6(_wgslsmith_sub_i32(var_3.x, (i32(-1i) * -2147483647i) >> (_wgslsmith_mult_u32(global0.x, 4294967295u) % 32u)), 16777u, Struct_5(func_1())).a, var_0.a.b.b);
    let x = u_input.a;
    s_output = StorageBuffer(718f, 2147483647i ^ var_2.a.a.x);
}

