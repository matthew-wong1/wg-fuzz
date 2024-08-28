struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 4>;

var<private> global1: vec3<f32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<bool>) -> vec3<u32> {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(false, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.zx)) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(-global1.zx)))))), ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(73700u, 1u, 0u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(1u, u_input.b, u_input.b)), vec3<u32>(u_input.b, 4294967295u, u_input.b)), _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(4294967295u, u_input.b, u_input.b)), min(vec3<u32>(u_input.b, 37521u, 2907u), vec3<u32>(97986u, 1u, 0u))), ~vec3<u32>(u_input.b, 55944u, 0u)), vec3<bool>(true, false, all(select(arg_0.yz, vec2<bool>(true, arg_0.x), arg_0.yx)) == true));
    global0 = array<Struct_1, 4>();
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-557f, 1133f, 392f)))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-131f, var_1.b.x, global1.x)))))) + vec3<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(global1.x - -2538f)), _wgslsmith_f_op_f32(-var_1.b.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, -1012f))));
    var var_2 = Struct_2(abs(u_input.a), ~u_input.b, global0[_wgslsmith_index_u32(~u_input.b & 0u, 4u)], var_1.b.x);
    return var_2.c.c;
}

fn func_2() -> u32 {
    var var_0 = Struct_2(-(~min(_wgslsmith_mod_vec3_i32(vec3<i32>(-125i, 0i, u_input.a.x), u_input.a), u_input.a)), select(u_input.b, u_input.b, true), Struct_1(true, global1.xx, select(func_3(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), ~(~vec3<u32>(0u, u_input.b, 0u)), vec3<bool>(any(vec3<bool>(true, true, false)), true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false))), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1010f))));
    let var_1 = var_0.a.x;
    let var_2 = !(!select(vec4<bool>(any(vec3<bool>(var_0.c.a, true, true)), true, !var_0.c.a, !var_0.c.a), vec4<bool>(!var_0.c.a, all(var_0.c.d.yy), false, true), false));
    global1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(min(-511f, var_0.d))), vec3<f32>(-275f, var_0.d, _wgslsmith_f_op_f32(-845f * -987f))))));
    global0 = array<Struct_1, 4>();
    return _wgslsmith_mult_u32(~(~abs(0u >> (var_0.b % 32u))), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(36536u, 5643u, u_input.b, 121528u), reverseBits(vec4<u32>(var_0.c.c.x, 4294967295u, 53188u, var_0.b)))) << (~u_input.b % 32u));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = max(abs(arg_1.c.c), arg_1.c.c);
    let var_1 = vec3<u32>(~(u_input.b >> (1u % 32u)) | (~(~4791u) & var_0.x), var_0.x, abs(_wgslsmith_add_u32(~u_input.b, firstLeadingBit(min(1u, var_0.x)))));
    var var_2 = Struct_2(vec3<i32>(1i, reverseBits(~_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.x, u_input.a.x), u_input.a.zy)), -_wgslsmith_dot_vec2_i32(~arg_1.a.xx, abs(u_input.a.zx))), _wgslsmith_add_u32(abs(0u), func_2()), global0[_wgslsmith_index_u32(var_0.x, 4u)], -276f);
    var var_3 = countOneBits(14321u << (abs(var_1.x) % 32u));
    var_3 = u_input.b;
    return abs(vec4<i32>(_wgslsmith_sub_i32(1i, abs(firstTrailingBit(-2147483647i))), min(36707i, arg_1.a.x), abs(_wgslsmith_add_i32(u_input.a.x, -2147483647i) | u_input.a.x), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_1.a.x, var_2.a.x, -2147483647i, -2147483647i), _wgslsmith_clamp_vec4_i32(vec4<i32>(-16143i, var_2.a.x, u_input.a.x, arg_1.a.x), vec4<i32>(u_input.a.x, arg_1.a.x, 29700i, arg_1.a.x), vec4<i32>(-5459i, 62163i, 2147483647i, 29600i))), max(abs(vec4<i32>(var_2.a.x, u_input.a.x, u_input.a.x, -21388i)), abs(vec4<i32>(-35787i, u_input.a.x, 0i, var_2.a.x))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: u32, arg_2: u32) -> i32 {
    global0 = array<Struct_1, 4>();
    global0 = array<Struct_1, 4>();
    let var_0 = global0[_wgslsmith_index_u32(arg_2 ^ (~_wgslsmith_mod_u32(~0u, _wgslsmith_sub_u32(53319u, 0u)) | firstTrailingBit(0u)), 4u)];
    global0 = array<Struct_1, 4>();
    let var_1 = u_input.b;
    return ~2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_i32(u_input.a.x, -_wgslsmith_div_i32(-37634i, u_input.a.x));
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1045f, global1.x, global1.x) - vec3<f32>(global1.x, 1179f, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-916f, 815f, global1.x)), true))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(104f, global1.x, global1.x), vec3<f32>(global1.x, -884f, global1.x)))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1.x, global1.x, -152f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(global1.x, -443f, 228f)))))));
    global1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + global1.x), 1000f, global1.x)));
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(-1i), func_4(select(func_1(vec4<bool>(true, false, false, false), Struct_2(u_input.a, u_input.b, global0[_wgslsmith_index_u32(u_input.b, 4u)], -414f)), func_1(vec4<bool>(false, true, false, true), Struct_2(vec3<i32>(-1i, 40517i, u_input.a.x), 0u, Struct_1(true, global1.yz, vec3<u32>(4294967295u, u_input.b, 1u), vec3<bool>(false, true, false)), global1.x)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), u_input.b, ~4294967295u), abs(reverseBits(var_0)) ^ func_1(vec4<bool>(true, true, true, true), Struct_2(u_input.a, u_input.b, global0[_wgslsmith_index_u32(74994u, 4u)], -1000f)).x), u_input.a);
    let var_2 = firstTrailingBit(_wgslsmith_sub_u32(u_input.b, countOneBits(~u_input.b))) >= u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, ~(vec2<u32>(~u_input.b, 0u) >> (vec2<u32>(firstTrailingBit(u_input.b), ~u_input.b) % vec2<u32>(32u))));
}

