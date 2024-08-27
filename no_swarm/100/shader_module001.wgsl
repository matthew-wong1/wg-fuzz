struct Struct_1 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: u32,
    d: vec3<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 2362u, 0u), vec4<bool>(true, false, false, true), 37878u, vec3<f32>(-1268f, -990f, -1615f), vec3<bool>(true, false, true));

var<private> global1: bool = true;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(31406u, 0u, 0u), vec4<bool>(false, false, true, false), 12250u, vec3<f32>(2322f, -553f, -1000f), vec3<bool>(true, true, false)));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec3<u32>(0u, 1u, 14225u), vec4<bool>(true, true, false, true), 96317u, vec3<f32>(382f, 127f, -931f), vec3<bool>(true, true, true)));

var<private> global4: vec2<f32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3() -> vec3<f32> {
    let var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, abs(global0.a.x), ~(~(~0u)), 4294967295u), vec4<u32>(~83587u, 6332u, ~global2.a.a.x, 1u));
    var var_1 = 294f;
    var_1 = _wgslsmith_f_op_f32(-global2.a.d.x);
    let var_2 = Struct_2(global3.a);
    global2 = Struct_2(Struct_1(vec3<u32>(var_0.x, 9373u, 1u), !vec4<bool>(true, all(global0.e.zz), !var_2.a.b.x, true), _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global3.a.a.x), vec2<u32>(4812u, var_2.a.c))), abs(abs(var_0.xy))), global2.a.d, global3.a.b.yxz));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.d.x)), 173f)));
}

fn func_2() -> u32 {
    var var_0 = !select(select(global0.b, select(!vec4<bool>(false, true, global2.a.b.x, false), vec4<bool>(false, global0.b.x, false, false), true), global3.a.b.x), global3.a.b, (global4.x != _wgslsmith_f_op_f32(global4.x * -1739f)) | !any(vec4<bool>(global3.a.b.x, global2.a.b.x, false, global0.b.x)));
    var var_1 = Struct_1(global3.a.a, !global2.a.b, 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(598f, global4.x, -1574f))) * global2.a.d) - _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_3())))), vec3<bool>(all(global3.a.b.yzw), var_0.x, all(select(!global0.b.wyy, !global0.b.xyz, true))));
    let var_2 = false;
    var var_3 = vec2<i32>(_wgslsmith_mod_i32(36279i, u_input.d), -28760i);
    let var_4 = Struct_2(global3.a);
    return var_1.c;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    global2 = Struct_2(global2.a);
    let var_0 = u_input.a.ywy;
    global3 = Struct_2(Struct_1(global2.a.a, !global3.a.b, select(arg_1.x & ~1u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_0.x, global3.a.a.x, var_0.x), arg_2.a, arg_2.e), vec3<u32>(arg_0.x, arg_2.c, 35742u)), all(select(vec3<bool>(false, global0.e.x, false), vec3<bool>(false, global2.a.e.x, false), vec3<bool>(global3.a.e.x, true, global2.a.b.x)))), vec3<f32>(global3.a.d.x, _wgslsmith_f_op_f32(global0.d.x * _wgslsmith_f_op_f32(sign(-305f))), -925f), vec3<bool>(false, true, global2.a.e.x | (false && global3.a.b.x))));
    let var_1 = !(!select(vec3<bool>(false || global3.a.e.x, all(global0.b), global2.a.e.x), !(!vec3<bool>(true, global3.a.e.x, false)), any(arg_2.b.yw)));
    global3 = Struct_2(global2.a);
    return Struct_2(global2.a);
}

fn func_1(arg_0: vec4<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_4(~(~(~u_input.a.yy)), vec3<u32>(~reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.c, 4294967295u, 0u), global3.a.a)), func_2(), reverseBits(countOneBits(_wgslsmith_mult_u32(36269u, arg_1.a.x)))), Struct_1(abs((u_input.a.xzx ^ u_input.a.zxy) | ~arg_1.a), select(!select(vec4<bool>(true, arg_1.e.x, global3.a.e.x, true), arg_1.b, vec4<bool>(true, true, true, arg_1.b.x)), vec4<bool>(true, global2.a.e.x, !global0.e.x, arg_1.b.x & global0.b.x), global2.a.b), u_input.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-126f, _wgslsmith_f_op_f32(select(global2.a.d.x, arg_1.d.x, arg_1.b.x)), _wgslsmith_div_f32(global4.x, 718f))), vec3<bool>(arg_1.e.x, false, global0.b.x)), vec2<f32>(global0.d.x, global4.x));
    global1 = var_0.a.b.x;
    global2 = func_4(~var_0.a.a.yx, vec3<u32>(select(global3.a.c, _wgslsmith_dot_vec3_u32(u_input.a.zwz, ~global0.a), true), global3.a.c, ~41371u), arg_1, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2174f)))));
    let var_1 = true;
    var var_2 = func_4(select(vec2<u32>(_wgslsmith_sub_u32(global2.a.a.x, global3.a.a.x), func_4(var_0.a.a.xx, arg_1.a, Struct_1(vec3<u32>(u_input.a.x, arg_1.a.x, arg_0.x), global0.b, 15044u, vec3<f32>(-1713f, -1496f, global2.a.d.x), arg_1.e), arg_1.d.xz).a.c), global3.a.a.zz, var_1) << (~_wgslsmith_mod_vec2_u32(vec2<u32>(5799u, 0u), vec2<u32>(arg_1.c, 60309u) >> (vec2<u32>(0u, var_0.a.a.x) % vec2<u32>(32u))) % vec2<u32>(32u)), ~min(global3.a.a, ~(global3.a.a >> (global2.a.a % vec3<u32>(32u)))), func_4(vec2<u32>(global3.a.a.x, _wgslsmith_div_u32(4294967295u, arg_0.x) >> (0u % 32u)), ~(~(~global2.a.a)), arg_1, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.d.x)), 561f)).a, vec2<f32>(_wgslsmith_f_op_f32(sign(-928f)), _wgslsmith_f_op_f32(f32(-1f) * -807f))).a;
    return Struct_1(global2.a.a, !global0.b, var_2.c, _wgslsmith_f_op_vec3_f32(-vec3<f32>(860f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-125f - var_0.a.d.x), arg_1.d.x), -623f)), !func_4(u_input.a.wy, (var_2.a >> (arg_0.zyz % vec3<u32>(32u))) << (~vec3<u32>(1u, 72282u, 4294967295u) % vec3<u32>(32u)), global2.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.d.x, 1033f), var_0.a.d.xz), vec2<f32>(-502f, 159f), vec2<bool>(true, true)))).a.e);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: f32, arg_3: vec4<bool>) -> Struct_1 {
    var var_0 = arg_0.d.x;
    var var_1 = select(select(vec4<bool>(true, true, select(1i == u_input.d, true, global0.b.x), true), select(vec4<bool>(true, global0.b.x, !arg_3.x, false), !(!vec4<bool>(global2.a.b.x, true, true, arg_3.x)), global2.a.b), func_1(~vec4<u32>(global0.c, 75272u, global0.a.x, u_input.a.x), global2.a).b), select(vec4<bool>(!func_1(u_input.a, Struct_1(global3.a.a, vec4<bool>(global3.a.e.x, true, global0.e.x, false), u_input.a.x, global2.a.d, global0.b.www)).e.x, true, any(vec4<bool>(false, global0.e.x, arg_1, global0.b.x)), arg_3.x), global0.b, global3.a.b.x & any(select(global3.a.b.zy, vec2<bool>(true, false), arg_0.b.wy))), vec4<bool>(true, false, arg_1, arg_0.e.x));
    let var_2 = func_4(min(vec2<u32>(0u, u_input.a.x), ~firstLeadingBit(~vec2<u32>(0u, global3.a.a.x))), vec3<u32>(_wgslsmith_mod_u32(30624u, u_input.a.x), 4294967295u, arg_0.a.x), arg_0, global0.d.xy).a.a.x;
    global1 = false;
    var var_3 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~1u, _wgslsmith_mod_u32(arg_0.a.x, 53300u)), global2.a.a.x, countOneBits(_wgslsmith_add_u32(global2.a.c, arg_0.a.x))), ~(~8860u), global2.a.c | ~(global0.c >> (35452u % 32u))), arg_3, 0u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_4(u_input.a.xy, global0.a, Struct_1(vec3<u32>(global0.a.x, 778u, 1u), vec4<bool>(arg_0.b.x, true, var_1.x, true), var_2, arg_0.d, global2.a.b.yyy), vec2<f32>(global2.a.d.x, global4.x)).a.d + vec3<f32>(global0.d.x, 1532f, -1279f)), func_4(arg_0.a.xx, ~vec3<u32>(var_2, global3.a.a.x, global2.a.a.x), func_1(u_input.a, global2.a), vec2<f32>(-1100f, global3.a.d.x)).a.d) - global0.d), arg_0.e);
    return func_1(_wgslsmith_mult_vec4_u32(max(abs(u_input.a) | select(vec4<u32>(1u, 64190u, var_2, global0.a.x), vec4<u32>(u_input.a.x, 4294967295u, global0.a.x, var_3.a.x), global2.a.b), u_input.a), abs(firstLeadingBit(u_input.a))), global2.a);
}

fn func_6(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    global2 = Struct_2(Struct_1(vec3<u32>(_wgslsmith_sub_u32(~61588u, u_input.a.x & u_input.a.x), firstLeadingBit(abs(4294967295u)), global2.a.a.x), !func_4(abs(vec2<u32>(5065u, global2.a.c)), _wgslsmith_mult_vec3_u32(vec3<u32>(52921u, 0u, u_input.a.x), global3.a.a), func_1(u_input.a, Struct_1(vec3<u32>(global0.a.x, 0u, arg_0.a.c), vec4<bool>(global2.a.b.x, global3.a.e.x, arg_0.a.b.x, global0.e.x), global2.a.a.x, arg_0.a.d, global0.e)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(355f, global4.x)))).a.b, select(_wgslsmith_dot_vec2_u32(global3.a.a.zx, vec2<u32>(29769u, arg_0.a.c) << (vec2<u32>(4294967295u, global2.a.a.x) % vec2<u32>(32u))), _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, global3.a.a.x), arg_0.a.c), !func_4(arg_0.a.a.yx, arg_0.a.a, Struct_1(global3.a.a, vec4<bool>(arg_0.a.b.x, global2.a.e.x, global2.a.e.x, global0.e.x), arg_0.a.c, vec3<f32>(1504f, -427f, global3.a.d.x), global3.a.e), global3.a.d.zx).a.b.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2617f), _wgslsmith_f_op_f32(global4.x + arg_0.a.d.x), _wgslsmith_f_op_f32(f32(-1f) * -427f)))), arg_0.a.e));
    var var_0 = 13766u > reverseBits(global0.a.x);
    global0 = Struct_1(_wgslsmith_sub_vec3_u32(~firstTrailingBit(~vec3<u32>(global0.a.x, u_input.a.x, 0u)), vec3<u32>(~global3.a.a.x, ~arg_0.a.a.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, 6763u, arg_0.a.a.x, global2.a.a.x), vec4<u32>(20547u, u_input.a.x, 4294967295u, 0u)))), select(vec4<bool>(global2.a.e.x, func_5(func_1(vec4<u32>(global2.a.a.x, global2.a.a.x, u_input.a.x, 1u), global2.a), false, _wgslsmith_f_op_f32(round(2339f)), !arg_0.a.b).e.x, arg_0.a.e.x, true), vec4<bool>(arg_0.a.b.x, false, _wgslsmith_dot_vec2_i32(vec2<i32>(49024i, 2147483647i), u_input.b.xz) < countOneBits(-1i), any(!global3.a.b.xxw)), global2.a.b.x), abs(global0.c), func_1(u_input.a, func_5(Struct_1(global0.a, func_4(u_input.a.xw, arg_0.a.a, global3.a, vec2<f32>(319f, global4.x)).a.b, _wgslsmith_dot_vec3_u32(global0.a, arg_0.a.a), vec3<f32>(global2.a.d.x, -1167f, global0.d.x), func_5(Struct_1(vec3<u32>(global0.a.x, 58749u, 1u), vec4<bool>(true, false, true, true), 1u, vec3<f32>(global3.a.d.x, -747f, global4.x), global3.a.e), arg_0.a.b.x, global0.d.x, vec4<bool>(global2.a.e.x, global0.e.x, global3.a.b.x, true)).e), global2.a.e.x, func_5(arg_0.a, true, global4.x, func_1(vec4<u32>(global3.a.c, 4294967295u, 18251u, global2.a.c), global3.a).b).d.x, func_5(global2.a, true, 924f, func_1(vec4<u32>(u_input.a.x, 4294967295u, 12904u, 421u), Struct_1(u_input.a.yzy, vec4<bool>(false, global0.b.x, true, global0.e.x), global2.a.a.x, global2.a.d, global2.a.b.xwy)).b).b)).d, vec3<bool>(false, arg_0.a.b.x, any(vec3<bool>(true, func_4(vec2<u32>(72150u, u_input.a.x), global3.a.a, Struct_1(vec3<u32>(global2.a.c, global3.a.a.x, global3.a.a.x), vec4<bool>(true, global0.e.x, true, true), global0.c, global0.d, vec3<bool>(false, global2.a.b.x, global2.a.e.x)), arg_0.a.d.xx).a.e.x, true))));
    var var_1 = !global3.a.e.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d.yx) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.d.x, -139f)) + _wgslsmith_f_op_f32(global0.d.x + -1496f)), -1337f));
    return Struct_1(global3.a.a, select(select(func_4(firstLeadingBit(global2.a.a.xx), vec3<u32>(37576u, 0u, 56390u) & global0.a, func_5(Struct_1(vec3<u32>(global0.a.x, arg_0.a.a.x, 0u), vec4<bool>(global0.b.x, false, false, global3.a.b.x), 1u, global0.d, global2.a.e), true, -355f, vec4<bool>(true, false, arg_0.a.b.x, global2.a.e.x)), _wgslsmith_div_vec2_f32(global3.a.d.xy, vec2<f32>(global2.a.d.x, global4.x))).a.b, vec4<bool>(select(true, true, global2.a.b.x), true, false, !global2.a.b.x), true), vec4<bool>(false, true, (u_input.a.x == 69828u) || func_1(vec4<u32>(global2.a.a.x, 4294967295u, arg_0.a.a.x, global3.a.c), global3.a).b.x, global3.a.b.x), vec4<bool>(true, arg_0.a.e.x, true, !func_4(vec2<u32>(1u, 11119u), global2.a.a, arg_0.a, arg_0.a.d.zx).a.e.x)), 1u, vec3<f32>(global2.a.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.d.x))) * global4.x), 812f), vec3<bool>(true, !global0.b.x, any(vec3<bool>(global3.a.e.x, true, global0.b.x)) & (global0.e.x | true)));
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(func_4(global3.a.a.yx, u_input.a.xzz, arg_0, global2.a.d.xx).a);
    global2 = func_4(~u_input.a.wx, u_input.a.wwz, Struct_1(global0.a, func_4(max(vec2<u32>(6575u, arg_0.a.x), ~vec2<u32>(1u, 4294967295u)), vec3<u32>(global0.c, 26914u, 0u), Struct_1(u_input.a.yyz, !vec4<bool>(global2.a.e.x, true, var_0.a.b.x, false), ~1u, vec3<f32>(-765f, -891f, 706f), arg_0.b.wyw), _wgslsmith_f_op_vec2_f32(-vec2<f32>(415f, -1000f))).a.b, var_0.a.a.x, arg_0.d, !vec3<bool>(!global0.b.x, var_0.a.b.x, global2.a.b.x)), _wgslsmith_f_op_vec2_f32(sign(func_6(var_0, u_input.c.x).d.zz)));
    var var_1 = i32(-1i) * -u_input.c.x;
    var var_2 = u_input.c.x;
    global2 = func_4(~(firstLeadingBit(vec2<u32>(66034u, var_0.a.a.x)) ^ _wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(global0.a.zx, global0.a.yz), arg_0.a.xy)), global0.a >> (_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.c, firstLeadingBit(51070u), 23887u), ~global3.a.a) % vec3<u32>(32u)), arg_0, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(var_0.a.d.xy, global0.d.zz, vec2<bool>(false, false))), _wgslsmith_f_op_vec2_f32(global2.a.d.yz + vec2<f32>(global2.a.d.x, 2148f)))))));
    return Struct_1(vec3<u32>(35348u, min(38347u, global0.c) | 0u, _wgslsmith_sub_u32(~0u, 1u)), vec4<bool>(all(vec3<bool>(func_1(vec4<u32>(1u, global0.c, 25926u, 4494u), global2.a).e.x, global0.b.x, func_4(u_input.a.yy, vec3<u32>(var_0.a.c, 90563u, global0.a.x), Struct_1(global3.a.a, global0.b, 36156u, vec3<f32>(-1019f, arg_0.d.x, 603f), arg_0.b.zwx), vec2<f32>(-325f, 2147f)).a.b.x)), global3.a.e.x == any(func_5(arg_0, global3.a.e.x, var_0.a.d.x, var_0.a.b).b.yww), !(!(arg_0.c >= 4294967295u)), !all(arg_0.b.zzz)), ~(u_input.a.x << (u_input.a.x % 32u)), _wgslsmith_f_op_vec3_f32(trunc(func_6(Struct_2(Struct_1(vec3<u32>(35355u, 0u, 50550u), global0.b, 68428u, vec3<f32>(arg_0.d.x, global2.a.d.x, var_0.a.d.x), vec3<bool>(var_0.a.b.x, true, true))), u_input.d).d)), vec3<bool>(select(-1i, firstTrailingBit(u_input.d), !global3.a.b.x) <= abs(-2147483647i), func_4(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.a.c, 0u), vec2<u32>(0u, 3959u)), ~var_0.a.a, global3.a, _wgslsmith_f_op_vec2_f32(select(var_0.a.d.yy, vec2<f32>(global3.a.d.x, 1124f), true))).a.e.x & !(false | global2.a.b.x), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(Struct_2(func_5(func_1(vec4<u32>(4294967295u, global0.c, 71069u, global3.a.a.x), Struct_1(vec3<u32>(15064u, 4294967295u, 4294967295u), vec4<bool>(false, false, global2.a.b.x, true), 49914u, global2.a.d, global3.a.e)), global2.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1189f), !vec4<bool>(false, false, global2.a.b.x, global0.b.x))), u_input.d));
    let var_1 = Struct_2(global2.a);
    global4 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.a.d.x) + -1193f), global3.a.d.x))));
    let var_2 = 230f;
    let var_3 = !var_0.e.x;
    var var_4 = u_input.c.x <= -49332i;
    global1 = global2.a.e.x && (u_input.c.x <= abs(1i));
    global3 = Struct_2(Struct_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.a.a.x, var_0.c, 4294967295u), vec3<u32>(global3.a.c, u_input.a.x, 0u)) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_0.a.x, global2.a.a.x), ~vec3<u32>(var_0.a.x, 8859u, var_0.c)) % vec3<u32>(32u)), !vec4<bool>(func_7(global3.a).b.x, any(vec4<bool>(global3.a.b.x, global0.b.x, global0.e.x, false)), global0.e.x, var_1.a.d.x <= global2.a.d.x), select(~(~global3.a.c), abs(~global0.c), 1i >= u_input.b.x), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -493f)), func_6(Struct_2(Struct_1(vec3<u32>(48372u, 6405u, 4294967295u), var_0.b, global0.a.x, var_0.d, vec3<bool>(var_3, var_0.b.x, var_1.a.b.x))), u_input.d).d.x, _wgslsmith_div_f32(global3.a.d.x, _wgslsmith_f_op_f32(-global3.a.d.x))), var_1.a.b.wxx));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.x, _wgslsmith_f_op_f32(abs(-874f)), ~u_input.d == u_input.b.x))), u_input.d, vec4<i32>(reverseBits(-10466i), select(u_input.d, -1i, !func_6(Struct_2(global3.a), -12357i).e.x), ~u_input.d, u_input.c.x), var_0.d.yz);
}

