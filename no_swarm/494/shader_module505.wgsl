struct Struct_1 {
    a: vec2<bool>,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: Struct_3,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(Struct_1(vec2<bool>(false, true), 1u), vec4<u32>(34198u, 0u, 1u, 68682u), Struct_3(vec3<f32>(-864f, -430f, -1557f), vec3<u32>(0u, 1u, 1u), Struct_2(vec2<i32>(45594i, 39207i))), vec2<i32>(2057i, 2147483647i)), Struct_4(Struct_1(vec2<bool>(false, false), 18746u), vec4<u32>(54120u, 1u, 1u, 56070u), Struct_3(vec3<f32>(-511f, -541f, -1000f), vec3<u32>(0u, 1u, 1322u), Struct_2(vec2<i32>(-5660i, 50113i))), vec2<i32>(-6403i, 1i)), Struct_4(Struct_1(vec2<bool>(true, false), 1u), vec4<u32>(1u, 1u, 19417u, 2347u), Struct_3(vec3<f32>(265f, -384f, 1140f), vec3<u32>(31097u, 0u, 1u), Struct_2(vec2<i32>(31984i, 1i))), vec2<i32>(0i, 9757i)), Struct_4(Struct_1(vec2<bool>(true, true), 8221u), vec4<u32>(4294967295u, 0u, 7035u, 71244u), Struct_3(vec3<f32>(-1000f, 991f, -211f), vec3<u32>(19720u, 76267u, 77015u), Struct_2(vec2<i32>(i32(-2147483648), -16837i))), vec2<i32>(1i, -1i)), Struct_4(Struct_1(vec2<bool>(false, true), 110276u), vec4<u32>(21691u, 1367u, 0u, 63151u), Struct_3(vec3<f32>(897f, -190f, 859f), vec3<u32>(1u, 32665u, 4294967295u), Struct_2(vec2<i32>(-1i, 38851i))), vec2<i32>(2147483647i, -27525i)), Struct_4(Struct_1(vec2<bool>(true, true), 66610u), vec4<u32>(1u, 71491u, 36717u, 4294967295u), Struct_3(vec3<f32>(554f, -280f, -1185f), vec3<u32>(4294967295u, 40287u, 1u), Struct_2(vec2<i32>(14601i, 2147483647i))), vec2<i32>(i32(-2147483648), -28228i)), Struct_4(Struct_1(vec2<bool>(true, false), 1u), vec4<u32>(14811u, 0u, 4294967295u, 18627u), Struct_3(vec3<f32>(-205f, -243f, -1604f), vec3<u32>(8827u, 21134u, 1u), Struct_2(vec2<i32>(-1i, -17258i))), vec2<i32>(38746i, -1i)), Struct_4(Struct_1(vec2<bool>(false, true), 7326u), vec4<u32>(71998u, 4294967295u, 41785u, 0u), Struct_3(vec3<f32>(-1000f, 773f, -855f), vec3<u32>(17949u, 4161u, 45226u), Struct_2(vec2<i32>(24555i, -28986i))), vec2<i32>(-11780i, 1123i)), Struct_4(Struct_1(vec2<bool>(false, false), 1u), vec4<u32>(55386u, 0u, 1u, 6761u), Struct_3(vec3<f32>(-489f, -123f, -1000f), vec3<u32>(1u, 35655u, 100161u), Struct_2(vec2<i32>(1i, -713i))), vec2<i32>(67255i, -1i)), Struct_4(Struct_1(vec2<bool>(true, false), 1u), vec4<u32>(66271u, 56158u, 0u, 44087u), Struct_3(vec3<f32>(560f, 493f, -725f), vec3<u32>(56440u, 4294967295u, 34036u), Struct_2(vec2<i32>(1i, i32(-2147483648)))), vec2<i32>(-29909i, -48370i)));

var<private> global1: Struct_3;

var<private> global2: array<vec4<f32>, 17>;

var<private> global3: array<u32, 4> = array<u32, 4>(1u, 22676u, 1u, 0u);

var<private> global4: Struct_2 = Struct_2(vec2<i32>(0i, 0i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: f32, arg_1: bool) -> f32 {
    global1 = Struct_3(global1.a, ~(vec3<u32>(global1.b.x, u_input.c, global3[_wgslsmith_index_u32(global1.b.x, 4u)]) ^ _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(100354u, global3[_wgslsmith_index_u32(global1.b.x, 4u)], 4294967295u))) >> ((~(~vec3<u32>(global1.b.x, 49211u, 0u)) ^ ~_wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(global3[_wgslsmith_index_u32(69736u, 4u)], 4294967295u, 33550u))) % vec3<u32>(32u)), Struct_2(vec2<i32>(1i, global1.c.a.x)));
    global0 = array<Struct_4, 10>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.a)), reverseBits(~u_input.a), global1.c);
    let var_1 = global1.c;
    global0 = array<Struct_4, 10>();
    return 418f;
}

fn func_2(arg_0: bool) -> Struct_3 {
    var var_0 = arg_0;
    let var_1 = 2147483647i;
    let var_2 = 1u;
    var var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(401f, arg_0)) * _wgslsmith_f_op_f32(global1.a.x - -248f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global1.a.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x))))));
    var var_4 = 4294967295u >> (_wgslsmith_clamp_u32(u_input.a.x, 12025u, u_input.a.x) % 32u);
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(-global1.a.x), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x - var_3.x) + var_3.x) - _wgslsmith_f_op_f32(498f - -1116f))), ~vec3<u32>(global1.b.x, 81839u, _wgslsmith_mult_u32(u_input.a.x, 4294967295u)), Struct_2(~(-_wgslsmith_add_vec2_i32(global4.a, u_input.b.zx))));
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_f32(-global1.a.x);
    global3 = array<u32, 4>();
    let var_1 = Struct_1(vec2<bool>(true, ~1i < -_wgslsmith_mod_i32(global1.c.a.x, global4.a.x)), 15572u);
    global0 = array<Struct_4, 10>();
    global1 = func_2(var_1.a.x);
    return vec2<u32>(~_wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, u_input.a.x), global3[_wgslsmith_index_u32(32502u, 4u)]), _wgslsmith_dot_vec2_u32(u_input.a.xz, global1.b.zy >> (global1.b.xy % vec2<u32>(32u)))), global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, var_1.b), 28480u), 0u), 4u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global1.a.x + global1.a.x);
    var var_1 = _wgslsmith_clamp_vec2_u32(~func_1(), global1.b.zy, vec2<u32>(~(~1u), 4294967295u));
    let var_2 = _wgslsmith_clamp_i32(4937i, ~_wgslsmith_clamp_i32(~global4.a.x, i32(-1i) * -15397i, 38032i) << (_wgslsmith_mult_u32(~global3[_wgslsmith_index_u32(64244u, 4u)], 23849u) % 32u), u_input.b.x);
    var var_3 = select(!vec2<bool>(global1.a.x == _wgslsmith_f_op_f32(select(-356f, global1.a.x, false)), all(vec3<bool>(true, false, false)) || true), select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(false, false), true), vec2<bool>(any(vec2<bool>(false, true)), true), vec2<bool>(true, false)), vec2<bool>(true, any(vec4<bool>(true, true, true, true))), false), vec2<bool>(false, all(vec3<bool>(false, all(vec4<bool>(true, true, true, false)), true))));
    let var_4 = 129f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global1.b.x, 4u)], 4u)], 4u)], 10249u, 4294967295u, global1.b.x) & min(vec4<u32>(46040u, global3[_wgslsmith_index_u32(0u, 4u)], var_1.x, 4294967295u), vec4<u32>(17203u, 41852u, global1.b.x, 4294967295u)), ~vec4<u32>(global3[_wgslsmith_index_u32(6357u, 4u)], 1u, global1.b.x, 78830u) << (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, global1.b.x, 14619u, var_1.x), vec4<u32>(u_input.c, global3[_wgslsmith_index_u32(global1.b.x, 4u)], 0u, global3[_wgslsmith_index_u32(4294967295u, 4u)])) % vec4<u32>(32u))) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(0u, 0u, 4294967295u, var_1.x), vec4<u32>(global3[_wgslsmith_index_u32(u_input.a.x, 4u)], firstLeadingBit(global1.b.x), ~global1.b.x, global1.b.x)) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(ceil(global1.a)), -1i, vec4<i32>(global1.c.a.x, _wgslsmith_mult_i32(global1.c.a.x, ~var_2 << (u_input.c % 32u)), _wgslsmith_mod_i32(-1i, _wgslsmith_mult_i32(u_input.b.x & -4576i, -1i)), ~12462i));
}

