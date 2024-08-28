struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<bool>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12> = array<i32, 12>(-24757i, 31063i, 0i, -30784i, i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648), -39366i, 26343i, 0i, -12915i);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = u_input.a;
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    let var_1 = !(!(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true))));
    let var_2 = _wgslsmith_f_op_f32(-arg_2.x);
    return Struct_1(-70937i);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = _wgslsmith_clamp_u32((abs(4294967295u) << (select(200u, 1u, false) % 32u)) & 17994u, _wgslsmith_div_u32(5255u, ~76369u), _wgslsmith_dot_vec2_u32(vec2<u32>(min(4294967295u, 71687u), 0u), ~(~vec2<u32>(6605u, 4556u)))) & 0u;
    var var_1 = Struct_3(Struct_1(-_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.zy, u_input.a.xy), u_input.a.yx)), Struct_2(Struct_1(_wgslsmith_div_i32(arg_0, -u_input.a.x))), !vec2<bool>(all(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false))), any(vec4<bool>(true, true, true, true))), -(~_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.a.x, u_input.b, 18658i, 9134i), vec4<i32>(u_input.a.x, arg_0, 27182i, u_input.a.x) ^ vec4<i32>(-65212i, -2147483647i, 2147483647i, 36535i), firstTrailingBit(vec4<i32>(u_input.a.x, arg_0, -20429i, arg_0)))));
    var_0 = ~1u;
    var var_2 = 1u;
    var_1 = Struct_3(var_1.a, var_1.b, !(!select(vec2<bool>(true, true), vec2<bool>(false, var_1.c.x), var_1.c)), vec4<i32>(_wgslsmith_clamp_i32(24496i, 1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(u_input.a.xx, u_input.a.xy), 49556i)), u_input.a.x, 85521i, 92621i));
    return global0[_wgslsmith_index_u32(1u, 12u)];
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(func_2(_wgslsmith_div_vec3_f32(vec3<f32>(-1732f, _wgslsmith_f_op_f32(641f - -1000f), _wgslsmith_f_op_f32(f32(-1f) * -375f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-228f, 764f, -2017f))))), _wgslsmith_mult_i32(u_input.b, 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-728f, -726f, 1710f, 3196f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(600f, -726f, -974f, -245f) + vec4<f32>(-446f, 257f, 431f, 1084f))))), Struct_2(Struct_1(func_3(1i))), !vec2<bool>(true, all(vec2<bool>(true, true))), ~vec4<i32>(1982i, 1i, global0[_wgslsmith_index_u32(firstLeadingBit(~1u), 12u)], _wgslsmith_add_i32(abs(74873i), _wgslsmith_dot_vec4_i32(vec4<i32>(51804i, 3370i, 74677i, u_input.b), vec4<i32>(2147483647i, 2147483647i, -2147483647i, global0[_wgslsmith_index_u32(1279u, 12u)])))));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    return var_0.a;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_2(arg_1);
    let var_1 = arg_0.c;
    let var_2 = max(0i, ~_wgslsmith_sub_i32(~func_1().a, countOneBits(_wgslsmith_dot_vec4_i32(arg_0.d, arg_0.d))));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    return arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(firstTrailingBit(~(-9415i)));
    var var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(_wgslsmith_add_u32(0u, 1u), 1u), firstLeadingBit(_wgslsmith_clamp_u32(firstTrailingBit(14190u), 34866u, 1u)), _wgslsmith_div_u32(~72085u, 19974u)), _wgslsmith_mod_vec3_u32(vec3<u32>(~1u, ~(~4294967295u), abs(40968u)), vec3<u32>(64220u, ~53342u, _wgslsmith_mult_u32(8500u, 0u)) << ((firstTrailingBit(vec3<u32>(28746u, 4294967295u, 1u)) ^ ~vec3<u32>(1u, 43488u, 0u)) % vec3<u32>(32u))));
    var var_2 = func_4(Struct_3(func_1(), Struct_2(Struct_1(-2147483647i)), vec2<bool>(any(vec3<bool>(true, false, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false))), ~max(firstLeadingBit(vec4<i32>(1i, global0[_wgslsmith_index_u32(4294967295u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(47329u, 12u)])), -vec4<i32>(2147483647i, 1i, u_input.b, 2147483647i))), Struct_1(u_input.b), _wgslsmith_f_op_f32(f32(-1f) * -1083f));
    var var_3 = 1i;
    var var_4 = 4294967295u;
    var var_5 = !select(vec2<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), any(vec4<bool>(true, true, true, true)) && any(vec2<bool>(true, true))), vec2<bool>(true, true), false);
    var_3 = min(10739i, -(var_2.a.a ^ func_1().a));
    var_3 = ~func_4(Struct_3(func_4(Struct_3(Struct_1(var_0.a), Struct_2(var_2.a), vec2<bool>(var_5.x, false), vec4<i32>(var_0.a, var_2.a.a, -30219i, var_2.a.a)), var_2.a, _wgslsmith_f_op_f32(113f + 1104f)).a, Struct_2(Struct_1(u_input.a.x)), select(!vec2<bool>(var_5.x, var_5.x), vec2<bool>(true, true), false), vec4<i32>(-69520i, 37244i, -10923i, -1i) & (vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(1u, 12u)], var_2.a.a, global0[_wgslsmith_index_u32(var_1.x, 12u)]) >> (vec4<u32>(1u, var_1.x, var_1.x, 0u) % vec4<u32>(32u)))), var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-626f)))).a.a;
    let var_6 = vec2<f32>(_wgslsmith_f_op_f32(-1406f - 1501f), -191f);
    let x = u_input.a;
    s_output = StorageBuffer(~(select(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(43323i, -2147483647i, 2147483647i), u_input.a), all(vec4<bool>(var_5.x, var_5.x, false, true))) ^ -vec3<i32>(var_0.a, 0i, var_2.a.a)));
}

