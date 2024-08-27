struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32 = 18604u;

var<private> global2: array<vec2<u32>, 30>;

var<private> global3: u32 = 18544u;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> bool {
    let var_0 = _wgslsmith_clamp_u32(max(_wgslsmith_mod_u32(~(u_input.c ^ global0.b.x), ~(~8705u)), _wgslsmith_mod_u32(1u, global0.b.x)), firstLeadingBit(arg_0.b.x), firstLeadingBit(~(~abs(u_input.c))));
    global3 = ~_wgslsmith_dot_vec4_u32(firstTrailingBit(arg_0.b), ~vec4<u32>(u_input.c, 1u, ~arg_0.b.x, ~4294967295u));
    let var_1 = u_input.b.x;
    let var_2 = select(~(-((24327i ^ arg_0.a) ^ ~u_input.b.x)), arg_0.a, true);
    global3 = _wgslsmith_mult_u32(var_0, _wgslsmith_dot_vec2_u32(vec2<u32>(global0.b.x, min(57689u, ~0u)), min(~_wgslsmith_mod_vec2_u32(global0.b.zw, vec2<u32>(var_0, 69576u)), vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.b.wx, global0.b.ww), ~1421u))));
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> vec4<f32> {
    global2 = array<vec2<u32>, 30>();
    global2 = array<vec2<u32>, 30>();
    var var_0 = global0.b.x;
    let var_1 = (true && all(vec2<bool>(true, u_input.c > u_input.c))) & !((1370f <= _wgslsmith_f_op_f32(-arg_1)) & !func_3(Struct_1(u_input.b.x, global0.b), -1903f));
    global3 = ~1u << (abs(u_input.c ^ _wgslsmith_dot_vec2_u32(vec2<u32>(23340u, u_input.c), global2[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 30u)])) % 32u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(arg_1, arg_1)), arg_1, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -245f), _wgslsmith_f_op_f32(max(arg_1, arg_1)))), _wgslsmith_f_op_f32(-arg_1)));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> f32 {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(~(-13467i | arg_1.a), 0i), -1i, arg_1.a | (_wgslsmith_clamp_i32(1i, -42430i, arg_0) ^ ~2147483647i)) ^ u_input.a;
    global2 = array<vec2<u32>, 30>();
    var var_1 = arg_1.b;
    var var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(1i, 24850i >> (u_input.c % 32u)), -293f)))));
    var var_3 = ~1u;
    return 851f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(-678f, _wgslsmith_f_op_f32(func_1(32324i, Struct_1(select(u_input.b.x | 36505i, min(u_input.b.x, global0.a), true), global0.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -366f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-448f, -350f, false)) * 586f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) + _wgslsmith_f_op_vec4_f32(func_2(vec2<i32>(u_input.a.x, 0i), -192f)).x)))));
    global1 = _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(global2[_wgslsmith_index_u32(u_input.c, 30u)], global2[_wgslsmith_index_u32(u_input.c | min(~global0.b.x, global0.b.x), 30u)]), ~(firstTrailingBit(global0.b.wx) | abs(vec2<u32>(20013u, 1u) & vec2<u32>(global0.b.x, 1u))));
    var var_1 = _wgslsmith_f_op_f32(-var_0.x);
    var_1 = _wgslsmith_f_op_f32(max(var_0.x, _wgslsmith_f_op_f32(var_0.x - -1224f)));
    let var_2 = select(countOneBits(select(vec3<i32>(u_input.a.x, -15753i, u_input.a.x), vec3<i32>(1i, -1638i, 1i), false)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 1u, 4294967295u), global0.b.zzw << (vec3<u32>(0u, 4294967295u, 69656u) % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.a, select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), all(vec2<bool>(true, true))), vec3<bool>(true, true, true))) | abs(_wgslsmith_div_vec3_i32(-vec3<i32>(1i, u_input.a.x, global0.a), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a) ^ max(u_input.a, vec3<i32>(u_input.b.x, u_input.b.x, global0.a))));
    var var_3 = Struct_1(u_input.b.x, ~reverseBits(vec4<u32>(u_input.c, _wgslsmith_sub_u32(u_input.c, 33405u), ~u_input.c, firstLeadingBit(4294967295u))));
    global2 = array<vec2<u32>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(~global0.b.xy ^ vec2<u32>(u_input.c & 1u, firstLeadingBit(23411u))), _wgslsmith_f_op_vec2_f32(abs(var_0.zz)), 3539u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(610f, var_0.x, -1242f, 418f) + vec4<f32>(var_0.x, -184f, -2153f, 648f))))));
}

