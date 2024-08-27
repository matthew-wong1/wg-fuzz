struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(2147483647i, 12241i);

var<private> global1: vec3<f32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<u32>) -> bool {
    var var_0 = _wgslsmith_mult_i32(countOneBits(-2147483647i), i32(-1i) * -22146i);
    var var_1 = !select(vec4<bool>(!(!arg_0.b.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.x, 33750i, arg_0.c.b.x), vec4<i32>(-604i, 52434i, 38968i, -2147483647i)) != -42601i, true, arg_0.b.a), select(select(select(vec4<bool>(arg_0.c.a, arg_0.b.a, arg_0.b.c, false), vec4<bool>(arg_0.c.c, false, arg_0.c.c, false), true), !vec4<bool>(arg_0.c.a, arg_0.b.a, false, arg_0.c.a), select(vec4<bool>(true, true, arg_0.c.c, arg_0.c.c), vec4<bool>(false, arg_0.c.c, true, false), arg_0.c.c)), select(select(vec4<bool>(arg_0.b.a, true, arg_0.c.a, arg_0.b.c), vec4<bool>(arg_0.c.c, false, false, arg_0.c.c), true), !vec4<bool>(arg_0.c.c, arg_0.c.c, arg_0.b.a, true), select(vec4<bool>(true, true, arg_0.c.a, arg_0.c.a), vec4<bool>(arg_0.b.c, true, true, arg_0.b.c), arg_0.b.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, arg_0.c.a, arg_0.b.c, false), arg_0.b.a)), !(!vec4<bool>(arg_0.b.c, arg_0.b.c, arg_0.c.c, false)));
    var var_2 = arg_0;
    var_1 = select(vec4<bool>(arg_0.c.c, !((arg_0.b.b.x & global0.x) < -28824i), arg_0.b.a, all(select(vec3<bool>(var_2.b.a, arg_0.c.c, var_1.x), vec3<bool>(false, true, arg_0.b.c), var_2.b.c))), select(!select(vec4<bool>(var_1.x, var_1.x, var_1.x, var_2.b.c), !vec4<bool>(arg_0.c.c, var_2.b.a, true, arg_0.b.a), any(vec4<bool>(var_1.x, arg_0.b.c, var_2.c.c, true))), select(select(select(vec4<bool>(var_2.b.a, var_1.x, var_2.b.a, false), vec4<bool>(false, false, false, false), var_1.x), vec4<bool>(false, arg_0.c.c, true, false), vec4<bool>(true, var_2.c.c, var_1.x, arg_0.b.a)), select(vec4<bool>(var_1.x, true, false, var_1.x), select(vec4<bool>(var_1.x, true, var_2.c.c, var_1.x), vec4<bool>(false, true, arg_0.c.c, true), vec4<bool>(false, false, false, arg_0.b.a)), false), abs(6407u) > var_2.a.x), select(vec4<bool>(var_1.x, arg_0.c.a, true, var_1.x), vec4<bool>(var_2.c.c, true, var_1.x, arg_0.b.c), !var_1.x)), vec4<bool>(all(var_1.wx), var_2.c.a, _wgslsmith_add_u32(countOneBits(arg_0.a.x), arg_2.x) != arg_0.d.x, all(var_1.yy)));
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(var_2.c.b.x, ~var_2.b.b.x), countOneBits(1i)), min(_wgslsmith_sub_vec2_i32(abs(-arg_0.b.b), ~_wgslsmith_sub_vec2_i32(vec2<i32>(-1i, arg_0.b.b.x), vec2<i32>(global0.x, global0.x))), var_2.c.b));
    return !all(var_1.zwx);
}

fn func_2(arg_0: u32) -> Struct_1 {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_u32(countOneBits(u_input.c.zzy), ~vec3<u32>(arg_0 << (4294967295u % 32u), arg_0, 40733u)), Struct_1(any(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), ~countOneBits(select(vec2<i32>(global0.x, 2147483647i), vec2<i32>(global0.x, global0.x), vec2<bool>(false, false))), false), Struct_1(func_3(Struct_2(abs(vec3<u32>(arg_0, arg_0, arg_0)), Struct_1(false, vec2<i32>(-36433i, global0.x), false), Struct_1(false, vec2<i32>(10425i, -2147483647i), false), vec4<u32>(42612u, u_input.c.x, u_input.c.x, arg_0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, -969f, -2007f))), vec4<f32>(global1.x, global1.x, global1.x, global1.x)), u_input.c), ~min(vec2<i32>(2147483647i, global0.x), vec2<i32>(-3514i, -41957i) ^ vec2<i32>(1i, global0.x)), _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-1i, global0.x), -1i, ~global0.x) != min(global0.x ^ global0.x, _wgslsmith_mult_i32(-23087i, 7890i))), ~firstTrailingBit(~vec4<u32>(u_input.b, u_input.b, 0u, 0u)));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -818f), 1000f, !var_0.b.a)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1364f)), _wgslsmith_f_op_f32(round(702f)))), -1000f))) * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.x)) + 1f), global1.x, -302f));
    var var_1 = ~(-var_0.b.b) & ~vec2<i32>(~_wgslsmith_clamp_i32(global0.x, global0.x, -12781i), 38453i);
    var var_2 = -31778i;
    global1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(step(global1.x, global1.x)), 1f, _wgslsmith_f_op_f32(round(global1.x)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(548f))), 1229f, -580f));
    return Struct_1(true, var_0.c.b, (var_0.b.a || var_0.c.c) || true);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>) -> f32 {
    let var_0 = Struct_2(u_input.c.wxw, func_2(u_input.a.x), Struct_1(true, arg_1, true), u_input.c);
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 627f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 314f))) - vec3<f32>(_wgslsmith_div_f32(957f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global1.x))))), -532f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-687f, _wgslsmith_f_op_f32(select(global1.x, global1.x, var_0.b.a))))));
    let var_1 = 58090u;
    var var_2 = var_0.b;
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1526f, _wgslsmith_f_op_f32(floor(-798f)))) - global1.x)), -422f, 511f);
    return _wgslsmith_f_op_f32(-global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(-462f, 505f, _wgslsmith_f_op_f32(step(global1.x, -888f)));
    global1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-627f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(608f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2531f + global1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-1283f + global1.x), _wgslsmith_f_op_f32(ceil(428f)), _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 123f, global1.x) - vec3<f32>(global1.x, 1770f, 817f))))));
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(41214i, -1i, -2147483647i, 45257i), vec4<i32>(-2147483647i, 44282i, global0.x, global0.x), vec4<i32>(0i, 2147483647i, 0i, 3986i)), vec2<i32>(global0.x, global0.x) << (vec2<u32>(0u, 45391u) % vec2<u32>(32u))))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1067f), global1.x, global1.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(314f, 761f, -2174f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 486f, -1047f)))), !(!all(vec4<bool>(false, false, false, true))))));
    var var_0 = false;
    let var_1 = global1.x;
    global0 = vec2<i32>(global0.x, global0.x) & _wgslsmith_sub_vec2_i32(func_2(129628u).b, abs(firstLeadingBit(vec2<i32>(1i, global0.x))));
    var var_2 = vec4<bool>(!(4294967295u >= _wgslsmith_div_u32(u_input.b, 1u)), true || (any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, false))) & true), true, false);
    let var_3 = Struct_2(vec3<u32>(u_input.a.x, u_input.a.x, ~max(~0u, 71226u)), func_2(~(0u >> (countOneBits(133517u) % 32u))), Struct_1(var_2.x, -_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, global0.x), vec2<i32>(global0.x, -1i), vec2<i32>(global0.x, global0.x)), ~vec2<i32>(-79517i, global0.x)), all(select(select(vec3<bool>(false, var_2.x, var_2.x), var_2.wxx, var_2.wyx), vec3<bool>(var_2.x, var_2.x, true), select(var_2.yzy, var_2.zyz, vec3<bool>(var_2.x, var_2.x, var_2.x))))), vec4<u32>(4294967295u, ~_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.a.x, 21089u), reverseBits(109372u)), ~abs(_wgslsmith_mod_u32(4294967295u, u_input.c.x)), _wgslsmith_div_u32(1u, ~u_input.c.x)));
    global1 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(469f, _wgslsmith_f_op_f32(-global1.x), global1.x), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(step(global1.x, global1.x)), global1.x) - vec3<f32>(779f, -1000f, global1.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(global1.x, global1.x), global1.x, _wgslsmith_f_op_f32(min(global1.x, 288f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), global1.x, -1962f), all(vec3<bool>(var_3.c.a, var_3.b.a, var_3.c.a))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-954f, 304f, -1099f, global1.x), vec4<f32>(1867f, global1.x, global1.x, global1.x))))) * vec4<f32>(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_div_f32(-611f, 346f), -729f, -1449f))));
}

