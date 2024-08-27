struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: u32,
    c: vec3<bool>,
    d: vec2<bool>,
    e: i32,
}

struct Struct_3 {
    a: bool,
    b: bool,
    c: i32,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32) -> i32 {
    var var_0 = arg_1.yw ^ arg_1.xx;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.e.d - arg_0.e.d), arg_0.e.d)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-534f, 652f), vec2<f32>(-1000f, -1000f), vec2<bool>(true, true)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1361f, arg_0.e.d), vec2<f32>(395f, -190f))))));
    let var_2 = Struct_3(true, global0.d.x, _wgslsmith_sub_i32(firstTrailingBit(-2147483647i), ~(~(arg_0.d.x >> (global0.b % 32u)))), arg_0.d, arg_0.e);
    var_0 = arg_1.wx;
    var_0 = arg_1.zz;
    return arg_2;
}

fn func_2(arg_0: vec3<u32>) -> f32 {
    let var_0 = -_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -global0.e), _wgslsmith_sub_vec2_i32(countOneBits(vec2<i32>(1i, -21836i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-10943i, global0.e), vec2<i32>(global0.e, -9852i)))), -select(vec2<i32>(global0.e, global0.e), _wgslsmith_mod_vec2_i32(vec2<i32>(global0.e, global0.e), vec2<i32>(global0.e, 1i)), !global0.c.x));
    var var_1 = global0.a >> (~global0.a % vec2<u32>(32u));
    var var_2 = Struct_2(vec2<u32>(4294967295u, ~(~(~var_1.x))), u_input.a, select(vec3<bool>(func_3(Struct_3(global0.d.x, false, global0.e, vec2<i32>(-1i, 24227i), Struct_1(4294967295u, arg_0.x, global0.b, 459f, 2147483647i)), vec4<u32>(var_1.x, var_1.x, 21956u, 52403u), 2147483647i) >= select(0i, var_0.x, false), true, !global0.c.x), select(select(global0.c, vec3<bool>(true, true, true), true), !global0.c, vec3<bool>(global0.b <= 9232u, !global0.d.x, true)), vec3<bool>(true, global0.c.x, global0.c.x)), select(select(vec2<bool>(true && global0.c.x, true), global0.d, !(!global0.d)), select(vec2<bool>(true, true), !(!global0.c.xx), true), global0.d), 1i);
    var var_3 = Struct_2(~firstTrailingBit(~vec2<u32>(u_input.a, var_1.x)), _wgslsmith_div_u32(1u, arg_0.x), !global0.c, var_2.d, reverseBits(~var_2.e) << (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b, var_2.b, 64621u, global0.a.x), ~vec4<u32>(41469u, arg_0.x, 23248u, 4294967295u)), _wgslsmith_dot_vec2_u32(vec2<u32>(25912u, 1u), arg_0.yz)) % 32u));
    var var_4 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) * _wgslsmith_f_op_f32(-1f))));
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-664f))));
}

fn func_1(arg_0: i32, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(108u, 485u, 28140u), vec3<u32>(1u, arg_1.e.c, u_input.a)), vec3<u32>(u_input.a, 4294967295u, 7531u)) >> (~(~vec3<u32>(global0.b, u_input.a, 4294967295u)) % vec3<u32>(32u)))) * _wgslsmith_f_op_f32(f32(-1f) * -207f));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(296f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.d)), arg_1.e.d, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.e.d + var_0), _wgslsmith_f_op_f32(trunc(-878f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.e.d, arg_1.e.d, arg_1.e.d, var_0)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0, arg_1.e.d, var_0, 446f)))))));
    var_1 = vec4<f32>(-341f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(trunc(605f)), global0.c.x))) - _wgslsmith_f_op_f32(func_2(min(abs(vec3<u32>(57776u, 86115u, 29411u)), abs(vec3<u32>(u_input.a, 7115u, 43256u)))))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f + -881f))));
    global0 = Struct_2(~_wgslsmith_clamp_vec2_u32(firstLeadingBit(_wgslsmith_clamp_vec2_u32(global0.a, global0.a, vec2<u32>(u_input.a, 45989u))), vec2<u32>(1u, global0.b) << (_wgslsmith_sub_vec2_u32(global0.a, vec2<u32>(arg_1.e.c, global0.b)) % vec2<u32>(32u)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.a.x, global0.b), global0.a)), 1u, select(!global0.c, global0.c, true), global0.d, i32(-1i) * -(-31845i << (0u % 32u)));
    var var_2 = Struct_1(4294967295u, _wgslsmith_mult_u32(arg_1.e.b, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 39173u, arg_1.e.a), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, 16152u, 49998u), vec3<u32>(u_input.a, 4294967295u, 1u)))), min(~firstLeadingBit(u_input.a) << (_wgslsmith_div_u32(countOneBits(4294967295u), arg_1.e.c ^ 1u) % 32u), 11410u), _wgslsmith_f_op_f32(636f + _wgslsmith_f_op_f32(select(var_1.x, _wgslsmith_f_op_f32(1274f - var_1.x), true))), _wgslsmith_div_i32(global0.e, -1i) >> (_wgslsmith_sub_u32(~abs(u_input.a), ~arg_1.e.a) % 32u));
    return vec3<bool>(global0.d.x, false, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(vec2<u32>(1u, u_input.a & ~(~global0.b)), u_input.a, select(!(!(!vec3<bool>(global0.d.x, true, global0.d.x))), vec3<bool>(true, global0.c.x, true), select(select(global0.c, global0.c, func_1(-10142i, Struct_3(global0.d.x, global0.d.x, global0.e, vec2<i32>(global0.e, -19915i), Struct_1(global0.b, u_input.a, u_input.a, 278f, global0.e)))), vec3<bool>(true, false, global0.c.x), true)), select(select(!(!vec2<bool>(global0.d.x, global0.d.x)), global0.d, !select(global0.d, vec2<bool>(true, global0.d.x), vec2<bool>(global0.d.x, global0.d.x))), global0.d, global0.c.xx), -select(abs(global0.e), 16316i, any(select(vec4<bool>(global0.c.x, false, true, global0.c.x), vec4<bool>(true, global0.c.x, global0.d.x, false), global0.c.x))));
    var var_0 = Struct_1(4294967295u, abs(firstTrailingBit(~1u)), global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-280f))))), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global0.e, global0.e)), vec2<i32>(0i, global0.e)), global0.e, global0.e));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-977f, 442f, 2132f, 944f) * vec4<f32>(-1259f, var_0.d, 299f, var_0.d))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1101f, 477f, var_0.d, 305f)))))));
    let var_2 = Struct_3(global0.d.x, true, 0i, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(var_0.e | var_0.e, _wgslsmith_add_i32(27697i, var_0.e)), vec2<i32>(_wgslsmith_mult_i32(41317i, global0.e), var_0.e))), Struct_1(var_0.b, u_input.a, u_input.a, -732f, -1i));
    var_0 = Struct_1(var_2.e.b, abs(81760u), global0.a.x & ~_wgslsmith_clamp_u32(7497u, 13769u, ~62501u), -116f, 2147483647i);
    var var_3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_2.e.d)))));
}

