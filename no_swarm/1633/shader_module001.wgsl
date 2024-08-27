struct Struct_1 {
    a: f32,
    b: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> u32 {
    global0 = array<i32, 31>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, -849f, _wgslsmith_f_op_f32(trunc(-1998f)))));
    global0 = array<i32, 31>();
    let var_1 = ~(~(~0u));
    var var_2 = reverseBits(firstLeadingBit(arg_3.x & (0i >> (min(var_1, 19486u) % 32u))));
    return _wgslsmith_dot_vec4_u32(reverseBits(min(~min(vec4<u32>(0u, var_1, 23345u, 23526u), vec4<u32>(0u, 4294967295u, 83832u, 0u)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1, var_1, var_1, var_1), vec4<u32>(var_1, 11910u, 32947u, 0u)))), vec4<u32>(~_wgslsmith_clamp_u32(firstTrailingBit(var_1), 23646u, 0u), 1u, _wgslsmith_div_u32(var_1, _wgslsmith_sub_u32(131877u, var_1)) << (var_1 % 32u), var_1));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    global0 = array<i32, 31>();
    return Struct_2(reverseBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(84129u, 4881u, 40736u), vec3<u32>(4294967295u, 10548u, 0u)), func_3(true, Struct_1(-798f, arg_0.x), Struct_1(1000f, false), u_input.a.zz), _wgslsmith_clamp_u32(4294967295u, ~1u, ~0u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> bool {
    var var_0 = 31971u;
    var var_1 = arg_0;
    var var_2 = arg_1.a.x;
    var var_3 = func_2(!(!(!vec3<bool>(var_1.b, true, var_1.b))));
    var var_4 = arg_0.b;
    return false;
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2) -> i32 {
    global0 = array<i32, 31>();
    let var_0 = func_2(!select(vec3<bool>(any(vec4<bool>(true, arg_1.b, arg_1.b, arg_1.b)), arg_1.b, !arg_1.b), vec3<bool>(arg_1.b, true | arg_1.b, true), arg_1.b));
    var var_1 = vec2<bool>(!(!func_1(Struct_1(1131f, arg_1.b), Struct_2(vec3<u32>(arg_2.a.x, var_0.a.x, arg_2.a.x)), ~var_0.a.x)), ~var_0.a.x < ~(~(~arg_2.a.x)));
    global0 = array<i32, 31>();
    let var_2 = firstTrailingBit(_wgslsmith_mult_vec3_i32(u_input.a.www, u_input.a.wzz));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec3_i32(~(-_wgslsmith_clamp_vec3_i32(min(u_input.a.ywy, vec3<i32>(u_input.a.x, u_input.a.x, 22154i)), firstTrailingBit(vec3<i32>(14651i, global0[_wgslsmith_index_u32(0u, 31u)], u_input.a.x)), vec3<i32>(global0[_wgslsmith_index_u32(17755u, 31u)], 0i, -56748i))), vec3<i32>(38960i, _wgslsmith_div_i32(-14223i, -67502i | (global0[_wgslsmith_index_u32(1u, 31u)] & 2147483647i)), func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(724f, 336f, 316f, -223f)), Struct_1(2150f, func_1(Struct_1(1159f, false), Struct_2(vec3<u32>(25110u, 23457u, 39327u)), 28845u)), func_2(select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))))));
    let var_1 = Struct_1(-1089f, !(!all(vec3<bool>(true, true, false))) && false);
    let var_2 = -1i;
    global0 = array<i32, 31>();
    var_0 = vec3<i32>(0i, _wgslsmith_div_i32(-58585i, _wgslsmith_div_i32(6477i, -5889i)) | func_4(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, -857f, 1595f, -1006f)))), var_1, Struct_2(~vec3<u32>(1u, 1u, 32849u))), 25322i);
    var var_3 = _wgslsmith_sub_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(15920u, 52999u), vec2<u32>(1u, 1u))), vec2<u32>(1u, 1u) ^ min(select(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 12401u), vec2<bool>(true, var_1.b)), vec2<u32>(4294967295u, 1u))) >> (vec2<u32>(~firstTrailingBit(1u), ~(~1u)) % vec2<u32>(32u));
    var var_4 = Struct_1(var_1.a, false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(firstLeadingBit(_wgslsmith_mod_u32(47558u, _wgslsmith_dot_vec2_u32(vec2<u32>(17184u, var_3.x), vec2<u32>(28581u, var_3.x)))), 74835u, ~var_3.x), vec3<u32>(4294967295u, 71963u ^ _wgslsmith_mod_u32(min(var_3.x, 81291u), ~0u), abs(~var_3.x)), min(_wgslsmith_div_vec2_u32(reverseBits(vec2<u32>(19342u, 1u)), ~vec2<u32>(0u, var_3.x)), vec2<u32>(4294967295u, firstTrailingBit(var_3.x))) >> (vec2<u32>(_wgslsmith_add_u32(~var_3.x, ~var_3.x), _wgslsmith_add_u32(~var_3.x, 25961u)) % vec2<u32>(32u)), vec3<i32>(i32(-1i) * -var_0.x, ~_wgslsmith_dot_vec3_i32(select(u_input.a.xwz, u_input.a.wzy, false), _wgslsmith_mod_vec3_i32(u_input.a.zxz, vec3<i32>(0i, u_input.a.x, global0[_wgslsmith_index_u32(19016u, 31u)]))), 3516i));
}

