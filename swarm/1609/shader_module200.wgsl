struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: Struct_2 = Struct_2(vec4<u32>(59407u, 3537u, 4294967295u, 1u), Struct_1(vec4<u32>(4294967295u, 4463u, 58770u, 355u), -1i, vec4<i32>(6361i, 24267i, i32(-2147483648), -1i)));

var<private> global2: array<Struct_1, 23>;

var<private> global3: vec4<i32> = vec4<i32>(0i, 0i, 1i, 0i);

var<private> global4: Struct_2;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = Struct_2(select(select(vec4<u32>(global1.b.a.x, global4.b.a.x, 1016u, 97744u) ^ vec4<u32>(arg_0.a.x, arg_0.a.x, 33051u, 1u), ~global1.a, vec4<bool>(false, true, true, true)) & select(abs(global1.a), global1.b.a >> (global4.a % vec4<u32>(32u)), global1.b.b == 1i), ~global1.b.a, vec4<bool>(true, true, true, true)), Struct_1(arg_0.a, _wgslsmith_sub_i32(abs(-1i), global4.b.b), _wgslsmith_mod_vec4_i32(vec4<i32>(52194i >> (global1.b.a.x % 32u), i32(-1i) * -6409i, -40201i, i32(-1i) * -6830i), reverseBits(global1.b.c) | ~global1.b.c)));
    var var_0 = ~global4.b.c;
    var var_1 = 1i;
    var var_2 = vec3<f32>(-907f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(2232f)) + _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-630f + _wgslsmith_f_op_f32(-1000f - -1503f)))), -1238f);
    var var_3 = true;
    return min(arg_0.a.x, 0u) == _wgslsmith_mod_u32(global1.a.x, global4.b.a.x);
}

fn func_2() -> Struct_2 {
    global4 = Struct_2(~vec4<u32>(~global1.b.a.x, global1.a.x, global4.b.a.x, u_input.a.x | ~9777u), global0[_wgslsmith_index_u32(abs(22108u), 9u)]);
    var var_0 = func_3(global0[_wgslsmith_index_u32(~_wgslsmith_add_u32(abs(select(global1.b.a.x, 1u, false)), _wgslsmith_dot_vec3_u32(global1.b.a.xzz, u_input.a) << (global1.b.a.x % 32u)), 9u)]);
    var var_1 = u_input.a.x;
    let var_2 = false;
    var_0 = all(!select(select(!vec4<bool>(var_2, var_2, var_2, var_2), !vec4<bool>(false, var_2, var_2, var_2), select(vec4<bool>(true, false, var_2, false), vec4<bool>(false, var_2, false, false), vec4<bool>(true, var_2, false, true))), !(!vec4<bool>(var_2, var_2, var_2, true)), vec4<bool>(any(vec3<bool>(true, var_2, false)), false | var_2, true, var_2)));
    return Struct_2(global4.a, global4.b);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec2<i32> {
    global4 = func_2();
    let var_0 = global4.b.c.zz;
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-811f, -217f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -1381f))), arg_1.x);
    var var_2 = -vec2<i32>(_wgslsmith_dot_vec3_i32(func_2().b.c.zww, global1.b.c.zzy), global3.x);
    let var_3 = 137f;
    return global3.zx;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~(-_wgslsmith_clamp_vec4_i32(global1.b.c, -vec4<i32>(global3.x, -15550i, -46296i, global3.x), vec4<i32>(global3.x, -5772i, -9335i, -20171i))));
    let var_0 = -_wgslsmith_div_i32(global1.b.b, _wgslsmith_sub_i32(firstTrailingBit(-16829i), ~global4.b.b)) >> (_wgslsmith_mult_u32(countOneBits(_wgslsmith_mult_u32(u_input.a.x, 76636u)), global4.b.a.x) % 32u);
    let var_1 = vec2<i32>(-1i) * -func_1(true, vec3<f32>(-843f, _wgslsmith_f_op_f32(f32(-1f) * -1300f), _wgslsmith_div_f32(491f, -417f)));
    global2 = array<Struct_1, 23>();
    var var_2 = global4.b.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(global1.b.c.x, abs(global3.x), 1i), 768f, ~1u, firstTrailingBit(global1.b.a.xyy), global4.b.c.x);
}

