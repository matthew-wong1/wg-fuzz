struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 27>;

var<private> global1: array<f32, 28> = array<f32, 28>(-210f, -813f, 530f, -667f, 1831f, 310f, 1867f, -778f, 428f, -1172f, 680f, -700f, 1740f, 1000f, -697f, 350f, -2437f, -266f, 2506f, -746f, 797f, -569f, 1220f, 919f, -360f, -535f, -834f, -585f);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1) -> bool {
    var var_0 = true;
    global0 = array<u32, 27>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-305f, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.a.b.x, 27u)], 27u)], 28u)])))) - _wgslsmith_div_f32(-3153f, global1[_wgslsmith_index_u32(4294967295u, 28u)])), all(select(arg_0.b, !select(vec3<bool>(arg_0.b.x, true, false), vec3<bool>(true, arg_0.b.x, arg_0.a.a.d), arg_1.b), !vec3<bool>(arg_0.b.x, true, true))), arg_0.a.a.c, any(vec3<bool>(!(!arg_0.b.x), arg_1.b, !(!arg_0.b.x))));
    var var_2 = select(arg_0.a.c.zz, !(!vec2<bool>(arg_1.d, true)), vec2<bool>(!all(!vec3<bool>(var_1.d, false, true)), false));
    var var_3 = arg_0.a.b.zzy >> (vec3<u32>(92547u, 17056u, ~_wgslsmith_mod_u32(countOneBits(21107u), 57237u)) % vec3<u32>(32u));
    return _wgslsmith_f_op_f32(-arg_1.a) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27410u, 27u)], 27u)], 27u)], 28u)]) + -465f))));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_3) -> u32 {
    var var_0 = -2147483647i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~(~4294967295u)), 28u)]));
    var_0 = u_input.a.x;
    var_0 = 2147483647i;
    var_0 = ~_wgslsmith_clamp_i32(i32(-1i) * -_wgslsmith_mult_i32(u_input.a.x, -1i), u_input.b, 1i << (_wgslsmith_mod_u32(41905u, ~global0[_wgslsmith_index_u32(4294967295u, 27u)]) % 32u));
    return arg_3.a.b.x | countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_1.x, 36213u, 39863u, 0u), arg_1, false) ^ arg_3.a.b, ~vec4<u32>(global0[_wgslsmith_index_u32(arg_3.a.b.x, 27u)], 1u, arg_3.a.b.x, 4294967295u) >> (arg_3.a.b % vec4<u32>(32u))), 27u)]);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: bool) -> Struct_3 {
    var var_0 = arg_0.a.c;
    global1 = array<f32, 28>();
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, global0[_wgslsmith_index_u32(37933u, 27u)] ^ arg_0.b.x), 28u)]) + global1[_wgslsmith_index_u32(func_3(vec2<bool>(all(vec4<bool>(false, true, arg_0.a.b, false)), all(vec2<bool>(arg_2, arg_0.a.d))), _wgslsmith_div_vec4_u32(max(arg_0.b, vec4<u32>(0u, 74331u, 4294967295u, 1u)), ~arg_0.b), !arg_0.c, Struct_3(arg_0, vec3<bool>(arg_0.a.b, true, arg_1.b))), 28u)]), any(!(!(!vec2<bool>(arg_1.d, true)))), global1[_wgslsmith_index_u32(arg_0.b.x, 28u)], false);
    let var_2 = var_1.c;
    global0 = array<u32, 27>();
    return Struct_3(arg_0, select(select(vec3<bool>(arg_1.d, !arg_0.c.x, true), arg_0.c, any(vec3<bool>(true, true, true)) & (20911u > global0[_wgslsmith_index_u32(arg_0.b.x, 27u)])), arg_0.c, select(!(!arg_0.c), vec3<bool>(true, true, true), select(select(arg_0.c, arg_0.c, arg_2), arg_0.c, select(true, true, arg_0.c.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 28>();
    global0 = array<u32, 27>();
    global1 = array<f32, 28>();
    let var_0 = 1u;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1[_wgslsmith_index_u32(~(~4294967295u), 28u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) + -159f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 28u)] + 507f)))))));
    global0 = array<u32, 27>();
    let var_2 = select(vec4<bool>(true, all(vec2<bool>(true, true)) != true, select(all(vec4<bool>(false, true, true, true)), true, true) || true, !all(vec2<bool>(true, true))), select(vec4<bool>(!any(vec3<bool>(false, false, false)), all(vec2<bool>(true, true)), any(select(vec2<bool>(false, false), vec2<bool>(false, false), true)), true), vec4<bool>(true, ~var_0 < ~var_0, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(any(vec4<bool>(true, false, false, false)), true, false, true))), false);
    let var_3 = vec4<bool>(true, any(vec2<bool>(func_1(Struct_3(Struct_2(Struct_1(-1000f, false, -453f, var_2.x), vec4<u32>(var_0, 27841u, 46655u, 4294967295u), vec3<bool>(true, true, false)), vec3<bool>(false, var_2.x, true)), Struct_1(global1[_wgslsmith_index_u32(var_0, 28u)], true, -527f, var_2.x)), true)), !func_1(func_2(Struct_2(Struct_1(global1[_wgslsmith_index_u32(var_0, 28u)], false, -3228f, true), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 27u)], var_0, var_0, 6245u), var_2.www), Struct_1(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 27u)], 28u)], true, 523f, true), true), func_2(func_2(Struct_2(Struct_1(var_1.x, var_2.x, var_1.x, var_2.x), vec4<u32>(3899u, 4294967295u, var_0, global0[_wgslsmith_index_u32(5259u, 27u)]), var_2.wxy), Struct_1(global1[_wgslsmith_index_u32(var_0, 28u)], var_2.x, var_1.x, var_2.x), var_2.x).a, func_2(Struct_2(Struct_1(-760f, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(42336u, 27u)], 27u)], 28u)], var_2.x), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(16949u, 27u)], 27u)], var_0, global0[_wgslsmith_index_u32(var_0, 27u)], 114u), vec3<bool>(true, true, true)), Struct_1(global1[_wgslsmith_index_u32(49513u, 28u)], false, var_1.x, var_2.x), var_2.x).a.a, false).a.a), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_1, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~reverseBits(var_0), 28u)]), _wgslsmith_f_op_f32(-1351f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(countOneBits(var_0), 28u)])))), min(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(~(~4528u), 27u)]), reverseBits(_wgslsmith_clamp_vec2_u32(min(vec2<u32>(var_0, var_0), vec2<u32>(var_0, 4294967295u)), reverseBits(vec2<u32>(34093u, 7949u)), vec2<u32>(var_0, 4294967295u) << (vec2<u32>(global0[_wgslsmith_index_u32(11118u, 27u)], global0[_wgslsmith_index_u32(4294967295u, 27u)]) % vec2<u32>(32u))))));
}

