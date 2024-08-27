struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_3,
    c: vec2<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(1i, 2147483647i, -1i);

var<private> global1: vec2<bool>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: u32) -> bool {
    global1 = vec2<bool>(!((u_input.b.x < countOneBits(0u)) | true), arg_0);
    global0 = countOneBits(abs(~_wgslsmith_mult_vec3_i32(~u_input.c, _wgslsmith_mod_vec3_i32(vec3<i32>(-1i, -15295i, u_input.c.x), u_input.c))));
    var var_0 = Struct_4(abs(firstTrailingBit(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(0i, 27225i, u_input.c.x, global0.x)), abs(vec4<i32>(u_input.c.x, 52371i, 28308i, global0.x)), vec4<i32>(28642i, -17867i, global0.x, -41903i)))), Struct_3(1338f, u_input.b.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global2.a, global2.a))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2234f, -636f) + vec2<f32>(global2.a, 1684f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-280f, 682f)))))));
    var var_1 = Struct_4(abs(-(~var_0.a)), var_0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1733f, var_0.c.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(-718f, var_0.b.a) * var_0.c))))));
    let var_2 = max(~(~39329u) ^ arg_1, ~u_input.a.x);
    return arg_0;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(757f));
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(464f, _wgslsmith_f_op_f32(324f - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-935f + arg_0.x))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zz), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.yz) + arg_0.xy)))));
    let var_2 = arg_1.yx;
    var var_3 = global1.x;
    var var_4 = Struct_3(598f, countOneBits(42803u));
    return Struct_1(arg_1, -_wgslsmith_mult_vec3_i32(reverseBits(u_input.c) >> (arg_1 % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(u_input.c, vec3<i32>(global0.x, -2147483647i, u_input.c.x))), select(!(!(!vec4<bool>(true, false, true, global1.x))), vec4<bool>(global1.x, !any(vec2<bool>(true, global1.x)), global1.x, all(vec3<bool>(global1.x, false, global1.x))), func_3(true, _wgslsmith_clamp_u32(~10793u, _wgslsmith_sub_u32(arg_1.x, 40899u), u_input.a.x))), max(~u_input.c.x, global0.x));
}

fn func_4(arg_0: f32, arg_1: vec4<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = vec4<bool>(true, arg_3.c.x, global1.x, !func_3(func_2(vec3<f32>(global2.a, arg_0, arg_2), vec3<u32>(0u, arg_1.x, 4294967295u)).c.x & true, arg_3.a.x));
    let var_1 = _wgslsmith_div_u32(4294967295u, ~(16908u >> (arg_3.a.x % 32u)));
    global2 = Struct_3(global2.a, 17349u);
    var var_2 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2254f, 138f, global2.a) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1303f, 825f, -1784f))) * vec3<f32>(global2.a, arg_0, arg_2))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(global2.a - -341f), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(step(arg_2, -481f))), vec3<f32>(172f, arg_0, global2.a)))));
    global0 = u_input.c;
    return Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(729f - _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(abs(-762f)))))), var_1);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<f32>, arg_2: vec3<bool>, arg_3: f32) -> f32 {
    global2 = Struct_3(724f, 4294967295u);
    var var_0 = arg_2.yx;
    let var_1 = true;
    global2 = func_4(arg_0.x, abs(vec4<u32>(17094u, global2.b, 0u, 1u)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_1.x))), 881f, var_1)), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) + _wgslsmith_f_op_vec3_f32(abs(arg_0))), vec3<u32>(~u_input.a.x >> (4294967295u % 32u), 0u, min(global2.b, 4294967295u))));
    let var_2 = func_4(107f, ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(47663u, global2.b, 1u, 1u), vec4<u32>(u_input.a.x, 19984u, u_input.b.x, 9712u), vec4<u32>(global2.b, u_input.b.x, 0u, u_input.a.x) ^ u_input.b), vec4<u32>(countOneBits(global2.b), ~4294967295u, _wgslsmith_mod_u32(u_input.a.x, 4294967295u), _wgslsmith_add_u32(u_input.a.x, u_input.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-532f + arg_3)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 - global2.a))), _wgslsmith_f_op_f32(step(573f, arg_1.x))), Struct_1(~countOneBits(vec3<u32>(4294967295u, 23711u, 1u)), _wgslsmith_div_vec3_i32(u_input.c, vec3<i32>(u_input.c.x, 0i, abs(u_input.c.x))), func_2(arg_0, ~u_input.b.wzw).c, ~global0.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 + _wgslsmith_f_op_f32(step(global2.a, 310f)))) * var_2.a));
}

fn func_5(arg_0: f32) -> Struct_1 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1000f, -781f, 464f), vec3<f32>(938f, arg_0, -797f), vec3<bool>(false, global1.x, global1.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a, arg_0, 214f)))), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(1u, 4294967295u, global2.b), _wgslsmith_add_u32(55629u, 0u), _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global2.b, u_input.b.x))), u_input.b.yxw)).c.x && global1.x;
    global2 = func_4(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(947f)) - 1061f))), countOneBits(~vec4<u32>(global2.b, min(1u, 32411u), global2.b, global2.b)), arg_0, Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(~0u, ~global2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 1u, 1u), u_input.b.yxx)), reverseBits(vec3<u32>(4294967295u, u_input.b.x, 52324u)), u_input.b.xwx), -vec3<i32>(-48509i, ~(-55573i), _wgslsmith_dot_vec4_i32(vec4<i32>(-16430i, 0i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, -20899i, -11418i, u_input.c.x))), vec4<bool>(!var_0, _wgslsmith_div_f32(-1822f, arg_0) < _wgslsmith_f_op_f32(f32(-1f) * -332f), !(arg_0 != arg_0), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true)))), _wgslsmith_mult_i32(countOneBits(29215i) << (u_input.b.x % 32u), -1104i)));
    let var_1 = all(!select(!vec4<bool>(var_0, global1.x, false, global1.x), !(!vec4<bool>(false, global1.x, false, global1.x)), vec4<bool>(true, arg_0 <= arg_0, true, global2.a == global2.a)));
    let var_2 = Struct_3(arg_0, 1u);
    global2 = func_4(2360f, countOneBits(firstLeadingBit(u_input.b)), _wgslsmith_f_op_f32(-1659f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_2.a))))))), func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-264f, -1000f, -2311f), vec3<f32>(global2.a, -1026f, -1824f), vec3<bool>(false, var_0, var_0))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1788f, -382f, 680f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, global2.a, arg_0)) - vec3<f32>(arg_0, -1277f, arg_0))), u_input.b.zwy));
    return Struct_1(u_input.b.wxx, firstTrailingBit(vec3<i32>(global0.x, firstLeadingBit(-27130i), global0.x)), vec4<bool>(false, !(!any(vec4<bool>(false, false, false, var_0))), true, !select(any(vec4<bool>(var_0, global1.x, true, false)), 36364i >= u_input.c.x, global0.x < -6742i)), ~0i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.a, 1558f, -1607f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-846f, -1520f)), vec3<bool>(true, false, global1.x), 367f)))));
    let var_1 = var_0.c.x;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(953f, -206f) - _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global2.a, global2.a))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a))), _wgslsmith_f_op_f32(select(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -1000f), !var_0.c.x)))));
    var var_3 = !func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-218f, global2.a, var_2.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -188f, 1402f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1152f, 936f, var_2.x) - vec3<f32>(103f, global2.a, 1394f)))), vec3<u32>(global2.b, u_input.a.x, 0u)).c;
    var var_4 = _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.a.yy, var_0.a.yx) << (~u_input.b.yy % vec2<u32>(32u)), vec2<u32>(15599u ^ global2.b, 64006u ^ var_0.a.x)), 2222u);
    global0 = select((vec3<i32>(-1i) * -var_0.b) ^ u_input.c, var_0.b, var_3.zwy);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2147483647i, var_0.b.x << (global2.b % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(2025f, -887f, global2.a) - vec3<f32>(var_2.x, global2.a, -189f)), vec2<f32>(var_2.x, 1211f), !vec3<bool>(var_1, false, false), _wgslsmith_f_op_f32(abs(-311f))))) + _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.x))))), global2.a);
}

