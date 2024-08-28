struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 9>;

var<private> global1: vec3<i32>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: vec2<i32>) -> vec3<u32> {
    var var_0 = vec2<i32>(0i, ~_wgslsmith_mult_i32(firstTrailingBit(2147483647i), ~global1.x)) | -firstTrailingBit(-(u_input.a.wz >> (arg_0.b.yz % vec2<u32>(32u))));
    let var_1 = max(-u_input.a.xwz << (select(vec3<u32>(_wgslsmith_add_u32(arg_0.e, u_input.b.x), 15093u, 13050u & arg_2.b.x), max(~vec3<u32>(u_input.b.x, 1u, arg_2.d), vec3<u32>(u_input.b.x, u_input.b.x, 0u)), !arg_1) % vec3<u32>(32u)), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(u_input.c.x), ~var_0.x, 1i), -_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 18755i, u_input.a.x), u_input.a.zyx)), vec3<i32>(u_input.a.x, 22483i, _wgslsmith_mod_i32(0i, select(u_input.a.x, 1i, false)))));
    var_0 = _wgslsmith_clamp_vec2_i32(vec2<i32>(select(-var_0.x, _wgslsmith_clamp_i32(-1025i, -2147483647i, -28830i), any(vec3<bool>(arg_0.a.x, true, true))), 34766i), min(vec2<i32>(~(-2147483647i), select(-58369i, 1i, true)), ~u_input.a.yy & vec2<i32>(-2147483647i, arg_3.x)), u_input.a.yw) | vec2<i32>(u_input.c.x, abs(select(_wgslsmith_add_i32(u_input.a.x, -2147483647i), -60029i, false)));
    var var_2 = _wgslsmith_add_i32(select(_wgslsmith_mult_i32(-1i, countOneBits(min(u_input.d, 10012i))), _wgslsmith_mod_i32(-(~39190i), _wgslsmith_clamp_i32(-64050i, ~var_0.x, -1i)), any(arg_2.a)), -39350i);
    let var_3 = 51932u;
    return ~vec3<u32>(~arg_2.b.x, ~1u, ~38588u);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(!global0[_wgslsmith_index_u32(~0u, 9u)], ~(func_3(Struct_1(global0[_wgslsmith_index_u32(78253u, 9u)], vec3<u32>(u_input.b.x, 1u, 0u), global0[_wgslsmith_index_u32(0u, 9u)], 1u, 0u), vec3<bool>(true, true, false), Struct_1(global0[_wgslsmith_index_u32(4294967295u, 9u)], vec3<u32>(30068u, u_input.b.x, u_input.b.x), vec2<bool>(true, false), u_input.b.x, u_input.b.x), -vec2<i32>(-41998i, u_input.a.x)) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(1u, 1u, u_input.b.x)) % vec3<u32>(32u))), !(!(!select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(100633u, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)]))), _wgslsmith_dot_vec4_u32(~(vec4<u32>(0u, 0u, 0u, u_input.b.x) >> (~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(68473u, u_input.b.x, 28527u))), 1u, u_input.b.x ^ select(u_input.b.x, 1u, false), _wgslsmith_mult_u32(u_input.b.x, 0u) ^ u_input.b.x)), 4294967295u);
    let var_1 = !(!var_0.a.x);
    var var_2 = Struct_1(vec2<bool>(all(select(select(global0[_wgslsmith_index_u32(4294967295u, 9u)], vec2<bool>(var_1, var_0.c.x), var_0.c.x), select(vec2<bool>(var_1, true), global0[_wgslsmith_index_u32(14113u, 9u)], vec2<bool>(true, var_1)), true)), -countOneBits(u_input.c.x) == -abs(-1i)), vec3<u32>(~1u | u_input.b.x, ~7832u, reverseBits(1u)) << (var_0.b % vec3<u32>(32u)), !(!vec2<bool>(var_0.a.x || var_1, select(var_0.c.x, var_0.c.x, true))), u_input.b.x, ~(~(~abs(u_input.b.x))));
    var var_3 = ~global1.yx;
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(625f, 203f, -352f, 636f)), vec4<f32>(1f, 1f, 1f, 1f))))));
    return Struct_1(!var_0.a, vec3<u32>(_wgslsmith_add_u32(countOneBits(_wgslsmith_clamp_u32(19467u, 93032u, var_2.e)), ~var_2.d), var_2.b.x, ~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(u_input.b, var_2.b.yy))), !var_2.a, ~var_0.d, 1u);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> vec4<u32> {
    global0 = array<vec2<bool>, 9>();
    var var_0 = func_2();
    global1 = _wgslsmith_div_vec3_i32(u_input.a.zxy, ~u_input.a.wzy);
    var var_1 = arg_0.yx;
    let var_2 = min(1u ^ u_input.b.x, ~(~(~var_0.d))) <= var_0.b.x;
    return vec4<u32>(4294967295u, _wgslsmith_clamp_u32(1u & ~_wgslsmith_dot_vec3_u32(var_0.b, var_0.b), max(var_0.e, var_0.b.x), 1u), 4294967295u, 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~u_input.a.wyz | -abs(_wgslsmith_add_vec3_i32(vec3<i32>(25036i, u_input.d, u_input.d), -u_input.a.wxw));
    let var_0 = u_input.b.x;
    global1 = u_input.a.wxw;
    var var_1 = ~u_input.d;
    var var_2 = func_1(!vec3<bool>((1u << (var_0 % 32u)) <= select(u_input.b.x, 31307u, true), true, true), all(global0[_wgslsmith_index_u32(var_0, 9u)]));
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2393f))) - -583f)));
    let var_4 = func_3(Struct_1(!func_2().a, vec3<u32>(_wgslsmith_mod_u32(~40894u, ~var_2.x), ~(var_0 | u_input.b.x), 42874u), !vec2<bool>(true, var_3 >= var_3), 4294967295u, var_2.x), !vec3<bool>(all(select(global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(u_input.b.x, 9u)], false)), false, !any(vec3<bool>(false, true, false))), func_2(), _wgslsmith_div_vec2_i32(global1.zx, global1.zy)).yx;
    global1 = _wgslsmith_mult_vec3_i32(u_input.c.xyy, firstTrailingBit(vec3<i32>((i32(-1i) * -7678i) & _wgslsmith_mult_i32(u_input.c.x, u_input.a.x), _wgslsmith_div_i32(-2147483647i, global1.x << (var_2.x % 32u)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, u_input.a.x), vec2<i32>(29406i, 29408i)) >> (1u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(1f, -145f)));
}

