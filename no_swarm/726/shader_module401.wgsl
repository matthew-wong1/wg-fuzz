struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-862f, false, vec2<bool>(true, true), 54522u);

var<private> global1: vec3<bool> = vec3<bool>(true, true, false);

var<private> global2: array<vec3<f32>, 30>;

var<private> global3: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(36393u, 1u), vec2<u32>(39969u, 1u), vec2<u32>(0u, 1u), vec2<u32>(118886u, 16619u), vec2<u32>(50461u, 1u), vec2<u32>(42605u, 0u), vec2<u32>(29786u, 4294967295u), vec2<u32>(4294967295u, 0u), vec2<u32>(11053u, 91465u), vec2<u32>(4294967295u, 4897u));

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(507f, true, vec2<bool>(true, true), 4294967295u), Struct_1(-476f, false, vec2<bool>(false, true), 4294967295u), Struct_1(163f, false, vec2<bool>(true, true), 949u), Struct_1(804f, false, vec2<bool>(false, true), 1u), Struct_1(184f, true, vec2<bool>(true, true), 50642u), Struct_1(-597f, false, vec2<bool>(false, false), 4294967295u), Struct_1(121f, false, vec2<bool>(true, true), 1u), Struct_1(-906f, true, vec2<bool>(true, false), 1u), Struct_1(-1406f, false, vec2<bool>(false, false), 0u), Struct_1(-1221f, false, vec2<bool>(true, false), 1u), Struct_1(1000f, true, vec2<bool>(false, true), 54317u), Struct_1(-102f, true, vec2<bool>(false, false), 42769u), Struct_1(-1368f, true, vec2<bool>(true, false), 1u), Struct_1(1039f, false, vec2<bool>(true, false), 1u), Struct_1(-155f, true, vec2<bool>(false, false), 1u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2() -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(reverseBits(global0.d << (~(global0.d >> (4544u % 32u)) % 32u)), 30u)];
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(var_0.x, global0.a))));
    let var_2 = var_0.zx;
    global0 = Struct_1(_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), global0.c.x, global1.xz, 23977u);
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-888f)), _wgslsmith_f_op_f32(-var_2.x))), var_0.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.a)), 305f))), false != (-1i != _wgslsmith_div_i32(u_input.b, u_input.a)), vec2<bool>(true, true), ~0u), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, ~2147483647i, ~u_input.b), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(u_input.b, u_input.a, u_input.a)), vec3<i32>(u_input.a, 2147483647i, -2147483647i) & vec3<i32>(u_input.b, u_input.a, u_input.b), min(vec3<i32>(12567i, u_input.a, u_input.a), vec3<i32>(-46997i, u_input.b, u_input.b)))), vec3<i32>(_wgslsmith_div_i32(~u_input.a, max(u_input.b, -1i)), ~_wgslsmith_div_i32(-37091i, -1i), ~(~9823i))));
}

fn func_3() -> i32 {
    global4 = array<Struct_1, 15>();
    var var_0 = Struct_2(func_2().a, max(_wgslsmith_add_vec3_i32(-vec3<i32>(23626i, u_input.a, u_input.b), _wgslsmith_mod_vec3_i32(abs(vec3<i32>(1i, 1i, u_input.a)), -vec3<i32>(u_input.a, u_input.a, -2147483647i))), _wgslsmith_mod_vec3_i32(~vec3<i32>(-35201i, u_input.b, u_input.b), vec3<i32>(abs(73496i), u_input.a, u_input.b >> (23632u % 32u)))));
    var var_1 = vec3<bool>(global1.x, true, !var_0.a.c.x);
    var var_2 = func_2().a;
    let var_3 = true;
    return u_input.b;
}

fn func_1() -> vec2<f32> {
    var var_0 = func_2();
    let var_1 = Struct_2(func_2().a, vec3<i32>((u_input.b | (u_input.a << (global0.d % 32u))) ^ _wgslsmith_div_i32(_wgslsmith_add_i32(u_input.a, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-5103i, u_input.a, 2147483647i, 2147483647i), vec4<i32>(-2147483647i, u_input.a, u_input.a, var_0.b.x))), reverseBits(-_wgslsmith_mult_i32(-9726i, var_0.b.x)), countOneBits(func_3())));
    global3 = array<vec2<u32>, 10>();
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.a.a, 283f), _wgslsmith_f_op_f32(var_1.a.a - var_1.a.a)), any(vec3<bool>(false, all(global1.yz), !all(vec3<bool>(var_0.a.b, var_0.a.b, true)))), var_1.a.c, ~38652u);
    var var_2 = vec4<bool>(true, global1.x, func_2().a.c.x, (var_0.a.d >= firstLeadingBit(countOneBits(44817u))) == true);
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(global0.a, var_0.a.a), 665f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1633f, -360f)))) - vec2<f32>(var_0.a.a, func_2().a.a)))), vec2<f32>(var_1.a.a, _wgslsmith_f_op_f32(func_2().a.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(630f, global0.a, false))))), func_2().a.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1()))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global0.a, 132f), vec2<f32>(global0.a, global0.a))), vec2<f32>(-1146f, global0.a))))));
    let var_1 = func_2().a;
    let var_2 = global4[_wgslsmith_index_u32(20639u, 15u)];
    var var_3 = func_2();
    var var_4 = func_2();
    var var_5 = func_2().a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_3.a.a, -2217f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-631f - var_4.a.a) - -350f))), 1326f));
}

