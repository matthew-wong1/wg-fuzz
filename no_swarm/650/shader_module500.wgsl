struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 24>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> i32 {
    global0 = array<Struct_4, 24>();
    let var_0 = vec2<bool>(arg_1.b, u_input.a.x != (abs(-arg_1.c.c) ^ _wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.a.x, 0i), -16570i)));
    var var_1 = ~vec3<u32>(arg_1.a, _wgslsmith_mod_u32(~arg_1.a, min(13532u, _wgslsmith_mult_u32(1u, 0u))), 37444u);
    var_1 = _wgslsmith_add_vec3_u32(countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(2613u, arg_1.a), ~4812u, ~arg_1.a), ~reverseBits(vec3<u32>(u_input.b, 0u, arg_1.a)))), vec3<u32>(_wgslsmith_clamp_u32(var_1.x, _wgslsmith_clamp_u32(~var_1.x, u_input.b, 1u), 4294967295u), max(1u, _wgslsmith_mod_u32(u_input.b, 1u) | 4294967295u), ~select(1u, ~u_input.b, any(vec3<bool>(arg_1.b, var_0.x, arg_1.b)))));
    let var_2 = var_1.x;
    return arg_1.c.c;
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<i32>, arg_2: i32) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1212f, -535f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(690f, -722f))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(601f, -1000f)))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(585f, 1457f, var_0.a.x)));
    let var_2 = Struct_3(~func_3(global0[_wgslsmith_index_u32(59956u, 24u)], Struct_2(_wgslsmith_add_u32(u_input.b, 0u), false, Struct_1(vec4<i32>(arg_2, u_input.a.x, arg_1.x, 1i), var_0.a, 73369i, var_0.a.x)), 1000f), Struct_2(u_input.b, false, Struct_1(~(-vec4<i32>(1i, u_input.a.x, u_input.a.x, arg_2)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(var_1.yz, vec2<f32>(var_1.x, var_0.a.x))) - var_0.a), -8938i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.x * -798f), _wgslsmith_div_f32(-776f, -586f)))));
    return Struct_3(arg_0.x, Struct_2(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b & u_input.b, 1u), var_2.b.a), any(!select(vec4<bool>(var_2.b.b, var_2.b.b, true, false), vec4<bool>(var_2.b.b, true, var_2.b.b, false), vec4<bool>(false, var_2.b.b, true, var_2.b.b))), var_2.b.c));
}

fn func_1() -> Struct_1 {
    let var_0 = true | any(vec4<bool>(true, all(vec3<bool>(false, false, false)), true, false));
    let var_1 = func_2(-_wgslsmith_sub_vec2_i32(vec2<i32>(-2868i, i32(-1i) * -12067i), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, u_input.a.x), u_input.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-35881i, u_input.a.x), u_input.a))), abs(countOneBits(vec3<i32>(u_input.a.x, -2147483647i, -2147483647i)) & (_wgslsmith_add_vec3_i32(vec3<i32>(-10649i, u_input.a.x, 2147483647i), vec3<i32>(-20674i, 51640i, u_input.a.x)) ^ -vec3<i32>(-1i, u_input.a.x, 34814i))), ~49583i);
    var var_2 = ~min(_wgslsmith_mod_vec3_u32(~vec3<u32>(19698u, 19622u, u_input.b), ~_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 16586u), vec3<u32>(var_1.b.a, var_1.b.a, u_input.b))), vec3<u32>(~(~u_input.b), 1u, var_1.b.a));
    var_2 = _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(~countOneBits(4294967295u), abs(var_2.x), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2.x, var_2.x, var_2.x), vec3<u32>(u_input.b, 4294967295u, u_input.b)), u_input.b))), ~(~vec3<u32>(~81132u, u_input.b, u_input.b)));
    var var_3 = var_1.b.c.c;
    return Struct_1(var_1.b.c.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.b.c.d, _wgslsmith_f_op_f32(-var_1.b.c.b.x)) - _wgslsmith_f_op_vec2_f32(abs(var_1.b.c.b))), reverseBits(16417i | u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -509f)), _wgslsmith_f_op_f32(-func_2(vec2<i32>(u_input.a.x, 79789i), vec3<i32>(u_input.a.x, -25842i, 2147483647i), -46349i).b.c.d)) + -1977f));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = ~0u;
    var_0 = ~max(~u_input.b, 4294967295u);
    var var_1 = arg_0.c;
    global0 = array<Struct_4, 24>();
    let var_2 = -1000f;
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_2(1u, true, func_1()), global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(62127u, u_input.b, 10297u), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 1u, 48797u), vec3<u32>(u_input.b, u_input.b, 34781u)))), 24u)], vec4<bool>(!(!any(vec2<bool>(true, false))), false, true, true));
    let var_1 = _wgslsmith_f_op_f32(var_0.c.d + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(892f)), _wgslsmith_f_op_f32(exp2(var_0.c.b.x)), select(any(!vec4<bool>(true, false, false, var_0.b)), true, !func_2(u_input.a, var_0.c.a.zxy, 0i).b.b))));
    global0 = array<Struct_4, 24>();
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.a >> (_wgslsmith_div_u32(abs(0u), var_0.a >> (4294967295u % 32u)) % 32u), 22831u), (vec2<u32>(51014u, _wgslsmith_clamp_u32(u_input.b, 4294967295u, var_0.a)) << (~(vec2<u32>(var_0.a, u_input.b) & vec2<u32>(1648u, var_0.a)) % vec2<u32>(32u))) >> (_wgslsmith_add_vec2_u32(vec2<u32>(~var_0.a, abs(1u)), abs(_wgslsmith_mult_vec2_u32(vec2<u32>(18650u, 1u), vec2<u32>(8511u, 1u)))) % vec2<u32>(32u)));
    var var_3 = 1i;
    var var_4 = 36571i;
    let var_5 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(var_0.c.b, var_0.c.b)) * _wgslsmith_f_op_vec2_f32(-var_0.c.b)))));
    global0 = array<Struct_4, 24>();
    var_3 = var_0.c.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, func_4(Struct_2(var_0.a, any(vec4<bool>(true, false, var_0.b, false)), Struct_1(vec4<i32>(var_0.c.c, -2147483647i, u_input.a.x, u_input.a.x), var_5.a, var_0.c.a.x, -306f)), Struct_4(var_5.a), vec4<bool>(var_0.b, var_0.b, true, true)).c.a.x & (i32(-1i) * -1i), u_input.a.x, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(165f, var_1, var_5.a.x), vec3<f32>(1000f, var_1, var_5.a.x), vec3<bool>(var_0.b, false, var_0.b))))))))), ~var_2.x);
}

