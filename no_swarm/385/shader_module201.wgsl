struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: vec4<u32>,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec2<u32>, 2>;

var<private> global2: vec4<u32> = vec4<u32>(33110u, 12239u, 0u, 36530u);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global2 = _wgslsmith_add_vec4_u32(vec4<u32>(global0.b, 0u, (_wgslsmith_dot_vec3_u32(global2.wwx, u_input.a.yzx) << (~global2.x % 32u)) << (min(38360u, _wgslsmith_mod_u32(u_input.a.x, 5832u)) % 32u), 0u), reverseBits(_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(min(vec4<u32>(0u, 39619u, 4294967295u, global2.x), u_input.a), vec4<u32>(1u, u_input.a.x, 43357u, u_input.a.x)), u_input.a, vec4<u32>(global2.x, u_input.a.x, global0.b, global0.b) & vec4<u32>(5993u, 1u, u_input.a.x, global2.x))));
    var var_0 = _wgslsmith_f_op_f32(145f - global0.a);
    let var_1 = Struct_2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a - -1291f)), _wgslsmith_f_op_f32(floor(global0.a)), all(vec3<bool>(true, all(vec3<bool>(false, global0.c, global0.c)), true)))), _wgslsmith_mod_u32(4294967295u, 1u), true);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1000f - 678f))))) - var_1.a), _wgslsmith_add_u32(_wgslsmith_sub_u32(~global2.x, var_1.b), ~abs(select(1u, u_input.a.x, global0.c))), !any(select(!vec4<bool>(false, true, global0.c, global0.c), select(vec4<bool>(false, true, global0.c, global0.c), vec4<bool>(false, global0.c, global0.c, var_1.c), true), select(vec4<bool>(global0.c, true, var_1.c, true), vec4<bool>(false, false, global0.c, global0.c), vec4<bool>(var_1.c, false, global0.c, var_1.c)))));
    var var_3 = Struct_1(!(!vec4<bool>(global0.a <= -762f, false, true, true && var_1.c)), true, select(select(abs(u_input.a) << (vec4<u32>(global0.b, global2.x, global2.x, 79091u) % vec4<u32>(32u)), vec4<u32>(25295u, u_input.a.x, u_input.a.x, 40819u) << ((vec4<u32>(1u, var_1.b, 1u, var_2.b) & u_input.a) % vec4<u32>(32u)), _wgslsmith_f_op_f32(exp2(global0.a)) < var_2.a), u_input.a, select(var_1.c, any(!vec2<bool>(global0.c, var_1.c)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-467f + global0.a)))));
    return any(!vec4<bool>(var_2.c, true, var_1.c, !var_1.c)) & false;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = 14658i;
    global1 = array<vec2<u32>, 2>();
    let var_1 = Struct_1(select(!(!select(vec4<bool>(global0.c, true, true, true), arg_2.a, arg_1)), arg_2.a, vec4<bool>(true, arg_2.b | func_3(), true, var_0 != 1i)), false, ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, 1u, global0.b, global2.x), _wgslsmith_add_vec4_u32(vec4<u32>(51307u, global2.x, 14354u, global0.b), vec4<u32>(global0.b, global2.x, 19479u, 0u)))), 1f);
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.d, 807f, 425f, 257f)) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1401f, arg_0, global0.a, -814f)))), vec4<f32>(1047f, _wgslsmith_div_f32(-2938f, -1066f), _wgslsmith_f_op_f32(1000f * global0.a), 747f), !arg_1)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-604f, arg_0, arg_2.d, arg_2.d))))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(347f - arg_0), var_1.d, _wgslsmith_f_op_f32(max(1276f, var_1.d)))))));
    var var_3 = Struct_2(arg_2.d, abs(_wgslsmith_mod_u32(countOneBits(13296u), ~(arg_2.c.x << (102450u % 32u)))), false);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_f_op_f32(floor(arg_2.d)))))), var_2.x));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>) -> vec3<f32> {
    global1 = array<vec2<u32>, 2>();
    var var_0 = global0.c;
    global1 = array<vec2<u32>, 2>();
    global0 = Struct_2(_wgslsmith_f_op_f32(-607f - arg_1.x), ~8024u, func_3());
    global0 = Struct_2(arg_0, _wgslsmith_mult_u32(u_input.a.x, global2.x << (abs(~1u) % 32u)), all(!(!select(vec2<bool>(global0.c, global0.c), vec2<bool>(false, false), global0.c))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(-1264f, arg_1.x, global0.c)), _wgslsmith_f_op_f32(sign(arg_0)), _wgslsmith_f_op_f32(sign(-412f))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-529f + arg_0), _wgslsmith_f_op_f32(global0.a + global0.a)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1168f, _wgslsmith_f_op_f32(f32(-1f) * -336f), _wgslsmith_f_op_f32(global0.a + arg_0)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-294f, arg_0, -208f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.a, arg_0, arg_1.x))), true)))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec4<i32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.a, 703f, 445f)))))) + _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(global0.a, false, Struct_1(vec4<bool>(true, true, global0.c, global0.c), false, u_input.a, global0.a))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2193f, -671f, -413f, 1343f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a, global0.a, global0.a, global0.a) + vec4<f32>(global0.a, 1503f, -624f, 1000f)))))));
    global2 = u_input.a;
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x), global0.a)))));
    let var_1 = -arg_2;
    let var_2 = Struct_1(!vec4<bool>(!(global0.c & global0.c), global0.c, global0.c, true), ~0u <= firstTrailingBit(u_input.a.x), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(max(68252u, 52039u), arg_0, arg_0, _wgslsmith_add_u32(global0.b, 1u))), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.a.x, global2.x), arg_0), 4294967295u, ~_wgslsmith_sub_u32(global2.x, 30264u), u_input.a.x)), -311f);
    return 47789u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.a.x, global0.b, ~0u), u_input.a.x), global0.b, ~func_1(0u, i32(-1i) * -2147483647i, abs(vec4<i32>(49114i, 0i, 2147483647i, 1i))) & global2.x, max(_wgslsmith_dot_vec2_u32(~global1[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.a.xz) | 4294967295u, 5705u));
    var var_0 = (!(true != (false && global0.c)) || !(any(vec4<bool>(true, global0.c, global0.c, global0.c)) != (global0.c & global0.c))) && global0.c;
    global1 = array<vec2<u32>, 2>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1466f * global0.a) + _wgslsmith_div_f32(_wgslsmith_div_f32(global0.a, global0.a), _wgslsmith_f_op_f32(f32(-1f) * -224f))));
    let var_2 = global0.c;
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~_wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, -2238i, -10300i), vec4<i32>(-629i, 3064i, -1i, 12618i))), ~(-max(vec4<i32>(-1i, -2147483647i, 1739i, -21284i), vec4<i32>(31109i, -1i, 28344i, -2147483647i)))));
}

