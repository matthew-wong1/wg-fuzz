struct Struct_1 {
    a: f32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
    c: vec4<bool>,
    d: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
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

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(7499u, vec3<f32>(1148f, -452f, -568f), vec4<bool>(true, false, true, true), 179f);

var<private> global2: array<bool, 23>;

var<private> global3: array<f32, 17>;

var<private> global4: Struct_2 = Struct_2(Struct_1(-1156f, 767f, 47423u), vec3<f32>(-1348f, -248f, -243f), Struct_1(102f, -128f, 18954u), 45126u, Struct_1(-1321f, 684f, 3251u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: u32, arg_3: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_mod_u32(~_wgslsmith_mult_u32(abs(min(global0.c, 62105u)), arg_2), ~_wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u << (arg_0.a.c % 32u), arg_0.d.c), _wgslsmith_add_u32(arg_2, min(16190u, global4.a.c))));
    global4 = Struct_2(arg_0.d, vec3<f32>(arg_1, _wgslsmith_f_op_f32(round(-1195f)), _wgslsmith_f_op_f32(f32(-1f) * -218f)), global4.a, _wgslsmith_dot_vec4_u32(vec4<u32>(25245u, ~_wgslsmith_add_u32(arg_0.b.c, arg_2), global0.c, var_0), vec4<u32>(arg_0.d.c, _wgslsmith_mod_u32(0u, global0.c), global0.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 5255u, var_0, 1u), abs(vec4<u32>(11518u, global4.a.c, arg_2, 56578u))))), global4.c);
    let var_1 = 1i;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.b.x, _wgslsmith_div_f32(arg_0.b.a, global0.b), 147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(483f, -1622f, true))))));
    let var_3 = Struct_3(arg_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.yxy * var_2.yyx)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_1, arg_0.d.a, global4.e.b))))), !select(select(select(vec4<bool>(true, false, global1.c.x, global1.c.x), vec4<bool>(false, global1.c.x, false, true), global1.c), global1.c, global1.c), global1.c, global1.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-1370f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global3[_wgslsmith_index_u32(min(4294967295u, var_0), 17u)], var_2.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1238f, 521f), 138f))), select(true, any(!global1.c.xx), !any(global1.c.ww)))));
    return var_3.c;
}

fn func_2() -> vec2<f32> {
    global3 = array<f32, 17>();
    global1 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c, global4.c.c, global4.d), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c, 32912u), vec2<u32>(60432u, global1.a)), global4.a.c), max(18415u, 91954u), _wgslsmith_mod_u32(global4.a.c, firstTrailingBit(18208u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3[_wgslsmith_index_u32(53200u, 17u)], 202f, global0.a)))))), func_3(Struct_4(Struct_1(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(ceil(global4.b.x)), global0.c | 1u), Struct_1(global4.e.b, _wgslsmith_div_f32(global0.a, global1.b.x), ~4294967295u), global4.d, Struct_1(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(global4.e.a * 1009f), 4294967295u)), 524f, global0.c, u_input.b), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) - _wgslsmith_f_op_f32(abs(global0.b)))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.d, _wgslsmith_f_op_f32(ceil(368f)), _wgslsmith_f_op_f32(-global0.a)) + vec3<f32>(global4.e.a, -117f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global4.a.b)))))));
    let var_1 = _wgslsmith_f_op_f32(-var_0.x);
    global4 = Struct_2(global4.c, _wgslsmith_f_op_vec3_f32(global4.b - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + -528f)), -1262f, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-var_1))))), global4.a, _wgslsmith_mod_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(20033u, 0u, global4.a.c), vec3<u32>(39199u, 1u, 14890u)), min(global0.c & global1.a, global4.d)) & ~_wgslsmith_mod_u32(global0.c & 39213u, ~global1.a), global4.c);
    return _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(global1.d, _wgslsmith_f_op_f32(-1641f * 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.b.x, global1.d))))));
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_2());
    let var_1 = firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(global0.c, 29917u), 1u), global0.c, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(1u, global4.d, 1u, 4294967295u)), vec4<u32>(global1.a, 66959u, global0.c, 8274u) >> (vec4<u32>(global0.c, 0u, 40536u, 10281u) % vec4<u32>(32u))), 0u) >> (~(vec4<u32>(71055u, 36679u, 28733u, 79024u) << (min(vec4<u32>(128320u, global4.d, 33833u, 75235u), vec4<u32>(4128u, 24517u, global0.c, 4294967295u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = Struct_1(global3[_wgslsmith_index_u32(global0.c, 17u)], 299f, global0.c);
    global3 = array<f32, 17>();
    let var_3 = Struct_2(var_2, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(var_1.x, 17u)] + -317f), -426f))), global4.a, _wgslsmith_div_u32(29966u, 7276u), var_2);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_1();
    let var_0 = -2147483647i >> (1u % 32u);
    let var_1 = global4.e.b;
    global2 = array<bool, 23>();
    var var_2 = var_0;
    global3 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(u_input.a, _wgslsmith_add_vec4_i32(firstLeadingBit(min(vec4<i32>(1i, 1i, -2147483647i, var_0), u_input.a)), vec4<i32>(abs(-3926i), _wgslsmith_mod_i32(u_input.a.x, -1i), u_input.b, _wgslsmith_add_i32(u_input.b, var_0)))), ~max(~(~vec2<u32>(4294967295u, global0.c)), ~vec2<u32>(15378u, global4.c.c) | max(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 19226u))), abs(vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(global0.c, global4.d, 1u), ~vec3<u32>(1u, global0.c, global4.a.c)), ~global4.e.c, ~global1.a ^ 1u, ~(global1.a << (global0.c % 32u)))), 187f);
}

