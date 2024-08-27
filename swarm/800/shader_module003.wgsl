struct Struct_1 {
    a: f32,
    b: bool,
    c: vec2<bool>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1104f, false, vec2<bool>(true, false), 506f);

var<private> global1: Struct_1;

var<private> global2: array<Struct_2, 7>;

var<private> global3: array<Struct_1, 23>;

var<private> global4: vec2<i32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    global1 = Struct_1(_wgslsmith_f_op_f32(trunc(global0.d)), false, global0.c, -1745f);
    var var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(8449u, ~arg_0.x), 23u)];
    var var_1 = Struct_1(global1.d, (select(global4.x, _wgslsmith_div_i32(global4.x, -2147483647i), var_0.b) <= (_wgslsmith_clamp_i32(global4.x, 0i, 1i) << (arg_0.x % 32u))) & any(!vec3<bool>(global0.b, global1.c.x, true)), vec2<bool>(global1.c.x & any(vec2<bool>(global0.c.x, global1.b)), true), _wgslsmith_f_op_f32(f32(-1f) * -129f));
    let var_2 = global3[_wgslsmith_index_u32(60030u, 23u)];
    global0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-231f)), var_2.d), true, vec2<bool>(false, all(select(vec2<bool>(false, global1.b), vec2<bool>(var_1.b, false), all(global0.c)))), 701f);
    return abs(_wgslsmith_mod_i32(global4.x, global4.x));
}

fn func_2() -> Struct_2 {
    let var_0 = vec4<i32>(global4.x, -(-9196i | global4.x), -1i, func_3(vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.a.x), u_input.a.x, u_input.a.x)));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -867f);
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_1, -287f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.a, -1933f), vec2<f32>(514f, var_1), global0.c.x)))))), vec2<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_f_op_f32(1468f * global1.a)), all(global0.c)));
    global1 = Struct_1(-499f, !(!((var_2.x < -2111f) == all(vec4<bool>(true, true, global1.c.x, global1.b)))), global0.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, global0.a, global0.c.x)) * _wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.d, var_2.x) + _wgslsmith_f_op_f32(-var_2.x)))))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1404f) * _wgslsmith_f_op_f32(-global0.d)), !all(select(vec3<bool>(global0.c.x, false, true), vec3<bool>(false, global0.c.x, true), select(vec3<bool>(false, global1.b, false), vec3<bool>(false, false, false), false))), select(global1.c, vec2<bool>(global0.c.x, all(!vec4<bool>(global1.c.x, global0.c.x, global0.b, global1.b))), all(!vec3<bool>(true, global1.b, global0.c.x))), _wgslsmith_f_op_f32(min(global1.a, var_2.x)));
    return Struct_2(global3[_wgslsmith_index_u32(u_input.a.x, 23u)], global0.b, select(select(select(global1.c, global1.c, vec2<bool>(true, global0.b)), !select(global1.c, vec2<bool>(global1.b, global0.b), false), vec2<bool>(true, false)), select(!select(var_3.c, vec2<bool>(global1.c.x, global0.b), global0.c), var_3.c, vec2<bool>(false, true)), select(!select(vec2<bool>(global1.c.x, true), global0.c, var_3.b), var_3.c, select(select(vec2<bool>(true, global1.c.x), vec2<bool>(var_3.b, global1.b), vec2<bool>(true, global1.c.x)), global1.c, vec2<bool>(true, var_3.c.x)))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec2<u32>, arg_3: vec3<f32>) -> u32 {
    let var_0 = func_2();
    global2 = array<Struct_2, 7>();
    global3 = array<Struct_1, 23>();
    var var_1 = vec3<u32>(0u, 32266u ^ u_input.a.x, 4294967295u);
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))))) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d)), _wgslsmith_f_op_f32(arg_3.x + _wgslsmith_f_op_f32(708f + -1627f)), global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1540f, -175f))))))));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global3[_wgslsmith_index_u32(86881u, 23u)];
    let var_1 = 0i;
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.a.x, ~(_wgslsmith_sub_u32(~4294967295u, func_1(vec2<i32>(-25823i, global4.x), vec4<bool>(global0.b, true, var_0.b, global1.c.x), vec2<u32>(1u, 0u), vec3<f32>(global1.d, -1624f, 319f))) & _wgslsmith_add_u32(~59206u, ~u_input.a.x))), 23u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(global4.x, global4.x, global4.x, var_1), firstTrailingBit(_wgslsmith_mod_vec3_i32(~(-vec3<i32>(8704i, var_1, global4.x)), ~reverseBits(vec3<i32>(3944i, 34884i, -1i)))), -_wgslsmith_mult_vec4_i32(-(~vec4<i32>(0i, global4.x, var_1, global4.x)), -vec4<i32>(var_1, global4.x, var_1, global4.x) >> (vec4<u32>(45962u, 0u, 0u, u_input.a.x) % vec4<u32>(32u))), vec4<f32>(-447f, func_2().a.a, 1229f, global0.a));
}

