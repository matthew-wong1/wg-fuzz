struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec4<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-742f + _wgslsmith_f_op_f32(step(arg_0.e.x, arg_0.e.x))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(143f, arg_0.d.x), 274f))) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), _wgslsmith_f_op_f32(-131f * 621f)))));
    var var_1 = Struct_1(arg_0.a, all(select(select(select(vec4<bool>(true, arg_0.b, false, false), vec4<bool>(true, arg_0.b, false, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, arg_0.b)), vec4<bool>(arg_0.b, true, true, true), !arg_0.b), !vec4<bool>(arg_0.b, arg_0.b, false, true), vec4<bool>(!arg_0.b, u_input.b <= 20370i, any(vec3<bool>(true, true, true)), true))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(arg_0.c, ~(~arg_0.c)), max(arg_0.c, ~arg_2)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(arg_0.d.x * _wgslsmith_f_op_f32(196f + 632f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)), 533f, _wgslsmith_f_op_f32(trunc(arg_0.e.x))), vec4<f32>(-1775f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.e.x * arg_0.d.x), _wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x)), -464f, -1792f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-763f, _wgslsmith_f_op_f32(round(-1571f)), arg_0.d.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_0.e, vec3<f32>(arg_0.e.x, 1403f, -567f), vec3<bool>(arg_0.b, false, false))) + _wgslsmith_f_op_vec3_f32(select(arg_0.d.ywz, vec3<f32>(arg_0.e.x, 787f, -1636f), vec3<bool>(arg_0.b, true, arg_0.b)))) + vec3<f32>(arg_0.e.x, _wgslsmith_f_op_f32(sign(-1162f)), arg_0.e.x))));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d.x * arg_0.e.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.d.x * arg_0.d.x) + _wgslsmith_div_f32(1073f, var_1.e.x)))), -1114f);
    var_0 = _wgslsmith_f_op_f32(arg_0.d.x + var_1.e.x);
    var_1 = Struct_1(min(_wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(-vec2<i32>(arg_0.a.x, var_1.a.x), firstTrailingBit(arg_0.a)), _wgslsmith_mod_vec2_i32(-var_1.a, arg_0.a)), vec2<i32>(~_wgslsmith_add_i32(-39873i, var_1.a.x), _wgslsmith_add_i32(abs(1i), max(var_1.a.x, 43457i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(var_1.d.x, 1902f)), _wgslsmith_f_op_f32(1843f * -1499f))) * 1f) >= 1644f, arg_2, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(var_1.d.x, 427f), 1000f, 1485f, _wgslsmith_f_op_f32(var_1.d.x + _wgslsmith_div_f32(697f, 1178f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1438f, var_1.e.x, _wgslsmith_f_op_f32(arg_0.e.x - -495f))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_0.d.x, -248f, arg_0.e.x))), arg_0.d.yzz)));
    return arg_0.d.x;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: vec4<i32>, arg_3: i32) -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1362f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -555f) * 953f)), -404f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(vec2<i32>(arg_0.b, arg_0.b), false, vec4<u32>(0u, 0u, arg_0.a.x, 1u), vec4<f32>(-870f, -476f, -480f, 599f), vec3<f32>(1411f, 1229f, 181f)), arg_1, _wgslsmith_div_vec4_u32(vec4<u32>(arg_0.a.x, 4294967295u, 4294967295u, 0u), vec4<u32>(arg_1.x, u_input.e, arg_1.x, 93417u)))))));
    var var_1 = 4294967295u;
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(select(vec2<i32>(-47695i, arg_3), vec2<i32>(u_input.a, -4159i), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true))), any(vec3<bool>(true, true, true)), _wgslsmith_add_vec4_u32(~vec4<u32>(928u, arg_1.x, arg_0.a.x, 0u), max(vec4<u32>(17772u, 0u, arg_0.a.x, u_input.e), vec4<u32>(282u, 105763u, u_input.d.x, arg_0.a.x))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.x, 883f, var_0.x, 263f))))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -565f), _wgslsmith_f_op_f32(round(var_0.x)), 1f)), arg_0.a.yx, _wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(109081u, 0u, u_input.d.x, arg_1.x) | vec4<u32>(0u, 4294967295u, arg_1.x, arg_1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(0u, 7192u, arg_0.a.x, 4294967295u), vec4<u32>(4294967295u, arg_1.x, 1u, arg_0.a.x))), (vec4<u32>(5962u, 39111u, arg_0.a.x, 79361u) ^ vec4<u32>(u_input.c.x, 4294967295u, 1u, arg_0.a.x)) << (vec4<u32>(4294967295u, 1u, 1u, arg_1.x) % vec4<u32>(32u))))), _wgslsmith_f_op_f32(sign(-1358f)), 532f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-1025f)), _wgslsmith_f_op_f32(ceil(-160f)))))));
    var var_2 = -1000f;
    var var_3 = u_input.d.x;
    return _wgslsmith_clamp_vec2_u32(vec2<u32>(33268u ^ ~(~u_input.d.x), arg_0.a.x), ~(max(vec2<u32>(1u, arg_0.a.x) | vec2<u32>(arg_1.x, u_input.e), min(vec2<u32>(0u, 61603u), u_input.d)) >> (vec2<u32>(~39271u, u_input.e << (45221u % 32u)) % vec2<u32>(32u))), arg_0.a.xx);
}

fn func_1() -> Struct_3 {
    let var_0 = ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, _wgslsmith_mult_u32(0u, countOneBits(u_input.d.x)), ~(u_input.d.x << (u_input.d.x % 32u)), _wgslsmith_dot_vec2_u32(u_input.d, func_2(Struct_2(vec3<u32>(u_input.c.x, u_input.e, u_input.d.x), 22513i), vec2<u32>(u_input.c.x, 1u), vec4<i32>(41693i, 0i, 1i, u_input.b), u_input.a))), vec4<u32>(u_input.c.x, u_input.c.x, ~17694u, ~(~u_input.d.x)));
    let var_1 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, _wgslsmith_sub_i32(u_input.b & u_input.a, i32(-1i) * -18326i)), ~(vec2<i32>(u_input.a, u_input.b) << (u_input.d % vec2<u32>(32u)))), true, select(_wgslsmith_mult_vec4_u32(select(vec4<u32>(9284u, 94625u, var_0.x, 1u), var_0, false) << (firstLeadingBit(vec4<u32>(1u, u_input.d.x, 981u, u_input.e)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~var_0, _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, 4294967295u, u_input.c.x, u_input.c.x), vec4<u32>(u_input.d.x, 8069u, 27863u, var_0.x), vec4<u32>(var_0.x, 46973u, u_input.d.x, 1u)))), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(var_0.x, u_input.d.x, u_input.e, 49563u)), abs(max(var_0, vec4<u32>(0u, var_0.x, 4294967295u, 1u)))), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1213f, -1293f, _wgslsmith_f_op_f32(step(-994f, -560f)), _wgslsmith_div_f32(-1085f, 365f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(1472f, -2503f, 1887f, 1007f), _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 261f, 444f, -2015f), vec4<f32>(-1237f, 2174f, -768f, -721f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1051f, 1000f, 152f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(462f, -518f, 1570f) * vec3<f32>(278f, 593f, -919f))))));
    let var_2 = select(vec3<bool>(max(func_2(Struct_2(u_input.c, -1i), u_input.c.yz, vec4<i32>(0i, var_1.a.x, 2147483647i, -21979i), -536i).x, ~1219u) <= 4294967295u, false, !(true || (var_0.x > var_1.c.x))), vec3<bool>(false, select(true, _wgslsmith_dot_vec3_u32(var_0.wwy, u_input.c) <= _wgslsmith_mod_u32(u_input.e, 1u), any(select(vec4<bool>(true, var_1.b, var_1.b, true), vec4<bool>(var_1.b, var_1.b, var_1.b, false), var_1.b))), !var_1.b), vec3<bool>(true, all(vec2<bool>(true, 87875u < u_input.d.x)), true == var_1.b));
    let var_3 = !select(!var_2.yz, select(select(var_2.zx, !var_2.yy, !var_1.b), !select(var_2.xz, var_2.xz, vec2<bool>(var_2.x, false)), true), vec2<bool>(var_1.b && (var_2.x & var_1.b), var_1.e.x < _wgslsmith_f_op_f32(trunc(var_1.e.x))));
    var var_4 = var_1;
    return Struct_3(countOneBits(~abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(4322u, 6998u), var_4.c.zw, u_input.c.xz))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.c;
    let var_1 = func_1();
    let var_2 = vec3<i32>(-(~u_input.a), ~u_input.b, min(_wgslsmith_div_i32(_wgslsmith_sub_i32(-39246i, ~u_input.b), u_input.b), ~60041i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1264f, -604f, 378f, 403f))) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-2133f, 2056f, 2509f, 563f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1028f, 2000f, 1198f, -563f))) + vec4<f32>(-752f, -1160f, 2061f, -460f)))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-924f, -1958f, -386f, -556f) + vec4<f32>(-635f, -161f, 685f, 686f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(174f, -2517f, -213f, -596f)))))), var_2.zz);
}

