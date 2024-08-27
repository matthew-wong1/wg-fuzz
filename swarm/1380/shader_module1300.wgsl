struct Struct_1 {
    a: bool,
    b: bool,
    c: f32,
    d: i32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = global0.d;
    var_0 = -31843i;
    var_0 = i32(-1i) * -1i;
    var_0 = global0.e;
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.c, -869f, arg_0.c), vec3<f32>(global0.c, 233f, arg_0.c), vec3<bool>(arg_0.a, true, false)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-577f, 862f, global0.c) * vec3<f32>(arg_0.c, 577f, arg_0.c))), select(vec3<bool>(true, global0.b, true), vec3<bool>(arg_0.a, global0.b, true), vec3<bool>(true, true, true)))) * vec3<f32>(-665f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1340f), _wgslsmith_f_op_f32(-1039f + 244f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1000f)) - _wgslsmith_f_op_f32(global0.c + arg_0.c)))));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32, arg_3: f32) -> Struct_2 {
    let var_0 = _wgslsmith_mult_i32(global0.d, u_input.b.x);
    global0 = Struct_1(any(select(select(!vec2<bool>(arg_1, global0.b), vec2<bool>(true, true), all(vec4<bool>(global0.a, false, global0.b, global0.b))), func_3(Struct_1(global0.a, arg_1, arg_3, u_input.d, u_input.b.x)), 0i >= ~global0.d)), true, arg_3, firstLeadingBit(~(var_0 & u_input.b.x)), ~_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.yy), countOneBits(u_input.b.wx)) | -_wgslsmith_dot_vec3_i32(~u_input.b.zwx, u_input.b.wyx));
    global0 = Struct_1(global0.e != firstTrailingBit(select(_wgslsmith_add_i32(0i, 42243i), ~0i, !global0.a)), true && global0.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1135f, global0.c)) * _wgslsmith_f_op_f32(-263f - _wgslsmith_f_op_f32(abs(arg_3)))), _wgslsmith_f_op_f32(sign(arg_3))), -2147483647i, ~_wgslsmith_add_i32(0i, -35238i));
    global0 = Struct_1(arg_1, global0.a, -1000f, var_0, max(-61845i, 85555i));
    return Struct_2(Struct_1(false, true, -996f, i32(-1i) * -_wgslsmith_div_i32(u_input.d, var_0), _wgslsmith_dot_vec4_i32(~u_input.b, vec4<i32>(u_input.b.x, u_input.d, 2147483647i, 1i) | vec4<i32>(u_input.b.x, -49055i, 40429i, var_0)) | _wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.b.yw), u_input.b.xx)), -_wgslsmith_mod_i32(select(-2147483647i, u_input.d, global0.a) >> (arg_2 % 32u), u_input.b.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: i32) -> i32 {
    let var_0 = func_2(u_input.e.x, global0.a, 4294967295u, _wgslsmith_f_op_f32(trunc(1785f)));
    let var_1 = -min(var_0.b, firstLeadingBit(arg_2 | abs(13413i)));
    let var_2 = 1i;
    return 21101i;
}

fn func_4(arg_0: u32, arg_1: vec2<i32>) -> Struct_1 {
    global0 = func_2(~(39631u >> (~4294967295u % 32u)), false, arg_0, _wgslsmith_f_op_f32(max(func_2(_wgslsmith_sub_u32(u_input.c, u_input.c ^ 0u), global0.b, firstLeadingBit(_wgslsmith_mod_u32(u_input.a.x, 47990u)), func_2(~u_input.e.x, global0.b, 1u, _wgslsmith_f_op_f32(1054f - global0.c)).a.c).a.c, -512f))).a;
    var var_0 = func_2(~(~_wgslsmith_sub_u32(firstTrailingBit(42506u), arg_0)), global0.b, ~(~u_input.c >> ((arg_0 ^ ~arg_0) % 32u)), 1551f).a;
    var var_1 = select(vec4<bool>(var_0.b || all(select(vec2<bool>(false, global0.b), vec2<bool>(false, global0.a), vec2<bool>(global0.a, global0.b))), (~2493u & _wgslsmith_mult_u32(u_input.e.x, 19388u)) < (max(u_input.a.x, 1u) & _wgslsmith_add_u32(0u, u_input.e.x)), all(func_3(func_2(u_input.e.x, false, u_input.e.x, global0.c).a)), var_0.a), !select(!vec4<bool>(true, false, false, var_0.a), select(!vec4<bool>(global0.a, global0.b, true, var_0.a), !vec4<bool>(var_0.a, global0.b, true, false), global0.d == 29209i), select(!vec4<bool>(global0.b, false, var_0.a, true), select(vec4<bool>(var_0.b, global0.b, var_0.b, var_0.b), vec4<bool>(var_0.a, var_0.b, var_0.a, true), global0.b), vec4<bool>(var_0.b, var_0.b, false, var_0.a))), !(_wgslsmith_f_op_f32(-global0.c) > global0.c));
    var var_2 = Struct_3(vec2<u32>(~(~abs(60293u)), ~countOneBits(_wgslsmith_sub_u32(u_input.e.x, u_input.a.x))));
    var var_3 = Struct_1(global0.a, var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1214f, -1195f, var_0.b | func_3(Struct_1(false, false, 1000f, -44973i, arg_1.x)).x)) * global0.c), _wgslsmith_mult_i32(-global0.d, global0.e), ~(-62957i));
    return Struct_1(!global0.a, !all(!vec4<bool>(true, var_3.b, global0.b, var_1.x)), var_0.c, _wgslsmith_mult_i32(1i, -2147483647i) | -reverseBits(1i | global0.d), -16721i);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(1u & _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(u_input.a.xz, u_input.a.zz), 16465u), -vec2<i32>(firstLeadingBit(i32(-1i) * -63939i), _wgslsmith_clamp_i32(func_1(vec3<u32>(43145u, u_input.e.x, u_input.e.x), global0.e, -17302i), global0.d, u_input.d << (u_input.a.x % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_dot_vec3_i32(-(~vec3<i32>(global0.e, -1i, 42079i)), u_input.b.www), ~_wgslsmith_mult_i32(firstTrailingBit(global0.e), _wgslsmith_div_i32(global0.d, 1i)), vec3<u32>(4294967295u, u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 40894u), 1u, u_input.c, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, u_input.c, u_input.c), u_input.e.xzy)), select(vec4<u32>(38295u, 65900u, 0u, 4294967295u), firstLeadingBit(u_input.e), true))), _wgslsmith_div_f32(_wgslsmith_div_f32(-1262f, _wgslsmith_f_op_f32(-global0.c)), global0.c));
}

