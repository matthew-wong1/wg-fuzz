struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_4, arg_2: Struct_1, arg_3: vec4<f32>) -> vec4<bool> {
    var var_0 = ~43779u;
    var var_1 = arg_2.c;
    var var_2 = any(!select(!vec2<bool>(arg_0, true), select(vec2<bool>(true, arg_0), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), vec2<bool>(true, arg_0)), select(vec2<bool>(true, true), vec2<bool>(false, false), arg_0)), false));
    let var_3 = _wgslsmith_f_op_f32(-arg_2.d.x);
    let var_4 = vec4<i32>(u_input.a, arg_2.a.x, -1i, _wgslsmith_mult_i32(arg_2.b, 59122i));
    return vec4<bool>(false, any(select(!(!vec3<bool>(arg_0, arg_0, false)), !(!vec3<bool>(arg_0, arg_0, false)), select(!vec3<bool>(arg_0, false, false), !vec3<bool>(false, arg_0, true), vec3<bool>(arg_0, arg_0, true)))), !(!all(select(vec4<bool>(true, arg_0, true, arg_0), vec4<bool>(arg_0, false, arg_0, false), arg_0))), false);
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<i32> {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_1.d.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.a * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(ceil(arg_1.d.x))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_0.a.x, 1119f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-283f, 356f))))));
    let var_2 = !(!vec4<bool>(1u <= (arg_1.c.x >> (u_input.b.x % 32u)), !(arg_2.x && arg_2.x), select(false, arg_2.x, false), false));
    var var_3 = 1u;
    var_3 = arg_1.c.x << (_wgslsmith_sub_u32(~u_input.b.x, 38438u) % 32u);
    return arg_1.a | arg_1.a;
}

fn func_2(arg_0: u32) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1157f, -1120f, -1361f, 1052f), vec4<f32>(1302f, -857f, -672f, 293f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1596f, -1268f, 357f, 1000f) - vec4<f32>(-494f, 1281f, -1579f, 1068f))), Struct_1(vec2<i32>(u_input.a, 2147483647i), firstLeadingBit(u_input.a), vec4<u32>(0u, arg_0, 0u, arg_0) >> (vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 4294967295u) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-285f, 678f) * vec2<f32>(-321f, -178f))), !func_3(true, Struct_4(vec2<f32>(-1433f, 141f)), Struct_1(vec2<i32>(-1i, 13639i), u_input.a, vec4<u32>(u_input.b.x, 36064u, u_input.b.x, arg_0), vec2<f32>(2022f, 1152f)), vec4<f32>(-544f, -242f, -531f, -1099f)))), 607f);
    var var_1 = true;
    let var_2 = vec2<i32>(u_input.a, _wgslsmith_mult_i32(var_0.a.a.x, var_0.a.a.x));
    var var_3 = vec2<f32>(var_0.b, -1326f);
    var var_4 = u_input.b;
    return Struct_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_3.x, var_0.b))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-186f, _wgslsmith_f_op_f32(-var_0.b)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_4) -> i32 {
    let var_0 = Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, -arg_0.a.a.x ^ -45941i), -max(arg_0.a.a, vec2<i32>(u_input.a, -83247i))), _wgslsmith_div_i32(21684i, _wgslsmith_div_i32(-1i, u_input.a)), vec4<u32>(abs(0u), u_input.b.x, 1u, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, 0u, u_input.b.x), vec3<u32>(13943u, 0u, 1u), vec3<bool>(true, true, false)), ~vec3<u32>(u_input.b.x, 63808u, u_input.b.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.a), arg_1.a)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.d + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.x, var_0.d.x)))) + vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.d.x)) + arg_1.a.x), arg_1.a.x))));
    let var_2 = vec2<i32>(var_0.b, var_0.b) | _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.a.a.x, 35184i), var_0.a), -2147483647i), var_0.a), -var_0.a << (((vec2<u32>(51009u, var_0.c.x) ^ var_0.c.wx) ^ (vec2<u32>(0u, u_input.b.x) >> (var_0.c.zx % vec2<u32>(32u)))) % vec2<u32>(32u)));
    var var_3 = var_0;
    let var_4 = abs(vec4<i32>(arg_0.a.a.x, -61378i, -9808i, -25349i));
    return 2147483647i;
}

fn func_6(arg_0: i32, arg_1: vec2<u32>, arg_2: vec3<bool>, arg_3: f32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(351f, arg_3, arg_3)))))))));
    var var_1 = Struct_1(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.a, -1i), vec2<i32>(arg_0, arg_0)), _wgslsmith_add_vec2_i32(vec2<i32>(arg_0, u_input.a) | vec2<i32>(arg_0, u_input.a), vec2<i32>(arg_0, u_input.a))), _wgslsmith_div_vec2_i32(vec2<i32>(-1i | arg_0, _wgslsmith_div_i32(u_input.a, 1i)), _wgslsmith_clamp_vec2_i32(-vec2<i32>(arg_0, -33463i), select(vec2<i32>(11337i, -1i), vec2<i32>(504i, arg_0), arg_2.x), vec2<i32>(10822i, -2147483647i)))), 32330i, _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(~min(vec4<u32>(0u, arg_1.x, u_input.b.x, arg_1.x), vec4<u32>(0u, arg_1.x, 4294967295u, arg_1.x)), ~(~vec4<u32>(27361u, 74534u, u_input.b.x, arg_1.x))), vec4<u32>(44542u, 64419u, countOneBits(30223u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_1.x, arg_1.x, 4294967295u), firstLeadingBit(vec4<u32>(u_input.b.x, 14317u, 84530u, 4294967295u))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(select(arg_3, var_0.x, arg_2.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(1f))))));
    var_1 = Struct_1(-(_wgslsmith_sub_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_0, 12490i), vec2<i32>(arg_0, 1i)), abs(vec2<i32>(-2147483647i, 2147483647i))) >> ((var_1.c.yz ^ (vec2<u32>(27299u, 124132u) << (arg_1 % vec2<u32>(32u)))) % vec2<u32>(32u))), u_input.a, _wgslsmith_div_vec4_u32(reverseBits(abs(_wgslsmith_add_vec4_u32(var_1.c, vec4<u32>(var_1.c.x, arg_1.x, 1u, u_input.b.x)))), ~select(countOneBits(var_1.c), vec4<u32>(var_1.c.x, 51930u, u_input.b.x, 44199u), true)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), func_2(45642u).a.x))))));
    let var_2 = Struct_3(Struct_2(_wgslsmith_clamp_vec2_i32(var_1.a | var_1.a, reverseBits(var_1.a), var_1.a >> (var_1.c.yz % vec2<u32>(32u))) | var_1.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-359f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-749f * var_0.x) * func_2(arg_1.x).a.x))));
    var_1 = Struct_1(var_2.a.a ^ firstLeadingBit(-var_1.a), i32(-1i) * -(~(-18401i)), ~(~(var_1.c & vec4<u32>(1u, 22773u, 4294967295u, 72914u))) | (~select(var_1.c, vec4<u32>(var_1.c.x, 1u, 0u, arg_1.x), false) ^ (reverseBits(var_1.c) & ~var_1.c)), var_1.d);
    return ~0u;
}

fn func_1() -> vec2<i32> {
    let var_0 = _wgslsmith_sub_u32(u_input.b.x, func_6(_wgslsmith_clamp_i32(~(-u_input.a), 0i, func_5(Struct_3(Struct_2(vec2<i32>(u_input.a, u_input.a)), 1253f), func_2(u_input.b.x))), u_input.b, !func_3(true, Struct_4(vec2<f32>(713f, -183f)), Struct_1(vec2<i32>(u_input.a, u_input.a), u_input.a, vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.b.x), vec2<f32>(-873f, -1874f)), vec4<f32>(-884f, -1000f, -1000f, -467f)).wyy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(137f)))), _wgslsmith_f_op_f32(415f * func_2(u_input.b.x).a.x))));
    var var_1 = abs(~_wgslsmith_add_vec4_u32(abs(vec4<u32>(4294967295u, 1u, 13420u, u_input.b.x)), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0, u_input.b.x, 1u, var_0), vec4<u32>(var_0, u_input.b.x, 4294967295u, u_input.b.x))) & reverseBits(abs(vec4<u32>(110285u, 0u, 4834u, 12843u))));
    var_1 = vec4<u32>(reverseBits(~u_input.b.x >> (~var_0 % 32u)) & 4294967295u, u_input.b.x, ~(~8714u), 4294967295u);
    var var_2 = Struct_1(vec2<i32>(-33759i, 2147483647i), ~(~u_input.a) & 1i, select(~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 4294967295u, 4294967295u, u_input.b.x), vec4<u32>(var_1.x, 0u, 4294967295u, 0u), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, var_0))), vec4<u32>(~4294967295u, ~4294967295u, _wgslsmith_add_u32(1u, var_1.x), _wgslsmith_mod_u32(1u, 61919u)) ^ ~_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, 1u, var_0, var_0), vec4<u32>(var_0, var_1.x, var_0, u_input.b.x)), !(!func_3(true, Struct_4(vec2<f32>(-744f, 1271f)), Struct_1(vec2<i32>(22055i, u_input.a), -2147483647i, vec4<u32>(u_input.b.x, u_input.b.x, 2231u, 0u), vec2<f32>(145f, 945f)), vec4<f32>(148f, 1299f, -143f, -198f)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -877f), _wgslsmith_f_op_f32(ceil(969f)))))));
    var_1 = firstTrailingBit(~var_2.c >> (((reverseBits(vec4<u32>(30760u, 4294967295u, var_1.x, var_0)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b.x, var_1.x, 1u, 4294967295u), vec4<u32>(var_1.x, u_input.b.x, 0u, 0u)) % vec4<u32>(32u))) | (var_2.c | _wgslsmith_mod_vec4_u32(var_2.c, vec4<u32>(0u, var_1.x, var_0, 95655u)))) % vec4<u32>(32u)));
    return min(countOneBits(_wgslsmith_sub_vec2_i32(var_2.a, var_2.a)), select(~vec2<i32>(u_input.a, u_input.a), abs(var_2.a), !func_3(true, func_2(0u), Struct_1(var_2.a, -1i, vec4<u32>(var_0, var_0, 4294967295u, var_1.x), vec2<f32>(var_2.d.x, var_2.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, -2316f, var_2.d.x, 155f))).x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_vec2_i32(vec2<i32>(-4861i, (u_input.a ^ -30968i) | 28966i), min(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(39087i, -51394i, u_input.a, u_input.a), vec4<i32>(-2147483647i, 2147483647i, 2147483647i, -19413i)), 26210i), ~vec2<i32>(-2147483647i, -2147483647i) << (vec2<u32>(u_input.b.x, u_input.b.x) % vec2<u32>(32u)))), _wgslsmith_div_i32(u_input.a >> (110830u % 32u), select(-54496i, _wgslsmith_div_i32(abs(u_input.a), select(u_input.a, u_input.a, false)), true)), ~(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 1u, u_input.b.x), reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, u_input.b.x))) & ~_wgslsmith_sub_vec4_u32(vec4<u32>(47758u, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(27080u, u_input.b.x, u_input.b.x, 116717u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(846f, -905f)))) + vec2<f32>(_wgslsmith_f_op_f32(844f - -823f), _wgslsmith_f_op_f32(516f * 940f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(848f, 804f) * _wgslsmith_div_vec2_f32(vec2<f32>(1057f, -1420f), vec2<f32>(1072f, 937f))))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(var_0.d.x * -244f), -683f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-653f, -1000f)) - var_0.d.x) * 1000f), var_0.d.x);
    var_0 = Struct_1(select(-(_wgslsmith_div_vec2_i32(vec2<i32>(-26904i, var_0.a.x), var_0.a) >> (~vec2<u32>(var_0.c.x, u_input.b.x) % vec2<u32>(32u))), -func_1(), select(!select(vec2<bool>(true, true), vec2<bool>(false, true), true), vec2<bool>(any(vec4<bool>(true, true, true, false)), true), u_input.b.x > (u_input.b.x ^ var_0.c.x))), 1i, abs(var_0.c), vec2<f32>(_wgslsmith_f_op_f32(-924f * var_1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1022f * _wgslsmith_f_op_f32(-var_1.x))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_1.yz)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + -402f), _wgslsmith_f_op_f32(-var_0.d.x))), select(vec2<bool>(true, all(vec3<bool>(false, false, false))), !select(vec2<bool>(true, true), vec2<bool>(true, true), true), !vec2<bool>(all(vec4<bool>(true, false, false, true)), true))));
    var var_3 = Struct_1(~vec2<i32>(var_0.b, 1i), 1i, select(~var_0.c, countOneBits(firstLeadingBit(~vec4<u32>(u_input.b.x, 5828u, 0u, u_input.b.x))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1786f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(82358u, _wgslsmith_clamp_u32(_wgslsmith_sub_u32(~0u, u_input.b.x), ~36196u, var_0.c.x)));
}

