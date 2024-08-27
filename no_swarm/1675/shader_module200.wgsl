struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

var<private> global1: array<vec3<i32>, 2>;

var<private> global2: vec2<u32>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> f32 {
    global2 = ~arg_0.d;
    var var_0 = vec2<bool>(!any(vec3<bool>(arg_1.c.x, true, arg_1.c.x)), false);
    global0 = array<vec4<u32>, 11>();
    global1 = array<vec3<i32>, 2>();
    var var_1 = vec3<bool>(false, true, all(vec4<bool>(arg_1.c.x, true, false, any(!vec4<bool>(true, arg_0.c.x, false, false)))));
    return -740f;
}

fn func_2() -> Struct_1 {
    global0 = array<vec4<u32>, 11>();
    let var_0 = u_input.c;
    let var_1 = -max(_wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(u_input.b, 6138i, u_input.b)), firstLeadingBit(vec3<i32>(3788i, u_input.e.x, -34124i)), vec3<i32>(u_input.e.x, u_input.e.x, 1675i)) & global1[_wgslsmith_index_u32(1u << (u_input.a % 32u), 2u)], vec3<i32>(u_input.d, _wgslsmith_dot_vec3_i32(~vec3<i32>(u_input.b, -2147483647i, 53007i), _wgslsmith_sub_vec3_i32(global1[_wgslsmith_index_u32(91u, 2u)], global1[_wgslsmith_index_u32(16811u, 2u)])), 494i));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-680f, _wgslsmith_f_op_f32(max(987f, -1639f)), _wgslsmith_f_op_f32(func_3(Struct_1(vec4<f32>(-120f, 524f, 2092f, -149f), u_input.e, vec3<bool>(false, true, true), vec2<u32>(0u, global2.x), var_1.x), Struct_1(vec4<f32>(188f, -411f, -127f, -1608f), vec2<i32>(-14636i, u_input.e.x), vec3<bool>(false, false, false), vec2<u32>(u_input.a, u_input.a), -1i), -2147483647i, vec3<u32>(4384u, global2.x, global2.x))), _wgslsmith_f_op_f32(step(-1616f, -918f)))))), vec2<i32>(firstLeadingBit(select(5210i, countOneBits(-2147483647i), true)), 1i), vec3<bool>(true | any(vec4<bool>(true, true, true, true)), all(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true)), any(vec3<bool>(true, all(vec3<bool>(false, true, true)), true))), ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, 4294967295u), select(vec2<u32>(1u, 4294967295u), vec2<u32>(33580u, 4294967295u), true)), vec2<u32>(_wgslsmith_clamp_u32(global2.x, u_input.c, 7958u), ~1u)), -24948i);
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a.x))), _wgslsmith_f_op_f32(f32(-1f) * -220f), -375f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a.x + -1000f))))), vec2<i32>(var_2.b.x, i32(-1i) * -1i), select(vec3<bool>(false, _wgslsmith_dot_vec3_i32(var_1, vec3<i32>(var_1.x, var_1.x, u_input.b)) < var_1.x, true), var_2.c, var_2.c), _wgslsmith_mod_vec2_u32(countOneBits(var_2.d), abs(_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(var_2.d, var_2.d), vec2<u32>(1u, 66458u)))), 0i);
}

fn func_1() -> Struct_1 {
    global0 = array<vec4<u32>, 11>();
    global0 = array<vec4<u32>, 11>();
    let var_0 = func_2();
    var var_1 = (_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d, var_0.b.x, var_0.e, u_input.e.x), vec4<i32>(-62508i, var_0.b.x, -14499i, -2147483647i)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i), firstTrailingBit(var_0.b))) ^ -2147483647i) == -2147483647i;
    var_1 = !any(select(select(vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, false, var_0.c.x, true), var_0.c.x), select(vec4<bool>(true, var_0.c.x, false, var_0.c.x), vec4<bool>(var_0.c.x, false, true, true), true), !vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x))) || var_0.c.x;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 2>();
    let var_0 = func_1();
    var var_1 = Struct_1(var_0.a, _wgslsmith_mult_vec2_i32(u_input.e, u_input.e), !vec3<bool>(true, false, all(vec4<bool>(var_0.c.x, var_0.c.x, var_0.c.x, var_0.c.x))), ~vec2<u32>(~(var_0.d.x | u_input.c), ~u_input.c >> (1u % 32u)), 2147483647i | (i32(-1i) * -(~u_input.b)));
    let var_2 = func_1();
    var var_3 = -(i32(-1i) * -1i);
    var var_4 = countOneBits(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, min(global2.x, ~43599u)), 11u)]);
    var_3 = _wgslsmith_mod_i32(min(-17846i, u_input.d << (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d.x, var_4.x, 4294967295u, var_1.d.x), vec4<u32>(var_1.d.x, var_0.d.x, var_2.d.x, var_2.d.x)) % 32u)), _wgslsmith_mult_i32(u_input.b, i32(-1i) * -2147483647i));
    var var_5 = !vec4<bool>(!(false | (var_4.x == 67221u)), func_2().c.x, true, true);
    let var_6 = vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1258f))), -644f)) * func_1().a.x), -371f);
    let x = u_input.a;
    s_output = StorageBuffer(min(4294967295u, ~(~var_2.d.x & var_0.d.x)), var_6.x);
}

