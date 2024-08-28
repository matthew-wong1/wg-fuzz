struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> bool {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + -830f), -12808i);
    var var_1 = Struct_1(-4896i, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, max(_wgslsmith_dot_vec4_u32(vec4<u32>(53028u, u_input.c, u_input.c, 1u), vec4<u32>(u_input.a.x, u_input.c, 4294967295u, 0u)), u_input.a.x)), vec2<u32>(u_input.c, u_input.a.x)), !vec4<bool>(false, false, select(true, true, true), true));
    var_1 = Struct_1(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(1i, -3589i, abs(var_1.a)), min(var_0.b & var_0.b, var_0.b)), select(~(reverseBits(vec2<u32>(0u, var_1.b.x)) ^ select(u_input.a, u_input.a, var_1.c.ww)), (vec2<u32>(70404u, 7717u) >> (vec2<u32>(u_input.a.x, var_1.b.x) % vec2<u32>(32u))) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.b.x), min(vec2<u32>(var_1.b.x, u_input.c), vec2<u32>(26542u, u_input.a.x))), any(var_1.c.zxx)), var_1.c);
    let var_2 = Struct_2(Struct_1(abs(var_0.b) & (2147483647i | min(u_input.b.x, -2147483647i)), firstTrailingBit(vec2<u32>(max(82031u, 4294967295u), var_1.b.x)), var_1.c));
    var_1 = var_2.a;
    return !var_2.a.c.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: Struct_3) -> Struct_1 {
    var var_0 = Struct_4(Struct_1(-52179i, ~countOneBits(~u_input.a), vec4<bool>(true, !func_3(), all(vec4<bool>(true, true, true, true)), true)));
    let var_1 = 8855i;
    let var_2 = select(select(var_0.a.c.wxz, !var_0.a.c.zyy, all(var_0.a.c)), var_0.a.c.yxz, vec3<bool>(select(var_0.a.c.x, false, select(false && var_0.a.c.x, -520f < arg_0.x, var_0.a.c.x)), any(var_0.a.c.wx), var_0.a.c.x));
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_2.a, 1975f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - arg_2.a), _wgslsmith_f_op_f32(399f - arg_2.a)) * _wgslsmith_f_op_f32(-720f - _wgslsmith_div_f32(-295f, arg_2.a)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.zy) + arg_0.zz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(682f, -172f) - arg_0.yz))) + vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - 445f), _wgslsmith_f_op_f32(floor(arg_0.x))))));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.x, -673f), vec2<f32>(arg_0.x, 866f), vec2<bool>(var_0.a.c.x, false))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -1158f))))));
    return Struct_1(var_0.a.a, abs(vec2<u32>(0u, u_input.c)), var_0.a.c);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: u32) -> Struct_3 {
    return Struct_3(_wgslsmith_f_op_f32(1184f * -1000f), abs(_wgslsmith_sub_i32(arg_0.a, _wgslsmith_sub_i32(~(-2147483647i), -u_input.b.x))));
}

fn func_5(arg_0: Struct_3, arg_1: vec4<f32>, arg_2: i32, arg_3: Struct_4) -> u32 {
    var var_0 = func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_1)) * arg_1), arg_1, func_4(arg_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -282f)), _wgslsmith_dot_vec3_u32(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(71037u, 25470u, u_input.c), vec3<u32>(0u, arg_3.a.b.x, u_input.a.x), vec3<u32>(u_input.c, 6922u, 1u))), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, u_input.a.x, 1u), reverseBits(vec3<u32>(arg_3.a.b.x, 0u, arg_3.a.b.x)))))).c.yy;
    let var_1 = select(select(select(!(!arg_3.a.c.zwx), !func_2(vec4<f32>(1655f, arg_1.x, 359f, 1907f), arg_1, Struct_3(arg_1.x, u_input.b.x)).c.wzx, arg_3.a.c.xxz), vec3<bool>(all(!arg_3.a.c), var_0.x, any(arg_3.a.c.zx)), select(vec3<bool>(true, any(vec4<bool>(arg_3.a.c.x, false, false, false)), arg_1.x < arg_1.x), arg_3.a.c.ywz, func_3())), arg_3.a.c.yyw, !(!(!func_2(vec4<f32>(arg_1.x, 151f, arg_0.a, 445f), vec4<f32>(-1463f, 269f, arg_1.x, -1000f), Struct_3(arg_1.x, arg_0.b)).c.wzx)));
    var_0 = !arg_3.a.c.zy;
    var_0 = arg_3.a.c.zx;
    let var_2 = -countOneBits(-2147483647i);
    return 80837u;
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec3<bool>) -> Struct_1 {
    var var_0 = firstTrailingBit(u_input.b);
    var_0 = u_input.b;
    let var_1 = min(_wgslsmith_clamp_i32(-2147483647i, _wgslsmith_mod_i32(i32(-1i) * -arg_1.a.a, -var_0.x), -min(-5661i, arg_1.a.a >> (arg_0.a.b.x % 32u))), -1i);
    var var_2 = vec4<u32>(~1u, arg_1.a.b.x | _wgslsmith_mod_u32(1455u, _wgslsmith_div_u32(4749u, arg_1.a.b.x)), _wgslsmith_mod_u32(~u_input.a.x, arg_0.a.b.x), _wgslsmith_mult_u32(func_5(func_4(func_2(vec4<f32>(287f, 862f, -471f, -1062f), vec4<f32>(-383f, 476f, -331f, 1276f), Struct_3(-734f, var_0.x)), -1000f, _wgslsmith_dot_vec2_u32(arg_0.a.b, vec2<u32>(arg_1.a.b.x, 36831u))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(105f, -1118f, 734f, -1881f), vec4<f32>(599f, -1351f, -1034f, -1273f), all(arg_1.a.c))), _wgslsmith_clamp_i32(38570i, -arg_0.a.a, 9219i), Struct_4(arg_0.a)), _wgslsmith_mult_u32(89467u, firstTrailingBit(4294967295u))));
    var var_3 = func_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1345f), -1205f, _wgslsmith_f_op_f32(-733f * _wgslsmith_div_f32(-479f, _wgslsmith_f_op_f32(-1860f + 140f))), _wgslsmith_f_op_f32(1f * 255f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1132f - 326f), -1000f)) - -133f), -276f, _wgslsmith_f_op_f32(floor(-189f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-832f, -2049f))), Struct_3(_wgslsmith_f_op_f32(floor(1709f)), -_wgslsmith_clamp_i32(-1i, var_1, -24158i)));
    return arg_0.a;
}

fn func_6(arg_0: Struct_4, arg_1: Struct_1, arg_2: Struct_5) -> u32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(612f, _wgslsmith_f_op_f32(-1000f * arg_2.a.a)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(613f, arg_2.a.a) * vec2<f32>(2361f, arg_2.a.a))))))) + vec2<f32>(arg_2.a.a, arg_2.a.a));
    var var_1 = arg_2;
    let var_2 = firstTrailingBit(vec2<i32>(u_input.b.x, ~(-2147483647i)));
    let var_3 = func_4(arg_1, var_1.a.a, u_input.a.x);
    let var_4 = !(!arg_1.c.x);
    return func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1488f, var_1.a.a, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.x)) - _wgslsmith_f_op_f32(-arg_2.a.a)), _wgslsmith_f_op_f32(168f + _wgslsmith_div_f32(-413f, arg_2.a.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1631f)))), vec4<f32>(var_0.x, _wgslsmith_f_op_f32(max(-475f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.a)))), _wgslsmith_div_f32(arg_2.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - -531f))), _wgslsmith_div_f32(1762f, _wgslsmith_f_op_f32(sign(arg_2.a.a)))), Struct_3(_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(max(-1084f, _wgslsmith_f_op_f32(-var_3.a))))), firstLeadingBit(~arg_1.a))).b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(_wgslsmith_mod_u32(abs(u_input.c), func_6(Struct_4(Struct_1(-11092i, u_input.a, vec4<bool>(false, true, true, true))), func_1(Struct_2(Struct_1(u_input.b.x, vec2<u32>(u_input.a.x, 0u), vec4<bool>(true, true, true, true))), Struct_4(Struct_1(0i, u_input.a, vec4<bool>(true, false, true, true))), vec3<bool>(true, true, false)), Struct_5(Struct_3(673f, 18146i)))) > u_input.c, true);
    var var_1 = _wgslsmith_mod_vec4_i32(~abs(reverseBits(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -17840i))), select(~(~max(vec4<i32>(0i, 1i, -5466i, 0i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -87080i))), vec4<i32>(-(u_input.b.x >> (4294967295u % 32u)), 30893i, i32(-1i) * -13326i, u_input.b.x), vec4<bool>(true, _wgslsmith_f_op_f32(sign(960f)) == -2058f, true, !var_0.x)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 641f) * 1107f);
    var_0 = func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2, var_2)) - _wgslsmith_f_op_f32(abs(477f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2648f - -1000f) * _wgslsmith_f_op_f32(select(var_2, -847f, true))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2, -212f)), var_2)) + vec4<f32>(_wgslsmith_div_f32(-139f, _wgslsmith_f_op_f32(415f * var_2)), -485f, var_2, -809f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 451f, -857f, var_2) + vec4<f32>(var_2, -983f, -866f, var_2))) * _wgslsmith_div_vec4_f32(vec4<f32>(451f, var_2, var_2, 1382f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(889f, -325f, 599f, 940f), vec4<f32>(455f, var_2, -1083f, 482f))))), _wgslsmith_div_vec4_f32(vec4<f32>(var_2, _wgslsmith_f_op_f32(-var_2), -1261f, _wgslsmith_f_op_f32(-var_2)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-612f, -357f, var_2, 686f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(486f, 671f, var_2, var_2)))), !vec4<bool>(all(vec2<bool>(false, var_0.x)), true, true, false))), Struct_3(_wgslsmith_f_op_f32(min(var_2, var_2)), -38290i)).c.xw;
    var_0 = vec2<bool>(max(var_1.x, ~(-25871i)) == (reverseBits(i32(-1i) * -2147483647i) & var_1.x), var_0.x);
    var var_3 = _wgslsmith_f_op_f32(sign(304f));
    let var_4 = _wgslsmith_f_op_f32(max(2146f, -121f));
    let var_5 = vec3<i32>(u_input.b.x, firstLeadingBit(-(_wgslsmith_clamp_i32(var_1.x, -28429i, u_input.b.x) & 1i)), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_4, abs(vec3<i32>(-1i) * -var_5), -473f, 2147483647i);
}

