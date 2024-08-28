struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: Struct_2;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: vec2<u32>) -> f32 {
    var var_0 = global1.c;
    var_0 = Struct_1(_wgslsmith_clamp_u32(arg_1.x << (u_input.a.x % 32u), ~(~4294967295u), var_0.a) >> ((_wgslsmith_clamp_u32(65557u, _wgslsmith_sub_u32(16106u, var_0.a), _wgslsmith_div_u32(4294967295u, arg_1.x)) << (~1u % 32u)) % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(reverseBits(var_0.a), _wgslsmith_div_u32(4294967295u, 5381u)), min(1u, ~25079u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - global1.a.x) + global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1644f * global1.b) - 262f), _wgslsmith_f_op_f32(134f + 1000f), 1585f), vec4<f32>(_wgslsmith_f_op_f32(ceil(1245f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-475f)) + _wgslsmith_f_op_f32(max(2351f, 331f))), global1.a.x))), _wgslsmith_f_op_f32(-global1.a.x), Struct_1(36973u, 88152u), _wgslsmith_dot_vec4_i32(select(reverseBits(vec4<i32>(-2147483647i, 0i, u_input.b.x, global1.d)), vec4<i32>(arg_2.x, global1.d, -1i, u_input.b.x), vec4<bool>(true, true, true, true)) ^ abs(min(u_input.b, vec4<i32>(1i, arg_2.x, 6417i, 2147483647i))), select(vec4<i32>(abs(2147483647i), arg_2.x, arg_2.x >> (1879u % 32u), 880i), _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(arg_2.x, -26698i, 34577i, -7965i) | u_input.b), true)));
    let var_2 = vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_mod_i32(-1i, global1.d), global1.d, _wgslsmith_dot_vec3_i32(arg_2, u_input.b.zwx)), ~u_input.b) <= select(45394i, -17813i, _wgslsmith_mod_u32(var_1.c.a, 4294967295u) <= arg_0), all(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true))), true);
    global0 = abs(var_0.b);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-430f, 224f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global1.b, -1000f)), var_1.a.x));
}

fn func_4(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    let var_0 = global1.c;
    let var_1 = ~arg_1.c.a;
    let var_2 = firstTrailingBit(~abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(2681u, 7396u, 15425u), ~u_input.a.wxy, ~u_input.a.wzy)));
    let var_3 = vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(14803i, u_input.b.x, arg_0), u_input.b.wwx | u_input.b.wwz), vec3<i32>(reverseBits(u_input.b.x), -27650i, arg_1.d));
    global0 = u_input.a.x;
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * 843f)), arg_1.b) + _wgslsmith_f_op_f32(-arg_1.b));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(11746u, firstTrailingBit(global1.c.b));
    return _wgslsmith_f_op_f32(func_4(min(i32(-1i) * -2147483647i, _wgslsmith_dot_vec4_i32(-(~vec4<i32>(2147483647i, -34798i, 2147483647i, 97259i)), u_input.b)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(func_3(~var_0.b, select(u_input.c, u_input.a.xzx, false), vec3<i32>(u_input.b.x, -2147483647i, global1.d) | u_input.b.wxx, _wgslsmith_mult_vec2_u32(vec2<u32>(global1.c.b, 58108u), vec2<u32>(1u, u_input.a.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(7939u, u_input.c, vec3<i32>(global1.d, -20216i, u_input.b.x), vec2<u32>(46045u, 0u))), _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - global1.b)), _wgslsmith_f_op_f32(max(-544f, -231f))), _wgslsmith_f_op_f32(global1.a.x * _wgslsmith_f_op_f32(-1378f - _wgslsmith_f_op_f32(global1.b - global1.a.x))), Struct_1(global1.c.b, 0u), global1.d >> (max(_wgslsmith_div_u32(global1.c.b, global1.c.a), _wgslsmith_mult_u32(u_input.a.x, 0u)) % 32u)), var_0));
}

fn func_1() -> i32 {
    var var_0 = !vec3<bool>(false, false, any(vec4<bool>(false, true, 0u == u_input.c.x, all(vec2<bool>(false, true)))));
    global0 = ~(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(countOneBits(u_input.a.xyz), u_input.a.yyx), (4294967295u ^ global1.c.a) ^ global1.c.a, 1u) & 37560u);
    let var_1 = vec3<f32>(global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * -1716f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b))));
    var var_2 = global1.b;
    var var_3 = global1.b;
    return -global1.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -589f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - global1.a.x))))));
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, ~global1.d << (~78279u % 32u), -653i, u_input.b.x) | countOneBits(~firstTrailingBit(vec4<i32>(38011i, global1.d, 0i, 26833i))), vec4<i32>(~(~1i), u_input.b.x, global1.d, 0i) ^ ~(_wgslsmith_div_vec4_i32(u_input.b, u_input.b) << (~vec4<u32>(global1.c.a, 9856u, u_input.a.x, 53978u) % vec4<u32>(32u))));
    global0 = 4294967295u;
    let var_2 = _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(u_input.b, firstTrailingBit(vec4<i32>(1i, var_1.x, global1.d, u_input.b.x))), -global1.d >> (global1.c.b % 32u)), countOneBits(-max(-2147483647i, global1.d)), _wgslsmith_add_i32(_wgslsmith_sub_i32(-1i, var_1.x), _wgslsmith_mod_i32(i32(-1i) * -7452i, func_1()))), vec4<i32>(~countOneBits(0i) | select(global1.d ^ global1.d, _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-15899i, global1.d, global1.d, 2147483647i)), false), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, 21934i, 7197i, var_1.x)) << (reverseBits(0u) % 32u), _wgslsmith_dot_vec3_i32(-(~u_input.b.xxz), abs(vec3<i32>(-1i, -49380i, -53093i)) | ~vec3<i32>(var_1.x, 1161i, global1.d)), func_1()), vec4<i32>(select(u_input.b.x, -35039i, true), u_input.b.x, u_input.b.x, u_input.b.x));
    var var_3 = _wgslsmith_add_vec3_u32(~vec3<u32>(1u & abs(u_input.c.x), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_div_u32(global1.c.b, global1.c.a)), u_input.c.x), _wgslsmith_add_vec3_u32(~(vec3<u32>(u_input.c.x, 20843u, 0u) >> (vec3<u32>(0u, u_input.a.x, 5199u) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.c.b, 4294967295u, 1u), vec3<u32>(global1.c.b, 1u, u_input.c.x)), min(vec3<u32>(0u, 34771u, 4294967295u), vec3<u32>(4294967295u, global1.c.a, 1u)))) << ((vec3<u32>(0u, _wgslsmith_mult_u32(0u, 1u), 75765u) >> (firstLeadingBit(u_input.c ^ vec3<u32>(global1.c.b, u_input.c.x, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let var_4 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, _wgslsmith_div_u32(1u, u_input.c.x) < u_input.a.x, true), !(_wgslsmith_mod_u32(var_3.x, var_3.x) >= u_input.c.x)), !(!vec4<bool>(true, select(true, false, false), true, true)), false);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, _wgslsmith_mod_u32(24140u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_3.x, u_input.a.x, var_3.x), vec3<u32>(var_3.x, 4294967295u, global1.c.a)) << (~u_input.a.xzw % vec3<u32>(32u)), reverseBits(u_input.a.xyz) ^ firstLeadingBit(vec3<u32>(u_input.c.x, 0u, 44506u)))));
}

