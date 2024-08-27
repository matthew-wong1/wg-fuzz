struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: vec2<u32>,
    e: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 4>;

var<private> global1: vec2<bool>;

var<private> global2: array<i32, 9>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: vec3<u32>) -> bool {
    return true;
}

fn func_3(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = 1u;
    return max(min(_wgslsmith_add_vec4_u32(vec4<u32>(0u, var_0, 1u, arg_1.x) & vec4<u32>(1u, arg_1.x, 11555u, var_0), ~vec4<u32>(u_input.b, var_0, var_0, 14805u)), min(~vec4<u32>(u_input.b, 0u, arg_1.x, 4294967295u), ~vec4<u32>(4294967295u, arg_1.x, arg_1.x, 0u))), ~vec4<u32>(~u_input.b, select(var_0, arg_1.x, true), arg_1.x, arg_1.x)) ^ _wgslsmith_add_vec4_u32((~vec4<u32>(arg_1.x, 1u, arg_1.x, 49727u) & vec4<u32>(50453u, 20896u, 52644u, u_input.b)) | select(vec4<u32>(1u, 34133u, 0u, 13766u), vec4<u32>(arg_1.x, var_0, 4294967295u, var_0) >> (vec4<u32>(u_input.b, 76402u, 4294967295u, u_input.b) % vec4<u32>(32u)), !arg_0.a), ~firstLeadingBit(~vec4<u32>(30313u, arg_1.x, 11708u, u_input.b)));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: Struct_2, arg_3: vec4<i32>) -> f32 {
    var var_0 = Struct_3(vec4<bool>(u_input.b < arg_2.d.x, !global1.x, false, global1.x), -29713i);
    var var_1 = _wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2.d.x, ~(~u_input.b), u_input.b, 99985u), vec4<u32>(countOneBits(arg_2.d.x) & ~0u, u_input.b, arg_2.d.x, arg_2.d.x), ~firstTrailingBit(vec4<u32>(arg_2.d.x, arg_0, 4294967295u, u_input.b))), (firstLeadingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 15840u, arg_2.d.x, arg_0), vec4<u32>(u_input.b, arg_2.d.x, 32483u, 1u))) ^ ~vec4<u32>(13588u, 1u, arg_0, 0u)) | vec4<u32>(29938u, 0u | arg_2.d.x, u_input.b, ~(~u_input.b)));
    let var_2 = 40574u;
    var_1 = max(~(~vec4<u32>(25194u, ~4294967295u, 20948u, arg_0)), _wgslsmith_mult_vec4_u32(select(~(vec4<u32>(u_input.b, 55463u, 57737u, 4294967295u) & vec4<u32>(0u, u_input.b, 17020u, 843u)), countOneBits(select(vec4<u32>(arg_2.d.x, 18421u, u_input.b, arg_2.d.x), vec4<u32>(var_2, arg_2.d.x, arg_0, u_input.b), var_0.a)), func_2(!var_0.a.x, ~vec4<u32>(u_input.b, 4294967295u, 25976u, 3474u), firstLeadingBit(var_1.yxw))), ~func_3(Struct_3(vec4<bool>(global1.x, global1.x, var_0.a.x, true), arg_2.e), ~var_1.zw, arg_2.c.x, arg_2.b)));
    var var_3 = reverseBits(-1i);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, arg_2.c.x, 3665i > (1i | arg_1)))));
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: vec4<f32>, arg_3: i32) -> Struct_2 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, -291f, -1380f, arg_2.x)))), Struct_1(vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(step(-1160f, arg_2.x)), -305f, _wgslsmith_f_op_f32(min(arg_2.x, 272f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.zxw)), arg_2.yzw) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 109f, arg_2.x) + arg_2.xzx), _wgslsmith_f_op_vec3_f32(arg_2.xzz + vec3<f32>(-335f, -1742f, arg_2.x))))), vec2<u32>(u_input.b & _wgslsmith_mod_u32(~46827u, abs(u_input.b)), func_3(Struct_3(vec4<bool>(false, global1.x, global1.x, false), countOneBits(1i)), firstTrailingBit(~vec2<u32>(arg_0, u_input.b)), _wgslsmith_f_op_f32(trunc(-141f)), Struct_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, arg_2.x, 547f, -1332f), arg_2)))).x), firstTrailingBit(_wgslsmith_add_i32(_wgslsmith_mult_i32(abs(0i), arg_3), _wgslsmith_mult_i32(_wgslsmith_mult_i32(2147483647i, u_input.a), max(2147483647i, u_input.a)))));
    global0 = array<vec2<bool>, 4>();
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(arg_2.zw)));
    global2 = array<i32, 9>();
    let var_2 = ~arg_3;
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2) - var_0.a.a)), Struct_1(var_0.b.a), var_0.a.a.zxz, firstLeadingBit(vec2<u32>(1u, u_input.b)), -1i);
}

fn func_5(arg_0: Struct_2) -> vec2<bool> {
    global0 = array<vec2<bool>, 4>();
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(58349u, 55137u, u_input.b) << (vec3<u32>(1u, 25856u, 1468u) % vec3<u32>(32u)), vec3<u32>(arg_0.d.x, u_input.b, u_input.b)), ~select(~vec3<u32>(1u, arg_0.d.x, 110317u), firstLeadingBit(vec3<u32>(4294967295u, u_input.b, 1298u)), select(vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, true, true)))) & (_wgslsmith_add_u32(~30801u, _wgslsmith_clamp_u32(select(u_input.b, 4294967295u, false), ~arg_0.d.x, 1u)) << (func_4(36145u, vec3<bool>(false, any(vec2<bool>(true, false)), func_2(false, vec4<u32>(arg_0.d.x, arg_0.d.x, u_input.b, 47767u), vec3<u32>(arg_0.d.x, u_input.b, 1u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1281f, arg_0.c.x, arg_0.a.a.x, arg_0.c.x)))), -2147483647i).d.x % 32u)), 4u)];
    var var_0 = 4294967295u;
    var_0 = abs(arg_0.d.x);
    var var_1 = func_4(39826u, !vec3<bool>(!global1.x, true, true), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_1(arg_0.d.x >> (u_input.b % 32u), 1i, arg_0, max(vec4<i32>(arg_0.e, 0i, u_input.a, 0i), vec4<i32>(arg_0.e, 12882i, 2147483647i, arg_0.e)))))), arg_0.c.x, _wgslsmith_f_op_f32(-arg_0.b.a.x), 1129f), -firstLeadingBit(_wgslsmith_mod_i32(~1i, max(-10771i, -28539i)))).a;
    return select(global0[_wgslsmith_index_u32(min(28856u, arg_0.d.x), 4u)], !vec2<bool>(all(vec4<bool>(global1.x, global1.x, global1.x, false)), any(!vec4<bool>(global1.x, global1.x, global1.x, true))), vec2<bool>(true, true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(15336u, vec3<bool>(!(!global1.x), all(!vec4<bool>(global1.x, global1.x, global1.x, true)), true), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -820f)), _wgslsmith_f_op_f32(f32(-1f) * -303f), _wgslsmith_f_op_f32(func_1(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, 49748u), vec3<u32>(u_input.b, 4294967295u, 4294967295u)), max(0i, 0i), Struct_2(Struct_1(vec4<f32>(861f, -238f, 411f, -1229f)), Struct_1(vec4<f32>(-1586f, -1306f, 1160f, -285f)), vec3<f32>(522f, 1120f, -1501f), vec2<u32>(u_input.b, 55924u), u_input.a), vec4<i32>(-16239i, -34679i, global2[_wgslsmith_index_u32(u_input.b, 9u)], u_input.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(340f))))), _wgslsmith_add_i32(min(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, -2147483647i), vec3<i32>(-1i, u_input.a, u_input.a)), 11651i), -select(3707i, u_input.a, true))));
    var var_0 = -_wgslsmith_div_i32(-global2[_wgslsmith_index_u32(~34669u, 9u)], -_wgslsmith_mod_i32(1i, -2147483647i)) ^ global2[_wgslsmith_index_u32(0u, 9u)];
    let var_1 = func_4(~_wgslsmith_mod_u32(u_input.b, reverseBits(reverseBits(0u))), vec3<bool>(any(global0[_wgslsmith_index_u32(u_input.b, 4u)]), global1.x, global1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1798f, -2014f, -1274f, 528f) * vec4<f32>(600f, 1134f, -328f, -637f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-841f, 2749f, -1054f, 478f))) - vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1421f), _wgslsmith_f_op_f32(331f + -1651f), _wgslsmith_f_op_f32(step(-351f, -302f)), _wgslsmith_f_op_f32(-584f - -505f))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-341f, -320f, -170f, 689f) * vec4<f32>(-117f, -1000f, -1018f, 464f))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2112f, -1291f, -1479f, 1183f))))))), ~_wgslsmith_mod_i32(global2[_wgslsmith_index_u32(select(49409u, abs(u_input.b), true), 9u)], global2[_wgslsmith_index_u32(u_input.b, 9u)])).b;
    global2 = array<i32, 9>();
    var_0 = ~firstTrailingBit(-u_input.a);
    let var_2 = func_4(0u, !select(select(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, false), global1.x), select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, global1.x, false), true), global1.x & false), select(vec3<bool>(global1.x, false, false), vec3<bool>(true, true, global1.x), true), global1.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_4(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.b), vec2<u32>(u_input.b, 4294967295u)), !vec3<bool>(global1.x, true, global1.x), _wgslsmith_div_vec4_f32(var_1.a, var_1.a), _wgslsmith_mult_i32(-1i, u_input.a)).a.a)), 2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(-4282i, var_2.e, i32(-1i) * -240i, _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, var_2.e), vec2<i32>(global2[_wgslsmith_index_u32(u_input.b, 9u)], 2147483647i)), global2[_wgslsmith_index_u32(~u_input.b, 9u)])), _wgslsmith_div_u32(var_2.d.x, 1235u), var_1.a.wzx, 0u);
}

