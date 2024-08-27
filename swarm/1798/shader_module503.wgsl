struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec2<bool>,
    d: Struct_2,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(140f, vec2<bool>(true, true), vec2<bool>(true, true), Struct_2(-198f, Struct_1(vec4<i32>(16419i, 2147483647i, i32(-2147483648), 6865i), vec3<u32>(56185u, 6264u, 4294967295u))), vec2<u32>(0u, 0u));

var<private> global1: array<vec4<f32>, 6>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> Struct_2 {
    let var_0 = ~global0.d.b.b;
    global1 = array<vec4<f32>, 6>();
    return global0.d;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> i32 {
    return abs(-firstTrailingBit(u_input.a)) >> (~56394u % 32u);
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> Struct_3 {
    global0 = Struct_3(arg_1.a, !select(select(select(global0.c, global0.c, true), arg_1.b, vec2<bool>(global0.b.x, true)), !select(vec2<bool>(arg_1.b.x, arg_1.b.x), arg_1.c, vec2<bool>(arg_1.b.x, arg_1.c.x)), vec2<bool>(-2125f >= global0.a, all(vec4<bool>(global0.b.x, global0.c.x, global0.b.x, global0.b.x)))), vec2<bool>(true, true), func_1(), select(~_wgslsmith_sub_vec2_u32(select(vec2<u32>(u_input.b, u_input.b), vec2<u32>(arg_2, u_input.c.x), global0.c.x), _wgslsmith_mod_vec2_u32(global0.e, arg_1.d.b.b.zx)), u_input.c.yz, global0.d.b.b.x < 65381u));
    var var_0 = ~arg_3;
    let var_1 = Struct_3(2644f, vec2<bool>((_wgslsmith_add_i32(-2147483647i, global0.d.b.a.x) << (arg_2 % 32u)) == select(-2147483647i, -arg_3, any(vec4<bool>(false, arg_1.b.x, false, global0.b.x))), all(select(select(vec4<bool>(false, global0.b.x, global0.c.x, true), vec4<bool>(global0.b.x, true, arg_1.b.x, true), false), vec4<bool>(arg_1.c.x, true, arg_1.c.x, arg_1.c.x), !vec4<bool>(true, global0.c.x, true, false)))), vec2<bool>(true, u_input.a < -897i), Struct_2(799f, global0.d.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, arg_1.e.x), select(firstTrailingBit(vec2<u32>(4294967295u, arg_2) << (vec2<u32>(arg_1.e.x, arg_1.e.x) % vec2<u32>(32u))), ~vec2<u32>(0u, 45511u), !(!global0.c)), firstTrailingBit(vec2<u32>(30384u, global0.e.x) >> (~global0.d.b.b.zx % vec2<u32>(32u)))));
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(633f))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-422f, _wgslsmith_f_op_f32(select(var_1.d.a, var_1.d.a, arg_1.b.x)), _wgslsmith_f_op_f32(var_1.a + 132f), _wgslsmith_div_f32(-1028f, 1914f)))) + vec4<f32>(global0.d.a, var_1.d.a, 1359f, var_1.a));
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1152f), _wgslsmith_f_op_f32(-var_1.a)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-669f, var_3.x)))), _wgslsmith_div_f32(global0.a, 801f)), select(global0.c, select(select(select(arg_1.b, vec2<bool>(true, true), true), select(global0.c, vec2<bool>(false, global0.b.x), var_1.c.x), var_1.c.x), arg_1.b, vec2<bool>(true, all(vec4<bool>(false, arg_1.c.x, true, false)))), select(select(vec2<bool>(false, true), !arg_1.c, vec2<bool>(true, var_1.c.x)), !vec2<bool>(global0.b.x, arg_1.c.x), global0.b.x)), vec2<bool>(global0.b.x, true), global0.d, u_input.c.zy);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 6>();
    let var_0 = vec3<i32>(0i, global0.d.b.a.x, 31297i);
    global0 = func_3(_wgslsmith_add_i32(func_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(12577u, 6u)]), global1[_wgslsmith_index_u32(16647u, 6u)])), Struct_3(_wgslsmith_f_op_f32(global0.a - -1274f), vec2<bool>(true, global0.c.x), global0.b, func_1(), select(vec2<u32>(4294967295u, 183u), vec2<u32>(global0.e.x, u_input.b), false))), ~global0.d.b.a.x), Struct_3(302f, select(!select(vec2<bool>(true, false), global0.b, global0.c.x), vec2<bool>(true, true), true), global0.b, global0.d, global0.e), 20228u, 0i);
    let var_1 = global0.d.a;
    var var_2 = select(!select(select(vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x), select(vec4<bool>(global0.b.x, global0.c.x, global0.c.x, global0.c.x), vec4<bool>(false, global0.c.x, true, false), global0.b.x), vec4<bool>(false, true, global0.b.x, global0.c.x)), !vec4<bool>(global0.c.x, global0.b.x, false, global0.b.x), all(global0.b)), !select(!vec4<bool>(global0.b.x, true, global0.b.x, true), !(!vec4<bool>(global0.c.x, false, global0.b.x, true)), true), vec4<bool>(true, global0.c.x, global0.c.x, global0.c.x));
    let var_3 = u_input.d;
    var var_4 = func_3(u_input.a, Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(-1757f)))), var_2.zx, select(global0.c, global0.c, var_2.zz), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.d.a, global0.a)) - _wgslsmith_div_f32(-798f, global0.a)), global0.d.b), ~vec2<u32>(reverseBits(1u), 44052u)), 27126u, _wgslsmith_add_i32(18863i, -global0.d.b.a.x));
    let var_5 = ~u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(select(global0.d.a, var_4.a, select(true, global0.c.x, var_2.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.d.a)) - _wgslsmith_f_op_f32(f32(-1f) * -519f))), vec2<u32>(_wgslsmith_mult_u32(var_3, u_input.b), ~(66654u ^ var_3) << (_wgslsmith_mod_u32(~var_4.e.x, ~var_3) % 32u)), vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(var_4.d.b.a.wy, vec2<i32>(u_input.e.x, 2147483647i) << (var_4.d.b.b.yx % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(28909u, 4294967295u, var_3), 6u)] * vec4<f32>(-1368f, -1456f, -451f, global0.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-427f * global0.d.a), var_4.a, global0.d.a, _wgslsmith_f_op_f32(-global0.d.a)) - global1[_wgslsmith_index_u32(~(~9898u), 6u)]), var_2.x)), global0.d.b.a);
}

