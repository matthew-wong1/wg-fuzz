struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: f32;

var<private> global2: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(vec3<u32>(1u, 0u, 29639u)), Struct_2(vec3<u32>(0u, 125145u, 23199u)), Struct_2(vec3<u32>(11182u, 0u, 65421u)), Struct_2(vec3<u32>(1u, 0u, 4294967295u)), Struct_2(vec3<u32>(4294967295u, 1022u, 68706u)), Struct_2(vec3<u32>(37900u, 4294967295u, 1u)), Struct_2(vec3<u32>(5950u, 27713u, 4294967295u)), Struct_2(vec3<u32>(1u, 0u, 10509u)), Struct_2(vec3<u32>(277u, 0u, 29971u)), Struct_2(vec3<u32>(28354u, 1u, 1u)), Struct_2(vec3<u32>(1u, 63597u, 0u)), Struct_2(vec3<u32>(6611u, 4294967295u, 4294967295u)), Struct_2(vec3<u32>(1794u, 1u, 0u)), Struct_2(vec3<u32>(28550u, 21616u, 14852u)), Struct_2(vec3<u32>(1u, 0u, 2592u)), Struct_2(vec3<u32>(25238u, 0u, 1u)), Struct_2(vec3<u32>(46448u, 0u, 4294967295u)), Struct_2(vec3<u32>(112440u, 27227u, 1u)), Struct_2(vec3<u32>(0u, 1u, 79575u)), Struct_2(vec3<u32>(28016u, 32164u, 0u)), Struct_2(vec3<u32>(1u, 18461u, 10362u)), Struct_2(vec3<u32>(4294967295u, 1u, 114816u)), Struct_2(vec3<u32>(4294967295u, 0u, 71637u)), Struct_2(vec3<u32>(13815u, 4294967295u, 0u)), Struct_2(vec3<u32>(30130u, 14119u, 1u)), Struct_2(vec3<u32>(22418u, 4294967295u, 1u)), Struct_2(vec3<u32>(62716u, 16253u, 125186u)), Struct_2(vec3<u32>(1u, 0u, 4294967295u)), Struct_2(vec3<u32>(22002u, 1u, 8144u)));

var<private> global3: array<Struct_2, 29>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> u32 {
    let var_0 = Struct_2(vec3<u32>(u_input.a, u_input.a, ~4294967295u));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(floor(-1146f))) - _wgslsmith_f_op_f32(step(-1147f, _wgslsmith_f_op_f32(trunc(-645f)))))), -960f));
    var var_1 = Struct_3(Struct_2(countOneBits(var_0.a)), var_0.a.yz, Struct_1(vec4<i32>(i32(-1i) * -1i, select(i32(-1i) * -31441i, i32(-1i) * -27740i, all(vec2<bool>(true, false))), select(-22278i, -18792i, false) & firstTrailingBit(-41697i), ~max(0i, -58034i)), vec2<bool>(true, !(var_0.a.x > var_0.a.x))));
    let var_2 = var_1.c.b.x;
    global1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(766f, -1594f, true))));
    return 20221u;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: Struct_3) -> vec3<u32> {
    let var_0 = _wgslsmith_dot_vec3_u32(arg_1.a.a, _wgslsmith_add_vec3_u32(~arg_1.a.a | firstTrailingBit(arg_2.a.a), abs(vec3<u32>(0u | arg_0, 1u, _wgslsmith_div_u32(4294967295u, u_input.a)))));
    let var_1 = Struct_5(arg_1.a, arg_1.c.b.x);
    let var_2 = Struct_3(arg_1.a, ~var_1.a.a.xx, Struct_1(_wgslsmith_add_vec4_i32(arg_2.c.a, arg_1.c.a), vec2<bool>(true, !arg_1.c.b.x)));
    var var_3 = Struct_3(Struct_2(arg_2.a.a), _wgslsmith_div_vec2_u32(var_2.b ^ vec2<u32>(var_1.a.a.x, 4294967295u), abs(vec2<u32>(var_2.a.a.x, u_input.a) & vec2<u32>(arg_1.a.a.x, 29600u))) >> ((~min(var_2.b, var_2.b) >> (_wgslsmith_add_vec2_u32(min(arg_2.a.a.xy, vec2<u32>(1u, 2745u)), vec2<u32>(u_input.a, u_input.a) ^ vec2<u32>(1u, 2153u)) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_1(abs(vec4<i32>(abs(arg_1.c.a.x), arg_2.c.a.x, -2147483647i, firstLeadingBit(-24604i))), vec2<bool>(true, true | arg_1.c.b.x)));
    let var_4 = var_1;
    return _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(var_4.a.a, vec3<u32>(43220u, 31597u, countOneBits(var_3.a.a.x ^ 4294967295u))), _wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(~vec3<u32>(var_0, 60808u, 4294967295u), ~vec3<u32>(1u, arg_1.b.x, var_4.a.a.x)), countOneBits(vec3<u32>(_wgslsmith_div_u32(34718u, var_1.a.a.x), arg_2.b.x, 18304u))));
}

fn func_2() -> f32 {
    global2 = array<Struct_2, 29>();
    global0 = ~(~reverseBits(~2147483647i));
    let var_0 = u_input.a;
    let var_1 = Struct_5(Struct_2(func_4(max(abs(u_input.a), func_3()), Struct_3(global2[_wgslsmith_index_u32(~var_0, 29u)], vec2<u32>(var_0, u_input.a), Struct_1(vec4<i32>(-14874i, -50621i, 0i, -69267i), vec2<bool>(false, true))), Struct_3(global3[_wgslsmith_index_u32(28269u, 29u)], _wgslsmith_add_vec2_u32(vec2<u32>(var_0, 25990u), vec2<u32>(1u, 35229u)), Struct_1(vec4<i32>(-1i, 39334i, 1i, 2147483647i), vec2<bool>(true, true))))), !(!select(all(vec4<bool>(false, true, false, true)), u_input.a <= var_0, true)));
    global3 = array<Struct_2, 29>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-795f)))));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.yzx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(arg_0.wzz))))));
    var_0 = arg_0.yzz;
    let var_1 = !select(vec2<bool>(true, true), vec2<bool>(true, false), true);
    let var_2 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(974f - -1692f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1047f - 725f))), -640f == var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * var_0.x));
    var var_3 = Struct_3(Struct_2(select(~vec3<u32>(u_input.a, 407u, u_input.a), ~vec3<u32>(u_input.a, u_input.a, u_input.a), !select(vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, true, false), false))), vec2<u32>(_wgslsmith_add_u32(14097u, func_3()), firstTrailingBit(1u)), Struct_1(-vec4<i32>(~arg_1, 1i, _wgslsmith_sub_i32(8648i, 2147483647i), -2730i), vec2<bool>(false, var_1.x)));
    return !var_3.c.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-(_wgslsmith_dot_vec4_i32(vec4<i32>(-56765i, 2147483647i, -1i, -1i), vec4<i32>(-60580i, 1i, -13635i, -1i)) ^ 12879i), max(_wgslsmith_add_i32(abs(9305i), i32(-1i) * -1303i), _wgslsmith_mod_i32(23690i, _wgslsmith_mult_i32(-7589i, 1017i)))), 1i);
    let var_0 = ~min(vec2<u32>(~4294967295u, _wgslsmith_mod_u32(u_input.a, _wgslsmith_mult_u32(2614u, u_input.a))), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), firstTrailingBit(~vec2<u32>(u_input.a, 1u))));
    var var_1 = all(select(vec3<bool>(true, true, !func_1(vec4<f32>(1738f, -1257f, 250f, 1361f), 38714i)), !(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false))), !vec3<bool>(func_1(vec4<f32>(-1971f, -1000f, -976f, 394f), 1i), true, any(vec3<bool>(false, false, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(760f, -998f) - vec2<f32>(-217f, -1087f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -783f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(2098f, 498f) + vec2<f32>(308f, -102f)))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-570f, -1700f) * vec2<f32>(-1063f, -1048f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1183f, 291f) + vec2<f32>(-1947f, -947f)))))));
}

