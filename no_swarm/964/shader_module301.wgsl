struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec3<bool>,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> u32 {
    global0 = 0i;
    var var_0 = firstLeadingBit(~vec2<u32>(1u, 1u));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(414f * -1078f)))))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(291f, 1000f, -786f, -1000f), vec4<f32>(-1000f, 799f, -2564f, -227f))))))), vec3<bool>(true || select(all(vec4<bool>(true, true, true, false)), all(vec4<bool>(false, false, false, false)), all(vec2<bool>(true, false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -588f))) > _wgslsmith_f_op_f32(select(256f, 1f, all(vec3<bool>(true, false, true)))), true), abs(_wgslsmith_add_i32(_wgslsmith_add_i32(u_input.b.x, firstTrailingBit(-2147483647i)), -1828i)));
    var var_2 = var_1;
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1166f);
    return ~(~1u);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    var var_0 = Struct_1(arg_0, vec4<f32>(-193f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1000f, arg_0), _wgslsmith_f_op_f32(arg_0 * arg_0), true)) * arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -709f)), arg_0), vec3<bool>(true, _wgslsmith_clamp_u32(0u, 88440u, func_3()) <= ~(arg_1.x >> (arg_1.x % 32u)), false), ~abs(49698i));
    var var_1 = Struct_1(-2346f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_0, arg_0, var_0.b.x), var_0.b, var_0.c.x)))) * vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(floor(-340f)), _wgslsmith_f_op_f32(arg_0 * 1269f), var_0.b.x)), vec4<f32>(-1601f, -279f, _wgslsmith_f_op_f32(step(-957f, arg_0)), _wgslsmith_f_op_f32(max(546f, arg_0)))), var_0.c, -min(0i, -18482i));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1230f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.a))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(round(-684f)), var_1.b, select(!var_1.c, !select(!var_0.c, var_1.c, var_1.c.x), select(var_1.c, vec3<bool>(all(vec2<bool>(true, var_0.c.x)), select(var_1.c.x, false, false), true), select(!vec3<bool>(false, var_0.c.x, true), vec3<bool>(var_1.c.x, false, true), select(var_1.c, var_0.c, true)))), var_1.d);
    return var_1.d;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(arg_0.a * arg_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.x, 128f, -1000f, 727f)))), vec3<bool>(any(vec4<bool>(arg_0.b.x > arg_3.b.x, arg_3.c.x, true, any(vec4<bool>(arg_3.c.x, arg_0.c.x, true, false)))), all(vec4<bool>(!arg_3.c.x, true, all(vec4<bool>(true, true, arg_3.c.x, false)), arg_1.x)), countOneBits(~111814u) <= (28266u | _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(91945u, 56280u)))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-arg_0.d, func_2(1040f, countOneBits(vec4<u32>(68672u, 1u, 58385u, 1u))), 1i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(58770u, 1u, 1u), vec3<u32>(4294967295u, 31519u, 0u)) % 32u)), 2147483647i));
    var_0 = arg_3;
    var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x));
    let var_2 = all(var_0.c.xx);
    return arg_0;
}

fn func_4(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(step(arg_2.b, arg_2.b));
    var_0 = arg_2.b;
    return _wgslsmith_f_op_f32(step(148f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))))));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(593f, -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec4<f32>(471f, -804f, -674f, arg_1))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, 496f, 1850f))), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)), -14803i | arg_2.x), select(func_1(func_1(Struct_1(-559f, vec4<f32>(arg_1, -950f, 269f, arg_1), vec3<bool>(true, true, true), -1i), vec3<bool>(false, true, true), 1242f, Struct_1(1411f, vec4<f32>(arg_1, -463f, arg_1, arg_1), vec3<bool>(true, false, true), u_input.b.x)), vec3<bool>(true, true, false), -944f, Struct_1(-741f, vec4<f32>(arg_1, arg_1, arg_1, arg_1), vec3<bool>(false, true, false), -2147483647i)).c, vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(f32(-1f) * -972f), Struct_1(-1395f, vec4<f32>(_wgslsmith_f_op_f32(-969f - 1296f), -1306f, _wgslsmith_f_op_f32(select(115f, arg_1, true)), _wgslsmith_f_op_f32(-arg_1)), vec3<bool>(false, true, arg_2.x >= u_input.b.x), -26557i)).c.x == true;
    global0 = ~func_1(Struct_1(_wgslsmith_f_op_f32(913f - arg_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(844f, 1000f, -326f, arg_1)), !vec3<bool>(var_0, var_0, var_0), abs(-2147483647i)), vec3<bool>(!var_0, var_0 | var_0, any(vec3<bool>(true, true, var_0))), arg_1, Struct_1(_wgslsmith_f_op_f32(select(arg_1, arg_1, var_0)), vec4<f32>(arg_1, 904f, arg_1, arg_1), !vec3<bool>(var_0, false, true), -arg_2.x)).d | ~_wgslsmith_dot_vec3_i32(-u_input.b, _wgslsmith_div_vec3_i32(u_input.b, u_input.b));
    global0 = ~(-27118i);
    var var_1 = -444f;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_1, arg_1, -417f, 640f), vec4<f32>(arg_1, 749f, arg_1, arg_1))))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(abs(116f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1 + arg_1))), _wgslsmith_f_op_f32(max(-1527f, -1310f)), _wgslsmith_f_op_f32(func_4(!vec2<bool>(false, var_0), ~4294967295u, Struct_1(1604f, vec4<f32>(arg_1, -397f, arg_1, 809f), vec3<bool>(var_0, false, var_0), -1i), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, 944f))))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), func_1(func_1(Struct_1(_wgslsmith_f_op_f32(min(136f, 760f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, var_2.x, 839f, arg_1) + vec4<f32>(-208f, arg_1, var_2.x, 1427f)), vec3<bool>(var_0, true, false), ~11134i), !vec3<bool>(var_0, var_0, false), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_1, arg_1))), func_1(Struct_1(1392f, vec4<f32>(-866f, var_2.x, var_2.x, 306f), vec3<bool>(false, var_0, var_0), 0i), vec3<bool>(var_0, false, var_0), var_2.x, Struct_1(377f, vec4<f32>(arg_1, 1394f, var_2.x, var_2.x), vec3<bool>(var_0, var_0, true), -37015i))), vec3<bool>(var_0, false, var_0), -1826f, func_1(func_1(func_1(Struct_1(arg_1, vec4<f32>(var_2.x, -1493f, arg_1, -1659f), vec3<bool>(var_0, var_0, false), arg_2.x), vec3<bool>(var_0, var_0, var_0), 1811f, Struct_1(arg_1, vec4<f32>(var_2.x, 145f, 663f, var_2.x), vec3<bool>(var_0, true, var_0), -2147483647i)), vec3<bool>(false, false, true), _wgslsmith_f_op_f32(f32(-1f) * -1264f), Struct_1(-623f, vec4<f32>(var_2.x, arg_1, -152f, var_2.x), vec3<bool>(false, var_0, var_0), arg_2.x)), select(vec3<bool>(false, false, false), !vec3<bool>(var_0, var_0, var_0), vec3<bool>(false, true, var_0)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(395f * -800f), 1244f)), func_1(Struct_1(var_2.x, vec4<f32>(360f, -476f, var_2.x, var_2.x), vec3<bool>(false, false, var_0), 2147483647i), !vec3<bool>(false, true, var_0), _wgslsmith_f_op_f32(arg_1 - var_2.x), Struct_1(arg_1, vec4<f32>(var_2.x, var_2.x, var_2.x, 1470f), vec3<bool>(false, false, var_0), u_input.a)))).b, !vec3<bool>(false, max(44139u, arg_0.x) >= _wgslsmith_add_u32(arg_0.x, 60520u), !all(vec3<bool>(false, true, var_0))), ~_wgslsmith_mult_i32(_wgslsmith_sub_i32(arg_2.x, arg_2.x) << (4294967295u % 32u), -(~u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_dot_vec2_i32(u_input.b.xy, vec2<i32>(51942i, u_input.b.x)) & u_input.a;
    let var_0 = 1u;
    let var_1 = func_5(firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, var_0, 0u), select(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(var_0, 95601u, var_0), true)), _wgslsmith_clamp_u32(var_0, min(6673u, var_0), _wgslsmith_sub_u32(var_0, var_0)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(vec2<bool>(true, true), 1u << (_wgslsmith_div_u32(var_0, var_0) % 32u), func_1(Struct_1(-331f, vec4<f32>(-639f, -1663f, -839f, 462f), vec3<bool>(true, false, false), 0i), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(-889f - -113f), Struct_1(-278f, vec4<f32>(-824f, -574f, -463f, -704f), vec3<bool>(false, true, true), 2147483647i)), _wgslsmith_f_op_vec2_f32(vec2<f32>(688f, -187f) * vec2<f32>(-168f, 194f)))))), vec2<i32>(1i, u_input.b.x));
    global0 = -1i;
    global0 = (i32(-1i) * -u_input.b.x) | u_input.b.x;
    global0 = -89466i;
    var var_2 = func_1(var_1, var_1.c, -1000f, func_1(var_1, !var_1.c, _wgslsmith_f_op_f32(f32(-1f) * -502f), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_1.a)) * var_1.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, var_1.a, 1655f, -1468f))) - var_1.b), select(var_1.c, vec3<bool>(true, var_1.c.x, var_1.c.x), var_1.c), u_input.a))).c.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(func_1(var_1, select(vec3<bool>(var_1.c.x, true, var_1.c.x), vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x), false), _wgslsmith_f_op_f32(-var_1.a), var_1).b.x, -1481f, var_1.b.x, _wgslsmith_div_f32(_wgslsmith_div_f32(414f, var_1.b.x), -355f))));
}

