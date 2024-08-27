struct Struct_1 {
    a: bool,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
    c: vec4<u32>,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 19120u;

var<private> global1: vec3<u32> = vec3<u32>(51685u, 1u, 4294967295u);

var<private> global2: array<Struct_1, 28>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<bool>) -> u32 {
    var var_0 = arg_1.a.c.b;
    let var_1 = arg_2.xw;
    let var_2 = vec3<bool>(select(2147483647i < arg_0.a.b, arg_1.a.c.a, arg_0.a.c.a), var_1.x, false);
    var var_3 = 0u;
    let var_4 = Struct_1(false, arg_2.x);
    return ~(~(_wgslsmith_dot_vec2_u32(global1.xy, arg_0.c.yx) & ~1u));
}

fn func_2() -> vec3<bool> {
    global0 = abs(global1.x);
    global1 = _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, ~(~global1.x), func_3(Struct_4(Struct_2(0u, u_input.b.x, global2[_wgslsmith_index_u32(global1.x, 28u)]), 484f, vec4<u32>(global1.x, 0u, 16227u, 4294967295u), u_input.b.x, vec2<i32>(u_input.b.x, -22759i)), Struct_4(Struct_2(u_input.c, u_input.b.x, Struct_1(false, true)), 1693f, vec4<u32>(u_input.c, global1.x, 1u, u_input.a), 2147483647i, u_input.b.zw), vec4<bool>(true, true, true, true))) | ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, 4263u, 63707u) ^ vec3<u32>(37031u, u_input.c, 1u), select(vec3<u32>(global1.x, 1u, 63216u), vec3<u32>(16770u, 4294967295u, u_input.a), vec3<bool>(true, false, false))), _wgslsmith_sub_vec3_u32(vec3<u32>(12905u, ~(~1u), ~1u), reverseBits(~(~vec3<u32>(global1.x, u_input.c, global1.x)))));
    var var_0 = Struct_3(-1199f, reverseBits(global1.x));
    global0 = var_0.b ^ u_input.c;
    let var_1 = _wgslsmith_add_u32(var_0.b, global1.x);
    return select(vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, false), true))), true, true), vec3<bool>(false, true || !any(vec2<bool>(true, false)), true), vec3<bool>(select(any(vec2<bool>(false, true)), true, 101f <= _wgslsmith_f_op_f32(var_0.a + var_0.a)), true, true));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: u32) -> Struct_4 {
    global0 = _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_2, _wgslsmith_div_u32(u_input.c, global1.x), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(arg_2, 17958u, 29650u)), func_3(Struct_4(Struct_2(global1.x, -1i, Struct_1(true, false)), 1000f, vec4<u32>(arg_2, 0u, 4294967295u, u_input.c), 228i, u_input.b.wx), Struct_4(Struct_2(0u, -2147483647i, Struct_1(false, true)), arg_0, vec4<u32>(43931u, u_input.c, 48924u, arg_2), u_input.b.x, u_input.b.xx), select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false))))), vec4<u32>(arg_2, abs(arg_2) & _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, 2162u), ~vec2<u32>(arg_2, 18958u)), global1.x, 1u));
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 * arg_0) + _wgslsmith_f_op_f32(exp2(arg_1))), -265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-903f, 849f))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 - -270f)))));
    global1 = ~countOneBits(vec3<u32>(~27775u >> ((arg_2 & global1.x) % 32u), global1.x, 47276u));
    global0 = arg_2;
    return Struct_4(Struct_2(~(~arg_2), u_input.d, global2[_wgslsmith_index_u32(select(select(global1.x, _wgslsmith_div_u32(global1.x, arg_2), arg_2 == 0u), u_input.a, any(vec4<bool>(false, false, false, true)) || true), 28u)]), _wgslsmith_f_op_f32(round(-1318f)), ~vec4<u32>(u_input.c ^ global1.x, 59415u, global1.x, arg_2), i32(-1i) * -(~(~u_input.d)), vec2<i32>(u_input.d, 0i));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<u32>) -> vec3<u32> {
    global1 = _wgslsmith_div_vec3_u32(vec3<u32>(global1.x, countOneBits(95561u) | global1.x, 1u), _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(41597u, 1u, 13901u & global1.x), countOneBits(~vec3<u32>(global1.x, 23965u, global1.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(36554u, u_input.c, _wgslsmith_sub_u32(global1.x, 61964u)), vec3<u32>(u_input.c, u_input.c, 0u) ^ firstTrailingBit(vec3<u32>(4294967295u, 41536u, 39956u)))));
    global1 = ~(~max(max(max(vec3<u32>(arg_1.x, global1.x, 16292u), vec3<u32>(0u, u_input.c, 4294967295u)), vec3<u32>(22328u, u_input.a, 1u)), ~vec3<u32>(4812u, global1.x, 1u) & _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.c, 49992u), vec3<u32>(arg_1.x, u_input.a, 27637u))));
    var var_0 = func_4(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1325f, 889f), _wgslsmith_f_op_f32(ceil(-309f)))))), any(!func_2()))), _wgslsmith_f_op_f32(f32(-1f) * -1736f), 53796u);
    var var_1 = Struct_4(var_0.a, _wgslsmith_f_op_f32(-var_0.b), var_0.c, reverseBits(3594i), _wgslsmith_sub_vec2_i32(~var_0.e | vec2<i32>(u_input.b.x, -56659i), ~u_input.b.xx));
    let var_2 = func_4(_wgslsmith_f_op_f32(-862f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(-var_1.b)))), func_4(-615f, -767f, ~countOneBits(_wgslsmith_mod_u32(0u, global1.x))).b, ~0u).a.c;
    return abs(vec3<u32>(~0u, ~(~31589u), 49159u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 28>();
    global1 = _wgslsmith_mult_vec3_u32(func_1(vec2<bool>(true, true), _wgslsmith_sub_vec2_u32(vec2<u32>(~1u, max(26413u, 59971u)), _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(global1.x, global1.x)))), vec3<u32>(u_input.a, global1.x, _wgslsmith_dot_vec3_u32(select(func_1(vec2<bool>(true, false), vec2<u32>(1u, global1.x)), vec3<u32>(u_input.a, 1u, u_input.c), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(true, false, true))), abs(vec3<u32>(1u, 1u, u_input.a)) << (vec3<u32>(u_input.c, 4036u, 1u) % vec3<u32>(32u)))));
    let var_0 = _wgslsmith_clamp_i32(u_input.b.x, 0i, -1i);
    let var_1 = vec3<u32>(u_input.a, ~u_input.a, global1.x);
    var var_2 = -15101i;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(global1.x, u_input.c) & ~global1.yy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 318f, -1657f))))) + vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(500f + -732f), _wgslsmith_f_op_f32(floor(664f)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-569f + -175f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1435f), _wgslsmith_f_op_f32(max(250f, 1633f)))))), func_4(1273f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(trunc(1f)))), ~(~_wgslsmith_mod_u32(global1.x, 4294967295u))).c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)));
}

