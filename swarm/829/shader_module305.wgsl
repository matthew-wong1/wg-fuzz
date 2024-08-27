struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<i32> = vec2<i32>(7540i, -1i);

var<private> global2: array<i32, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1() -> bool {
    let var_0 = ~firstLeadingBit(select(u_input.a.xz, _wgslsmith_sub_vec2_i32(~u_input.a.yz, vec2<i32>(35294i, 0i)), _wgslsmith_f_op_f32(sign(-673f)) != -434f));
    let var_1 = ~u_input.b ^ _wgslsmith_add_vec4_u32(u_input.b, ~vec4<u32>(31387u ^ u_input.c.x, 47384u, reverseBits(u_input.b.x), u_input.c.x));
    global2 = array<i32, 18>();
    global2 = array<i32, 18>();
    global2 = array<i32, 18>();
    return any(!(!select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, true, false))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: i32) -> vec2<bool> {
    let var_0 = max(arg_2, min(~firstTrailingBit(~global1.x), 7689i));
    let var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-641f, 676f, 521f, -403f) - vec4<f32>(-1161f, arg_0, 864f, arg_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1171f, arg_0, 748f, 1000f)), true)) + vec4<f32>(_wgslsmith_f_op_f32(1384f - arg_0), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-arg_0), -723f)))));
    let var_2 = Struct_1(abs(u_input.b.x));
    global0 = all(!(!(!(!vec4<bool>(true, false, arg_1, arg_1)))));
    var var_3 = Struct_1(21529u);
    return vec2<bool>(_wgslsmith_add_i32(_wgslsmith_sub_i32(var_0, var_0) ^ reverseBits(u_input.a.x), _wgslsmith_clamp_i32(-1i >> (var_2.a % 32u), reverseBits(u_input.a.x), arg_2)) <= 60228i, arg_1);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<bool>) -> bool {
    let var_0 = select(abs(vec2<i32>(~(-2147483647i), (-1i & u_input.a.x) & global2[_wgslsmith_index_u32(4294967295u, 18u)])), ~(~_wgslsmith_mod_vec2_i32(u_input.a.xy, abs(u_input.a.zx))), select(select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), arg_2.yy), vec2<bool>(false, arg_2.x), true), func_3(595f, true, -1i), vec2<bool>(true, all(arg_2.zw))), vec2<bool>(func_1(), arg_2.x), arg_2.xw));
    let var_1 = 4294967295u;
    global1 = firstTrailingBit(-_wgslsmith_mult_vec2_i32(~var_0, vec2<i32>(~(-22416i), _wgslsmith_mult_i32(-1079i, u_input.a.x))));
    var var_2 = Struct_1(abs(u_input.b.x << (1u % 32u)));
    global2 = array<i32, 18>();
    return all(vec3<bool>(arg_2.x, !arg_2.x, arg_2.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = any(vec4<bool>(true, _wgslsmith_div_u32(4294967295u ^ u_input.c.x, 4294967295u) < ~(u_input.b.x ^ u_input.c.x), select(!(0u == u_input.c.x), func_1(), func_2(u_input.b.x, firstLeadingBit(u_input.b.yx), vec4<bool>(true, true, true, true))), any(vec3<bool>(true, true, true))));
    global1 = -min(-(~vec2<i32>(9301i, 37650i)), abs(max(-vec2<i32>(1i, global1.x), reverseBits(vec2<i32>(22370i, 15739i)))));
    global0 = true || (((27582u >> (u_input.c.x % 32u)) | u_input.c.x) != ~u_input.b.x);
    let var_0 = Struct_1(~28366u);
    let var_1 = Struct_1(_wgslsmith_clamp_u32(4294967295u, var_0.a, firstLeadingBit(~countOneBits(u_input.c.x))));
    global0 = true;
    var var_2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(1f, 1f, 1f, 1f))), u_input.b.xy, _wgslsmith_clamp_vec4_u32(u_input.b, ~_wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_2.a, 1u, u_input.c.x, 84816u), u_input.b, u_input.b), vec4<u32>(var_1.a, 4294967295u, var_0.a, var_0.a), u_input.b), select(vec4<u32>(1u, _wgslsmith_add_u32(0u, var_1.a), _wgslsmith_mod_u32(var_0.a, 82751u), 29025u), ~_wgslsmith_sub_vec4_u32(vec4<u32>(24047u, u_input.b.x, 17541u, 27665u), u_input.b), vec4<bool>(true, true, all(vec2<bool>(false, true)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-594f, 1772f)) + _wgslsmith_div_f32(546f, -1465f)) * 1944f)));
}

