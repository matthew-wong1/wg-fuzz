struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = _wgslsmith_add_u32(u_input.a.x, u_input.a.x);
    let var_1 = max(u_input.b.x, ~(-u_input.e));
    var var_2 = -665f;
    let var_3 = arg_0;
    var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1353f);
    return _wgslsmith_add_i32(_wgslsmith_mod_i32(~1i, -u_input.c.x), var_1);
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = -371f;
    var var_1 = arg_0;
    let var_2 = arg_0;
    var_1 = var_2;
    var_1 = arg_0;
    return ~u_input.c.x;
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(func_2(Struct_1(vec4<bool>(true, true, true, true))));
    var var_1 = Struct_1(select(vec4<bool>(true, _wgslsmith_f_op_f32(-667f + 708f) <= _wgslsmith_f_op_f32(trunc(1214f)), true, false), vec4<bool>(true, func_3(Struct_1(vec4<bool>(true, false, true, false))) != countOneBits(-1i), true, true), any(select(vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false)), any(vec3<bool>(true, true, true))))));
    let var_2 = u_input.a.ywy;
    var_1 = Struct_1(var_1.a);
    let var_3 = Struct_1(vec4<bool>(var_1.a.x, min(2147483647i, _wgslsmith_add_i32(-2147483647i, var_0)) < firstTrailingBit(var_0), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(508f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1666f * 168f) + _wgslsmith_f_op_f32(select(-1360f, -1822f, true)))));
    return Struct_1(vec4<bool>(!(false || (var_3.a.x | false)), true, true, var_1.a.x));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2252f, _wgslsmith_f_op_f32(floor(-2629f)), 410f))));
    let var_1 = func_1();
    var var_2 = Struct_1(vec4<bool>(false, false, any(func_1().a), true));
    var var_3 = any(vec3<bool>(!var_1.a.x, !(!arg_1.a.x), arg_0.a.x)) | (any(vec3<bool>(var_0.x > var_0.x, true || var_1.a.x, any(vec4<bool>(var_2.a.x, var_1.a.x, var_2.a.x, true)))) | false);
    var_3 = all(vec4<bool>(false, var_2.a.x, arg_0.a.x, !(!var_2.a.x)));
    return ~u_input.d.x;
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<u32>) -> vec3<bool> {
    let var_0 = true;
    var var_1 = u_input.b;
    var_1 = _wgslsmith_clamp_vec4_i32(~u_input.b, vec4<i32>(u_input.e, 1i, _wgslsmith_dot_vec2_i32(countOneBits(_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, u_input.b.x), vec2<i32>(u_input.c.x, u_input.e))), ~(~vec2<i32>(arg_0, -27004i))), firstTrailingBit(-_wgslsmith_add_i32(var_1.x, 0i))), _wgslsmith_clamp_vec4_i32(reverseBits(abs(~u_input.b)), -min(-u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(arg_0, 45865i, var_1.x, 1i), vec4<i32>(u_input.b.x, var_1.x, var_1.x, 2147483647i), u_input.b)), ~vec4<i32>(countOneBits(arg_0), arg_0, reverseBits(1i), 1i)));
    var var_2 = any(vec2<bool>(!all(func_1().a), !var_0 || all(arg_1.a.zx)));
    let var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, -2431f), _wgslsmith_f_op_f32(ceil(2237f)))), _wgslsmith_f_op_f32(126f * -584f), -1482f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1858f * 157f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(-233f, -365f, -1358f, -1509f), vec4<f32>(1441f, -341f, 634f, -1116f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1158f, 2122f, -382f, -183f)))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(vec4<f32>(751f, -790f, 471f, -667f) * vec4<f32>(1325f, -1219f, -1384f, -448f)), true))), true)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-578f + 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(458f))), _wgslsmith_f_op_f32(trunc(434f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-493f)))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * 1300f) - -387f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-163f * -272f)), _wgslsmith_f_op_f32(round(-1787f)), -1466f)), arg_2.a.x));
    return vec3<bool>(true, select(false, any(vec4<bool>(arg_2.a.x, false, arg_1.a.x, true)) | arg_1.a.x, !arg_1.a.x | select(arg_2.a.x, var_0, true)), !all(vec2<bool>(true, var_3.x <= 134f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = func_5(~(~(~u_input.e)), Struct_1(vec4<bool>(false, true, true, var_0)), Struct_1(vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(var_0, true, var_0), var_0)), true, !all(vec2<bool>(false, var_0)), false)), vec4<u32>(u_input.d.x, select(u_input.a.x, firstLeadingBit(~u_input.a.x), true), _wgslsmith_mod_u32(~(~u_input.a.x), 1u), func_4(func_1(), func_1(), -_wgslsmith_clamp_i32(32510i, u_input.e, u_input.b.x))));
    var_1 = !select(vec3<bool>(true, func_5(-5535i, func_1(), func_1(), ~u_input.a).x, false), func_5(-13416i, Struct_1(select(vec4<bool>(true, var_1.x, var_1.x, true), vec4<bool>(var_0, false, true, false), var_0)), Struct_1(select(vec4<bool>(var_0, true, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(var_1.x, true, var_1.x, true))), vec4<u32>(u_input.a.x >> (u_input.d.x % 32u), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a), ~15418u, 6168u)), any(vec4<bool>(true, var_1.x | true, any(var_1.yy), var_0)));
    var_1 = func_1().a.yxy;
    let var_2 = ~_wgslsmith_sub_i32(u_input.e, -2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(select(var_2, var_2, var_1.x), ~2147483647i));
}

