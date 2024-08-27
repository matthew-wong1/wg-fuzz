struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_2(arg_0: vec4<bool>) -> bool {
    var var_0 = ~(~51653u);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1082f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-709f + -1528f), 1255f))) * 1787f));
    var var_2 = (~_wgslsmith_div_i32(24388i, u_input.b.x) | _wgslsmith_add_i32(20467i, -_wgslsmith_div_i32(u_input.a.x, u_input.b.x))) >> (24038u % 32u);
    var var_3 = arg_0.wxx;
    var var_4 = ~vec4<u32>(4294967295u, 1u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 0u, 28773u), vec3<u32>(398u, 82488u, 5505u)), reverseBits(1u), ~19815u), vec3<u32>(~74120u, _wgslsmith_mod_u32(7946u, 30741u), ~1u)));
    return true;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> u32 {
    return 1u;
}

fn func_4(arg_0: u32) -> Struct_1 {
    let var_0 = u_input.b.x;
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-366f, -499f, 1371f, 1000f), vec4<f32>(-330f, -255f, -955f, -2064f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1888f, -1726f, -404f, -1528f))))))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2145f, 1273f, -1153f, 1135f) * vec4<f32>(-2066f, 2537f, 1018f, -839f)))) * vec4<f32>(_wgslsmith_f_op_f32(-1635f - 1052f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(select(234f, -1000f, true)), 867f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-261f, -461f, -457f, -969f))))));
    var var_2 = -_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~(vec2<i32>(u_input.a.x, -1i) & u_input.a.zx), vec2<i32>(var_0, var_0)), _wgslsmith_clamp_vec2_i32(u_input.a.zz, abs(select(u_input.a.xy, vec2<i32>(u_input.a.x, 0i), vec2<bool>(true, false))), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0, u_input.a.x), u_input.b.xw), vec2<i32>(u_input.a.x, var_0), firstTrailingBit(vec2<i32>(-1i, var_0)))));
    var var_3 = var_1.x;
    var var_4 = var_1.xy;
    return Struct_1(abs(_wgslsmith_div_u32(0u, 4294967295u)), abs(u_input.b.xww), ~vec4<u32>(~0u, arg_0, ~arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_0, 78054u), vec3<u32>(1u, arg_0, 15769u))) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(abs(vec4<u32>(100275u, arg_0, 1u, 4294967295u)), vec4<u32>(66375u, 0u, arg_0, arg_0)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, arg_0, arg_0, arg_0), vec4<u32>(48658u, arg_0, 1u, arg_0)) ^ ~vec4<u32>(arg_0, 4294967295u, arg_0, 0u), vec4<u32>(_wgslsmith_clamp_u32(arg_0, 953u, 1u), 0u, ~1u, _wgslsmith_mod_u32(arg_0, arg_0))) % vec4<u32>(32u)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-824f * -799f), _wgslsmith_f_op_f32(sign(-665f)), 1026f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1533f, 457f, 1483f)))))));
    var var_1 = !select(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true))), !(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))), arg_0.a > arg_0.a);
    let var_2 = ~_wgslsmith_div_u32(arg_1.c.x, 30425u);
    var var_3 = Struct_1(_wgslsmith_clamp_u32(~_wgslsmith_add_u32(_wgslsmith_div_u32(var_2, 0u), _wgslsmith_mult_u32(4294967295u, var_2)), _wgslsmith_div_u32(func_3(arg_0, all(vec4<bool>(true, var_1.x, false, true)), true), 1u), _wgslsmith_dot_vec3_u32(arg_0.c.ywz, countOneBits(arg_1.c.zyw))), vec3<i32>(-2147483647i, u_input.b.x, -arg_1.b.x) << ((reverseBits(arg_1.c.wzz) & vec3<u32>(select(29123u, 0u, var_1.x), var_2 << (arg_0.c.x % 32u), _wgslsmith_sub_u32(4524u, var_2))) % vec3<u32>(32u)), arg_1.c);
    var var_4 = Struct_1(_wgslsmith_sub_u32(~(_wgslsmith_div_u32(arg_1.c.x, var_2) ^ _wgslsmith_sub_u32(arg_1.a, 1u)), 39586u), var_3.b, ~(~(~max(var_3.c, vec4<u32>(arg_1.a, 0u, arg_1.a, 3833u)))));
    return _wgslsmith_f_op_f32(-var_0.x);
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1219f)));
    var_0 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3))));
    var_0 = _wgslsmith_f_op_f32(func_5(func_4(func_3(Struct_1(~67719u, vec3<i32>(arg_2, -2147483647i, 748i) & vec3<i32>(arg_2, 2147483647i, -1i), ~vec4<u32>(4294967295u, 4294967295u, 0u, 47476u)), func_2(arg_0), arg_0.x)), Struct_1(1u >> (~(~0u) % 32u), u_input.a.ywx, select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 4294967295u, 47483u), select(arg_0, arg_0, vec4<bool>(true, false, arg_0.x, arg_0.x))) & vec4<u32>(68573u, ~4294967295u, 40422u, countOneBits(9447u)))));
    var var_1 = true;
    var var_2 = firstTrailingBit(firstLeadingBit(min(1u, countOneBits(15589u))));
    return arg_0.yyw;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(1i, u_input.a.x << (~1u % 32u), firstLeadingBit(1i), 52004i);
    var var_1 = var_0.xz;
    var var_2 = select(vec4<bool>(_wgslsmith_f_op_f32(select(-815f, -488f, false)) <= _wgslsmith_f_op_f32(-141f * -1020f), !(false || select(false, true, false)), any(select(func_1(vec4<bool>(false, false, false, true), vec4<f32>(-674f, 1000f, -381f, -1708f), var_1.x, 614f), vec3<bool>(false, false, false), vec3<bool>(true, true, true))), select(false, all(func_1(vec4<bool>(false, false, false, false), vec4<f32>(602f, -550f, -973f, -1000f), u_input.b.x, 836f).yx), false)), !(!vec4<bool>(select(true, true, true), true, true, false)), select(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), true), true), vec4<bool>(false, false, any(vec4<bool>(true, false, true, false)), false), true), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true)), vec4<bool>(true, any(vec2<bool>(true, true)), all(vec4<bool>(false, false, true, false)), true), vec4<bool>(true, true, false, true)), true));
    var var_3 = select(vec2<bool>(!(!(!var_2.x)), u_input.b.x >= -22058i), vec2<bool>(false, false), !select(var_2.xz, select(vec2<bool>(var_2.x, var_2.x), var_2.xz, var_2.xz), var_2.wz));
    var var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1382f, _wgslsmith_f_op_f32(f32(-1f) * -1277f), -1085f, -289f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(step(-132f, 156f)), -1059f, _wgslsmith_div_f32(519f, 509f), 887f))));
    let var_5 = Struct_1(~firstTrailingBit(min(firstTrailingBit(60190u), ~1u)), _wgslsmith_clamp_vec3_i32(var_0.zyw | countOneBits(vec3<i32>(u_input.b.x, -1i, var_0.x) << (vec3<u32>(9304u, 4941u, 1u) % vec3<u32>(32u))), -u_input.b.xxx, ~select(vec3<i32>(-1i, -24372i, 0i), -u_input.b.zxz, false)), ~vec4<u32>(1u, 1u, 1u, 1u));
    let var_6 = ~var_5.c.x == ~(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, 1u), 14455u) & ~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_5.a, var_5.a), vec3<u32>(1u, 0u, var_5.c.x)));
    let var_7 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-287f, var_4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(107f, 2202f) * vec2<f32>(-153f, 164f)), vec2<f32>(402f, var_4.x), all(vec4<bool>(var_3.x, var_2.x, false, false)))) - vec2<f32>(_wgslsmith_f_op_f32(step(-701f, var_7.x)), -1905f))), var_4.x, var_0.x & ~(0i >> (var_5.c.x % 32u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, 1206f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -463f)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.x, var_7.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1006f, -2102f)))))));
}

