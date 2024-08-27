struct Struct_1 {
    a: vec4<u32>,
    b: u32,
    c: vec2<bool>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: bool, arg_1: bool) -> u32 {
    let var_0 = Struct_1(abs(vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_clamp_u32(47072u & firstTrailingBit(reverseBits(54401u)), 1u, _wgslsmith_sub_u32(4294967295u, ~55193u >> (_wgslsmith_clamp_u32(904u, 29713u, 1u) % 32u))), !select(vec2<bool>(true, true), select(vec2<bool>(false, true), !vec2<bool>(true, arg_1), arg_1 || arg_1), arg_0), vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2122f - 734f))), _wgslsmith_div_f32(_wgslsmith_div_f32(-536f, _wgslsmith_f_op_f32(select(1055f, 786f, arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -791f))));
    var var_1 = var_0;
    var var_2 = var_0;
    var_2 = Struct_1(~select(vec4<u32>(0u, var_2.a.x, abs(var_0.a.x), ~1284u), firstLeadingBit(var_1.a >> (vec4<u32>(var_2.a.x, 4294967295u, 4294967295u, 4294967295u) % vec4<u32>(32u))), var_2.c.x), var_2.b, !select(vec2<bool>(arg_1, !var_1.c.x), var_2.c, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(430f, var_1.d.x, -1000f))) * var_0.d)));
    var var_3 = u_input.a.x;
    return 19470u;
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    let var_0 = ~func_3(arg_1.c.x, all(select(!vec2<bool>(arg_1.c.x, arg_1.c.x), !vec2<bool>(arg_1.c.x, false), select(arg_1.c, arg_1.c, true))));
    var var_1 = arg_1.c;
    var var_2 = u_input.a.x;
    var var_3 = arg_1;
    var_1 = select(select(select(vec2<bool>(true, true), vec2<bool>(u_input.a.x > 0i, arg_1.c.x), select(!var_1.x, true, u_input.a.x != u_input.a.x)), var_3.c, !(!var_3.c)), select(!(!vec2<bool>(arg_1.c.x, var_3.c.x)), arg_1.c, any(select(vec2<bool>(true, arg_1.c.x), select(vec2<bool>(var_3.c.x, var_1.x), vec2<bool>(false, arg_1.c.x), var_3.c.x), var_3.b == arg_0))), !select(!var_3.c, select(select(var_3.c, vec2<bool>(false, var_1.x), var_1.x), vec2<bool>(true, var_1.x), true), true));
    return var_1.x;
}

fn func_1(arg_0: bool, arg_1: bool, arg_2: vec4<f32>, arg_3: u32) -> Struct_1 {
    var var_0 = select(!select(vec4<bool>(true, !arg_0, false, select(arg_0, arg_1, arg_0)), vec4<bool>(all(vec2<bool>(arg_1, true)), arg_0, all(vec3<bool>(arg_0, true, arg_1)), func_2(arg_3, Struct_1(vec4<u32>(1u, arg_3, arg_3, arg_3), 1u, vec2<bool>(arg_1, arg_0), vec3<f32>(arg_2.x, arg_2.x, arg_2.x)), vec2<u32>(arg_3, arg_3))), select(!vec4<bool>(arg_1, arg_1, arg_0, arg_0), vec4<bool>(arg_0, arg_1, arg_0, arg_0), !vec4<bool>(arg_1, true, arg_1, true))), !select(select(!vec4<bool>(true, arg_0, arg_0, arg_0), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_0, arg_1, false), true), select(vec4<bool>(false, true, true, arg_1), vec4<bool>(arg_1, arg_1, true, false), true)), select(vec4<bool>(arg_0, false, true, arg_1), !vec4<bool>(arg_0, true, arg_1, arg_0), all(vec2<bool>(false, arg_0))), !arg_0), func_2((firstTrailingBit(8612u) & func_3(arg_0, arg_0)) << (arg_3 % 32u), Struct_1(vec4<u32>(_wgslsmith_sub_u32(arg_3, arg_3), arg_3 << (4294967295u % 32u), ~10902u, arg_3), 1u | _wgslsmith_div_u32(0u, arg_3), !select(vec2<bool>(true, true), vec2<bool>(true, arg_1), false), vec3<f32>(arg_2.x, arg_2.x, _wgslsmith_f_op_f32(284f * 123f))), vec2<u32>(~(~arg_3), 4294967295u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-789f, -395f) + vec2<f32>(arg_2.x, -2002f))))))));
    let var_2 = Struct_1(vec4<u32>(~_wgslsmith_mult_u32(arg_3, 75303u), min(arg_3, arg_3), _wgslsmith_sub_u32(_wgslsmith_mod_u32(~27893u, arg_3), ~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_3, 4786u), vec2<u32>(arg_3, 35892u))), 3420u), arg_3, select(var_0.xy, !var_0.wx, select(vec2<bool>(arg_0 && arg_0, false), !(!var_0.zw), var_0.xy)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_2.zwz, vec3<f32>(arg_2.x, 102f, var_1.x)) * _wgslsmith_div_vec3_f32(arg_2.xyz, arg_2.wyz)) + arg_2.yww) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(arg_2.x, -879f, -178f))) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, arg_2.x, arg_2.x), arg_2.wzw, var_0.xzz))), vec3<f32>(335f, _wgslsmith_f_op_f32(255f + arg_2.x), var_1.x))));
    let var_3 = ~(-select(_wgslsmith_sub_vec3_i32(-vec3<i32>(13793i, 1i, 45344i), ~vec3<i32>(u_input.a.x, 3393i, u_input.a.x)), -vec3<i32>(20303i, u_input.a.x, u_input.a.x) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x)), all(vec4<bool>(true, true, true, true))));
    var_0 = vec4<bool>(true, !all(vec3<bool>(all(vec3<bool>(var_0.x, arg_0, false)), !var_2.c.x, select(false, arg_1, true))), false, any(vec2<bool>(true & any(var_0.wyz), true)));
    return var_2;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<f32>, arg_2: vec4<i32>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(arg_3.a, firstTrailingBit(_wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(arg_3.b), ~1u, select(arg_3.b, 101009u, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_3.b, 0u, arg_3.a.x, 40611u), vec4<u32>(arg_3.b, 4294967295u, 1u, 4294967295u)) >> (~arg_3.b % 32u))), vec2<bool>(!func_2(~1u, Struct_1(arg_3.a, 1u, vec2<bool>(true, arg_3.c.x), arg_1.zzx), _wgslsmith_mult_vec2_u32(arg_3.a.zx, arg_3.a.wz)), arg_3.c.x), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -722f), _wgslsmith_f_op_f32(max(1960f, _wgslsmith_f_op_f32(trunc(2655f)))), 690f));
    var var_1 = !arg_3.c;
    let var_2 = vec3<i32>(max(arg_2.x, reverseBits(arg_0.x)), -1i, ~(i32(-1i) * -91165i));
    var_0 = func_1(arg_3.c.x, false, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -820f) * arg_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(arg_1.x, 1127f)))), -1000f)), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.d.x)))))), abs(_wgslsmith_dot_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(25495u, 38483u), arg_3.a.xx), vec2<u32>(~39257u, 71720u))));
    var_1 = arg_3.c;
    return arg_3;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: f32) -> f32 {
    var var_0 = 0u ^ arg_2.a.x;
    let var_1 = u_input.a.x;
    var var_2 = vec3<bool>(true, (~(~var_1) >> (38734u % 32u)) <= _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, var_1), ~u_input.a.x), u_input.a), true & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1199f)) > func_4(vec3<i32>(u_input.a.x, 16334i, var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(938f, 970f, arg_0.d.x, arg_0.d.x)), vec4<i32>(var_1, u_input.a.x, 2147483647i, u_input.a.x), func_4(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), arg_1, vec4<i32>(u_input.a.x, var_1, -1177i, var_1), Struct_1(arg_2.a, 1u, arg_2.c, arg_0.d))).d.x));
    var_0 = ~1u;
    var var_3 = arg_0.a.x;
    return arg_0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -665f), -556f)))), _wgslsmith_f_op_f32(func_5(func_4(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(0i, -2147483647i)), u_input.a.x & -1i, -62445i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-204f, 480f, -1762f, -997f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1019f, -724f, 1000f, 896f) + vec4<f32>(1000f, -151f, 123f, 766f))), vec4<i32>(-2147483647i, firstTrailingBit(-12196i), -u_input.a.x, max(u_input.a.x, u_input.a.x)), func_1(any(vec4<bool>(false, false, true, false)), true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1119f, 202f, -1000f, 362f)), ~57921u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-988f, -295f, -1000f, -628f), vec4<f32>(-626f, -1000f, -1284f, -337f), false))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1738f, 326f, -831f, 388f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -556f, -1172f, 1000f) * vec4<f32>(-1300f, -1607f, -555f, -478f)))), func_4(-vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1544f, -562f, -1154f, -442f) + vec4<f32>(-1217f, -1000f, -1391f, -1000f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(283f, 1818f, 272f, 637f), vec4<f32>(-1298f, -1277f, 432f, 654f)))), _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 13964i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 0i, 2147483647i)), vec4<i32>(u_input.a.x, -5380i, u_input.a.x, 29022i)), Struct_1(vec4<u32>(12301u, 26206u, 0u, 1u), 95661u, vec2<bool>(true, true), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(830f, 697f, 1543f), vec3<f32>(301f, 156f, -1868f))))), _wgslsmith_f_op_f32(max(-1075f, _wgslsmith_f_op_f32(969f - -794f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(153f)), 336f)))));
    let var_1 = u_input.a;
    let var_2 = Struct_1(func_1(any(vec2<bool>(true, true)), func_4(~vec3<i32>(u_input.a.x, var_1.x, -15626i) & -vec3<i32>(-2147483647i, 32546i, -2147483647i), vec4<f32>(func_1(false, false, vec4<f32>(var_0.x, var_0.x, 1000f, var_0.x), 4294967295u).d.x, _wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(-var_0.x), var_0.x), firstLeadingBit(firstTrailingBit(vec4<i32>(var_1.x, -4451i, 58133i, 1i))), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(62390u, 4294967295u, 10989u, 49060u), vec4<u32>(1u, 1u, 73922u, 1u)), firstLeadingBit(1u), func_1(false, false, vec4<f32>(1000f, var_0.x, -1067f, 1261f), 5783u).c, _wgslsmith_f_op_vec3_f32(-var_0))).c.x, vec4<f32>(var_0.x, -2418f, 942f, _wgslsmith_f_op_f32(exp2(var_0.x))), firstLeadingBit(56823u)).a, func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(u_input.a.x, var_1.x, 1i)), vec3<i32>(2147483647i, var_1.x, 2147483647i) & vec3<i32>(var_1.x, u_input.a.x, -2147483647i)), -select(vec3<i32>(u_input.a.x, var_1.x, -1i), vec3<i32>(u_input.a.x, u_input.a.x, var_1.x), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1360f, 1027f, -132f, 239f))) - vec4<f32>(_wgslsmith_f_op_f32(817f + -668f), 1000f, 1000f, var_0.x)), -vec4<i32>(0i, -18825i, -21989i, var_1.x), Struct_1(~(~vec4<u32>(49415u, 15440u, 1u, 1u)), 1u, select(vec2<bool>(true, false), select(vec2<bool>(false, true), vec2<bool>(true, false), true), false), func_1(true, all(vec4<bool>(false, true, false, true)), vec4<f32>(-772f, -1450f, var_0.x, var_0.x), 34668u << (0u % 32u)).d)).a.x, !vec2<bool>(_wgslsmith_f_op_f32(var_0.x * 1171f) < _wgslsmith_f_op_f32(var_0.x + var_0.x), false), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0)));
    let var_3 = Struct_1(firstLeadingBit(~abs(~vec4<u32>(var_2.a.x, var_2.b, var_2.a.x, var_2.b))), _wgslsmith_mod_u32(var_2.a.x, _wgslsmith_dot_vec2_u32(var_2.a.wy, vec2<u32>(var_2.a.x, var_2.a.x >> (var_2.a.x % 32u)))), !func_4(countOneBits(~vec3<i32>(u_input.a.x, 0i, -28656i)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x) - vec4<f32>(var_0.x, -1704f, 2355f, var_2.d.x)), -vec4<i32>(1i, 43375i, var_1.x, var_1.x), Struct_1(firstLeadingBit(vec4<u32>(0u, var_2.b, 365u, var_2.b)), var_2.b, var_2.c, _wgslsmith_f_op_vec3_f32(sign(var_2.d)))).c, _wgslsmith_f_op_vec3_f32(-var_2.d));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~(vec4<i32>(-26353i, 1i, -45273i, -32857i) | vec4<i32>(4067i, 1i, u_input.a.x, var_1.x))) | (-abs(vec4<i32>(25375i, -25832i, u_input.a.x, 25552i)) & _wgslsmith_sub_vec4_i32(vec4<i32>(49379i, 2111i, u_input.a.x, u_input.a.x), abs(vec4<i32>(15334i, -1i, -2147483647i, -38702i)))), -23607i, func_4(~(-min(vec3<i32>(-26337i, -17823i, var_1.x), vec3<i32>(u_input.a.x, -1i, var_1.x))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(1593f, -101f, var_3.d.x, 115f), vec4<f32>(var_3.d.x, var_3.d.x, 695f, -1201f)), vec4<f32>(var_3.d.x, var_0.x, -814f, -351f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-888f, var_3.d.x, 653f, var_2.d.x), vec4<f32>(-346f, 2164f, var_0.x, -946f)))), firstTrailingBit(vec4<i32>(u_input.a.x, ~var_1.x, countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-6653i, var_1.x), vec2<i32>(u_input.a.x, 2147483647i)))), func_1(true, any(select(vec4<bool>(false, var_2.c.x, true, var_2.c.x), vec4<bool>(false, false, var_2.c.x, false), var_3.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.d.x, 845f, var_3.d.x, var_2.d.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-228f, -989f, -667f, -717f))), var_2.b)).a.zx, ~(-min(vec4<i32>(22238i, -2147483647i, u_input.a.x, var_1.x) | vec4<i32>(var_1.x, u_input.a.x, -769i, u_input.a.x), ~vec4<i32>(var_1.x, 1i, 67207i, 16087i))), ~firstTrailingBit(-vec2<i32>(var_1.x, var_1.x)));
}

