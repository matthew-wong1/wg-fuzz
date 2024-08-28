struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: bool,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: bool,
    b: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: bool,
    b: Struct_3,
    c: vec3<f32>,
    d: u32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec3<i32>(2147483647i, -82536i, i32(-2147483648)), vec3<f32>(473f, -239f, 403f), true, false, vec3<bool>(true, true, true)), vec3<u32>(10290u, 39922u, 0u), vec4<i32>(i32(-2147483648), 44507i, 2147483647i, 2147483647i), vec3<f32>(388f, 1724f, 102f));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<f32>, arg_2: i32) -> bool {
    let var_0 = (any(select(global1.a.e, !global1.a.e, false)) && !(!(true & arg_0.a))) | arg_0.b;
    let var_1 = -_wgslsmith_dot_vec2_i32(-(global1.a.a.zy & global1.a.a.xx), vec2<i32>(countOneBits(1i), arg_2)) <= 1i;
    var var_2 = 0u;
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_1.x))))), _wgslsmith_f_op_f32(global1.d.x * global1.d.x)));
    var var_4 = reverseBits(global1.c.x);
    return var_0;
}

fn func_2() -> Struct_4 {
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    let var_0 = global1.c;
    let var_1 = Struct_5(!(global1.a.d & func_3(Struct_3(true, global1.a.e.x), vec2<f32>(1089f, global1.d.x), var_0.x)), Struct_3(true, global1.a.e.x), global1.d, 36904u, firstLeadingBit(~var_0.yx));
    return Struct_4(~var_0.yz << (~vec2<u32>(~u_input.a.x, ~u_input.b.x) % vec2<u32>(32u)));
}

fn func_1(arg_0: bool) -> Struct_3 {
    let var_0 = Struct_1(-max(global1.c.yxy, ~(vec3<i32>(global1.c.x, 2147483647i, 2147483647i) & global1.c.yxw)), vec3<f32>(global1.a.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.b.x - _wgslsmith_f_op_f32(-global1.a.b.x)))), -510f), global1.a.e.x, true, !vec3<bool>(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global1.b.x, 13u)], 1u) != (global0[_wgslsmith_index_u32(u_input.b.x, 13u)] << (global0[_wgslsmith_index_u32(global1.b.x, 13u)] % 32u)), true, arg_0));
    var var_1 = Struct_4(_wgslsmith_mod_vec2_i32(select(_wgslsmith_mult_vec2_i32(~vec2<i32>(-20118i, var_0.a.x), var_0.a.yy), -(~vec2<i32>(1i, global1.c.x)), !any(global1.a.e)), _wgslsmith_sub_vec2_i32(-select(vec2<i32>(var_0.a.x, var_0.a.x), vec2<i32>(-62467i, 49738i), true), _wgslsmith_sub_vec2_i32(~vec2<i32>(38477i, 2884i), vec2<i32>(global1.c.x, -44211i) ^ vec2<i32>(var_0.a.x, -1i)))));
    var_1 = func_2();
    var var_2 = _wgslsmith_div_i32(min(0i, global1.c.x), min(reverseBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.c.x, var_1.a.x, 0i, var_0.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(-15508i, -1i, global1.c.x, var_1.a.x), global1.c))), var_0.a.x));
    var var_3 = ~vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), abs(global1.b.yy))), _wgslsmith_sub_u32(4294967295u, u_input.a.x), 38856u, max(_wgslsmith_mod_u32(u_input.a.x, countOneBits(global1.b.x)), global1.b.x));
    return Struct_3(arg_0 | arg_0, true);
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>, arg_3: vec2<i32>) -> Struct_4 {
    var var_0 = Struct_2(global1.a, ~(~vec3<u32>(0u, 4294967295u, 4294967295u)), -(~(-vec4<i32>(global1.a.a.x, -1i, global1.c.x, global1.c.x))), _wgslsmith_f_op_vec3_f32(round(global1.d)));
    var var_1 = func_1(arg_1.a);
    global0 = array<u32, 13>();
    global0 = array<u32, 13>();
    let var_2 = Struct_2(var_0.a, vec3<u32>(_wgslsmith_dot_vec4_u32(select(~vec4<u32>(arg_0, 4294967295u, 47297u, 0u), ~u_input.b, global0[_wgslsmith_index_u32(1u, 13u)] != global0[_wgslsmith_index_u32(0u, 13u)]), vec4<u32>(1u, _wgslsmith_mult_u32(68095u, 7196u), min(31026u, 13027u), _wgslsmith_dot_vec2_u32(var_0.b.yz, global1.b.yz))), ~_wgslsmith_dot_vec3_u32(u_input.b.zwz, _wgslsmith_div_vec3_u32(global1.b, u_input.b.wxx)), 40476u), firstLeadingBit(global1.c), global1.a.b);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global0[_wgslsmith_index_u32(~72981u, 13u)];
    let var_1 = func_4(14120u, func_1((u_input.b.x >= 58263u) && all(select(vec4<bool>(global1.a.e.x, global1.a.c, global1.a.c, global1.a.e.x), vec4<bool>(true, false, true, global1.a.c), global1.a.e.x))), select(vec3<bool>(true, !func_3(Struct_3(global1.a.c, global1.a.c), global1.a.b.yx, global1.c.x), global1.a.c), vec3<bool>(global1.c.x == 1i, func_3(Struct_3(global1.a.d, global1.a.d), global1.a.b.yz, global1.c.x), (false || global1.a.d) && global1.a.c), vec3<bool>(global1.b.x == _wgslsmith_mult_u32(10963u, global0[_wgslsmith_index_u32(4294967295u, 13u)]), global1.a.a.x < func_2().a.x, all(!vec4<bool>(global1.a.c, global1.a.d, global1.a.e.x, false)))), global1.c.zy);
    let var_2 = Struct_2(global1.a, _wgslsmith_add_vec3_u32(~(~vec3<u32>(u_input.b.x, global0[_wgslsmith_index_u32(63725u, 13u)], 1u)), ~reverseBits(vec3<u32>(u_input.b.x, u_input.a.x, global1.b.x))), (~(~global1.c) ^ (vec4<i32>(-1i) * -global1.c)) | ~global1.c, vec3<f32>(global1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-908f))), global1.d.x));
    let var_3 = -1i;
    var var_4 = _wgslsmith_add_vec4_i32(abs(firstTrailingBit(var_2.c)), var_2.c);
    let var_5 = var_2.a.a;
    let var_6 = var_2.a.a.x | var_4.x;
    var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_3, 7216i) << (~var_2.b.x % 32u), _wgslsmith_div_i32(-1408i, -52167i) ^ -var_1.a.x, ~(~0i), var_3) & vec4<i32>(var_5.x, var_4.x, -var_6, _wgslsmith_mod_i32(~global1.a.a.x, min(-28938i, 0i))), global1.c);
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(620f, global1.a.b.x)))), -438f, var_2.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(368f, -193f)))) + global1.a.b.x)), _wgslsmith_mult_i32(var_2.a.a.x, _wgslsmith_add_i32(func_4(1u, Struct_3(var_2.a.e.x, true), var_2.a.e, var_2.c.ww).a.x, ~var_3) >> (0u % 32u)), vec3<i32>(reverseBits(8840i), firstLeadingBit(global1.a.a.x) << (min(~global1.b.x, ~1u) % 32u), _wgslsmith_dot_vec3_i32(select(firstLeadingBit(vec3<i32>(var_3, var_3, var_3)), vec3<i32>(var_4.x, -30514i, var_3), vec3<bool>(true, var_2.a.e.x, global1.a.e.x)), select(var_5, vec3<i32>(42617i, var_4.x, -2147483647i), select(vec3<bool>(false, true, var_2.a.d), global1.a.e, true)))), var_2.d.zy);
}

