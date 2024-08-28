struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_4 {
    global0 = array<vec2<bool>, 6>();
    global0 = array<vec2<bool>, 6>();
    global0 = array<vec2<bool>, 6>();
    global0 = array<vec2<bool>, 6>();
    let var_0 = Struct_3(true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-166f, -824f), vec2<f32>(420f, -151f))) - vec2<f32>(175f, 229f)), vec2<f32>(-304f, -115f), global0[_wgslsmith_index_u32(reverseBits(~(~1u)), 6u)])));
    return Struct_4(Struct_1(_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(735f, 126f))))), 1u), vec2<bool>(any(global0[_wgslsmith_index_u32(0u << (1u % 32u), 6u)]) && false, true));
}

fn func_3(arg_0: Struct_4) -> Struct_1 {
    global0 = array<vec2<bool>, 6>();
    global0 = array<vec2<bool>, 6>();
    let var_0 = Struct_2(arg_0.a, _wgslsmith_dot_vec2_u32(abs(abs(firstTrailingBit(vec2<u32>(29963u, 1u)))), ~select(vec2<u32>(arg_0.a.b, arg_0.a.b), vec2<u32>(1u, arg_0.a.b), select(true, arg_0.b.x, arg_0.b.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.a, arg_0.a.a, func_2(vec4<i32>(-14813i, u_input.a.x, 14888i, u_input.a.x)).a.a)))), arg_0.a);
    let var_1 = ~arg_0.a.b;
    let var_2 = !(!vec3<bool>(false, select(func_2(vec4<i32>(-2147483647i, -33640i, u_input.a.x, -16148i)).b.x, true, any(vec3<bool>(false, true, arg_0.b.x))), !(!arg_0.b.x)));
    return var_0.a;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(534f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(775f + -221f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    var var_1 = Struct_2(func_3(func_2(vec4<i32>(~u_input.a.x, u_input.a.x | 2147483647i, firstTrailingBit(-2147483647i), u_input.a.x))), 4294967295u, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -768f, var_0) - vec3<f32>(926f, 637f, var_0)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0, 1267f, var_0)))))))), func_2(~vec4<i32>(_wgslsmith_clamp_i32(1228i, 0i, u_input.a.x), ~30301i, firstLeadingBit(u_input.a.x), countOneBits(u_input.a.x))).a);
    var var_2 = Struct_3((u_input.a.x | u_input.a.x) >= u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(sign(-1645f)), _wgslsmith_f_op_f32(exp2(var_0))));
    var var_3 = Struct_4(func_2(max(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(23574i, 1i, 42407i | u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(38828i, 2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x))))).a, global0[_wgslsmith_index_u32(1u, 6u)]);
    let var_4 = var_3.b.x;
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_2.b.x), 84864u ^ _wgslsmith_div_u32(~var_1.a.b, _wgslsmith_mod_u32(10282u, 4294967295u))), abs(40606u), vec3<f32>(_wgslsmith_f_op_f32(var_0 + var_3.a.a), _wgslsmith_f_op_f32(max(899f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b.x + -731f)))), _wgslsmith_f_op_f32(min(var_0, 187f))), var_3.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -49502i;
    let var_1 = func_1();
    var var_2 = vec3<bool>(countOneBits(var_0) != _wgslsmith_sub_i32(~(var_0 ^ var_0), -31052i), _wgslsmith_add_u32(var_1.a.b, 113084u) > _wgslsmith_sub_u32(4294967295u, 1u), false);
    var var_3 = u_input.a;
    let var_4 = ~firstLeadingBit(vec3<i32>(u_input.a.x, ~(~u_input.a.x), var_0));
    let var_5 = Struct_2(Struct_1(_wgslsmith_div_f32(-1361f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.c.x)) * var_1.c.x)), _wgslsmith_mult_u32(~1u, (var_1.d.b | 1u) >> (~var_1.a.b % 32u))), ~var_1.d.b, vec3<f32>(var_1.a.a, var_1.a.a, -633f), func_3(Struct_4(Struct_1(var_1.d.a, var_1.b), vec2<bool>(false, var_2.x | var_2.x))));
    var_2 = !select(!vec3<bool>(!var_2.x, var_5.b < 1u, var_2.x), select(select(select(vec3<bool>(true, var_2.x, true), vec3<bool>(false, var_2.x, true), true), !vec3<bool>(true, var_2.x, true), vec3<bool>(false, var_2.x, true)), !select(vec3<bool>(var_2.x, false, var_2.x), vec3<bool>(var_2.x, true, var_2.x), true), !vec3<bool>(false, var_2.x, false)), vec3<bool>(_wgslsmith_clamp_i32(var_0, var_4.x, -6639i) > var_0, any(select(vec3<bool>(true, var_2.x, false), vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(true, false, var_2.x))), !(!var_2.x)));
    let var_6 = Struct_3(var_2.x, var_1.c.yz);
    var_2 = select(!select(vec3<bool>(!var_6.a, !var_2.x, !var_2.x), select(vec3<bool>(var_6.a, false, true), select(vec3<bool>(var_6.a, true, var_6.a), vec3<bool>(var_6.a, var_2.x, false), var_2.x), select(vec3<bool>(var_2.x, false, true), vec3<bool>(true, true, true), var_2.x)), vec3<bool>(any(vec3<bool>(false, false, var_2.x)), select(var_2.x, var_2.x, var_6.a), true)), select(!select(select(vec3<bool>(false, var_2.x, false), vec3<bool>(var_2.x, true, var_2.x), var_2.x), select(vec3<bool>(false, false, true), vec3<bool>(false, false, var_2.x), var_6.a), vec3<bool>(var_2.x, true, var_6.a)), !(!(!vec3<bool>(true, true, var_2.x))), func_2(_wgslsmith_mod_vec4_i32(-vec4<i32>(78208i, var_0, var_0, -1i), vec4<i32>(0i, 17684i, -2147483647i, var_0))).b.x), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(-((i32(-1i) * -20433i) ^ abs(u_input.a.x)), vec4<i32>(u_input.a.x ^ 12632i, 1i, (~(-65419i) & var_4.x) << (var_1.a.b % 32u), u_input.a.x));
}

