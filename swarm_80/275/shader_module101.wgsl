struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(69685u, 0u);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: vec4<i32>) -> u32 {
    global0 = Struct_1(1u, u_input.c);
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -153f)));
    let var_1 = arg_0 != -_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, -2147483647i), arg_1.zy), u_input.a);
    let var_2 = select(!(!select(vec4<bool>(var_1, false, true, false), !vec4<bool>(var_1, false, true, var_1), select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, var_1, true, var_1), true))), select(!vec4<bool>(var_1, 0u <= u_input.e.x, true, global0.b <= 58157u), vec4<bool>(any(select(vec3<bool>(var_1, var_1, var_1), vec3<bool>(true, var_1, var_1), vec3<bool>(var_1, var_1, var_1))), all(vec2<bool>(true, false)), !all(vec3<bool>(var_1, var_1, var_1)), var_1), all(!vec3<bool>(var_1, var_1, var_1))), !var_1);
    let var_3 = !select(select(select(select(vec3<bool>(true, true, var_1), vec3<bool>(true, var_1, var_2.x), var_2.x), !var_2.zzx, vec3<bool>(true, false, var_1)), vec3<bool>(all(vec3<bool>(false, false, var_2.x)), all(var_2.yxy), true || var_1), var_2.yxz), select(var_2.wxz, !var_2.yyz, all(var_2.zxz)), all(vec3<bool>(any(vec4<bool>(false, false, true, var_2.x)), var_2.x, var_2.x)));
    return global0.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(~7289u, 49584u);
    var_0 = Struct_1(~66871u, firstLeadingBit(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(arg_1.b, 4294967295u, 4294967295u)), select(u_input.e.wyx, u_input.e.wyx, vec3<bool>(true, true, false))), reverseBits(vec3<u32>(68254u, 85827u, u_input.e.x)))));
    var_0 = Struct_1(global0.a, 1u);
    let var_1 = Struct_2(vec4<i32>(i32(-1i) * -2147483647i, -2147483647i, -arg_0.x | abs(-35103i >> (var_0.b % 32u)), 2147483647i));
    var var_2 = ~(~vec4<u32>(u_input.e.x, var_0.b, global0.a, _wgslsmith_sub_u32(~global0.a, ~var_0.b)));
    return -342f;
}

fn func_2(arg_0: vec2<bool>) -> bool {
    global0 = Struct_1(abs(global0.b), _wgslsmith_add_u32(0u, ~u_input.e.x));
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(2489f, -942f, -916f, 223f)))) - vec4<f32>(1f, 1f, 1f, 1f))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1000f))), 290f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(896f, -1000f, false))))), -114f), arg_0.x));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(-(~(~u_input.d.xxx)), Struct_1(firstLeadingBit(~u_input.c), ~func_3(u_input.a.x, vec4<i32>(2147483647i, -68122i, u_input.a.x, 29402i)))))));
    let var_2 = Struct_1(u_input.c << (select(_wgslsmith_sub_u32(u_input.e.x >> (global0.b % 32u), 9950u), 42880u, true) % 32u), 12983u);
    let var_3 = ~(~select(u_input.d.zzz, firstLeadingBit(-u_input.d.zxw), !vec3<bool>(arg_0.x, arg_0.x, true)));
    return true;
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> Struct_1 {
    let var_0 = Struct_1(0u, (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c, global0.b) & u_input.e.zz, ~u_input.e.zz) << (~(13914u >> (u_input.e.x % 32u)) % 32u)) & firstTrailingBit(~(~u_input.c)));
    global0 = var_0;
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_0.x));
    global0 = var_0;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1, -613f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x)) - _wgslsmith_div_f32(var_1, -1593f))))), 1000f);
    return var_0;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> bool {
    var var_0 = u_input.d;
    let var_1 = ~vec2<u32>(_wgslsmith_mod_u32(1u, ~abs(arg_1)), 1u);
    global0 = func_5(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-520f, _wgslsmith_f_op_f32(f32(-1f) * -1797f)))), -759f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(912f * 470f), -1000f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(1033f)), _wgslsmith_f_op_f32(491f - 632f), arg_0.x)))), arg_0.x || true, vec3<bool>(true, func_2(arg_0.yx), select(any(!arg_0), arg_0.x, global0.a < arg_1)), var_0.x);
    let var_2 = firstTrailingBit(-select(u_input.d | (u_input.d | vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, 1271i)), _wgslsmith_sub_vec4_i32(u_input.d, vec4<i32>(0i, 7457i, var_0.x, u_input.b) ^ u_input.d), !arg_0));
    let var_3 = Struct_1(0u, select(arg_1, firstLeadingBit(global0.a), true));
    return select(true, !(global0.a > global0.b), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(-1i, ~u_input.a.x);
    var var_1 = !vec3<bool>(_wgslsmith_f_op_f32(-309f - _wgslsmith_f_op_f32(trunc(-954f))) > -704f, func_1(vec4<bool>(true, true, true, true), global0.b), false);
    var var_2 = false;
    var var_3 = func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(785f, 689f, 1000f) + vec3<f32>(132f, 954f, -399f)), vec3<f32>(-930f, 1000f, 656f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(412f, -1295f, -301f) * vec3<f32>(969f, -201f, -1049f)))))), !(countOneBits(u_input.c) >= u_input.e.x), !(!select(!vec3<bool>(var_1.x, false, var_1.x), vec3<bool>(var_1.x, true, true), true)), ~31768i);
    var var_4 = vec3<u32>(~u_input.c, u_input.c, var_3.b);
    var_1 = vec3<bool>(all(select(!var_1.xz, select(!var_1.yy, vec2<bool>(var_1.x, var_1.x), var_1.x), 1355f != _wgslsmith_f_op_f32(ceil(468f)))), any(select(vec4<bool>(any(vec4<bool>(var_1.x, false, var_1.x, var_1.x)), true, var_1.x && true, false), !select(vec4<bool>(false, var_1.x, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, var_1.x, true, true)), true)), all(select(!select(vec2<bool>(var_1.x, var_1.x), vec2<bool>(var_1.x, false), var_1.zy), vec2<bool>(true, func_2(var_1.yx)), vec2<bool>(var_1.x, all(vec3<bool>(var_1.x, false, var_1.x))))));
    let var_5 = Struct_2(vec4<i32>(_wgslsmith_clamp_i32(u_input.d.x, firstTrailingBit(var_0.x), var_0.x >> (abs(4294967295u) % 32u)), -40480i, -50987i, _wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.d.wxz), vec3<i32>(min(var_0.x, u_input.a.x), -8636i, u_input.a.x))));
    var_1 = vec3<bool>(all(vec4<bool>(select(var_1.x, var_1.x, true) && var_1.x, select(true, var_1.x, true), var_1.x, var_1.x)), all(!(!var_1.xy)), var_5.a.x == _wgslsmith_div_i32(40902i, _wgslsmith_dot_vec3_i32(var_5.a.yzw & u_input.d.zyz, vec3<i32>(var_0.x, -1610i, -23246i))));
    var var_6 = !var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-410f, _wgslsmith_f_op_f32(select(154f, -230f, true)))) * 769f)), var_5.a.x, -_wgslsmith_div_i32(-7931i, var_5.a.x));
}

