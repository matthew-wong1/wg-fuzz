struct Struct_1 {
    a: bool,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

var<private> global1: Struct_1 = Struct_1(false, vec4<bool>(false, true, false, true));

var<private> global2: array<vec4<bool>, 30>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    global1 = Struct_1(2147483647i <= u_input.d.x, !select(vec4<bool>(global0.x && true, global1.b.x, true, global1.a & true), global1.b, global1.a));
    global2 = array<vec4<bool>, 30>();
    global1 = Struct_1(!(_wgslsmith_clamp_i32(-u_input.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -14173i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, -12694i)), u_input.d.x & -11243i) > _wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, u_input.d.x, 1i), -vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x))), global1.b);
    global0 = vec2<bool>(true, true);
    var var_0 = _wgslsmith_div_u32(u_input.a.x, 36185u >> (u_input.c % 32u));
    return _wgslsmith_dot_vec4_i32(vec4<i32>(-8616i, -(u_input.d.x ^ 0i), firstTrailingBit(34404i), 2147483647i) & abs(abs(vec4<i32>(u_input.d.x, u_input.d.x, -1i, u_input.d.x) << (vec4<u32>(1u, u_input.c, 1u, 0u) % vec4<u32>(32u)))), _wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.d.x, -2147483647i, 30284i, 0i), -select(countOneBits(vec4<i32>(0i, 34921i, -2147483647i, u_input.d.x)), vec4<i32>(-34348i, u_input.d.x, -62793i, u_input.d.x), global1.b), vec4<i32>(u_input.d.x, ~(-1i), firstTrailingBit(u_input.d.x >> (u_input.b % 32u)), _wgslsmith_add_i32(~u_input.d.x, 1i))));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(true, global1.b);
    var var_1 = ~30006i;
    var var_2 = global1.b;
    var var_3 = _wgslsmith_add_i32(_wgslsmith_div_i32(~u_input.d.x, func_3()), select(select(_wgslsmith_clamp_i32(~2147483647i, -41159i, func_3()), ~0i << (_wgslsmith_div_u32(u_input.b, 6532u) % 32u), all(vec3<bool>(var_2.x, true, true))), _wgslsmith_mult_i32(max(-3263i, 13420i), firstLeadingBit(u_input.d.x)) | _wgslsmith_clamp_i32(u_input.d.x, u_input.d.x << (u_input.b % 32u), 0i), !(!(23848u <= u_input.b))));
    var_3 = u_input.d.x;
    return Struct_1(any(global1.b.wy), !vec4<bool>(global1.a, var_2.x, select(true, global1.b.x, global0.x) && !global0.x, any(select(var_2.wwy, vec3<bool>(var_0.a, global1.b.x, global0.x), var_2.x))));
}

fn func_1() -> Struct_1 {
    let var_0 = ~(~u_input.a.x);
    var var_1 = -1446f;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(_wgslsmith_div_u32(u_input.a.x, 30937u), abs(4294967295u));
    let var_1 = func_1();
    global0 = !func_2().b.xz;
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(u_input.c, _wgslsmith_mod_u32(u_input.a.x, u_input.a.x) | 1u, var_0.x), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(553f, 306f, -1226f), vec3<f32>(987f, 751f, -767f), var_1.a)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1347f, 287f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1341f, -418f, -1423f)))))), vec2<f32>(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1245f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-107f - 112f) * _wgslsmith_f_op_f32(f32(-1f) * -1122f)))), _wgslsmith_f_op_f32(ceil(-1000f)), 1f);
}

