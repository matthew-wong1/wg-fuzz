struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(375f, -1033f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
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

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<f32>, arg_2: vec4<f32>, arg_3: Struct_2) -> vec4<bool> {
    global0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(round(arg_1.x))), vec2<f32>(arg_1.x, 1000f)) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-866f + -259f)), arg_0.x))));
    global0 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2182f + arg_0.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(800f)), _wgslsmith_f_op_f32(arg_1.x + -433f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -187f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(step(arg_0.xz, vec2<f32>(1011f, 1763f))), _wgslsmith_f_op_vec2_f32(-arg_1.xw))), arg_0.zy)) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-493f, global0.x)) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_2.x, -193f))))))), vec2<bool>(arg_3.a.x, !arg_3.b.x)));
    global0 = _wgslsmith_f_op_vec2_f32(arg_2.yz + arg_2.ww);
    var var_0 = vec2<i32>(u_input.a | ~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(arg_3.d, u_input.a)), -vec2<i32>(arg_3.d, -61924i)), -_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_3.d, arg_3.d), arg_3.d | arg_3.d), ~_wgslsmith_mult_i32(-1i, 0i)));
    var var_1 = Struct_1(any(!(!arg_3.a)), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(global0.x + 504f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(arg_0.x)), arg_2.x))) + _wgslsmith_f_op_f32(-arg_0.x)), arg_3.a);
    return !select(vec4<bool>(!(!var_1.d.x), select(var_1.a, any(vec2<bool>(arg_3.a.x, arg_3.c)), !arg_3.b.x), arg_3.b.x, !var_1.d.x), !select(select(arg_3.a, var_1.d, arg_3.a), vec4<bool>(true, var_1.a, arg_3.c, var_1.a), vec4<bool>(var_1.d.x, var_1.d.x, arg_3.c, true)), !(!var_1.d));
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> vec4<f32> {
    var var_0 = vec2<bool>(false, any(vec4<bool>(false, arg_0.x, arg_0.x, any(select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, true, true))))));
    var var_1 = Struct_1(all(!select(arg_0.zz, arg_0.yz, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global0.x, 1758f)), -2879f), _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(-global0.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(825f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-718f))))) - _wgslsmith_f_op_f32(1573f + 1189f)), vec4<bool>(!arg_0.x, arg_0.x, var_0.x, arg_0.x));
    let var_2 = Struct_2(!select(vec4<bool>(any(vec3<bool>(true, var_0.x, true)), all(var_1.d.xw), !var_1.a, all(vec2<bool>(var_0.x, false))), !vec4<bool>(arg_0.x, true, var_1.a, var_0.x), false), select(var_1.d.xwx, select(vec3<bool>(true, var_0.x, !var_0.x), vec3<bool>(func_3(vec3<f32>(global0.x, -196f, var_1.c), vec4<f32>(var_1.b, 1508f, 1765f, -716f), vec4<f32>(-1500f, var_1.b, global0.x, global0.x), Struct_2(vec4<bool>(true, var_0.x, false, var_1.a), vec3<bool>(var_0.x, false, arg_0.x), false, u_input.a)).x, true, var_1.d.x), _wgslsmith_add_i32(-2147483647i, 55567i) >= -arg_1), select(arg_0.zwz, vec3<bool>(all(vec2<bool>(var_0.x, arg_0.x)), !var_0.x, !arg_0.x), arg_0.zzy)), var_0.x, u_input.a >> (15082u % 32u));
    global0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, -2282f) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, var_1.b) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1152f, global0.x)))))));
    var_0 = vec2<bool>(all(var_1.d.zww), false);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(120f, -943f, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.c)) * var_1.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_1.c, var_1.b, -896f, global0.x))))));
}

fn func_2(arg_0: bool, arg_1: vec2<u32>) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(2017f, -256f, global0.x), vec3<f32>(131f, -428f, global0.x), false)), _wgslsmith_div_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, 1084f, -609f, 344f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, 1222f) * vec4<f32>(global0.x, -1152f, -527f, -418f)), Struct_2(vec4<bool>(arg_0, arg_0, arg_0, true), vec3<bool>(false, true, arg_0), arg_0, -1i)), max(1i, u_input.a)))));
    let var_1 = -816f;
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.x))), 694f, _wgslsmith_f_op_f32(-1f), var_1) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(281f, global0.x, -1000f, global0.x) * vec4<f32>(-377f, 1208f, global0.x, 331f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -285f, 262f, -1349f)) - vec4<f32>(_wgslsmith_f_op_f32(1000f - var_1), _wgslsmith_f_op_f32(-global0.x), 1393f, _wgslsmith_f_op_f32(-1083f + var_0.x)))));
    let var_2 = ~arg_1.x == max(~(~11588u), _wgslsmith_div_u32(44975u >> (~arg_1.x % 32u), max(arg_1.x & arg_1.x, firstLeadingBit(30659u))));
    let var_3 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(1i, u_input.a, -2147483647i) >> (arg_1.x % 32u), _wgslsmith_mod_i32(~(-2147483647i), -10030i)), u_input.a), select(~(u_input.a << (21620u % 32u)), -4476i, var_2) & -_wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.a, -24405i), _wgslsmith_div_i32(2147483647i, -2951i)), u_input.a);
    return !(!select(!vec3<bool>(true, false, var_2), vec3<bool>(any(vec3<bool>(var_2, false, var_2)), !var_2, !arg_0), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(352f, -905f, 1000f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, global0.x, var_1, var_0.x), vec4<f32>(global0.x, -524f, var_0.x, var_0.x), vec4<bool>(false, arg_0, true, false))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1498f, -643f, 810f, global0.x))), Struct_2(vec4<bool>(arg_0, false, arg_0, var_2), vec3<bool>(true, true, var_2), false, 12829i)).x));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<bool> {
    return func_2(all(vec2<bool>(true, arg_1.c)), _wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), ~abs(vec2<u32>(55489u, 4294967295u)), ~vec2<u32>(1u, 1u)), min(vec2<u32>(max(4294967295u, 49479u), _wgslsmith_dot_vec2_u32(vec2<u32>(15368u, 29830u), vec2<u32>(56032u, 4294967295u))), vec2<u32>(~4294967295u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, 1u), ~_wgslsmith_add_vec2_u32(vec2<u32>(5194u, 0u), vec2<u32>(1u, 1u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-166f))));
    var var_1 = Struct_1(all(select(func_1(vec2<i32>(-38369i, u_input.a) << (vec2<u32>(0u, 0u) % vec2<u32>(32u)), Struct_2(vec4<bool>(true, true, true, false), vec3<bool>(false, true, false), true, u_input.a)), func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-144f, -1937f, global0.x)), _wgslsmith_div_vec4_f32(vec4<f32>(429f, -1195f, global0.x, -120f), vec4<f32>(569f, 1014f, global0.x, 677f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.x, 1000f, global0.x, global0.x), vec4<f32>(-543f, -2734f, -931f, global0.x), vec4<bool>(false, false, true, true))), Struct_2(vec4<bool>(true, false, false, true), vec3<bool>(true, true, false), false, u_input.a)).wyw, vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(exp2(global0.x))))))), global0.x, !func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 1574f, global0.x) + vec4<f32>(global0.x, 690f, global0.x, global0.x)) + vec4<f32>(-1887f, global0.x, -1000f, global0.x)), vec4<f32>(_wgslsmith_f_op_f32(max(global0.x, global0.x)), _wgslsmith_f_op_f32(ceil(-229f)), _wgslsmith_div_f32(global0.x, -869f), 1608f), Struct_2(vec4<bool>(true, true, true, true), vec3<bool>(true, false, true), 1920f < global0.x, ~(-1248i))));
    var_0 = _wgslsmith_f_op_vec4_f32(func_4(var_1.d, 1i & -(-1i & ~u_input.a))).x;
    var var_2 = Struct_1(all(var_1.d.xyz), 499f, -1154f, select(var_1.d, select(select(vec4<bool>(var_1.d.x, var_1.a, var_1.d.x, var_1.a), !vec4<bool>(var_1.a, true, var_1.a, false), var_1.a), vec4<bool>(!var_1.d.x, true, false, false), var_1.d), !(!var_1.d.x || var_1.d.x)));
    let var_3 = Struct_1(true, global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + var_1.b) + _wgslsmith_f_op_f32(-1025f * -602f)) - _wgslsmith_f_op_vec4_f32(func_4(var_2.d, _wgslsmith_dot_vec4_i32(vec4<i32>(7644i, u_input.a, 0i, -1i), vec4<i32>(21502i, u_input.a, 1i, 41863i)))).x), -354f)), func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, 774f, -1000f) * vec3<f32>(global0.x, 1031f, global0.x)) - vec3<f32>(global0.x, global0.x, global0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(var_1.b, -1413f)), _wgslsmith_f_op_f32(step(var_1.b, var_1.c)), 972f, _wgslsmith_f_op_f32(-var_1.b))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_f_op_f32(var_2.c * -520f)), -2256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(step(var_2.b, _wgslsmith_div_f32(-1474f, global0.x)))), Struct_2(!var_1.d, vec3<bool>(var_1.d.x, true, var_2.b >= var_2.c), var_2.d.x, 2147483647i)));
    let var_4 = _wgslsmith_sub_vec3_u32(countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(22620u, 72532u, 1u), vec3<u32>(79402u, 17486u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 69660u, 43025u), vec3<u32>(0u, 10357u, 1u), vec3<u32>(25469u, 11521u, 0u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), firstLeadingBit(vec3<u32>(1u, 1u, 1u)))) >> (reverseBits(~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 1u))) % vec3<u32>(32u));
    let var_5 = !(select(1u, var_4.x, false) < ~(~var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(var_4.x, 57181u));
}

