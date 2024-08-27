struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5>;

var<private> global1: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(-1444f);
    let var_1 = ~vec3<i32>(7170i, u_input.c.x, u_input.b);
    var var_2 = Struct_2(-1335f);
    let var_3 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -410f, var_2.a)), vec3<f32>(-1115f, _wgslsmith_f_op_f32(var_0.a - -1000f), _wgslsmith_f_op_f32(829f + var_0.a)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -2199f, var_2.a)) * vec3<f32>(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(round(var_2.a)))))));
    var_2 = Struct_2(467f);
    return -1273f;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = -12779i;
    var var_1 = 0i;
    global1 = vec2<bool>(!all(select(!arg_1.zz, select(vec2<bool>(global1.x, global1.x), arg_1.zz, false), !arg_1.x)), global1.x);
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    return Struct_2(_wgslsmith_f_op_f32(func_3()));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> Struct_1 {
    global0 = array<u32, 5>();
    var var_0 = arg_3;
    var_0 = func_2(_wgslsmith_mod_vec3_u32(abs(vec3<u32>(~arg_2, 1u, _wgslsmith_div_u32(0u, arg_2))), _wgslsmith_mult_vec3_u32(firstLeadingBit(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, global0[_wgslsmith_index_u32(u_input.a.x, 5u)], arg_2), vec3<u32>(global0[_wgslsmith_index_u32(0u, 5u)], 0u, 8066u))), select(~vec3<u32>(global0[_wgslsmith_index_u32(33004u, 5u)], 19181u, 9584u), vec3<u32>(u_input.a.x, 69589u, u_input.a.x), vec3<bool>(true, false, global1.x)))), vec4<bool>(global1.x, (~0u <= _wgslsmith_add_u32(u_input.a.x, 4294967295u)) || true, global1.x, all(select(vec2<bool>(true, true), !vec2<bool>(arg_0, global1.x), select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, true), vec2<bool>(true, arg_0))))));
    global0 = array<u32, 5>();
    global1 = select(vec2<bool>(global1.x, any(vec3<bool>(any(vec3<bool>(arg_0, global1.x, true)), any(vec4<bool>(global1.x, false, false, arg_0)), global1.x))), select(!(!vec2<bool>(false, global1.x)), vec2<bool>(true != (15897i < u_input.b), (arg_2 <= arg_2) == any(vec4<bool>(global1.x, global1.x, false, true))), global1.x), select(vec2<bool>(!all(vec4<bool>(global1.x, true, global1.x, arg_0)), all(vec2<bool>(true, global1.x))), select(!select(vec2<bool>(false, arg_0), vec2<bool>(arg_0, false), true), vec2<bool>(false, true), global1.x), select(!select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(global1.x, arg_0)), select(vec2<bool>(global1.x, true), vec2<bool>(arg_0, arg_0), !arg_0), true)));
    return Struct_1(vec2<f32>(_wgslsmith_f_op_f32(arg_3.a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -550f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a * arg_3.a)) - 144f)), vec3<bool>(~abs(arg_2) >= global0[_wgslsmith_index_u32(u_input.a.x, 5u)], false, 297f >= arg_3.a), select(select(select(select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, false), vec2<bool>(false, global1.x)), vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, global1.x)), select(select(vec2<bool>(global1.x, arg_0), vec2<bool>(false, true), vec2<bool>(global1.x, false)), vec2<bool>(true, true), global1.x), !arg_0), vec2<bool>(any(vec3<bool>(global1.x, global1.x, true)), max(-1i, u_input.b) == _wgslsmith_add_i32(-7113i, u_input.c.x)), global1.x));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec4_u32(arg_1, arg_1);
    global0 = array<u32, 5>();
    global0 = array<u32, 5>();
    var var_1 = countOneBits(var_0.x);
    return Struct_1(arg_0.a, arg_0.b, vec2<bool>(arg_0.c.x && all(select(vec4<bool>(arg_0.b.x, true, false, arg_0.b.x), vec4<bool>(arg_0.b.x, true, arg_0.b.x, false), vec4<bool>(true, false, true, false))), global1.x));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_mod_vec3_u32(min(min(~vec3<u32>(u_input.a.x, 54180u, 57786u) >> (reverseBits(vec3<u32>(u_input.a.x, 15885u, 17101u)) % vec3<u32>(32u)), ~(vec3<u32>(4294967295u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)]) | vec3<u32>(u_input.a.x, 451u, 0u))), vec3<u32>(~4294967295u, min(min(1u, u_input.a.x), 1u), 28005u)), _wgslsmith_sub_vec3_u32(vec3<u32>(~4294967295u, u_input.a.x ^ u_input.a.x, ~u_input.a.x), ~vec3<u32>(_wgslsmith_div_u32(u_input.a.x, u_input.a.x), ~global0[_wgslsmith_index_u32(19334u, 5u)], firstTrailingBit(25755u))));
    global0 = array<u32, 5>();
    var var_1 = 1i;
    var var_2 = firstTrailingBit(min(~u_input.b | u_input.c.x, ~(reverseBits(u_input.b) & (29638i & u_input.c.x))));
    global1 = !(!func_4(true, Struct_2(_wgslsmith_f_op_f32(floor(arg_1.a))), 1u, func_2(vec3<u32>(u_input.a.x, 1402u, 1u), select(vec4<bool>(false, false, arg_0.b.x, true), vec4<bool>(global1.x, false, global1.x, arg_0.c.x), vec4<bool>(global1.x, global1.x, false, arg_0.c.x)))).b.yy);
    return Struct_1(arg_0.a, arg_0.b, arg_0.b.xz);
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    let var_0 = func_6(func_5(func_4(global1.x, func_2(~vec3<u32>(global0[_wgslsmith_index_u32(444u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], u_input.a.x), !vec4<bool>(false, false, true, global1.x)), 1u, func_2(vec3<u32>(52034u, u_input.a.x, 1u), vec4<bool>(global1.x, global1.x, true, global1.x))), vec4<u32>(u_input.a.x, _wgslsmith_div_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(51986u, 5u)], 5u)], 9301u), 1u, global0[_wgslsmith_index_u32(0u, 5u)]), func_2(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 5u)], 5u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 5u)], 1u, 31781u)), !select(vec4<bool>(global1.x, false, true, global1.x), vec4<bool>(true, true, global1.x, true), vec4<bool>(false, false, true, global1.x)))), func_2(~vec3<u32>(~1u, u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 5u)] | 48183u), vec4<bool>(true, !(global1.x == global1.x), true, true)));
    let var_1 = _wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 5u)], 5u)], ~u_input.a.x);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(1155f, 1505f), -567f)), _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-540f * _wgslsmith_div_f32(var_0.a.x, var_0.a.x)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, func_5(func_6(Struct_1(vec2<f32>(2877f, -1591f), vec3<bool>(true, true, var_0.c.x), var_0.c), Struct_2(303f)), ~vec4<u32>(u_input.a.x, u_input.a.x, 44748u, 0u), Struct_2(arg_0.x)).a.x, _wgslsmith_f_op_f32(-func_6(Struct_1(vec2<f32>(-474f, -375f), vec3<bool>(true, false, false), var_0.b.zz), Struct_2(-963f)).a.x)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 148f, var_0.a.x)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -504f, -540f) + vec3<f32>(-1129f, var_0.a.x, -449f)))))));
    global0 = array<u32, 5>();
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2697f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 487f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2 - _wgslsmith_f_op_vec3_f32(sign(var_2))) * vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(-arg_0.x)))));
    return StorageBuffer(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_1), _wgslsmith_mult_vec2_u32(u_input.a, u_input.a)) >> (~_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 5u)], 4294967295u) % 32u), 0u, ~max(1u, 4294967295u), _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(var_1, 27465u, 4480u), vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 5u)], 21833u, 57245u)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 50453u), vec2<u32>(var_1, var_1)), min(4294967295u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(u_input.a.x, 5u)], global0[_wgslsmith_index_u32(59080u, 5u)]), vec4<u32>(var_1, var_1, 13104u, 14843u))))), ~firstTrailingBit(u_input.c.zy), var_2.x, vec2<i32>(-63915i >> (~(88972u | u_input.a.x) % 32u), ~((i32(-1i) * -2147483647i) ^ _wgslsmith_mult_i32(u_input.c.x, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 5>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(1683f + -2123f)), vec2<f32>(-1995f, _wgslsmith_div_f32(-2025f, -311f)))));
}

