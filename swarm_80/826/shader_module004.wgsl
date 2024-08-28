struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: vec4<i32>,
    b: Struct_3,
    c: Struct_2,
    d: vec4<u32>,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

var<private> global1: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false));

var<private> global2: Struct_2;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<i32>) -> i32 {
    global0 = !(!vec3<bool>(any(select(vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(false, global0.x, global0.x), vec3<bool>(global0.x, global0.x, true))), select(!global0.x, false, all(global0.xy)), all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true)))));
    global0 = vec3<bool>(global0.x, global0.x && global0.x, global0.x);
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -674f));
    let var_1 = Struct_4(Struct_2(~_wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, 0i, -10243i, arg_0.x), global2.a) | global2.a));
    var_0 = 1f;
    return -52249i;
}

fn func_2(arg_0: vec3<u32>) -> Struct_5 {
    var var_0 = Struct_5(global2.a, Struct_3(Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(2831f + 359f), -471f, all(vec3<bool>(global0.x, global0.x, global0.x)))), -global2.a.zy, func_3(vec4<i32>(global2.a.x, -3413i, global2.a.x, -42417i)) | ~global2.a.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(435f, 1728f))) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1688f, 389f)))))), Struct_2(global2.a), vec4<u32>(~1u, u_input.c, 1u ^ u_input.b, 32667u), u_input.c);
    var var_1 = ~1i;
    var var_2 = u_input.b == 1u;
    global0 = vec3<bool>(true, true, true);
    global1 = array<vec4<bool>, 18>();
    return Struct_5(global2.a, Struct_3(Struct_1(var_0.b.a.a, ~(~global2.a.wy), 65682i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b.a.d.x, var_0.b.a.a), var_0.b.a.d)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(944f, var_0.b.a.a) - vec2<f32>(-941f, var_0.b.a.d.x))))), var_0.c, countOneBits(vec4<u32>(~countOneBits(var_0.e), abs(arg_0.x), 0u, u_input.b)), 51011u);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_5, arg_2: bool, arg_3: vec2<bool>) -> f32 {
    var var_0 = Struct_5(vec4<i32>(func_3(func_2(vec3<u32>(1u, 49894u, 1u)).a >> (~vec4<u32>(arg_1.e, arg_0.x, 0u, 2642u) % vec4<u32>(32u))), arg_1.b.a.c, -1i, countOneBits(-global2.a.x)), func_2(~firstTrailingBit(select(vec3<u32>(13876u, 62063u, 10729u), vec3<u32>(0u, 63518u, 4294967295u), false))).b, Struct_2(-func_2(vec3<u32>(45278u, arg_1.e, 41441u)).c.a), vec4<u32>(select(_wgslsmith_sub_u32(firstTrailingBit(arg_1.e), ~arg_1.e), ~(~11422u), !(true | arg_3.x)), arg_1.e, arg_1.d.x, ~func_2(vec3<u32>(4294967295u, 1u, 19377u) << (arg_1.d.xzw % vec3<u32>(32u))).e), ~_wgslsmith_add_u32(~(64746u << (u_input.b % 32u)), arg_1.d.x));
    let var_1 = Struct_4(Struct_2(_wgslsmith_div_vec4_i32(-(~arg_1.a), var_0.a)));
    return 408f;
}

fn func_1() -> Struct_2 {
    let var_0 = global2.a.x ^ global2.a.x;
    var var_1 = _wgslsmith_div_f32(-422f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f - 1f)) + 1933f));
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), -(~(~(~global2.a.yx))));
    let var_3 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-640f, 1000f))))), global2.a.yz, -u_input.d >> (u_input.a.x % 32u), vec2<f32>(_wgslsmith_f_op_f32(func_4(select(vec2<u32>(u_input.c, 32665u), vec2<u32>(u_input.c, 41154u), global0.x), func_2(vec3<u32>(u_input.c, u_input.a.x, 4294967295u)), true, vec2<bool>(false, false))), -677f)));
    var_1 = 367f;
    return func_2(u_input.a).c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(-538f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, 1217f) - _wgslsmith_f_op_f32(753f * 944f)) - _wgslsmith_f_op_f32(floor(1178f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) * _wgslsmith_f_op_f32(149f - 313f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1321f))), _wgslsmith_f_op_f32(min(-1138f, -996f)))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -125f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(1721f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(978f * func_2(u_input.a).b.a.a) - _wgslsmith_f_op_f32(min(-766f, _wgslsmith_f_op_f32(round(665f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -464f), global0.x | false)) * -250f))));
    var var_1 = reverseBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, u_input.c, u_input.c, 28310u), abs(vec4<u32>(u_input.c, u_input.b, u_input.c, 4294967295u))) & vec4<u32>(reverseBits(8238u), u_input.a.x >> (u_input.c % 32u), abs(u_input.c), u_input.c ^ 4294967295u)) >> (abs(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, u_input.c, 13014u), ~u_input.a.x), abs(1u), ~5517u, abs(1u))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.x, var_0.x, var_0.x))), _wgslsmith_div_vec3_f32(var_0.wzw, var_0.wzz))))) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.zzy * var_0.zwx))))));
    let var_3 = vec4<bool>(false, !global0.x, true, global0.x);
    var_1 = vec4<u32>(~74970u, (~_wgslsmith_mult_u32(u_input.c, u_input.a.x) << (7897u % 32u)) ^ u_input.b, u_input.a.x, 0u);
    var var_4 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(select(firstTrailingBit(max(vec2<i32>(-2147483647i, global2.a.x), vec2<i32>(u_input.d, global2.a.x))), vec2<i32>(1i, global2.a.x), var_3.xx), vec2<i32>(-_wgslsmith_mod_i32(-2147483647i, u_input.d), 0i)), -firstTrailingBit(min(min(vec2<i32>(global2.a.x, -2147483647i), vec2<i32>(1i, global2.a.x)), vec2<i32>(global2.a.x, 1i) >> (vec2<u32>(79508u, 1u) % vec2<u32>(32u)))));
    var var_5 = func_1().a.yxx;
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(~_wgslsmith_sub_vec2_i32(var_5.xy, vec2<i32>(u_input.e, 58503i))), -2147483647i, abs(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(-1i, var_5.x), var_5.x, select(var_5.x, var_5.x, global0.x)), _wgslsmith_mod_vec3_i32(-vec3<i32>(-18376i, global2.a.x, u_input.e), global2.a.xzw))), _wgslsmith_mult_vec4_u32(vec4<u32>(reverseBits(_wgslsmith_dot_vec3_u32(u_input.a, var_1.zxx)), 58017u, u_input.a.x, abs(15088u) | _wgslsmith_clamp_u32(u_input.a.x, var_1.x, 49820u)), _wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 67184u, 32688u, var_1.x), countOneBits(vec4<u32>(0u, var_1.x, u_input.a.x, 21266u)))));
}

