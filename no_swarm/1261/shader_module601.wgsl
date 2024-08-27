struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2> = array<bool, 2>(true, true);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
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

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: i32) -> i32 {
    var var_0 = arg_0.a;
    var_0 = any(vec4<bool>(!all(select(vec3<bool>(arg_0.a, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)]), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], arg_0.a, true), vec3<bool>(global0[_wgslsmith_index_u32(53252u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], arg_0.a))), all(vec3<bool>(false, all(vec2<bool>(arg_0.a, arg_0.a)), true)), global0[_wgslsmith_index_u32(~(~countOneBits(70326u)), 2u)], any(vec4<bool>(!arg_0.a, arg_0.a, false & global0[_wgslsmith_index_u32(1u, 2u)], true))));
    return 32942i;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: i32, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_i32(u_input.b.yz, vec2<i32>(func_3(arg_0, _wgslsmith_div_i32(u_input.b.x, 58449i), -411f, -2147483647i), max(u_input.b.x << (u_input.a.x % 32u), 38172i | arg_2))) ^ _wgslsmith_sub_vec2_i32(u_input.b.xz, -(~(~vec2<i32>(u_input.b.x, 55980i))));
    let var_1 = Struct_1(false);
    var var_2 = 0i;
    var var_3 = vec2<u32>(_wgslsmith_mult_u32(4294967295u, ~(~(u_input.a.x & u_input.a.x))), u_input.a.x >> (abs(u_input.a.x << (~u_input.a.x % 32u)) % 32u));
    global0 = array<bool, 2>();
    return var_1;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = u_input.a.x;
    let var_1 = func_2(Struct_1(false), false, -countOneBits(-2147483647i), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0, 1080f, -2216f, arg_0)))))))));
    let var_2 = _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, firstLeadingBit(23711u));
    return var_1;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-arg_1, vec3<i32>(abs(-9868i), arg_1.x | 0i, arg_1.x)) & (-(~vec3<i32>(1i, 1i, arg_1.x)) >> (~_wgslsmith_add_vec3_u32(vec3<u32>(23156u, 1560u, u_input.a.x), vec3<u32>(u_input.a.x, 0u, 61366u)) % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(18941i, 1i, -2142i & arg_1.x)) ^ arg_1);
    global0 = array<bool, 2>();
    var var_1 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-974f, 1100f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1522f))), 1000f))));
    var_0 = vec3<i32>(u_input.b.x, _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_1.x, arg_1.x << (~u_input.a.x % 32u)), -2147483647i), _wgslsmith_add_i32(83761i, 0i));
    var var_2 = func_1(_wgslsmith_f_op_f32(-1098f + 1914f));
    return i32(-1i) * -24726i;
}

fn func_5(arg_0: vec4<i32>, arg_1: f32) -> vec2<u32> {
    return select(u_input.a, vec2<u32>(_wgslsmith_div_u32(~u_input.a.x << (_wgslsmith_mult_u32(47570u, 33620u) % 32u), _wgslsmith_sub_u32(countOneBits(4294967295u), u_input.a.x)), u_input.a.x), vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 2u)], false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(vec4<i32>(select(u_input.b.x, func_4(func_1(-345f), vec3<i32>(4189i, 0i, 0i) & u_input.b), all(vec4<bool>(true, global0[_wgslsmith_index_u32(40060u, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global0[_wgslsmith_index_u32(22195u, 2u)])) || false), -1i, -(i32(-1i) * -51623i), ~_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b.x, 1i, u_input.b.x)), reverseBits(u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -627f))));
    let var_1 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1374f + -668f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-718f)), _wgslsmith_f_op_f32(f32(-1f) * -1269f)))));
    var var_2 = var_0.x;
    let var_3 = vec3<bool>(var_1.a, !any(vec3<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(52035u, var_0.x), 2u)], false & var_1.a, all(vec2<bool>(var_1.a, false)))), 0i != _wgslsmith_div_i32(11625i, u_input.b.x));
    let var_4 = ~(~(-59726i));
    var_2 = _wgslsmith_sub_u32(0u, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(445f, 264f, 512f) - vec3<f32>(-1068f, -546f, -2065f)), vec3<f32>(138f, 413f, 1741f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(round(-643f)), -1414f, _wgslsmith_f_op_f32(151f + 1355f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-623f, 194f, 1641f) + vec3<f32>(-825f, -1890f, -1420f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-850f, 1221f, -467f) - vec3<f32>(-573f, -823f, 648f)))), !var_3)))), ~u_input.a.x, _wgslsmith_sub_vec2_u32(u_input.a, ~var_0 | func_5(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, u_input.b.x, u_input.b.x, -2147483647i), vec4<i32>(u_input.b.x, var_4, -1i, var_4), vec4<i32>(u_input.b.x, 2147483647i, u_input.b.x, 33209i)), _wgslsmith_f_op_f32(ceil(381f)))), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a.x), u_input.a), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(734f, -1000f, -1595f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(2268f, 2125f, -1000f))))));
}

