struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(1i, -1i, 2147483647i, 0i), vec4<i32>(0i, -19688i, i32(-2147483648), -11192i), vec4<i32>(1i, -23886i, 0i, i32(-2147483648)), vec4<i32>(-13197i, 14075i, 1i, -17144i), vec4<i32>(4168i, 26729i, 25832i, -59631i), vec4<i32>(33761i, 42305i, -36576i, 30251i), vec4<i32>(-1123i, -1i, 1i, -5397i), vec4<i32>(7054i, 498i, i32(-2147483648), 0i), vec4<i32>(65992i, 19478i, 57602i, 2147483647i), vec4<i32>(50717i, 2147483647i, 6729i, -64007i));

var<private> global1: Struct_1 = Struct_1(false, 27677i, vec4<u32>(21540u, 0u, 1u, 1u), 306f, vec3<i32>(-1i, 2147483647i, 0i));

var<private> global2: array<Struct_2, 31>;

var<private> global3: array<i32, 4>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<f32> {
    let var_0 = -countOneBits(~global3[_wgslsmith_index_u32(~select(0u, 1u, true), 4u)]);
    var var_1 = global2[_wgslsmith_index_u32(~global1.c.x, 31u)];
    var var_2 = Struct_1(!any(vec3<bool>(false, false, !global1.a)), _wgslsmith_dot_vec4_i32(vec4<i32>(~(-u_input.a.x), ~(var_0 >> (30444u % 32u)), _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(31023i, 1i)), abs(max(global1.e.x, u_input.a.x))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(37088u, (global1.c.x << (0u % 32u)) << ((18656u >> (0u % 32u)) % 32u)), 10u)]), countOneBits(global1.c), _wgslsmith_f_op_f32(exp2(var_1.a)), min(_wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(21024u, 4u)], 1i, 1i), vec3<i32>(8553i, global3[_wgslsmith_index_u32(global1.c.x, 4u)], global1.b)), _wgslsmith_sub_i32(global1.b, -37395i)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(1u, 4u)], 0i, -2147483647i), global1.e), -global1.e)), global1.e));
    var var_3 = global2[_wgslsmith_index_u32(min(global1.c.x, firstLeadingBit(var_2.c.x)), 31u)];
    var_3 = global2[_wgslsmith_index_u32(~max(abs(countOneBits(63224u)), ~17618u), 31u)];
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -543f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-133f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f * -652f) - _wgslsmith_f_op_f32(exp2(global1.d))), -767f)) - vec3<f32>(_wgslsmith_f_op_f32(var_2.d + -868f), -499f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(f32(-1f) * -177f)), _wgslsmith_f_op_f32(global1.d * _wgslsmith_f_op_f32(f32(-1f) * -177f)), true))));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_3());
    var var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(~(global1.c.x ^ _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(global1.c, global1.c), select(0u, 0u, global1.a), abs(global1.c.x)))), 31u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(1000f, global1.d))))) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * 1096f), 501f)))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<i32>, 10>();
    global3 = array<i32, 4>();
    var var_0 = 1u;
    let var_1 = -17533i;
    global2 = array<Struct_2, 31>();
    return Struct_1(_wgslsmith_f_op_f32(-global1.d) > _wgslsmith_f_op_f32(func_2(min(vec3<i32>(u_input.a.x, var_1, -1i), firstLeadingBit(vec3<i32>(var_1, global1.e.x, 121i))))), u_input.a.x, ~global1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.d), _wgslsmith_f_op_f32(func_2(firstTrailingBit(global1.e))))), _wgslsmith_mod_vec3_i32(-(-vec3<i32>(28206i, 7963i, u_input.a.x) ^ (global1.e & global1.e)), vec3<i32>(_wgslsmith_add_i32(-2147483647i, var_1), -33267i, global3[_wgslsmith_index_u32(abs(abs(global1.c.x)), 4u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(i32(-1i) * -(i32(-1i) * -2147483647i), 0i, u_input.a.x);
    var var_1 = func_1();
    global2 = array<Struct_2, 31>();
    var var_2 = Struct_2(-732f);
    let var_3 = ~vec3<u32>(func_1().c.x, ~51039u, 0u);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3()) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.d, var_2.a, global1.d))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d, 392f, global1.d)), true)) - vec3<f32>(global1.d, 342f, _wgslsmith_f_op_f32(f32(-1f) * -845f))) * vec3<f32>(174f, _wgslsmith_f_op_f32(step(var_2.a, _wgslsmith_f_op_f32(-963f - -181f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) * _wgslsmith_f_op_f32(floor(var_1.d))))));
    global3 = array<i32, 4>();
    var_2 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.d) + var_1.d) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a - var_2.a), 446f)), func_1().d, all(vec3<bool>(any(vec3<bool>(var_1.a, true, var_1.a)), true, select(var_1.a, false, false))))));
    global2 = array<Struct_2, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(-750f, 0u, 700f, var_1.c);
}

