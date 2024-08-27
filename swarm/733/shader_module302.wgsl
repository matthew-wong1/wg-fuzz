struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_5 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_5, 22>;

var<private> global2: Struct_2 = Struct_2(0u, vec2<i32>(2147483647i, 0i));

var<private> global3: bool = true;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<f32>, arg_1: i32) -> vec2<f32> {
    var var_0 = global2.b.x;
    let var_1 = Struct_4(24708u >= _wgslsmith_dot_vec2_u32(min(_wgslsmith_sub_vec2_u32(u_input.b.zw, u_input.b.zx), ~vec2<u32>(global2.a, global2.a)), countOneBits(vec2<u32>(66656u, 25956u)) ^ max(u_input.b.xw, vec2<u32>(61043u, 0u))), ~u_input.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.c.x, arg_0.x)) + _wgslsmith_div_f32(588f, global0.c.x)), global0.c.x, -1747f, global0.c.x)), _wgslsmith_div_i32(-25197i ^ -u_input.c.x, _wgslsmith_sub_i32(arg_1, ~0i)));
    global3 = true;
    let var_2 = firstTrailingBit(~vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, firstTrailingBit(var_1.b)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, global2.a, var_1.b.x), global0.b.wyz), _wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(0u, global0.b.x, global2.a, 1u))), 86099u, 22873u));
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(-firstTrailingBit(u_input.a.x), countOneBits(-2147483647i), global0.d, firstTrailingBit(-global0.d)) & (vec4<i32>(~u_input.c.x, global2.b.x, -2147483647i, 1i) ^ vec4<i32>(_wgslsmith_add_i32(-1i, global0.d), arg_1, global0.d, 3502i)), ~vec4<i32>(2147483647i, 8924i, -47563i, -global0.d) & min(-firstTrailingBit(vec4<i32>(-3992i, u_input.c.x, -1i, global2.b.x)), select(min(vec4<i32>(global0.d, 23867i, u_input.c.x, arg_1), vec4<i32>(1i, u_input.c.x, 18773i, 13991i)), _wgslsmith_div_vec4_i32(vec4<i32>(arg_1, -18726i, 1i, global2.b.x), vec4<i32>(-27235i, var_1.d, 32621i, -1i)), true)));
    return vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(636f - _wgslsmith_f_op_f32(-1352f * var_1.c.x)) - _wgslsmith_f_op_f32(select(1403f, global0.c.x, true))))));
}

fn func_4(arg_0: vec2<f32>) -> vec3<i32> {
    let var_0 = 2737f;
    var var_1 = Struct_3(Struct_2(~u_input.b.x, -(_wgslsmith_add_vec2_i32(vec2<i32>(global2.b.x, 0i), vec2<i32>(0i, -2147483647i)) >> (vec2<u32>(2191u, u_input.b.x) % vec2<u32>(32u)))));
    global0 = Struct_4(select(!all(vec2<bool>(global0.a, true)), global0.a, true), ~reverseBits(_wgslsmith_div_vec4_u32(~vec4<u32>(1u, global2.a, global2.a, 1u), vec4<u32>(var_1.a.a, global0.b.x, u_input.b.x, 14201u))), _wgslsmith_f_op_vec4_f32(max(global0.c, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.c), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c.x, arg_0.x, 904f, -1372f) - global0.c)))))), 48569i);
    return vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.a.b.x, min(global2.b.x, 29486i)), vec3<i32>(18311i, i32(-1i) * -1i, var_1.a.b.x)), 11062i << ((abs(u_input.b.x) | firstLeadingBit(1u)) % 32u), -u_input.a.x), countOneBits(-22218i), global0.d);
}

fn func_2() -> Struct_4 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(~50928u, global0.b.x ^ 94546u) & (global0.b.x ^ 6150u), 1u), 22u)];
    let var_1 = _wgslsmith_div_vec3_i32(func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(-589f, 1000f, global0.c.x), -39537i | global0.d)))), -vec3<i32>(global0.d, min(_wgslsmith_sub_i32(u_input.a.x, global2.b.x), -31062i), 0i >> (abs(global0.b.x) % 32u)));
    return Struct_4(global0.a, vec4<u32>(1u, global2.a, 25368u, _wgslsmith_clamp_u32(31467u >> (global2.a % 32u), _wgslsmith_mod_u32(global2.a, _wgslsmith_dot_vec3_u32(global0.b.zxx, u_input.b.xyx)), _wgslsmith_dot_vec3_u32(vec3<u32>(3117u, global0.b.x, 0u), vec3<u32>(global2.a, global2.a, 63877u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0.c, _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global0.c.x, global0.c.x, 367f, -502f))), false)) - _wgslsmith_f_op_vec4_f32(-global0.c)), 18931i);
}

fn func_5(arg_0: Struct_4) -> vec4<i32> {
    let var_0 = func_2();
    let var_1 = func_2();
    global0 = func_2();
    let var_2 = !(!(!arg_0.a));
    var var_3 = global2.b;
    return min(vec4<i32>(firstTrailingBit(1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_3.x, u_input.c.x), -global2.b), _wgslsmith_dot_vec4_i32(vec4<i32>(-34379i, arg_0.d, -6247i, u_input.c.x), vec4<i32>(-1i, 2147483647i, 1i, u_input.c.x)) << (_wgslsmith_sub_u32(var_1.b.x, 13075u) % 32u), 1i) | -vec4<i32>(_wgslsmith_clamp_i32(global2.b.x, u_input.a.x, -20835i), -23730i, var_3.x, ~arg_0.d), ~vec4<i32>(reverseBits(abs(22941i)), max(u_input.a.x, global0.d), _wgslsmith_mult_i32(-1762i, 25417i), u_input.c.x));
}

fn func_6(arg_0: vec4<i32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: Struct_3) -> u32 {
    var var_0 = global0.c.x;
    global0 = func_2();
    var var_1 = false;
    var_1 = _wgslsmith_f_op_f32(-526f * _wgslsmith_f_op_f32(sign(-298f))) >= arg_1.c.x;
    global3 = global0.a;
    return 63481u;
}

fn func_1(arg_0: vec4<bool>, arg_1: vec3<bool>) -> Struct_2 {
    let var_0 = func_6(reverseBits(func_5(func_2())), Struct_4(!(global0.c.x > _wgslsmith_f_op_f32(-1703f + global0.c.x)), ~u_input.b ^ u_input.b, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-global0.c))))), 47502i), Struct_5(select(select(!arg_0.ww, select(arg_0.wy, arg_1.zy, arg_1.x), true), !vec2<bool>(true, global0.a), vec2<bool>(true || global0.a, arg_0.x))), Struct_3(Struct_2(firstLeadingBit(_wgslsmith_sub_u32(1u, u_input.b.x)), select(max(global2.b, u_input.a.zx), vec2<i32>(u_input.a.x, 1i), vec2<bool>(arg_1.x, false)))));
    let var_1 = !vec2<bool>(!global0.a | arg_1.x, any(select(!vec4<bool>(false, arg_0.x, false, global0.a), vec4<bool>(true, arg_0.x, true, false), arg_0)));
    let var_2 = u_input.a.x >> ((firstLeadingBit(global2.a) << (~_wgslsmith_clamp_u32(u_input.b.x | 0u, _wgslsmith_add_u32(var_0, global2.a), 0u) % 32u)) % 32u);
    var var_3 = select(arg_1, vec3<bool>(arg_0.x, all(!(!arg_0.xyy)), true), select(arg_1, arg_1, false));
    var var_4 = func_2();
    return Struct_2((var_4.b.x ^ (_wgslsmith_mult_u32(0u, var_0) >> (u_input.b.x % 32u))) | firstLeadingBit(1u), global2.b);
}

fn func_7(arg_0: Struct_2) -> StorageBuffer {
    return StorageBuffer(-3934i);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_5, 22>();
    let x = u_input.a;
    s_output = func_7(func_1(!(!select(vec4<bool>(true, global0.a, global0.a, global0.a), vec4<bool>(true, false, true, global0.a), vec4<bool>(false, global0.a, false, global0.a))), vec3<bool>(false, global0.a, any(vec4<bool>(false, global0.a, global0.a, false)))));
}

