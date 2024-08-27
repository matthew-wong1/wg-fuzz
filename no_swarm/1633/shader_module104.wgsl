struct Struct_1 {
    a: i32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(29461u, 1u, 60021u, 29786u);

var<private> global1: array<Struct_3, 14>;

var<private> global2: vec2<i32> = vec2<i32>(-3976i, 0i);

var<private> global3: array<bool, 23>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<u32>) -> vec2<i32> {
    let var_0 = vec2<i32>(7642i, -1315i);
    let var_1 = Struct_1(global2.x, vec3<i32>(firstLeadingBit(abs(u_input.b)), 1i, -2147483647i));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(164f, 160f, -155f, 184f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(317f, 1344f, -1880f, 439f)))))));
    let var_3 = !(all(!(!vec4<bool>(global3[_wgslsmith_index_u32(arg_0.x, 23u)], global3[_wgslsmith_index_u32(arg_0.x, 23u)], false, false))) || true);
    var var_4 = Struct_2(Struct_1((_wgslsmith_dot_vec2_i32(var_1.b.xx, var_0) & firstTrailingBit(0i)) >> (31734u % 32u), vec3<i32>(-67458i, 0i, u_input.b)), any(select(vec3<bool>(true, false && global3[_wgslsmith_index_u32(5573u, 23u)], true), select(vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 23u)], var_3, global3[_wgslsmith_index_u32(global0.x, 23u)]), vec3<bool>(global3[_wgslsmith_index_u32(10413u, 23u)], true, var_3), true), any(!vec4<bool>(global3[_wgslsmith_index_u32(20916u, 23u)], true, true, var_3)))));
    return vec2<i32>(16122i, var_1.a);
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec3<bool>) -> f32 {
    let var_0 = _wgslsmith_dot_vec2_i32(func_3(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.a.x, 4294967295u, 16611u), vec4<u32>(global0.x, 0u, arg_0, arg_1.a.x)), u_input.c & global0.x, _wgslsmith_mod_u32(global0.x, 31481u), u_input.a.x)) | countOneBits(-countOneBits(vec2<i32>(-33610i, 2147483647i))), ~vec2<i32>(global2.x, 50487i));
    var var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(-var_0, var_0), countOneBits(var_0), ~abs(-global2.x), _wgslsmith_sub_i32(1i << (~arg_1.a.x % 32u), var_0)), vec4<i32>(-1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-16487i, u_input.b), var_0), max(-min(var_0, u_input.b), 30439i), (i32(-1i) * -178i) | -_wgslsmith_dot_vec3_i32(vec3<i32>(var_0, 1i, global2.x), vec3<i32>(-28299i, global2.x, -2147483647i))));
    var var_2 = var_1.zzw;
    var var_3 = global3[_wgslsmith_index_u32(arg_0, 23u)];
    var var_4 = Struct_2(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_2.x, var_0, 19338i), var_1.zwy), min(vec3<i32>(var_0, u_input.b, var_0), vec3<i32>(-27789i, global2.x, u_input.b))), _wgslsmith_dot_vec3_i32(vec3<i32>(-9070i, 1i, -47556i) & vec3<i32>(-27603i, u_input.b, 2147483647i), abs(vec3<i32>(66934i, var_2.x, u_input.b))), func_3(firstTrailingBit(vec4<u32>(70206u, 67216u, 0u, 10100u))).x), var_1.zyw), global3[_wgslsmith_index_u32(0u, 23u)]);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1114f)), true)))) - 1921f);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec2<f32>, arg_2: Struct_3, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_3(vec4<u32>(~(arg_2.a.x >> (1u % 32u)), ~max(356u, 16776u | global0.x), u_input.d, _wgslsmith_mod_u32(28554u, _wgslsmith_dot_vec3_u32(vec3<u32>(21696u, 1u, 42896u), vec3<u32>(u_input.a.x, arg_2.a.x, u_input.d))) ^ select(arg_2.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, global0.x, 0u), global0.xzy), global3[_wgslsmith_index_u32(~arg_2.a.x, 23u)])));
    var var_1 = Struct_2(Struct_1(global2.x, arg_3.a.b), !(!arg_3.b | any(!vec2<bool>(false, arg_3.b))));
    global2 = vec2<i32>(~_wgslsmith_mod_i32(_wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, global2.x), ~0i), min(_wgslsmith_add_i32(var_1.a.b.x, var_1.a.a), reverseBits(-2482i))), arg_3.a.b.x);
    global2 = vec2<i32>(-33089i, ~1i);
    var var_2 = !vec4<bool>(all(vec4<bool>(select(false, global3[_wgslsmith_index_u32(var_0.a.x, 23u)], global3[_wgslsmith_index_u32(0u, 23u)]), select(var_1.b, arg_3.b, false), arg_3.b, arg_2.a.x >= arg_2.a.x)), all(!select(vec4<bool>(var_1.b, var_1.b, arg_3.b, false), vec4<bool>(false, true, true, false), false)), arg_1.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - arg_0.x) - _wgslsmith_f_op_f32(trunc(-1000f))), 70053u <= ~var_0.a.x);
    return Struct_2(arg_3.a, all(select(!select(vec4<bool>(false, false, true, false), vec4<bool>(var_1.b, var_1.b, true, arg_3.b), var_2.x), !vec4<bool>(var_1.b, false, true, arg_3.b), var_1.b)));
}

fn func_1(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: vec4<i32>) -> vec2<i32> {
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global0.x, global1[_wgslsmith_index_u32(1u, 14u)], arg_1.yzx)) + -1004f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(926f, 1040f) * _wgslsmith_f_op_f32(593f * 774f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(884f, -149f)))))), vec2<f32>(1f, 1f), global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(0u, ~min(u_input.c, global0.x)), 14u)], Struct_2(arg_0.a, true));
    var var_1 = Struct_3(vec4<u32>(1u, u_input.c, 27520u, 8451u));
    var var_2 = arg_1;
    var_2 = select(!arg_1, vec4<bool>(all(arg_1.yw), all(arg_1.yzz), !(!any(arg_1)), true), arg_0.b);
    let var_3 = ~countOneBits(vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, 1u), 13764u & countOneBits(global0.x), countOneBits(31916u)));
    return arg_2.xy;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = max(_wgslsmith_mult_vec2_i32(vec2<i32>(global2.x, u_input.b ^ u_input.b) ^ -(vec2<i32>(global2.x, global2.x) & vec2<i32>(9856i, u_input.b)), func_1(Struct_2(Struct_1(u_input.b, vec3<i32>(66343i, 1i, 0i)), global3[_wgslsmith_index_u32(global0.x ^ 0u, 23u)]), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], any(vec4<bool>(false, true, false, false)), true), -_wgslsmith_sub_vec4_i32(vec4<i32>(12645i, 20430i, 23599i, global2.x), vec4<i32>(global2.x, 48054i, 19485i, u_input.b)))), firstLeadingBit(func_1(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(128f, 590f) - vec2<f32>(-158f, 750f)), vec2<f32>(1070f, -1039f), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0.x, 1u), 14u)], func_4(vec2<f32>(-2965f, -1000f), vec2<f32>(1673f, 1250f), Struct_3(vec4<u32>(u_input.d, 18454u, u_input.d, 61953u)), Struct_2(Struct_1(-1i, vec3<i32>(global2.x, -56097i, -3823i)), false))), vec4<bool>(all(vec3<bool>(true, true, global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), all(vec4<bool>(global3[_wgslsmith_index_u32(1u, 23u)], true, global3[_wgslsmith_index_u32(52769u, 23u)], true)), false, !global3[_wgslsmith_index_u32(4294967295u, 23u)]), vec4<i32>(func_3(u_input.a).x, func_3(vec4<u32>(57584u, global0.x, u_input.c, global0.x)).x, u_input.b, _wgslsmith_add_i32(-57576i, 0i)))));
    global2 = vec2<i32>(u_input.b, -51530i);
    global2 = -(vec2<i32>(36074i, u_input.b) & func_1(func_4(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1357f, -1779f), vec2<f32>(-1297f, -282f))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1675f, -1160f), vec2<f32>(-572f, 401f))), global1[_wgslsmith_index_u32(1268u | u_input.c, 14u)], Struct_2(Struct_1(global2.x, vec3<i32>(2147483647i, global2.x, u_input.b)), true)), vec4<bool>(select(global3[_wgslsmith_index_u32(u_input.c, 23u)], false, global3[_wgslsmith_index_u32(u_input.d, 23u)]), true, true, !global3[_wgslsmith_index_u32(global0.x, 23u)]), _wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(-13445i, u_input.b, -1i, -13819i)), vec4<i32>(1i, u_input.b, u_input.b, -3101i))));
    global1 = array<Struct_3, 14>();
    let var_0 = _wgslsmith_f_op_f32(-429f - _wgslsmith_f_op_f32(func_2(u_input.c, Struct_3(~u_input.a), !vec3<bool>(global3[_wgslsmith_index_u32(global0.x, 23u)], true, true)))) < _wgslsmith_f_op_f32(f32(-1f) * -773f);
    var var_1 = !vec4<bool>(false, any(select(vec4<bool>(var_0, global3[_wgslsmith_index_u32(u_input.a.x, 23u)], var_0, false), vec4<bool>(false, true, false, false), vec4<bool>(var_0, global3[_wgslsmith_index_u32(4294967295u, 23u)], true, true))) & var_0, var_0, global3[_wgslsmith_index_u32(23591u, 23u)]);
    let var_2 = Struct_2(func_4(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -552f), _wgslsmith_f_op_f32(f32(-1f) * -249f)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1595f, 1099f), -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(247f * -159f))), global1[_wgslsmith_index_u32(global0.x, 14u)], Struct_2(func_4(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1801f, -2354f))), vec2<f32>(1672f, -1305f), Struct_3(u_input.a), Struct_2(Struct_1(-25284i, vec3<i32>(u_input.b, u_input.b, global2.x)), true)).a, any(!vec4<bool>(var_1.x, false, var_0, global3[_wgslsmith_index_u32(1u, 23u)])))).a, reverseBits(firstTrailingBit(-global2.x)) != _wgslsmith_mult_i32(u_input.b, global2.x));
    var var_3 = var_2;
    var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, min(0u, ~u_input.d)), global0.zyy | ~global0.xzw), abs(_wgslsmith_clamp_u32(_wgslsmith_add_u32(127399u, 42394u & global0.x), 23789u, abs(~global0.x))), ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(12222u, global0.x, u_input.d)), global0.yzy), vec3<u32>(countOneBits(4294967295u), min(u_input.a.x, global0.x), 0u)), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(423f, -391f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1000f, -651f), vec2<f32>(-1065f, 256f))) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(113f, -1081f)))), !(!var_1.zz))))), vec3<u32>(1u, ~min(1u, 27909u), ~global0.x));
}

