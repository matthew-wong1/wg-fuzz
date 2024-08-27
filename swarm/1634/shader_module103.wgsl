struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: u32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 8>;

var<private> global1: array<Struct_2, 6>;

var<private> global2: Struct_2;

var<private> global3: array<vec3<i32>, 27>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    var var_0 = select(vec4<bool>(global2.b.a, all(!select(vec3<bool>(global2.b.a, global2.b.a, false), vec3<bool>(global2.d.a, true, false), global2.b.a)), _wgslsmith_f_op_f32(round(426f)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1573f, 379f))), true), !(!global0[_wgslsmith_index_u32((u_input.a | 36904u) ^ abs(0u), 8u)]), vec4<bool>(global2.d.a, false, true, global2.b.a));
    global1 = array<Struct_2, 6>();
    var var_1 = Struct_5(reverseBits(_wgslsmith_div_u32(~abs(u_input.a), 1u >> (u_input.a % 32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2774f, -226f))), vec2<f32>(-332f, _wgslsmith_f_op_f32(step(-1542f, -260f))))))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(310f, -406f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1527f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1030f)), _wgslsmith_f_op_f32(var_1.b.x * var_1.b.x))))));
    var_1 = Struct_5(_wgslsmith_add_u32(var_1.a, ~(~_wgslsmith_sub_u32(u_input.a, 0u))), var_1.b);
    return abs(~(~_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a, 4294967295u), abs(vec2<u32>(0u, 0u)))));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = Struct_4(Struct_2(u_input.d, global2.b, u_input.d, global2.d), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(-955f)), _wgslsmith_div_f32(-405f, _wgslsmith_f_op_f32(ceil(-1408f))), _wgslsmith_f_op_f32(round(-494f)) >= _wgslsmith_f_op_f32(round(434f)))))));
    global0 = array<vec4<bool>, 8>();
    let var_1 = var_0.a.b;
    var var_2 = _wgslsmith_f_op_f32(min(-1000f, -1531f));
    var var_3 = func_3();
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-565f, _wgslsmith_f_op_f32(var_0.b * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.b))))))));
}

fn func_4(arg_0: f32, arg_1: vec3<i32>) -> vec2<u32> {
    global2 = Struct_2(34169u, Struct_1(global2.b.a), 0u, global2.d);
    var var_0 = Struct_4(global1[_wgslsmith_index_u32(511u, 6u)], 920f);
    global2 = Struct_2(1u, Struct_1(7695u != abs(1u << (u_input.d % 32u))), 1u, global2.b);
    let var_1 = Struct_3(~(select(vec4<i32>(-9191i, 1i, u_input.b, 0i), vec4<i32>(2147483647i, u_input.b, 0i, 28626i), global0[_wgslsmith_index_u32(var_0.a.a, 8u)]) << (~vec4<u32>(global2.a, 24408u, 36103u, 26576u) % vec4<u32>(32u))) & abs(abs(~vec4<i32>(arg_1.x, arg_1.x, u_input.b, -21275i))));
    global3 = array<vec3<i32>, 27>();
    return _wgslsmith_sub_vec2_u32(vec2<u32>(~max(~38633u, 64131u), max(1u, 0u ^ u_input.d)), select(abs(reverseBits(vec2<u32>(global2.c, 4035u)) & firstTrailingBit(vec2<u32>(u_input.a, u_input.d))), (min(vec2<u32>(4294967295u, 0u), vec2<u32>(global2.a, global2.a)) | _wgslsmith_clamp_vec2_u32(vec2<u32>(global2.a, global2.a), vec2<u32>(var_0.a.a, 0u), vec2<u32>(96289u, u_input.d))) >> (abs(_wgslsmith_sub_vec2_u32(vec2<u32>(45657u, 19635u), vec2<u32>(var_0.a.a, var_0.a.a))) % vec2<u32>(32u)), !vec2<bool>(true, global2.b.a)));
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> u32 {
    var var_0 = func_4(_wgslsmith_f_op_f32(func_2(~(-u_input.c) | (u_input.c ^ u_input.b))), -select(vec3<i32>(-15552i, 1i, -u_input.c), -global3[_wgslsmith_index_u32(u_input.a, 27u)] & -global3[_wgslsmith_index_u32(arg_1.a, 27u)], select(!vec3<bool>(true, global2.b.a, global2.b.a), vec3<bool>(global2.d.a, false, global2.b.a), !vec3<bool>(global2.d.a, global2.b.a, false))));
    var var_1 = global1[_wgslsmith_index_u32(~1552u, 6u)];
    var var_2 = Struct_1(all(global0[_wgslsmith_index_u32(~4294967295u, 8u)]));
    var var_3 = Struct_1(any(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, var_1.c), 8u)]));
    global3 = array<vec3<i32>, 27>();
    return ~0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -425f);
    let var_1 = abs(select(_wgslsmith_mod_vec4_u32(vec4<u32>(global2.c, global2.a, u_input.d, global2.c), vec4<u32>(53905u, global2.a, global2.c, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 37331u, global2.a, u_input.d), vec4<u32>(global2.a, global2.c, 1u, u_input.d)), true) & vec4<u32>(0u, firstTrailingBit(global2.c), ~12827u, func_1(Struct_5(0u, vec2<f32>(-1789f, var_0)), Struct_5(global2.c, vec2<f32>(-118f, var_0))))) & countOneBits(countOneBits(~vec4<u32>(3510u, global2.c, 0u, global2.a)));
    let var_2 = var_1.x;
    var var_3 = any(vec4<bool>(global2.b.a, any(!vec2<bool>(false, global2.d.a)), false, any(vec2<bool>(true, true))));
    let var_4 = var_2;
    global3 = array<vec3<i32>, 27>();
    let var_5 = vec3<i32>(~(1i & abs(firstTrailingBit(-1i))), -55772i, ~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(1i, var_5.x, -u_input.c, 1i), vec2<u32>(firstLeadingBit(var_4 >> (4294967295u % 32u)), abs(0u)), firstLeadingBit(7567i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, 1000f))))), vec4<i32>(var_5.x, 1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(~1i, ~u_input.b), firstLeadingBit(1307i)), _wgslsmith_dot_vec4_i32(~vec4<i32>(var_5.x, 13271i, -2147483647i, 0i) & (vec4<i32>(u_input.c, 2147483647i, 44934i, u_input.b) | vec4<i32>(u_input.b, var_5.x, var_5.x, u_input.c)), -vec4<i32>(-24080i, -7255i, u_input.b, var_5.x))));
}

