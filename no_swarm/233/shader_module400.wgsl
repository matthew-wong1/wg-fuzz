struct Struct_1 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 18>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, false, false), 19872u), Struct_1(vec3<bool>(true, true, true), vec3<bool>(false, true, false), 408u), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, false, false), 83875u), Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, false), 4294967295u), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, false, true), 4294967295u), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, false), 18623u), Struct_1(vec3<bool>(true, true, false), vec3<bool>(false, true, true), 59758u), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, false), 896u), Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, false), 0u), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, true, true), 1u), Struct_1(vec3<bool>(false, false, false), vec3<bool>(true, false, true), 1u), Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, false, false), 30703u), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, false), 88603u), Struct_1(vec3<bool>(false, true, true), vec3<bool>(true, false, false), 70389u), Struct_1(vec3<bool>(true, true, false), vec3<bool>(true, false, true), 4294967295u), Struct_1(vec3<bool>(false, false, true), vec3<bool>(true, true, true), 0u), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, false, false), 5633u), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, true, true), 4294967295u), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, true), 0u), Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, true, true), 23049u), Struct_1(vec3<bool>(true, true, true), vec3<bool>(true, false, false), 1u), Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, false, true), 20248u), Struct_1(vec3<bool>(false, false, false), vec3<bool>(false, true, true), 39102u), Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, false, true), 0u), Struct_1(vec3<bool>(true, false, true), vec3<bool>(false, false, true), 18654u), Struct_1(vec3<bool>(true, false, true), vec3<bool>(true, false, false), 45274u), Struct_1(vec3<bool>(true, false, false), vec3<bool>(false, false, true), 1u), Struct_1(vec3<bool>(false, true, false), vec3<bool>(true, false, false), 41267u), Struct_1(vec3<bool>(true, false, false), vec3<bool>(true, false, false), 12779u), Struct_1(vec3<bool>(false, true, false), vec3<bool>(false, true, true), 1u));

var<private> global2: array<Struct_2, 20>;

var<private> global3: vec3<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = global1[_wgslsmith_index_u32(select(~(u_input.c.x ^ 35660u), _wgslsmith_clamp_u32((max(15155u, arg_0) ^ 1u) & 0u, u_input.c.x, 1u), all(vec4<bool>(true, true, true, true)) & true), 30u)];
    var var_1 = var_0.a.x;
    let var_2 = Struct_1(vec3<bool>(_wgslsmith_clamp_i32(u_input.d >> (1u % 32u), -u_input.d, ~(-2147483647i)) < _wgslsmith_dot_vec4_i32(vec4<i32>(-29716i, u_input.a.x, 12159i, u_input.d) >> (vec4<u32>(u_input.c.x, 4294967295u, 1u, 22774u) % vec4<u32>(32u)), vec4<i32>(8657i, u_input.d, -2147483647i, u_input.b.x)), var_0.b.x, !(var_0.a.x || false)), select(!vec3<bool>(true, false & var_0.b.x, u_input.b.x != 10270i), !(!var_0.b), global0[_wgslsmith_index_u32(abs(firstLeadingBit(1u)) | _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(30721u, 0u)), 18u)]), u_input.c.x & ~(~u_input.c.x | ~55042u));
    let var_3 = global2[_wgslsmith_index_u32(1u, 20u)];
    global1 = array<Struct_1, 30>();
    return _wgslsmith_div_u32(var_3.a.x, (~0u ^ var_0.c) & ~var_3.a.x);
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_1, 30>();
    var var_0 = global1[_wgslsmith_index_u32(1u, 30u)];
    var_0 = Struct_1(!global0[_wgslsmith_index_u32(min(_wgslsmith_sub_u32(108809u << (u_input.c.x % 32u), u_input.c.x), var_0.c), 18u)], !var_0.b, u_input.c.x);
    let var_1 = Struct_2(~vec2<u32>(u_input.c.x, 4294967295u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * -1429f) * _wgslsmith_f_op_f32(trunc(1000f)));
    return Struct_2(vec2<u32>(abs(~1u), func_3(~(~var_1.a.x))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32) -> f32 {
    let var_0 = true;
    global0 = array<vec3<bool>, 18>();
    var var_1 = 20878u;
    var var_2 = var_0;
    global1 = array<Struct_1, 30>();
    return arg_2;
}

fn func_1() -> Struct_1 {
    global3 = vec3<f32>(-421f, _wgslsmith_f_op_f32(global3.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_f_op_f32(320f - global3.x), _wgslsmith_div_f32(global3.x, global3.x))))), 744f);
    var var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 30u)];
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(firstTrailingBit(var_0.c), 0u), var_0.c), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c)), 18741u)), u_input.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0.c ^ 12425u, 57804u), _wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, var_0.c, u_input.c.x)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, 51373u, 20329u), vec3<u32>(var_0.c, 36858u, 4294967295u)) % vec3<u32>(32u)), select(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, var_0.c, u_input.c.x), vec3<u32>(u_input.c.x, var_0.c, 1u), vec3<u32>(17369u, 1u, var_0.c)), vec3<u32>(var_0.c, 1u, 4294967295u), !vec3<bool>(var_0.b.x, false, true)))));
    let var_2 = _wgslsmith_div_vec2_i32(select(vec2<i32>(countOneBits(1i), u_input.b.x), vec2<i32>(-2147483647i, u_input.b.x), !var_0.a.zx), vec2<i32>(-1i) * -u_input.b.xw);
    var var_3 = var_1;
    return global1[_wgslsmith_index_u32(var_1, 30u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec2<u32>(~0u, ~select(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, 4294967295u, 93275u), vec4<u32>(u_input.c.x, 4294967295u, u_input.c.x, u_input.c.x)), firstLeadingBit(u_input.c.x), true)));
    var var_1 = var_0.a.x;
    let var_2 = func_1();
    global1 = array<Struct_1, 30>();
    global3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global3.x)))), _wgslsmith_f_op_f32(-381f * _wgslsmith_f_op_f32(global3.x + global3.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-705f, global3.x)) + -154f) + -1336f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1223f)))), vec4<i32>(_wgslsmith_clamp_i32(reverseBits(firstTrailingBit(-1i)), u_input.d, 1i), (-u_input.a.x | -u_input.a.x) | ~31220i, u_input.b.x, u_input.d), u_input.b.zz);
}

