struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: f32) -> f32 {
    let var_0 = select(!(!vec2<bool>(any(vec2<bool>(global0.x, true)), all(global0.wxx))), vec2<bool>(true, true), firstTrailingBit(_wgslsmith_sub_u32(1u ^ arg_0.a.x, 31498u)) <= 48239u);
    let var_1 = arg_2;
    var var_2 = ~(_wgslsmith_dot_vec4_u32(min(arg_0.a, arg_0.a), firstLeadingBit(max(arg_0.a, arg_0.a))) | u_input.a);
    global0 = select(vec4<bool>(var_0.x, (_wgslsmith_f_op_f32(abs(arg_2)) > arg_2) == !(!global0.x), false, true), vec4<bool>(any(select(select(global0.yx, var_0, arg_1), global0.wy, arg_1 || true)), !(arg_1 && (global0.x && global0.x)), !(_wgslsmith_f_op_f32(-arg_2) > _wgslsmith_f_op_f32(f32(-1f) * -702f)), arg_1), select(select(select(!vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(arg_1, true, var_0.x, global0.x), var_0.x | var_0.x), vec4<bool>(false, true, false, true), true), !select(!vec4<bool>(true, true, arg_1, arg_1), !vec4<bool>(false, global0.x, true, false), vec4<bool>(arg_1, global0.x, false, global0.x)), any(select(!vec3<bool>(global0.x, false, true), select(global0.wzw, global0.xwz, global0.yzw), var_1 >= 142f))));
    var var_3 = _wgslsmith_mult_vec2_u32(select(vec2<u32>(_wgslsmith_mod_u32(arg_0.a.x << (u_input.a % 32u), 4294967295u), min(reverseBits(arg_0.a.x), countOneBits(u_input.a))), arg_0.a.zy, var_0), ~min(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.xx, arg_0.a.zy), 0u << (0u % 32u)), max(vec2<u32>(arg_0.a.x, arg_0.a.x), vec2<u32>(0u, 30590u))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1)));
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-274f)) - -1496f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(Struct_1(vec4<u32>(arg_0.x, 126105u, 59976u, 0u)), false, -997f)), _wgslsmith_f_op_f32(f32(-1f) * -1201f)))), vec2<f32>(-1340f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1123f)) * 1314f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(128f - -1000f))))))));
    var var_1 = Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(u_input.a), _wgslsmith_sub_u32(0u, u_input.a), _wgslsmith_mod_u32(0u, u_input.a), u_input.a) >> (vec4<u32>(~arg_0.x, u_input.a, ~u_input.a, 1u) % vec4<u32>(32u)), ~firstLeadingBit(select(vec4<u32>(10406u, u_input.a, arg_0.x, 1u), vec4<u32>(70899u, 1u, arg_0.x, u_input.a), true))));
    global0 = vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1636f - 178f), _wgslsmith_div_f32(1658f, var_0.x)))) <= _wgslsmith_f_op_f32(var_0.x * var_0.x), global0.x, any(select(!vec3<bool>(global0.x, true, global0.x), vec3<bool>(false & global0.x, u_input.d < u_input.d, global0.x), arg_0.x <= 1u)), var_1.a.x < 1u);
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(804f, -1241f, var_0.x) + vec3<f32>(440f, -1000f, -143f)) * _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_0.x, var_0.x), vec3<f32>(-2948f, 225f, -627f))))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1265f, -448f, _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1547f, var_0.x, 313f) * vec3<f32>(-1566f, -1729f, -1248f))), select(select(vec3<bool>(false, global0.x, false), global0.xyw, global0.x), vec3<bool>(true, global0.x, global0.x), global0.wwz)))));
    global0 = select(vec4<bool>(all(!vec4<bool>(false, false, global0.x, false)) & (_wgslsmith_clamp_u32(4339u, arg_0.x, 51115u) <= firstLeadingBit(var_1.a.x)), false, true, false), !vec4<bool>(any(!vec3<bool>(true, global0.x, false)), 0u >= _wgslsmith_dot_vec2_u32(vec2<u32>(43040u, 16351u), var_1.a.zy), false & !global0.x, true), vec4<bool>(var_2.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(351f)) - _wgslsmith_f_op_f32(-var_2.x)), false, false, all(select(global0.wzy, vec3<bool>(global0.x, false, false), !vec3<bool>(global0.x, global0.x, false)))));
    return Struct_1(abs(var_1.a));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = 23862u == _wgslsmith_dot_vec2_u32(arg_0.a.yx, ~func_2(arg_0.a.zxz).a.yy);
    var var_1 = u_input.b;
    var var_2 = ~_wgslsmith_add_i32(_wgslsmith_div_i32(-arg_1, arg_1) | _wgslsmith_sub_i32(~(-2147483647i), i32(-1i) * -1697i), -(~var_1.x >> (4294967295u % 32u)));
    var_2 = _wgslsmith_add_i32(~var_1.x, -u_input.b.x);
    var_1 = _wgslsmith_add_vec3_i32(min(firstTrailingBit(vec3<i32>(var_1.x, i32(-1i) * -14608i, ~0i)), u_input.c.zww), u_input.b);
    return func_2(vec3<u32>(u_input.a, ~_wgslsmith_clamp_u32(arg_0.a.x, 29354u & arg_0.a.x, _wgslsmith_div_u32(4294967295u, u_input.a)), ~(reverseBits(4294967295u) & ~u_input.a)));
}

fn func_1() -> i32 {
    let var_0 = reverseBits(68765i);
    var var_1 = func_4(func_2(~(vec3<u32>(1u, 24346u, 10406u) ^ (vec3<u32>(u_input.a, 4294967295u, 104902u) >> (vec3<u32>(u_input.a, 35936u, 4294967295u) % vec3<u32>(32u))))), u_input.c.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(790f, -473f)))))))));
    var_1 = Struct_1(firstLeadingBit(vec4<u32>(_wgslsmith_sub_u32(7264u, 1u), _wgslsmith_sub_u32(var_1.a.x, 0u), 50454u, var_1.a.x | u_input.a) ^ ~(~var_1.a)));
    global0 = select(!vec4<bool>(false, !(!global0.x), global0.x, any(!global0.xw)), vec4<bool>(false, all(select(vec4<bool>(global0.x, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, global0.x, false), !vec4<bool>(false, true, global0.x, true))), select(!global0.x, global0.x, false), any(!select(vec4<bool>(global0.x, global0.x, false, global0.x), vec4<bool>(false, global0.x, false, true), vec4<bool>(global0.x, global0.x, global0.x, global0.x)))), global0.x);
    let var_2 = _wgslsmith_mod_vec4_i32(~vec4<i32>(-u_input.c.x << (min(u_input.a, u_input.a) % 32u), firstLeadingBit(var_0 | 0i), var_0 & -var_0, u_input.b.x), u_input.c);
    return select(56017i, 1i, select(any(vec4<bool>(any(global0.zxx), global0.x, false, true)), true, !((global0.x || true) == global0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    var var_1 = vec4<bool>(global0.x || (~0i > reverseBits(func_1())), global0.x, !any(vec2<bool>(true, true)), false);
    var var_2 = !(!select(vec4<bool>(true, var_1.x, all(vec3<bool>(global0.x, true, true)), !global0.x), !select(vec4<bool>(var_1.x, global0.x, global0.x, var_1.x), vec4<bool>(var_1.x, var_1.x, false, var_1.x), global0.x), global0.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(1384f, -906f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) + -1430f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -932f)))));
    var var_4 = vec2<u32>(_wgslsmith_add_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~0u, u_input.a), u_input.a), _wgslsmith_div_u32(u_input.a, func_2(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.a))).a.x)), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -937f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_3 + _wgslsmith_f_op_vec2_f32(-vec2<f32>(2549f, var_3.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) + _wgslsmith_f_op_f32(var_3.x + var_3.x)), _wgslsmith_f_op_f32(f32(-1f) * -1510f))), firstLeadingBit(min(_wgslsmith_add_u32(0u, 0u) ^ (var_4.x ^ 0u), ~_wgslsmith_dot_vec2_u32(vec2<u32>(66629u, 23277u), vec2<u32>(u_input.a, 1u)))));
}

