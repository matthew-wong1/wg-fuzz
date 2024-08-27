struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: bool,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 7> = array<vec3<f32>, 7>(vec3<f32>(1597f, 2188f, -242f), vec3<f32>(1164f, -663f, -1468f), vec3<f32>(-671f, 125f, -811f), vec3<f32>(175f, 371f, 830f), vec3<f32>(-1807f, 708f, -1228f), vec3<f32>(-1657f, -1332f, -2510f), vec3<f32>(-945f, -1199f, 196f));

var<private> global1: array<u32, 19> = array<u32, 19>(1u, 22460u, 41899u, 0u, 1u, 4294967295u, 55008u, 38852u, 68488u, 35611u, 0u, 4294967295u, 39985u, 4294967295u, 4294967295u, 35236u, 64779u, 1u, 0u);

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(-76874i), Struct_2(2147483647i), Struct_2(0i), Struct_2(-1i), Struct_2(9940i), Struct_2(2640i), Struct_2(0i), Struct_2(-22510i), Struct_2(-1i), Struct_2(-1i), Struct_2(i32(-2147483648)), Struct_2(-38656i), Struct_2(1i), Struct_2(-4279i), Struct_2(1i), Struct_2(-1i), Struct_2(-26059i), Struct_2(-1i), Struct_2(-12548i), Struct_2(0i), Struct_2(1i), Struct_2(2147483647i), Struct_2(684i), Struct_2(-3338i), Struct_2(2147483647i), Struct_2(-1i), Struct_2(-1i));

var<private> global3: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: f32) -> i32 {
    global2 = array<Struct_2, 27>();
    let var_0 = global2[_wgslsmith_index_u32(1u, 27u)];
    return -24212i;
}

fn func_3(arg_0: bool, arg_1: f32, arg_2: vec3<u32>, arg_3: u32) -> vec3<bool> {
    global2 = array<Struct_2, 27>();
    global1 = array<u32, 19>();
    global2 = array<Struct_2, 27>();
    global0 = array<vec3<f32>, 7>();
    let var_0 = Struct_4(select(vec4<bool>(all(!vec2<bool>(arg_0, arg_0)), arg_0, arg_0, all(!vec4<bool>(arg_0, arg_0, arg_0, arg_0))), vec4<bool>(any(select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, arg_0, arg_0), arg_0)), arg_0, true, all(vec2<bool>(arg_0, false))), arg_0 | true), Struct_1(vec3<i32>(_wgslsmith_mod_i32(7083i, -1i), ~2147483647i, ~global3.a), arg_1), -_wgslsmith_div_i32(u_input.d.x, countOneBits(global3.a)) > _wgslsmith_div_i32(global3.a ^ ~global3.a, _wgslsmith_div_i32(func_2(1601f), 34041i)), Struct_2(_wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.b, 30188i), select(0i, -50557i, true)) & firstLeadingBit(u_input.a.x)));
    return var_0.a.wwy;
}

fn func_1() -> vec2<u32> {
    global1 = array<u32, 19>();
    let var_0 = Struct_3(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1763f, 912f) - -857f), -1879f), _wgslsmith_f_op_f32(trunc(-1566f))), ~global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.e.x, 19u)], 19u)]), 19u)] & _wgslsmith_clamp_u32(16221u, u_input.e.x << ((u_input.e.x << (4294967295u % 32u)) % 32u), max(u_input.e.x, _wgslsmith_div_u32(1u, u_input.e.x))), _wgslsmith_mult_i32(func_2(_wgslsmith_f_op_f32(max(1581f, -1364f))), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.a.zzw, vec3<i32>(38490i, -21448i, u_input.b)), min(u_input.d.x, -2147483647i))) >= -_wgslsmith_mod_i32(u_input.a.x, -u_input.a.x));
    let var_1 = _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(1294f * var_0.a.x));
    let var_2 = true;
    let var_3 = vec4<bool>(!(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1, 1915f)) != _wgslsmith_f_op_f32(f32(-1f) * -695f)), (true || !all(vec2<bool>(false, false))) && false, var_0.c & all(select(func_3(var_2, var_1, u_input.e.xwy, var_0.b), !vec3<bool>(true, false, var_0.c), select(vec3<bool>(false, true, false), vec3<bool>(false, var_2, false), var_2))), false);
    return (vec2<u32>(var_0.b, firstTrailingBit(2303u) & 86198u) ^ vec2<u32>(1u, _wgslsmith_sub_u32(~u_input.e.x, var_0.b >> (global1[_wgslsmith_index_u32(1u, 19u)] % 32u)))) | u_input.e.yz;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 27>();
    global1 = array<u32, 19>();
    let var_0 = vec4<u32>(_wgslsmith_dot_vec2_u32(func_1() | abs(abs(vec2<u32>(4294967295u, 0u))), _wgslsmith_div_vec2_u32(firstLeadingBit(u_input.e.ww), u_input.e.yz) >> (vec2<u32>(_wgslsmith_sub_u32(u_input.e.x, 4294967295u), global1[_wgslsmith_index_u32(0u, 19u)]) % vec2<u32>(32u))), 71092u, ~_wgslsmith_mult_u32(~min(47615u, u_input.e.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(11828u, 19u)], 0u, u_input.e.x, 94449u), vec4<u32>(u_input.e.x, u_input.e.x, 4401u, 4647u))), u_input.e.x);
    global1 = array<u32, 19>();
    let var_1 = all(!(!(!select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    let x = u_input.a;
    s_output = StorageBuffer(1i);
}

