struct Struct_1 {
    a: i32,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: f32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec4<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = _wgslsmith_sub_vec4_i32(countOneBits(_wgslsmith_div_vec4_i32(select(vec4<i32>(-1i, -2147483647i, arg_0.a, arg_0.a), vec4<i32>(arg_0.a, arg_0.a, 47590i, 1i), false), vec4<i32>(45899i, 5759i, 15097i, 2147483647i))) << (~(~min(vec4<u32>(u_input.c.x, 28330u, u_input.b, u_input.c.x), vec4<u32>(1u, 1u, 4294967295u, 0u))) % vec4<u32>(32u)), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, arg_0.a, u_input.a, -10598i) & vec4<i32>(u_input.d.x, -2534i, arg_0.a, arg_0.a), min(vec4<i32>(u_input.d.x, u_input.d.x, u_input.a, -5818i), vec4<i32>(1958i, arg_0.a, u_input.a, u_input.d.x))) >> (vec4<u32>(43324u, 24280u, u_input.b, firstTrailingBit(1u)) % vec4<u32>(32u))));
    var var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, -1195f) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.x, 1502f, arg_0.b.x)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-228f, arg_0.b.x, -1120f)))))));
    let var_2 = arg_0;
    var var_3 = arg_0.b.x;
    let var_4 = select(vec4<bool>(true, !(_wgslsmith_div_i32(u_input.d.x, u_input.a) > 1i), true, true), select(vec4<bool>(!any(vec4<bool>(false, true, false, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), false, all(vec2<bool>(true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false))), true), true), !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), select(false, false, false)), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), true), true));
    return abs(i32(-1i) * -1i);
}

fn func_2(arg_0: vec2<i32>) -> vec2<u32> {
    let var_0 = !(!select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, any(vec3<bool>(false, true, false)))));
    let var_1 = vec2<bool>(true, false);
    var var_2 = Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -785f, 1000f, 750f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-486f, -1000f, 275f, -837f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(327f, -757f, 809f, -1000f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1504f, 1000f, 513f, -335f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-230f, -145f, -989f, 1000f))))));
    let var_3 = Struct_1(func_3(Struct_1(var_2.a, _wgslsmith_f_op_vec4_f32(select(var_2.b, var_2.b, !vec4<bool>(var_0.x, true, false, var_0.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2.b.x)), var_2.b.x, _wgslsmith_div_f32(var_2.b.x, var_2.b.x), -450f)))));
    global0 = global1.x;
    return _wgslsmith_div_vec2_u32(u_input.c.xx, global1.xy);
}

fn func_4(arg_0: vec2<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<f32>) -> u32 {
    return u_input.b;
}

fn func_1(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = max(u_input.b, 1u);
    global0 = func_4(_wgslsmith_clamp_vec2_u32(func_2(vec2<i32>(5525i, u_input.a) ^ vec2<i32>(-1i, u_input.a)), ~vec2<u32>(global1.x, 30140u), ~global1.xw) ^ global1.wz, 22231i, vec3<u32>(16230u, 0u << (max(~4294967295u, 1u >> (var_0 % 32u)) % 32u), ~(~abs(u_input.b))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(arg_0.b.wxx * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b.x, -481f, 336f) + arg_0.b.yzx)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(arg_0.b.xwx, arg_0.b.ywy))), false)))));
    global1 = ~vec4<u32>(~firstLeadingBit(~1u), arg_1, ~(~arg_1), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 0u), vec2<u32>(_wgslsmith_clamp_u32(27787u, 88508u, 4499u), ~48576u)));
    var var_1 = Struct_1(8792i, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_0.b + vec4<f32>(702f, arg_0.b.x, 1000f, 432f)), _wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b))))));
    var var_2 = arg_0;
    return Struct_1(var_1.a, _wgslsmith_f_op_vec4_f32(abs(var_2.b)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> StorageBuffer {
    var var_0 = ~(~(~(~28491u)));
    let var_1 = _wgslsmith_add_i32(1i, u_input.a) << (~_wgslsmith_sub_u32(~126971u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 58061u), vec3<u32>(u_input.c.x, 0u, arg_2)) % 32u), firstLeadingBit(arg_2) | firstTrailingBit(0u)) % 32u);
    var_0 = ~(~19165u);
    var_0 = 48086u;
    let var_2 = Struct_1(select(-u_input.a, arg_1.a, false), vec4<f32>(-313f, _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(-260f - _wgslsmith_f_op_f32(301f * arg_1.b.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_1.b.x)), arg_0.b.x)))), _wgslsmith_div_f32(-363f, arg_0.b.x)));
    return StorageBuffer(1u, global1.wwy, -24522i, arg_0.b.x, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.b.x, arg_1.b.x, var_2.b.x, 681f), vec4<f32>(305f, arg_1.b.x, arg_1.b.x, -346f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, 463f, 356f, arg_1.b.x) + vec4<f32>(var_2.b.x, -1438f, var_2.b.x, arg_1.b.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.b), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1125f, 597f, arg_1.b.x, var_2.b.x), vec4<f32>(600f, -394f, arg_0.b.x, 748f), true)))))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 50009u;
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(859f, 1281f)))))));
    let var_1 = ~(~vec4<u32>(1u, ~u_input.e.x, abs(~56646u), _wgslsmith_clamp_u32(global1.x, global1.x, u_input.e.x)));
    global0 = 47156u;
    let var_2 = min(1u, 54346u);
    var var_3 = vec2<bool>(true, true);
    var var_4 = vec2<f32>(-1578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1308f, var_0)) * 268f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - var_0))) * 1000f));
    let x = u_input.a;
    s_output = func_5(Struct_1((_wgslsmith_clamp_i32(u_input.d.x, 29105i, -2147483647i) << (var_2 % 32u)) << (var_1.x % 32u), vec4<f32>(var_0, -1165f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0)), func_1(Struct_1(u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, var_4.x, -627f, 807f) * vec4<f32>(-711f, -906f, 909f, var_0)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.x, -1596f, var_0, var_0) * vec4<f32>(2378f, 1000f, var_4.x, 737f)))), 1u), global1.x);
}

