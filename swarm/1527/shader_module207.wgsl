struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec4<i32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec3<bool>(false, true, true), Struct_3(-1191f, vec3<u32>(49014u, 91590u, 1u)), vec4<i32>(2147483647i, 1i, 716i, 1i));

var<private> global1: array<Struct_4, 16>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> f32 {
    global0 = Struct_4(!global0.a, Struct_3(_wgslsmith_f_op_f32(global0.b.a + global0.b.a), global0.b.b), _wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -global0.c, firstTrailingBit(~global0.c)), global0.c));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1542f)), 827f))));
    var var_1 = vec2<i32>(-1i >> (_wgslsmith_sub_u32(~(~u_input.c), global0.b.b.x) % 32u), ~(abs(i32(-1i) * -1i) >> (_wgslsmith_mod_u32(37719u, u_input.c) % 32u)));
    var var_2 = 0u;
    let var_3 = vec4<u32>(firstLeadingBit(85379u), _wgslsmith_dot_vec4_u32(abs(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, u_input.c, 78734u, global0.b.b.x), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.a)), ~vec4<u32>(global0.b.b.x, u_input.a, 1u, global0.b.b.x))), vec4<u32>(u_input.c, ~max(0u, 1u), ~21358u, 1981u)), global0.b.b.x, 59375u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.a) + _wgslsmith_f_op_f32(-global0.b.a));
}

fn func_2(arg_0: u32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    global1 = array<Struct_4, 16>();
    let var_0 = global0.c;
    var var_1 = _wgslsmith_f_op_f32(func_3());
    let var_2 = arg_2;
    let var_3 = var_2.c.e.x;
    return _wgslsmith_dot_vec3_i32(vec3<i32>(global0.c.x, u_input.b.x, global0.c.x), -vec3<i32>(max(i32(-1i) * -2147483647i, select(arg_2.b.x, -36640i, true)), var_0.x, 0i));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: f32, arg_3: vec3<u32>) -> i32 {
    global0 = Struct_4(global0.a, global0.b, ~_wgslsmith_mult_vec4_i32(vec4<i32>(global0.c.x, 22490i >> (global0.b.b.x % 32u), global0.c.x, func_2(1u, -1924f, Struct_2(4294967295u, vec4<i32>(-2147483647i, 523i, arg_0.x, arg_0.x), Struct_1(arg_2, arg_1.wy, vec4<u32>(1u, arg_3.x, 44384u, 40472u), arg_3, vec4<bool>(global0.a.x, true, false, false))), Struct_3(-231f, vec3<u32>(arg_3.x, 59633u, u_input.a)))), _wgslsmith_div_vec4_i32(vec4<i32>(arg_0.x, u_input.b.x, u_input.b.x, 2147483647i), global0.c) & _wgslsmith_add_vec4_i32(global0.c, vec4<i32>(-34985i, -37446i, global0.c.x, u_input.b.x))));
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~(~(arg_3.x & global0.b.b.x)), _wgslsmith_div_u32(abs(46427u), ~(19460u >> (global0.b.b.x % 32u))), 1u), ~vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.b.b.x, global0.b.b.x, 13173u), arg_3)), _wgslsmith_dot_vec3_u32(~global0.b.b, global0.b.b), ~_wgslsmith_div_u32(55427u, global0.b.b.x), _wgslsmith_div_u32(arg_3.x, global0.b.b.x))), 16u)];
    global0 = Struct_4(select(vec3<bool>(!any(vec2<bool>(true, var_0.a.x)), -423f >= _wgslsmith_f_op_f32(min(-1149f, arg_1.x)), true), !select(select(var_0.a, var_0.a, global0.a.x), global0.a, var_0.a), any(vec4<bool>(var_0.a.x, true, false, any(vec4<bool>(false, global0.a.x, global0.a.x, global0.a.x))))), Struct_3(431f, max(_wgslsmith_mod_vec3_u32(~vec3<u32>(arg_3.x, 68685u, arg_3.x), vec3<u32>(global0.b.b.x, 0u, arg_3.x)), arg_3)), global0.c);
    let var_1 = ~vec4<u32>(~(_wgslsmith_dot_vec4_u32(vec4<u32>(34461u, 1u, arg_3.x, u_input.a), vec4<u32>(32081u, global0.b.b.x, u_input.c, 65943u)) >> (22323u % 32u)), 39336u, var_0.b.b.x | ~var_0.b.b.x, ~_wgslsmith_dot_vec2_u32(abs(vec2<u32>(arg_3.x, u_input.c)), abs(vec2<u32>(0u, 0u))));
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.c), 16u)];
    return abs(global0.c.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(1000f, ~(~vec3<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 7267u, global0.b.b.x), global0.b.b), 4294967295u)));
    let var_1 = _wgslsmith_div_i32(global0.c.x & u_input.b.x, -_wgslsmith_add_i32(func_1(vec3<i32>(2147483647i, 11973i, global0.c.x), vec4<f32>(378f, var_0.a, var_0.a, 317f), 682f, vec3<u32>(29912u, 5664u, 58338u)), -30006i) ^ 28249i);
    let var_2 = var_0.b | reverseBits(~(~vec3<u32>(var_0.b.x, 43815u, u_input.a)));
    var var_3 = Struct_4(vec3<bool>(_wgslsmith_f_op_f32(-1237f * var_0.a) > 1609f, (any(vec4<bool>(global0.a.x, false, true, global0.a.x)) | !global0.a.x) == global0.a.x, global0.c.x < abs(1i)), global0.b, -vec4<i32>(var_1, -34122i, abs(u_input.b.x), reverseBits(u_input.b.x)) >> ((vec4<u32>(0u, var_0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, global0.b.b.x, u_input.a, var_0.b.x), vec4<u32>(var_2.x, var_0.b.x, global0.b.b.x, 0u)), ~global0.b.b.x) >> (firstLeadingBit(vec4<u32>(var_2.x, 70976u, 112070u, 81984u) << (vec4<u32>(var_2.x, 26454u, 40962u, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_4 = ~2147483647i;
    var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(356f + var_0.a) - _wgslsmith_f_op_f32(-global0.b.a))))), var_0.b);
    var_3 = Struct_4(var_3.a, var_3.b, firstTrailingBit(vec4<i32>(-(var_4 | 0i), _wgslsmith_div_i32(1i, 1i), ~2147483647i, 1i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.a, global0.b.b.x), var_2.x), global0.b.b.x), ~abs(global0.b.b.yx)), var_3.b.a);
}

