struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2() -> Struct_1 {
    let var_0 = vec2<i32>(78591i, global0.b.a.c.x);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b.a.d.x), global0.d.d.x))), _wgslsmith_f_op_f32(-global0.b.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b.a.d.x)) + _wgslsmith_f_op_f32(global0.b.a.d.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(global0.b.c.x)))))));
    var var_2 = 902f;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -391f);
    let var_3 = vec2<i32>(16791i, _wgslsmith_sub_i32(-1i, _wgslsmith_div_i32(firstTrailingBit(~39087i), -u_input.b.x & 0i)));
    return global0.d;
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_3 {
    global0 = Struct_3(~_wgslsmith_div_u32(abs(~41739u), ~1u), Struct_2(Struct_1(_wgslsmith_sub_u32(arg_2.b.x ^ global0.b.b.e, ~arg_2.e), vec4<u32>(u_input.e << (u_input.e % 32u), arg_1.b.a, arg_1.a.e | global0.b.a.b.x, countOneBits(1u)), ~arg_1.b.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(170f, arg_0.x), arg_1.b.d)) + _wgslsmith_f_op_vec2_f32(floor(arg_0.xz))), _wgslsmith_dot_vec2_u32(vec2<u32>(97170u, 2423u), select(vec2<u32>(global0.a, global0.b.b.e), vec2<u32>(25971u, 2071u), true))), global0.d, _wgslsmith_f_op_vec4_f32(abs(arg_1.c))), global0.c, func_2(), global0.d.c.x ^ -1i);
    let var_0 = select(all(select(!vec2<bool>(global0.c, false), !vec2<bool>(true, global0.c), global0.c)), false, global0.c);
    var var_1 = Struct_4(vec4<f32>(1000f, _wgslsmith_f_op_f32(-func_2().d.x), 147f, arg_0.x), vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), true, vec2<bool>(!all(vec2<bool>(true, var_0)), all(select(select(vec4<bool>(var_0, true, true, var_0), vec4<bool>(global0.c, true, false, var_0), global0.c), vec4<bool>(var_0, global0.c, false, true), select(vec4<bool>(var_0, var_0, global0.c, global0.c), vec4<bool>(false, false, true, true), false)))));
    global0 = Struct_3(max(func_2().a, 1u), Struct_2(Struct_1(u_input.e, countOneBits(~arg_2.b), ~arg_2.c | (global0.d.c << (global0.d.b.xyx % vec3<u32>(32u))), vec2<f32>(-1000f, _wgslsmith_f_op_f32(-arg_1.b.d.x)), u_input.a.x >> (reverseBits(0u) % 32u)), Struct_1(18179u, u_input.a, u_input.d, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -168f), _wgslsmith_f_op_f32(sign(782f))), 89705u), vec4<f32>(-542f, _wgslsmith_div_f32(-294f, _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(108f - var_1.a.x)), _wgslsmith_div_f32(1505f, -425f))), var_0 || (any(select(vec3<bool>(true, false, false), vec3<bool>(var_0, true, true), var_1.c)) == true), arg_1.b, global0.d.c.x);
    var_1 = Struct_4(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_div_f32(783f, -231f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.b.c.x), _wgslsmith_f_op_f32(420f * arg_0.x))), arg_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-471f + -490f), _wgslsmith_f_op_f32(min(global0.b.a.d.x, arg_0.x)))), _wgslsmith_f_op_f32(min(-546f, _wgslsmith_f_op_f32(step(394f, -1167f)))))), global0.c, select(select(!(!vec2<bool>(true, var_0)), var_1.d, !all(vec2<bool>(var_1.d.x, var_1.c))), !(!vec2<bool>(global0.c, false)), select(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(true, global0.c), var_1.d), !var_1.d), select(select(var_1.d, vec2<bool>(false, var_1.c), true), vec2<bool>(true, false), global0.c), !(!var_1.d))));
    return Struct_3(firstTrailingBit(42816u), Struct_2(func_2(), Struct_1(~(global0.a & 975u), vec4<u32>(func_2().a, 4294967295u, ~644u, 28639u), global0.d.c, _wgslsmith_f_op_vec2_f32(vec2<f32>(794f, -416f) * vec2<f32>(302f, arg_0.x)), arg_1.a.a), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.a.d.x, -530f, global0.b.a.d.x, 711f) - arg_1.c), global0.b.c))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(107f, var_1.a.x)) == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.b.d.x + arg_2.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -609f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a.x))))), func_2(), ~(-min(arg_2.c.x ^ 0i, reverseBits(-5428i))));
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = func_3(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(global0.b.c.zwy, vec3<f32>(global0.d.d.x, global0.b.a.d.x, global0.b.c.x))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.d.x, 593f, global0.d.d.x)))))))), global0.b, func_2());
    var var_1 = 12493u;
    let var_2 = var_0.b.a.a;
    var var_3 = var_0.a;
    let var_4 = Struct_1(_wgslsmith_mult_u32(countOneBits(global0.b.a.a), ~u_input.e), var_0.b.a.b, _wgslsmith_mult_vec3_i32(vec3<i32>(~_wgslsmith_sub_i32(global0.d.c.x, -2147483647i), _wgslsmith_mult_i32(-2147483647i, arg_0) & max(u_input.c.x, -11749i), arg_0), var_0.b.b.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.d.d, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-490f, 393f) + var_0.b.a.d), _wgslsmith_f_op_vec2_f32(var_0.d.d - var_0.b.a.d)), 70579u >= max(global0.d.a, 54884u))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1017f, 350f), vec2<f32>(1000f, 1117f)) - vec2<f32>(-1473f, global0.d.d.x)))), 46744u);
    return Struct_4(var_0.b.c, var_4.d, !select(global0.c, false, true), vec2<bool>(func_3(vec3<f32>(global0.d.d.x, -1000f, _wgslsmith_f_op_f32(abs(1000f))), global0.b, Struct_1(var_4.e, vec4<u32>(1u, global0.a, var_4.e, 22466u), -var_0.b.a.c, vec2<f32>(var_0.d.d.x, 922f), var_4.b.x)).c, all(!select(vec3<bool>(false, var_0.c, global0.c), vec3<bool>(var_0.c, global0.c, var_0.c), var_0.c))));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1, arg_2: bool, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_sub_u32(~arg_3, ~_wgslsmith_clamp_u32(33515u, _wgslsmith_dot_vec2_u32(u_input.a.wz, global0.d.b.wz), ~12135u)) | (arg_1.b.x << ((~func_2().b.x & ~(~u_input.a.x)) % 32u));
    global0 = Struct_3(~arg_3, Struct_2(Struct_1(1u, _wgslsmith_div_vec4_u32(vec4<u32>(var_0, 10711u, arg_3, var_0), select(vec4<u32>(4294967295u, u_input.a.x, 22322u, u_input.a.x), vec4<u32>(83440u, 11892u, u_input.a.x, 57360u), true)), ~u_input.d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-655f, arg_1.d.x)) * _wgslsmith_f_op_vec2_f32(-global0.d.d)), 10058u), arg_1, arg_0.a), true, arg_1, (countOneBits(0i) ^ u_input.c.x) & min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, arg_1.c.x, 2147483647i, u_input.b.x), vec4<i32>(-1i, -28003i, arg_1.c.x, arg_1.c.x)) << (~1u % 32u), func_2().c.x));
    global0 = func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.b.c.xzw + _wgslsmith_div_vec3_f32(arg_0.a.wxz, arg_0.a.wxx)), _wgslsmith_div_vec3_f32(func_3(global0.b.c.wzw, global0.b, Struct_1(0u, global0.b.b.b, arg_1.c, vec2<f32>(-1285f, 1474f), global0.d.a)).b.c.yyx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.x, 1006f, 184f))), true)))), Struct_2(func_2(), global0.b.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b.c) * vec4<f32>(783f, arg_1.d.x, 941f, -1209f)) + vec4<f32>(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(max(arg_0.a.x, -1000f)), -573f))), func_2());
    let var_1 = 4294967295u;
    var var_2 = Struct_3(global0.a, Struct_2(func_2(), Struct_1(abs(~49622u), abs(~arg_1.b), max(~vec3<i32>(global0.e, -2147483647i, global0.b.b.c.x), u_input.c), _wgslsmith_f_op_vec2_f32(-arg_1.d), ~var_0), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.a.x, -410f, arg_1.d.x, -681f), global0.b.c, false))))))), true, arg_1, global0.e << (4294967295u % 32u));
    return func_3(global0.b.c.yzx, func_3(_wgslsmith_f_op_vec3_f32(global0.b.c.xyx * var_2.b.c.wxx), Struct_2(func_2(), func_3(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.d.d.x, -912f, 2976f), global0.b.c.zwy)), func_3(vec3<f32>(-161f, -1850f, var_2.b.c.x), global0.b, arg_1).b, Struct_1(var_1, vec4<u32>(26850u, 4294967295u, 4294967295u, var_1), var_2.d.c, vec2<f32>(global0.d.d.x, -522f), var_1)).b.a, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1110f), _wgslsmith_f_op_f32(sign(global0.d.d.x)), -234f, -1254f)), var_2.b.b).b, Struct_1(var_2.d.e, _wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 0u, arg_3, 16428u) >> (vec4<u32>(var_0, var_1, global0.a, var_1) % vec4<u32>(32u)), u_input.a), min(arg_1.c, vec3<i32>(_wgslsmith_mult_i32(var_2.e, global0.e), u_input.d.x, ~global0.b.b.c.x)), arg_0.a.yy, u_input.a.x)).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-global0.b.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1588f, -865f) * vec2<f32>(global0.d.d.x, global0.b.c.x))) * vec2<f32>(global0.b.a.d.x, _wgslsmith_f_op_f32(floor(global0.d.d.x)))), 1u <= firstTrailingBit(u_input.a.x), vec2<bool>(global0.c, _wgslsmith_f_op_f32(abs(global0.d.d.x)) > _wgslsmith_f_op_f32(step(970f, _wgslsmith_f_op_f32(trunc(-822f))))));
    global0 = Struct_3(global0.d.b.x, func_4(func_1(u_input.d.x), func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(var_0.a.zxy, vec3<f32>(-478f, var_0.b.x, 1000f))) + _wgslsmith_f_op_vec3_f32(-var_0.a.ywy)), global0.b, func_2()).d, func_1(-22043i).c, func_3(_wgslsmith_div_vec3_f32(global0.b.c.www, _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.b.x, global0.b.a.d.x, var_0.a.x)))), Struct_2(func_2(), Struct_1(1656u, vec4<u32>(u_input.a.x, global0.a, 1u, 58309u), vec3<i32>(-57591i, u_input.c.x, global0.e), global0.d.d, 8952u), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global0.b.b.d.x, -1243f, 719f, var_0.b.x), var_0.a, vec4<bool>(false, true, true, false)))), func_2()).b.b.b.x), var_0.c, global0.b.a, 952i);
    let var_1 = -20223i;
    var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(-func_3(vec3<f32>(_wgslsmith_f_op_f32(global0.d.d.x + global0.b.c.x), _wgslsmith_div_f32(var_0.b.x, global0.b.a.d.x), global0.b.a.d.x), func_3(var_0.a.wyy, func_4(Struct_4(global0.b.c, vec2<f32>(-674f, global0.b.c.x), true, vec2<bool>(false, true)), Struct_1(4294967295u, global0.d.b, vec3<i32>(-17771i, u_input.d.x, var_1), global0.b.c.xy, u_input.a.x), true, global0.d.b.x), func_4(Struct_4(global0.b.c, global0.d.d, var_0.d.x, var_0.d), Struct_1(4294967295u, global0.b.a.b, vec3<i32>(u_input.c.x, var_1, 2147483647i), var_0.b, global0.b.b.e), global0.c, global0.a).a).b, global0.b.a).b.c), vec2<f32>(-336f, global0.b.c.x), global0.c, select(!(!func_1(u_input.b.x).d), select(!var_0.d, func_1(u_input.c.x).d, var_0.c), all(vec3<bool>(var_0.d.x, true, !var_0.d.x))));
    var var_2 = Struct_4(var_0.a, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -743f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-865f)), func_2().d.x))), var_0.c, !vec2<bool>(!(38961u < u_input.a.x), var_0.d.x));
    let var_3 = ~(~global0.b.a.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(func_3(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(165f, -254f, var_2.b.x) - vec3<f32>(global0.b.b.d.x, var_0.a.x, -246f)), func_3(var_0.a.wzy, global0.b, Struct_1(global0.d.a, vec4<u32>(4294967295u, 1u, global0.d.b.x, var_3.x), u_input.d, var_0.a.wz, u_input.a.x)).b.c.yxz, !vec3<bool>(true, global0.c, var_2.d.x))), func_3(_wgslsmith_f_op_vec3_f32(abs(var_0.a.zwx)), Struct_2(global0.d, global0.d, vec4<f32>(393f, var_0.a.x, -418f, -550f)), Struct_1(global0.a, var_3, u_input.d, var_0.a.zy, 3068u)).b, func_2()).e, min(-var_1, 2312i & var_1)), -1837f, ~select(~(vec2<u32>(14414u, 4294967295u) << (var_3.wx % vec2<u32>(32u))), var_3.xw, true), _wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(select(32595u, 2691u, false), global0.d.a)), global0.b.b.b.xw), global0.b.c);
}

