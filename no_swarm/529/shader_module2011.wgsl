struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec3<u32>(55567u, 43635u, 7219u), vec3<f32>(500f, -1170f, 1000f), true), Struct_1(vec3<u32>(49737u, 0u, 4531u), vec3<f32>(612f, 411f, -110f), false), Struct_1(vec3<u32>(34242u, 1u, 24181u), vec3<f32>(-863f, 1024f, -595f), true), Struct_1(vec3<u32>(102579u, 70458u, 56489u), vec3<f32>(907f, -2354f, -200f), true), Struct_1(vec3<u32>(20394u, 2906u, 25753u), vec3<f32>(-818f, 1183f, -206f), true), Struct_1(vec3<u32>(4294967295u, 23343u, 1679u), vec3<f32>(425f, 985f, -2513f), true), Struct_1(vec3<u32>(0u, 25459u, 27319u), vec3<f32>(-711f, 286f, 595f), false), Struct_1(vec3<u32>(6118u, 0u, 0u), vec3<f32>(1149f, -1388f, -229f), true), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec3<f32>(958f, 265f, -1001f), false), Struct_1(vec3<u32>(0u, 1u, 52678u), vec3<f32>(-646f, 1000f, -252f), false), Struct_1(vec3<u32>(1u, 7402u, 1u), vec3<f32>(1000f, -212f, -912f), false), Struct_1(vec3<u32>(4294967295u, 0u, 11630u), vec3<f32>(-1075f, -1849f, -133f), true), Struct_1(vec3<u32>(32904u, 0u, 42040u), vec3<f32>(-1000f, 1408f, 1526f), true), Struct_1(vec3<u32>(59550u, 65178u, 10727u), vec3<f32>(1527f, 471f, -210f), false), Struct_1(vec3<u32>(0u, 4294967295u, 0u), vec3<f32>(-477f, 994f, -189f), false), Struct_1(vec3<u32>(975u, 1u, 537u), vec3<f32>(161f, -1618f, 129f), true), Struct_1(vec3<u32>(26070u, 4294967295u, 1u), vec3<f32>(-886f, 647f, -1000f), true), Struct_1(vec3<u32>(4294967295u, 103428u, 1u), vec3<f32>(718f, -871f, 1000f), true), Struct_1(vec3<u32>(20777u, 112481u, 1u), vec3<f32>(379f, -330f, 146f), true), Struct_1(vec3<u32>(23711u, 4294967295u, 6869u), vec3<f32>(1136f, -191f, -1000f), false), Struct_1(vec3<u32>(121894u, 1u, 1u), vec3<f32>(139f, 554f, -172f), false), Struct_1(vec3<u32>(4294967295u, 1215u, 0u), vec3<f32>(-290f, 1017f, 1192f), false), Struct_1(vec3<u32>(1u, 0u, 3846u), vec3<f32>(-719f, -1278f, -1000f), false));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<u32> {
    var var_0 = select(!(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true)), select(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), false)), select(vec3<bool>(true, true, 63255u < u_input.d.x), select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), !all(vec2<bool>(true, true)))), !all(vec4<bool>(true, true, true, select(false, false, false))));
    let var_1 = false;
    global0 = array<Struct_1, 23>();
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32((_wgslsmith_mod_u32(4294967295u | u_input.d.x, ~u_input.c.x) & ~u_input.c.x) >> (23090u % 32u), select(countOneBits(u_input.c.x >> (u_input.d.x % 32u)), ~(~(~114899u)), true)), 23u)];
    var var_3 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.d.xy << (firstLeadingBit(vec2<u32>(15446u, var_2.a.x)) % vec2<u32>(32u)), ~vec2<u32>(~24560u, ~57213u)), 23u)];
    return var_2.a;
}

fn func_2() -> Struct_1 {
    let var_0 = countOneBits(u_input.d.x);
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 4294967295u), 23u)];
    global0 = array<Struct_1, 23>();
    var var_2 = var_1.b.x;
    var var_3 = var_1.b.x;
    return Struct_1(func_3(), vec3<f32>(555f, var_1.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.b.x - -935f), _wgslsmith_f_op_f32(-var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(681f * var_1.b.x))))), var_1.c);
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = ((-u_input.a >> (56943u % 32u)) | countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(2147483647i, u_input.b)))) >> (reverseBits(min(4294967295u, 17641u)) % 32u);
    var_0 = -2147483647i;
    global0 = array<Struct_1, 23>();
    global0 = array<Struct_1, 23>();
    let var_1 = -arg_2.zy;
    return func_2();
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    let var_0 = func_4(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(max((u_input.d.yy << (vec2<u32>(0u, 49284u) % vec2<u32>(32u))) << (abs(vec2<u32>(26452u, arg_2.a.x)) % vec2<u32>(32u)), u_input.c.yz), abs(~(vec2<u32>(u_input.c.x, 94565u) | arg_2.a.zz))), 23u)], min(4294967295u, _wgslsmith_div_u32(arg_2.a.x, 15444u)), vec4<i32>(_wgslsmith_mod_i32(~(arg_3.x | arg_3.x), i32(-1i) * -1i), -(arg_3.x >> (u_input.d.x % 32u)) & arg_3.x, _wgslsmith_sub_i32(8223i, -1i >> (_wgslsmith_add_u32(56974u, arg_2.a.x) % 32u)), abs(~(-u_input.a))), func_2());
    global0 = array<Struct_1, 23>();
    var var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-704f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(1017f)), arg_0.x), _wgslsmith_f_op_f32(f32(-1f) * -148f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)), 387f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), -158f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-359f, -1020f, 1137f) + var_0.b))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(349f, arg_2.b.x, 1064f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, 418f, var_0.b.x), vec3<f32>(var_0.b.x, 320f, 1183f), vec3<bool>(false, var_0.c, false)))))))));
    var var_2 = func_2().b.x;
    var_1 = _wgslsmith_f_op_vec3_f32(-func_2().b);
    return _wgslsmith_div_u32(24941u, u_input.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(-13383i, -(1i << (u_input.c.x % 32u))), _wgslsmith_clamp_u32(u_input.c.x, func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1314f, 1653f), vec2<f32>(179f, 1029f))), vec2<u32>(53080u, 23230u), global0[_wgslsmith_index_u32(1u, 23u)], max(vec2<i32>(u_input.b, u_input.a), vec2<i32>(1i, -2147483647i))), ~(~4294967295u)) & ~_wgslsmith_sub_u32(58256u, 1u), abs(vec3<i32>(u_input.a, u_input.b ^ u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.b, u_input.a), vec3<i32>(u_input.e, u_input.b, u_input.a)))) >> (u_input.c % vec3<u32>(32u)));
}

