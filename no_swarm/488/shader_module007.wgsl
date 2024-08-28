struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(false), Struct_3(true));

var<private> global1: u32 = 6632u;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = array<Struct_3, 12>();
    let var_0 = -59972i;
    let var_1 = global0[_wgslsmith_index_u32(1u, 12u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(-1338f))));
    let var_3 = Struct_1(true, ~(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(1u, 1u))), true);
    return -1023f;
}

fn func_2() -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(466f, -668f, 190f))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1324f, -1000f)), vec3<f32>(-1777f, -561f, 361f)))))));
    let var_1 = Struct_2(147f, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.x, -159f, false))) > 949f, select(max(~1u, _wgslsmith_sub_u32(24706u, 1u)), 1u, false), true));
    var var_2 = var_1.a;
    var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(f32(-1f) * -185f))));
    var var_3 = var_1.a;
    return vec3<bool>(all(vec3<bool>(!var_1.b.a, var_1.b.a, all(!vec2<bool>(var_1.b.c, false)))), false, any(select(!vec3<bool>(var_1.b.a, false, var_1.b.c), vec3<bool>(select(var_1.b.c, var_1.b.a, true), var_1.b.a | var_1.b.c, false | var_1.b.c), all(select(vec4<bool>(var_1.b.c, var_1.b.c, true, true), vec4<bool>(var_1.b.a, false, true, var_1.b.a), var_1.b.c)))));
}

fn func_1(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec2<bool>(true, (false || any(func_2())) && true);
    var var_1 = vec2<bool>(true, true);
    global0 = array<Struct_3, 12>();
    let var_2 = global0[_wgslsmith_index_u32(3513u, 12u)];
    var var_3 = Struct_1(~u_input.a > ~5112i, firstLeadingBit(reverseBits(4824u)), false);
    return global0[_wgslsmith_index_u32(42677u, 12u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(true, true, true), !select(select(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true)), all(select(vec2<bool>(all(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, true, false, false))), vec2<bool>(true, true), select(vec2<bool>(false, true), select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))))));
    var var_1 = func_1(Struct_3(var_0.x));
    var_0 = select(select(!(!(!vec3<bool>(var_0.x, var_0.x, var_1.a))), vec3<bool>(!var_0.x, all(select(vec3<bool>(var_0.x, false, true), vec3<bool>(false, var_0.x, false), vec3<bool>(false, false, var_0.x))), select(var_1.a, func_1(Struct_3(false)).a, all(vec4<bool>(var_0.x, var_1.a, false, true)))), false), vec3<bool>(any(vec3<bool>(true, true, true)), var_0.x, !(var_1.a | var_1.a) | func_2().x), true);
    var var_2 = vec4<f32>(_wgslsmith_div_f32(598f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), -368f)), _wgslsmith_f_op_f32(-1348f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -636f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(197f, 416f))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x * var_2.x)), Struct_1(var_0.x, ~(~(~4294967295u)), any(select(select(vec4<bool>(var_1.a, var_0.x, false, var_0.x), vec4<bool>(var_1.a, false, var_1.a, var_1.a), vec4<bool>(var_0.x, var_0.x, true, false)), vec4<bool>(var_1.a, false, var_1.a, false), var_1.a))));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.x))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_2.x, -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-723f, var_2.x, var_1.a)))))));
    global0 = array<Struct_3, 12>();
    let var_5 = var_0.x;
    var_0 = vec3<bool>(true, all(func_2().zx), -2147483647i <= -u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(0u, 4294967295u, 28643u) ^ var_3.b.b, abs(4294967295u)), ~firstLeadingBit(_wgslsmith_div_u32(var_3.b.b, 1u)), _wgslsmith_div_u32(var_3.b.b, reverseBits(var_3.b.b)), abs(4294967295u)), ~vec3<u32>(0u, 38775u, ~var_3.b.b));
}

