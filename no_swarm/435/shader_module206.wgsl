struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<i32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<u32>) -> i32 {
    let var_0 = Struct_2(!all(vec2<bool>(arg_0.c, any(vec2<bool>(true, arg_1.c)))), arg_0, countOneBits(_wgslsmith_clamp_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-24378i, 3990i, u_input.d.x, 58254i), vec4<i32>(-28910i, u_input.a.x, u_input.d.x, u_input.b.x)), -(~u_input.d), vec4<i32>(6150i, 1i, i32(-1i) * -1i, reverseBits(1i)))), _wgslsmith_f_op_f32(round(arg_1.b.x)));
    global0 = array<Struct_1, 15>();
    var var_1 = arg_1.b.x;
    var var_2 = true;
    let var_3 = arg_0.b;
    return var_0.c.x;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_1, arg_3: bool) -> f32 {
    global0 = array<Struct_1, 15>();
    global0 = array<Struct_1, 15>();
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(reverseBits(u_input.c), u_input.c, u_input.c), _wgslsmith_add_u32(u_input.c, ~81520u), u_input.c, 1u);
    let var_1 = _wgslsmith_mult_vec2_i32(arg_1.c.wy, ~abs(_wgslsmith_sub_vec2_i32(vec2<i32>(12661i, arg_1.c.x), abs(vec2<i32>(arg_0.c.x, arg_1.c.x)))));
    global0 = array<Struct_1, 15>();
    return _wgslsmith_f_op_f32(f32(-1f) * -1295f);
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: u32) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1385f, -984f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-707f, 111f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-358f - 1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -232f))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-1000f * 202f), var_0.x, 192f, _wgslsmith_f_op_f32(func_4(Struct_2(true, Struct_1(_wgslsmith_f_op_f32(step(var_0.x, var_0.x)), var_0.xy, false), vec4<i32>(u_input.d.x, func_3(Struct_1(var_0.x, vec2<f32>(-1481f, var_0.x), false), global0[_wgslsmith_index_u32(0u, 15u)], vec3<u32>(arg_0, 34057u, arg_2)), -1i, u_input.a.x | u_input.a.x), var_0.x), Struct_2(true, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -353f), _wgslsmith_f_op_vec2_f32(var_0.zy - var_0.yy), u_input.b.x <= u_input.a.x), ~(u_input.d & u_input.d), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, var_0.x) + _wgslsmith_f_op_f32(-var_0.x))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-982f, var_0.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.xy) + vec2<f32>(var_0.x, -431f)), true), true | all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false))))));
    global0 = array<Struct_1, 15>();
    let var_2 = any(select(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, false), true), vec2<bool>(true, true), false)) && true;
    var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec3_f32(max(var_1.yzw, _wgslsmith_f_op_vec3_f32(-var_1.wwz))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-775f, _wgslsmith_f_op_f32(f32(-1f) * -492f), _wgslsmith_div_f32(var_0.x, var_0.x))) + vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1194f + -603f))), var_0.x))));
    return Struct_2(false, Struct_1(var_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_0.x, var_1.x), vec2<f32>(var_0.x, 2030f)))), true), u_input.a, 1465f);
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_2(~0u, u_input.c ^ 5422u, u_input.c & u_input.c);
    global0 = array<Struct_1, 15>();
    var var_1 = _wgslsmith_mod_vec4_u32((vec4<u32>(73444u, 4294967295u, u_input.c, u_input.c) << (reverseBits(vec4<u32>(4294967295u, u_input.c, u_input.c, 45195u)) % vec4<u32>(32u))) >> (vec4<u32>(22297u, _wgslsmith_sub_u32(u_input.c, 20475u), 54515u ^ u_input.c, _wgslsmith_mod_u32(4294967295u, u_input.c)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(23510u, u_input.c, 4294967295u, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, 17910u), vec4<u32>(33667u, u_input.c, 21729u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 27125u, u_input.c, u_input.c), vec4<u32>(0u, u_input.c, 77875u, 4294967295u))) >> (firstTrailingBit(~vec4<u32>(4294967295u, u_input.c, 37836u, u_input.c)) % vec4<u32>(32u))) & _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, u_input.c, 4294967295u), vec3<u32>(u_input.c, u_input.c, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(3099u, u_input.c, 4294967295u), vec3<u32>(730u, u_input.c, u_input.c))), abs(~u_input.c), 0u, min(~4294967295u, 19078u)), vec4<u32>(0u, ~(~69338u), 4294967295u, u_input.c), countOneBits(firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, u_input.c), vec4<u32>(u_input.c, u_input.c, 4294967295u, u_input.c)))));
    var_1 = countOneBits(vec4<u32>(1u, _wgslsmith_div_u32(14172u, _wgslsmith_dot_vec3_u32(vec3<u32>(10161u, 4294967295u, var_1.x), vec3<u32>(67761u, 8144u, var_1.x))) >> (1u % 32u), var_1.x >> ((firstTrailingBit(4294967295u) >> (~1u % 32u)) % 32u), var_1.x));
    var var_2 = !(!func_2(41443u, ~(~23114u), 45754u).b.c);
    return func_2(var_1.x, 13647u, abs(_wgslsmith_mult_u32(~var_1.x, u_input.c))).b;
}

fn func_5(arg_0: bool, arg_1: Struct_1) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.c, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.c, u_input.c), firstLeadingBit(1u)) >> (u_input.c % 32u)), 15u)];
    var_0 = arg_1;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(-873f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a, -909f), 188f), -1794f)), var_0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_1.b, vec2<f32>(-1253f, -125f)))))), true);
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(max(~u_input.c, ~1u), firstLeadingBit(firstLeadingBit(u_input.c)), u_input.c, ~(~u_input.c)) >> ((_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, u_input.c, 1u, 46228u)), abs(vec4<u32>(0u, u_input.c, u_input.c, u_input.c))) << (~(~vec4<u32>(1u, u_input.c, 0u, u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u)), min(~(~(~vec4<u32>(21608u, u_input.c, 4294967295u, 4294967295u))), vec4<u32>(1u | ~u_input.c, 1u, ~_wgslsmith_sub_u32(u_input.c, u_input.c), u_input.c))), 15u)];
    global0 = array<Struct_1, 15>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(false, func_1(true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(290f, -879f)) - _wgslsmith_f_op_f32(func_4(Struct_2(true, Struct_1(523f, vec2<f32>(-1000f, -358f), false), vec4<i32>(-1i, 17414i, 0i, -41072i), -1660f), Struct_2(false, Struct_1(-1000f, vec2<f32>(-1000f, 1113f), true), u_input.a, -353f), Struct_1(-583f, vec2<f32>(-377f, 591f), false), false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(Struct_2(false, global0[_wgslsmith_index_u32(u_input.c, 15u)], vec4<i32>(u_input.b.x, 78460i, u_input.d.x, u_input.a.x), 1820f), Struct_2(true, global0[_wgslsmith_index_u32(u_input.c, 15u)], u_input.a, 1000f), global0[_wgslsmith_index_u32(u_input.c, 15u)], false)), -462f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-898f, -435f) * vec2<f32>(989f, 1887f))))), any(vec4<bool>(true, true, true, true)) || !(any(vec3<bool>(true, true, false)) && true));
    var_1 = global0[_wgslsmith_index_u32(34046u, 15u)];
    var var_2 = func_2(1u, _wgslsmith_add_u32(~4294967295u, firstLeadingBit(u_input.c)), ~55627u);
    var var_3 = u_input.c;
    var var_4 = ~_wgslsmith_clamp_vec3_u32(firstLeadingBit(abs(reverseBits(vec3<u32>(u_input.c, 0u, 81606u)))), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(37469u, u_input.c, 52092u), vec3<u32>(u_input.c, u_input.c, 4294967295u)), min(vec3<u32>(1u, 0u, u_input.c), vec3<u32>(4294967295u, 4294967295u, u_input.c))), ~(~vec3<u32>(u_input.c, 87768u, 0u))), reverseBits(abs(~vec3<u32>(69747u, 1u, u_input.c))));
    global0 = array<Struct_1, 15>();
    var_1 = func_2(8654u, ~max(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 4294967295u, 24174u) >> (vec4<u32>(0u, var_4.x, var_4.x, 0u) % vec4<u32>(32u)), vec4<u32>(96476u, 0u, 0u, u_input.c) ^ vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.c)), ~var_4.x), abs(~firstLeadingBit(u_input.c))).b;
    var_0 = all(!vec3<bool>(false, any(!vec3<bool>(false, var_1.c, var_2.b.c)), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(~var_2.c.x, abs(~abs(vec3<u32>(45172u, 1u, u_input.c))));
}

