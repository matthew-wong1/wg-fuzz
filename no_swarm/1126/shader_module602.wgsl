struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: u32,
    d: Struct_2,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: array<vec3<i32>, 5>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 31367i), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x << (28911u % 32u), 2147483647i), -u_input.a.x)) << (~(~select(4800u, 30892u, true)) % 32u);
    let var_1 = 4294967295u;
    global0 = vec4<bool>(true, true, abs(var_0) == 15135i, !(!(!(global0.x & false))));
    var var_2 = Struct_3(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1000f)), 1267f)))), ~2339u, Struct_2(vec3<bool>(global0.x, true, true), global0.zzw), min(var_0 ^ ((u_input.a.x ^ -2147483647i) << (var_1 % 32u)), -13538i));
    var_2 = Struct_3((select(var_2.c, ~57418u, var_2.d.a.x) >> (var_2.c % 32u)) | 1u, var_2.b, var_1, Struct_2(vec3<bool>(!var_2.d.b.x, true | (var_1 >= 5990u), true), var_2.d.b), 0i);
    return 0u;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<u32>, arg_2: u32, arg_3: vec3<u32>) -> vec4<bool> {
    var var_0 = !select(!vec2<bool>(false, any(vec4<bool>(global0.x, global0.x, global0.x, global0.x))), vec2<bool>(any(global0.wwy), (arg_0.x <= 157f) || !global0.x), !global0.x);
    var var_1 = vec3<u32>(25441u, ~arg_1.x, 4294967295u) << (vec3<u32>(~arg_2, arg_3.x, 31702u) % vec3<u32>(32u));
    var var_2 = all(!select(vec4<bool>(var_0.x == global0.x, any(vec4<bool>(global0.x, false, var_0.x, true)), all(vec4<bool>(false, var_0.x, true, false)), true), !vec4<bool>(false, true, true, global0.x), true));
    var var_3 = Struct_1(~(countOneBits(~arg_2) >> (15126u % 32u)), ~reverseBits(56342u), vec4<u32>(countOneBits(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, arg_3.x), vec2<u32>(22282u, 1u))), _wgslsmith_dot_vec3_u32(arg_3, vec3<u32>(_wgslsmith_add_u32(48404u, 42579u), arg_1.x, arg_2 >> (arg_1.x % 32u))), 22135u & ~arg_3.x, 0u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(arg_0.yy, arg_0.zx))) + arg_0.xy) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), arg_0.x) + vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(select(-1446f, 516f, true))))), 6583u);
    var_0 = vec2<bool>(all(!(!global0.xy)), global0.x);
    return vec4<bool>(select(true, !global0.x, select(true, all(vec4<bool>(false, true, var_0.x, var_0.x)), var_0.x)) && (var_1.x != arg_1.x), all(vec2<bool>(global0.x, ~arg_1.x <= var_1.x)), all(vec2<bool>(any(select(global0.wz, vec2<bool>(var_0.x, global0.x), global0.zx)), true)), false);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32, arg_3: bool) -> vec4<bool> {
    global1 = array<vec3<i32>, 5>();
    let var_0 = Struct_2(!select(arg_0.b, select(!global0.wxx, vec3<bool>(global0.x, true, arg_0.b.x), vec3<bool>(arg_0.b.x, global0.x, false)), all(!vec4<bool>(false, true, arg_0.a.x, arg_0.b.x))), vec3<bool>(all(!vec4<bool>(true, global0.x, true, arg_3)), !arg_3, true));
    global0 = select(select(!(!select(vec4<bool>(false, global0.x, arg_0.b.x, var_0.b.x), vec4<bool>(arg_3, arg_3, arg_0.b.x, var_0.a.x), vec4<bool>(global0.x, arg_3, var_0.a.x, arg_0.b.x))), vec4<bool>(var_0.a.x, _wgslsmith_clamp_i32(-1i, 1i, u_input.a.x) > 1i, all(select(vec3<bool>(true, arg_0.a.x, true), global0.xyw, var_0.b)), false), vec4<bool>(any(vec4<bool>(true, true, arg_0.a.x, var_0.a.x)), any(!vec4<bool>(true, global0.x, true, var_0.b.x)), arg_0.a.x & true, arg_3)), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(123f, _wgslsmith_f_op_f32(-1000f - arg_2), arg_1.d.x, _wgslsmith_f_op_f32(f32(-1f) * -467f)) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1986f, arg_1.d.x, -1413f, 222f)))))), _wgslsmith_add_vec2_u32(arg_1.c.yy, vec2<u32>(arg_1.c.x << (arg_1.a % 32u), select(arg_1.e, arg_1.c.x, var_0.b.x))), ~arg_1.a, vec3<u32>(func_3() ^ _wgslsmith_dot_vec2_u32(arg_1.c.xy, arg_1.c.zy), arg_1.c.x, _wgslsmith_mult_u32(func_3(), ~1u))), any(!(!vec3<bool>(true, false, arg_3))));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-292f, arg_2, arg_2, arg_2), vec4<f32>(arg_1.d.x, arg_2, arg_2, -416f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2, 315f, -1798f, arg_1.d.x)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1754f, 1786f, arg_1.d.x, arg_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, arg_2, 475f, 858f)), !vec4<bool>(false, true, arg_3, arg_3)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1.d.x, 730f, 1135f, 293f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-618f, 648f, arg_2, -507f), vec4<f32>(arg_1.d.x, -533f, 2154f, arg_1.d.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1083f, arg_1.d.x, arg_2, -907f) + vec4<f32>(-479f, -1000f, arg_1.d.x, -185f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(504f, 442f, 295f, arg_2) + vec4<f32>(638f, -1779f, arg_2, arg_1.d.x))), !select(vec4<bool>(var_0.b.x, false, arg_3, arg_3), vec4<bool>(true, false, true, true), var_0.a.x))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(653f, 613f, -852f, arg_2), vec4<f32>(256f, arg_1.d.x, -389f, arg_2)))) * vec4<f32>(arg_2, _wgslsmith_f_op_f32(-arg_2), -197f, _wgslsmith_f_op_f32(559f + -530f)))));
    global0 = !select(func_4(var_1, ~_wgslsmith_mult_vec2_u32(vec2<u32>(67227u, arg_1.c.x), vec2<u32>(arg_1.e, arg_1.c.x)), 96981u, arg_1.c.yyz), !select(!vec4<bool>(arg_3, true, false, false), !vec4<bool>(global0.x, true, true, global0.x), true), vec4<bool>((arg_3 | false) || (1u > arg_1.c.x), all(!vec4<bool>(arg_0.a.x, false, arg_3, var_0.b.x)), any(!vec3<bool>(arg_3, true, false)), !any(vec3<bool>(false, var_0.b.x, true))));
    return !func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(2221f, _wgslsmith_f_op_f32(select(var_1.x, 173f, false)), _wgslsmith_f_op_f32(-var_1.x), arg_1.d.x) * var_1), vec2<u32>(arg_1.b, arg_1.c.x), ~1u, ~arg_1.c.wzw);
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1350f);
    global0 = vec4<bool>(u_input.a.x > ~(-u_input.a.x), true, any(select(vec4<bool>(true, select(true, true, false), global0.x, !global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, true), func_2(Struct_2(global0.zyz, vec3<bool>(global0.x, true, false)), Struct_1(1u, 114630u, vec4<u32>(4294967295u, 19432u, 4294967295u, 21458u), vec2<f32>(var_0, 396f), 0u), var_0, global0.x), global0.x), vec4<bool>(true, global0.x, false, func_2(Struct_2(vec3<bool>(global0.x, false, global0.x), global0.www), Struct_1(22237u, 0u, vec4<u32>(4294967295u, 7919u, 25891u, 45951u), vec2<f32>(var_0, -1810f), 1u), var_0, global0.x).x))), true);
    let var_1 = vec2<i32>(1i, ~(19317i >> (_wgslsmith_clamp_u32(~1u, 1u, ~55514u) % 32u)));
    global0 = !vec4<bool>(true, global0.x, select(_wgslsmith_sub_i32(var_1.x, u_input.a.x) <= -2147483647i, global0.x || true, any(select(global0.xx, vec2<bool>(false, global0.x), global0.x))), true);
    global0 = vec4<bool>(-u_input.a.x == -2147483647i, any(!select(!global0.yyz, global0.xwy, any(global0.yyy))), false, func_4(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-431f)) * _wgslsmith_f_op_f32(step(var_0, -989f))), _wgslsmith_div_f32(1936f, var_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), var_0), vec2<u32>(0u, 1u), min(_wgslsmith_dot_vec3_u32(~vec3<u32>(54543u, 4294967295u, 0u), min(vec3<u32>(4294967295u, 1u, 20574u), vec3<u32>(65665u, 4294967295u, 45497u))), _wgslsmith_mult_u32(_wgslsmith_clamp_u32(12238u, 4294967295u, 59318u), ~0u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 1u, 1u), firstTrailingBit(vec3<u32>(1u, 0u, 65462u)), vec3<u32>(1u, 1u, 1u))).x);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~func_1();
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1f, 1135f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2384f * _wgslsmith_f_op_f32(trunc(-468f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -253f), _wgslsmith_f_op_f32(sign(-1867f)))))), 194f, -539f, _wgslsmith_f_op_f32(f32(-1f) * -1959f));
    let var_2 = true;
    var_1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(-1444f)), var_1.x, 1467f, var_1.x) * vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1106f - -981f))), -1564f, _wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-var_1.x))), -193f))));
    var var_3 = ~(~2147483647i);
    let var_4 = u_input.a.x;
    let var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1293f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_f32(trunc(var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, 634f)))) + vec4<f32>(-1336f, -560f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(var_1.x)))), 909f)), var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(-var_4, -u_input.a.x) & u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f))))));
}

