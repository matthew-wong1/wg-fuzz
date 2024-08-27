struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16>;

var<private> global1: bool;

var<private> global2: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_2.c.x));
    global0 = array<u32, 16>();
    let var_1 = 2641u < global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~reverseBits(u_input.a.x), 16u)], 16u)], 16u)], _wgslsmith_dot_vec3_u32(~u_input.a.xxy, ~vec3<u32>(10085u, u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(29016u, 16u)], 16u)]))), 16u)];
    let var_2 = arg_3;
    let var_3 = Struct_1(!any(select(vec3<bool>(var_2.a, global2.a, var_1), vec3<bool>(true, true, true), all(vec2<bool>(false, arg_3.a)))), arg_3.b, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.c.x, arg_2.b.x, -967f, global2.c.x))))));
    return ~_wgslsmith_sub_i32(34696i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_1, vec2<i32>(u_input.b, 27283i)) << (u_input.a.zx % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(arg_1, arg_1), -arg_1)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = array<u32, 16>();
    global1 = !(!all(!select(vec2<bool>(true, global2.a), vec2<bool>(global2.a, arg_0.a), vec2<bool>(false, global2.a))));
    global2 = arg_0;
    let var_0 = any(vec3<bool>(!arg_0.a, all(select(select(vec3<bool>(arg_0.a, global2.a, arg_0.a), vec3<bool>(arg_0.a, true, false), vec3<bool>(global2.a, true, false)), !vec3<bool>(arg_0.a, arg_0.a, global2.a), vec3<bool>(arg_0.a, arg_0.a, global2.a))), !(func_3(998f, vec2<i32>(62785i, -59613i), Struct_1(global2.a, vec4<f32>(global2.b.x, -775f, global2.b.x, -658f), arg_0.b), arg_0) >= (i32(-1i) * -29302i))));
    global1 = _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1000f, -203f)), _wgslsmith_f_op_f32(floor(-413f)))), arg_0.b.x), global2.c.x)) > -1026f;
    return Struct_1(!(!(true && (global2.a | var_0))), vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(select(350f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), arg_0.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 143f)), global2.b.x)), arg_0.b.x), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1141f, 2774f, -968f, 256f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, -728f, global2.b.x, -661f)))), vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(378f - global2.b.x))), global2.b.x, _wgslsmith_f_op_f32(round(498f))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: f32) -> bool {
    global1 = all(vec2<bool>(any(vec2<bool>(global2.a, func_2(Struct_1(global2.a, global2.b, global2.c)).a)), true));
    global1 = all(select(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.b.a), select(vec2<bool>(global2.a, true), vec2<bool>(global2.a, true), false), vec2<bool>(false, false)), !vec2<bool>(false, arg_0.b.a)), select(select(!vec2<bool>(global2.a, false), select(vec2<bool>(true, true), vec2<bool>(arg_0.c.a, arg_0.c.a), false), vec2<bool>(arg_0.c.a, global2.a)), select(vec2<bool>(global2.a, arg_0.b.a), !vec2<bool>(global2.a, global2.a), select(vec2<bool>(false, true), vec2<bool>(arg_0.c.a, true), true)), !select(vec2<bool>(true, arg_0.c.a), vec2<bool>(true, false), false)), vec2<bool>(!arg_0.b.a, false)));
    global2 = arg_0.c;
    global2 = Struct_1((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c.b.x) - _wgslsmith_f_op_f32(abs(arg_2))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(690f, global2.c.x)))) && all(select(!vec2<bool>(arg_0.c.a, true), vec2<bool>(global2.a, global2.a), global2.a && true)), _wgslsmith_f_op_vec4_f32(-arg_0.b.c), arg_0.c.b);
    global0 = array<u32, 16>();
    return arg_0.c.a;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    var var_0 = func_4(Struct_2(vec4<f32>(arg_0.x, -435f, _wgslsmith_f_op_f32(global2.c.x - -814f), _wgslsmith_f_op_f32(-557f * arg_0.x)), func_2(Struct_1(global2.a, global2.c, vec4<f32>(-725f, 179f, -1000f, global2.c.x))), func_2(Struct_1(false, global2.c, global2.c))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global2.b.zxz))), _wgslsmith_f_op_vec3_f32(global2.c.wzz + _wgslsmith_f_op_vec3_f32(-global2.b.xwx))), arg_0.x) | any(select(!select(vec3<bool>(false, global2.a, true), vec3<bool>(global2.a, false, global2.a), global2.a), vec3<bool>(false, true, false), true));
    let var_1 = (_wgslsmith_sub_u32(50035u, firstTrailingBit(0u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(18299u, 16u)], 16u)] % 32u))) ^ 1u) & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global0[_wgslsmith_index_u32(5790u, 16u)], 18762u, 6038u)), u_input.a.yyx), u_input.a.x);
    let var_2 = u_input.b;
    let var_3 = _wgslsmith_clamp_vec4_u32(u_input.a, firstLeadingBit(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a.x, 61645u, u_input.a.x, 43757u), vec4<u32>(0u, u_input.a.x, u_input.a.x, 0u)) << (vec4<u32>(u_input.a.x, ~34787u, ~var_1, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yw)) % vec4<u32>(32u))), abs(~vec4<u32>(1u, 1u, 0u, ~var_1)));
    global0 = array<u32, 16>();
    return Struct_1(-309f > _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -1267f)), arg_0.x)), _wgslsmith_div_vec4_f32(global2.c, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.x))), _wgslsmith_f_op_f32(-209f * -565f), 687f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * global2.c.x))), global2.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!any(!vec2<bool>(false, global2.a)));
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global2.b) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-578f, global2.b.x, 331f, global2.c.x))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-113f, global2.b.x, -1020f, global2.b.x), global2.b), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.b.x, -224f, global2.b.x, global2.b.x), global2.c)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1966f, 302f, global2.b.x, global2.b.x) * global2.b))), global2.a))), func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.x, -762f)) * _wgslsmith_f_op_vec2_f32(-global2.b.yx)) - _wgslsmith_f_op_vec2_f32(ceil(global2.c.yx)))), Struct_1(false, _wgslsmith_f_op_vec4_f32(-global2.c), global2.c));
    let var_1 = var_0.a.yx;
    let var_2 = var_0.c;
    let var_3 = u_input.a.yz;
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -418f));
    let var_5 = !select(vec4<bool>(true, (var_0.b.c.x == var_4) | all(vec4<bool>(var_2.a, var_0.c.a, var_0.b.a, false)), max(u_input.b, -1180i) <= _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, 1i), vec2<i32>(49039i, u_input.b)), global2.a), !vec4<bool>(func_4(var_0, vec3<f32>(var_0.b.c.x, global2.b.x, 227f), var_2.c.x), func_2(var_0.c).a, !var_0.b.a, any(vec4<bool>(global2.a, var_2.a, true, var_2.a))), vec4<bool>(all(select(vec3<bool>(global2.a, var_0.b.a, var_2.a), vec3<bool>(global2.a, true, var_2.a), var_0.b.a)), global2.a, var_2.a, (-21441i << (global0[_wgslsmith_index_u32(u_input.a.x, 16u)] % 32u)) < u_input.b));
    var var_6 = vec3<i32>(-1i, u_input.b, 24942i);
    let x = u_input.a;
    s_output = StorageBuffer(0u, abs(u_input.b), 2147483647i, var_3, 1u);
}

