struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: vec4<bool>;

var<private> global2: i32;

var<private> global3: vec4<f32> = vec4<f32>(-818f, -1000f, 970f, 722f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = !(!(!select(global1.x, true, true)));
    var var_1 = ~1i;
    var var_2 = ~vec2<u32>(22817u, ~(~_wgslsmith_mod_u32(45386u, arg_0.x)));
    var var_3 = !vec3<bool>(var_0 || true, var_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.x)) + 609f) >= _wgslsmith_f_op_f32(f32(-1f) * -401f));
    var var_4 = var_2.x;
    return Struct_3(vec3<f32>(-1979f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-541f)), global3.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(global3.x)), -767f))))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: f32) -> vec2<i32> {
    var var_0 = u_input.e.x | firstTrailingBit(-u_input.e.x);
    let var_1 = ~_wgslsmith_clamp_u32(arg_0.b, ~(~u_input.a), min(u_input.c.x, 4294967295u) ^ u_input.d.x);
    global0 = array<Struct_1, 21>();
    global2 = -1i;
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1076f), _wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global3.x))))), -1754f)));
    return u_input.e.zz;
}

fn func_4(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec3<f32>, arg_3: f32) -> vec4<u32> {
    let var_0 = arg_0;
    let var_1 = global0[_wgslsmith_index_u32(~abs(36424u) & ~min(firstTrailingBit(69119u), ~1u >> (firstTrailingBit(var_0.b) % 32u)), 21u)];
    var var_2 = ~u_input.e;
    return vec4<u32>(arg_0.b, arg_0.b, max(1u, abs(~51756u)), 58209u);
}

fn func_2() -> u32 {
    let var_0 = _wgslsmith_add_i32(~(-_wgslsmith_mult_i32(18712i, 34742i)), 70100i ^ firstTrailingBit(~(-34848i)));
    global2 = -_wgslsmith_clamp_i32(-1i, u_input.e.x, countOneBits(2147483647i));
    var var_1 = select(_wgslsmith_mod_vec3_i32(abs(vec3<i32>(u_input.e.x, 9440i, -2147483647i)), u_input.e.xwx), vec3<i32>(26256i, var_0, countOneBits(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(var_0, u_input.e.x, u_input.e.x, var_0)))), false) ^ -select(~vec3<i32>(var_0, -2147483647i, var_0), vec3<i32>(-1i, var_0 ^ var_0, u_input.e.x & u_input.e.x), all(global1.xxw));
    let var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-global3.wxy));
    global2 = var_1.x;
    return _wgslsmith_dot_vec4_u32(func_4(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(global3.x, global3.x)), _wgslsmith_f_op_f32(-global3.x))), 17196u, vec3<bool>(false, select(true, global1.x, global1.x), !global1.x)), select(-func_3(Struct_2(1501f, u_input.d.x, global1.xzw), false, var_2.a.x), firstLeadingBit(vec2<i32>(u_input.e.x, 1i)), false), var_2.a, _wgslsmith_f_op_f32(-func_1(~u_input.c).a.x)), _wgslsmith_div_vec4_u32(abs(_wgslsmith_div_vec4_u32(~u_input.b, _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(4294967295u, 23954u, u_input.a, u_input.c.x)))), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(global3.wwy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global3.yyz)) - global3.wzy)))));
    var var_1 = func_1(_wgslsmith_sub_vec4_u32(~_wgslsmith_mult_vec4_u32(~u_input.b, u_input.b), vec4<u32>(abs(~u_input.a), ~(~u_input.d.x), 4294967295u, _wgslsmith_sub_u32(u_input.c.x, u_input.b.x))));
    let var_2 = _wgslsmith_mult_u32(1u << (~countOneBits(u_input.c.x) % 32u), u_input.b.x) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(~4294967295u, func_2(), ~25935u), max(1u, 0u), 27560u, u_input.d.x), reverseBits(u_input.b));
    global2 = -u_input.e.x ^ -(~abs(-2147483647i));
    global0 = array<Struct_1, 21>();
    global0 = array<Struct_1, 21>();
    var var_3 = vec2<i32>(-1i) * -(~vec2<i32>(reverseBits(u_input.e.x), func_3(Struct_2(var_0.x, 0u, vec3<bool>(true, true, true)), global1.x, 1127f).x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, var_2, 32110u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-268f, global3.x), -1389f)));
}

