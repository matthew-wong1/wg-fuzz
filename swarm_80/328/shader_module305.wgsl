struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(1000f, 1000f, 1196f, 1000f);

var<private> global1: vec2<u32> = vec2<u32>(1u, 36704u);

var<private> global2: array<vec3<f32>, 10>;

var<private> global3: array<Struct_1, 24>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(28045i, min(u_input.b, u_input.b)), i32(-1i) * -55074i, -u_input.b), ~(~(min(vec3<i32>(u_input.b, -1i, 2385i), vec3<i32>(-4416i, 42659i, 22891i)) & _wgslsmith_mult_vec3_i32(vec3<i32>(18027i, -44245i, -21915i), vec3<i32>(u_input.b, u_input.b, u_input.b)))));
    var var_1 = any(!select(select(select(vec4<bool>(arg_0.x, arg_0.x, arg_1, arg_0.x), vec4<bool>(arg_0.x, arg_1, true, arg_1), vec4<bool>(true, true, false, arg_1)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, arg_1, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_1), arg_1)), !select(vec4<bool>(arg_1, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)), vec4<bool>(true, any(vec4<bool>(true, true, arg_0.x, true)), arg_0.x, any(vec4<bool>(arg_0.x, false, true, arg_1)))));
    let var_2 = global3[_wgslsmith_index_u32(1u, 24u)];
    global0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(-global0.x), -1000f, _wgslsmith_f_op_f32(-global0.x))))));
    let var_3 = _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, -56705i), var_0.yz, vec2<i32>(1i, -1i) << (firstTrailingBit(_wgslsmith_sub_vec2_u32(firstLeadingBit(u_input.a), ~vec2<u32>(4294967295u, var_2.c))) % vec2<u32>(32u)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_2.b), -879f, _wgslsmith_f_op_f32(global0.x + -1149f), _wgslsmith_f_op_f32(-var_2.b)), vec4<f32>(_wgslsmith_f_op_f32(global0.x * -316f), -764f, _wgslsmith_f_op_f32(abs(global0.x)), var_2.b)))));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<bool> {
    global1 = reverseBits(u_input.a);
    let var_0 = global3[_wgslsmith_index_u32(~u_input.a.x, 24u)];
    global0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(906f * arg_2.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(277f, var_0.b, var_0.b, var_0.b) + vec4<f32>(1645f, -138f, var_0.b, global0.x)) - vec4<f32>(arg_2.b, global0.x, global0.x, arg_2.b))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.b, -1000f))), arg_0, global0.x) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<bool>(true, false), true)) + vec4<f32>(-1185f, arg_2.b, -1619f, arg_2.b)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_2.b, 465f, 479f, -614f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, -1687f, -606f, arg_0))))))));
    let var_1 = reverseBits(_wgslsmith_add_i32(-42112i, ~(~2147483647i)));
    global1 = min(~(~vec2<u32>(arg_2.a, 29147u)) | (max(u_input.a, vec2<u32>(u_input.a.x, var_0.a)) >> (_wgslsmith_div_vec2_u32(vec2<u32>(9986u, u_input.a.x) >> (vec2<u32>(0u, 69860u) % vec2<u32>(32u)), min(vec2<u32>(var_0.a, 4294967295u), arg_1.zz)) % vec2<u32>(32u))), arg_1.zy ^ vec2<u32>(~abs(arg_2.c), 1u));
    return vec3<bool>(all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, true)) && all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))), firstTrailingBit(firstLeadingBit(~arg_1.x)) <= max(1u << (_wgslsmith_add_u32(u_input.a.x, arg_1.x) % 32u), _wgslsmith_clamp_u32(1u >> (var_0.c % 32u), arg_1.x & 30372u, _wgslsmith_mod_u32(1u, var_0.a))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: vec2<f32>) -> f32 {
    let var_0 = func_2(arg_2.x, vec3<u32>(firstTrailingBit(~68937u) | u_input.a.x, 0u, _wgslsmith_mult_u32(~_wgslsmith_clamp_u32(arg_1, 0u, global1.x), ~u_input.a.x & _wgslsmith_mod_u32(1u, u_input.a.x))), Struct_1(u_input.a.x, global0.x, u_input.a.x, ~firstLeadingBit(_wgslsmith_sub_i32(2147483647i, 2617i))));
    global2 = array<vec3<f32>, 10>();
    let var_1 = _wgslsmith_f_op_f32(-global0.x);
    let var_2 = global0.x;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, 983f)));
    return arg_2.x;
}

fn func_4(arg_0: vec4<f32>, arg_1: f32) -> vec4<f32> {
    let var_0 = min(~(~(select(vec4<u32>(u_input.a.x, 8948u, global1.x, u_input.a.x), vec4<u32>(103842u, 1u, 0u, u_input.a.x), vec4<bool>(false, true, false, false)) | max(vec4<u32>(14186u, global1.x, global1.x, u_input.a.x), vec4<u32>(71391u, 20572u, 0u, 0u)))), vec4<u32>(~_wgslsmith_sub_u32(global1.x, 0u), 67802u, ~global1.x, _wgslsmith_mult_u32(~4294967295u, _wgslsmith_div_u32(75902u, u_input.a.x))) >> (select(firstLeadingBit(vec4<u32>(global1.x, u_input.a.x, 52244u, 103085u)) >> (max(vec4<u32>(global1.x, u_input.a.x, global1.x, 0u), vec4<u32>(global1.x, 47727u, 4294967295u, 24954u)) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.a.x, 0u, 4294967295u, 4294967295u) >> (vec4<u32>(4294967295u, 97545u, 0u, global1.x) % vec4<u32>(32u))), vec4<bool>(false, func_2(562f, vec3<u32>(34156u, 0u, u_input.a.x), global3[_wgslsmith_index_u32(1u, 24u)]).x, select(true, true, false), any(vec4<bool>(false, false, false, false)))) % vec4<u32>(32u)));
    global0 = _wgslsmith_div_vec4_f32(arg_0, arg_0);
    global2 = array<vec3<f32>, 10>();
    var var_1 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_1, _wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, 1000f))))));
    global3 = array<Struct_1, 24>();
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<bool>(false, false, true), 32303u, vec2<f32>(-2225f, -1390f))) * global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x * 623f), _wgslsmith_f_op_f32(489f + global0.x))), global0.x))), -939f));
    var var_0 = global3[_wgslsmith_index_u32(reverseBits(~65139u), 24u)];
    var var_1 = global3[_wgslsmith_index_u32(~1u, 24u)];
    var_0 = Struct_1(~select(max(global1.x, u_input.a.x) ^ 4294967295u, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, 39889u), min(var_1.a, u_input.a.x), u_input.a.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-537f)) - _wgslsmith_f_op_vec4_f32(func_4(vec4<f32>(global0.x, global0.x, -649f, 322f), -1731f)).x)), (_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 70248u) | 1u) | (15292u & ~(4294967295u & var_1.a)), -_wgslsmith_mod_i32(countOneBits(0i) << (u_input.a.x % 32u), 1i));
    let var_2 = Struct_1(1u, 1200f, 1u, ~1i);
    let x = u_input.a;
    s_output = StorageBuffer(-(vec2<i32>(1i, -33246i) << (countOneBits(_wgslsmith_div_vec2_u32(vec2<u32>(1u, var_0.a), vec2<u32>(1592u, u_input.a.x))) % vec2<u32>(32u))), vec2<u32>(~var_0.c, 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1042f, -315f, 1000f, -144f), vec4<f32>(var_1.b, var_0.b, -226f, 1288f))))) - vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(min(316f, var_0.b))), var_1.b, -1324f, _wgslsmith_f_op_f32(-var_1.b))));
}

