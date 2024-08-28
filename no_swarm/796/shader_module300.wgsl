struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(0u, 55911u);

var<private> global1: array<u32, 32>;

var<private> global2: vec2<f32>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> f32 {
    var var_0 = Struct_1(true);
    var var_1 = Struct_2(arg_0.a.xx);
    global1 = array<u32, 32>();
    let var_2 = Struct_1(arg_0.c.a);
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(min(global2.x, global2.x))));
    return -1673f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: i32, arg_3: Struct_2) -> bool {
    let var_0 = vec2<bool>(!arg_1.c.a | false, arg_1.d.a);
    var var_1 = Struct_3(Struct_1(select(!var_0.x, var_0.x & true, all(var_0)) && (true || !arg_1.d.a)), Struct_2(~(vec2<u32>(1u, arg_1.a.x) ^ arg_0.a)), Struct_2(arg_0.a));
    global2 = vec2<f32>(_wgslsmith_f_op_f32(460f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global2.x * -164f), _wgslsmith_f_op_f32(func_3(Struct_4(arg_1.a, -1i, arg_1.c, arg_1.c))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global2.x) - _wgslsmith_f_op_f32(floor(-106f))))), -389f);
    var var_2 = countOneBits(firstTrailingBit(arg_1.a.yxz));
    var var_3 = Struct_3(Struct_1(true), Struct_2(~vec2<u32>(0u, 63765u)), arg_0);
    return !(!((_wgslsmith_mult_u32(1u, arg_3.a.x) << (global0.x % 32u)) == 34844u));
}

fn func_4(arg_0: bool, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_4) -> vec2<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global2.x, -338f, 566f), vec3<f32>(-214f, arg_2, -113f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, 962f, global2.x) + vec3<f32>(2136f, -459f, 862f)))))));
    global0 = _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 99763u), abs(reverseBits(arg_3.a.xw)));
    global0 = ~arg_3.a.xy | vec2<u32>(arg_3.a.x, global0.x);
    global1 = array<u32, 32>();
    return _wgslsmith_clamp_vec2_u32(arg_3.a.zx, arg_3.a.wy, vec2<u32>(_wgslsmith_dot_vec2_u32(arg_3.a.yy, vec2<u32>(global0.x, 4294967295u) | vec2<u32>(0u, 52415u)), ~(18983u | u_input.a)) ^ vec2<u32>(~(arg_3.a.x ^ 1u), _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(2052u, 32u)], 32u)], ~u_input.a)));
}

fn func_1() -> Struct_2 {
    global2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-247f + 1164f))) - global2.x)));
    global2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, _wgslsmith_f_op_f32(-global2.x)) + vec2<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1297f, -1274f)))));
    let var_0 = select(4294967295u, global1[_wgslsmith_index_u32(~18351u, 32u)], !all(vec4<bool>(all(vec3<bool>(true, true, true)), true, true, true)));
    global0 = min(vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0 & u_input.a, global0.x), ~(~var_0)), 32u)], var_0), (func_4(func_2(Struct_2(vec2<u32>(0u, u_input.a)), Struct_4(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global0.x, 32u)], 32u)], 1u, 16408u, 0u), 8996i, Struct_1(true), Struct_1(false)), -6632i, Struct_2(vec2<u32>(var_0, var_0))), _wgslsmith_div_vec2_i32(vec2<i32>(25513i, 0i), vec2<i32>(-46607i, 36239i)), 1000f, Struct_4(vec4<u32>(global1[_wgslsmith_index_u32(global0.x, 32u)], 4294967295u, var_0, global1[_wgslsmith_index_u32(0u, 32u)]), 1i, Struct_1(true), Struct_1(true))) | min(firstTrailingBit(vec2<u32>(u_input.a, 34966u)), _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 16963u), vec2<u32>(1u, global0.x)))) & ~vec2<u32>(global1[_wgslsmith_index_u32(~37479u, 32u)], 4294967295u));
    var var_1 = Struct_4(firstTrailingBit(reverseBits(~(~vec4<u32>(u_input.a, u_input.a, var_0, global1[_wgslsmith_index_u32(1u, 32u)])))), _wgslsmith_dot_vec3_i32(vec3<i32>(-8954i, i32(-1i) * -29803i, 0i), vec3<i32>(-1i) * -vec3<i32>(1i, 0i, -21006i)) >> (~countOneBits(18977u) % 32u), Struct_1(any(vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_clamp_i32(select(0i, 6946i, true), 2940i, firstLeadingBit(1i)) == ~(-32398i)));
    return Struct_2(var_1.a.wy);
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -848f), arg_1.x)), arg_1.xy))));
    var var_0 = ~min(func_4(any(vec2<bool>(arg_2.a, false)), firstLeadingBit(vec2<i32>(-21038i, 1i)), arg_1.x, Struct_4(vec4<u32>(0u, arg_0.a.x, 38701u, u_input.a), 33199i, arg_2, Struct_1(false))).x, firstTrailingBit(func_4(false, vec2<i32>(-3039i, 0i), arg_1.x, Struct_4(vec4<u32>(1u, 4294967295u, arg_0.a.x, u_input.a), -33057i, Struct_1(arg_2.a), Struct_1(false))).x)) & max(firstTrailingBit(abs(u_input.a)), ~_wgslsmith_div_u32(~79514u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.x, global0.x, 1u, 11345u), vec4<u32>(arg_0.a.x, global1[_wgslsmith_index_u32(1u, 32u)], global1[_wgslsmith_index_u32(5912u, 32u)], u_input.a))));
    global2 = arg_1.xx;
    var var_1 = countOneBits(select(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(-2147483647i, -1i, 2147483647i), min(vec3<i32>(-1i, 2147483647i, 2147483647i), vec3<i32>(792i, -33431i, -3295i))), abs(-vec3<i32>(2147483647i, -1i, 12837i))), vec3<i32>(reverseBits(abs(-21665i)), _wgslsmith_mod_i32(50253i, -55194i) >> (~4294967295u % 32u), _wgslsmith_mod_i32(-2147483647i, 71344i)), select(!select(vec3<bool>(false, arg_2.a, true), vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(true, arg_2.a, arg_2.a)), select(vec3<bool>(true, arg_2.a, true), select(vec3<bool>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(arg_2.a, arg_2.a, true), vec3<bool>(arg_2.a, arg_2.a, arg_2.a)), arg_1.x < -2297f), false)));
    global0 = ~vec2<u32>(66675u, _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.x, 12441u, 40013u), vec4<u32>(269u, 17775u, 31211u, arg_0.a.x)) & u_input.a, _wgslsmith_dot_vec2_u32(arg_0.a >> (arg_0.a % vec2<u32>(32u)), ~arg_0.a)));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: bool, arg_2: vec3<u32>) -> u32 {
    global1 = array<u32, 32>();
    var var_0 = Struct_3(Struct_1(all(vec4<bool>(true, all(vec4<bool>(arg_0.a, arg_0.a, true, false)), all(vec3<bool>(arg_0.a, false, arg_1)), any(vec2<bool>(arg_0.a, arg_0.a))))), Struct_2(countOneBits(arg_2.zx)), func_1());
    let var_1 = Struct_2(func_4(all(vec4<bool>(true, true, true, true)), vec2<i32>(44250i, ~(-28663i)), global2.x, Struct_4(~(~vec4<u32>(global0.x, arg_2.x, 6942u, arg_2.x)), select(0i, -2147483647i, 4294967295u > global1[_wgslsmith_index_u32(0u, 32u)]), var_0.a, Struct_1(14546u > arg_2.x))));
    var_0 = Struct_3(var_0.a, func_1(), func_1());
    global0 = abs(_wgslsmith_sub_vec2_u32(~max(firstTrailingBit(vec2<u32>(38397u, u_input.a)), vec2<u32>(1u, 1u)), vec2<u32>(53633u, 4294967295u >> (_wgslsmith_mod_u32(0u, 1u) % 32u))));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x - 438f) + _wgslsmith_div_f32(-1308f, global2.x));
    var var_1 = vec4<u32>(~1u, func_6(func_5(func_1(), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)))), Struct_1(any(vec3<bool>(true, false, true)))), true, firstLeadingBit(firstLeadingBit(vec3<u32>(37085u, 1u, 102152u) << (vec3<u32>(1u, global1[_wgslsmith_index_u32(27111u, 32u)], u_input.a) % vec3<u32>(32u))))), global1[_wgslsmith_index_u32(select(global1[_wgslsmith_index_u32(u_input.a, 32u)], _wgslsmith_sub_u32(u_input.a, 100759u), func_5(func_1(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-902f, global2.x, -1379f)) * vec3<f32>(107f, var_0, var_0)), func_5(Struct_2(vec2<u32>(23261u, global0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(735f, 2055f, -297f) * vec3<f32>(var_0, global2.x, var_0)), func_5(Struct_2(vec2<u32>(13536u, global1[_wgslsmith_index_u32(2949u, 32u)])), vec3<f32>(-624f, -1256f, global2.x), Struct_1(true)))).a), 32u)], 0u);
    let var_2 = Struct_4(_wgslsmith_clamp_vec4_u32(select(~(~vec4<u32>(1u, global0.x, var_1.x, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(global0.x, global1[_wgslsmith_index_u32(var_1.x, 32u)], 11257u, u_input.a), ~vec4<u32>(72354u, 4294967295u, global0.x, global1[_wgslsmith_index_u32(1u, 32u)])), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), true)), reverseBits(~(~vec4<u32>(u_input.a, global0.x, var_1.x, u_input.a))), select((vec4<u32>(global1[_wgslsmith_index_u32(77215u, 32u)], var_1.x, var_1.x, 4294967295u) ^ vec4<u32>(24223u, u_input.a, u_input.a, 23175u)) ^ vec4<u32>(19042u, u_input.a, u_input.a, var_1.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(55768u, global1[_wgslsmith_index_u32(u_input.a, 32u)], u_input.a, 2595u), vec4<u32>(37995u, global0.x, 13951u, var_1.x)), !all(vec2<bool>(true, false)))), -(countOneBits(0i) << (_wgslsmith_add_u32(~25616u, _wgslsmith_sub_u32(global1[_wgslsmith_index_u32(8417u, 32u)], 4294967295u)) % 32u)), Struct_1(true), Struct_1(false & (global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 40786u), var_1.wz), 32u)] < 1u)));
    let var_3 = var_2.c.a;
    var var_4 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -792f), abs(firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -2147483647i, -2147483647i), vec3<i32>(3085i, 0i, var_4.b)))), ~var_4.b, var_4.a.x, ~_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(var_2.a.xzw, var_1.yzw, vec3<u32>(global1[_wgslsmith_index_u32(var_2.a.x, 32u)], var_4.a.x, 1u)), var_2.a.yww, vec3<u32>(var_2.a.x, var_1.x, 0u)));
}

