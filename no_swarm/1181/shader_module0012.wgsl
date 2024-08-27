struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(38491u), Struct_1(29189u), Struct_1(7870u), Struct_1(0u), Struct_1(18487u), Struct_1(1u), Struct_1(86747u), Struct_1(0u), Struct_1(128616u), Struct_1(57132u), Struct_1(4294967295u));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: u32) -> bool {
    global0 = array<Struct_1, 11>();
    let var_0 = vec4<i32>(_wgslsmith_mod_i32((u_input.e.x ^ -2147483647i) ^ -8889i, _wgslsmith_dot_vec4_i32(u_input.a, countOneBits(vec4<i32>(u_input.a.x, u_input.c.x, -39823i, -2147483647i)))), -_wgslsmith_sub_i32(_wgslsmith_sub_i32(-24210i, 1i), _wgslsmith_mod_i32(16610i, 7479i)), -(u_input.e.x & u_input.a.x), u_input.c.x) & vec4<i32>(-min(u_input.a.x, u_input.e.x), 13781i, u_input.c.x & (~(-2147483647i) >> (~arg_0.x % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(25304i, -3460i, u_input.e.x, u_input.e.x), u_input.e, true), u_input.a), vec4<i32>(-u_input.e.x, 25676i, -1142i, 1i)));
    let var_1 = all(select(vec2<bool>(true, arg_1), !(!vec2<bool>(arg_1, arg_1)), false));
    let var_2 = select(vec3<bool>(true, false, all(vec2<bool>(all(vec2<bool>(var_1, arg_1)), !var_1))), vec3<bool>(!var_1, any(select(!vec3<bool>(false, arg_1, false), select(vec3<bool>(false, var_1, true), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, true, true)), !vec3<bool>(var_1, var_1, var_1))), true), true);
    global0 = array<Struct_1, 11>();
    return true;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: Struct_1) -> vec4<f32> {
    var var_0 = all(vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false))) & true, all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true))), true, !(!func_3(u_input.d.xx, true, arg_2.a))));
    var var_1 = _wgslsmith_sub_vec4_u32(~(~vec4<u32>(abs(u_input.b), arg_2.a, 1u, _wgslsmith_sub_u32(arg_2.a, u_input.b))), ~_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_2.a, arg_2.a, arg_2.a), min(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, arg_2.a, 41065u, 4294967295u), vec4<u32>(31247u, arg_2.a, u_input.d.x, arg_2.a)), ~vec4<u32>(4294967295u, arg_2.a, 0u, u_input.d.x))));
    var var_2 = Struct_1(abs(arg_2.a));
    var_1 = abs(~select(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, arg_2.a, 105949u, 1u), vec4<u32>(0u, arg_2.a, arg_2.a, 0u), vec4<u32>(var_2.a, 1u, var_1.x, arg_2.a)), vec4<u32>(~var_1.x, firstLeadingBit(0u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 51112u)), ~var_1.x), vec4<bool>(true, true, true, true)));
    var var_3 = global0[_wgslsmith_index_u32(~1587u, 11u)];
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), arg_0, -1191f)))));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_1 {
    var var_0 = Struct_1(max(~4294967295u, arg_1.a));
    var_0 = arg_1;
    var_0 = Struct_1(1u);
    global0 = array<Struct_1, 11>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(256f, -421f, 545f, -307f))))) + _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-400f, 649f, 1027f, -1000f) - vec4<f32>(-1000f, -645f, -529f, 699f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-278f, -620f, 925f, 1507f)))) + _wgslsmith_f_op_vec4_f32(func_2(-758f, 0i, Struct_1(arg_1.a)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-917f, 169f, 458f, 1935f))))));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    let var_1 = func_1(true, global0[_wgslsmith_index_u32(~u_input.b, 11u)], ~vec2<u32>(1u, ~(~0u)));
    let var_2 = select(select(vec3<bool>(true, true, false), vec3<bool>(all(vec4<bool>(false, true, false, true)), all(vec2<bool>(true, true)), any(vec4<bool>(true, true, true, true))), false), !select(vec3<bool>(true, true, all(vec3<bool>(true, false, true))), vec3<bool>(true, true, func_3(u_input.d.xz, true, 82385u)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true))), true | ((~1i < firstLeadingBit(u_input.e.x)) & select(select(true, true, false), true, all(vec4<bool>(true, true, true, false)))));
    let var_3 = _wgslsmith_div_u32(var_1.a, 58608u);
    var var_4 = 2147483647i;
    var_0 = ~((_wgslsmith_dot_vec4_u32(~vec4<u32>(var_1.a, 69789u, 1u, 31856u), vec4<u32>(var_3, u_input.b, 22789u, var_1.a)) << (~_wgslsmith_add_u32(22258u, var_3) % 32u)) >> (~u_input.d.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, min(_wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(1u, 48087u)), u_input.d.xy ^ u_input.d.zz) ^ abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.a, var_3), vec2<u32>(var_1.a, var_3), u_input.d.zy)), ~reverseBits(abs(u_input.d.xz))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(626f + -1428f) - _wgslsmith_f_op_f32(floor(1282f))), _wgslsmith_f_op_f32(-294f + 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-460f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-772f * -634f))) + 1612f));
}

