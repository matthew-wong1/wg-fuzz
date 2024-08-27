struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false));

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-1i, 2147483647i));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    global0 = array<vec4<bool>, 23>();
    var var_0 = arg_2.a;
    var var_1 = arg_1.x;
    var var_2 = reverseBits(~vec3<u32>(select(arg_2.a, arg_2.a, true) & reverseBits(arg_2.a), 4294967295u, 15256u));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x));
    return true;
}

fn func_2() -> Struct_1 {
    global1 = Struct_2(vec2<i32>(global1.a.x, reverseBits(~2147483647i)));
    let var_0 = true;
    var var_1 = Struct_1(~_wgslsmith_add_u32(~(~u_input.b), _wgslsmith_add_u32(u_input.d.x, u_input.b)));
    let var_2 = Struct_2(vec2<i32>(((u_input.c | 1i) >> (abs(u_input.d.x) % 32u)) | abs(-30690i), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.c, ~global1.a.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.x, u_input.c), global1.a))));
    let var_3 = u_input.b;
    return Struct_1(0u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    let var_0 = !(select(true, arg_3 >= 58675i, _wgslsmith_clamp_i32(arg_1.a.x, u_input.a, u_input.c) < 17414i) || true);
    global0 = array<vec4<bool>, 23>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -344f));
    let var_2 = arg_1;
    var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-919f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(258f, 192f)) - _wgslsmith_div_f32(262f, 1000f))), _wgslsmith_f_op_f32(1169f + -1171f), var_0)), _wgslsmith_div_f32(-1018f, _wgslsmith_f_op_f32(max(-821f, _wgslsmith_f_op_f32(-200f * _wgslsmith_f_op_f32(round(-1348f))))))));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(11786u, firstLeadingBit(~56641u), 41543u, func_2().a), max(vec4<u32>(_wgslsmith_div_u32(arg_0.a, _wgslsmith_div_u32(u_input.d.x, u_input.d.x)), firstTrailingBit(0u) & arg_0.a, 1u, firstLeadingBit(~3457u)), vec4<u32>(arg_0.a, ~(~0u), ~27236u, arg_0.a)), _wgslsmith_div_vec4_u32(vec4<u32>(max(_wgslsmith_mult_u32(arg_0.a, 34768u), ~14468u), _wgslsmith_add_u32(1u, arg_0.a), max(~14669u, ~arg_0.a), 4294967295u), ~(~u_input.d & _wgslsmith_sub_vec4_u32(u_input.d, u_input.d))));
    let var_1 = !(!global0[_wgslsmith_index_u32(4295u >> (_wgslsmith_clamp_u32(var_0.x, u_input.b, firstLeadingBit(4294967295u)) % 32u), 23u)]);
    let var_2 = -vec4<i32>(arg_1.a.x, u_input.c, -2147483647i, global1.a.x);
    return Struct_2(arg_1.a);
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    let var_0 = u_input.b;
    global1 = arg_0;
    var var_1 = func_4(Struct_1(firstLeadingBit(4294967295u)), arg_0);
    var_1 = Struct_2(vec2<i32>(abs(~arg_0.a.x), -1i) >> (u_input.d.wx % vec2<u32>(32u)));
    let var_2 = Struct_2(max(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a | -3205i, arg_0.a.x), vec2<i32>(var_1.a.x, var_1.a.x)), vec2<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(global1.a.x, arg_0.a.x), ~0i), _wgslsmith_sub_i32(0i, 5903i))));
    return func_2();
}

fn func_6(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_2;
    var var_1 = -global1.a.x;
    var var_2 = ~0u;
    var_2 = _wgslsmith_sub_u32(~(~(~arg_0.x)) << (~(~88561u) % 32u), _wgslsmith_mult_u32(30266u, 17717u));
    global1 = Struct_2(min(abs(global1.a), global1.a));
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 23>();
    var var_0 = func_6(_wgslsmith_add_vec2_u32(vec2<u32>(~(6692u ^ u_input.d.x), _wgslsmith_add_u32(~u_input.d.x, ~60677u)), _wgslsmith_mod_vec2_u32(~u_input.d.wy, ~vec2<u32>(1u, 1u))), vec3<u32>(u_input.d.x, ~(~(u_input.d.x << (u_input.d.x % 32u))), ~18546u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-313f, 1362f), 844f, !func_1(Struct_2(global1.a), global0[_wgslsmith_index_u32(u_input.b, 23u)], Struct_1(0u), vec2<f32>(-273f, -365f))))), func_5(func_4(func_3(func_2(), Struct_2(vec2<i32>(u_input.c, u_input.c)), func_2(), i32(-1i) * -26700i), Struct_2(-global1.a))));
    let var_1 = func_5(func_4(Struct_1(~u_input.b), func_4(func_3(Struct_1(u_input.b), Struct_2(vec2<i32>(global1.a.x, 24484i)), Struct_1(u_input.d.x), ~(-82862i)), func_4(func_5(Struct_2(vec2<i32>(u_input.a, 1i))), func_4(Struct_1(63035u), Struct_2(vec2<i32>(2147483647i, global1.a.x)))))));
    let var_2 = _wgslsmith_add_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(select(global1.a.x, -32594i, false), _wgslsmith_div_i32(-41676i, 1i), ~u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(~(~20063i), _wgslsmith_sub_i32(-1954i, _wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(50457i, 25560i))), u_input.a), ~firstLeadingBit(_wgslsmith_div_vec3_i32(vec3<i32>(global1.a.x, 2147483647i, 0i), vec3<i32>(u_input.a, -22763i, global1.a.x))), ~vec3<i32>(u_input.c & 1i, global1.a.x << (u_input.b % 32u), ~(-14232i))));
    let var_3 = Struct_2(_wgslsmith_sub_vec2_i32(func_4(Struct_1(_wgslsmith_clamp_u32(1u, u_input.b, 4294967295u)), func_4(var_1, func_4(var_1, Struct_2(var_2.zy)))).a, ~vec2<i32>(u_input.a ^ 1i, 20918i)));
    let var_4 = func_5(Struct_2(-_wgslsmith_mult_vec2_i32(global1.a, vec2<i32>(-1i, global1.a.x))));
    global1 = func_4(var_1, Struct_2(-var_3.a));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, u_input.c, 75089u, _wgslsmith_div_f32(-863f, _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -555f))))));
}

