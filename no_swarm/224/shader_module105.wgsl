struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: u32,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> vec4<u32> {
    var var_0 = u_input.e.x;
    var var_1 = vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - 629f))), -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1825f - arg_0.x)))));
    let var_2 = 2147483647i;
    let var_3 = _wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(u_input.c.wwy, max(~u_input.c.xwy << (_wgslsmith_sub_vec3_u32(u_input.e, vec3<u32>(17897u, 23088u, u_input.e.x)) % vec3<u32>(32u)), u_input.c.wxw)), u_input.c.xzz);
    var var_4 = Struct_3(Struct_1(vec4<u32>(~(~8507u), ~(~u_input.e.x), ~u_input.e.x, u_input.e.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-807f, 1000f)), _wgslsmith_f_op_f32(select(605f, 639f, true))), arg_0));
    return ~(~(~var_4.a.a));
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<u32>, arg_2: f32) -> u32 {
    var var_0 = ~13428u;
    var var_1 = _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~u_input.a.x, -1i), countOneBits(-u_input.a)), -reverseBits(firstTrailingBit(u_input.c.yz))) ^ u_input.a;
    var var_2 = Struct_4(false, _wgslsmith_div_u32(arg_1.x << (~4294967295u % 32u), ~60050u) > _wgslsmith_clamp_u32(~(u_input.b & arg_1.x), min(~arg_1.x, 1u), _wgslsmith_add_u32(u_input.b << (0u % 32u), arg_1.x)), _wgslsmith_dot_vec3_u32(~arg_1.xxw, firstTrailingBit(vec3<u32>(5279u, abs(47671u), _wgslsmith_add_u32(1u, arg_1.x)))), arg_1.wz, Struct_2(max(~(~vec4<u32>(51045u, 0u, 21406u, u_input.b)), _wgslsmith_mult_vec4_u32(select(arg_1, vec4<u32>(0u, 37452u, arg_1.x, 1u), true), vec4<u32>(1u, 36705u, arg_1.x, 0u))), 1i, Struct_1(arg_1, any(select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1592f, arg_2, 101f, arg_2)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(536f, arg_2, -1878f, arg_0.x), vec4<f32>(-3101f, -1000f, 325f, arg_2), false)))), 296f, Struct_1(arg_1, any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), false)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1787f, -484f, arg_0.x, arg_2) * vec4<f32>(585f, arg_2, -833f, 161f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, arg_2, arg_0.x, 266f) + vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_2))))));
    let var_3 = Struct_2(vec4<u32>(_wgslsmith_mod_u32(arg_1.x, _wgslsmith_sub_u32(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 7016u), vec3<u32>(26730u, 50518u, var_2.c)))), ~(~51570u), arg_1.x, ~38425u), u_input.a.x, Struct_1(var_2.e.e.a, !var_2.a, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(var_2.e.e.c + _wgslsmith_f_op_vec4_f32(select(var_2.e.e.c, var_2.e.e.c, var_2.e.e.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-211f, var_2.e.d, var_2.e.c.c.x, 600f) - _wgslsmith_f_op_vec4_f32(-var_2.e.c.c)), vec4<bool>(var_2.e.e.b, true, all(vec2<bool>(var_2.a, false)), var_2.e.c.b)))), 2640f, Struct_1(func_3(vec4<f32>(_wgslsmith_f_op_f32(-var_2.e.e.c.x), var_2.e.c.c.x, arg_2, _wgslsmith_f_op_f32(964f * -339f)), _wgslsmith_dot_vec4_i32(-u_input.c, vec4<i32>(u_input.d, var_1.x, 2147483647i, var_1.x) << (arg_1 % vec4<u32>(32u)))), false | var_2.e.c.b, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_2, arg_2, -1841f, 1000f))) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(var_2.e.c.c + vec4<f32>(arg_2, arg_0.x, -1549f, arg_2)))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-var_3.e.c.zy);
    return 65359u;
}

fn func_2(arg_0: Struct_1, arg_1: f32) -> u32 {
    var var_0 = u_input.e;
    var_0 = arg_0.a.yww;
    var var_1 = Struct_1(vec4<u32>(10966u, 1u, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(arg_0.c.xw, arg_0.c.xw))), ~func_3(vec4<f32>(arg_0.c.x, arg_1, -898f, 1000f), u_input.d), arg_0.c.x), u_input.e.x), !select(true, arg_0.b, arg_0.b) && (all(!vec3<bool>(false, arg_0.b, false)) != all(vec4<bool>(arg_0.b, false, arg_0.b, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, -1762f, arg_0.c.x, 244f), arg_0.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_1, arg_0.c.x, arg_0.c.x, arg_0.c.x), vec4<f32>(1547f, -873f, 1870f, 1000f))) * _wgslsmith_f_op_vec4_f32(-arg_0.c)))));
    var var_2 = arg_0.c.wyz;
    let var_3 = vec4<bool>(~(~(~var_1.a.x)) < 11118u, var_1.b, arg_0.b, false);
    return _wgslsmith_div_u32(49473u, 25761u << (0u % 32u));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_4(true, u_input.b != 1u, 1112u, countOneBits(u_input.e.xz), Struct_2(vec4<u32>(u_input.b, ~func_2(Struct_1(vec4<u32>(4294967295u, u_input.b, 0u, u_input.b), false, vec4<f32>(-1691f, -361f, -730f, 457f)), 556f), ~60369u, func_4(vec2<f32>(-155f, -1419f), vec4<u32>(u_input.e.x, u_input.b, 4294967295u, u_input.b) >> (vec4<u32>(4294967295u, u_input.e.x, 1u, u_input.b) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-187f * -1449f))), u_input.a.x, Struct_1(vec4<u32>(u_input.e.x, u_input.b, u_input.e.x, u_input.b) | min(vec4<u32>(u_input.b, 4294967295u, u_input.e.x, 35683u), vec4<u32>(4294967295u, u_input.b, u_input.b, 4294967295u)), !all(vec4<bool>(false, false, false, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-202f, 1405f, -276f, 140f), vec4<f32>(449f, 1227f, 826f, 280f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(841f * 586f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-857f + 1654f) - _wgslsmith_f_op_f32(1508f * -1444f))), Struct_1(~abs(vec4<u32>(u_input.e.x, 4294967295u, u_input.b, u_input.b)), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), vec4<f32>(-962f, _wgslsmith_f_op_f32(-1000f * 253f), _wgslsmith_f_op_f32(sign(-410f)), -636f))));
    let var_1 = var_0;
    var var_2 = Struct_1(_wgslsmith_sub_vec4_u32(var_0.e.c.a, _wgslsmith_clamp_vec4_u32(var_1.e.e.a, var_1.e.a, _wgslsmith_div_vec4_u32(vec4<u32>(var_0.d.x, var_1.e.c.a.x, 4294967295u, 1u), vec4<u32>(38475u, 1u, var_0.c, var_1.c))) | max(select(vec4<u32>(var_1.d.x, 76773u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.e.x, 21605u, var_1.c), vec4<bool>(true, true, var_1.a, true)), var_0.e.e.a)), select((_wgslsmith_div_u32(4294967295u, u_input.b) >= ~u_input.b) | all(vec4<bool>(var_0.b, true, var_1.e.c.b, var_0.a)), var_1.e.e.c.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-240f))), ~var_1.e.a.x <= (var_0.d.x << ((var_0.e.e.a.x >> (0u % 32u)) % 32u))), vec4<f32>(-790f, _wgslsmith_f_op_f32(sign(var_1.e.e.c.x)), _wgslsmith_f_op_f32(-var_0.e.e.c.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2972f, var_0.e.d) - _wgslsmith_f_op_f32(f32(-1f) * -457f))))));
    var_2 = var_1.e.e;
    var var_3 = !select(vec4<bool>(true, all(select(vec3<bool>(true, false, var_0.a), vec3<bool>(true, var_0.e.e.b, var_0.e.c.b), var_1.e.e.b)), any(vec4<bool>(true, false, var_0.a, var_1.a)), any(vec4<bool>(var_0.e.c.b, var_2.b, false, var_1.b))), select(!(!vec4<bool>(var_1.e.e.b, var_0.a, false, false)), !(!vec4<bool>(var_1.e.e.b, true, var_2.b, var_2.b)), true), !vec4<bool>(true, true && var_1.a, !var_2.b, true));
    return Struct_1(~(~reverseBits(vec4<u32>(59u, var_0.c, 0u, 1u))), !all(var_3.zx), var_1.e.c.c);
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: u32) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_0.a.c.ywz);
    var var_1 = Struct_4(arg_1.b, false, 1u, _wgslsmith_div_vec2_u32(func_1().a.wy, _wgslsmith_mult_vec2_u32(func_1().a.zy, u_input.e.zy)), Struct_2(_wgslsmith_div_vec4_u32(arg_0.a.a, vec4<u32>(_wgslsmith_sub_u32(arg_2, 72163u), arg_1.a.x, 30906u, countOneBits(arg_0.a.a.x))), -2147483647i, arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -2176f), func_1()));
    let var_2 = vec3<i32>(_wgslsmith_add_i32(select(u_input.a.x, abs(u_input.a.x), !arg_1.b), -2147483647i) & -1i, -2147483647i, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d | 52006i, var_1.e.b, 2147483647i), ~u_input.c.xzx, ~vec3<i32>(var_1.e.b, u_input.c.x, u_input.a.x)), _wgslsmith_clamp_vec3_i32(u_input.c.zzy, reverseBits(vec3<i32>(-48836i, var_1.e.b, u_input.d)), max(-u_input.c.yyx, vec3<i32>(u_input.d, 30831i, u_input.d)))));
    var var_3 = arg_1.c.x;
    var var_4 = ~_wgslsmith_sub_vec2_u32(vec2<u32>(~arg_1.a.x, countOneBits(0u)), vec2<u32>(~12632u, 0u >> (1u % 32u))) & _wgslsmith_sub_vec2_u32(~(~arg_0.a.a.xy), ~reverseBits(arg_0.a.a.wy));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(Struct_3(Struct_1(~abs(vec4<u32>(0u, u_input.e.x, u_input.b, u_input.e.x)), any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(140f, 159f, 418f, 2019f) + vec4<f32>(996f, -280f, 207f, 368f)) * vec4<f32>(1302f, 990f, 425f, -550f)))), func_1(), 50462u);
    var var_1 = 389f;
    var var_2 = Struct_3(func_5(func_5(var_0, var_0.a, var_0.a.a.x), func_5(var_0, Struct_1(max(vec4<u32>(766u, u_input.b, var_0.a.a.x, u_input.b), vec4<u32>(1u, u_input.b, u_input.e.x, u_input.b)), var_0.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.c.x, -246f, -690f, -1998f))), var_0.a.a.x).a, u_input.e.x).a);
    let var_3 = Struct_4(true, 2147483647i < _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, 1i, u_input.d, 15357i), u_input.c << (var_0.a.a % vec4<u32>(32u))), _wgslsmith_add_u32(24200u, 1u), select(var_2.a.a.xy, ~(~(vec2<u32>(u_input.e.x, 0u) >> (var_0.a.a.zx % vec2<u32>(32u)))), all(select(select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.a.b, var_2.a.b, false, var_0.a.b), var_2.a.b), select(vec4<bool>(false, var_0.a.b, var_0.a.b, true), vec4<bool>(true, true, var_2.a.b, true), false), vec4<bool>(false, var_2.a.b, var_0.a.b, true)))), Struct_2(_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(countOneBits(var_0.a.a), var_0.a.a), _wgslsmith_sub_vec4_u32(vec4<u32>(72047u, var_0.a.a.x, u_input.b, 0u), vec4<u32>(39786u, 1u, u_input.b, 10804u))), -reverseBits(u_input.a.x & u_input.a.x), var_2.a, 466f, func_5(var_0, Struct_1(max(var_0.a.a, var_0.a.a), !var_2.a.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-711f, 1490f, var_0.a.c.x, 731f))), ~4294967295u).a));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.e.e.c.xzx));
    var_4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(var_0.a.c.zwx - vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(572f + 2070f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(286f, -161f)) * _wgslsmith_f_op_f32(-1379f + -1281f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(var_2.a.c.x))))))));
    var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(step(var_0.a.c.wyw, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_4.x, 706f, -644f), vec3<f32>(var_2.a.c.x, var_2.a.c.x, var_3.e.c.c.x)), func_5(Struct_3(var_2.a), Struct_1(vec4<u32>(27284u, 1u, var_0.a.a.x, 64228u), false, var_2.a.c), 0u).a.c.xxy))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.e.d, 439f, -1348f)), _wgslsmith_f_op_vec3_f32(-var_0.a.c.ywx)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a.c.x, func_3(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_4.x, -727f, var_2.a.c.x, _wgslsmith_f_op_f32(select(874f, var_0.a.c.x, true))))), firstLeadingBit(_wgslsmith_dot_vec3_i32(abs(u_input.c.xxy), firstTrailingBit(u_input.c.ywx)))).x, vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + var_2.a.c.x))), 689f), ~4294967295u, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.c.x, -1664f))) + var_3.e.e.c.zw));
}

