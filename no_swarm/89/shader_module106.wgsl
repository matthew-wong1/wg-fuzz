struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: Struct_2,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<f32>;

var<private> global2: vec4<i32> = vec4<i32>(23033i, 2147483647i, 2147483647i, -21338i);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: vec2<f32>, arg_2: i32, arg_3: Struct_3) -> f32 {
    global2 = min(arg_3.a & arg_3.a, vec4<i32>(_wgslsmith_sub_i32(-13634i, arg_2), 26040i, ~(-12460i), -15039i));
    let var_0 = arg_3;
    global0 = all(select(vec3<bool>(true, any(vec4<bool>(false, false, false, false)), true), vec3<bool>(true, true, true), true)) | (!select(true, true, true) && all(vec3<bool>(true, true, true)));
    global2 = -vec4<i32>(0i, i32(-1i) * -1i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-23180i, 1i), global2.x, arg_2), _wgslsmith_add_i32(-_wgslsmith_div_i32(arg_0, arg_0), global2.x));
    var var_1 = arg_3;
    return _wgslsmith_f_op_f32(global1.x + -1291f);
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(firstLeadingBit(_wgslsmith_div_i32(1i, u_input.b.x)), vec2<f32>(_wgslsmith_f_op_f32(-205f - -643f), -1121f), _wgslsmith_clamp_i32(u_input.b.x, global2.x, 0i), Struct_3(vec4<i32>(global2.x, u_input.b.x, global2.x, -2147483647i), global2.x, firstTrailingBit(43311u), Struct_2(Struct_1(vec4<f32>(1568f, 325f, -668f, -182f), vec3<i32>(u_input.b.x, global2.x, -1i), -27175i), Struct_1(vec4<f32>(global1.x, global1.x, 1771f, -962f), vec3<i32>(global2.x, global2.x, global2.x), global2.x), 2147483647i, vec3<u32>(4294967295u, u_input.c, 4294967295u)), Struct_2(Struct_1(vec4<f32>(global1.x, -787f, 908f, global1.x), global2.xzx, 2147483647i), Struct_1(vec4<f32>(global1.x, -197f, -1572f, global1.x), global2.xwx, u_input.b.x), -2147483647i, vec3<u32>(0u, 34442u, 29968u))))))));
    let var_1 = ((reverseBits(abs(u_input.b.x)) & global2.x) ^ _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, -25056i, global2.x), global2.ywx)), global2.ywz)) ^ ~(~(_wgslsmith_div_i32(-7125i, 41117i) << (_wgslsmith_sub_u32(u_input.c, 37769u) % 32u)));
    var_0 = _wgslsmith_div_f32(1146f, _wgslsmith_f_op_f32(-global1.x));
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(853f, 446f)), _wgslsmith_f_op_f32(step(global1.x, -1035f)), -1000f, -924f)), vec4<f32>(-1237f, _wgslsmith_f_op_f32(f32(-1f) * -2047f), 995f, -416f))), ~_wgslsmith_clamp_vec3_i32(global2.wzy, _wgslsmith_div_vec3_i32(global2.yyy | global2.yww, ~vec3<i32>(var_1, 18666i, 1i)), global2.xwy), _wgslsmith_div_i32(global2.x, min(-var_1, select(~2147483647i, abs(var_1), true))));
    var var_3 = u_input.a.x;
    return Struct_1(var_2.a, -firstLeadingBit(~global2.wyz), ~(-var_2.b.x));
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_1, arg_3: i32) -> Struct_3 {
    global0 = all(vec2<bool>(true, true));
    var var_0 = arg_3;
    let var_1 = vec2<i32>(countOneBits(_wgslsmith_mult_i32(~select(-2147483647i, -17651i, false), 1i)), 33140i);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-311f, global1.x, 281f, global1.x) * arg_2.a) - arg_2.a)), _wgslsmith_div_vec3_i32(global2.yyx ^ arg_2.b, _wgslsmith_mult_vec3_i32(arg_2.b, vec3<i32>(1i, 2147483647i, -2147483647i))), arg_1), arg_2, 2147483647i ^ _wgslsmith_sub_i32(-32442i, arg_3), vec3<u32>(u_input.c, u_input.c, ~u_input.c));
    let var_3 = Struct_2(arg_2, arg_2, -2147483647i, var_2.d);
    return Struct_3(~firstLeadingBit(-vec4<i32>(12825i, -2147483647i, -15286i, arg_3)), u_input.b.x, 0u << (countOneBits(arg_0 & 10158u) % 32u), Struct_2(Struct_1(var_2.a.a, vec3<i32>(global2.x, _wgslsmith_mult_i32(arg_1, global2.x), 1i), i32(-1i) * -var_3.c), arg_2, _wgslsmith_div_i32(arg_1, var_2.b.b.x >> (~var_3.d.x % 32u)), reverseBits(~_wgslsmith_mult_vec3_u32(var_2.d, var_3.d))), Struct_2(arg_2, var_2.b, _wgslsmith_div_i32(-20828i, 13573i), _wgslsmith_clamp_vec3_u32(firstLeadingBit(~var_2.d), firstTrailingBit(var_3.d), vec3<u32>(0u, arg_0, 1u))));
}

fn func_1(arg_0: Struct_3, arg_1: bool) -> f32 {
    let var_0 = func_4(max(arg_0.e.d.x, _wgslsmith_sub_u32(~(~u_input.c), ~(~42349u))), -26178i, func_2(), ~func_2().b.x);
    var var_1 = arg_0;
    var var_2 = var_0.e.a.a.x;
    var var_3 = vec4<bool>(false, arg_1, true, any(vec3<bool>(true, arg_1, any(vec4<bool>(false, arg_1, true, false)))) == any(vec3<bool>(select(arg_1, arg_1, false), false, true)));
    var_3 = vec4<bool>(any(!select(var_3.zw, !vec2<bool>(arg_1, true), !vec2<bool>(true, arg_1))), select(!all(select(vec3<bool>(arg_1, arg_1, true), var_3.xyy, false)), false, true), all(!(!vec3<bool>(false, false, var_3.x))), var_3.x);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + var_0.d.b.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1813f + global1.x) * 819f), -1433f, _wgslsmith_f_op_f32(ceil(global1.x)));
    let var_1 = min(-50743i, -2395i);
    global1 = var_0;
    let var_2 = vec2<f32>(-374f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(vec4<i32>(global2.x, 79098i, var_1, var_1), global2.x, 4294967295u, Struct_2(Struct_1(vec4<f32>(1095f, 428f, -216f, 1000f), global2.wxw, 28581i), Struct_1(vec4<f32>(global1.x, global1.x, global1.x, 838f), global2.zyw, -17636i), 14685i, vec3<u32>(u_input.a.x, u_input.c, u_input.a.x)), Struct_2(Struct_1(vec4<f32>(var_0.x, var_0.x, global1.x, 363f), vec3<i32>(-1i, 0i, -2147483647i), u_input.b.x), Struct_1(vec4<f32>(731f, global1.x, global1.x, -619f), vec3<i32>(var_1, var_1, global2.x), u_input.b.x), -4971i, vec3<u32>(1280u, 34346u, u_input.c))), true)) + func_2().a.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, var_0.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(351f * var_0.x)))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x - global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().b.yy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1015f * _wgslsmith_f_op_f32(-func_4(u_input.a.x, -2147483647i, Struct_1(vec4<f32>(var_0.x, -780f, global1.x, var_2.x), vec3<i32>(u_input.b.x, u_input.b.x, var_1), 0i), var_1).d.b.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-397f * -594f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(411f * var_2.x), _wgslsmith_f_op_f32(round(1181f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(939f - var_3))))), ~(_wgslsmith_mod_u32(u_input.c, 0u) >> (0u % 32u)));
}

