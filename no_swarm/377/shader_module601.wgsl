struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<bool>,
    d: vec4<f32>,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: bool,
    d: vec3<u32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, -978f, -1168f, 202f);

var<private> global1: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(1184u, 22637u, 0u, 18309u), vec4<u32>(4294967295u, 64887u, 4294967295u, 13094u), vec4<u32>(0u, 14555u, 50108u, 38075u), vec4<u32>(31292u, 1u, 4294967295u, 46701u), vec4<u32>(27979u, 23721u, 1u, 37117u), vec4<u32>(4294967295u, 0u, 1u, 1u), vec4<u32>(1167u, 0u, 4294967295u, 1u), vec4<u32>(17218u, 1u, 59444u, 4294967295u), vec4<u32>(55804u, 11576u, 0u, 1u), vec4<u32>(5375u, 0u, 26527u, 40837u), vec4<u32>(16922u, 46549u, 0u, 21825u), vec4<u32>(7904u, 1393u, 1u, 5581u), vec4<u32>(37269u, 61479u, 14111u, 0u), vec4<u32>(56741u, 39252u, 31836u, 15948u), vec4<u32>(4294967295u, 1u, 88050u, 1u), vec4<u32>(24440u, 16690u, 21992u, 1u), vec4<u32>(0u, 1u, 22117u, 28284u), vec4<u32>(4294967295u, 1u, 0u, 40763u), vec4<u32>(1u, 27493u, 4294967295u, 1986u), vec4<u32>(36725u, 90521u, 61185u, 116343u), vec4<u32>(32242u, 1u, 31198u, 13736u), vec4<u32>(1u, 98331u, 28301u, 0u), vec4<u32>(3473u, 1u, 0u, 20886u), vec4<u32>(26432u, 18677u, 1u, 52311u), vec4<u32>(38210u, 0u, 1u, 0u), vec4<u32>(51161u, 0u, 61738u, 7942u));

var<private> global2: array<Struct_2, 29>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = true;
    global1 = array<vec4<u32>, 26>();
    let var_1 = Struct_1(!select(!var_0, select(true, true, all(vec3<bool>(true, var_0, false))), any(!vec3<bool>(var_0, true, false))), _wgslsmith_div_f32(749f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-119f, 232f)))), select(!select(!vec2<bool>(false, var_0), select(vec2<bool>(var_0, true), vec2<bool>(true, true), true), var_0), vec2<bool>(true, true), select(!select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), var_0), !vec2<bool>(var_0, var_0), var_0)), vec4<f32>(-637f, global0.x, -1262f, -1222f), false);
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(251f, -1137f), _wgslsmith_f_op_vec2_f32(global0.yw * vec2<f32>(var_1.d.x, 552f)))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_1.d.x - -1000f), _wgslsmith_f_op_f32(floor(global0.x))) - global0.wz)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec3<f32>) -> vec4<bool> {
    var var_0 = arg_0.a;
    let var_1 = ~(arg_0.d.x << (~abs(arg_2.d.x) % 32u));
    global1 = array<vec4<u32>, 26>();
    global1 = array<vec4<u32>, 26>();
    var var_2 = Struct_2(arg_2.a, _wgslsmith_f_op_vec2_f32(func_3()), true, vec3<u32>(firstTrailingBit(~77260u), min(~(~4294967295u), 4294967295u), arg_2.d.x), arg_2.a.d.wy);
    return select(vec4<bool>(true, any(var_0.c), true, false), vec4<bool>(var_2.a.a, true, all(vec4<bool>(true, true, true, true)), 2147483647i >= ~(~u_input.b.x)), !vec4<bool>(var_0.e, arg_0.a.c.x, true, false));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec2_f32(global0.ww + vec2<f32>(arg_0.a.d.x, global0.x));
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.xz), _wgslsmith_f_op_vec2_f32(global0.xy * vec2<f32>(_wgslsmith_f_op_f32(var_0.x * global0.x), var_0.x)));
    var var_1 = select(select(all(!(!vec3<bool>(false, arg_0.c, arg_0.c))), arg_0.c | any(func_2(global2[_wgslsmith_index_u32(0u, 29u)], arg_0.a.d, Struct_2(Struct_1(arg_0.a.c.x, global0.x, vec2<bool>(true, arg_0.a.a), vec4<f32>(global0.x, -410f, -325f, global0.x), arg_0.c), vec2<f32>(-317f, global0.x), false, vec3<u32>(arg_0.d.x, u_input.a.x, arg_0.d.x), vec2<f32>(1000f, -1000f)), arg_0.a.d.ywz)), arg_0.a.a), false, (_wgslsmith_div_i32(~18353i, u_input.b.x) < -(~(-2147483647i))) | arg_0.c);
    var var_2 = arg_0.a;
    var var_3 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x + 816f)))), select(select(var_2.c, arg_0.a.c, func_2(global2[_wgslsmith_index_u32(0u, 29u)], vec4<f32>(1297f, 409f, var_2.d.x, 452f), global2[_wgslsmith_index_u32(u_input.a.x, 29u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-675f, var_0.x, global0.x) + global0.xww)).xy), vec2<bool>(true, var_2.e), _wgslsmith_clamp_i32(u_input.b.x, 2147483647i, u_input.b.x) > 0i), vec4<f32>(867f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(var_0.x, -973f)))), -859f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(-arg_0.a.b)))), true);
    return false;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<u32>) -> Struct_2 {
    global0 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-arg_2.d)));
    var var_0 = max(-vec2<i32>(-countOneBits(u_input.b.x), u_input.b.x), vec2<i32>(2147483647i, abs(~u_input.b.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(arg_1.d, vec4<f32>(-1323f, -385f, _wgslsmith_f_op_f32(-785f * 2289f), arg_1.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_2.d - vec4<f32>(347f, global0.x, 163f, arg_2.b)) + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1204f), arg_2.b, _wgslsmith_f_op_f32(-arg_2.d.x), arg_2.d.x)), true)));
    global1 = array<vec4<u32>, 26>();
    let var_1 = Struct_2(arg_2, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b, _wgslsmith_f_op_f32(-global0.x), select(arg_2.c.x, arg_2.c.x, true)))), arg_1.d.x), any(!select(!vec3<bool>(false, arg_2.a, arg_2.c.x), vec3<bool>(arg_2.a, true, arg_2.a), select(vec3<bool>(true, true, arg_2.a), vec3<bool>(true, false, arg_1.a), arg_1.a))), select(~((arg_3 ^ arg_3) ^ arg_3), _wgslsmith_mult_vec3_u32(~arg_3, ~max(arg_3, vec3<u32>(75232u, 26834u, 13681u))), arg_3.x >= 27406u), vec2<f32>(arg_1.b, _wgslsmith_div_f32(950f, 1000f)));
    return Struct_2(Struct_1(!(!arg_2.e), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-646f, arg_1.b))), 1043f), func_2(Struct_2(Struct_1(arg_1.a, 1001f, var_1.a.c, arg_2.d, arg_2.c.x), _wgslsmith_div_vec2_f32(var_1.e, vec2<f32>(global0.x, arg_2.d.x)), arg_2.a, _wgslsmith_mult_vec3_u32(vec3<u32>(12808u, var_1.d.x, 30751u), var_1.d), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.b, arg_2.b)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_2.d + arg_2.d), _wgslsmith_f_op_vec4_f32(-var_1.a.d), true)), Struct_2(Struct_1(arg_2.c.x, 671f, vec2<bool>(false, arg_1.c.x), var_1.a.d, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.x, -534f)), 783f > var_1.b.x, arg_3, global0.xx), vec3<f32>(1000f, 342f, var_1.b.x)).xy, arg_2.d, arg_2.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -190f), var_1.a.d.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.b, arg_1.d.x) + arg_2.d.yx)) * var_1.b)), false, arg_3 << (vec3<u32>(4294967295u, 2781u, 1u) % vec3<u32>(32u)), arg_1.d.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(-(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(-67417i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, -1i, 12388i, u_input.b.x), vec4<i32>(u_input.b.x, -1i, 1i, u_input.b.x))));
    var var_1 = func_4(_wgslsmith_div_u32(4294967295u, 1u), Struct_1(((1i != var_0.x) && true) && func_1(Struct_2(Struct_1(true, global0.x, vec2<bool>(false, true), vec4<f32>(1341f, global0.x, global0.x, 1000f), false), global0.zx, false, vec3<u32>(4294967295u, u_input.a.x, u_input.a.x), global0.xz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x)))), vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1129f, 1147f, _wgslsmith_f_op_f32(global0.x - global0.x), _wgslsmith_f_op_f32(global0.x - -527f))), all(func_2(Struct_2(Struct_1(false, 618f, vec2<bool>(true, false), vec4<f32>(1000f, global0.x, -322f, global0.x), true), global0.zz, false, vec3<u32>(u_input.a.x, u_input.a.x, 314u), vec2<f32>(1489f, global0.x)), vec4<f32>(-747f, 477f, global0.x, 747f), Struct_2(Struct_1(true, global0.x, vec2<bool>(true, true), vec4<f32>(1000f, global0.x, 950f, global0.x), false), vec2<f32>(global0.x, global0.x), true, vec3<u32>(u_input.a.x, 0u, u_input.a.x), global0.yy), global0.zwx).wy) != true), Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-global0.x), vec2<bool>(true, any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-101f, global0.x, 1032f, -220f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1525f, 750f, -1479f, 1394f))))), !(global0.x <= global0.x))), true), vec3<u32>((~6252u | firstLeadingBit(u_input.a.x)) >> (u_input.a.x % 32u), 0u, _wgslsmith_mult_u32(~0u, u_input.a.x)));
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_1.a.d * var_1.a.d)) - vec4<f32>(-1348f, _wgslsmith_f_op_f32(1245f * global0.x), global0.x, global0.x)));
    global2 = array<Struct_2, 29>();
    global0 = vec4<f32>(-968f, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-885f, var_1.b.x))))), _wgslsmith_f_op_f32(-var_1.a.b));
    var var_2 = _wgslsmith_add_vec3_u32(abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, 0u, u_input.a.x), vec3<u32>(var_1.d.x, 6879u, u_input.a.x))), _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(60011u, 4294967295u, 4294967295u)) << (vec3<u32>(3963u, u_input.a.x, var_1.d.x) % vec3<u32>(32u)), select(var_1.d, abs(vec3<u32>(56378u, u_input.a.x, 14832u)), var_1.c))) & var_1.d;
    var var_3 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(var_1.d.x, var_2.x), 4294967295u), 29u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(var_3.a.d))), _wgslsmith_f_op_vec4_f32(-var_3.a.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-402f, var_1.a.b))))));
}

