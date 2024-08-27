struct Struct_1 {
    a: i32,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i, vec2<bool>(true, true));

var<private> global1: f32 = -336f;

var<private> global2: vec4<u32> = vec4<u32>(15580u, 285u, 34390u, 48426u);

var<private> global3: array<f32, 8>;

var<private> global4: array<Struct_1, 24>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    var var_0 = _wgslsmith_add_vec4_i32(vec4<i32>(min(global0.a, -38673i), -349i, -firstLeadingBit(reverseBits(1i)), ~8695i), _wgslsmith_div_vec4_i32(abs(~(-vec4<i32>(global0.a, u_input.a.x, u_input.a.x, -2147483647i))), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a, -2147483647i, arg_1.a >> (1u % 32u), 1i), _wgslsmith_clamp_vec4_i32(-vec4<i32>(25945i, -74492i, 11889i, arg_1.a), vec4<i32>(41080i, arg_1.a, u_input.a.x, arg_1.a), min(vec4<i32>(global0.a, arg_1.a, 60006i, global0.a), vec4<i32>(arg_1.a, u_input.a.x, 52312i, arg_1.a))))));
    var var_1 = _wgslsmith_dot_vec3_u32(abs(~global2.xxz | ~vec3<u32>(14553u, arg_0, global2.x)), abs(~global2.www)) & arg_0;
    global0 = Struct_1(_wgslsmith_mod_i32(reverseBits(firstLeadingBit(41440i)), 2147483647i) & abs(-(1i & var_0.x)), vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.x, 8u)] - global3[_wgslsmith_index_u32(arg_0, 8u)]) - 693f) >= -546f));
    var var_2 = arg_1;
    global4 = array<Struct_1, 24>();
    return 1u;
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: bool) -> f32 {
    global2 = ~(~_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(36240u, 4294967295u), global2.x, ~arg_0, arg_0), ~(~vec4<u32>(global2.x, arg_0, 4294967295u, 10553u))));
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1685f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global3[_wgslsmith_index_u32(1u, 8u)]))))) - _wgslsmith_f_op_f32(f32(-1f) * -461f))));
    global1 = global3[_wgslsmith_index_u32(0u, 8u)];
    var var_0 = _wgslsmith_add_i32(u_input.a.x, 35891i);
    var var_1 = !global0.b.x;
    return _wgslsmith_f_op_f32(ceil(global3[_wgslsmith_index_u32(4294967295u, 8u)]));
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<bool>) -> vec2<bool> {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1046f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-550f + arg_2.x)))));
    let var_0 = vec2<f32>(_wgslsmith_div_f32(global3[_wgslsmith_index_u32(32175u, 8u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_3(1u, Struct_1(arg_1.a, vec2<bool>(global0.b.x, true))), !arg_1.b.x, true)))), -161f);
    let var_1 = _wgslsmith_div_vec2_f32(arg_2, vec2<f32>(_wgslsmith_div_f32(3284f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(global2.x, 8u)] - _wgslsmith_f_op_f32(max(1140f, arg_0)))), _wgslsmith_f_op_f32(select(arg_0, -760f, !arg_3.x || true))));
    let var_2 = Struct_1(firstLeadingBit(45322i), !vec2<bool>(select(all(arg_3.xyy), true, any(arg_1.b)), any(select(arg_3.yxx, vec3<bool>(true, true, global0.b.x), arg_3.x))));
    let var_3 = vec2<u32>(~global2.x, global2.x);
    return select(!(!arg_1.b), !vec2<bool>(global0.b.x, false), true);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<f32>, arg_3: vec3<u32>) -> Struct_1 {
    global3 = array<f32, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-331f, -647f, arg_2.x, global3[_wgslsmith_index_u32(arg_3.x, 8u)]) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, 838f, global3[_wgslsmith_index_u32(29704u, 8u)], 580f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(891f, 445f, 1000f, global3[_wgslsmith_index_u32(27206u, 8u)]), vec4<f32>(arg_2.x, arg_2.x, 1000f, 794f), true)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -280f, arg_2.x, global3[_wgslsmith_index_u32(global2.x, 8u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-198f, arg_2.x, 937f, arg_2.x), vec4<f32>(global3[_wgslsmith_index_u32(0u, 8u)], arg_2.x, arg_2.x, arg_2.x))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1328f, -2137f, 982f, global3[_wgslsmith_index_u32(global2.x, 8u)]), vec4<f32>(global3[_wgslsmith_index_u32(arg_1.x, 8u)], arg_2.x, -1661f, arg_2.x)))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, -397f, -1356f)), _wgslsmith_div_vec4_f32(vec4<f32>(global3[_wgslsmith_index_u32(0u, 8u)], arg_2.x, arg_2.x, global3[_wgslsmith_index_u32(1u, 8u)]), vec4<f32>(250f, 1117f, 247f, global3[_wgslsmith_index_u32(34686u, 8u)])), !vec4<bool>(global0.b.x, false, false, false)))))));
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), var_0.x, any(func_2(arg_2.x, arg_0, var_0.yy, !vec4<bool>(arg_0.b.x, global0.b.x, arg_0.b.x, false)))))));
    let var_2 = arg_0.b.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-708f, 1836f))), _wgslsmith_f_op_vec2_f32(trunc(arg_2.zx)), global0.b));
    return arg_0;
}

fn func_5(arg_0: u32, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = global2.yyw ^ firstTrailingBit(firstTrailingBit(~(~global2.yzx)));
    return _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-14069i, ~(-arg_1.a), _wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, -17937i, -1i), -491i)), ~reverseBits(u_input.a) >> ((global2.xzy >> (_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, var_0.x, 19427u), vec3<u32>(global2.x, 0u, var_0.x)) % vec3<u32>(32u))) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_clamp_i32(arg_1.a, -7897i, -1i), max(-17573i, arg_1.a), ~25792i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~48267u);
    let var_1 = max(select(~firstLeadingBit(u_input.a), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2779i, global0.a) & vec3<i32>(-21572i, 1380i, -44984i), vec3<i32>(global0.a, -96846i, 28363i) | u_input.a), _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(9270u, 8u)]) >= global3[_wgslsmith_index_u32(~global2.x, 8u)]) | func_5(_wgslsmith_sub_u32(_wgslsmith_div_u32(4294967295u, 75880u), _wgslsmith_mod_u32(4294967295u, var_0)), func_1(global4[_wgslsmith_index_u32(1u, 24u)], ~vec3<u32>(43051u, 22858u, 0u), vec3<f32>(890f, -206f, -223f), vec3<u32>(20024u, global2.x, 12307u))), u_input.a);
    var var_2 = 1252f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(global2.x, ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 51515u, global2.x, 1u), vec4<u32>(global2.x, 48750u, 61739u, global2.x), vec4<u32>(72961u, 4294967295u, 4294967295u, var_0)), vec4<u32>(49279u, var_0, global2.x, var_0))));
}

