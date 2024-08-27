struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 29> = array<i32, 29>(2147483647i, -9372i, -1i, -11638i, 0i, 2147483647i, -1i, -19432i, 35795i, 1i, 0i, 3733i, 6808i, 26663i, -1i, 0i, 2147483647i, 26332i, 55707i, 0i, 2147483647i, -32700i, -1i, 69560i, -1i, i32(-2147483648), 2147483647i, -950i, -25358i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: vec2<u32>, arg_2: i32) -> u32 {
    var var_0 = !select(select(vec3<bool>(true, all(vec3<bool>(false, false, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)), vec3<bool>(true, true, true)), vec3<bool>(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), false)), false, true), !any(vec3<bool>(true, true, false)));
    var_0 = vec3<bool>(true, true, true);
    var_0 = vec3<bool>(var_0.x, true, 1f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-296f, 815f) - _wgslsmith_f_op_f32(2446f * -1673f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1191f, 588f)) * 1647f)));
    let var_1 = ~vec2<i32>(~arg_2, arg_0) & reverseBits(u_input.b.wz);
    let var_2 = abs(reverseBits(1u));
    return ~(~1u);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1((global0[_wgslsmith_index_u32(u_input.a.x, 29u)] ^ u_input.b.x) > global0[_wgslsmith_index_u32(u_input.a.x, 29u)], firstTrailingBit(vec4<u32>(1513u >> (u_input.a.x % 32u), countOneBits(4294967295u), firstLeadingBit(u_input.a.x) << ((u_input.a.x | u_input.a.x) % 32u), select(2037u, func_3(u_input.b.x, u_input.a, global0[_wgslsmith_index_u32(58406u, 29u)]), false))), global0[_wgslsmith_index_u32(u_input.a.x, 29u)]);
    let var_1 = max(-35653i, _wgslsmith_div_i32(~_wgslsmith_sub_i32(select(18890i, var_0.c, var_0.a), abs(u_input.b.x)), var_0.c));
    let var_2 = vec2<u32>(~(~_wgslsmith_add_u32(~var_0.b.x, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, var_0.b.x), var_0.b.wxx))), ~1u);
    global0 = array<i32, 29>();
    var var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 29u)];
    return var_0;
}

fn func_1(arg_0: bool, arg_1: bool) -> Struct_1 {
    let var_0 = arg_0;
    global0 = array<i32, 29>();
    let var_1 = Struct_1(true, vec4<u32>(~41352u, _wgslsmith_mod_u32(~abs(u_input.a.x), ~(~u_input.a.x)), countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x), u_input.a)), 26130u), global0[_wgslsmith_index_u32(1u, 29u)]);
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(928f)))), -741f), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-925f - 1857f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1142f - -230f)))))));
    return Struct_1(arg_0, var_1.b >> (~vec4<u32>(reverseBits(11394u), _wgslsmith_clamp_u32(5135u, var_1.b.x, var_2.b.x), 4325u, var_2.b.x >> (0u % 32u)) % vec4<u32>(32u)), firstLeadingBit(var_2.c));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = array<i32, 29>();
    let var_0 = Struct_1(arg_2.a, ~(~arg_1.b), u_input.b.x);
    var var_1 = _wgslsmith_f_op_f32(floor(-195f));
    global0 = array<i32, 29>();
    let var_2 = var_0.b.wyw;
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b.x;
    var var_1 = func_4(398f, func_1(all(vec3<bool>(true, true, true)) | any(vec2<bool>(false, false)), all(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)))), func_2());
    var var_2 = global0[_wgslsmith_index_u32(31253u, 29u)];
    var_2 = var_1.c;
    let var_3 = false;
    var_0 = global0[_wgslsmith_index_u32(~(~1u), 29u)] << (6682u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~min(~u_input.a, vec2<u32>(var_1.b.x, 3958u))), ~(~vec4<u32>(_wgslsmith_dot_vec2_u32(var_1.b.wz, vec2<u32>(4294967295u, 1u)), var_1.b.x, 0u, max(1921u, 4842u))), u_input.a.x, _wgslsmith_sub_vec3_i32(max(u_input.b.wxw, max(vec3<i32>(23663i, global0[_wgslsmith_index_u32(u_input.a.x, 29u)], 10450i), ~vec3<i32>(-4739i, u_input.b.x, var_1.c))), vec3<i32>(_wgslsmith_sub_i32(1i, 31783i), abs(var_1.c), max(-1i, u_input.b.x)) & u_input.b.xzy));
}

