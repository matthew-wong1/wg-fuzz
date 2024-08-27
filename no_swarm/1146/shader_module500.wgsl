struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(42986u, 31435u, 40614u, 0u);

var<private> global1: vec3<f32> = vec3<f32>(397f, -236f, 623f);

var<private> global2: array<Struct_1, 22>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2) -> u32 {
    return 1u;
}

fn func_1(arg_0: Struct_2, arg_1: f32, arg_2: i32) -> vec3<f32> {
    global0 = vec4<u32>(u_input.c, ~(~u_input.c), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c, u_input.c, ~16370u, _wgslsmith_clamp_u32(u_input.c, global0.x, 38539u)), vec4<u32>(u_input.c, 0u, 4294967295u, 44804u) >> (~vec4<u32>(0u, 4294967295u, 0u, global0.x) % vec4<u32>(32u))), max(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, 0u, u_input.c, global0.x), vec4<u32>(u_input.c, global0.x, 4294967295u, 0u))), ~(~vec4<u32>(global0.x, 22519u, u_input.c, 50994u)))), func_2(Struct_2(Struct_1(2852f), arg_0.b, Struct_1(-237f))) << (global0.x % 32u));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -477f, global1.x, 541f) + vec4<f32>(arg_0.a.a, arg_0.c.a, -243f, global1.x))))))));
    global0 = vec4<u32>(global0.x, 15692u, global0.x, 24613u);
    var var_1 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, 1751u), 22u)];
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(947f, -1653f, -2050f, var_1.a) * vec4<f32>(var_1.a, arg_0.c.a, arg_1, -231f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, arg_1, 200f, -572f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-943f, -1403f, arg_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -1071f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.a, var_0.x, global1.x) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-530f, var_0.x, -437f, arg_1) * vec4<f32>(var_0.x, -721f, 262f, -1808f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-837f, -1000f, arg_1, var_1.a), vec4<f32>(1642f, var_1.a, var_0.x, arg_1)))));
    return _wgslsmith_f_op_vec3_f32(round(var_0.wxy));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: f32) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, arg_2));
    let var_1 = arg_1;
    var var_2 = var_1;
    global0 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.x, firstTrailingBit(10796u), 4294967295u, ~4294967295u) & reverseBits(vec4<u32>(4294967295u, firstTrailingBit(30800u), func_2(arg_1), _wgslsmith_add_u32(32634u, arg_0.x))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, ~arg_0.x, global0.x, firstLeadingBit(global0.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 0u, 52415u, 0u), vec4<u32>(87436u, 0u, arg_0.x, arg_0.x))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.x, u_input.c, 0u, 78101u), ~(~vec4<u32>(arg_0.x, 22868u, 3597u, 0u)), select(vec4<u32>(4294967295u, 17287u, u_input.c, 1u), vec4<u32>(11363u, 1u, 5916u, global0.x), vec4<bool>(var_1.b, true, true, false)) & countOneBits(vec4<u32>(4294967295u, arg_0.x, arg_0.x, global0.x))), ~firstTrailingBit(vec4<u32>(arg_0.x, arg_0.x, u_input.c, u_input.c))));
    let var_3 = var_2.c;
    return min(u_input.d, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~vec4<u32>(global0.x, ~((22352u << (global0.x % 32u)) | 71562u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(global0.zy, vec2<u32>(0u, u_input.c)) << (_wgslsmith_mult_u32(88547u, u_input.c) % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(36456u, 1u, 21572u, 4294967295u), abs(vec4<u32>(u_input.c, 4294967295u, 74507u, global0.x))), u_input.c), 21909u);
    var var_0 = firstTrailingBit(~(~41172u | _wgslsmith_mod_u32(global0.x, 14566u))) ^ _wgslsmith_dot_vec3_u32(~(~(~global0.wwy)), vec3<u32>(countOneBits(global0.x), firstLeadingBit(u_input.c ^ u_input.c), 1u));
    var var_1 = !select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true), vec3<bool>(false, !select(true, false, false), !all(vec4<bool>(false, true, true, false))), (all(vec4<bool>(false, true, false, true)) != false) && true);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-705f, _wgslsmith_f_op_f32(f32(-1f) * -841f), -2130f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -2428f, global1.x)), vec3<f32>(global1.x, -1146f, 888f))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), vec3<f32>(417f, 839f, -138f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 1941f, 1259f) - vec3<f32>(global1.x, global1.x, global1.x))))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2(global2[_wgslsmith_index_u32(51490u, 22u)], var_1.x, Struct_1(-2137f)), 151f, u_input.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, -1027f) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1370f, global1.x, -2174f), vec3<f32>(global1.x, global1.x, 751f)))))));
    var var_2 = Struct_1(global1.x);
    global2 = array<Struct_1, 22>();
    var var_3 = Struct_1(-1364f);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~5560u ^ ~select(29818u, 0u, var_1.x), firstLeadingBit(_wgslsmith_add_u32(~4294967295u, 0u))), u_input.a, _wgslsmith_add_u32(max(func_2(Struct_2(Struct_1(662f), true, Struct_1(global1.x))) >> (func_2(Struct_2(Struct_1(global1.x), true, global2[_wgslsmith_index_u32(u_input.c, 22u)])) % 32u), 1u), _wgslsmith_div_u32(0u, ~u_input.c)), global0.zx, func_3(~(~_wgslsmith_add_vec2_u32(global0.zw, vec2<u32>(u_input.c, 117009u))), Struct_2(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c, 4294967295u), 22u)], false, Struct_1(_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f + var_3.a) - global1.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1016f))))));
}

