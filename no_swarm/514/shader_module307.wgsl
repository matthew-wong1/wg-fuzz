struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec3<f32>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 33707i;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global2: array<vec3<u32>, 10>;

var<private> global3: array<i32, 3> = array<i32, 3>(-1i, 1i, 1i);

var<private> global4: Struct_1 = Struct_1(vec2<bool>(false, true), 47075i, vec3<f32>(-534f, 366f, 606f), -1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<i32>) -> i32 {
    let var_0 = ~(-32441i);
    global3 = array<i32, 3>();
    global0 = (i32(-1i) * -2147483647i) & min(-26882i, u_input.c);
    var var_1 = vec3<bool>(any(vec2<bool>(global1.x, all(vec2<bool>(global1.x, false)))), any(!global4.a), any(global4.a));
    let var_2 = Struct_1(vec2<bool>(global4.a.x, false), _wgslsmith_div_i32(80944i, -1i), global4.c, _wgslsmith_sub_i32(-2147483647i, abs(_wgslsmith_add_i32(arg_0.x, 1548i ^ u_input.a))));
    return 20876i;
}

fn func_2() -> u32 {
    let var_0 = Struct_1(vec2<bool>(false, false), -29327i, vec3<f32>(-1072f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.c.x * _wgslsmith_f_op_f32(-263f - global4.c.x))), global4.c.x), -u_input.c);
    let var_1 = true;
    let var_2 = -(-(global3[_wgslsmith_index_u32(~1u, 3u)] << (_wgslsmith_mod_u32(0u, 4294967295u) % 32u)) & -16912i);
    var var_3 = select(vec3<i32>(~func_3(~vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 3u)], var_0.b, 0i)), -20465i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(~vec2<i32>(22648i, var_2), -u_input.b.xy, ~vec2<i32>(2147483647i, global4.d)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(11288u, 3u)], u_input.a, global4.d, 28672i), vec4<i32>(global3[_wgslsmith_index_u32(0u, 3u)], global3[_wgslsmith_index_u32(1u, 3u)], -5019i, 29947i)), global3[_wgslsmith_index_u32(1u, 3u)]))), u_input.b, global4.a.x);
    var_3 = select(_wgslsmith_clamp_vec3_i32(u_input.b, u_input.b, ~(~vec3<i32>(-2147483647i, 42706i, var_3.x))), _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(~u_input.b, ~vec3<i32>(u_input.a, 73829i, var_2), ~u_input.b), u_input.b | abs(vec3<i32>(u_input.a, var_0.d, 45156i))), !(!global4.a.x));
    return 1u;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> i32 {
    var var_0 = firstTrailingBit(vec4<u32>(max(~_wgslsmith_add_u32(6971u, 40263u), func_2()), select(_wgslsmith_add_u32(~1u, min(23924u, 1u)), _wgslsmith_add_u32(firstTrailingBit(2859u), reverseBits(53867u)), any(vec4<bool>(true, true, true, true))), 103383u, 4294967295u));
    global2 = array<vec3<u32>, 10>();
    var var_1 = arg_0;
    let var_2 = true;
    let var_3 = global4.c.x;
    return ~(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(max(vec4<i32>(-1i, 1i, global3[_wgslsmith_index_u32(var_0.x, 3u)], var_1.d), vec4<i32>(-2147483647i, global4.b, -1i, -13294i)), countOneBits(vec4<i32>(25865i, -18928i, var_1.b, u_input.a))), ~(~vec4<i32>(global4.b, 35411i, 48511i, var_1.d))) ^ var_1.d);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-846f, _wgslsmith_f_op_f32(global4.c.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global4.c.x))))), global4.c.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(486f, global4.c.x, -294f, global4.c.x)))) * vec4<f32>(_wgslsmith_f_op_f32(sign(545f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global4.c.x * global4.c.x), global4.c.x, true)), global4.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-169f * global4.c.x)))));
    let var_1 = Struct_1(global4.a, (global4.b << (~0u % 32u)) >> (105238u % 32u), global4.c, max(1i, 0i));
    global4 = Struct_1(global1.xy, _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(firstLeadingBit(arg_0), ~arg_0), firstTrailingBit(vec3<i32>(-1i) * -vec3<i32>(2147483647i, var_1.b, 52367i))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1955f, var_0.x, 982f))), 30756i);
    var var_2 = select(global4.a, !global4.a, select(global1.zw, !select(!vec2<bool>(true, var_1.a.x), vec2<bool>(global1.x, global4.a.x), global1.x), vec2<bool>(true, true)));
    global3 = array<i32, 3>();
    return Struct_1(!global1.yz, select(firstTrailingBit(max(~global3[_wgslsmith_index_u32(575u, 3u)], -1i)), countOneBits(u_input.a) >> ((4294967295u | _wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(1u, 10u)], global2[_wgslsmith_index_u32(71447u, 10u)])) % 32u), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-432f, var_0.x, var_1.c.x))), var_1.c))), _wgslsmith_mult_i32(-2147483647i, ~select(arg_0.x, ~arg_0.x, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(max(firstTrailingBit(~countOneBits(u_input.b)), _wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b, u_input.b), u_input.b), vec3<i32>(2147483647i, func_1(Struct_1(global1.ww, global3[_wgslsmith_index_u32(92521u, 3u)], vec3<f32>(global4.c.x, global4.c.x, global4.c.x), -23130i), vec2<bool>(global1.x, false)), func_1(Struct_1(vec2<bool>(true, global4.a.x), u_input.c, vec3<f32>(global4.c.x, -285f, global4.c.x), global3[_wgslsmith_index_u32(88806u, 3u)]), global1.zz)))), countOneBits(_wgslsmith_div_vec4_i32(vec4<i32>(1i, ~global4.d, -17685i, u_input.a >> (10652u % 32u)), min(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.a, global4.d, 2147483647i, -21525i), vec4<i32>(u_input.a, global3[_wgslsmith_index_u32(32708u, 3u)], 21089i, global4.d)), select(vec4<i32>(1i, 1i, global4.d, u_input.b.x), vec4<i32>(65479i, -2147483647i, global4.d, -2147483647i), global4.a.x)))));
    let var_1 = func_4(u_input.b, vec4<i32>(firstLeadingBit(global3[_wgslsmith_index_u32(~(~4294967295u), 3u)]), _wgslsmith_div_i32(global4.b, -reverseBits(-35055i)), -24931i, -36021i));
    var var_2 = 1i;
    let var_3 = var_1;
    global4 = var_0;
    var var_4 = var_1.b;
    var var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1472f + -866f)))), var_1.c.x, true));
    global1 = vec4<bool>(!global1.x, func_4(reverseBits(~(-u_input.b)), vec4<i32>(2147483647i, reverseBits(_wgslsmith_mod_i32(u_input.c, global4.d)), var_0.d, -abs(-1i))).a.x, true, select(global4.a.x, func_4(-_wgslsmith_clamp_vec3_i32(u_input.b, vec3<i32>(u_input.c, var_0.d, 0i), vec3<i32>(global4.b, 2147483647i, -33923i)), abs(~vec4<i32>(u_input.a, 0i, 1i, u_input.b.x))).a.x, all(vec3<bool>(true, true, !var_0.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(1000f, _wgslsmith_f_op_vec3_f32(-var_1.c));
}

