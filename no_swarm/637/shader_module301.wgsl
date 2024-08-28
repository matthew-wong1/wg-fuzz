struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
    d: u32,
    e: f32,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(25550u, 4294967295u, 36041u);

var<private> global2: array<i32, 1> = array<i32, 1>(0i);

var<private> global3: array<vec2<i32>, 15>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2() -> i32 {
    var var_0 = 1u;
    var var_1 = Struct_2(true, -454f, u_input.c.x);
    var var_2 = Struct_1(19519u, -1356f, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(min(~vec4<u32>(var_1.c, var_1.c, global1.x, global1.x), ~vec4<u32>(global1.x, 52911u, global1.x, 1u)), vec4<u32>(global1.x, var_1.c, ~var_1.c, var_1.c ^ var_1.c)), ~abs(~vec4<u32>(u_input.c.x, var_1.c, 20121u, u_input.c.x))), 1u)], var_1.c, _wgslsmith_f_op_f32(1000f * -720f));
    global1 = vec3<u32>(u_input.c.x, firstLeadingBit(u_input.c.x), u_input.c.x);
    var_1 = Struct_2(var_1.a, _wgslsmith_f_op_f32(sign(1996f)), 14004u);
    return u_input.b.x;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    let var_0 = 0u;
    global3 = array<vec2<i32>, 15>();
    var var_1 = Struct_2(((!arg_0.x || all(arg_0)) && true) || true, arg_1.b, firstTrailingBit(abs(var_0 ^ arg_1.a)));
    var var_2 = arg_2 <= ~arg_2;
    let var_3 = arg_1;
    return Struct_2(true, _wgslsmith_f_op_f32(sign(var_3.e)), _wgslsmith_clamp_u32(arg_1.a, var_0, ~countOneBits(_wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, var_3.d)))));
}

fn func_1() -> bool {
    let var_0 = u_input.c.x;
    var var_1 = any(vec3<bool>(true, true && !all(vec2<bool>(false, true)), all(vec2<bool>(true, true))));
    var_1 = !(_wgslsmith_dot_vec2_u32(reverseBits(global1.zz), vec2<u32>(1u, global1.x)) < ~4294967295u);
    let var_2 = func_3(vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(253f, 886f))) <= 435f), Struct_1(~(~(u_input.c.x >> (u_input.c.x % 32u))), -841f, firstLeadingBit(func_2()), 2222u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1486f)) - 1f)), u_input.c.x);
    var var_3 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1432f)) * -460f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b - var_2.b))))));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    var var_0 = vec4<bool>(true, select(true, all(vec3<bool>(true, true, true)), any(vec3<bool>(false, true, true))), true, func_3(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), select(false, false, true)), any(select(vec2<bool>(true, false), vec2<bool>(false, false), false))), Struct_1(1u, _wgslsmith_f_op_f32(f32(-1f) * -618f), -(u_input.a.x >> (u_input.c.x % 32u)), max(4294967295u, global1.x), 1527f), ~abs(u_input.c.x)).a);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1318f, _wgslsmith_f_op_f32(f32(-1f) * -1612f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-1000f)), 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(523f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(max(1585f, 2188f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(634f + -2081f), _wgslsmith_f_op_f32(-424f - -194f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))) * -1000f) * _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(947f + 360f))));
    global0 = _wgslsmith_f_op_f32(-var_1.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1718f + var_1.x))));
    let var_2 = abs(~(_wgslsmith_dot_vec4_u32(select(vec4<u32>(1082u, 4294967295u, 4294967295u, global1.x), vec4<u32>(1u, u_input.c.x, 91082u, 65772u), true), vec4<u32>(global1.x, global1.x, global1.x, 3939u)) >> (~u_input.c.x % 32u)));
    var var_3 = u_input.a.xx;
    var var_4 = Struct_1(13704u, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1000f)), -2082f)))))), -var_3.x, _wgslsmith_clamp_u32(abs(abs(global1.x)), u_input.c.x, var_2), -3154f);
    let x = u_input.a;
    s_output = StorageBuffer(~(~41868u));
}

