struct Struct_1 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_4, arg_1: i32) -> bool {
    var var_0 = !select(vec3<bool>(any(!arg_0.b), arg_0.b.x, true), select(select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(arg_0.a.a, false, false)), !vec3<bool>(false, arg_0.b.x, false), true), select(vec3<bool>(false, arg_0.b.x, arg_0.a.a), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, false)), vec3<bool>(true, arg_0.a.a, true)), false && arg_0.a.a), arg_0.a.a);
    var_0 = select(!select(!(!vec3<bool>(false, true, arg_0.b.x)), !select(vec3<bool>(var_0.x, arg_0.b.x, false), vec3<bool>(false, true, true), vec3<bool>(arg_0.b.x, var_0.x, var_0.x)), !select(vec3<bool>(true, false, false), vec3<bool>(arg_0.a.a, var_0.x, true), vec3<bool>(true, true, arg_0.b.x))), select(vec3<bool>(select(any(vec3<bool>(true, var_0.x, arg_0.a.a)), arg_0.b.x & true, true), all(select(vec4<bool>(false, var_0.x, true, false), vec4<bool>(true, arg_0.b.x, true, var_0.x), vec4<bool>(false, true, arg_0.b.x, var_0.x))), true), select(select(select(vec3<bool>(false, arg_0.a.a, var_0.x), vec3<bool>(var_0.x, arg_0.b.x, var_0.x), false), !vec3<bool>(false, var_0.x, var_0.x), var_0.x), vec3<bool>(!var_0.x, !arg_0.a.a, true), !select(vec3<bool>(arg_0.a.a, false, var_0.x), vec3<bool>(false, var_0.x, false), true)), !(!(!vec3<bool>(true, var_0.x, var_0.x)))), vec3<bool>(true, true, arg_0.a.a));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(arg_0.c.x))));
    var_0 = select(!vec3<bool>(false, any(vec4<bool>(var_0.x, true, false, true)), true), vec3<bool>(var_0.x, (arg_0.a.b.x <= _wgslsmith_div_f32(-2436f, 1375f)) || var_0.x, 932f <= arg_0.a.b.x), arg_0.b.x);
    var var_2 = u_input.b;
    return _wgslsmith_f_op_f32(-arg_0.a.b.x) > 670f;
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = ~(~(1i >> (_wgslsmith_sub_u32(u_input.a, ~u_input.b.x) % 32u)));
    var_0 = _wgslsmith_mod_i32(select(-1i, 1i, any(vec3<bool>(func_3(Struct_4(Struct_2(arg_0.x, vec2<f32>(466f, -2183f), Struct_1(55206u, vec4<i32>(-36530i, -32854i, -1i, 2147483647i))), vec2<bool>(arg_0.x, arg_0.x), vec4<f32>(214f, 1299f, -364f, 938f)), -18438i), true, all(vec2<bool>(true, true))))), -2147483647i);
    var_0 = ~38639i;
    let var_1 = true;
    var_0 = ~abs(reverseBits(~firstTrailingBit(36716i)));
    return Struct_3(~u_input.a << (23299u % 32u), Struct_1(15538u, ~(-vec4<i32>(-15955i, -2147483647i, -1i, 11850i))), _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_clamp_i32(1i, 0i, 22485i), 36340i) >> (min(u_input.b.x, 60691u) % 32u), max(-1i, -abs(1i))), Struct_2(any(!vec4<bool>(true, arg_0.x, false, var_1)) || any(vec2<bool>(true, true)), vec2<f32>(1000f, _wgslsmith_f_op_f32(trunc(622f))), Struct_1(u_input.b.x, vec4<i32>(-1i, 0i, i32(-1i) * -1i, -19273i))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: vec2<f32>, arg_3: Struct_4) -> Struct_2 {
    var var_0 = arg_0;
    var var_1 = Struct_3(48562u | ~min(var_0.a, arg_0.b.a ^ 27312u), Struct_1(4294967295u, reverseBits(arg_3.a.c.b) ^ arg_3.a.c.b), 37995i, arg_3.a);
    let var_2 = Struct_3(34718u, Struct_1(arg_3.a.c.a << (~(~0u) % 32u), vec4<i32>(arg_0.b.b.x, _wgslsmith_sub_i32(arg_0.c, arg_0.d.c.b.x), arg_0.c, -arg_3.a.c.b.x) ^ ~_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 23458i, -2147483647i, -37578i), var_1.d.c.b, vec4<i32>(2147483647i, -1i, arg_0.c, arg_3.a.c.b.x))), arg_0.d.c.b.x, func_2(vec2<bool>(all(!arg_1.zwz), any(vec4<bool>(true, arg_0.d.a, arg_0.d.a, arg_0.d.a)) || any(arg_1))).d);
    var var_3 = var_2.d.c;
    var_3 = arg_3.a.c;
    return arg_0.d;
}

fn func_5(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec4<bool>, arg_3: Struct_1) -> i32 {
    let var_0 = Struct_2(func_3(Struct_4(arg_0, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-702f, arg_1.x, arg_0.b.x, arg_1.x) - arg_1))), _wgslsmith_sub_i32(func_4(Struct_3(4294967295u, arg_3, arg_3.b.x, Struct_2(arg_0.a, vec2<f32>(-752f, -714f), Struct_1(30827u, vec4<i32>(arg_3.b.x, 2147483647i, -1i, arg_0.c.b.x)))), select(arg_2, arg_2, arg_2), _wgslsmith_f_op_vec2_f32(arg_1.yw * vec2<f32>(1000f, 1587f)), Struct_4(arg_0, arg_2.yz, vec4<f32>(-1000f, arg_0.b.x, 256f, arg_1.x))).c.b.x, ~(~arg_0.c.b.x))), vec2<f32>(1042f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 339f) * func_4(Struct_3(arg_0.c.a, Struct_1(102913u, arg_0.c.b), 18455i, Struct_2(arg_0.a, vec2<f32>(arg_0.b.x, 386f), arg_0.c)), vec4<bool>(true, arg_2.x, arg_0.a, arg_2.x), arg_1.xw, Struct_4(Struct_2(arg_2.x, arg_0.b, arg_3), arg_2.yw, arg_1)).b.x))), Struct_1(0u, arg_0.c.b));
    let var_1 = _wgslsmith_clamp_vec2_u32(vec2<u32>(func_2(vec2<bool>(false, false)).b.a, reverseBits(~82297u)), u_input.b.xy, u_input.b.xx);
    let var_2 = arg_3;
    let var_3 = reverseBits(reverseBits(~vec3<i32>(-37581i, -14411i, var_2.b.x)));
    var var_4 = Struct_3(0u, arg_3, _wgslsmith_dot_vec4_i32(vec4<i32>(~func_4(Struct_3(1u, arg_0.c, -69056i, Struct_2(true, var_0.b, var_2)), vec4<bool>(false, false, var_0.a, var_0.a), arg_0.b, Struct_4(arg_0, vec2<bool>(true, var_0.a), vec4<f32>(arg_0.b.x, 2029f, -1000f, var_0.b.x))).c.b.x, arg_3.b.x, ~var_0.c.b.x, max(_wgslsmith_mult_i32(-1i, 2147483647i), func_2(vec2<bool>(arg_0.a, var_0.a)).b.b.x)), var_0.c.b), Struct_2(var_0.a & arg_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1374f, -220f))), Struct_1(4294967295u, -select(vec4<i32>(var_2.b.x, 0i, var_2.b.x, var_3.x), vec4<i32>(var_0.c.b.x, var_3.x, 1i, arg_3.b.x), vec4<bool>(false, false, false, arg_2.x)))));
    return 2147483647i;
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: bool, arg_3: u32) -> Struct_2 {
    let var_0 = arg_1.x >> (firstLeadingBit(firstTrailingBit(arg_3)) % 32u);
    var var_1 = select(_wgslsmith_add_i32(func_5(func_4(func_2(vec2<bool>(arg_2, true)), vec4<bool>(arg_2, false, arg_2, false), vec2<f32>(383f, -198f), Struct_4(Struct_2(arg_2, arg_0, Struct_1(49936u, vec4<i32>(-45472i, 25612i, -44788i, 20666i))), vec2<bool>(arg_2, false), vec4<f32>(-1243f, arg_0.x, -1306f, -1033f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1605f), _wgslsmith_f_op_f32(max(arg_0.x, -1096f)), func_4(Struct_3(arg_3, Struct_1(u_input.a, vec4<i32>(1i, -1i, -45195i, -8636i)), -16628i, Struct_2(false, arg_0, Struct_1(var_0, vec4<i32>(-9527i, 0i, -44229i, 42619i)))), vec4<bool>(true, arg_2, true, true), vec2<f32>(1000f, 507f), Struct_4(Struct_2(arg_2, vec2<f32>(433f, -211f), Struct_1(1u, vec4<i32>(-11310i, -1i, 2147483647i, -1i))), vec2<bool>(false, arg_2), vec4<f32>(-1067f, arg_0.x, 788f, 402f))).b.x, _wgslsmith_div_f32(arg_0.x, arg_0.x)), !(!vec4<bool>(arg_2, false, arg_2, arg_2)), func_4(Struct_3(arg_1.x, Struct_1(arg_1.x, vec4<i32>(26064i, 2147483647i, -1i, 20983i)), -2147483647i, Struct_2(arg_2, vec2<f32>(arg_0.x, arg_0.x), Struct_1(arg_1.x, vec4<i32>(-1i, 2147483647i, 30951i, -75362i)))), vec4<bool>(false, arg_2, true, true), arg_0, Struct_4(Struct_2(arg_2, arg_0, Struct_1(112669u, vec4<i32>(43143i, 2147483647i, 35947i, 1i))), vec2<bool>(arg_2, true), vec4<f32>(arg_0.x, -798f, 186f, arg_0.x))).c), _wgslsmith_dot_vec2_i32(vec2<i32>(-6353i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -8602i, -51270i), vec3<i32>(1i, -12552i, -25625i))), vec2<i32>(25487i, ~(-15255i)))), -(~1i), !func_4(func_2(vec2<bool>(arg_2, false)), vec4<bool>(false, arg_2, !arg_2, true | arg_2), arg_0, Struct_4(Struct_2(true, arg_0, Struct_1(var_0, vec4<i32>(1i, -2147483647i, 29551i, -18350i))), !vec2<bool>(arg_2, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1086f, -1253f, 958f, -845f) * vec4<f32>(-1112f, 336f, arg_0.x, arg_0.x)))).a);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1387f), _wgslsmith_f_op_f32(arg_0.x + 1000f)) != _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) - arg_0.x)))));
    var_1 = 1i;
    var var_3 = Struct_1(1u, vec4<i32>(-1i) * -(~firstTrailingBit(vec4<i32>(2147483647i, 0i, -1i, -21279i))));
    return func_2(select(!select(select(vec2<bool>(true, arg_2), vec2<bool>(var_2, false), true), vec2<bool>(true, true), var_2), select(!select(vec2<bool>(arg_2, false), vec2<bool>(false, false), false), !vec2<bool>(arg_2, arg_2), all(vec2<bool>(var_2, true))), true)).d;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_4, arg_2: i32, arg_3: Struct_3) -> vec4<f32> {
    let var_0 = arg_3.d.b.x;
    var var_1 = ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 25110u) | ~vec2<u32>(u_input.a, u_input.b.x), vec2<u32>(0u, arg_3.a)));
    let var_2 = func_2(arg_1.b);
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_6(Struct_1(u_input.a, max(vec4<i32>(4205i, -26231i, -1i, 15048i), vec4<i32>(-39846i, 20073i, -2147483647i, 2147483647i))), Struct_4(func_1(vec2<f32>(656f, 1000f), u_input.b.yz, true, 0u), vec2<bool>(false, false), _wgslsmith_f_op_vec4_f32(vec4<f32>(-139f, 1954f, 2699f, 323f) - vec4<f32>(1067f, -613f, -456f, -238f))), _wgslsmith_add_i32(10929i, -1i) << (~u_input.b.x % 32u), Struct_3(4294967295u, func_2(vec2<bool>(false, false)).d.c, abs(-28460i), Struct_2(true, vec2<f32>(-1059f, 320f), Struct_1(u_input.b.x, vec4<i32>(-2147483647i, -1i, -1i, 16034i))))))));
    let var_1 = Struct_4(func_4(func_2(vec2<bool>(true, true)), vec4<bool>(false, !func_4(Struct_3(u_input.a, Struct_1(u_input.b.x, vec4<i32>(1i, -81471i, -16396i, -52015i)), 1i, Struct_2(true, vec2<f32>(var_0.x, var_0.x), Struct_1(49358u, vec4<i32>(31946i, 2147483647i, 16783i, -2147483647i)))), vec4<bool>(true, true, true, true), vec2<f32>(var_0.x, var_0.x), Struct_4(Struct_2(false, vec2<f32>(var_0.x, 145f), Struct_1(53659u, vec4<i32>(0i, -49465i, 69967i, -1i))), vec2<bool>(true, true), var_0)).a, any(vec3<bool>(true, true, true)), !all(vec3<bool>(true, false, true))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(select(-1926f, 139f, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, 516f), vec2<f32>(870f, -1738f)))), Struct_4(Struct_2(false, _wgslsmith_f_op_vec2_f32(-var_0.xz), func_1(vec2<f32>(var_0.x, -1131f), u_input.b.zy, true, 27456u).c), select(vec2<bool>(false, false), vec2<bool>(true, true), select(false, false, false)), _wgslsmith_f_op_vec4_f32(func_6(func_1(vec2<f32>(var_0.x, var_0.x), u_input.b.xz, true, 0u).c, Struct_4(Struct_2(true, var_0.xy, Struct_1(u_input.b.x, vec4<i32>(-57998i, 34757i, 0i, -67510i))), vec2<bool>(true, true), var_0), _wgslsmith_mod_i32(6319i, 1i), Struct_3(73038u, Struct_1(u_input.b.x, vec4<i32>(13381i, -28282i, -77536i, -34985i)), -74064i, Struct_2(false, vec2<f32>(-1047f, var_0.x), Struct_1(25822u, vec4<i32>(22544i, -18938i, 1i, 0i)))))))), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(false, true, true, false))), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(func_3(Struct_4(Struct_2(false, var_0.xz, Struct_1(u_input.a, vec4<i32>(-10359i, 35377i, 1i, -21097i))), vec2<bool>(false, false), vec4<f32>(1000f, 182f, 441f, var_0.x)), 2147483647i), u_input.a <= abs(1798u)), true & (_wgslsmith_f_op_f32(-var_0.x) != _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-var_0), var_0, !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, true))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.c.x)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.c.a, 4294967295u, var_1.a.c.a), vec3<u32>(var_1.a.c.a, u_input.b.x, var_1.a.c.a)), 4294967295u), any(select(vec3<bool>(var_1.b.x, false, true), vec3<bool>(false, var_1.a.a, var_1.a.a), vec3<bool>(var_1.a.a, true, true))), u_input.a).b.x, var_1.c.x), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(var_1.c.wy, vec2<f32>(var_1.c.x, -584f)), _wgslsmith_div_vec2_f32(var_1.c.yw, var_1.a.b), var_1.b))))))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.wy) * var_0.wx)) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(func_2(var_1.b).d.b.x, -1055f), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 272f) - var_1.a.b), !var_1.b))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.zx, var_0.zy, var_1.a.a)) * vec2<f32>(var_2.x, 1142f))) * _wgslsmith_f_op_vec2_f32(var_1.c.xw * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-2386f, var_2.x), vec2<f32>(-924f, -107f)))))));
    let var_3 = func_2(var_1.b);
    var var_4 = Struct_2(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.a.b.x, var_2.x) - var_0.zw))), Struct_1(~15203u, vec4<i32>(select(_wgslsmith_mod_i32(var_1.a.c.b.x, var_1.a.c.b.x), func_4(Struct_3(var_3.d.c.a, var_3.d.c, 35444i, var_1.a), vec4<bool>(true, var_1.b.x, true, var_1.b.x), var_0.xw, Struct_4(Struct_2(true, vec2<f32>(193f, 168f), var_1.a.c), vec2<bool>(var_3.d.a, var_3.d.a), var_1.c)).c.b.x, all(vec2<bool>(var_1.b.x, var_1.b.x))), abs(max(2147483647i, 36518i)), 1i, 0i)));
    var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(var_0.yx, var_1.c.zw, !(!vec2<bool>(var_1.a.a, var_4.a)))), vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -719f))), func_4(Struct_3(1u, Struct_1(10563u, vec4<i32>(16904i, 2617i, var_4.c.b.x, var_4.c.b.x)), ~var_4.c.b.x, var_3.d), !select(vec4<bool>(var_4.a, var_4.a, var_1.b.x, var_4.a), vec4<bool>(var_3.d.a, false, var_1.a.a, true), vec4<bool>(var_3.d.a, var_1.a.a, var_3.d.a, var_4.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.xx + var_3.d.b)), Struct_4(Struct_2(false, var_1.a.b, var_1.a.c), !vec2<bool>(var_4.a, var_1.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1718f, 297f, var_1.a.b.x, var_1.c.x)))).b.x), select(var_1.b, !vec2<bool>(true, select(true, var_3.d.a, var_3.d.a)), var_1.b.x)));
    let var_5 = all(vec2<bool>(~_wgslsmith_mult_u32(var_4.c.a, 51669u) >= max(~26526u, u_input.a), false));
    let x = u_input.a;
    s_output = StorageBuffer(0i, vec2<i32>(7698i, -(~var_1.a.c.b.x)));
}

