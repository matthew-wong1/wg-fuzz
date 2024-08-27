struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
    e: bool,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_2,
    c: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: u32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -34073i;

var<private> global1: vec4<f32> = vec4<f32>(-1722f, 2956f, -1338f, -464f);

var<private> global2: bool = true;

var<private> global3: bool = false;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: Struct_4) -> bool {
    global2 = false;
    global2 = !all(select(select(vec2<bool>(true, true), !vec2<bool>(arg_1.c.a, arg_1.c.a), vec2<bool>(true, true)), !(!vec2<bool>(false, arg_1.a.c)), select(vec2<bool>(arg_2.c, false), vec2<bool>(arg_1.a.b.e.a, arg_1.b.e.a), arg_1.a.b.b.a)));
    global3 = all(vec2<bool>(true, !(_wgslsmith_f_op_f32(-global1.x) < -1801f)));
    var var_0 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(max(325f, -1517f))))), arg_2.b.c.x)), arg_2.b, arg_1.c, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(arg_2.b.c.x, -324f)))) > _wgslsmith_f_op_f32(round(arg_1.b.c.x)));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(arg_2.b.d * _wgslsmith_f_op_f32(exp2(arg_1.a.b.d))), 861f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-888f + arg_1.a.b.c.x), _wgslsmith_f_op_f32(-755f * -1280f))) - _wgslsmith_f_op_f32(-global1.x)) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1119f + arg_1.b.c.x))))));
    return select((~0u < _wgslsmith_dot_vec2_u32(arg_0, vec2<u32>(3738u, var_0.b.b.b))) || (-1i > ~u_input.c.x), arg_2.c, !arg_1.a.b.e.a) && (-u_input.c.x < ~(~(-arg_1.a.a.x)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<f32>) -> vec3<f32> {
    global3 = true;
    var var_0 = 3468i;
    global2 = true;
    var var_1 = _wgslsmith_f_op_f32(ceil(-207f));
    var var_2 = Struct_5(Struct_4(~((u_input.c.xzz << (vec3<u32>(u_input.b.x, u_input.a.x, 35031u) % vec3<u32>(32u))) << (vec3<u32>(3091u, 51577u, u_input.b.x) % vec3<u32>(32u))), Struct_2(u_input.b.x ^ u_input.b.x, Struct_1(any(vec3<bool>(false, false, true)), ~u_input.b.x), arg_1, -1147f, Struct_1(any(vec2<bool>(true, true)), u_input.b.x | 17760u)), true), Struct_2(~firstTrailingBit(~u_input.b.x), Struct_1(!any(vec4<bool>(true, false, false, true)), _wgslsmith_add_u32(u_input.b.x, _wgslsmith_mult_u32(u_input.a.x, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_1 - arg_1)), global1.x, Struct_1(func_3(u_input.a, Struct_5(Struct_4(u_input.c.wwz, Struct_2(4294967295u, Struct_1(false, u_input.a.x), arg_1, -1869f, Struct_1(false, 109559u)), true), Struct_2(0u, Struct_1(false, 1u), global1.xx, -252f, Struct_1(true, 8858u)), Struct_1(true, u_input.b.x)), Struct_4(vec3<i32>(36229i, u_input.c.x, -1i), Struct_2(u_input.a.x, Struct_1(false, 4294967295u), global1.wx, global1.x, Struct_1(false, 1u)), false)), 4294967295u)), Struct_1(-941f > _wgslsmith_f_op_f32(max(arg_0, arg_2.x)), 5990u));
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(971f, _wgslsmith_f_op_f32(trunc(var_2.a.b.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-512f, 515f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(global1.wzw)) - _wgslsmith_f_op_vec3_f32(global1.zyx + vec3<f32>(_wgslsmith_f_op_f32(ceil(arg_0)), arg_0, _wgslsmith_div_f32(-1412f, 197f)))));
}

fn func_4(arg_0: vec3<f32>) -> Struct_3 {
    var var_0 = -773f;
    var var_1 = Struct_2(4294967295u, Struct_1(true, u_input.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-254f, -1000f)), _wgslsmith_f_op_f32(-global1.x), Struct_1(~(-1i) == _wgslsmith_mod_i32(0i, u_input.c.x), u_input.b.x));
    var_1 = Struct_2(abs(min(107354u, firstTrailingBit(20203u))), var_1.b, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(arg_0.x, global1.x, false)), _wgslsmith_f_op_f32(-309f - arg_0.x)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global1.yx)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1488f, var_1.d) * vec2<f32>(arg_0.x, -1244f)))), _wgslsmith_f_op_vec2_f32(arg_0.yy * _wgslsmith_f_op_vec2_f32(step(arg_0.xx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -245f))))))), -453f, Struct_1(func_3(_wgslsmith_div_vec2_u32(max(u_input.a, u_input.b), ~vec2<u32>(89905u, var_1.a)), Struct_5(Struct_4(vec3<i32>(633i, u_input.c.x, u_input.c.x), Struct_2(var_1.a, Struct_1(var_1.e.a, 3145u), global1.ww, -156f, Struct_1(false, u_input.a.x)), var_1.b.a), Struct_2(4294967295u, Struct_1(var_1.e.a, var_1.a), arg_0.xz, global1.x, var_1.e), Struct_1(true, var_1.a)), Struct_4(vec3<i32>(62214i, 0i, u_input.c.x), Struct_2(u_input.b.x, Struct_1(var_1.b.a, 27345u), vec2<f32>(var_1.c.x, -1000f), var_1.d, var_1.b), any(vec4<bool>(var_1.e.a, var_1.b.a, var_1.b.a, var_1.e.a)))), 22821u));
    let var_2 = Struct_5(Struct_4(~(-u_input.c.yww), Struct_2(_wgslsmith_add_u32(u_input.a.x ^ var_1.b.b, firstLeadingBit(u_input.b.x)), Struct_1(!var_1.e.a, select(u_input.a.x, var_1.a, var_1.b.a)), _wgslsmith_f_op_vec2_f32(-global1.yx), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.d + global1.x))), var_1.e), var_1.e.a), Struct_2(1u ^ var_1.e.b, Struct_1(all(!vec2<bool>(var_1.b.a, var_1.b.a)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(67816u, 0u, 44330u, var_1.a), vec4<u32>(u_input.b.x, var_1.a, var_1.e.b, 1u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_f32(1324f * -847f)), 1271f, Struct_1(false, _wgslsmith_mod_u32(~u_input.b.x, 1u))), Struct_1(true, u_input.b.x));
    let var_3 = Struct_3(-438f, var_2.a.b, Struct_1(var_2.c.a, _wgslsmith_mod_u32(abs(firstTrailingBit(u_input.a.x)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.b, var_2.a.b.a), vec2<u32>(1u, 2566u)))), !var_1.e.a, any(!vec3<bool>(var_1.e.a, var_2.c.a, var_1.e.a)));
    return var_3;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = ~(~37101u);
    global0 = -1i;
    global2 = true;
    global0 = _wgslsmith_mult_i32(countOneBits(_wgslsmith_mult_i32(~_wgslsmith_dot_vec2_i32(u_input.c.yy, u_input.c.zx), select(-u_input.c.x, abs(u_input.c.x), !arg_0))), 1i);
    let var_1 = func_4(_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * global1.x), global1.x), global1.x), _wgslsmith_f_op_vec2_f32(global1.zx * vec2<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), -752f)), global1.ww)));
    return Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -121f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(var_1.a))))) != global1.x, 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_2) -> i32 {
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.x, 335f, global1.x, -824f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(142f, global1.x, 571f, 841f)), !vec4<bool>(arg_0.a, false, arg_2.e.a, arg_0.a)))))));
    global1 = vec4<f32>(1169f, arg_2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.d, -980f) + _wgslsmith_f_op_f32(-arg_2.c.x)))), arg_2.d);
    var var_0 = Struct_3(global1.x, arg_2, func_1(true), arg_2.b.a, !(!(arg_2.b.a || true)) == func_4(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(global1.wxy, global1.wxx)), _wgslsmith_f_op_vec3_f32(-global1.yzw), arg_2.e.a))).b.e.a);
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(632f, 892f)), arg_2.d, var_0.b.c.x, -426f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.c.x, -1041f, 1803f, 571f))))))));
    var var_1 = _wgslsmith_mod_u32(~arg_0.b, arg_0.b);
    return u_input.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, ~11803u, abs(u_input.a.x), 44478u), _wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b.x, 0u, u_input.b.x, u_input.a.x), ~vec4<u32>(4294967295u, u_input.a.x, 37549u, 51565u))));
    global0 = 49121i;
    var var_1 = u_input.c.x;
    var var_2 = ~var_0;
    var_1 = _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_clamp_i32(-countOneBits(u_input.c.x) >> (38214u % 32u), u_input.c.x, func_5(func_1(false), _wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.x, 0u), vec2<u32>(1u, 40196u), var_0.wz), func_4(vec3<f32>(1675f, global1.x, global1.x)).b) ^ _wgslsmith_mult_i32(2147483647i, u_input.c.x)));
    var var_3 = var_0.x;
    global2 = ~_wgslsmith_div_i32(max(u_input.c.x, u_input.c.x), reverseBits(~u_input.c.x)) < -25407i;
    var_1 = u_input.c.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, 837f, global1.x, -623f))))) * _wgslsmith_div_vec4_f32(vec4<f32>(-283f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x * 933f), _wgslsmith_f_op_f32(1461f * -1313f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, 764f, global1.x, 164f) - vec4<f32>(global1.x, global1.x, global1.x, -622f)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-200f, 200f, -1148f, global1.x), vec4<f32>(562f, global1.x, global1.x, 692f))))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-287f, -146f, global1.x, -493f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-350f, global1.x)))))), ~vec2<u32>(~(~var_2.x), _wgslsmith_clamp_u32(countOneBits(var_2.x), var_0.x, abs(var_2.x))), (u_input.a.x | firstLeadingBit(5717u)) << (_wgslsmith_div_u32(~func_4(global1.zxz).b.a, _wgslsmith_div_u32(12647u, u_input.a.x)) % 32u), var_4.zz);
}

