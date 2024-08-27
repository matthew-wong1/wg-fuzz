struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: u32,
    d: u32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: bool,
}

struct Struct_5 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(vec4<i32>(23011i, i32(-2147483648), 1i, -11795i)), Struct_5(vec4<i32>(0i, 22233i, -23820i, -1i)), Struct_5(vec4<i32>(i32(-2147483648), i32(-2147483648), 47150i, -1i)), Struct_5(vec4<i32>(41764i, -24534i, -43031i, 15228i)), Struct_5(vec4<i32>(1284i, 0i, 1i, 0i)), Struct_5(vec4<i32>(0i, 2147483647i, 0i, 2147483647i)), Struct_5(vec4<i32>(34484i, 1i, -1i, -9323i)), Struct_5(vec4<i32>(15309i, -1i, 15649i, 0i)), Struct_5(vec4<i32>(1i, 2147483647i, 0i, 18605i)), Struct_5(vec4<i32>(-28734i, -1i, 0i, 17657i)), Struct_5(vec4<i32>(-45199i, 9645i, 36059i, 1i)));

var<private> global1: array<vec2<f32>, 5> = array<vec2<f32>, 5>(vec2<f32>(-490f, 656f), vec2<f32>(746f, -845f), vec2<f32>(636f, 453f), vec2<f32>(592f, 154f), vec2<f32>(-1161f, -1000f));

var<private> global2: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-120f, -1002f, -1893f, -494f), vec4<f32>(230f, -1000f, 159f, -961f), vec4<f32>(-193f, 1460f, 678f, -1000f), vec4<f32>(-474f, -625f, -834f, 176f), vec4<f32>(-1000f, 1141f, -1000f, 314f), vec4<f32>(1492f, 966f, -312f, -271f), vec4<f32>(859f, -218f, -1343f, -112f), vec4<f32>(-251f, -960f, 1594f, -1848f), vec4<f32>(-214f, 864f, 461f, -141f), vec4<f32>(-1000f, 658f, 520f, -971f), vec4<f32>(-318f, 531f, 1697f, 1000f), vec4<f32>(-525f, -1312f, -217f, 944f), vec4<f32>(1125f, 2251f, 1042f, -558f), vec4<f32>(340f, -463f, 2128f, -1000f), vec4<f32>(816f, 290f, -1306f, 182f));

var<private> global3: bool;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32) -> i32 {
    var var_0 = -vec2<i32>(1i, 1i);
    let var_1 = select(select(!vec3<bool>(true, true, any(vec3<bool>(true, true, true))), vec3<bool>(true, true, true), select(true, 1033f <= _wgslsmith_f_op_f32(sign(-1361f)), any(vec4<bool>(true, true, true, true)))), select(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), any(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), false)))), (min(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, -3708i, 14977i), vec3<i32>(1i, var_0.x, -1i)), -var_0.x) > var_0.x) | true);
    let var_2 = 1545f;
    global3 = true;
    let var_3 = firstLeadingBit(~(~(~_wgslsmith_add_vec2_u32(vec2<u32>(491u, 0u), u_input.b))));
    return ~(~select(1i, var_0.x, var_1.x | false));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4, arg_2: Struct_3, arg_3: vec4<i32>) -> u32 {
    let var_0 = arg_1;
    global3 = !any(vec3<bool>(arg_0.e, arg_0.a.x, arg_1.d)) || (true || arg_0.a.x);
    var var_1 = countOneBits(select(~(vec2<u32>(arg_0.d, arg_2.a) | select(vec2<u32>(arg_0.c, arg_1.b.a.c), vec2<u32>(4294967295u, 4294967295u), vec2<bool>(false, false))), vec2<u32>(4700u, arg_2.a), false));
    global2 = array<vec4<f32>, 15>();
    let var_2 = Struct_1(var_0.b.a.a, max(-_wgslsmith_mod_i32(-1i, -22363i), ~func_3(arg_1.b.a.d, var_0.c)), arg_2.a, 0u, arg_0.a.x);
    return _wgslsmith_dot_vec3_u32(~(vec3<u32>(~73195u, arg_0.d, 4294967295u) ^ vec3<u32>(14229u, 0u, 62788u)), ~(~countOneBits(~vec3<u32>(1u, 25020u, var_0.b.a.d))));
}

fn func_1() -> bool {
    return !(!(!(func_2(Struct_1(vec4<bool>(false, true, false, false), 584i, u_input.b.x, 1u, false), Struct_4(-1i, Struct_2(Struct_1(vec4<bool>(true, true, true, false), 46820i, 75806u, u_input.b.x, true)), -769f, true), Struct_3(u_input.b.x), vec4<i32>(1i, -67507i, -12464i, -2147483647i)) > func_2(Struct_1(vec4<bool>(true, false, true, false), 5206i, u_input.b.x, 96580u, true), Struct_4(2147483647i, Struct_2(Struct_1(vec4<bool>(false, false, true, false), -2147483647i, 4294967295u, 18815u, true)), -1739f, false), Struct_3(u_input.a), vec4<i32>(-4615i, 5339i, -14317i, 6239i)))));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32, arg_2: bool) -> Struct_4 {
    var var_0 = arg_0.xw;
    let var_1 = Struct_2(Struct_1(arg_0, arg_1, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, ~u_input.b.x), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, u_input.a, 0u), vec3<u32>(78994u, u_input.a, u_input.b.x))), _wgslsmith_mod_u32(1u, max(select(1u, u_input.a, arg_2), u_input.a ^ 0u)), !arg_0.x));
    var var_2 = var_1;
    let var_3 = var_1;
    let var_4 = vec4<bool>(var_3.a.a.x, !all(select(var_3.a.a.yy, select(vec2<bool>(true, var_1.a.a.x), var_2.a.a.yy, true), !arg_0.zx)), !func_1(), any(vec2<bool>(var_3.a.e, arg_2 || true)));
    return Struct_4(firstLeadingBit(1i), var_3, 728f, all(arg_0.xzw));
}

fn func_5(arg_0: u32, arg_1: Struct_4) -> Struct_2 {
    global3 = false;
    let var_0 = vec4<bool>(!arg_1.b.a.a.x, arg_1.d, arg_1.d, any(!vec3<bool>(true, false, arg_1.d)));
    global2 = array<vec4<f32>, 15>();
    var var_1 = true;
    let var_2 = any(!vec4<bool>(var_0.x, !(0u > u_input.b.x), arg_1.d, true));
    return arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)), true), vec4<bool>(true, ~4294967295u > u_input.a, ~u_input.a < ~52611u, true), !all(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)))), firstTrailingBit(1i), u_input.a, select(35596u, reverseBits(12417u), any(vec4<bool>(true, true, true, true))), !any(vec4<bool>(true, false, false, all(vec3<bool>(false, true, false)))));
    global0 = array<Struct_5, 11>();
    let var_1 = (vec4<i32>(-1i) * -(~vec4<i32>(-2147483647i, var_0.b, var_0.b, var_0.b) << (~vec4<u32>(31107u, var_0.d, 75880u, 4294967295u) % vec4<u32>(32u)))) >> (vec4<u32>(4294967295u & var_0.d, 33850u | ~(0u << (u_input.a % 32u)), firstTrailingBit(22490u), u_input.a) % vec4<u32>(32u));
    var var_2 = func_5(0u, func_4(vec4<bool>(var_0.a.x, (var_1.x != var_0.b) & false, var_0.e, true | any(var_0.a.xyw)), ~44880i, func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(-453f, _wgslsmith_f_op_f32(min(1000f, -426f)), -557f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1383f)) + _wgslsmith_f_op_f32(223f - 899f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-244f, 919f, -1000f, 1938f))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(1317f, 457f, -1027f, -1551f)))))))), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b.x, var_0.c), max(var_2.a.d, var_0.d)), ~firstLeadingBit(1u), var_2.a.d, ~_wgslsmith_add_u32(31727u, var_2.a.d)) ^ _wgslsmith_clamp_vec4_u32(select(vec4<u32>(6205u, u_input.a, var_2.a.d, var_0.c), vec4<u32>(29452u, 74045u, u_input.a, u_input.a), !var_0.a), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_0.c, 4294967295u, var_0.c), vec4<u32>(54546u, 1u, var_0.d, 73061u)), firstLeadingBit(~vec4<u32>(83126u, 58419u, 0u, var_2.a.c))), vec4<f32>(_wgslsmith_f_op_f32(sign(-145f)), 277f, -607f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1437f))));
}

