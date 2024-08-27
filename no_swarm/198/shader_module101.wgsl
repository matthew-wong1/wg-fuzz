struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(27435u, 1u);

var<private> global1: vec2<i32> = vec2<i32>(32444i, i32(-2147483648));

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(4294967295u, 27003u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(707f + 307f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-313f)), _wgslsmith_f_op_f32(max(-778f, -1000f)))))))) < _wgslsmith_f_op_f32(ceil(364f));
    var var_1 = Struct_1(firstTrailingBit(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, 18846u), vec2<u32>(u_input.c, global3.a))) << (~global2.a % 32u), ~(~min(1u, 0u)));
    return select(select(!vec2<bool>(var_0 && true, var_0), vec2<bool>(any(select(vec2<bool>(var_0, false), vec2<bool>(false, var_0), false)), var_0), !select(vec2<bool>(var_0, true), select(vec2<bool>(true, false), vec2<bool>(var_0, false), vec2<bool>(var_0, true)), select(vec2<bool>(true, var_0), vec2<bool>(true, false), vec2<bool>(true, true)))), select(vec2<bool>(var_0, false), select(vec2<bool>(!var_0, all(vec4<bool>(true, false, true, var_0))), select(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), var_0), vec2<bool>(true, var_0), !vec2<bool>(var_0, false)), vec2<bool>(any(vec2<bool>(var_0, false)), all(vec3<bool>(var_0, true, false)))), !select(!vec2<bool>(var_0, var_0), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(var_0, var_0), vec2<bool>(true, false)))), true);
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: vec4<f32>) -> bool {
    let var_0 = !func_3();
    var var_1 = Struct_1(~_wgslsmith_sub_u32(~(global0.b << (global2.a % 32u)), ~u_input.b.x), u_input.b.x);
    let var_2 = select(select(select(!vec4<bool>(true, arg_0.x, true, false), select(vec4<bool>(false, arg_0.x, false, true), select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, false, true, false), vec4<bool>(var_0.x, true, arg_0.x, true)), !vec4<bool>(var_0.x, var_0.x, arg_0.x, false)), !any(vec4<bool>(arg_0.x, var_0.x, arg_0.x, false))), vec4<bool>(select(true, var_0.x, true) && !var_0.x, !all(vec3<bool>(arg_0.x, false, var_0.x)), !var_0.x, func_3().x), true), select(vec4<bool>(!var_0.x || arg_0.x, true, any(vec2<bool>(false, true)), func_3().x), select(select(!vec4<bool>(var_0.x, false, var_0.x, var_0.x), select(vec4<bool>(arg_0.x, var_0.x, arg_0.x, true), vec4<bool>(false, var_0.x, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, var_0.x, false, true)), var_0.x != false), !(!vec4<bool>(true, arg_0.x, true, var_0.x)), !select(vec4<bool>(arg_0.x, arg_0.x, var_0.x, true), vec4<bool>(true, true, true, var_0.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x))), select(select(select(vec4<bool>(arg_0.x, arg_0.x, false, var_0.x), vec4<bool>(true, true, arg_0.x, false), vec4<bool>(true, var_0.x, arg_0.x, var_0.x)), select(vec4<bool>(var_0.x, arg_0.x, var_0.x, false), vec4<bool>(var_0.x, arg_0.x, false, var_0.x), vec4<bool>(true, var_0.x, arg_0.x, var_0.x)), !vec4<bool>(arg_0.x, true, true, true)), vec4<bool>(false, false, true, true), vec4<bool>(u_input.a == global1.x, true, true || arg_0.x, false))), vec4<bool>(any(vec4<bool>(var_0.x, arg_0.x, true, true)), all(select(!vec3<bool>(arg_0.x, false, var_0.x), !vec3<bool>(arg_0.x, true, arg_0.x), vec3<bool>(true, false, false))), true, (abs(4294967295u) > _wgslsmith_sub_u32(41890u, global0.a)) || ((u_input.a <= 1i) == !var_0.x)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-arg_2.xx);
    var var_4 = ~min(max(u_input.b.xyx, vec3<u32>(_wgslsmith_clamp_u32(30061u, 41143u, var_1.a), 15815u, global0.a)), abs(u_input.b.zzy));
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: bool) -> Struct_1 {
    global2 = Struct_1(_wgslsmith_div_u32(~(~global0.b), _wgslsmith_clamp_u32(~u_input.c, global2.a, abs(countOneBits(global3.a)))), 0u);
    return Struct_1(4294967295u, global3.a);
}

fn func_1(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = select(select(u_input.b.zx, vec2<u32>(1u, ~55946u) >> (u_input.b.zw % vec2<u32>(32u)), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), true), !select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true)), _wgslsmith_dot_vec2_i32(arg_1.yy, arg_1.xy) >= countOneBits(arg_1.x))), u_input.b.zx, all(vec4<bool>(all(vec3<bool>(true, false, true)), true, true, true)));
    global0 = func_4(select(vec4<bool>(true, true, true, true), vec4<bool>(true, func_2(vec2<bool>(true, true), Struct_2(Struct_1(global3.a, u_input.b.x), Struct_1(global2.b, 37630u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1260f, 137f, 2410f, 929f) * vec4<f32>(-418f, 1000f, 1874f, -1000f))), global3.b > 46273u, true | func_3().x), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), ~((var_0 << (vec2<u32>(44996u, global3.a) % vec2<u32>(32u))) ^ vec2<u32>(global2.a, var_0.x)) ^ ~_wgslsmith_div_vec2_u32(~u_input.b.wz, _wgslsmith_div_vec2_u32(u_input.b.yx, vec2<u32>(0u, 5291u))), true);
    global2 = func_4(vec4<bool>(any(func_3()), !any(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true))), true, ((u_input.c >= var_0.x) & func_3().x) & false), ~(reverseBits(vec2<u32>(var_0.x, 7786u)) << (~select(vec2<u32>(0u, global3.a), vec2<u32>(global3.b, u_input.b.x), false) % vec2<u32>(32u))), true);
    var var_1 = (true & !(all(vec2<bool>(true, false)) | (u_input.d > arg_0))) && false;
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1799f, -324f, 466f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -788f), 1f))));
    return Struct_1(global3.a, ~_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.b.wy));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> Struct_2 {
    let var_0 = select(_wgslsmith_sub_vec3_i32(abs(countOneBits(~vec3<i32>(u_input.d, u_input.d, global1.x))), vec3<i32>(-1i) * -vec3<i32>(-25426i, u_input.a, global1.x)), -(~max(vec3<i32>(-2382i, global1.x, 20924i), vec3<i32>(-1i, 0i, -1i))) | _wgslsmith_add_vec3_i32(~_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, global1.x, 0i), vec3<i32>(6214i, u_input.d, u_input.d), vec3<i32>(u_input.a, u_input.a, 34369i)), _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, -28544i, -1i), vec3<i32>(-19777i, u_input.d, -2147483647i)), _wgslsmith_mod_vec3_i32(vec3<i32>(global1.x, 19790i, -17907i), vec3<i32>(0i, 30383i, u_input.a)))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), false))));
    var var_1 = 41604i;
    var_1 = 2147483647i >> (1u % 32u);
    global0 = func_4(vec4<bool>(true, !all(vec3<bool>(true, true, true)), any(vec2<bool>(true, false)), !any(vec3<bool>(true, true, true))), u_input.b.yx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) * 698f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(-arg_0), false)) + 134f));
    let var_2 = _wgslsmith_f_op_f32(367f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_0, 728f)) * _wgslsmith_f_op_f32(select(arg_0, arg_0, true))) - _wgslsmith_f_op_f32(f32(-1f) * -1004f)));
    return Struct_2(arg_1, arg_1);
}

fn func_6(arg_0: Struct_2, arg_1: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(836f))))));
    global3 = Struct_1(global0.b, 41508u);
    let var_1 = ~max(_wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.a, 2147483647i, -94241i, 0i), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-29365i, 2147483647i, global1.x), vec3<i32>(u_input.d, -1i, -26538i)), min(-61163i, 5303i), global1.x, _wgslsmith_mod_i32(u_input.d, -36323i))), _wgslsmith_mod_i32(u_input.a, 8019i));
    var var_2 = any(select(vec4<bool>((arg_1 > -2223f) && true, true, any(vec2<bool>(true, true)), all(vec4<bool>(false, false, false, false)) != true), vec4<bool>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b) > func_1(u_input.d, vec4<i32>(0i, u_input.a, global1.x, global1.x)).a, !all(vec2<bool>(false, true)), all(vec2<bool>(true, true)), true), global2.b != 27905u));
    let var_3 = u_input.b.zww;
    return arg_0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-569f - _wgslsmith_f_op_f32(-889f + 259f))), func_1(_wgslsmith_mult_i32(abs(global1.x), _wgslsmith_add_i32(u_input.d, -66391i)), -_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.d, 8901i, global1.x), vec4<i32>(global1.x, global1.x, global1.x, -29745i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1906f, 378f, false))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(1000f)))))));
    global1 = vec2<i32>(~u_input.d, firstLeadingBit(62817i)) ^ vec2<i32>(_wgslsmith_mult_i32(global1.x, global1.x) | ~2147483647i, -13230i);
    let var_0 = select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, all(vec4<bool>(false, false, false, false)), true, true), select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), true))), vec4<bool>(!(!any(vec3<bool>(false, true, true))), all(vec2<bool>(false, select(true, true, false))), !(!select(false, true, true)), any(vec4<bool>(true, true, true, true))), !select(vec4<bool>(any(vec2<bool>(true, true)), any(vec3<bool>(false, true, false)), true, func_3().x), vec4<bool>(true, true, true, true), false));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 1000f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-917f, -1741f) * vec2<f32>(-296f, 702f)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-456f, 742f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1185f)))));
    let var_2 = vec2<i32>(0i, -17627i);
    let var_3 = vec4<u32>(28201u, _wgslsmith_mult_u32(global3.b, global0.b), ~countOneBits(~(~13892u)), global0.b);
    var var_4 = (((vec3<i32>(-1i) * -vec3<i32>(u_input.a, 2147483647i, -21294i)) >> (select(vec3<u32>(var_3.x, 0u, 1u), _wgslsmith_sub_vec3_u32(vec3<u32>(52690u, 0u, var_3.x), var_3.xwz), select(var_0.x, false, false)) % vec3<u32>(32u))) ^ vec3<i32>(u_input.a << (116188u % 32u), firstTrailingBit(abs(u_input.d)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, u_input.a, -14708i), vec3<i32>(-2147483647i, global1.x, 0i) << (u_input.b.zxw % vec3<u32>(32u))))) & _wgslsmith_mod_vec3_i32(max(_wgslsmith_sub_vec3_i32(~vec3<i32>(u_input.a, global1.x, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(var_2.x, u_input.a, u_input.d), vec3<i32>(u_input.d, u_input.d, -7689i), vec3<i32>(-1i, 0i, var_2.x))), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(18553i, 12818i, u_input.d)), vec3<i32>(1i, u_input.d, 7115i))), vec3<i32>(76382i, 13051i, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_1.x), ~(~(~_wgslsmith_mult_u32(7519u, u_input.b.x))), -2147483647i << (func_4(var_0, _wgslsmith_clamp_vec2_u32(u_input.b.yy, min(var_3.xy, var_3.zy), _wgslsmith_clamp_vec2_u32(vec2<u32>(global0.b, 0u), var_3.yz, var_3.xw)), !var_0.x).a % 32u));
}

