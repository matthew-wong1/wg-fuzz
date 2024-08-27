struct Struct_1 {
    a: i32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<f32>) -> u32 {
    var var_0 = ~vec4<i32>(_wgslsmith_add_i32(10833i, u_input.a), 16728i, ~arg_0.a, _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(-vec3<i32>(1i, -19864i, arg_0.a), vec3<i32>(u_input.a, u_input.a, arg_0.a)), ~(vec3<i32>(-2147483647i, arg_0.a, u_input.a) | vec3<i32>(u_input.a, u_input.a, u_input.a))));
    var_0 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-(arg_0.a | u_input.a), abs(~(-2147483647i)), 1i, countOneBits(arg_0.a)), -abs(-vec4<i32>(-1i, arg_0.a, 1i, -1i))));
    var var_1 = 411f;
    return 1u;
}

fn func_2() -> vec4<u32> {
    let var_0 = vec2<u32>(1u, func_3(Struct_1(-6967i, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1173f, -417f) + vec2<f32>(253f, 1378f))))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1373f + 1239f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), true)), _wgslsmith_f_op_f32(trunc(1493f)))));
    return firstTrailingBit(select(vec4<u32>(34352u, _wgslsmith_add_u32(var_0.x, 4294967295u), 1u, firstLeadingBit(var_0.x)) << (_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x)), ~vec4<u32>(var_0.x, var_0.x, 4294967295u, var_0.x)) % vec4<u32>(32u)), select(~abs(vec4<u32>(4294967295u, var_0.x, 4294967295u, 1u)), vec4<u32>(var_0.x, var_0.x, 24846u, var_0.x >> (46318u % 32u)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false))), vec4<bool>(true, true, true, true)));
}

fn func_1(arg_0: Struct_3) -> bool {
    let var_0 = countOneBits(func_2());
    var var_1 = var_0.yxz ^ (vec3<u32>(~63186u, 28769u, func_3(arg_0.a, arg_0.a.b)) << (firstTrailingBit(func_2().wxy) % vec3<u32>(32u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1501f, arg_0.a.b.x, arg_0.b.a.b.x, _wgslsmith_f_op_f32(f32(-1f) * -273f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.b.a.b.x, 671f, -1138f, arg_0.a.b.x), vec4<f32>(-1371f, arg_0.c.x, arg_0.a.b.x, -1318f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b.x, 324f, arg_0.b.a.b.x, arg_0.a.b.x)))), _wgslsmith_add_i32(reverseBits(u_input.a), _wgslsmith_add_i32(24079i, u_input.a)) < u_input.a)));
    var_1 = vec3<u32>(select(firstLeadingBit(_wgslsmith_add_u32(~var_0.x, _wgslsmith_clamp_u32(var_0.x, 4294967295u, 93576u))), ~abs(countOneBits(79220u)), select(true, false, !select(true, true, true))), var_0.x << (_wgslsmith_dot_vec2_u32(func_2().zw, vec2<u32>(arg_0.b.b, var_1.x) >> (firstTrailingBit(var_0.xx) % vec2<u32>(32u))) % 32u), _wgslsmith_mult_u32(4294967295u, reverseBits(_wgslsmith_dot_vec3_u32(select(vec3<u32>(57438u, 1u, var_1.x), var_0.wxw, true), ~var_0.zzx))));
    let var_3 = vec4<bool>(select(false, true, true) | true, any(vec2<bool>(any(vec2<bool>(true, false)), !(1000f < arg_0.a.b.x))), !all(select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), true)), all(vec2<bool>(true, true)));
    return var_3.x;
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> Struct_2 {
    var var_0 = select(select(vec2<bool>(!arg_1, arg_1), select(vec2<bool>(false, any(vec4<bool>(arg_1, arg_1, arg_1, arg_1))), !vec2<bool>(arg_1, false), true), func_1(Struct_3(Struct_1(-2147483647i, vec2<f32>(arg_2.b.x, arg_2.b.x)), Struct_2(arg_2, 84721u), vec3<f32>(arg_2.b.x, arg_2.b.x, -1719f))) & !(false | arg_1)), !(!(!select(vec2<bool>(false, false), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1)))), true);
    var_0 = !vec2<bool>(!arg_1, !(!arg_1));
    var var_1 = !vec4<bool>(all(select(select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(arg_1, true)), select(vec2<bool>(true, false), vec2<bool>(var_0.x, true), var_0.x), select(vec2<bool>(true, true), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x)))), false, arg_2.a != arg_0, !(!all(vec3<bool>(arg_1, true, var_0.x))));
    var_0 = select(!(!(!var_1.wz)), var_1.ww, _wgslsmith_f_op_f32(-arg_2.b.x) > arg_2.b.x);
    var_0 = select(var_1.xy, var_1.xy, false);
    return Struct_2(Struct_1(-26103i, arg_2.b), 1u);
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: u32) -> bool {
    let var_0 = Struct_1(_wgslsmith_add_i32(reverseBits(u_input.a) >> (~select(1u, 28544u, false) % 32u), (arg_1.a.a | -2147483647i) << (~20929u % 32u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-972f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x + -2195f)))));
    var var_1 = arg_1.a.b;
    let var_2 = ~((select(~arg_2, arg_2, true) & arg_1.b) << (1u % 32u));
    var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2650f, -518f)))))), arg_0.xz));
    let var_3 = Struct_4(!vec4<bool>(false, _wgslsmith_f_op_f32(-1000f + -939f) < _wgslsmith_f_op_f32(-var_0.b.x), true | any(vec2<bool>(true, true)), true));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-647f))), _wgslsmith_f_op_f32(floor(1f)), func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 1298f, -938f, -353f), vec4<f32>(-1020f, -989f, 1037f, -556f))), func_4(13283i, func_1(Struct_3(Struct_1(2147483647i, vec2<f32>(1312f, 895f)), Struct_2(Struct_1(u_input.a, vec2<f32>(-138f, 265f)), 4294967295u), vec3<f32>(-1000f, 289f, 1230f))), Struct_1(u_input.a, vec2<f32>(353f, -452f))), 1u >> (select(1u, 4429u, true) % 32u)))));
    let var_1 = Struct_4(vec4<bool>(~(-u_input.a) != ~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, 20178i, u_input.a), vec3<i32>(u_input.a, u_input.a, 1i)), true, ~4862i <= u_input.a, !(u_input.a <= u_input.a)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-548f + -418f)));
    let var_3 = vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, 1u, 0u), _wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(65749u, 21460u, 65330u))), _wgslsmith_mult_u32(~abs(38408u), _wgslsmith_dot_vec2_u32(vec2<u32>(12317u, 29292u), vec2<u32>(4294967295u, 1u)) | 1u), 1u) | select(min(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u)), vec3<u32>(1u, 1u, 1u), !(!select(var_1.a.yww, var_1.a.xwy, var_1.a.x)));
    var var_4 = var_3.x & var_3.x;
    let var_5 = Struct_5(Struct_3(func_4(u_input.a, all(vec3<bool>(true, true, true)), func_4(_wgslsmith_mod_i32(35226i, u_input.a), func_5(vec4<f32>(2730f, 226f, -469f, 100f), Struct_2(Struct_1(u_input.a, vec2<f32>(-347f, 103f)), 4294967295u), var_3.x), Struct_1(-39802i, vec2<f32>(-328f, 501f))).a).a, Struct_2(Struct_1(52643i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(842f, -2310f))), var_3.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(1022f, 695f, -1157f) - vec3<f32>(-1117f, -845f, -1000f)))))), ~84395u);
    let var_6 = vec4<i32>(1i << (_wgslsmith_dot_vec3_u32(var_3, _wgslsmith_mult_vec3_u32(var_3 | vec3<u32>(1u, var_5.a.b.b, 46452u), _wgslsmith_add_vec3_u32(vec3<u32>(var_5.a.b.b, 4294967295u, var_3.x), vec3<u32>(var_5.b, var_3.x, var_3.x)))) % 32u), ~(-2147483647i ^ (_wgslsmith_div_i32(u_input.a, 0i) ^ 38831i)), -19205i, var_5.a.b.a.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.wy, vec3<i32>(2147483647i, 28998i, -_wgslsmith_sub_i32(-u_input.a, _wgslsmith_dot_vec2_i32(var_6.wy, var_6.xz))));
}

