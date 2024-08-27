struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = Struct_1(!vec3<bool>(true, !arg_0.a.b.x, arg_0.a.a.x <= firstTrailingBit(arg_0.a.a.x)));
    let var_1 = arg_0;
    var var_2 = var_1.a;
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1188f - _wgslsmith_f_op_f32(select(2378f, -937f, arg_0.a.c.a.x)))), _wgslsmith_f_op_f32(max(802f, _wgslsmith_f_op_f32(trunc(-202f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-447f, 984f))) * _wgslsmith_f_op_f32(f32(-1f) * -538f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), select(var_2.c.a, vec3<bool>(var_2.b.x, all(!arg_0.a.c.a.xx), _wgslsmith_f_op_f32(round(-1729f)) > 697f), !select(var_1.a.b.xwx, vec3<bool>(true, true, arg_0.a.c.a.x), select(arg_0.a.b.xyz, vec3<bool>(false, false, false), var_0.a))), var_1.a.c);
    let var_4 = _wgslsmith_mod_u32(u_input.a.x, ~_wgslsmith_sub_u32(var_1.a.a.x, 80026u) >> (var_1.a.a.x % 32u));
    return arg_0.a.d;
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = Struct_4(vec4<f32>(arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(332f - arg_0) * -303f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))) * arg_0), 277f), vec3<bool>(!(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.b, arg_1, 45140i), u_input.e.zxz) < u_input.c), arg_3.a.c.a.x, arg_3.a.b.x), arg_3.a.c);
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, -507f, -1000f, arg_0) + var_0.a) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1915f, var_0.a.x, arg_0, var_0.a.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, _wgslsmith_f_op_f32(step(470f, -856f)), 127f, _wgslsmith_f_op_f32(f32(-1f) * -537f)))), _wgslsmith_f_op_vec4_f32(exp2(var_0.a)));
    var var_2 = select(vec4<bool>(true, arg_3.a.b.x, all(var_0.c.a), all(select(select(vec4<bool>(true, var_0.c.a.x, arg_3.a.b.x, true), arg_3.a.b, false), !arg_3.a.b, select(arg_3.a.b, vec4<bool>(true, arg_3.a.c.a.x, var_0.b.x, var_0.b.x), false)))), arg_3.a.b, !vec4<bool>(true, false != (var_0.b.x || false), arg_1 == _wgslsmith_add_i32(arg_1, 1i), _wgslsmith_sub_i32(arg_3.c, 18582i) < abs(arg_1)));
    var var_3 = vec3<i32>(arg_1, _wgslsmith_div_i32(0i, _wgslsmith_dot_vec2_i32(u_input.e.wy, vec2<i32>(func_3(Struct_3(Struct_2(vec4<u32>(1u, u_input.a.x, arg_2, 23410u), arg_3.a.b, Struct_1(var_2.zxx), 0i), arg_1, -1i)), u_input.e.x))), 0i);
    let var_4 = arg_3;
    return Struct_2(~vec4<u32>(_wgslsmith_clamp_u32(1u, ~2008u, arg_2), 1u, 0u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(var_4.a.a.x, 4474u, arg_2), vec3<u32>(arg_2, arg_2, 4294967295u))), select(select(select(select(var_4.a.b, vec4<bool>(true, true, arg_3.a.b.x, var_0.b.x), var_0.b.x), vec4<bool>(var_0.b.x, var_0.c.a.x, false, true), 2147483647i == var_3.x), select(var_4.a.b, !var_4.a.b, any(vec4<bool>(false, var_2.x, false, arg_3.a.c.a.x))), vec4<bool>(false, true, arg_3.b < 1i, true)), vec4<bool>(!(!var_4.a.c.a.x), all(arg_3.a.c.a), false == any(vec3<bool>(true, false, false)), false), !arg_3.a.b), Struct_1(vec3<bool>(abs(1i) < firstTrailingBit(var_3.x), (true | var_2.x) & (72168u <= arg_2), all(select(var_2.zzz, vec3<bool>(arg_3.a.c.a.x, arg_3.a.b.x, var_0.b.x), vec3<bool>(var_4.a.c.a.x, false, var_4.a.b.x))))), _wgslsmith_div_i32(_wgslsmith_mod_i32(-2147483647i, 1i), arg_1));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_4(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-1714f)), 340f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(932f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-198f)))), vec4<f32>(1f, 1f, 1f, 1f)), vec3<bool>(true | !func_2(-473f, arg_0.c, arg_1.a.x, arg_0).b.x, arg_2.x, arg_2.x && (u_input.c > _wgslsmith_sub_i32(2147483647i, arg_0.a.d))), func_2(_wgslsmith_f_op_f32(ceil(1348f)), reverseBits(func_2(_wgslsmith_f_op_f32(select(-620f, 429f, arg_0.a.c.a.x)), u_input.b, abs(arg_1.a.x), arg_0).d), u_input.a.x, arg_0).c);
    var var_1 = arg_2.zz;
    var_1 = vec2<bool>(arg_1.b.x, true);
    return arg_1;
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = func_4(Struct_3(func_2(417f, ~(-8063i), 1u, Struct_3(Struct_2(vec4<u32>(57905u, u_input.d, 27222u, 69302u), vec4<bool>(true, true, true, false), Struct_1(vec3<bool>(false, false, true)), u_input.b), -19805i, _wgslsmith_mult_i32(-1i, 1i))), 1i, u_input.c), Struct_2(vec4<u32>(~47155u ^ (1u & u_input.a.x), u_input.d, ~(~57856u), _wgslsmith_dot_vec2_u32(~u_input.a.yx, u_input.a.xx)), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2330f)), u_input.e.x, u_input.d, Struct_3(func_2(-288f, -2147483647i, u_input.a.x, Struct_3(Struct_2(vec4<u32>(8637u, u_input.a.x, 4294967295u, 6457u), vec4<bool>(true, false, false, true), Struct_1(vec3<bool>(true, true, false)), u_input.c), u_input.b, 0i)), ~28212i, reverseBits(-1i))).b, func_2(-1332f, select(~(-2126i), -7610i | u_input.b, any(vec3<bool>(true, false, false))), ~u_input.a.x, Struct_3(func_2(arg_0.x, -1i, u_input.a.x, Struct_3(Struct_2(vec4<u32>(6226u, u_input.d, u_input.d, u_input.a.x), vec4<bool>(true, false, false, true), Struct_1(vec3<bool>(false, true, false)), u_input.e.x), u_input.b, u_input.b)), _wgslsmith_sub_i32(u_input.b, u_input.e.x), 1978i)).c, firstLeadingBit(firstLeadingBit(-36671i << (u_input.a.x % 32u)))), select(select(vec4<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(true, false)), false, true), vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, true), vec4<bool>(true, true, true, true)), !vec4<bool>(any(vec4<bool>(false, false, true, false)), any(vec2<bool>(false, false)), true, true), (~u_input.d > 3191u) || all(func_2(1853f, -17287i, 4294967295u, Struct_3(Struct_2(vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(false, false, true, true), Struct_1(vec3<bool>(false, true, false)), u_input.c), u_input.b, -1i)).b.wyx)), ~select(vec4<i32>(-1i) * -vec4<i32>(u_input.b, u_input.b, u_input.e.x, u_input.e.x), u_input.e, select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), func_2(-659f, u_input.c, u_input.a.x, Struct_3(Struct_2(vec4<u32>(u_input.a.x, 964u, 0u, u_input.d), vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(true, false, false)), -14144i), u_input.e.x, u_input.c)).b)));
    let var_1 = u_input.e.wwy;
    return any(vec3<bool>(true, select(any(var_0.c.a.xz), false, false), select(select(select(var_0.c.a.x, var_0.c.a.x, var_0.c.a.x), var_0.b.x, var_0.c.a.x), false, false != var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 40406i;
    var var_1 = vec4<bool>(true, true, true, (~(~u_input.d) == ~1u) | false);
    let var_2 = var_1.zw;
    var var_3 = 1i;
    let var_4 = Struct_2(vec4<u32>(~firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(29021u, u_input.d, u_input.d), u_input.a)), _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 0u))), ~_wgslsmith_add_u32(~u_input.a.x, 1u), 26612u), !vec4<bool>(func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1528f, 697f, 257f))), var_2.x || false, true, select(any(vec4<bool>(var_2.x, var_2.x, true, true)), true, var_1.x)), Struct_1(var_1.zyy), ~var_0 & abs(_wgslsmith_mod_i32(-1i, ~(-26612i))));
    var_3 = _wgslsmith_clamp_i32(u_input.c, _wgslsmith_mult_i32(u_input.c, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(max(u_input.e, u_input.e), abs(u_input.e)), vec4<i32>(u_input.b, var_4.d, var_0, u_input.b) & vec4<i32>(-1i, u_input.e.x, 34393i, 1526i))), 1i);
    var var_5 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1248f, _wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(273f, -1251f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1190f, 584f)) + _wgslsmith_f_op_f32(sign(270f))))), func_2(-1425f, i32(-1i) * -2147483647i, 71189u, Struct_3(func_4(Struct_3(Struct_2(vec4<u32>(var_4.a.x, 56177u, u_input.d, var_4.a.x), var_4.b, Struct_1(var_1.wwx), 2147483647i), 1i, 0i), var_4, !var_4.b, select(u_input.e, vec4<i32>(-16586i, u_input.e.x, var_4.d, var_4.d), vec4<bool>(var_1.x, true, false, var_1.x))), 2147483647i, var_4.d)).c.a, var_4.c);
    let x = u_input.a;
    s_output = StorageBuffer(19803u, vec3<u32>(var_4.a.x, _wgslsmith_sub_u32(firstTrailingBit(reverseBits(u_input.a.x)), _wgslsmith_sub_u32(u_input.a.x, 53953u) & firstTrailingBit(var_4.a.x)), 16694u), select(_wgslsmith_sub_vec2_u32(~vec2<u32>(var_4.a.x, 1u), var_4.a.zw), vec2<u32>(62893u, reverseBits(var_4.a.x)) | (vec2<u32>(0u, 2543u) ^ max(vec2<u32>(77661u, 4294967295u), vec2<u32>(u_input.a.x, var_4.a.x))), var_4.c.a.x), ~(u_input.a >> (abs(~vec3<u32>(u_input.d, var_4.a.x, 0u)) % vec3<u32>(32u))));
}

