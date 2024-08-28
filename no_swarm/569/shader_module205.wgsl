struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: i32,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<f32>(1142f, 641f, -1151f), 277f, 1i, 815f);

var<private> global1: f32 = 982f;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.b, _wgslsmith_f_op_f32(floor(870f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-554f, global0.b, global0.d)))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-597f)) * -1020f)))), -2911i, 308f);
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.d * var_0.b), _wgslsmith_f_op_f32(-global0.d), global0.a.x)) + vec3<f32>(206f, _wgslsmith_f_op_f32(abs(-112f)), global0.d)), global0.d, ~(-global0.c ^ countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_0.c), u_input.b.wx))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(595f * var_0.b), global0.d)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(388f + -696f), _wgslsmith_f_op_f32(-var_0.d))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(317f - global0.d), global0.a.x)), 1356f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.d, _wgslsmith_f_op_f32(min(-776f, -1000f)), _wgslsmith_f_op_f32(-global0.d)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.d, 783f))), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(global0.b)) + var_0.b))), ~1i, _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_f_op_f32(trunc(var_0.a.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(611f, global0.b, var_0.d))) + global0.a), _wgslsmith_f_op_f32(f32(-1f) * -1078f), var_0.c ^ ~(~(~1i)), global0.a.x);
    var var_1 = ~abs(vec3<i32>(global0.c, -global0.c, 1i)) & u_input.b.xyx;
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) - 1475f) * _wgslsmith_f_op_f32(exp2(var_0.b))), global0.a.x, _wgslsmith_f_op_f32(trunc(-2300f)))));
}

fn func_2() -> f32 {
    global1 = global0.d;
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-562f, 1000f, -798f)) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(251f, 2309f, 757f), global0.a)))) - _wgslsmith_f_op_vec3_f32(global0.a - global0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.x + global0.d), global0.a.x))), global0.b), global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(func_3()), 371f, -(~select(u_input.b.x, -1i, false) << (~(~20178u) % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -451f) * 186f)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(543f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))) + _wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3()).x - -1160f), global0.c, _wgslsmith_f_op_f32(427f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.a.x))))))));
    let var_1 = 0i;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(-global0.a.x));
}

fn func_1() -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(693f + 147f), _wgslsmith_f_op_f32(max(global0.d, global0.d)))) - -1005f)))));
    let var_0 = _wgslsmith_clamp_vec4_i32(~reverseBits(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.c, 1i, global0.c, -13596i) & vec4<i32>(u_input.b.x, u_input.b.x, -8054i, 1i), vec4<i32>(-46539i, 4078i, 0i, 40739i) ^ vec4<i32>(global0.c, u_input.b.x, 22912i, -21626i))), select(vec4<i32>(i32(-1i) * -2147483647i, u_input.b.x, u_input.b.x, firstLeadingBit(u_input.b.x)), vec4<i32>(1i, 2147483647i | u_input.b.x, -34178i, u_input.b.x), vec4<bool>(true, true, true, true)) << (_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 35691u, 11578u, u_input.c.x), u_input.c), u_input.a >> (vec4<u32>(19440u, u_input.c.x, u_input.c.x, 1u) % vec4<u32>(32u))), reverseBits(_wgslsmith_mult_vec4_u32(u_input.c, u_input.c))) % vec4<u32>(32u)), -countOneBits(u_input.b));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-882f - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global0.a.x, -764f)) - global0.a.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d + -249f))))));
    var var_2 = Struct_1(vec3<f32>(-380f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.x)))))), _wgslsmith_f_op_f32(310f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(801f - var_1.x)))), -750f, (-(~u_input.b.x) | (global0.c ^ 1i)) ^ (countOneBits(~var_0.x) | (~global0.c << (u_input.a.x % 32u))), global0.d);
    let var_3 = var_1.x;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-524f, _wgslsmith_f_op_f32(var_3 + -356f), _wgslsmith_f_op_f32(func_2())) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_2.a, vec3<f32>(var_2.a.x, -757f, -717f)))) * global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -628f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1526f, 766f) - _wgslsmith_f_op_vec3_f32(func_3()).x)), global0.c, 692f);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = arg_3.d;
    let var_1 = func_1();
    var var_2 = select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true))), !vec4<bool>(true, _wgslsmith_clamp_i32(2147483647i, arg_3.c, arg_3.c) > -var_1.c, any(vec4<bool>(true, true, true, true)), !any(vec2<bool>(true, false))));
    global1 = 976f;
    global1 = -2670f;
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global0.a, global0.a, true)) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.a - vec3<f32>(arg_3.a.x, var_1.a.x, arg_0.b)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, var_1.a.x, 501f), vec3<f32>(var_1.a.x, global0.b, arg_3.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1931f, var_1.b, 157f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)), i32(-1i) * -(-87597i ^ -arg_3.c), _wgslsmith_f_op_f32(162f - var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(), vec2<u32>(u_input.c.x >> (_wgslsmith_clamp_u32(0u, u_input.a.x, 24113u) % 32u), 15362u), 1000f, Struct_1(_wgslsmith_f_op_vec3_f32(sign(global0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(trunc(-495f))), global0.d), firstLeadingBit(_wgslsmith_dot_vec3_i32(select(u_input.b.wyz, vec3<i32>(49405i, global0.c, u_input.b.x), vec3<bool>(false, false, true)), vec3<i32>(global0.c, -10393i, global0.c) | u_input.b.yxw)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1379f * 556f))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))))));
    global0 = Struct_1(global0.a, func_4(Struct_1(global0.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))), global0.c, global0.a.x), u_input.c.yy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(2238f - global0.a.x))) * _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-global0.a.x))), func_1()).d, u_input.b.x ^ u_input.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.b, -587f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), global0.d)));
    let var_0 = func_4(func_1(), u_input.a.zw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a.x)) * global0.a.x), func_1());
    var var_1 = 375f;
    global1 = global0.a.x;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(var_0.d, -1000f, select(true, true, true))), -1544f, true)), _wgslsmith_f_op_f32(trunc(global0.d))) + vec3<f32>(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(step(-226f, _wgslsmith_f_op_f32(381f + var_0.a.x)))), -1487f, _wgslsmith_f_op_f32(sign(var_0.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, func_4(func_1(), u_input.c.yy, _wgslsmith_f_op_f32(-global0.b), Struct_1(vec3<f32>(var_2.x, 230f, 407f), var_2.x, 7202i, -315f)).b)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_2.x, 108f, global0.a.x, -1000f), vec4<f32>(var_0.b, var_0.a.x, -1339f, global0.b), false))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d, -117f, -1825f, -120f) * vec4<f32>(1842f, var_0.a.x, -540f, var_2.x)), _wgslsmith_f_op_f32(var_0.b - var_2.x) < _wgslsmith_f_op_f32(var_2.x + global0.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global0.d, 451f, global0.b, var_0.d), vec4<f32>(var_2.x, -341f, global0.d, global0.a.x)) + vec4<f32>(var_0.a.x, 987f, -1248f, var_2.x))))), 1u);
}

