struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: f32,
    d: vec2<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<i32>) -> vec4<f32> {
    var var_0 = Struct_1(u_input.a.wx, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1786f, 645f, 383f)) + vec3<f32>(-1439f, 565f, -686f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1618f, 292f, 204f))))));
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.b.x * 1113f))))), var_0.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -331f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f))));
}

fn func_2(arg_0: Struct_1) -> bool {
    global0 = array<vec3<u32>, 28>();
    let var_0 = arg_0;
    let var_1 = Struct_1(var_0.a, var_0.b);
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.b.x)), _wgslsmith_f_op_f32(var_1.b.x * 284f), arg_0.b.x, arg_0.b.x) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(557f, var_1.b.x, var_1.b.x, var_1.b.x))))))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(ceil(350f)), _wgslsmith_f_op_f32(max(arg_0.b.x, 161f)), arg_0.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_vec4_f32(func_3(vec3<i32>(-1i, -1i, 0i))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), select(true, false, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.x, arg_0.b.x, 1142f, 905f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1264f, -832f, var_1.b.x, -336f), vec4<f32>(-1178f, var_0.b.x, -1000f, arg_0.b.x)), vec4<f32>(-1462f, var_1.b.x, 1374f, -1623f)))));
    var var_3 = select(select(vec2<bool>(select(true, false, true), all(vec4<bool>(true, true, true, true))), vec2<bool>(true, 1878f >= _wgslsmith_f_op_f32(-var_0.b.x)), select(vec2<bool>(true, all(vec2<bool>(true, false))), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), true)), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(false, !any(vec4<bool>(true, true, true, true)) & true));
    return any(!vec2<bool>(!(!var_3.x), _wgslsmith_f_op_f32(ceil(212f)) == _wgslsmith_f_op_f32(var_0.b.x - var_2.x)));
}

fn func_1(arg_0: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -349f));
    var var_1 = i32(-1i) * -1i;
    var var_2 = select(!vec2<bool>(!(u_input.a.x == 22872u), true), select(vec2<bool>(all(select(vec2<bool>(false, true), vec2<bool>(true, false), true)), func_2(Struct_1(vec2<u32>(37220u, 4294967295u), vec3<f32>(-2457f, -364f, -1000f)))), vec2<bool>(all(vec2<bool>(true, true)) | true, !func_2(Struct_1(vec2<u32>(u_input.a.x, 4294967295u), vec3<f32>(530f, 1000f, 219f)))), !vec2<bool>(any(vec2<bool>(true, false)), select(false, false, true))), min(arg_0.x, arg_0.x) > 21084i);
    var var_3 = vec2<bool>(var_2.x, false);
    let var_4 = !(!(-firstLeadingBit(arg_0.x) > _wgslsmith_sub_i32(0i, 1i)));
    return Struct_1(min(u_input.a.zy, u_input.a.zz), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(335f)), 752f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1777f + 995f))))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: vec4<f32>) -> vec3<bool> {
    let var_0 = Struct_1(max(arg_0.a, _wgslsmith_clamp_vec2_u32(~(arg_0.a | vec2<u32>(u_input.a.x, 5983u)), ~u_input.a.xx, ~arg_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1240f, arg_2.x, 1335f) - arg_2.yzw) - _wgslsmith_f_op_vec3_f32(select(arg_0.b, vec3<f32>(arg_0.b.x, arg_2.x, arg_0.b.x), vec3<bool>(false, false, arg_1.x)))))));
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -735f)), _wgslsmith_f_op_f32(f32(-1f) * -613f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, arg_0.b.x), arg_0.b.zz)) * _wgslsmith_f_op_vec2_f32(arg_2.yw * _wgslsmith_f_op_vec2_f32(min(arg_0.b.zx, arg_2.zz))))));
    var var_2 = func_1(firstLeadingBit(-countOneBits(-vec4<i32>(36477i, 2147483647i, 2147483647i, 25153i))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(arg_2));
    let var_4 = Struct_1(vec2<u32>(firstTrailingBit(~15708u) ^ var_0.a.x, 1u), _wgslsmith_f_op_vec3_f32(-arg_2.yxz));
    return arg_1.wyw;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: bool, arg_3: vec4<bool>) -> f32 {
    global0 = array<vec3<u32>, 28>();
    let var_0 = func_2(func_1(vec4<i32>(1i, 1i, 1i, 1i))) || all(vec4<bool>(any(!arg_3), arg_3.x || (arg_2 | false), true, all(vec2<bool>(false, true))));
    global0 = array<vec3<u32>, 28>();
    let var_1 = ~41375u;
    var var_2 = -2147483647i;
    return _wgslsmith_f_op_f32(max(func_1(reverseBits(vec4<i32>(-1i, select(54163i, -14216i, arg_2), ~1i, 1i))).b.x, arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.yz, vec3<f32>(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(137f, -1815f, -271f))), vec3<bool>(true, false, false))), func_4(func_1(vec4<i32>(51575i, -2147483647i, -2147483647i, -17171i)), vec4<bool>(true, true, true, true), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(481f, 735f, 493f, -1897f), vec4<f32>(748f, -1000f, -1414f, -877f)))), !any(vec2<bool>(true, false)), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false)))), -147f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(270f * -1103f), _wgslsmith_div_f32(-857f, -1000f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(544f - 2480f), -2058f)))));
    let var_1 = func_1(-vec4<i32>(1i, 36522i, ~_wgslsmith_div_i32(-2147483647i, -1i), _wgslsmith_add_i32(-1i, 0i)));
    let var_2 = min(~abs(vec4<i32>(0i, ~(-2147483647i), 1i, -44696i)), vec4<i32>(-(~(i32(-1i) * -3761i)), i32(-1i) * -1i, firstTrailingBit(30972i) | ~firstTrailingBit(-2147483647i), -1i & min(~(-1i), firstTrailingBit(12144i))));
    global0 = array<vec3<u32>, 28>();
    var var_3 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec4_f32(func_3(max(vec3<i32>(var_2.x, var_2.x, var_2.x), var_2.zzw))).x)), var_1.b.x), u_input.a, _wgslsmith_f_op_f32(select(var_0.b.x, var_1.b.x, true)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-2681f - 1874f), _wgslsmith_f_op_f32(f32(-1f) * -358f)) * var_0.b.yz)), ~max(_wgslsmith_mult_i32(1i, -var_2.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, 2147483647i), var_2.xx), var_2.x)));
}

