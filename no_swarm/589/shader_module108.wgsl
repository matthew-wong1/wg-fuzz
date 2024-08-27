struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<vec2<u32>, 29>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec3<i32> {
    let var_0 = 9247u;
    var var_1 = 91483u;
    var var_2 = Struct_1(abs(abs(max(vec3<i32>(global0.a.x, global0.a.x, global0.a.x), countOneBits(global0.a)))), !(global0.a.x == _wgslsmith_sub_i32(global0.a.x, global0.a.x)) & false, global0.c);
    let var_3 = Struct_1(abs(vec3<i32>(~var_2.a.x, global0.a.x, -global0.a.x)) ^ ~max(vec3<i32>(0i, 2147483647i, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.a.x, 1i, 2147483647i), global0.a, vec3<i32>(var_2.a.x, -27698i, -42805i))), all(select(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), global0.b), !var_2.b), vec2<bool>(true, true), select(vec2<bool>(global0.b, true), select(vec2<bool>(var_2.b, global0.b), vec2<bool>(false, var_2.b), var_2.b), any(vec2<bool>(true, false))))), global0.c);
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, -383f, -470f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(845f, 136f, -1757f))))) * vec3<f32>(-267f, 2486f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1281f - -363f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1389f, 1074f, 352f) - vec3<f32>(-596f, -2914f, -481f)))))));
    return vec3<i32>(_wgslsmith_mod_i32(var_3.a.x, _wgslsmith_add_i32(-13577i, -(~var_3.a.x))), _wgslsmith_div_i32(17221i | var_2.a.x, ~firstTrailingBit(abs(var_2.a.x))), max(_wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, _wgslsmith_clamp_i32(-10478i, var_2.a.x, var_2.a.x)), -(var_3.a.x ^ var_3.a.x)), min(max(0i, -30026i) << (~var_2.c.x % 32u), 0i >> (var_0 % 32u))));
}

fn func_2(arg_0: f32) -> vec3<u32> {
    global0 = Struct_1(vec3<i32>(select(max(35854i, global0.a.x), _wgslsmith_add_i32(global0.a.x, 20623i), any(vec4<bool>(true, global0.b, true, global0.b))), reverseBits(-1i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-22427i, global0.a.x, global0.a.x, -29574i), vec4<i32>(-2147483647i, global0.a.x, 1i, 11903i)), ~global0.a.x)) ^ max(countOneBits(func_3()), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 9066i), vec2<i32>(global0.a.x, 68036i)), func_3().x, func_3().x)), false, _wgslsmith_add_vec4_u32(~select(min(global0.c, vec4<u32>(u_input.a, 0u, global0.c.x, global0.c.x)), ~vec4<u32>(global0.c.x, 0u, 83219u, global0.c.x), !vec4<bool>(global0.b, global0.b, global0.b, false)), global0.c));
    let var_0 = select(select(select(vec3<bool>(global0.b, arg_0 >= arg_0, global0.b), !select(vec3<bool>(false, true, false), vec3<bool>(false, global0.b, false), vec3<bool>(global0.b, true, true)), !(!global0.b)), vec3<bool>(global0.b, global0.b, select(global0.a.x < 1i, !global0.b, all(vec3<bool>(true, global0.b, true)))), global0.b), vec3<bool>(global0.b, global0.b, select(!(!global0.b), !(14490u < global0.c.x), select(!global0.b, global0.b, true))), !all(!vec4<bool>(true, global0.b, false, true)));
    var var_1 = Struct_1(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a.x, -1i, global0.a.x), firstLeadingBit(vec3<i32>(global0.a.x, -2147483647i, -14075i))), -1i), global0.a.x, global0.a.x >> (_wgslsmith_clamp_u32(~98396u, ~u_input.a, 1u) % 32u)), any(!(!var_0.zx)), global0.c);
    let var_2 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_div_i32(var_1.a.x, var_1.a.x), -1i ^ global0.a.x), var_1.a), reverseBits(min(var_1.a, var_1.a))), true, reverseBits(var_1.c) << (vec4<u32>(var_1.c.x, ~(~4294967295u), 131832u, var_1.c.x) % vec4<u32>(32u)));
    global0 = var_2;
    return _wgslsmith_clamp_vec3_u32(~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(global0.c.zzz, vec3<u32>(var_2.c.x, u_input.a, 1u)), var_1.c.www), _wgslsmith_add_vec3_u32(var_1.c.xzz, vec3<u32>(var_2.c.x, var_2.c.x, var_1.c.x)) >> (~global0.c.yyy % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~var_1.c.xyy, var_2.c.xwz >> (var_2.c.zwz % vec3<u32>(32u)), vec3<u32>(0u, 43194u, 13642u))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(global0.c.xxy, vec3<u32>(var_1.c.x, global0.c.x, 4294967295u)), global0.c.yyz | (vec3<u32>(u_input.a, u_input.a, var_1.c.x) & var_1.c.wzx)) >> (var_1.c.wyw % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.c.x, 87401u << (var_1.c.x % 32u), _wgslsmith_mod_u32(7971u, var_1.c.x)), reverseBits(~vec3<u32>(var_2.c.x, var_2.c.x, u_input.a))) ^ vec3<u32>(1u, ~(var_2.c.x ^ var_1.c.x), global0.c.x | _wgslsmith_sub_u32(u_input.a, var_1.c.x)));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> vec4<u32> {
    global0 = Struct_1(~(~global0.a), arg_0, global0.c);
    let var_0 = (~countOneBits(vec3<u32>(u_input.a, global0.c.x, global0.c.x) | vec3<u32>(global0.c.x, 4294967295u, u_input.a)) & (_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(global0.c.yxw, vec3<u32>(global0.c.x, u_input.a, 2926u), vec3<u32>(u_input.a, global0.c.x, 33960u)), func_2(arg_1.x), abs(vec3<u32>(global0.c.x, global0.c.x, 40393u))) & _wgslsmith_mult_vec3_u32(vec3<u32>(global0.c.x, 51961u, 3721u), select(global0.c.wwx, vec3<u32>(18908u, u_input.a, global0.c.x), false)))) >> (~(~_wgslsmith_sub_vec3_u32(global0.c.xxz, ~global0.c.yzw)) % vec3<u32>(32u));
    global0 = Struct_1(~reverseBits(global0.a), true && (arg_1.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + 460f)), vec4<u32>(_wgslsmith_mod_u32(67802u & _wgslsmith_mult_u32(global0.c.x, 17147u), _wgslsmith_add_u32(var_0.x, ~u_input.a)), _wgslsmith_dot_vec2_u32(~vec2<u32>(20029u, 43163u), vec2<u32>(global0.c.x, 34990u)) << (var_0.x % 32u), select(min(func_2(-1000f).x, ~u_input.a), u_input.a, _wgslsmith_f_op_f32(1559f - arg_1.x) >= -141f), _wgslsmith_mult_u32(u_input.a, u_input.a)));
    let var_1 = !all(vec2<bool>(all(vec3<bool>(true, false, true)), !arg_0));
    var var_2 = 650f;
    return abs(countOneBits(~global0.c));
}

fn func_4(arg_0: vec2<bool>, arg_1: vec3<i32>, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1f, _wgslsmith_div_f32(-2602f, -1443f), var_0.b)), _wgslsmith_f_op_f32(max(-377f, 886f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-423f, 1000f, global0.b))))))));
    let var_2 = Struct_1(arg_1, !arg_3.b, global0.c);
    let var_3 = Struct_1(vec3<i32>(global0.a.x >> (0u % 32u), _wgslsmith_mod_i32(arg_3.a.x, ~countOneBits(var_2.a.x)), _wgslsmith_add_i32(global0.a.x, -3953i)), true, _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_3.c.x, ~0u, arg_3.c.x, arg_2.x | 26503u), countOneBits(global0.c), vec4<u32>(var_2.c.x, ~arg_2.x, 1u, ~u_input.a) ^ var_2.c));
    let var_4 = -15973i;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, false);
    let var_1 = ~(~global0.c.yzz);
    global0 = func_4(select(var_0, vec2<bool>(_wgslsmith_f_op_f32(round(-263f)) < _wgslsmith_f_op_f32(f32(-1f) * -394f), true), false), -(vec3<i32>(-1i) * -global0.a), vec3<u32>(min(u_input.a, 4294967295u), 4294967295u, ~var_1.x), Struct_1(-abs(global0.a) >> (_wgslsmith_mult_vec3_u32(global0.c.xwy, ~vec3<u32>(u_input.a, 1u, 10667u)) % vec3<u32>(32u)), false, select(vec4<u32>(1u, 1u, global0.c.x, 1u) ^ global0.c, ~vec4<u32>(var_1.x, 55551u, 1u, 1u), true) & func_1(!var_0.x, _wgslsmith_f_op_vec4_f32(vec4<f32>(-833f, 841f, 1515f, -797f) * vec4<f32>(-745f, 352f, 241f, 873f)))));
    global1 = array<vec2<u32>, 29>();
    var var_2 = Struct_1(min(vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -2147483647i, global0.a.x), global0.a), ~(-273i)), -firstLeadingBit(global0.a.x), -_wgslsmith_sub_i32(2147483647i, global0.a.x)), _wgslsmith_mod_vec3_i32(global0.a, _wgslsmith_clamp_vec3_i32(global0.a, global0.a, global0.a))), !(!var_0.x), ~firstLeadingBit(_wgslsmith_mult_vec4_u32(vec4<u32>(24503u, 6463u, var_1.x, var_1.x), vec4<u32>(57749u, 42379u, var_1.x, global0.c.x))));
    global1 = array<vec2<u32>, 29>();
    let var_3 = Struct_1(vec3<i32>(-var_2.a.x, var_2.a.x & _wgslsmith_clamp_i32(-28719i, 19705i, global0.a.x >> (u_input.a % 32u)), -9677i), true, vec4<u32>(45705u, ~(~firstTrailingBit(var_1.x)), 7115u, _wgslsmith_add_u32(16460u, u_input.a << (var_1.x % 32u))));
    global1 = array<vec2<u32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec3<u32>(53872u, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_3.c.x, u_input.a), 1u), _wgslsmith_clamp_u32((79990u << (u_input.a % 32u)) | countOneBits(1u), ~var_3.c.x, var_1.x)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-787f - 458f)), -349f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(321f, 307f), _wgslsmith_div_f32(864f, 1483f)))))));
}

