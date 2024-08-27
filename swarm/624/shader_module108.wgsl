struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<Struct_2, 1>;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(1i), Struct_2(28851i), Struct_2(9734i), Struct_2(-31232i), Struct_2(1i), Struct_2(-26482i), Struct_2(-21635i));

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(11905u), Struct_1(1u), Struct_1(4294967295u), Struct_1(4536u), Struct_1(102u), Struct_1(760u), Struct_1(1u), Struct_1(4294967295u), Struct_1(13268u), Struct_1(28510u), Struct_1(0u), Struct_1(28347u), Struct_1(0u), Struct_1(1u), Struct_1(4294967295u), Struct_1(26899u), Struct_1(14132u), Struct_1(0u), Struct_1(4294967295u), Struct_1(87905u), Struct_1(36226u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(50212u), Struct_1(31629u), Struct_1(21909u), Struct_1(6864u), Struct_1(9174u), Struct_1(1u), Struct_1(4294967295u), Struct_1(2391u));

var<private> global4: array<vec3<i32>, 4> = array<vec3<i32>, 4>(vec3<i32>(i32(-2147483648), -7948i, 4970i), vec3<i32>(0i, 11044i, 23621i), vec3<i32>(-62978i, -1i, i32(-2147483648)), vec3<i32>(1984i, 26204i, i32(-2147483648)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<f32>, arg_1: u32, arg_2: i32, arg_3: vec4<f32>) -> i32 {
    var var_0 = Struct_2(_wgslsmith_div_i32(i32(-1i) * -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.a, -1i), vec3<i32>(arg_2, 15259i, -57439i)), u_input.b.x));
    var_0 = Struct_2(u_input.b.x);
    var var_1 = ~(~abs(~arg_1) ^ 1u);
    var_1 = arg_1 ^ _wgslsmith_mult_u32(global0.x, reverseBits(global0.x));
    let var_2 = arg_0.x;
    return -2147483647i;
}

fn func_2() -> vec2<u32> {
    global3 = array<Struct_1, 32>();
    let var_0 = Struct_2(_wgslsmith_div_i32(~(-1i), -u_input.b.x));
    var var_1 = ((global0.x >= (global0.x | ~global0.x)) | !(true || (var_0.a < var_0.a))) && true;
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(-firstTrailingBit(func_3(vec4<f32>(770f, -503f, -1253f, 1563f), global0.x, var_0.a, vec4<f32>(232f, -308f, 417f, -729f))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(~1u, 4u)], _wgslsmith_sub_vec3_i32(global4[_wgslsmith_index_u32(global0.x, 4u)], vec3<i32>(-57594i, -2147483647i, 0i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(global0.x, 4u)], vec3<i32>(-2147483647i, var_0.a, 30870i)), countOneBits(2147483647i)))), u_input.a);
    global0 = min(vec2<u32>(global0.x, ~_wgslsmith_div_u32(global0.x, global0.x)) ^ max(vec2<u32>(global0.x, 4294967295u), (vec2<u32>(4294967295u, 25860u) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u))) & vec2<u32>(global0.x, global0.x)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, ~0u), select(vec2<u32>(global0.x, global0.x), vec2<u32>(1u, 1u) & vec2<u32>(33650u, global0.x), any(vec4<bool>(false, true, true, true)))));
    return abs(~(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, global0.x), ~vec2<u32>(global0.x, global0.x), _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, global0.x), vec2<u32>(0u, global0.x)))));
}

fn func_1(arg_0: Struct_2) -> f32 {
    global0 = _wgslsmith_sub_vec2_u32(reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(49122u, global0.x), vec2<u32>(97974u, 81387u) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(select(vec2<u32>(global0.x, global0.x), _wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, 51181u), vec2<u32>(global0.x, global0.x)), firstTrailingBit(vec2<u32>(5629u, 66185u))), !(-36763i == u_input.b.x)), _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(global0.x, 0u)), reverseBits(vec2<u32>(20635u, 0u))) >> ((~vec2<u32>(0u, global0.x) & func_2()) % vec2<u32>(32u))));
    let var_0 = _wgslsmith_mult_u32(global0.x, ~_wgslsmith_clamp_u32(global0.x, ~(~global0.x), ~0u));
    let var_1 = Struct_1(global0.x);
    var var_2 = _wgslsmith_clamp_i32(firstLeadingBit(-arg_0.a), -2147483647i, 56669i);
    let var_3 = Struct_1(var_1.a);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(496f)) * _wgslsmith_f_op_f32(round(1958f)));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = global1[_wgslsmith_index_u32(global0.x, 1u)];
    global2 = array<Struct_2, 7>();
    var var_1 = true;
    let var_2 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(countOneBits(~(1u >> (global0.x % 32u))), arg_0.a) ^ 4294967295u, 1u)];
    let var_3 = _wgslsmith_f_op_f32(max(arg_1, arg_1));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(global3[_wgslsmith_index_u32(0u, 32u)], _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -507f) + _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(func_1(Struct_2(-2147483647i))))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1568f, 1496f, 201f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(433f, 719f, -1556f), vec3<f32>(-232f, 1153f, -1563f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-938f, 728f, 121f) - vec3<f32>(1248f, -1275f, 2733f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 757f, 2199f))), false)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1253f, 1010f, 1008f))))))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1011f + -1730f)), 709f, 356f)));
    let var_2 = ~(~func_4(Struct_1(72716u), _wgslsmith_div_f32(_wgslsmith_f_op_f32(540f * var_1.x), -1784f)).a);
    var var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(406f * var_1.x) - _wgslsmith_f_op_f32(var_1.x - var_1.x))), var_1.x, -2022f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1212f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, var_1.x))), _wgslsmith_div_f32(209f, _wgslsmith_f_op_f32(exp2(var_1.x))))));
    var var_4 = u_input.a;
    global3 = array<Struct_1, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 583f))))) * var_1.zy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_3.x, var_1.x, -363f), var_1) - _wgslsmith_f_op_vec3_f32(-var_1)), var_3.zzx), vec4<i32>(-2147483647i, ~(~2147483647i), u_input.a, firstLeadingBit(u_input.b.x)) & (vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(44797i, -12876i, u_input.a), -2147483647i, -1i) & (countOneBits(vec4<i32>(2147483647i, u_input.b.x, u_input.b.x, 2147483647i)) ^ _wgslsmith_add_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, u_input.a, -2147483647i), vec4<i32>(23082i, 0i, u_input.b.x, u_input.b.x)))), 182f);
}

