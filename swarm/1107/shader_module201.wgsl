struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: array<Struct_3, 28>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = reverseBits(~u_input.a);
    var_0 = reverseBits(_wgslsmith_sub_vec2_u32(abs(arg_2.zz), arg_2.yy >> (u_input.a % vec2<u32>(32u))));
    var var_1 = Struct_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -524f)));
    var var_2 = ~(~(~(firstLeadingBit(var_0.x) >> (35324u % 32u))));
    global0 = array<i32, 12>();
    return (vec2<i32>(1i, ~_wgslsmith_add_i32(1i, -2147483647i)) >> (abs(vec2<u32>(0u, arg_2.x)) % vec2<u32>(32u))) ^ _wgslsmith_mult_vec2_i32(countOneBits(-countOneBits(vec2<i32>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]))), firstLeadingBit(~(-vec2<i32>(0i, global0[_wgslsmith_index_u32(21488u, 12u)]))));
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(false & (false | any(vec4<bool>(true, false, false, true))), 950f);
    global1 = array<Struct_3, 28>();
    var var_1 = _wgslsmith_add_vec2_i32(firstLeadingBit(abs(vec2<i32>(-1i) * -vec2<i32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], global0[_wgslsmith_index_u32(u_input.b, 12u)]))), func_3(Struct_4(vec2<bool>(!var_0.a, var_0.a)), var_0, countOneBits(~countOneBits(vec3<u32>(57751u, u_input.a.x, u_input.a.x)))));
    global0 = array<i32, 12>();
    let var_2 = i32(-1i) * -1i;
    return Struct_2(!((_wgslsmith_div_f32(var_0.b, var_0.b) > var_0.b) || true), var_0.b);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: Struct_3, arg_3: vec2<i32>) -> vec4<bool> {
    var var_0 = 25554u;
    let var_1 = arg_2.b;
    global1 = array<Struct_3, 28>();
    var_0 = firstLeadingBit(u_input.a.x);
    let var_2 = func_2();
    return !vec4<bool>(!any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, arg_0.a))), true, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_2.b.a, arg_3.x), vec3<i32>(var_1.a, arg_3.x, 34476i)) <= arg_2.b.a, arg_0.a);
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> vec2<i32> {
    let var_0 = 4294967295u;
    global0 = array<i32, 12>();
    let var_1 = func_4(func_2(), arg_0.c.a, Struct_3(arg_0.a, Struct_1(arg_0.b.a, -1881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b))), func_2(), arg_0.d), max(_wgslsmith_mod_vec2_i32(~vec2<i32>(global0[_wgslsmith_index_u32(10563u, 12u)], 29643i), vec2<i32>(arg_0.b.a, arg_0.b.a)) & vec2<i32>(arg_0.b.a, arg_0.b.a), _wgslsmith_mod_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(arg_0.a, 12u)], 18682i), vec2<i32>(arg_0.b.a, global0[_wgslsmith_index_u32(u_input.a.x, 12u)])) << (~vec2<u32>(u_input.b, arg_0.d.x) % vec2<u32>(32u))));
    global0 = array<i32, 12>();
    global1 = array<Struct_3, 28>();
    return vec2<i32>(~(~(~reverseBits(global0[_wgslsmith_index_u32(arg_0.d.x, 12u)]))), arg_0.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    let var_1 = all(!(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true), vec4<bool>(true, false, false, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), true))));
    var var_2 = ~(~select(-29892i ^ _wgslsmith_mult_i32(-5088i, global0[_wgslsmith_index_u32(9058u, 12u)]), ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 2147483647i, -52843i), vec3<i32>(-8401i, 39766i, global0[_wgslsmith_index_u32(1u, 12u)])), true));
    let var_3 = _wgslsmith_mod_vec2_i32(func_1(global1[_wgslsmith_index_u32(~(~var_0), 28u)], _wgslsmith_f_op_f32(f32(-1f) * -379f)) ^ -(~vec2<i32>(-1i, global0[_wgslsmith_index_u32(u_input.b, 12u)])), vec2<i32>(reverseBits(max(-1i, abs(-1759i))), min(-global0[_wgslsmith_index_u32(1u, 12u)], func_1(Struct_3(u_input.a.x, Struct_1(8961i, -1306f, 770f), Struct_2(var_1, -504f), vec3<u32>(0u, var_0, var_0)), _wgslsmith_f_op_f32(f32(-1f) * -195f)).x)));
    var var_4 = 1f;
    var_2 = var_3.x;
    var var_5 = vec4<i32>(reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, 38499u), 12u)]) << (~u_input.a.x % 32u), 0i, 6136i >> (countOneBits(~abs(u_input.a.x)) % 32u), var_3.x);
    var var_6 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1528f, 632f)))) + _wgslsmith_f_op_f32(965f * _wgslsmith_f_op_f32(func_2().b + _wgslsmith_f_op_f32(trunc(-1430f))))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1316f)), _wgslsmith_f_op_f32(f32(-1f) * -841f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(112f * -230f), _wgslsmith_f_op_f32(f32(-1f) * -1820f), var_1 || true)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -813f) - 967f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -650f), 2192f)))));
    var_5 = reverseBits(~(~firstLeadingBit(vec4<i32>(var_5.x, var_3.x, global0[_wgslsmith_index_u32(0u, 12u)], var_5.x)))) & (vec4<i32>(~reverseBits(-2147483647i), -29397i, global0[_wgslsmith_index_u32(var_0, 12u)], func_3(Struct_4(vec2<bool>(var_1, var_1)), func_2(), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 11535u, 9516u), vec3<u32>(1u, 16714u, u_input.a.x))).x) ^ -vec4<i32>(countOneBits(global0[_wgslsmith_index_u32(19228u, 12u)]), -2147483647i, max(var_3.x, -2147483647i), ~var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(52458u, 0u, 27000u), vec2<i32>(_wgslsmith_sub_i32(-func_1(global1[_wgslsmith_index_u32(4294967295u, 28u)], 819f).x, ~var_5.x), abs(-20171i)), ~vec4<u32>(0u, ~u_input.a.x, ~1u, u_input.a.x) | reverseBits(firstLeadingBit(~vec4<u32>(var_0, var_0, 28192u, u_input.b))));
}

