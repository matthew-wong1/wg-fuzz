struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: array<Struct_1, 21>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec2<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-817f, -983f, 2578f) - vec3<f32>(103f, 845f, -802f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-185f, 1504f, 396f))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(431f, -540f, 1000f), vec3<f32>(-1302f, 783f, 298f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-210f, -701f, 1305f) - vec3<f32>(1f, 1f, 1f)), any(select(arg_0.a, arg_0.a, arg_0.a))))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-285f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(204f - -830f)), !arg_0.a.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1348f)) * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(var_0.x))))))));
    var var_2 = _wgslsmith_mult_i32(arg_2.x, 27083i);
    let var_3 = arg_1;
    global0 = _wgslsmith_mod_u32(4294967295u, ~(~7121u));
    return 1u;
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 21>();
    var var_0 = u_input.b & u_input.b;
    global1 = array<Struct_1, 21>();
    global0 = u_input.b;
    global0 = ~_wgslsmith_mod_u32(u_input.b, ~_wgslsmith_clamp_u32(abs(u_input.b), func_3(global1[_wgslsmith_index_u32(0u, 21u)], Struct_2(vec4<i32>(14367i, 2147483647i, u_input.a, -1i)), vec2<i32>(0i, 0i), vec2<i32>(u_input.a, u_input.a)), ~0u));
    return global1[_wgslsmith_index_u32(1u, 21u)];
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: f32, arg_3: Struct_1) -> bool {
    var var_0 = _wgslsmith_add_vec3_i32(~arg_1.a.wxz, vec3<i32>(~(-1i), -countOneBits(2147483647i), arg_1.a.x)) ^ (~select(vec3<i32>(-1i, 0i, arg_1.a.x), _wgslsmith_add_vec3_i32(arg_1.a.yzy, arg_1.a.xzx), arg_3.a.xxz) | vec3<i32>(~countOneBits(0i), firstLeadingBit(u_input.a ^ u_input.a), ~u_input.a));
    global0 = reverseBits(u_input.b);
    let var_1 = func_2();
    let var_2 = vec2<u32>(0u, 1u);
    let var_3 = arg_1;
    return var_1.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(all(vec4<bool>(true, true, true, true)), all(vec3<bool>(true, true, true)), any(vec3<bool>(u_input.b > 91025u, true, true)), false), select(select(vec4<bool>(false, func_1(true, Struct_2(vec4<i32>(-1i, u_input.a, -2147483647i, u_input.a)), 230f, Struct_1(vec4<bool>(true, false, false, true), false)), true, true), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), false), !(1i == u_input.a)), vec4<bool>(any(vec4<bool>(true, true, true, true)), true, func_1(true, Struct_2(vec4<i32>(u_input.a, 1i, u_input.a, u_input.a)), -2014f, func_2()), u_input.b > u_input.b), true), vec4<bool>(false, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true))), ~u_input.b == 4294967295u, !all(vec2<bool>(true, true))));
    global0 = 31040u;
    let var_1 = Struct_2(vec4<i32>(_wgslsmith_mult_i32(max(-1i, 13168i), abs(u_input.a) ^ (u_input.a | 0i)), -32603i, u_input.a, -22344i));
    global0 = _wgslsmith_dot_vec4_u32(~(firstTrailingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 4294967295u, u_input.b, 1u), vec4<u32>(u_input.b, u_input.b, 1u, u_input.b))) & _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 0u, 40168u, 53513u), abs(vec4<u32>(u_input.b, u_input.b, 64862u, 29894u)))), countOneBits(vec4<u32>(~u_input.b << (1u % 32u), 0u, _wgslsmith_add_u32(43318u, u_input.b), u_input.b)));
    var var_2 = var_1;
    var var_3 = global1[_wgslsmith_index_u32(firstTrailingBit(min(u_input.b, ~u_input.b)) | u_input.b, 21u)];
    let var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 16652u), vec2<u32>(42023u, u_input.b), vec2<u32>(4294967295u, 34627u))) << (~firstLeadingBit(vec2<u32>(u_input.b, 4487u)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(28562u, u_input.b)), _wgslsmith_mod_u32(128854u, u_input.b) | ~29691u)), var_2.a, reverseBits(vec4<u32>(u_input.b | func_3(Struct_1(vec4<bool>(var_3.b, false, var_0.x, false), var_3.a.x), var_4, vec2<i32>(u_input.a, 2147483647i), var_2.a.yz), abs(u_input.b), select(~u_input.b, u_input.b, false), 4294967295u >> ((u_input.b >> (83391u % 32u)) % 32u))), ~func_3(func_2(), Struct_2(vec4<i32>(var_4.a.x, var_1.a.x, u_input.a, var_1.a.x)), var_4.a.xy, vec2<i32>(var_1.a.x, 1i)));
}

