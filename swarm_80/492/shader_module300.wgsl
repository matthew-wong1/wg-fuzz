struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, Struct_1(vec2<f32>(1000f, 1341f), vec4<i32>(45111i, -1i, -1i, 2147483647i), true), Struct_1(vec2<f32>(-976f, -1000f), vec4<i32>(20853i, i32(-2147483648), 17574i, -1i), false), 74235u);

var<private> global1: Struct_2;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<vec3<bool>, 20>;

var<private> global4: array<i32, 1>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global3 = array<vec3<bool>, 20>();
    let var_0 = any(select(select(!select(vec4<bool>(true, arg_0.c, true, false), vec4<bool>(false, arg_0.c, true, arg_0.c), false), select(vec4<bool>(global0.c.c, global1.c.c, arg_0.c, true), select(vec4<bool>(false, global0.a, arg_0.c, true), vec4<bool>(true, global0.b.c, global1.a, false), global1.c.c), true), select(true, true, global1.a)), select(select(vec4<bool>(true, global1.b.c, arg_0.c, false), vec4<bool>(global1.b.c, global0.b.c, global0.a, false), vec4<bool>(arg_0.c, global0.b.c, true, true)), !select(vec4<bool>(arg_0.c, false, global0.a, arg_0.c), vec4<bool>(false, global1.a, true, global1.c.c), true), vec4<bool>(arg_0.c | arg_0.c, all(vec2<bool>(true, false)), any(vec4<bool>(true, false, true, global1.b.c)), true)), select(!(!vec4<bool>(false, arg_0.c, false, global1.c.c)), select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, arg_0.c), false), select(vec4<bool>(arg_0.c, global1.a, arg_0.c, false), vec4<bool>(arg_0.c, global1.a, global1.b.c, false), false), global0.c.c), all(select(vec4<bool>(global1.b.c, global1.b.c, true, arg_0.c), vec4<bool>(true, true, true, false), false)))));
    let var_1 = -global1.b.b.x;
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global1.b.a, vec2<f32>(global1.b.a.x, arg_0.a.x)))))), ~(arg_0.b | -(~global1.c.b)), !(!((-349f == arg_0.a.x) | any(vec4<bool>(arg_0.c, global1.a, arg_0.c, true)))));
    var var_3 = Struct_2(all(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.d << (global1.d % 32u), 1u), 20u)]), arg_0, Struct_1(_wgslsmith_f_op_vec2_f32(-global1.c.a), global0.b.b, arg_0.b.x == (var_1 >> (4294967295u % 32u))), global1.d);
    return -_wgslsmith_add_i32(reverseBits(var_3.b.b.x), ~_wgslsmith_add_i32(-var_1, 2147483647i));
}

fn func_2() -> vec3<u32> {
    var var_0 = Struct_2(!(!select(all(global3[_wgslsmith_index_u32(u_input.d, 20u)]), global0.a, false || global1.c.c)), global1.b, global0.c, reverseBits(73876u));
    global4 = array<i32, 1>();
    let var_1 = Struct_1(global1.c.a, global0.b.b, var_0.b.c);
    var var_2 = max(vec2<i32>(~var_1.b.x | global1.c.b.x, u_input.c.x), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(global1.b.b.x | global4[_wgslsmith_index_u32(var_0.d, 1u)], -32260i), -1i), func_3(Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-270f, var_0.b.a.x), var_1.a, true)), -vec4<i32>(global4[_wgslsmith_index_u32(var_0.d, 1u)], global0.c.b.x, 2147483647i, -8236i), var_0.b.c != true))));
    global4 = array<i32, 1>();
    return firstLeadingBit(~vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, global1.d), vec2<u32>(30732u, 1u)), u_input.b ^ var_0.d, 4774u)) | vec3<u32>(~(~10040u), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), ~(vec2<u32>(30458u, 0u) << (vec2<u32>(global1.d, var_0.d) % vec2<u32>(32u)))), firstTrailingBit(85631u));
}

fn func_1() -> Struct_2 {
    global0 = Struct_2(select(global1.a, all(vec2<bool>(!global1.b.c, true)), any(select(!vec3<bool>(global1.b.c, global1.c.c, true), select(vec3<bool>(global1.b.c, global1.b.c, true), global3[_wgslsmith_index_u32(343u, 20u)], false), !global3[_wgslsmith_index_u32(26316u, 20u)]))), global0.c, Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(-1196f)), global1.b.a.x) * global0.c.a), ~global1.c.b, true), firstLeadingBit(1u));
    global2 = _wgslsmith_dot_vec3_i32(vec3<i32>(-global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(max(u_input.d, global1.d), ~25791u), 1u)], 27590i, 2147483647i >> (~4294967295u % 32u)), vec3<i32>(-u_input.a, -2147483647i, global0.b.b.x));
    global3 = array<vec3<bool>, 20>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -531f));
    var var_1 = ~select(~(~func_2()), vec3<u32>(~4294967295u, ~u_input.b, select(86521u, global0.d, true)) & vec3<u32>(select(1u, global1.d, global1.c.c), global1.d, ~1u), global0.a);
    return Struct_2(global0.c.c, global0.c, Struct_1(_wgslsmith_f_op_vec2_f32(select(global0.c.a, _wgslsmith_f_op_vec2_f32(-global1.c.a), any(select(vec4<bool>(false, true, false, global0.c.c), vec4<bool>(global0.b.c, global0.c.c, true, global1.b.c), vec4<bool>(global0.a, true, global0.c.c, true))))), -vec4<i32>(1i, -14151i >> (u_input.b % 32u), 0i, global0.b.b.x), true), min(0u << (~4294967295u % 32u), 1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = global1.c.a.x;
    global4 = array<i32, 1>();
    let var_2 = func_1().d;
    var var_3 = Struct_1(var_0.b.a, vec4<i32>(22573i, 1i, ~func_1().c.b.x, 2147483647i), true);
    var var_4 = 13266i;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().b.a.x, 1769f, global0.c.b.zxz, 72910i, _wgslsmith_div_f32(482f, var_0.b.a.x));
}

