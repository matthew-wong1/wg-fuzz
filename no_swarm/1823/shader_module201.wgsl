struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-706f, -685f, -838f, 1000f);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2) -> vec4<f32> {
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1385f)) + _wgslsmith_f_op_f32(global0.x * global0.x)), global0.x) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -212f) * _wgslsmith_div_f32(global0.x, -658f)) + -1705f));
    var var_1 = Struct_2(Struct_1(true), !(!any(!vec3<bool>(false, true, var_0.a))), arg_0.d, Struct_1(any(select(select(vec3<bool>(true, false, var_0.a), vec3<bool>(var_0.a, false, true), vec3<bool>(arg_0.b, false, var_0.a)), vec3<bool>(true, true, true), arg_0.a.a))));
    let var_2 = Struct_2(var_1.a, arg_0.b, arg_0.c, var_1.d);
    var var_3 = arg_0.d;
    let var_4 = firstTrailingBit(-vec3<i32>(u_input.a, reverseBits(u_input.b), u_input.a)) & ((vec3<i32>(1i, 1i, 1i) | firstLeadingBit(vec3<i32>(22731i, u_input.b, -49334i))) ^ countOneBits(firstTrailingBit(-vec3<i32>(u_input.b, -1i, u_input.a))));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1338f, -605f, 354f, -275f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1552f, 921f, global0.x))) - vec4<f32>(_wgslsmith_f_op_f32(global0.x + -673f), global0.x, _wgslsmith_f_op_f32(round(-192f)), global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -408f), _wgslsmith_f_op_f32(trunc(-199f)), -1210f, global0.x) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(819f, global0.x, global0.x, -888f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -484f, 1511f, global0.x) * vec4<f32>(global0.x, -1160f, -321f, -1508f))))), false)));
}

fn func_2() -> u32 {
    var var_0 = Struct_2(Struct_1(true), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, u_input.b, 1i, u_input.b), abs(vec4<i32>(u_input.b, -55649i, 0i, u_input.b))), _wgslsmith_sub_i32(u_input.b, -2147483647i) >> (1u % 32u)) >= u_input.a, Struct_1(true || !all(vec2<bool>(false, true))), Struct_1(reverseBits(u_input.a << (61211u % 32u)) > 2147483647i));
    let var_1 = vec2<bool>(all(vec2<bool>(true, var_0.c.a)), any(!(!select(vec2<bool>(var_0.c.a, false), vec2<bool>(true, false), vec2<bool>(false, var_0.d.a)))));
    global0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_3(Struct_2(var_0.c, true, Struct_1(var_1.x), var_0.d))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-221f, 1047f, global0.x, global0.x) * vec4<f32>(global0.x, -861f, -435f, global0.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-835f, 1437f, global0.x, global0.x) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1188f, global0.x, -213f, 628f)))))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) == _wgslsmith_f_op_f32(-global0.x), !(global0.x < _wgslsmith_f_op_f32(max(global0.x, -1215f))), false, true)));
    let var_2 = Struct_2(var_0.d, any(!vec2<bool>(!var_1.x, u_input.a < u_input.a)), Struct_1(var_0.b), Struct_1(true));
    let var_3 = var_2;
    return 17399u;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    global0 = vec4<f32>(1165f, 1871f, global0.x, global0.x);
    var var_0 = reverseBits(_wgslsmith_add_u32(func_2(), max(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u)), _wgslsmith_dot_vec4_u32(~vec4<u32>(574u, 0u, 49097u, 64046u), vec4<u32>(10616u, 44603u, 1u, 77238u)))));
    let var_1 = Struct_1(!(_wgslsmith_f_op_f32(sign(330f)) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-549f + arg_2.x), _wgslsmith_f_op_f32(318f + global0.x))));
    let var_2 = !select(select(vec4<bool>(true, arg_0.b, false && var_1.a, arg_3.a), select(select(vec4<bool>(var_1.a, true, true, false), vec4<bool>(false, arg_0.b, arg_3.a, arg_3.a), false), vec4<bool>(false, false, var_1.a, arg_3.a), false), true), select(vec4<bool>(all(vec2<bool>(var_1.a, false)), arg_3.a, var_1.a, all(vec3<bool>(arg_0.b, var_1.a, arg_0.c.a))), select(select(vec4<bool>(arg_3.a, false, true, true), vec4<bool>(false, true, true, true), false), select(vec4<bool>(true, var_1.a, arg_0.b, true), vec4<bool>(false, false, var_1.a, false), arg_3.a), vec4<bool>(arg_3.a, arg_3.a, false, arg_3.a)), !(!vec4<bool>(true, false, arg_3.a, arg_0.a.a))), var_1.a);
    global0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, global0.x, arg_2.x, global0.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2.x * arg_2.x), arg_2.x, global0.x, global0.x)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(894f, 201f, -2069f, 294f) + vec4<f32>(-496f, 2160f, arg_2.x, 2876f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_2.x, -1000f, -1000f, 446f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, 2161f, arg_2.x)))), true))));
    return Struct_2(arg_0.a, all(select(vec2<bool>(false, true), var_2.zz, vec2<bool>(true, true))), arg_3, Struct_1(!(!var_2.x) && select(true, true, all(var_2.xz))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1017f, _wgslsmith_f_op_f32(trunc(-1000f)), 373f, _wgslsmith_f_op_f32(step(global0.x, -384f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1408f, global0.x, global0.x, global0.x), vec4<f32>(arg_2, arg_2, 1134f, -569f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, global0.x, global0.x, global0.x) - vec4<f32>(-508f, arg_2, -568f, -1393f))))))) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_2)) * _wgslsmith_f_op_f32(select(-173f, 1059f, false))), -1734f, global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-262f, 541f, 345f, arg_2))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-220f, arg_2, arg_2, -109f))))));
    var var_0 = func_1(func_1(func_1(arg_1, vec3<i32>(firstTrailingBit(0i), firstTrailingBit(u_input.a), _wgslsmith_mod_i32(u_input.b, 2147483647i)), _wgslsmith_f_op_vec2_f32(exp2(global0.zz)), Struct_1(arg_2 >= -1000f)), vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(u_input.b, 1536i)) & _wgslsmith_mult_i32(1i, u_input.b), ~u_input.a, -44847i), vec2<f32>(_wgslsmith_f_op_f32(select(-3587f, global0.x, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2250f - 1000f) + _wgslsmith_f_op_f32(floor(-659f)))), arg_1.c), vec3<i32>(u_input.a, u_input.a, u_input.b), global0.xw, arg_0);
    let var_1 = Struct_1(true);
    global0 = vec4<f32>(216f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_2)))), global0.x, _wgslsmith_f_op_f32(abs(arg_2)));
    let var_2 = select(!select(!select(vec4<bool>(var_1.a, var_0.d.a, true, arg_1.c.a), vec4<bool>(true, true, true, false), true), vec4<bool>(any(vec2<bool>(true, arg_0.a)), !var_0.a.a, func_1(Struct_2(var_0.d, true, Struct_1(true), Struct_1(arg_1.d.a)), vec3<i32>(u_input.b, u_input.a, -16598i), global0.zw, Struct_1(var_1.a)).d.a, false), var_1.a), select(select(vec4<bool>(var_0.b, true, false, all(vec2<bool>(arg_1.a.a, var_0.a.a))), !vec4<bool>(true, false, false, var_0.d.a), var_0.c.a), vec4<bool>(true && var_1.a, false, false, arg_1.c.a), true), true);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = countOneBits(~2368u);
    var var_1 = global0.x;
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-global0.x), -297f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-310f + -587f) + global0.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-445f, global0.x, true)) * -1680f))));
    let var_2 = Struct_2(Struct_1(select(false, true, any(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true))))), true, func_4(Struct_1(true), func_1(Struct_2(Struct_1(true), false, Struct_1(true), Struct_1(true)), _wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.b, -2147483647i, -15771i), select(vec3<i32>(1i, -68900i, 1i), vec3<i32>(-1i, -1i, u_input.a), vec3<bool>(false, true, false))), vec2<f32>(-1036f, global0.x), Struct_1(true)), global0.x), Struct_1(true));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(249f - _wgslsmith_div_f32(global0.x, -1000f)))), global0.x, true)));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(938f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, 1376f, var_2.a.a)) + _wgslsmith_f_op_f32(804f + 1243f)), 2292f > _wgslsmith_f_op_f32(ceil(-1170f))))), _wgslsmith_f_op_f32(select(148f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(531f)))), var_2.a.a)), _wgslsmith_f_op_f32(round(var_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_3, 248f)) - _wgslsmith_f_op_f32(-global0.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(min(0u, countOneBits(~0u)), abs(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(var_0, 28562u, var_0), _wgslsmith_add_u32(0u, 67706u), var_0)), ~(~0u), ~(~select(1u, 137260u, var_2.b))));
}

