struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec4<bool>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-2735f, 414f);

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(Struct_1(vec2<u32>(62903u, 0u), 0u, 34613i, vec4<bool>(false, false, true, false), 8245u)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2() -> Struct_2 {
    global1 = array<Struct_2, 1>();
    global1 = array<Struct_2, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global0.x, global0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-175f, global0.x) * vec2<f32>(global0.x, 401f)))))));
    global0 = var_0;
    global1 = array<Struct_2, 1>();
    return global1[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.b.x), 1u)];
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    let var_0 = false;
    global1 = array<Struct_2, 1>();
    var var_1 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(24632u, u_input.a.x)), vec2<u32>(select(u_input.a.x, u_input.a.x, false), u_input.a.x | u_input.b.x)), u_input.b.x >> (_wgslsmith_mult_u32(0u, ~75425u) % 32u), 0u, arg_0.a.e);
    let var_2 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1301f)) * 1000f));
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) * vec2<f32>(-561f, global0.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(927f, 2438f)))))));
    return func_2().a;
}

fn func_4(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.d;
    var_0 = arg_3.d;
    let var_1 = arg_1.zz;
    var_0 = arg_3.d;
    global1 = array<Struct_2, 1>();
    return Struct_1(u_input.a.xz ^ ~vec2<u32>(81533u, _wgslsmith_div_u32(4294967295u, 1u)), 0u, 1i, !vec4<bool>(true, true, !(!arg_2.a.d.x), arg_2.a.d.x), func_3(arg_2).a.x);
}

fn func_1(arg_0: i32, arg_1: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_1), global0.x)));
    let var_0 = true;
    var var_1 = Struct_2(func_4(Struct_2(Struct_1(~u_input.b, 94042u, -1i, select(vec4<bool>(var_0, true, var_0, false), vec4<bool>(var_0, false, false, true), var_0), ~u_input.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(arg_0, -41376i, arg_0) >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b.x, u_input.a.x, u_input.a.x), u_input.a.zyx) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_mod_i32(arg_0, -58076i), _wgslsmith_add_i32(1i, -647i), 2147483647i)), global1[_wgslsmith_index_u32(~(u_input.a.x << (89653u % 32u)), 1u)], func_3(func_2())));
    let var_2 = u_input.a;
    var var_3 = vec4<bool>(func_3(func_2()).d.x, var_0, !(any(var_1.a.d) | select(var_0, all(vec3<bool>(true, var_0, var_1.a.d.x)), var_1.a.d.x)), var_1.a.e > _wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.a.b, 10398u), var_2.yx));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = ~u_input.b.x;
    let var_2 = func_1(-1378i, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(476f, _wgslsmith_f_op_f32(step(-416f, _wgslsmith_f_op_f32(global0.x + -863f))))));
    var var_3 = _wgslsmith_mult_u32(var_2.a.x, ~func_4(Struct_2(var_2), abs(vec3<i32>(24737i, var_2.c, -2147483647i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(var_2.c, var_2.c, var_2.c), vec3<i32>(32032i, var_2.c, var_2.c)), global1[_wgslsmith_index_u32(~93726u, 1u)], var_2).e);
    var var_4 = Struct_2(var_2);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-1i, -1i, var_2.c), ~(-5817i)), firstTrailingBit(vec2<i32>(var_4.a.c, 18962i)) >> (abs(vec2<u32>(4294967295u, var_4.a.e)) % vec2<u32>(32u)))));
}

