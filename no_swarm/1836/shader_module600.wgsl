struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6>;

var<private> global1: i32;

var<private> global2: vec4<bool>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32) -> bool {
    var var_0 = Struct_3(vec4<bool>(true && global2.x, global2.x, all(select(vec2<bool>(false, global2.x), global2.xz, !vec2<bool>(false, global2.x))), any(select(!vec4<bool>(true, true, global2.x, global2.x), !vec4<bool>(true, global2.x, global2.x, global2.x), !vec4<bool>(true, true, global2.x, false)))), all(!global2.zy), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1113f) + _wgslsmith_f_op_f32(2121f - _wgslsmith_f_op_f32(-1000f - 650f)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1246f - _wgslsmith_f_op_f32(select(-304f, -269f, global2.x)))), u_input.b, !global2.xz));
    return false;
}

fn func_2(arg_0: vec4<f32>) -> bool {
    let var_0 = Struct_3(select(select(select(vec4<bool>(global2.x, global2.x, false, false), !vec4<bool>(global2.x, global2.x, global2.x, global2.x), select(vec4<bool>(global2.x, global2.x, true, false), vec4<bool>(global2.x, global2.x, global2.x, true), global2.x)), vec4<bool>(!global2.x, any(vec4<bool>(global2.x, true, global2.x, global2.x)), func_3(2147483647i), true), false), select(!select(vec4<bool>(global2.x, global2.x, false, false), vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, true, global2.x)), !vec4<bool>(false, false, global2.x, false), !(global2.x == global2.x)), !(!(!vec4<bool>(true, global2.x, true, global2.x)))), any(!vec4<bool>(global2.x, false & global2.x, true, true)), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -692f) + -202f)) - vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-arg_0.x))), Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-230f * arg_0.x), 356f)), _wgslsmith_dot_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b)), firstLeadingBit(~vec4<u32>(u_input.b, u_input.b, 1u, u_input.b))), vec2<bool>(true, any(!global2.xzy))));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b | abs(_wgslsmith_mult_u32(var_0.d.b, var_0.d.b)), 6u)];
    let var_2 = Struct_4(~var_1.x, _wgslsmith_f_op_f32(ceil(-686f)));
    var var_3 = -reverseBits(-u_input.a.x | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -1i, 0i, u_input.a.x), vec4<i32>(-2147483647i, -2147483647i, u_input.a.x, 31269i))) | _wgslsmith_div_i32(~(~_wgslsmith_dot_vec2_i32(u_input.a, u_input.a)), u_input.a.x);
    var var_4 = select(select(!vec2<bool>(global2.x, global2.x), vec2<bool>(all(select(var_0.a, vec4<bool>(true, var_0.b, false, true), true)), true), any(select(!var_0.d.c, var_0.a.wx, !vec2<bool>(true, var_0.b)))), vec2<bool>(var_0.d.c.x, true || (_wgslsmith_f_op_f32(-var_2.b) >= _wgslsmith_f_op_f32(step(474f, var_0.d.a)))), any(vec4<bool>(!(u_input.a.x <= 2147483647i), true, var_0.a.x, !(!var_0.a.x))));
    return var_4.x;
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: f32) -> vec2<u32> {
    let var_0 = global2.wz;
    global2 = arg_1.a;
    global2 = select(select(arg_1.a, arg_1.a, arg_1.d.a < _wgslsmith_f_op_f32(round(1061f))), vec4<bool>(false, !(u_input.a.x > 971i), true, !(!select(false, global2.x, arg_1.a.x))), !func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_3, -1007f, arg_1.c.x, arg_1.c.x))), vec4<f32>(-293f, arg_3, -1559f, arg_3))));
    let var_1 = Struct_3(select(vec4<bool>(arg_1.a.x, var_0.x, all(!arg_1.a.wwz), true), !vec4<bool>(false, 0u > arg_2.x, true, all(vec4<bool>(arg_1.b, true, global2.x, var_0.x))), arg_1.a), any(arg_1.a.ywx), vec2<f32>(_wgslsmith_f_op_f32(-563f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-199f * -886f), arg_3)), _wgslsmith_f_op_f32(select(-542f, 1072f, var_0.x))), Struct_1(_wgslsmith_f_op_f32(max(arg_1.c.x, arg_1.c.x)), ~(~max(arg_1.d.b, 15727u)), !arg_1.d.c));
    var var_2 = ~min(_wgslsmith_add_u32(reverseBits(~0u), arg_1.d.b), 60876u);
    return ~min(vec2<u32>(arg_2.x, 1u), _wgslsmith_mod_vec2_u32(vec2<u32>(~arg_2.x, _wgslsmith_dot_vec3_u32(arg_2, vec3<u32>(arg_1.d.b, 0u, 27987u))), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_1.d.b, var_1.d.b), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(0u, arg_2.x), 6u)])));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: u32) -> u32 {
    let var_0 = func_4(all(vec2<bool>(global2.x, true)) | (true || func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1351f, arg_1.d.a, arg_1.d.a, arg_1.d.a))))), Struct_3(select(!select(arg_1.a, arg_1.a, vec4<bool>(global2.x, arg_0.x, global2.x, false)), vec4<bool>(true, arg_0.x || arg_0.x, arg_1.a.x && arg_0.x, func_2(vec4<f32>(arg_1.d.a, arg_1.d.a, -233f, -260f))), vec4<bool>(false && arg_1.d.c.x, global2.x, global2.x, true || arg_0.x)), arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.c.x, arg_1.c.x) - _wgslsmith_f_op_vec2_f32(arg_1.c * arg_1.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1703f, arg_1.c.x)), abs(u_input.b), select(vec2<bool>(true, global2.x), select(vec2<bool>(arg_0.x, true), vec2<bool>(global2.x, true), vec2<bool>(false, false)), arg_0))), firstTrailingBit(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, arg_3)), 57910u, 9467u)), 244f);
    var var_1 = vec4<bool>(true, false, any(!global2.wwx), false);
    var var_2 = vec2<bool>(!(!all(arg_1.a) || var_1.x), var_1.x);
    var var_3 = Struct_4(72931u, _wgslsmith_f_op_f32(-arg_1.d.a));
    global1 = -2147483647i;
    return select(_wgslsmith_dot_vec3_u32(~(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.d.b, 0u, var_0.x), vec3<u32>(22228u, arg_1.d.b, 0u)) | vec3<u32>(arg_3, 55291u, 0u)), vec3<u32>(0u, _wgslsmith_sub_u32(u_input.b >> (0u % 32u), var_0.x | u_input.b), _wgslsmith_mult_u32(var_3.a, 4294967295u) & (1u ^ arg_1.d.b))), _wgslsmith_mult_u32(~70332u, arg_1.d.b), false);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4) -> Struct_1 {
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(Struct_2(Struct_1(-2007f, ~4294967295u, global2.wx)), Struct_4(select(u_input.b, _wgslsmith_clamp_u32(0u, u_input.b, u_input.b), !global2.x) << ((u_input.b & func_1(global2.zy, Struct_3(vec4<bool>(global2.x, false, global2.x, global2.x), false, vec2<f32>(-774f, 718f), Struct_1(640f, 52249u, global2.xw)), vec3<i32>(1i, u_input.a.x, u_input.a.x), 14929u)) % 32u), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-431f - _wgslsmith_f_op_f32(-1611f + -1053f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-239f, 198f))))));
    let var_1 = func_5(Struct_2(Struct_1(-920f, var_0.b, !(!vec2<bool>(true, var_0.c.x)))), Struct_4(~(~u_input.b ^ 1u), var_0.a));
    var var_2 = var_0.b;
    var var_3 = ~vec2<u32>(_wgslsmith_mult_u32(35874u, ~(~var_1.b)), 0u);
    var var_4 = _wgslsmith_sub_i32(-22967i, countOneBits(_wgslsmith_add_i32(-u_input.a.x, countOneBits(-1i) >> (countOneBits(var_1.b) % 32u))));
    var var_5 = Struct_2(Struct_1(var_0.a, _wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.b, 29892u, ~1u), reverseBits(vec3<u32>(4294967295u, var_1.b, 76397u))), vec2<bool>(false, var_0.c.x)));
    var_4 = _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, ~_wgslsmith_mod_i32(u_input.a.x & reverseBits(-2147483647i), -1i));
    let var_6 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(var_0.a, var_0.a, false)), _wgslsmith_f_op_f32(var_5.a.a * 501f)) + _wgslsmith_f_op_f32(f32(-1f) * -174f)), _wgslsmith_f_op_f32(exp2(var_5.a.a)), -1012f, 1000f), _wgslsmith_div_vec4_f32(vec4<f32>(var_5.a.a, _wgslsmith_div_f32(141f, -1221f), _wgslsmith_f_op_f32(f32(-1f) * -360f), _wgslsmith_f_op_f32(ceil(-989f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1222f, -906f, var_1.a, -857f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1095f, var_0.a, -1000f, -630f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_6.wz, 0u, ~4294967295u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-252f, -581f, -584f))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1106f - var_1.a), -520f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(644f, -1000f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(var_6.x, -346f, -485f), var_6.yxy), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(982f, -1000f, var_5.a.a))))))));
}

