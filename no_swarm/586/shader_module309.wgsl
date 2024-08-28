struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(4294967295u, 0i, vec3<bool>(true, false, false)), Struct_2(62186u, -47092i, vec3<bool>(true, true, true)), Struct_2(43232u, i32(-2147483648), vec3<bool>(false, true, false)), Struct_2(2165u, i32(-2147483648), vec3<bool>(true, true, true)), Struct_2(91729u, 0i, vec3<bool>(true, false, true)), Struct_2(4294967295u, 19464i, vec3<bool>(true, false, false)), Struct_2(4294967295u, 40371i, vec3<bool>(false, true, false)));

var<private> global2: array<Struct_2, 18>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_2) -> f32 {
    global2 = array<Struct_2, 18>();
    let var_0 = Struct_2(max(56532u, firstTrailingBit(~0u)), u_input.a.x, !(!select(arg_2.c, arg_2.c, select(arg_2.c, vec3<bool>(arg_0, arg_0, true), true))));
    var var_1 = Struct_1(!(firstTrailingBit(_wgslsmith_sub_i32(var_0.b, 0i)) == reverseBits(_wgslsmith_div_i32(-1i, var_0.b))));
    global2 = array<Struct_2, 18>();
    var var_2 = ~(~vec3<u32>(arg_1.x, firstLeadingBit(_wgslsmith_dot_vec3_u32(arg_1.zyw, vec3<u32>(4294967295u, var_0.a, u_input.b))), abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, 1u, 18883u), arg_1.zwx))));
    return -559f;
}

fn func_3(arg_0: i32, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_2(min(_wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.x, arg_1.x), countOneBits(vec2<u32>(arg_1.x, u_input.b))), ~(~(22648u ^ u_input.b))), arg_0, select(!vec3<bool>(any(vec3<bool>(true, true, false)), true, all(vec2<bool>(true, false))), !select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)));
    let var_1 = var_0.c.yy;
    global2 = array<Struct_2, 18>();
    var var_2 = _wgslsmith_f_op_f32(-419f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-706f * 449f))));
    global0 = !all(vec4<bool>(any(vec3<bool>(true, true, var_0.c.x)), var_1.x, !var_1.x, select(4294967295u, u_input.b, var_1.x) >= ~0u));
    return ~_wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(-var_0.b, firstLeadingBit(45179i))), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-86055i, arg_0), u_input.a.wz));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(392f, 1155f)), _wgslsmith_f_op_f32(func_2(false, vec4<u32>(u_input.b, 53605u, u_input.b, 4294967295u), Struct_2(1u, -30551i, vec3<bool>(false, false, false)))), true)) + _wgslsmith_f_op_f32(sign(-631f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f + -1820f))))));
    var var_1 = Struct_2(~(~(u_input.b ^ ~u_input.b)), i32(-1i) * -1i, select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, any(vec2<bool>(true, false)))), vec3<bool>(true, true, true), !((u_input.d > u_input.c) | (u_input.a.x < u_input.a.x))));
    var var_2 = Struct_1(any(!select(var_1.c.yx, var_1.c.yz, true)) & false);
    var var_3 = var_1.c.yx;
    let var_4 = Struct_2(2887u, _wgslsmith_mod_i32(func_3(-var_1.b, ~firstTrailingBit(vec4<u32>(u_input.b, u_input.b, var_1.a, var_1.a))), var_1.b | _wgslsmith_mod_i32(firstTrailingBit(var_1.b), ~(-30619i))), var_1.c);
    return Struct_1(var_1.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = -1000f;
    global2 = array<Struct_2, 18>();
    var var_1 = vec2<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + var_0), _wgslsmith_f_op_f32(f32(-1f) * -408f)) - -464f));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-var_0), var_1.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1316f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))))) + var_1.x));
    let var_3 = Struct_2(4294967295u, arg_1.x, vec3<bool>(true, !any(select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(false, false, false), arg_0.a)), (any(vec2<bool>(arg_0.a, true)) || arg_3.a) & false));
    return vec4<bool>(true, all(vec4<bool>(var_0 == var_2.x, true, false, any(!var_3.c.xy))), true, arg_0.a);
}

fn func_5(arg_0: vec4<f32>, arg_1: vec4<f32>) -> bool {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) + 752f), arg_1.x))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.yxy * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.wwz * vec3<f32>(arg_1.x, 325f, 384f)))))) + _wgslsmith_f_op_vec3_f32(-arg_0.zww));
    let var_2 = global2[_wgslsmith_index_u32(4294967295u, 18u)];
    var var_3 = u_input.c;
    var_0 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-853f, _wgslsmith_f_op_f32(step(var_0.x, arg_1.x))), vec2<f32>(var_0.x, arg_1.x), vec2<bool>(var_2.c.x, var_2.c.x)))))));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(true, true, u_input.b <= u_input.b, true))), func_5(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2227f, -984f, -845f, -1000f)) * vec4<f32>(714f, 860f, 773f, -1000f)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1258f), _wgslsmith_f_op_f32(abs(492f)), _wgslsmith_f_op_f32(step(253f, 538f)), _wgslsmith_div_f32(-1000f, -702f)), vec4<f32>(-108f, _wgslsmith_f_op_f32(f32(-1f) * -977f), _wgslsmith_f_op_f32(select(1496f, -115f, false)), 1004f), func_4(func_1(), u_input.a.wyx | vec3<i32>(u_input.d, 32011i, 0i), vec2<i32>(-11564i, u_input.a.x) & u_input.a.yz, func_1())))));
    var var_1 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(min(1936f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-787f - -452f) - _wgslsmith_f_op_f32(abs(-1633f))))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f) - 1000f)))));
    let var_2 = Struct_1(var_0.x);
    var var_3 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-var_1.zy)));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-161f, _wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(func_2(var_2.a, ~vec4<u32>(u_input.b, 4294967295u, 6372u, 1u), global2[_wgslsmith_index_u32(53219u, 18u)]))))));
    let var_4 = vec2<i32>(15528i, -u_input.c);
    global1 = array<Struct_2, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-911f, _wgslsmith_f_op_f32(f32(-1f) * -798f)))), 4294967295u);
}

