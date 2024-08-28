struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(33689i, -41099i, -1i, 1i);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: i32) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-532f, -546f, 1146f, -1000f) + vec4<f32>(-1611f, 771f, 1496f, -157f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1000f) + _wgslsmith_f_op_f32(floor(-1153f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1712f))), -556f, -2613f)), -644f, Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(735f, 1429f, -415f, -1000f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-243f, 921f, 1706f, 2182f)))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1747f, -262f, -377f, 1485f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-656f, 726f, 1984f, 1380f) - vec4<f32>(-173f, -480f, -165f, 1000f)))), vec4<f32>(293f, -1070f, _wgslsmith_f_op_f32(-277f + 1839f), _wgslsmith_f_op_f32(sign(-2151f)))))), vec4<bool>(true, !any(vec3<bool>(true, true, false)) == true, any(select(vec2<bool>(true, true), vec2<bool>(true, false), false)), !(all(vec4<bool>(true, false, true, true)) != all(vec4<bool>(true, true, true, true)))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1248f + -1013f), _wgslsmith_f_op_f32(f32(-1f) * -641f))), 1762f, 1f, _wgslsmith_f_op_f32(f32(-1f) * -610f)), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -611f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-418f, 304f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1265f * 624f)), 926f)));
    var var_1 = Struct_1(_wgslsmith_div_vec4_f32(var_0.e.b, _wgslsmith_f_op_vec4_f32(-var_0.e.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.c.a)));
    var_0 = Struct_2(Struct_1(var_0.e.a, vec4<f32>(var_0.e.b.x, var_0.b, 285f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.x + var_0.c.a.x)))), -1074f, Struct_1(var_0.e.a, _wgslsmith_f_op_vec4_f32(var_0.a.b + var_0.c.a)), select(vec4<bool>(true, all(var_0.d), var_0.d.x, false), select(!(!var_0.d), select(var_0.d, vec4<bool>(true, false, var_0.d.x, var_0.d.x), vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, true)), vec4<bool>(true, arg_0 > 52210u, var_0.d.x, all(var_0.d.xy))), !(!var_0.d.x)), var_0.e);
    var var_2 = Struct_2(var_0.e, -845f, Struct_1(var_0.a.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c.b - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-191f, 631f, var_1.b.x, var_0.b))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1041f, 1243f, var_1.b.x, var_0.b)))), vec4<bool>(all(select(!var_0.d.zwz, !var_0.d.yxz, !var_0.d.zwx)), true, any(var_0.d), !var_0.d.x), Struct_1(var_0.e.b, vec4<f32>(var_1.b.x, 749f, _wgslsmith_f_op_f32(-519f + _wgslsmith_f_op_f32(round(-1000f))), 343f)));
    var var_3 = !select(select(vec4<bool>(all(var_0.d.zyy), all(vec2<bool>(var_2.d.x, var_2.d.x)), false, any(vec4<bool>(var_2.d.x, false, true, false))), !vec4<bool>(true, true, false, var_2.d.x), true), vec4<bool>(true, var_0.d.x, all(var_0.d), ~arg_0 != 4294967295u), var_2.d.x);
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2.a.b.x))), var_2.e.b.x, _wgslsmith_div_f32(var_2.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-508f + 364f) - _wgslsmith_f_op_f32(f32(-1f) * -2071f))), _wgslsmith_f_op_f32(max(var_1.a.x, var_2.c.a.x))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - 874f)), _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -338f), var_2.b, var_2.c.b.x == 995f)), 1428f), _wgslsmith_f_op_vec4_f32(-var_0.e.b)));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(276f, 821f, -810f, -247f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-908f, 1746f, 1577f, -287f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(166f, -636f, 1431f, 582f), vec4<f32>(-1599f, -1592f, 1467f, 1058f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1224f, 1058f, 212f, 100f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(333f, -199f, 911f, 562f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2040f, -1000f, 1000f, -206f), vec4<f32>(114f, -1210f, 1000f, -802f)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1574f, -273f, 427f, -947f), vec4<f32>(-994f, 824f, 1566f, -738f)))))), _wgslsmith_f_op_f32(1581f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-875f - -1696f))))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(62725u, (u_input.a.x | u_input.a.x) | abs(global0.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-687f)), -216f, -397f, 1404f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1208f, -1891f, -461f, 162f) * vec4<f32>(1068f, -1000f, 650f, -234f))))), !select(select(!vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(true, arg_1.x, false, false), select(vec4<bool>(false, true, arg_1.x, arg_0), vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(true, arg_1.x, false, true))), select(select(vec4<bool>(arg_1.x, true, arg_1.x, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, arg_0, arg_0)), select(vec4<bool>(arg_0, true, false, false), vec4<bool>(false, arg_0, arg_0, arg_0), arg_1.x), true), !all(vec4<bool>(arg_0, arg_0, arg_1.x, false))), Struct_1(_wgslsmith_f_op_vec4_f32(func_3(abs(1u), ~(-u_input.a.x))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(1937f, 1000f, -640f, -1146f) - vec4<f32>(-1892f, 1111f, -650f, -1248f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-629f, -113f, 428f, 341f))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1059f, -559f, -513f) + vec4<f32>(-299f, 975f, 1137f, 596f))))))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(var_0.e.a)))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_mult_u32(26293u << (0u % 32u), select(4294967295u, 0u, var_0.d.x)), 0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-762f * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(2003f * 865f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2474f, _wgslsmith_f_op_f32(step(var_0.c.a.x, 1831f)))) + var_0.a.b.x)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(347f, var_0.c.b.x, 1000f, 770f) + vec4<f32>(-1811f, var_0.e.a.x, var_0.e.a.x, var_0.c.b.x))), vec4<f32>(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(exp2(var_0.e.b.x))), _wgslsmith_f_op_f32(max(-531f, _wgslsmith_f_op_f32(1610f + var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.b, var_0.c.b.x))), -887f)), vec4<bool>(true, arg_0, var_0.d.x, all(vec3<bool>(false, any(vec2<bool>(var_0.d.x, arg_1.x)), 12783i >= global0.x))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(var_0.e.a)), var_0.c.b), vec4<f32>(var_0.c.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c.b.x))), var_0.c.a.x, var_0.b)));
    global0 = u_input.a;
    global0 = u_input.a;
    global0 = ~(vec4<i32>(-1i) * -firstLeadingBit(u_input.a >> (vec4<u32>(1u, 0u, 65376u, 1u) % vec4<u32>(32u))));
    return var_1;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_3.a.a.x, arg_1.b.x, 437f, 1089f))), _wgslsmith_f_op_vec4_f32(arg_2.a * arg_3.e.b)))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_1.b.x * arg_1.a.x), _wgslsmith_f_op_f32(arg_2.a.x + arg_1.a.x), func_2(true, arg_0).a.b.x, _wgslsmith_f_op_f32(min(-485f, 923f))), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.b), _wgslsmith_f_op_f32(ceil(1039f)), -461f, _wgslsmith_f_op_f32(arg_2.b.x - -534f)))), arg_3.e.a.x, Struct_1(_wgslsmith_f_op_vec4_f32(-arg_1.b), vec4<f32>(_wgslsmith_f_op_f32(-arg_3.e.b.x), arg_3.c.a.x, -731f, -563f)), vec4<bool>(arg_0.x, any(vec4<bool>(any(vec2<bool>(false, false)), true, arg_3.d.x, arg_3.a.a.x < 950f)), true, arg_3.d.x), Struct_1(_wgslsmith_f_op_vec4_f32(-arg_3.c.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-671f, arg_3.c.a.x, -1266f, 1000f)))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: u32, arg_3: vec2<u32>) -> vec4<i32> {
    let var_0 = Struct_2(func_2(!all(arg_0.d), !select(vec2<bool>(arg_0.d.x, arg_0.d.x), func_4(vec2<bool>(arg_0.d.x, arg_0.d.x), arg_0.c, Struct_1(arg_0.a.a, vec4<f32>(arg_0.c.a.x, 1833f, -1655f, arg_0.e.a.x)), Struct_2(arg_0.c, 233f, Struct_1(vec4<f32>(arg_0.e.b.x, arg_0.e.b.x, -1125f, arg_0.a.b.x), arg_0.a.a), arg_0.d, Struct_1(arg_0.a.b, vec4<f32>(arg_0.e.a.x, 1242f, 392f, arg_0.a.a.x)))).d.yx, true)).a, arg_0.e.b.x, func_4(func_4(!vec2<bool>(arg_0.d.x, arg_0.d.x), Struct_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_0.c.b.x, arg_0.a.b.x, arg_0.e.b.x, -143f))), arg_0.e.a), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.e.b.x, 637f, -218f) - arg_0.e.b), arg_0.c.b), Struct_2(func_2(false, vec2<bool>(arg_0.d.x, arg_0.d.x)).a, -1000f, func_2(arg_0.d.x, arg_0.d.xw).c, arg_0.d, func_2(arg_0.d.x, vec2<bool>(arg_0.d.x, arg_0.d.x)).c)).d.ww, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.b.x, arg_0.b, arg_0.b, 272f) - vec4<f32>(arg_0.e.b.x, 176f, arg_0.b, arg_0.e.b.x)) * _wgslsmith_div_vec4_f32(arg_0.c.b, arg_0.e.a)), arg_0.e.b), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.e.a.x, 524f, 1135f, arg_0.a.a.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.a.x, arg_0.c.a.x, arg_0.e.b.x, -310f)))), func_2(all(arg_0.d), vec2<bool>(true, false))).c, !vec4<bool>(false, false != (arg_2 == 1u), arg_0.d.x || (arg_2 <= arg_3.x), true), func_4(arg_0.d.wy, arg_0.c, func_2(select(true, !arg_0.d.x, arg_0.d.x), !vec2<bool>(arg_0.d.x, true)).e, arg_0).e);
    let var_1 = vec2<u32>(select(arg_1, min(~(~arg_1), ~_wgslsmith_mult_u32(arg_3.x, 11442u)), var_0.d.x && (_wgslsmith_f_op_f32(var_0.e.b.x + var_0.b) != _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~_wgslsmith_dot_vec2_u32(arg_3, ~vec2<u32>(0u, arg_3.x)));
    let var_2 = func_4(vec2<bool>(var_0.d.x & true, arg_0.d.x), arg_0.a, Struct_1(vec4<f32>(1901f, -342f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-361f - 1000f) - _wgslsmith_f_op_f32(f32(-1f) * -1095f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.e.b.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.e.a - vec4<f32>(var_0.e.a.x, -330f, arg_0.a.b.x, arg_0.b)) + _wgslsmith_f_op_vec4_f32(abs(var_0.c.b))), arg_0.e.a)), func_4(vec2<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, arg_0.d.x), var_0.d.x)), arg_0.d.x && (var_0.d.x || var_0.d.x)), var_0.c, arg_0.a, Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-var_0.e.a), arg_0.c.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b + -1451f)), arg_0.c, select(!vec4<bool>(arg_0.d.x, true, false, false), vec4<bool>(arg_0.d.x, false, var_0.d.x, false), true), arg_0.e))).d.x;
    global0 = -u_input.a;
    global0 = u_input.a;
    return _wgslsmith_clamp_vec4_i32(select(u_input.a, _wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(29455i, -3643i, -24179i, 0i)), func_4(!vec2<bool>(var_0.d.x, arg_0.d.x), arg_0.a, func_4(vec2<bool>(arg_0.d.x, true), var_0.e, Struct_1(arg_0.a.a, arg_0.e.a), arg_0).a, arg_0).d), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x << (4294967295u % 32u), _wgslsmith_add_i32(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(2147483647i, global0.x), min(2147483647i, 2147483647i)), vec4<i32>(_wgslsmith_clamp_i32(-1135i, -12803i, 0i), select(1i, u_input.a.x, false), _wgslsmith_dot_vec3_i32(u_input.a.wyw, vec3<i32>(-1i, u_input.a.x, global0.x)), 1i), vec4<i32>(-global0.x, select(-2147483647i, -24365i, arg_0.d.x), _wgslsmith_dot_vec3_i32(global0.wyx, u_input.a.yyy), max(-1i, global0.x))), u_input.a) << (((vec4<u32>(~arg_2, _wgslsmith_div_u32(4294967295u, arg_1), 4294967295u & var_1.x, 57405u) << (vec4<u32>(63240u, ~32018u, abs(arg_3.x), arg_1) % vec4<u32>(32u))) << (vec4<u32>(arg_3.x, arg_1, ~_wgslsmith_dot_vec4_u32(vec4<u32>(104222u, 4294967295u, 1u, var_1.x), vec4<u32>(arg_3.x, 0u, 0u, 3733u)), var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = u_input.a;
    global0 = func_5(func_4(arg_2.d.yw, arg_1, Struct_1(_wgslsmith_f_op_vec4_f32(arg_1.b + vec4<f32>(arg_1.a.x, 621f, arg_1.a.x, 1000f)), _wgslsmith_f_op_vec4_f32(round(arg_2.e.b))), func_2(_wgslsmith_f_op_f32(1000f - -2108f) == _wgslsmith_f_op_f32(trunc(arg_2.b)), arg_2.d.ww)), 4294967295u, ~4294967295u, abs(vec2<u32>(~0u >> (firstTrailingBit(7219u) % 32u), _wgslsmith_add_u32(1u, abs(32109u)))));
    let var_0 = arg_2;
    var var_1 = vec4<bool>(1u != firstTrailingBit(~(~26104u)), !func_4(select(vec2<bool>(arg_0, true), select(vec2<bool>(arg_0, var_0.d.x), arg_2.d.ww, var_0.d.x), select(vec2<bool>(false, arg_2.d.x), var_0.d.xy, arg_2.d.x)), Struct_1(arg_1.a, _wgslsmith_div_vec4_f32(vec4<f32>(-847f, 300f, var_0.e.a.x, var_0.b), arg_1.a)), var_0.e, func_2(arg_2.d.x, arg_2.d.zx)).d.x, global0.x != 1i, arg_2.d.x);
    global0 = firstTrailingBit(u_input.a);
    return 1184f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, Struct_1(vec4<f32>(-998f, 1039f, 1000f, 1000f), vec4<f32>(-1563f, -1394f, 369f, 943f)), Struct_2(Struct_1(vec4<f32>(-478f, 1040f, -803f, 1168f), vec4<f32>(-593f, 321f, 1998f, 1000f)), -1093f, Struct_1(vec4<f32>(1000f, 1760f, 435f, 788f), vec4<f32>(-1962f, -483f, -1038f, 524f)), vec4<bool>(true, false, true, true), Struct_1(vec4<f32>(-1009f, 731f, -2771f, -379f), vec4<f32>(-939f, -1638f, -102f, -604f))))) + -580f) < _wgslsmith_f_op_f32(-1247f - _wgslsmith_f_op_f32(-2929f * 237f))) | false, !all(select(vec2<bool>(true, false), vec2<bool>(true, false), false)) | true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-432f)))) - -1133f) >= -927f);
    let var_1 = !vec4<bool>(!(func_2(var_0.x, var_0.zx).d.x & false), false, var_0.x, var_0.x);
    let var_2 = u_input.a.x;
    let var_3 = vec4<u32>(~57618u, countOneBits(0u), 4469u, ~min(~_wgslsmith_dot_vec3_u32(vec3<u32>(32434u, 19115u, 276u), vec3<u32>(0u, 53596u, 1u)), 1u));
    var var_4 = func_4(var_0.yy, Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 301f, -146f, 940f), vec4<f32>(227f, 483f, -365f, -1589f)))))), vec4<f32>(-324f, -201f, _wgslsmith_f_op_f32(func_2(false, vec2<bool>(true, var_0.x)).e.b.x + 206f), _wgslsmith_f_op_f32(select(-770f, -888f, var_0.x)))), func_4(func_4(func_4(vec2<bool>(true, true), func_2(var_0.x, vec2<bool>(true, var_0.x)).a, func_2(false, vec2<bool>(var_0.x, false)).c, Struct_2(Struct_1(vec4<f32>(736f, 1646f, -2047f, 568f), vec4<f32>(-442f, 800f, 472f, 1000f)), -1000f, Struct_1(vec4<f32>(869f, -568f, 1037f, 1501f), vec4<f32>(628f, -463f, 1287f, 1239f)), var_1, Struct_1(vec4<f32>(-1361f, -1814f, 711f, 450f), vec4<f32>(100f, -531f, 2045f, 1660f)))).d.xy, func_4(func_4(var_1.yx, Struct_1(vec4<f32>(1310f, -1000f, 2251f, -1811f), vec4<f32>(-1000f, -430f, 1522f, 1034f)), Struct_1(vec4<f32>(173f, -815f, -815f, -519f), vec4<f32>(618f, -1000f, -527f, -513f)), Struct_2(Struct_1(vec4<f32>(793f, -115f, 985f, -1627f), vec4<f32>(-146f, 841f, -128f, 379f)), 1000f, Struct_1(vec4<f32>(-1313f, 249f, -290f, 1290f), vec4<f32>(-920f, -925f, 793f, 1000f)), var_1, Struct_1(vec4<f32>(-751f, 861f, -1634f, -588f), vec4<f32>(-160f, -969f, -884f, -284f)))).d.zy, func_2(var_0.x, var_0.zz).a, func_2(var_0.x, vec2<bool>(var_0.x, var_1.x)).e, Struct_2(Struct_1(vec4<f32>(-647f, -1087f, 319f, 1115f), vec4<f32>(1189f, -307f, -1707f, -350f)), -1000f, Struct_1(vec4<f32>(931f, 383f, 168f, 1000f), vec4<f32>(-1170f, 543f, -1000f, -426f)), vec4<bool>(var_0.x, var_1.x, true, true), Struct_1(vec4<f32>(-102f, -1000f, 568f, -116f), vec4<f32>(-1000f, 787f, 1000f, 1501f)))).a, func_2(func_2(true, vec2<bool>(true, false)).d.x, vec2<bool>(var_1.x, var_1.x)).e, func_4(vec2<bool>(true, var_1.x), func_4(vec2<bool>(var_0.x, true), Struct_1(vec4<f32>(818f, -606f, -418f, 668f), vec4<f32>(-530f, 1539f, 594f, -491f)), Struct_1(vec4<f32>(121f, 2129f, -591f, -164f), vec4<f32>(303f, -585f, 576f, 857f)), Struct_2(Struct_1(vec4<f32>(-2003f, -375f, -1382f, -735f), vec4<f32>(1365f, 1250f, -788f, 475f)), 522f, Struct_1(vec4<f32>(-950f, -565f, 106f, 505f), vec4<f32>(-727f, -289f, -447f, 481f)), vec4<bool>(var_0.x, true, true, var_1.x), Struct_1(vec4<f32>(424f, 1604f, -2085f, 904f), vec4<f32>(1840f, 408f, -449f, -154f)))).c, func_2(true, vec2<bool>(var_0.x, false)).a, func_2(var_0.x, var_1.wx))).d.xz, func_2(!func_4(var_0.zy, Struct_1(vec4<f32>(-931f, -530f, -1000f, 356f), vec4<f32>(1168f, 1991f, 1000f, 1379f)), Struct_1(vec4<f32>(1000f, -547f, -592f, 1315f), vec4<f32>(774f, -330f, 1196f, -920f)), Struct_2(Struct_1(vec4<f32>(1158f, -1000f, 2095f, 1326f), vec4<f32>(173f, -304f, -633f, 2548f)), -766f, Struct_1(vec4<f32>(1103f, 698f, 1000f, -209f), vec4<f32>(2726f, 622f, 1758f, 374f)), var_1, Struct_1(vec4<f32>(1282f, -793f, -900f, -892f), vec4<f32>(-787f, 717f, -770f, 1068f)))).d.x, !func_2(false, vec2<bool>(var_1.x, true)).d.zz).a, Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1197f, 942f, -592f, -1000f), vec4<f32>(-109f, -1595f, 2298f, 1000f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1168f, -1000f, -880f, 1659f) * vec4<f32>(-334f, 1166f, 362f, 1578f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1946f, -1275f, -279f, 365f)))), Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1777f, 307f, -898f) - vec4<f32>(693f, 1738f, 837f, -887f)), vec4<f32>(-524f, 1648f, 457f, -2062f)), _wgslsmith_div_f32(-493f, _wgslsmith_f_op_f32(abs(-1450f))), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(463f, -1344f, -3788f, -140f) - vec4<f32>(-238f, 224f, -833f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(1000f, 1242f, 1113f, -354f), vec4<f32>(1038f, -1401f, -1000f, 992f))), var_1, func_4(func_4(vec2<bool>(var_1.x, var_0.x), Struct_1(vec4<f32>(-137f, 114f, 508f, 1000f), vec4<f32>(-415f, -2036f, -3505f, 453f)), Struct_1(vec4<f32>(502f, 1409f, 788f, -1035f), vec4<f32>(990f, -1138f, 815f, 1189f)), Struct_2(Struct_1(vec4<f32>(1975f, 925f, 2507f, 876f), vec4<f32>(-388f, -1333f, 1055f, -1482f)), -1701f, Struct_1(vec4<f32>(946f, 1974f, 279f, -921f), vec4<f32>(172f, -515f, -143f, 1403f)), var_1, Struct_1(vec4<f32>(1300f, -508f, 101f, -849f), vec4<f32>(171f, -1016f, 314f, -585f)))).d.yw, Struct_1(vec4<f32>(-1964f, -977f, -2229f, 1496f), vec4<f32>(-1216f, 1795f, 1075f, 2256f)), func_2(false, vec2<bool>(var_1.x, true)).e, Struct_2(Struct_1(vec4<f32>(1399f, 389f, -871f, -517f), vec4<f32>(785f, -133f, -197f, -3371f)), 712f, Struct_1(vec4<f32>(1080f, 355f, 1000f, 2227f), vec4<f32>(217f, -1431f, -1319f, 521f)), vec4<bool>(var_1.x, var_0.x, var_0.x, false), Struct_1(vec4<f32>(-145f, 462f, 2445f, -762f), vec4<f32>(-584f, 1860f, -1000f, -822f)))).e)).e, func_2(!any(vec2<bool>(false, var_1.x)), func_2(any(vec4<bool>(false, true, false, false)), !func_4(vec2<bool>(true, false), Struct_1(vec4<f32>(-856f, 292f, 450f, -279f), vec4<f32>(2116f, -1525f, 254f, -2173f)), Struct_1(vec4<f32>(813f, 1065f, -1153f, 687f), vec4<f32>(-2712f, 271f, 1368f, 1198f)), Struct_2(Struct_1(vec4<f32>(-1128f, 1111f, -555f, 297f), vec4<f32>(-953f, 892f, -3076f, -779f)), -703f, Struct_1(vec4<f32>(330f, -117f, 1201f, -649f), vec4<f32>(-491f, 914f, -442f, -561f)), vec4<bool>(true, var_0.x, true, false), Struct_1(vec4<f32>(-648f, -456f, 134f, 1375f), vec4<f32>(-1947f, 139f, 122f, 179f)))).d.yz).d.xx)).c;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~(-1i), ~(-(~(-14605i))), -15709i), 1u, vec3<i32>(_wgslsmith_dot_vec4_i32(~vec4<i32>(12242i, 0i, var_2, -2147483647i), u_input.a << (vec4<u32>(4294967295u, var_3.x, var_3.x, var_3.x) % vec4<u32>(32u))), -(var_2 >> (var_3.x % 32u)) >> (firstTrailingBit(6143u) % 32u), _wgslsmith_add_i32(u_input.a.x, -16070i)), -44705i);
}

