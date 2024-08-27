struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    var var_0 = min(_wgslsmith_add_i32(1i & countOneBits(u_input.a), -_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_i32(u_input.a, 30388i)) < 2147483647i;
    var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(368f * -676f), 867f, _wgslsmith_f_op_f32(337f * 478f)))))));
    var_1 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, var_1.x, 521f), vec3<f32>(966f, var_1.x, var_1.x))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.x, var_1.x, 2085f))), vec3<bool>(true, true, true))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(363f, 1000f, -188f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1306f, var_1.x, -912f) * vec3<f32>(1000f, var_1.x, -1469f)))))));
    let var_2 = ~countOneBits(49053u) >= (1u >> ((~_wgslsmith_add_u32(43707u, 25050u) & _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 16484u, 11285u, 1u), vec4<u32>(25110u, 4294967295u, 4294967295u, 1u), vec4<bool>(true, false, false, false)), countOneBits(vec4<u32>(35774u, 0u, 22189u, 29640u)))) % 32u));
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1073f)) * var_1.x), _wgslsmith_f_op_f32(var_1.x + 589f)));
}

fn func_2(arg_0: i32) -> Struct_2 {
    var var_0 = -u_input.a;
    let var_1 = _wgslsmith_f_op_f32(func_3()) > _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -953f), _wgslsmith_f_op_f32(func_3()), any(vec3<bool>(false, true, false)) | true));
    let var_2 = select(vec2<bool>(true, any(select(select(vec3<bool>(var_1, true, true), vec3<bool>(true, var_1, var_1), var_1), select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(false, true, false), false), all(vec3<bool>(false, true, var_1))))), vec2<bool>(false, !all(!vec2<bool>(false, var_1))), var_1);
    let var_3 = 965f;
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1147f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3))), vec2<f32>(_wgslsmith_f_op_f32(-510f * _wgslsmith_f_op_f32(select(var_3, var_3, var_1))), var_3))));
    return Struct_2(any(select(!select(vec3<bool>(var_2.x, var_1, true), vec3<bool>(var_1, false, var_2.x), vec3<bool>(false, false, true)), select(select(vec3<bool>(var_2.x, var_1, var_1), vec3<bool>(false, var_2.x, var_2.x), false), vec3<bool>(var_1, true, false), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), var_1)), !(!var_2.x))), Struct_1(select(vec4<u32>(1u, 1u, 1u, 1u), min(abs(vec4<u32>(46436u, 4294967295u, 1u, 15364u)), countOneBits(vec4<u32>(28049u, 1u, 0u, 0u))), var_1), vec3<bool>((true | var_1) && !var_1, all(vec4<bool>(true, true, var_1, var_2.x)), !all(vec3<bool>(false, false, true))), arg_0, var_4.x <= var_3), ~(select(1u, ~70952u, var_2.x) << (1u % 32u)), Struct_1(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec3<bool>(true, false, var_1), 2147483647i, !any(select(vec4<bool>(false, var_1, true, var_2.x), vec4<bool>(var_2.x, false, true, false), true))), Struct_1(~(~vec4<u32>(1u, 1u, 1u, 1u)), vec3<bool>(true, true, var_2.x), u_input.a, var_2.x));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    return Struct_2(arg_0.d.d, arg_0.b, ~(((13420u | arg_0.d.a.x) >> (_wgslsmith_sub_u32(42563u, 1u) % 32u)) ^ _wgslsmith_div_u32(_wgslsmith_mod_u32(arg_0.b.a.x, 4294967295u), ~arg_0.c)), arg_0.e, Struct_1(vec4<u32>(abs(1u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.b.a.x, arg_0.b.a.x, arg_0.b.a.x, arg_0.d.a.x), vec4<u32>(0u, arg_0.e.a.x, arg_0.b.a.x, 38501u)), 66456u, 123052u << (~arg_0.e.a.x % 32u)), select(!select(vec3<bool>(true, false, arg_0.e.d), arg_0.b.b, arg_0.b.b), !select(arg_0.b.b, arg_0.e.b, arg_0.d.b), arg_0.d.b), _wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a, -1i) | ~u_input.a, u_input.a ^ firstLeadingBit(u_input.a)), func_2(i32(-1i) * -1i).d.d));
}

fn func_1() -> f32 {
    let var_0 = Struct_3(func_4(func_2(-u_input.a ^ ~u_input.a)));
    let var_1 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(abs(~vec2<i32>(35438i, var_0.a.b.c)), ~vec2<i32>(-2147483647i, var_0.a.d.c) & (vec2<i32>(24010i, u_input.a) | vec2<i32>(1i, 0i))), i32(-1i) * -var_0.a.b.c);
    let var_2 = Struct_3(func_2(_wgslsmith_dot_vec3_i32(vec3<i32>(-41405i, var_0.a.e.c, -var_0.a.e.c), _wgslsmith_clamp_vec3_i32(-vec3<i32>(-8925i, 34008i, 0i), vec3<i32>(var_0.a.d.c, u_input.a, 2147483647i), ~vec3<i32>(1194i, -52995i, var_1)))));
    var var_3 = var_2.a.d.d;
    let var_4 = vec3<u32>(~(~func_2(0i).b.a.x), var_0.a.e.a.x, _wgslsmith_dot_vec2_u32(var_0.a.e.a.wy, ~_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(var_0.a.b.a.zz, var_0.a.e.a.wz), var_0.a.e.a.yz | var_2.a.b.a.wx)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-963f)), -721f))) + -1705f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-464f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(468f)))))) * _wgslsmith_f_op_f32(func_1()));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(1u, 1u, 1u));
}

