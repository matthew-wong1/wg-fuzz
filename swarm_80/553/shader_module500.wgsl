struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<u32>) -> bool {
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, global0.x, 1354f) * vec3<f32>(-330f, -820f, -2549f)))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, 157f, global0.x)))))) + vec3<f32>(-1332f, _wgslsmith_f_op_f32(exp2(global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-280f, global0.x)), _wgslsmith_f_op_f32(global0.x - global0.x)))));
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1000f, -906f))), 955f))), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-291f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(862f, global0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * global0.x)) + -406f)));
    let var_0 = select(select(select(!select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), true), true), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true))), select(vec4<bool>(any(vec2<bool>(false, false)), u_input.a < 1u, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true))), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), select(true, false, false)))), select(vec4<bool>(true, true, all(vec4<bool>(true, false, false, false)), all(vec4<bool>(false, false, false, false))), !select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false)), true), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))), global0.x <= -796f);
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, -161f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)), true)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(160f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1114f, global0.x) - vec3<f32>(global0.x, global0.x, -366f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -199f, global0.x) + vec3<f32>(global0.x, global0.x, global0.x)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(120f, -355f, -325f) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global0.x, -1847f, global0.x))) * vec3<f32>(1696f, global0.x, 214f)) * vec3<f32>(838f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(exp2(global0.x)))))));
    var var_1 = Struct_3(Struct_1(vec4<bool>(true, var_0.x, !var_0.x, false), _wgslsmith_f_op_f32(max(global0.x, global0.x)), !var_0.wzw), _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(7310u, 0u, arg_1.x, 4294967295u), _wgslsmith_sub_vec4_u32(vec4<u32>(30865u, 26914u, u_input.a, arg_1.x), vec4<u32>(arg_1.x, u_input.a, 79774u, 4294967295u)))) >> (~28492u % 32u));
    return true;
}

fn func_4(arg_0: Struct_3) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-1124f * arg_0.a.b), _wgslsmith_f_op_f32(f32(-1f) * -112f), _wgslsmith_f_op_f32(min(-1121f, arg_0.a.b)), _wgslsmith_f_op_f32(global0.x - 706f)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a.b, arg_0.a.b, 1812f, arg_0.a.b))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.b, -178f, arg_0.a.b, -111f) + vec4<f32>(-1649f, -706f, -1163f, 1172f)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.x, -204f, global0.x, global0.x)))))), arg_0.a.a.x && arg_0.a.c.x)));
    let var_1 = select(!arg_0.a.a, select(!(!arg_0.a.a), vec4<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(false, true, false, arg_0.a.c.x)) && (arg_0.a.c.x != arg_0.a.a.x), arg_0.a.a.x, false), false), false);
    var var_2 = Struct_1(var_1, 1005f, var_1.xzw);
    let var_3 = Struct_3(Struct_1(vec4<bool>(false, arg_0.a.a.x, 1i < u_input.b, !var_2.c.x), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.b)))), !(!(!var_2.a.yxw))), u_input.a);
    var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0.x), global0.x, _wgslsmith_div_f32(var_0.x, -196f), _wgslsmith_f_op_f32(-var_2.b)) - vec4<f32>(_wgslsmith_f_op_f32(200f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a.b + var_2.b)))), 1472f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f)), 1878f));
    return true;
}

fn func_2(arg_0: vec2<i32>, arg_1: f32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> vec4<bool> {
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-213f, global0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(902f, -196f))))), _wgslsmith_div_f32(917f, _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(904f - -476f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1658f + global0.x) + global0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(183f, arg_1)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, arg_1)))), global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, global0.x, arg_1))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, global0.x, 2357f) - vec3<f32>(arg_1, -952f, -180f))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1004f, -1014f, global0.x) + vec3<f32>(arg_1, 1235f, arg_1)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1509f, -497f, global0.x) + vec3<f32>(-1000f, -1058f, arg_1))))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_1, _wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(abs(-1655f))))), vec3<f32>(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -1358f), -1692f));
    var var_0 = func_4(Struct_3(Struct_1(vec4<bool>(func_3(vec4<i32>(-25011i, arg_0.x, u_input.b, 32217i), arg_3.zzw), true, all(vec2<bool>(true, true)), true), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1315f - arg_1), _wgslsmith_f_op_f32(arg_1 - 1555f))), vec3<bool>(true, true, true)), u_input.a));
    var var_1 = Struct_3(Struct_1(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), false), 21126i <= -arg_0.x), _wgslsmith_f_op_f32(-790f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, 1415f))), vec3<bool>(u_input.a >= _wgslsmith_dot_vec3_u32(vec3<u32>(35992u, 4294967295u, 4294967295u), arg_3.zyy), any(vec4<bool>(false, true, false, true)), reverseBits(-2147483647i) == u_input.b)), 19215u | firstTrailingBit(95565u));
    return vec4<bool>(any(select(vec4<bool>(all(var_1.a.c.yz), var_1.a.a.x, false, var_1.a.a.x), !var_1.a.a, var_1.a.a.x)), func_3(~reverseBits(vec4<i32>(1i, arg_2.x, 22640i, 1i) >> (arg_3 % vec4<u32>(32u))), firstLeadingBit(select(abs(arg_3.yzx), firstTrailingBit(vec3<u32>(4294967295u, 4294967295u, 557u)), select(vec3<bool>(true, true, true), var_1.a.a.xzw, var_1.a.c.x)))), var_1.a.c.x, var_1.a.c.x);
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_3, arg_3: f32) -> Struct_3 {
    global0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1357f, _wgslsmith_div_f32(1303f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.b))), global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(358f, arg_3, global0.x)))))), arg_2.a.c.x));
    let var_0 = arg_2.a.c;
    return arg_2;
}

fn func_6(arg_0: Struct_3) -> Struct_2 {
    global0 = vec3<f32>(arg_0.a.b, -1304f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1688f, global0.x), _wgslsmith_f_op_f32(min(global0.x, global0.x)))) + _wgslsmith_f_op_f32(round(-388f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.b - -1049f) * _wgslsmith_f_op_f32(1342f * -1809f)))));
    global0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(428f, global0.x, 597f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, 880f, arg_0.a.b), vec3<f32>(global0.x, -330f, 295f), arg_0.a.a.wwz)))))));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-398f, global0.x, 1285f), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b, 974f, arg_0.a.b) + vec3<f32>(arg_0.a.b, arg_0.a.b, global0.x)), vec3<bool>(arg_0.a.a.x, arg_0.a.a.x, arg_0.a.c.x))), vec3<f32>(_wgslsmith_f_op_f32(-349f * -1369f), _wgslsmith_f_op_f32(-arg_0.a.b), _wgslsmith_f_op_f32(-arg_0.a.b)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1043f, 612f, 1000f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-499f, 303f, global0.x))) + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b), arg_0.a.b, _wgslsmith_f_op_f32(-arg_0.a.b))))));
    let var_0 = _wgslsmith_f_op_f32(ceil(arg_0.a.b));
    let var_1 = -10436i;
    return Struct_2(firstTrailingBit(~(~reverseBits(vec4<u32>(u_input.a, 35070u, u_input.a, arg_0.b)))));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: vec3<u32>) -> Struct_2 {
    var var_0 = !vec4<bool>(-11015i >= _wgslsmith_div_i32(30220i, u_input.b), all(!vec2<bool>(true, arg_0.a.c.x)), true, true);
    let var_1 = func_6(func_5(1i, vec2<bool>(false, any(!arg_0.a.c)), Struct_3(Struct_1(func_2(vec2<i32>(-1i, -35896i), 589f, vec2<i32>(6877i, u_input.b), vec4<u32>(arg_1.x, u_input.a, arg_1.x, u_input.a)), _wgslsmith_f_op_f32(floor(arg_0.a.b)), vec3<bool>(arg_0.a.a.x, true, false)), abs(23137u)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_0.a.b, global0.x, var_0.x)), global0.x)))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(round(-857f)), _wgslsmith_f_op_f32(global0.x * global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b, arg_0.a.b, 564f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-358f, arg_0.a.b, global0.x))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.b, arg_0.a.b, global0.x))))));
    var var_2 = var_1;
    var var_3 = var_1;
    return func_6(arg_0);
}

fn func_7(arg_0: i32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(-23557i, arg_0), firstTrailingBit(vec2<i32>(-1i, -2147483647i))), _wgslsmith_mult_vec2_i32(vec2<i32>(~reverseBits(u_input.b), _wgslsmith_mult_i32(select(0i, 2147483647i, true), min(u_input.b, -1i))), firstTrailingBit(_wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, arg_0), vec2<i32>(arg_0, 52050i) ^ vec2<i32>(2147483647i, u_input.b), vec2<i32>(-38848i, u_input.b)))));
    var_0 = -_wgslsmith_mult_vec2_i32(vec2<i32>(-firstTrailingBit(arg_0), ~(~39553i)), vec2<i32>(reverseBits(var_0.x) >> (~arg_3.b % 32u), var_0.x));
    let var_1 = abs(~(vec4<i32>(-1i) * -(~vec4<i32>(u_input.b, -2147483647i, arg_0, -11542i))));
    var var_2 = func_5(0i, !arg_3.a.a.xw, arg_3, -743f).a;
    var var_3 = arg_3.a;
    return select(vec2<bool>(var_3.a.x, true), var_3.a.yx, arg_3.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec3<bool>(false, false, true))), func_7(_wgslsmith_clamp_i32(u_input.b, -31324i, u_input.b), func_1(Struct_3(Struct_1(vec4<bool>(true, true, true, true), 1000f, vec3<bool>(false, false, true)), 1u), vec4<u32>(u_input.a, 36471u, u_input.a, u_input.a), vec3<u32>(u_input.a, 4294967295u, 0u)), min(vec2<u32>(u_input.a, u_input.a), vec2<u32>(16868u, u_input.a)), Struct_3(Struct_1(vec4<bool>(true, true, false, true), 1350f, vec3<bool>(true, false, true)), u_input.a)), vec2<bool>(true, true)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), func_5(u_input.b, vec2<bool>(true, true), Struct_3(Struct_1(vec4<bool>(true, true, true, true), global0.x, vec3<bool>(true, true, false)), u_input.a), global0.x).a.a.x)), vec2<bool>(any(func_5(u_input.b, func_7(11029i, Struct_2(vec4<u32>(1u, 56999u, 111931u, 4294967295u)), vec2<u32>(u_input.a, 4294967295u), Struct_3(Struct_1(vec4<bool>(true, false, true, false), global0.x, vec3<bool>(true, true, true)), 46048u)), Struct_3(Struct_1(vec4<bool>(true, true, false, true), global0.x, vec3<bool>(false, false, true)), 21796u), _wgslsmith_f_op_f32(select(global0.x, global0.x, true))).a.c.zy), true));
    let var_1 = ~(~vec2<u32>(~1u, ~4294967295u));
    var var_2 = func_5(0i, vec2<bool>(true, var_0.x), func_5(abs(_wgslsmith_mult_i32(47413i, ~15742i)), func_7(_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, -3869i), vec2<i32>(u_input.b, u_input.b)), -u_input.b), func_6(func_5(u_input.b, vec2<bool>(var_0.x, false), Struct_3(Struct_1(vec4<bool>(false, var_0.x, true, false), -407f, vec3<bool>(var_0.x, var_0.x, var_0.x)), var_1.x), global0.x)), ~vec2<u32>(u_input.a, 77415u) | _wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(1u, var_1.x)), Struct_3(func_5(-1i, vec2<bool>(false, var_0.x), Struct_3(Struct_1(vec4<bool>(true, var_0.x, var_0.x, var_0.x), 1360f, vec3<bool>(var_0.x, var_0.x, true)), u_input.a), global0.x).a, 15201u)), func_5(_wgslsmith_mult_i32(u_input.b, u_input.b ^ 1i), !vec2<bool>(var_0.x, var_0.x), Struct_3(Struct_1(vec4<bool>(false, var_0.x, var_0.x, true), 160f, vec3<bool>(false, false, var_0.x)), ~var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1495f)), 2103f), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-567f + _wgslsmith_div_f32(999f, 969f)), _wgslsmith_f_op_f32(f32(-1f) * -159f)))));
    var var_3 = ~min(~(~vec4<u32>(u_input.a, u_input.a, 0u, 7323u)), reverseBits(vec4<u32>(18509u, var_1.x, 4294967295u, var_1.x) | ~vec4<u32>(283u, 4294967295u, 27511u, var_1.x)));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_2.a.b, 385f, var_2.a.b), vec3<f32>(550f, -293f, var_2.a.b))))));
    var var_4 = Struct_2(abs(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(23401u, 0u, 10632u, 40651u), ~vec4<u32>(37421u, var_2.b, var_3.x, var_1.x)), ~(vec4<u32>(1u, 44229u, var_3.x, 4294967295u) & vec4<u32>(var_2.b, 49820u, 2174u, var_3.x)))));
    var var_5 = countOneBits(max(vec2<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-27222i, u_input.b), vec2<i32>(u_input.b, -1i), var_2.a.a.x), ~vec2<i32>(u_input.b, u_input.b)), 30273i), _wgslsmith_add_vec2_i32(abs(vec2<i32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.b, 2147483647i), vec2<i32>(16490i, u_input.b))) >> (vec2<u32>(var_2.b, ~var_1.x) % vec2<u32>(32u))));
    var var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.x * -849f), -562f, var_2.a.b)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(439f, global0.x, 664f) * vec3<f32>(global0.x, global0.x, var_2.a.b))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(787f, var_2.a.b, 553f) * vec3<f32>(var_2.a.b, -562f, var_2.a.b)))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_2.a.b, 666f), vec3<f32>(global0.x, -360f, -753f)), vec3<f32>(var_2.a.b, global0.x, var_2.a.b))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.b), -934f, -787f), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(var_6.x + -1000f), _wgslsmith_f_op_f32(-879f - var_6.x)), !vec3<bool>(true, true, var_2.a.a.x))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-463f, 798f, -1543f), vec3<f32>(global0.x, global0.x, var_2.a.b)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_6.x, var_2.a.b, global0.x) + vec3<f32>(257f, -1149f, 1864f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_2.a.b, 628f, global0.x), vec3<f32>(var_6.x, 305f, -613f), true))))), true)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(457f, 222f, var_2.a.b, var_2.a.b))))));
}

