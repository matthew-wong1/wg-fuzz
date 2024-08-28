struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 2>;

var<private> global1: array<vec3<u32>, 2> = array<vec3<u32>, 2>(vec3<u32>(72532u, 16071u, 1u), vec3<u32>(4747u, 17870u, 0u));

var<private> global2: u32 = 45731u;

var<private> global3: array<vec2<u32>, 26>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1.d;
    var var_1 = all(vec2<bool>(true, arg_1.a.x));
    var var_2 = arg_1;
    global0 = array<vec2<bool>, 2>();
    global3 = array<vec2<u32>, 26>();
    return abs(-10115i);
}

fn func_2(arg_0: vec2<i32>, arg_1: f32) -> f32 {
    let var_0 = ~_wgslsmith_div_vec2_i32(vec2<i32>(func_3(Struct_2(1000f, arg_0.x, Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), 271f), 1u), Struct_1(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), -1401f)), _wgslsmith_mod_i32(27304i, _wgslsmith_div_i32(26939i, 16830i))), arg_0);
    var var_1 = u_input.c;
    global2 = _wgslsmith_add_u32(~_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a, ~u_input.d.x, _wgslsmith_mod_u32(u_input.d.x, u_input.b)), ~select(0u, u_input.a, false), min(_wgslsmith_mult_u32(0u, 0u), u_input.b)), ~(firstTrailingBit(_wgslsmith_mult_u32(57689u, 0u)) << (0u % 32u)));
    let var_2 = Struct_1(!select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(global0[_wgslsmith_index_u32(40313u, 2u)]), true, false, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), any(vec3<bool>(true, true, true)))), select(vec4<bool>(5562i <= arg_0.x, true, false, all(vec3<bool>(true, false, true))), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), true), u_input.a >= u_input.d.x)), vec4<bool>(true, _wgslsmith_f_op_f32(-509f + 349f) <= arg_1, select(true, false, -8173i > var_0.x), true)), vec4<bool>(true, true, true, true), _wgslsmith_div_f32(497f, -1400f));
    global0 = array<vec2<bool>, 2>();
    return _wgslsmith_f_op_f32(1f + 1869f);
}

fn func_1() -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~(~vec2<i32>(36432i, u_input.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1641f, 395f)))))) - -721f);
    var var_1 = -1000f;
    let var_2 = Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-272f)))))), u_input.c, Struct_1(vec4<bool>(true, true, true, !select(false, true, false)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), true), !select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), true), -464f), u_input.d.x & reverseBits(_wgslsmith_mod_u32(~0u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.d.x), vec2<u32>(u_input.b, 4294967295u)))));
    global3 = array<vec2<u32>, 26>();
    var var_3 = ~abs(vec4<u32>(min(4294967295u, firstTrailingBit(24185u)), reverseBits(_wgslsmith_add_u32(u_input.a, u_input.d.x)), var_2.d, ~90298u));
    return StorageBuffer(~_wgslsmith_div_i32(64554i, u_input.c), _wgslsmith_f_op_f32(f32(-1f) * -1000f), max(select(global1[_wgslsmith_index_u32(~69398u, 2u)], countOneBits(global1[_wgslsmith_index_u32(u_input.b, 2u)]), select(var_2.c.b.zwx, vec3<bool>(false, true, var_2.c.c.x), vec3<bool>(true, var_2.c.a.x, false))) >> (_wgslsmith_sub_vec3_u32(global1[_wgslsmith_index_u32(25347u, 2u)] << (vec3<u32>(4294967295u, u_input.d.x, u_input.a) % vec3<u32>(32u)), min(var_3.yxx, vec3<u32>(23161u, 4294967295u, var_3.x))) % vec3<u32>(32u)), max(_wgslsmith_add_vec3_u32(global1[_wgslsmith_index_u32(1845u, 2u)], vec3<u32>(u_input.a, 4294967295u, u_input.d.x)), select(~global1[_wgslsmith_index_u32(var_3.x, 2u)], vec3<u32>(0u, u_input.b, 0u), !var_2.c.b.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 8167u;
    var var_1 = _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(u_input.d.x, abs(~46810u), u_input.a), u_input.b);
    global3 = array<vec2<u32>, 26>();
    global3 = array<vec2<u32>, 26>();
    var var_2 = -(~(-_wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.c, 0i, u_input.c)), vec3<i32>(u_input.c, u_input.c, -42813i) << (vec3<u32>(u_input.d.x, 1u, u_input.b) % vec3<u32>(32u)))));
    let x = u_input.a;
    s_output = func_1();
}

