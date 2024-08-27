struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 19>;

var<private> global1: array<u32, 6>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: Struct_4, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> u32 {
    return ~u_input.a.x;
}

fn func_1() -> vec3<u32> {
    global0 = array<Struct_3, 19>();
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(313f, _wgslsmith_f_op_f32(ceil(-2924f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, -1000f)))))));
    global0 = array<Struct_3, 19>();
    global1 = array<u32, 6>();
    return ~vec3<u32>(u_input.a.x, (0u << (u_input.a.x % 32u)) << ((130597u >> (u_input.a.x % 32u)) % 32u), ~global1[_wgslsmith_index_u32(~u_input.a.x, 6u)]) & vec3<u32>(u_input.a.x | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(8021u, 6u)], 6u)], 1u, ~global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(~u_input.a.x, 6u)], func_2(Struct_4(vec4<i32>(1i, 0i, 1i, -43724i), Struct_2(var_1.x)), true, var_1.x, vec4<bool>(var_0, true, false, var_0))), 6u)]);
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: i32) -> vec2<i32> {
    global0 = array<Struct_3, 19>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-300f, -374f))))) * -1000f);
    let var_1 = Struct_4(abs(_wgslsmith_div_vec4_i32(min(-vec4<i32>(2147483647i, arg_1.x, arg_2, arg_2), -vec4<i32>(arg_0.b, 231i, 2147483647i, -2147483647i)), _wgslsmith_add_vec4_i32(-vec4<i32>(1i, arg_0.b, -2147483647i, -17432i), ~vec4<i32>(-1i, 44161i, 66649i, arg_0.b)))), Struct_2(arg_0.a.a));
    global0 = array<Struct_3, 19>();
    var var_2 = arg_0.a;
    return _wgslsmith_sub_vec2_i32(vec2<i32>(reverseBits(_wgslsmith_mult_i32(countOneBits(-9101i), -arg_2)), arg_0.b), vec2<i32>(62481i | (~112727i & select(arg_1.x, arg_1.x, false)), 26682i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_1(), u_input.a.yww, false);
    var var_1 = func_3(Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(632f - -679f) + _wgslsmith_f_op_f32(ceil(1587f)))), firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(-13694i, -14298i), ~(-35870i)))), ~(~vec2<i32>(1i, 1i)), 49291i | reverseBits(_wgslsmith_mult_i32(-48863i, _wgslsmith_clamp_i32(0i, -4817i, 34020i))));
    let var_2 = ((_wgslsmith_clamp_u32(max(u_input.a.x, 52426u), 11546u, min(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], 16578u)) & 1u) & ~(~(~55244u))) << (14641u % 32u);
    global1 = array<u32, 6>();
    var_1 = _wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(var_1.x, -13639i), firstLeadingBit(vec2<i32>(var_1.x, -21104i)) | _wgslsmith_mod_vec2_i32(vec2<i32>(38865i, -23122i), vec2<i32>(var_1.x, -11374i))) ^ -firstLeadingBit(vec2<i32>(var_1.x, 0i)), -reverseBits(select(vec2<i32>(-2147483647i, -1i), vec2<i32>(var_1.x, var_1.x), true)) & (vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), vec2<i32>(var_1.x, -20282i)), 0i) >> (var_0.zx % vec2<u32>(32u))));
    var_1 = ~(-vec2<i32>(var_1.x, 0i));
    let var_3 = Struct_4(-vec4<i32>(-var_1.x, -14758i, var_1.x, i32(-1i) * -52737i), Struct_2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(175f + 617f))), -253f)));
    var var_4 = _wgslsmith_dot_vec4_u32(vec4<u32>(~1u, min(reverseBits(40578u), var_0.x), _wgslsmith_sub_u32(4294967295u, firstLeadingBit(53925u)), u_input.a.x & firstTrailingBit(global1[_wgslsmith_index_u32(var_0.x, 6u)])) & _wgslsmith_clamp_vec4_u32(~u_input.a, min(vec4<u32>(4294967295u, 47332u, 4294967295u, var_2) ^ u_input.a, _wgslsmith_mult_vec4_u32(u_input.a, u_input.a)), u_input.a), _wgslsmith_clamp_vec4_u32(max((vec4<u32>(var_2, var_0.x, u_input.a.x, 2703u) & vec4<u32>(0u, 26782u, global1[_wgslsmith_index_u32(1u, 6u)], 0u)) & _wgslsmith_clamp_vec4_u32(u_input.a, vec4<u32>(global1[_wgslsmith_index_u32(u_input.a.x, 6u)], var_0.x, 55360u, 12359u), vec4<u32>(1u, 35148u, 4294967295u, var_0.x)), countOneBits(vec4<u32>(0u, var_0.x, var_2, 4294967295u))), u_input.a, ~vec4<u32>(u_input.a.x, max(global1[_wgslsmith_index_u32(4294967295u, 6u)], var_2), 1u, 0u | var_2)));
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_1.x));
}

