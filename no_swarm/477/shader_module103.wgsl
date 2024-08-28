struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec3<bool>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 4>;

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec2<bool>(false, false), true, vec3<bool>(true, false, true), vec4<u32>(1u, 55723u, 26127u, 40493u)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> vec3<bool> {
    let var_0 = Struct_1(select(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), true), vec2<bool>(true, true)), select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), false), select(vec2<bool>(true, false), vec2<bool>(false, true), false), true), vec2<bool>(any(vec3<bool>(true, false, true)), true), any(vec3<bool>(true, true, false))), false), true, vec3<bool>(any(vec3<bool>(true, true, true)), true, true), vec4<u32>(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 31797u), u_input.b.x), _wgslsmith_dot_vec4_u32(~(vec4<u32>(112652u, u_input.b.x, 56979u, u_input.b.x) << (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 16288u) % vec4<u32>(32u))), firstTrailingBit(max(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 862u), vec4<u32>(0u, 39249u, u_input.b.x, 0u)))), 1u, countOneBits(_wgslsmith_mod_u32(4294967295u, u_input.b.x))));
    global1 = array<Struct_1, 1>();
    var var_1 = var_0.a;
    let var_2 = 0i;
    var var_3 = vec4<bool>(var_0.c.x, var_0.b, var_1.x || (false || any(select(var_0.c, vec3<bool>(var_1.x, var_0.c.x, false), vec3<bool>(false, var_0.b, true)))), all(!vec4<bool>(var_0.d.x >= 4294967295u, false, var_1.x, var_0.d.x >= 4294967295u)));
    return vec3<bool>(var_0.c.x & var_0.c.x, false, var_1.x);
}

fn func_2(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec3<f32>, 4>();
    global0 = array<vec3<f32>, 4>();
    let var_0 = Struct_1(vec2<bool>(arg_1.c.x, true | !(!arg_1.b)), all(!(!(!vec4<bool>(false, false, true, arg_1.a.x)))), select(arg_1.c, !func_3(_wgslsmith_mod_i32(-2147483647i, 2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c.x, 1i, u_input.a), vec3<i32>(18047i, -2147483647i, u_input.c.x))), arg_1.c.x), abs(~vec4<u32>(15929u, u_input.b.x, 1u, ~arg_1.d.x)));
    let var_1 = _wgslsmith_f_op_f32(760f * -1000f);
    var var_2 = arg_1;
    return global1[_wgslsmith_index_u32(u_input.b.x, 1u)];
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = Struct_1(select(arg_0.a, select(vec2<bool>(true, false), vec2<bool>(!arg_0.b, !arg_2.a.x), true), arg_2.c.zz), (arg_0.d.x < 0u) && (false & arg_2.a.x), vec3<bool>(all(select(vec4<bool>(true, arg_0.a.x, false, true), vec4<bool>(arg_0.b, true, arg_0.a.x, arg_0.a.x), true)), true, any(arg_2.c)), select(_wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0.d.x, u_input.b.x, u_input.b.x, 4294967295u), firstLeadingBit(~arg_2.d)), arg_0.d, select(!vec4<bool>(arg_0.a.x, arg_2.b, true, true), !select(vec4<bool>(arg_2.c.x, arg_0.b, false, arg_0.c.x), vec4<bool>(arg_0.c.x, arg_2.a.x, arg_0.a.x, true), true), false)));
    let var_1 = vec3<u32>(~3215u, 32035u, arg_0.d.x);
    let var_2 = Struct_1(!(!(!var_0.a)), all(select(vec3<bool>(true, true, false), select(var_0.c, func_2(44659u, Struct_1(arg_2.a, true, arg_0.c, arg_0.d)).c, vec3<bool>(false, false, true)), !arg_2.c)), !arg_0.c, vec4<u32>(15174u, 282u, _wgslsmith_mult_u32(reverseBits(_wgslsmith_div_u32(22139u, arg_2.d.x)), abs(1u)), _wgslsmith_dot_vec3_u32(reverseBits(arg_2.d.wwx), ~var_0.d.xyz)));
    var var_3 = arg_2.c;
    let var_4 = Struct_1(func_3(abs(27651i), -reverseBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, -77882i, u_input.a), vec3<i32>(u_input.a, 44271i, 1i), vec3<i32>(u_input.c.x, 0i, 16962i)))).zz, ~(abs(4294967295u) << (~var_2.d.x % 32u)) >= var_0.d.x, vec3<bool>(true, var_3.x, 13042i > _wgslsmith_mult_i32(i32(-1i) * -55426i, u_input.c.x & u_input.c.x)), select(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_2.d.x, 4294967295u), countOneBits(vec3<u32>(0u, 77u, 24219u))), u_input.b.x, u_input.b.x, var_1.x), arg_0.d, var_0.a.x));
    return 2147483647i;
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = 451f;
    global1 = array<Struct_1, 1>();
    var_0 = -709f;
    let var_1 = all(vec2<bool>(any(select(!vec4<bool>(true, arg_2.b, arg_2.c.x, true), !vec4<bool>(arg_2.b, arg_2.a.x, true, arg_2.a.x), !vec4<bool>(arg_2.b, true, false, arg_2.c.x))), arg_1 <= func_4(Struct_1(vec2<bool>(true, false), arg_2.b, arg_2.c, vec4<u32>(u_input.b.x, 20270u, 1u, arg_2.d.x)), arg_0, func_2(arg_2.d.x, arg_2))));
    global1 = array<Struct_1, 1>();
    return Struct_1(func_2(firstLeadingBit(4294967295u), global1[_wgslsmith_index_u32(~(~func_2(0u, Struct_1(vec2<bool>(false, arg_2.c.x), var_1, arg_2.c, vec4<u32>(u_input.b.x, arg_2.d.x, u_input.b.x, u_input.b.x))).d.x), 1u)]).a, var_1, vec3<bool>(any(!select(vec4<bool>(arg_2.c.x, var_1, var_1, arg_2.c.x), vec4<bool>(var_1, arg_2.b, var_1, arg_2.b), false)), arg_2.b, func_2(_wgslsmith_dot_vec4_u32(select(arg_2.d, vec4<u32>(arg_2.d.x, arg_2.d.x, u_input.b.x, 0u), vec4<bool>(false, false, true, arg_2.c.x)), vec4<u32>(u_input.b.x, 1u, arg_2.d.x, arg_2.d.x)), Struct_1(vec2<bool>(true, false), true, arg_2.c, _wgslsmith_add_vec4_u32(arg_2.d, vec4<u32>(23085u, arg_2.d.x, 9796u, 23966u)))).c.x), arg_2.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-366f, -2147483647i, global1[_wgslsmith_index_u32(u_input.b.x, 1u)]);
    let var_1 = var_0.d.x;
    let var_2 = u_input.a;
    var var_3 = ~vec4<u32>(u_input.b.x, var_1, _wgslsmith_add_u32(abs(~1u), ~4294967295u), abs(4294967295u << (var_1 % 32u)));
    var var_4 = vec3<i32>(reverseBits(countOneBits(1i) | u_input.a), ~5992i, max(~_wgslsmith_mod_i32(-55064i, u_input.c.x), u_input.a) & _wgslsmith_div_i32(_wgslsmith_mod_i32(u_input.a, select(18525i, 2147483647i, var_0.a.x)), var_2));
    global1 = array<Struct_1, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - -720f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1000f)))))), 6607i, min(~0u, _wgslsmith_add_u32(~(~1u), var_3.x)), -19812i);
}

