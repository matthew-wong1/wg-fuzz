struct Struct_1 {
    a: vec4<f32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<f32>(1928f, -865f, 1843f, 373f), true, vec4<u32>(4294967295u, 47682u, 11623u, 1u)), Struct_1(vec4<f32>(127f, -613f, 1000f, -827f), true, vec4<u32>(49472u, 0u, 0u, 1u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> u32 {
    global0 = array<Struct_1, 2>();
    let var_0 = vec2<i32>(-1i, 44023i);
    global0 = array<Struct_1, 2>();
    var var_1 = global0[_wgslsmith_index_u32(~13172u, 2u)];
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(257f * var_1.a.x) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(1234f, arg_0)))), _wgslsmith_f_op_f32(abs(var_1.a.x))))), _wgslsmith_f_op_f32(f32(-1f) * -824f), _wgslsmith_f_op_f32(trunc(325f)));
    return _wgslsmith_div_u32(reverseBits(0u), 9587u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<i32>, arg_3: vec3<u32>) -> bool {
    global0 = array<Struct_1, 2>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-609f + arg_0.a.x)), arg_0.a.x, _wgslsmith_f_op_f32(floor(-2141f)), 1068f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(649f, arg_0.a.x, 477f, -1588f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(807f, arg_1.a.x, arg_0.a.x, arg_1.a.x) - arg_1.a)) + arg_1.a)), false | (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(781f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f + arg_0.a.x))), ~(~select(arg_1.c, arg_0.c, select(vec4<bool>(false, arg_0.b, true, true), vec4<bool>(arg_1.b, false, arg_0.b, false), false))));
    let var_1 = ~func_3(-1416f);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)), 263f));
    global0 = array<Struct_1, 2>();
    return arg_1.b;
}

fn func_4(arg_0: bool, arg_1: bool) -> Struct_1 {
    global0 = array<Struct_1, 2>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -431f) + _wgslsmith_f_op_f32(step(2804f, 1145f))), _wgslsmith_f_op_f32(-235f - _wgslsmith_f_op_f32(-371f + 1296f)))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-481f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1471f, -1019f)) - -1501f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-835f, -420f)) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1857f, -345f)), vec2<f32>(-407f, 1000f)))));
    let var_1 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * -698f) + -1357f), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-2369f, var_0.x)) * 1822f) - -859f), -192f), arg_1, _wgslsmith_mod_vec4_u32(~reverseBits(~vec4<u32>(856u, 0u, 27333u, 1u)), firstTrailingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 74647u, 45963u), vec4<u32>(0u, 4294967295u, 8317u, 0u)), ~1u, ~0u, 0u))));
    global0 = array<Struct_1, 2>();
    var var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.a.x, 287f, var_1.a.x)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1708f, -1000f, -1129f) + vec3<f32>(-422f, var_0.x, -466f)))))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-203f - 621f), _wgslsmith_f_op_f32(max(-1571f, -1130f)), _wgslsmith_f_op_f32(floor(1283f)))))), var_1.b, var_1.c);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32, arg_3: vec2<bool>) -> vec4<f32> {
    var var_0 = !arg_3.x;
    var var_1 = func_4(any(select(vec4<bool>(true, arg_1.x, true, arg_0.a.x == 1103f), !vec4<bool>(arg_0.b, true, false, arg_1.x), func_2(Struct_1(vec4<f32>(arg_0.a.x, 1000f, arg_0.a.x, arg_0.a.x), arg_1.x, vec4<u32>(27837u, arg_0.c.x, arg_0.c.x, 4294967295u)), Struct_1(arg_0.a, arg_1.x, arg_0.c), -vec2<i32>(1i, -74990i), vec3<u32>(0u, arg_0.c.x, arg_0.c.x) & vec3<u32>(31054u, 4294967295u, arg_0.c.x)))), true);
    var var_2 = func_4(all(arg_3), var_1.b);
    var var_3 = func_4(var_1.b, arg_1.x);
    global0 = array<Struct_1, 2>();
    return vec4<f32>(_wgslsmith_f_op_f32(trunc(var_1.a.x)), var_1.a.x, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1690f, _wgslsmith_div_f32(-993f, var_3.a.x)), -975f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.a.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1455f, 1687f, 1000f, 471f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(319f, 175f, -1438f, 520f)))) + _wgslsmith_div_vec4_f32(vec4<f32>(635f, 970f, 155f, 1204f), _wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(4294967295u, 2u)], vec3<bool>(false, true, false), u_input.d.x, vec2<bool>(true, false))))), vec4<f32>(-507f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(788f)) * -1132f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -865f) - _wgslsmith_f_op_f32(661f + -576f)), _wgslsmith_f_op_vec4_f32(func_1(Struct_1(vec4<f32>(1000f, 497f, 1333f, 896f), true, vec4<u32>(24128u, 0u, 4294967295u, 1u)), vec3<bool>(true, true, true), _wgslsmith_sub_i32(1i, u_input.a.x), vec2<bool>(true, true))).x))), !(((u_input.d.x > u_input.b.x) && true) == any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true))), firstTrailingBit(~vec4<u32>(1u, _wgslsmith_mult_u32(1u, 7814u), max(5026u, 1u), 0u)));
    global0 = array<Struct_1, 2>();
    var var_1 = func_4(var_0.b, false).c.xzx;
    var var_2 = var_0.a.x;
    var_0 = global0[_wgslsmith_index_u32((func_3(_wgslsmith_f_op_f32(-1000f * -739f)) ^ 4294967295u) & ~_wgslsmith_mult_u32(var_0.c.x, _wgslsmith_add_u32(113259u, var_1.x) | ~var_0.c.x), 2u)];
    let var_3 = select(!select(vec3<bool>(true, var_0.b, false), !select(vec3<bool>(true, var_0.b, true), vec3<bool>(var_0.b, false, false), var_0.b), select(vec3<bool>(true, true, true), select(vec3<bool>(false, var_0.b, false), vec3<bool>(var_0.b, var_0.b, var_0.b), false), !vec3<bool>(false, true, var_0.b))), !vec3<bool>(var_0.b, true, all(select(vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(false, var_0.b, true), false))), vec3<bool>(!(var_0.b & (var_0.c.x >= 48948u)), var_0.b, var_0.b));
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(func_4(var_3.x, false).a.x - _wgslsmith_f_op_f32(trunc(1048f))), -880f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.a.x, _wgslsmith_f_op_vec4_f32(func_1(global0[_wgslsmith_index_u32(~var_1.x, 2u)], !var_3, u_input.b.x, var_3.zx)).x))));
    global0 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(var_0.c.xwx), select(u_input.a.x, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, u_input.b.x, u_input.a.x, -12793i)), ~u_input.a), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(1125f, _wgslsmith_f_op_f32(min(var_0.a.x, -565f)))) + _wgslsmith_f_op_f32(var_0.a.x - _wgslsmith_f_op_f32(-var_0.a.x))));
}

