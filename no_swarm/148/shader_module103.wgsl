struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: bool,
    d: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<f32>(-441f, 119f), Struct_1(vec2<i32>(-4968i, -80168i), 0u, true, vec3<u32>(58514u, 89024u, 37051u)), Struct_1(vec2<i32>(-1i, -1i), 29820u, false, vec3<u32>(41101u, 4294967295u, 1u)), -373f, vec4<u32>(1u, 1u, 1u, 4294967295u));

var<private> global1: vec4<f32> = vec4<f32>(900f, -1038f, 888f, -196f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: Struct_2) -> f32 {
    var var_0 = global0.d;
    global1 = arg_1;
    var_0 = _wgslsmith_f_op_f32(-573f + arg_2.a.x);
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(-1408f - _wgslsmith_f_op_f32(f32(-1f) * -495f)), -470f);
    var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.xyy);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1318f) - _wgslsmith_f_op_f32(arg_1.x - -1054f)))));
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(vec2<f32>(global1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-368f - _wgslsmith_f_op_f32(func_3(vec3<bool>(global0.c.c, false, global0.b.c), vec4<f32>(-788f, -1820f, 1137f, 618f), Struct_2(global0.a, global0.c, global0.c, 1090f, global0.e))))))), global0.b, global0.b, 492f, firstLeadingBit(~global0.e));
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.xy + vec2<f32>(1211f, 473f)) * _wgslsmith_f_op_vec2_f32(min(global1.ww, vec2<f32>(-540f, global1.x)))), global0.a, select(vec2<bool>(global0.c.c != true, true), vec2<bool>(true, global0.c.c), select(select(vec2<bool>(false, global0.b.c), vec2<bool>(global0.b.c, global0.c.c), vec2<bool>(global0.b.c, global0.c.c)), select(vec2<bool>(true, global0.c.c), vec2<bool>(false, false), vec2<bool>(true, true)), false)))), global0.b, Struct_1(firstTrailingBit(vec2<i32>(_wgslsmith_mult_i32(global0.b.a.x, global0.c.a.x), u_input.a.x)), 0u, !global0.c.c, _wgslsmith_add_vec3_u32(min(vec3<u32>(global0.b.d.x, 4294967295u, global0.c.d.x), _wgslsmith_sub_vec3_u32(global0.c.d, u_input.b.xyz)), vec3<u32>(13395u | global0.e.x, u_input.b.x, 1u))), _wgslsmith_f_op_f32(func_3(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))), any(!vec4<bool>(global0.b.c, false, global0.b.c, global0.b.c)), _wgslsmith_mult_u32(global0.b.d.x, u_input.b.x) >= 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.x, _wgslsmith_div_f32(global1.x, global0.a.x), 1f, -793f) - vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x), global0.d, _wgslsmith_f_op_f32(select(-458f, global1.x, global0.c.c)))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1785f, 1797f) * vec2<f32>(1113f, 1809f))), global0.c, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(-538f - 985f)), ~(~u_input.b)))), ~_wgslsmith_add_vec4_u32(countOneBits(firstLeadingBit(global0.e)), vec4<u32>(~u_input.b.x, ~0u, _wgslsmith_mult_u32(2157u, global0.c.b), ~4294967295u)));
    var var_1 = all(select(!(!select(vec4<bool>(var_0.b.c, global0.c.c, var_0.b.c, true), vec4<bool>(false, global0.c.c, false, global0.c.c), vec4<bool>(var_0.c.c, false, true, var_0.b.c))), select(!(!vec4<bool>(var_0.b.c, false, true, false)), select(!vec4<bool>(true, true, global0.c.c, global0.c.c), !vec4<bool>(false, global0.c.c, false, false), any(vec2<bool>(global0.c.c, var_0.c.c))), !(!vec4<bool>(false, global0.b.c, global0.b.c, var_0.c.c))), vec4<bool>(!(u_input.c.x <= 2147483647i), _wgslsmith_f_op_f32(round(global0.d)) >= _wgslsmith_f_op_f32(func_3(vec3<bool>(global0.c.c, global0.c.c, true), vec4<f32>(1000f, 115f, var_0.d, 301f), Struct_2(vec2<f32>(-312f, -115f), Struct_1(vec2<i32>(0i, -1i), global0.c.d.x, false, var_0.e.xwx), Struct_1(var_0.b.a, 1u, global0.b.c, vec3<u32>(global0.c.d.x, var_0.b.d.x, 27733u)), 551f, global0.e))), var_0.b.c || var_0.c.c, all(select(vec3<bool>(global0.c.c, global0.c.c, false), vec3<bool>(global0.b.c, true, false), vec3<bool>(true, global0.b.c, global0.c.c))))));
    let var_2 = _wgslsmith_f_op_f32(sign(global0.d));
    let var_3 = 1f;
    return Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(global0.a, var_0.a)), global0.c, global0.b, -1855f, _wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(max(var_0.e, vec4<u32>(10214u, 1u, 11963u, 11471u)), select(vec4<u32>(60591u, u_input.b.x, 51613u, var_0.b.d.x), global0.e, global0.b.c)), ~(vec4<u32>(u_input.b.x, global0.b.d.x, 39759u, var_0.c.d.x) ^ global0.e) ^ u_input.b));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = Struct_1(~var_0.b.a, 17275u, arg_0.c.c, ~(~(~u_input.b.wyx)));
    let var_2 = Struct_1(~vec2<i32>(min(select(var_0.c.a.x, 1735i, false), min(35102i, arg_2.b.a.x)), i32(-1i) * -11515i), arg_3, false, (vec3<u32>(32252u, ~arg_2.b.d.x, ~4294967295u) ^ vec3<u32>(1u, arg_0.e.x, 32396u)) << (vec3<u32>(46544u, _wgslsmith_dot_vec2_u32(~var_1.d.xx, ~var_1.d.yz), 1u) % vec3<u32>(32u)));
    var_1 = func_2().b;
    let var_3 = _wgslsmith_dot_vec2_i32(vec2<i32>(~(_wgslsmith_mult_i32(arg_2.c.a.x, 2263i) & 1i), ~var_2.a.x), vec2<i32>(20754i, -reverseBits(_wgslsmith_dot_vec3_i32(vec3<i32>(43913i, global0.b.a.x, -6999i), vec3<i32>(var_2.a.x, global0.c.a.x, 58416i)))));
    return func_2();
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    let var_0 = select(!(!select(!vec3<bool>(false, global0.b.c, arg_2.c), select(vec3<bool>(global0.c.c, arg_0.b.c, false), vec3<bool>(arg_2.c, arg_3.b.c, arg_0.b.c), false), true || arg_0.c.c)), !vec3<bool>(arg_3.c.c || true, any(vec3<bool>(true, true, arg_0.c.c)), false), !global0.c.c);
    global1 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1355f, -571f, arg_0.a.x, global1.x), vec4<f32>(-607f, -637f, 545f, 203f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d, arg_3.a.x, -118f, arg_0.d) - vec4<f32>(1000f, global1.x, 833f, 2244f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1646f, global1.x, 246f, -712f) - vec4<f32>(1312f, -1119f, global1.x, arg_1)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.x, arg_3.a.x, arg_0.d, 793f))))))));
    global0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -409f) * _wgslsmith_f_op_f32(-global1.x)), arg_1), func_1(func_2(), true, Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a.x, arg_0.a.x) - vec2<f32>(314f, 440f)), arg_0.b, func_2().b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) - -150f), u_input.b), reverseBits(max(1u, arg_0.c.d.x))).c, Struct_1(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-77318i, arg_0.c.a.x), u_input.c.xy, select(vec2<i32>(arg_2.a.x, global0.b.a.x), vec2<i32>(2147483647i, global0.c.a.x), arg_0.c.c)), 0u, arg_2.c, arg_3.e.wzy), 2154f, ~u_input.b);
    global0 = func_2();
    var var_1 = _wgslsmith_add_u32(~(firstLeadingBit(~u_input.b.x) ^ ~(~arg_3.c.d.x)), arg_0.c.d.x);
    return arg_2.d.x;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec4<i32>, arg_2: bool, arg_3: vec3<bool>) -> u32 {
    var var_0 = func_2();
    var_0 = func_1(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, global0.a.x))), _wgslsmith_f_op_vec2_f32(floor(global0.a)), true))), func_2().b, func_2().b, var_0.a.x, var_0.e), true, func_1(func_1(Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(1727f, -587f) - vec2<f32>(global1.x, var_0.d)), func_2().b, var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -1162f), func_2().e), all(arg_3.xy), func_1(func_1(Struct_2(vec2<f32>(1129f, global0.d), Struct_1(global0.c.a, 21080u, true, vec3<u32>(38663u, global0.e.x, global0.e.x)), Struct_1(var_0.b.a, u_input.b.x, arg_3.x, u_input.b.zzz), 1025f, u_input.b), true, Struct_2(var_0.a, Struct_1(vec2<i32>(global0.c.a.x, global0.b.a.x), 14900u, false, vec3<u32>(10427u, 24772u, 0u)), var_0.c, global0.a.x, u_input.b), 37817u), !arg_2, func_1(Struct_2(vec2<f32>(-920f, 705f), var_0.c, global0.c, -120f, arg_0), arg_3.x, Struct_2(global0.a, var_0.c, Struct_1(u_input.a, 6840u, false, global0.b.d), global0.a.x, global0.e), global0.b.d.x), abs(6888u)), global0.b.b), true, func_2(), 54567u), firstLeadingBit(~0u));
    var var_1 = Struct_1(~vec2<i32>(u_input.c.x, -1i), firstLeadingBit(1u), all(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_2, true, true, var_0.b.c), (global0.c.a.x | global0.c.a.x) != -global0.b.a.x)), min(~_wgslsmith_mult_vec3_u32(~vec3<u32>(99697u, global0.c.b, 67113u), _wgslsmith_sub_vec3_u32(var_0.c.d, arg_0.zzx)), _wgslsmith_add_vec3_u32(~(~global0.b.d), ~(~arg_0.yyx))));
    var_0 = func_2();
    global1 = vec4<f32>(var_0.d, -842f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-217f, 730f)), -135f)))), var_0.a.x);
    return global0.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(vec4<u32>(_wgslsmith_add_u32(func_4(func_1(Struct_2(global0.a, global0.c, Struct_1(vec2<i32>(global0.c.a.x, 23778i), u_input.b.x, global0.c.c, u_input.b.zyw), 1883f, vec4<u32>(u_input.b.x, 4294967295u, 1u, global0.c.d.x)), false, Struct_2(vec2<f32>(global0.a.x, global0.a.x), Struct_1(vec2<i32>(u_input.c.x, global0.c.a.x), 4294967295u, global0.c.c, vec3<u32>(0u, u_input.b.x, 74266u)), Struct_1(vec2<i32>(0i, 1i), global0.c.d.x, true, u_input.b.zzw), global1.x, vec4<u32>(global0.e.x, global0.e.x, global0.c.b, global0.c.d.x)), u_input.b.x), _wgslsmith_f_op_f32(-global1.x), global0.b, func_1(Struct_2(vec2<f32>(-738f, -563f), Struct_1(global0.c.a, global0.b.d.x, global0.b.c, u_input.b.yxy), global0.b, -632f, u_input.b), true, Struct_2(global0.a, global0.b, global0.c, global0.d, global0.e), global0.c.b)), min(~0u, global0.e.x)), ~u_input.b.x, 0u, max(72357u, firstTrailingBit(func_1(Struct_2(vec2<f32>(global0.a.x, -424f), global0.b, Struct_1(vec2<i32>(18875i, -1i), 1u, false, vec3<u32>(101406u, 4294967295u, global0.b.d.x)), -1061f, vec4<u32>(global0.c.d.x, 0u, 15749u, u_input.b.x)), global0.c.c, Struct_2(global0.a, Struct_1(u_input.c.zz, global0.e.x, global0.b.c, vec3<u32>(global0.e.x, 0u, global0.e.x)), global0.b, -241f, vec4<u32>(global0.b.b, 4294967295u, global0.e.x, global0.e.x)), 27229u).e.x))), firstTrailingBit(-min(-vec4<i32>(-2147483647i, global0.b.a.x, global0.b.a.x, 24581i), vec4<i32>(-65006i, -25840i, u_input.a.x, u_input.c.x) << (vec4<u32>(13979u, u_input.b.x, global0.c.d.x, global0.e.x) % vec4<u32>(32u)))), _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-global0.b.a.x, 1i)) > u_input.c.x, vec3<bool>(all(vec2<bool>(global0.c.c, global0.b.c)), !all(select(vec2<bool>(true, true), vec2<bool>(global0.b.c, global0.b.c), global0.c.c)), func_2().c.c));
    let var_1 = select(select(select(select(select(vec4<bool>(false, false, true, global0.b.c), vec4<bool>(false, global0.b.c, global0.c.c, global0.b.c), vec4<bool>(global0.b.c, false, false, global0.b.c)), !vec4<bool>(global0.b.c, true, false, global0.c.c), select(vec4<bool>(false, global0.c.c, global0.c.c, global0.c.c), vec4<bool>(false, false, global0.b.c, true), vec4<bool>(true, false, false, global0.c.c))), select(!vec4<bool>(false, global0.b.c, global0.b.c, false), vec4<bool>(global0.b.c, false, true, global0.c.c), select(vec4<bool>(global0.c.c, global0.c.c, true, global0.b.c), vec4<bool>(true, global0.b.c, false, true), vec4<bool>(global0.b.c, global0.b.c, global0.b.c, false))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, global0.c.c, global0.c.c, true), true))), vec4<bool>(global0.c.c, _wgslsmith_f_op_f32(sign(-1139f)) > _wgslsmith_f_op_f32(f32(-1f) * -277f), true, false), global0.c.c), vec4<bool>(select(false, select(false, 0u != u_input.b.x, u_input.b.x < u_input.b.x), select(!global0.b.c, true | global0.c.c, true)), true, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1554f)) * global0.d) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.d)), -728f)), select(!(!vec4<bool>(global0.c.c, true, true, true)), vec4<bool>(u_input.a.x <= global0.b.a.x, any(select(vec3<bool>(false, global0.b.c, true), vec3<bool>(false, global0.b.c, false), false)), !select(global0.c.c, global0.c.c, true), true), vec4<bool>(any(select(vec2<bool>(global0.b.c, false), vec2<bool>(global0.b.c, false), vec2<bool>(false, global0.c.c))), global0.b.c, global0.b.c, true)));
    let var_2 = vec2<bool>(func_1(func_1(Struct_2(global0.a, Struct_1(vec2<i32>(u_input.c.x, u_input.a.x), 33837u, true, u_input.b.wxz), global0.b, global0.a.x, u_input.b), global0.b.c, func_1(Struct_2(global0.a, Struct_1(u_input.c.zx, global0.c.b, var_1.x, u_input.b.wyw), Struct_1(vec2<i32>(-2147483647i, 2147483647i), global0.c.b, global0.c.c, global0.c.d), -842f, vec4<u32>(0u, u_input.b.x, 28084u, 0u)), global0.b.c, Struct_2(vec2<f32>(global1.x, global1.x), Struct_1(vec2<i32>(global0.c.a.x, -28090i), global0.b.b, var_1.x, u_input.b.yww), global0.c, 729f, u_input.b), 47249u), ~0u), (global0.b.d.x | u_input.b.x) != ~u_input.b.x, func_1(func_2(), any(var_1.xzy), func_2(), global0.b.d.x >> (19497u % 32u)), select(global0.e.x ^ 0u, global0.b.b, global0.c.c != false)).b.a.x == u_input.a.x, false);
    let var_3 = func_2();
    var_0 = 1u;
    let var_4 = global0.b.d.x;
    let var_5 = func_1(Struct_2(global0.a, Struct_1(vec2<i32>(-8523i, -4948i), global0.b.d.x, var_2.x, vec3<u32>(1u, u_input.b.x ^ 35653u, _wgslsmith_dot_vec4_u32(vec4<u32>(25044u, var_3.c.b, global0.c.d.x, global0.e.x), u_input.b))), var_3.c, _wgslsmith_f_op_f32(global0.d * 126f), abs(func_1(func_2(), -1i < global0.c.a.x, func_1(var_3, false, var_3, 4294967295u), 4294967295u).e)), abs(~16291i) <= (_wgslsmith_div_i32(_wgslsmith_clamp_i32(50911i, -13388i, 0i), _wgslsmith_div_i32(2147483647i, global0.b.a.x)) >> (u_input.b.x % 32u)), func_2(), var_3.c.d.x).c;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.e.wx, ~(~(~reverseBits(u_input.b))), -38576i, global0.e);
}

