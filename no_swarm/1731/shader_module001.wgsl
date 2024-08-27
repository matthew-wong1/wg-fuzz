struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: u32,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_3, 16>;

var<private> global2: f32;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2() -> i32 {
    let var_0 = min(abs(4294967295u), _wgslsmith_mod_u32(min(~(~u_input.b), _wgslsmith_div_u32(u_input.b, _wgslsmith_mult_u32(u_input.b, 1u))), 2577u));
    return ~global0.x;
}

fn func_3(arg_0: bool) -> vec2<bool> {
    global2 = _wgslsmith_f_op_f32(max(1107f, -674f));
    let var_0 = all(select(select(select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), arg_0), vec2<bool>(true, true), true), vec2<bool>(arg_0, any(vec4<bool>(arg_0, true, true, arg_0))), select(vec2<bool>(true, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, false), true), false))) || (arg_0 || !(!arg_0));
    global0 = vec2<i32>(global0.x, 23179i) >> (~(vec2<u32>(~25936u, ~u_input.b) << (vec2<u32>(u_input.b, _wgslsmith_sub_u32(u_input.b, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_1 = ~countOneBits(vec3<u32>(_wgslsmith_mult_u32(~4294967295u, ~19296u), 1u, 4294967295u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(abs(-178f)), -555f))));
    return vec2<bool>(var_0, any(select(!(!vec4<bool>(true, var_0, var_0, false)), select(select(vec4<bool>(arg_0, arg_0, var_0, var_0), vec4<bool>(true, arg_0, true, false), false), !vec4<bool>(true, false, arg_0, var_0), vec4<bool>(var_0, true, var_0, false)), true)));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    let var_0 = Struct_1(arg_1.x, _wgslsmith_f_op_f32(-1329f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(arg_2, 1000f, arg_1.x)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_2)))), vec4<u32>(~countOneBits(u_input.b), 122886u, 13652u, 1u), vec4<bool>(arg_1.x, all(arg_1.xwx), arg_1.x, true));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2202f + _wgslsmith_f_op_f32(trunc(1630f))))), arg_2));
    var var_1 = !all(!arg_1.yy);
    let var_2 = Struct_4(global1[_wgslsmith_index_u32(~u_input.b, 16u)]);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2)), -947f, 1127f, var_0.c);
    return Struct_2(_wgslsmith_dot_vec3_i32(-vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, global0.x, -23606i), vec3<i32>(10315i, u_input.a, global0.x)), u_input.a, u_input.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, global0.x, global0.x), vec3<i32>(-4205i, 39641i, u_input.a)), -global0.x), ~(-vec3<i32>(u_input.a, -2147483647i, u_input.a)), firstTrailingBit(reverseBits(vec3<i32>(29057i, 8627i, u_input.a))))));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_5 {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(1000f)), -1053f)), vec2<f32>(1f, 1210f))), vec4<bool>(any(vec4<bool>(true, true, any(vec2<bool>(true, false)), true)), (u_input.a <= func_2()) & all(func_3(true)), true, true & (arg_1.x < abs(76762u))), 188f);
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1388f)))) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(446f + 900f))))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f + var_2) * 1017f))));
    var var_3 = reverseBits(u_input.b);
    return Struct_5(min(reverseBits(countOneBits(vec4<i32>(18952i, 2147483647i, var_1.a, global0.x))) >> (_wgslsmith_clamp_vec4_u32(arg_1, _wgslsmith_div_vec4_u32(arg_1, arg_1), _wgslsmith_mult_vec4_u32(arg_1, arg_1)) % vec4<u32>(32u)), vec4<i32>(u_input.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(0i, 1i), select(vec2<i32>(arg_2.a, -7997i), vec2<i32>(arg_0.a, arg_2.a), true)), 2147483647i, func_4(vec2<f32>(201f, var_2), vec4<bool>(true, true, true, true), _wgslsmith_f_op_f32(ceil(var_2))).a)), select(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), false), true), vec3<bool>(true, 52405u != u_input.b, false), all(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), arg_1.x <= arg_1.x, any(vec3<bool>(true, false, true))))), max(_wgslsmith_add_vec4_u32(abs(vec4<u32>(0u, arg_1.x, arg_1.x, 3682u)), arg_1), firstLeadingBit(arg_1)) << ((arg_1 ^ min(arg_1, vec4<u32>(4294967295u, u_input.b, 4294967295u, 71292u))) % vec4<u32>(32u)), ~firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(arg_1.wwz, arg_1.xwy), max(arg_1.zxy, arg_1.wwy))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 51063i;
    var var_1 = func_1(Struct_2(min(u_input.a | (-2147483647i >> (u_input.b % 32u)), u_input.a)), ~vec4<u32>(countOneBits(u_input.b >> (37215u % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b)), ~4680u, 0u), Struct_2(~(-(-2147483647i | global0.x))));
    var var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -818f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-393f, 491f)), -826f, false)) + 385f)));
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec2<i32>(var_1.a.x << (u_input.b % 32u), _wgslsmith_sub_i32(-41181i, var_1.a.x))), var_1.a, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1239f, 107f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1061f, 300f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1067f), -1626f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2156f, 217f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(342f, -388f))))))), min(firstTrailingBit(var_1.c.yyw), vec3<u32>(~var_1.d, abs(u_input.b), 1u) >> (firstLeadingBit(max(var_1.c.xzz, vec3<u32>(4294967295u, 4294967295u, 0u))) % vec3<u32>(32u))));
}

