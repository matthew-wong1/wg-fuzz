struct Struct_1 {
    a: u32,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1000f, 324f, 1000f);

var<private> global1: Struct_2;

var<private> global2: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global1 = Struct_2(global1.a, max(vec3<i32>(~u_input.d.x, (u_input.d.x ^ 1i) | u_input.c, 2147483647i), max(u_input.d.xzw, vec3<i32>(-31246i, ~global1.b.x, u_input.c))), select(~1u ^ arg_0, (countOneBits(u_input.b.x) >> (~arg_1.a % 32u)) >> (92859u % 32u), global2.x));
    return _wgslsmith_mult_u32(~_wgslsmith_mult_u32(20244u, _wgslsmith_add_u32(global1.c, arg_1.a)), 24982u) ^ global1.c;
}

fn func_2(arg_0: vec3<f32>) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0), arg_0))));
    let var_0 = Struct_2(select(!(!global2.x), all(global2.zx), _wgslsmith_f_op_f32(-arg_0.x) != 1050f), -_wgslsmith_mult_vec3_i32(vec3<i32>(-62651i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, -1i, global1.b.x), vec3<i32>(0i, u_input.d.x, 47633i)), _wgslsmith_div_i32(-22901i, 1i)), global1.b), _wgslsmith_clamp_u32(func_3(_wgslsmith_dot_vec3_u32(u_input.b.ywz | vec3<u32>(1u, 1u, 1499u), ~u_input.b.yxz), Struct_1(u_input.b.x << (global1.c % 32u), _wgslsmith_f_op_f32(exp2(global0.x)), global1.c)), _wgslsmith_sub_u32(global1.c, global1.c), min(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(32067u, 7589u, u_input.b.x, 4294967295u), vec4<u32>(global1.c, 4294967295u, 4294967295u, u_input.b.x))), _wgslsmith_mult_u32(global1.c, max(u_input.b.x, 4294967295u)))));
    let var_1 = var_0;
    var var_2 = Struct_1(select(firstLeadingBit(~(~var_0.c)), 4294967295u, true), arg_0.x, _wgslsmith_mod_u32(u_input.b.x, 30463u >> (~(~0u) % 32u)));
    let var_3 = var_1.c <= var_1.c;
    return reverseBits(firstLeadingBit(u_input.b.xzy));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = Struct_1(~1u | global1.c, _wgslsmith_f_op_f32(-313f * 957f), max(arg_1.x, ~55549u << (firstTrailingBit(arg_1.x) % 32u)));
    var var_1 = 2147483647i;
    var var_2 = _wgslsmith_add_i32(u_input.d.x, u_input.a.x);
    var var_3 = global0.yy;
    global0 = vec3<f32>(1005f, var_3.x, _wgslsmith_f_op_f32(-577f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(var_3.x)))) * 628f)));
    return Struct_2(all(!(!select(vec2<bool>(global1.a, global1.a), vec2<bool>(true, false), global1.a))), ~(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, -26918i, -2147483647i), vec3<i32>(19388i, u_input.d.x, global1.b.x)) ^ u_input.d.xxx) ^ vec3<i32>(0i >> (~u_input.b.x % 32u), global1.b.x & 36626i, i32(-1i) * -48642i), ~arg_1.x);
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: u32, arg_3: Struct_1) -> f32 {
    global1 = func_4(!(!select(vec4<bool>(false, global1.a, global1.a, global2.x), select(vec4<bool>(true, global1.a, true, global1.a), vec4<bool>(false, true, global2.x, true), vec4<bool>(global1.a, global1.a, global2.x, true)), global1.a)), func_2(_wgslsmith_f_op_vec3_f32(arg_1 * arg_1)));
    global1 = func_4(vec4<bool>(true, global1.a, !any(global2.yy) == !(arg_3.b <= 1152f), global1.a), ~_wgslsmith_div_vec3_u32(vec3<u32>(38952u, ~19417u, ~arg_2), ~(~u_input.b.xyw)));
    var var_0 = global0.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2221f, 1568f, _wgslsmith_f_op_f32(sign(-1540f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_0, 730f) + arg_1))));
    let var_1 = select(select(select(vec3<bool>(global1.a, true, global1.a), !vec3<bool>(global2.x, true, true), false), vec3<bool>(!any(vec3<bool>(true, true, global2.x)), -119f == _wgslsmith_f_op_f32(-1467f + arg_1.x), !(-1141f <= arg_3.b)), !(!all(vec4<bool>(global2.x, false, false, true)))), select(!select(!vec3<bool>(true, global1.a, true), select(vec3<bool>(false, global1.a, false), vec3<bool>(global2.x, false, true), vec3<bool>(true, global1.a, global1.a)), select(vec3<bool>(global2.x, false, false), vec3<bool>(global2.x, false, global2.x), global1.a)), select(select(select(vec3<bool>(global1.a, false, true), vec3<bool>(false, true, true), vec3<bool>(global2.x, false, global2.x)), select(vec3<bool>(true, global1.a, global2.x), vec3<bool>(global1.a, global1.a, true), vec3<bool>(global1.a, true, global1.a)), select(vec3<bool>(global1.a, true, true), vec3<bool>(global2.x, global1.a, global2.x), vec3<bool>(true, true, global2.x))), select(vec3<bool>(global2.x, false, global2.x), !vec3<bool>(false, global2.x, true), !global1.a), vec3<bool>(global2.x, select(global2.x, global1.a, global1.a), global2.x)), (~u_input.b.x << (~u_input.b.x % 32u)) > 1u), !(!vec3<bool>(!global2.x, true, u_input.a.x == global1.b.x)));
    return global0.x;
}

fn func_5(arg_0: f32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<i32>) -> vec3<f32> {
    var var_0 = Struct_1(global1.c, _wgslsmith_f_op_f32(global0.x * -440f), _wgslsmith_clamp_u32(arg_2.c, _wgslsmith_dot_vec4_u32(reverseBits(u_input.b), ~vec4<u32>(global1.c, 1u, 24801u, 1u)), ~9070u) ^ 22494u);
    var var_1 = global1.a;
    let var_2 = arg_2;
    var var_3 = select(!global2.zz, select(vec2<bool>(false, true), select(vec2<bool>(global2.x && var_2.a, all(vec4<bool>(global1.a, global2.x, false, global2.x))), global2.xy, (global2.x != true) == (global1.b.x < -7562i)), global2.zy), true);
    var var_4 = Struct_1(_wgslsmith_add_u32(55136u, _wgslsmith_dot_vec4_u32(~u_input.b, ~vec4<u32>(global1.c, arg_2.c, global1.c, 1u)) | _wgslsmith_dot_vec3_u32(select(u_input.b.zxw, u_input.b.zyy, var_2.a), _wgslsmith_sub_vec3_u32(vec3<u32>(67109u, var_0.c, 5753u), u_input.b.zxz))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(377f))))), var_0.b)), var_2.c);
    return vec3<f32>(1639f, _wgslsmith_f_op_f32(-400f * _wgslsmith_f_op_f32(ceil(117f))), var_0.b);
}

fn func_6(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = u_input.d;
    var var_1 = any(vec3<bool>(!(!global1.a), any(!(!vec4<bool>(false, global1.a, true, true))), false));
    var_1 = true != global1.a;
    var var_2 = _wgslsmith_f_op_f32(floor(1000f));
    let var_3 = false;
    return select(select(vec4<bool>(false & !var_3, true, all(!vec4<bool>(false, arg_2.a, arg_2.a, false)), any(!vec4<bool>(global2.x, arg_2.a, true, false))), select(!select(vec4<bool>(global1.a, var_3, true, false), vec4<bool>(arg_2.a, false, false, false), false), vec4<bool>(global1.a, arg_0.x == 6064i, global2.x, any(global2.xy)), !select(vec4<bool>(true, arg_2.a, false, var_3), vec4<bool>(global2.x, arg_2.a, true, true), false)), vec4<bool>(false, any(select(vec2<bool>(arg_2.a, false), vec2<bool>(var_3, var_3), var_3)), false, false)), vec4<bool>(select(false, global1.a, any(vec3<bool>(true, global1.a, true)) | select(false, global1.a, true)), global1.a, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, global1.a, var_3), vec3<bool>(arg_2.a, global2.x, global2.x), vec3<bool>(false, false, var_3)), select(vec3<bool>(true, global1.a, global1.a), vec3<bool>(var_3, false, arg_2.a), true))), !any(select(vec3<bool>(false, global1.a, global2.x), vec3<bool>(true, true, global1.a), vec3<bool>(arg_2.a, global1.a, true)))), select(!select(!vec4<bool>(true, global1.a, global2.x, arg_2.a), select(vec4<bool>(true, global1.a, global2.x, global1.a), vec4<bool>(true, global1.a, arg_2.a, arg_2.a), vec4<bool>(true, arg_2.a, false, var_3)), true), vec4<bool>(false, true && arg_2.a, !(global0.x >= arg_3.x), all(select(vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(global1.a, global1.a, arg_2.a), global2.x))), !vec4<bool>(60335u >= arg_1.x, false, all(global2.zz), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(global0.x)), -1049f, _wgslsmith_f_op_f32(-global0.x)) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + -711f)) - global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-307f + 781f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-877f, _wgslsmith_f_op_f32(-global0.x))))));
    var var_0 = select(!(!vec4<bool>(!global1.a, !global2.x, global2.x, global1.a)), func_6(abs(vec2<i32>(global1.b.x, 32743i)) | vec2<i32>(i32(-1i) * -1i, ~31698i), ~abs(vec4<u32>(global1.c, global1.c, 15404u, 0u) & u_input.b), Struct_2(!all(vec2<bool>(global1.a, global1.a)), ~(-vec3<i32>(-2147483647i, 2147483647i, -1i)), _wgslsmith_mod_u32(~u_input.b.x, ~u_input.b.x)), _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(func_1(-271f, _wgslsmith_f_op_vec3_f32(-vec3<f32>(795f, 1262f, 268f)), ~56352u, Struct_1(global1.c, -658f, 15705u))), u_input.a.x, func_4(vec4<bool>(true, true, false, global2.x), vec3<u32>(global1.c, 31630u, 14964u)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(1i, 2147483647i, -56159i, u_input.d.x), vec4<i32>(u_input.a.x, -1i, 9864i, global1.b.x))))), func_6(u_input.d.yz, vec4<u32>(global1.c, ~(~1u), _wgslsmith_mult_u32(_wgslsmith_add_u32(0u, u_input.b.x), 1u), _wgslsmith_mod_u32(~36430u, 1u)), Struct_2(any(select(vec4<bool>(global1.a, false, global1.a, false), vec4<bool>(false, true, global2.x, false), vec4<bool>(global1.a, true, false, global1.a))), global1.b, ~4294967295u), _wgslsmith_f_op_vec3_f32(vec3<f32>(-899f, _wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(step(-1000f, global0.x))) * _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(global0.x * global0.x), countOneBits(8458i), Struct_2(false, global1.b, 45321u), vec4<i32>(-21228i, global1.b.x, -4984i, -2147483647i) ^ u_input.d)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(sign(-1268f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec3_f32(func_5(-192f, _wgslsmith_add_i32(-1i, global1.b.x), func_4(vec4<bool>(global2.x, global1.a, global1.a, global1.a), u_input.b.zyy), firstTrailingBit(u_input.d))).x, _wgslsmith_f_op_vec3_f32(func_5(_wgslsmith_f_op_f32(-1727f - 297f), -51289i, func_4(vec4<bool>(true, var_0.x, true, global1.a), vec3<u32>(u_input.b.x, global1.c, 3081u)), reverseBits(u_input.d))).x, var_0.x))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1112f, global0.x)))));
    var_0 = vec4<bool>(all(!(!vec4<bool>(global1.a, true, global1.a, true))), false && var_0.x, true, global1.a);
    global1 = Struct_2(select(global2.x, 6544i > min(abs(24017i), u_input.c), !(!(!var_0.x))), global1.b, 83443u);
    global1 = func_4(func_6(global1.b.zx, countOneBits(u_input.b), Struct_2(global1.a, global1.b, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), vec2<u32>(15759u, global1.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, var_1.x, -154f), vec3<f32>(1282f, -145f, global0.x))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(610f, -1429f, var_1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, global0.x, -675f)), !var_0.wzz)))), u_input.b.yzy);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(u_input.b.xxz), u_input.a, 0i);
}

