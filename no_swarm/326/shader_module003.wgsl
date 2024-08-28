struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false));

var<private> global1: vec4<i32>;

var<private> global2: vec2<bool>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_1() -> Struct_1 {
    global0 = array<vec2<bool>, 24>();
    global2 = !global0[_wgslsmith_index_u32(4294967295u, 24u)];
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -636f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(336f))))), 0i);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec4<f32>, arg_3: Struct_1) -> Struct_2 {
    global0 = array<vec2<bool>, 24>();
    return arg_0;
}

fn func_3(arg_0: vec3<f32>) -> f32 {
    global2 = !global0[_wgslsmith_index_u32(~(_wgslsmith_clamp_u32(~u_input.b.x, _wgslsmith_clamp_u32(4294967295u, u_input.c.x, 43861u), abs(4294967295u)) | ~(~u_input.a.x)), 24u)];
    let var_0 = func_2(func_2(func_2(Struct_2(func_1()), func_2(Struct_2(Struct_1(480f, -4684i)), func_2(Struct_2(Struct_1(arg_0.x, global1.x)), Struct_2(Struct_1(arg_0.x, global1.x)), vec4<f32>(arg_0.x, -447f, -552f, arg_0.x), Struct_1(arg_0.x, 1i)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-704f, arg_0.x, arg_0.x, arg_0.x))), Struct_1(213f, -12727i)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1496f, arg_0.x, 857f, arg_0.x))), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -685f)), func_1()), Struct_2(func_1()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, -1016f, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, 2249f, arg_0.x, 443f))), vec4<f32>(-652f, arg_0.x, arg_0.x, arg_0.x)))), Struct_1(arg_0.x, -global1.x | -global1.x)), func_2(Struct_2(func_2(Struct_2(Struct_1(-1990f, -1i)), Struct_2(Struct_1(arg_0.x, global1.x)), vec4<f32>(arg_0.x, arg_0.x, -1007f, arg_0.x), func_1()).a), func_2(func_2(func_2(Struct_2(Struct_1(474f, global1.x)), Struct_2(Struct_1(353f, global1.x)), vec4<f32>(arg_0.x, -2020f, 117f, -171f), Struct_1(-1000f, -70360i)), Struct_2(Struct_1(-438f, -2147483647i)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(870f, arg_0.x, 818f, arg_0.x))), func_1()), Struct_2(Struct_1(arg_0.x, global1.x)), vec4<f32>(_wgslsmith_div_f32(-397f, arg_0.x), 179f, _wgslsmith_f_op_f32(min(-1863f, -1291f)), arg_0.x), Struct_1(_wgslsmith_f_op_f32(arg_0.x - arg_0.x), 33882i)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1333f, -626f, global2.x)) + _wgslsmith_f_op_f32(arg_0.x - -880f)), _wgslsmith_f_op_f32(ceil(-180f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(494f, arg_0.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(559f, -718f)) * _wgslsmith_f_op_f32(ceil(arg_0.x)))), Struct_1(arg_0.x, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(196f, -1399f, -715f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1061f, 569f, 367f, arg_0.x) * vec4<f32>(-1359f, arg_0.x, arg_0.x, -2644f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1298f, arg_0.x, 1000f)), !select(vec4<bool>(global2.x, false, false, global2.x), vec4<bool>(true, false, true, false), global2.x)))), func_1());
    global0 = array<vec2<bool>, 24>();
    var var_1 = _wgslsmith_f_op_f32(abs(-1138f));
    var var_2 = true;
    return _wgslsmith_f_op_f32(-var_0.a.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(Struct_2(func_1()), Struct_2(func_1()), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1051f + -870f) - _wgslsmith_f_op_f32(422f * 1391f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(1062f * 252f), _wgslsmith_div_f32(-1000f, -363f))), 1249f, -349f, 1f), func_1());
    global1 = select(_wgslsmith_sub_vec4_i32(~select(vec4<i32>(global1.x, var_0.a.b, var_0.a.b, -20004i), vec4<i32>(var_0.a.b, 5283i, global1.x, var_0.a.b), vec4<bool>(true, false, global2.x, global2.x)), ~(~vec4<i32>(global1.x, -2147483647i, 38474i, var_0.a.b))) | countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, global1.x, global1.x, var_0.a.b), vec4<i32>(global1.x, -1i, 0i, global1.x)), vec4<i32>(40770i, var_0.a.b, global1.x, global1.x))), select((select(vec4<i32>(var_0.a.b, var_0.a.b, 1i, var_0.a.b), vec4<i32>(-12803i, 2147483647i, 1i, 0i), false) >> (vec4<u32>(u_input.a.x, 16245u, 4294967295u, 4294967295u) % vec4<u32>(32u))) ^ ~abs(vec4<i32>(global1.x, 2625i, 0i, 9260i)), vec4<i32>(-2147483647i, ~(-2147483647i), 34002i, -27939i << (u_input.c.x % 32u)), !any(!vec3<bool>(false, global2.x, false))), global2.x);
    let var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_f32(select(406f, func_1().a, true));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.a.a + var_0.a.a), var_0.a.a), _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-457f, 558f, 434f), vec3<f32>(-968f, var_0.a.a, 630f), vec3<bool>(global2.x, global2.x, true)))))))), _wgslsmith_mod_i32(44880i, -(global1.x << (u_input.a.x % 32u))));
    global2 = vec2<bool>(true, true);
    let x = u_input.a;
    s_output = StorageBuffer(-10308i, u_input.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(var_3.a)), _wgslsmith_f_op_f32(-1432f * var_3.a))), vec2<f32>(_wgslsmith_f_op_f32(var_0.a.a * 752f), -312f), 1i);
}

