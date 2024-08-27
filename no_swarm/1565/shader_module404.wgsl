struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 15> = array<f32, 15>(1863f, 1392f, 1190f, 120f, -1032f, -1088f, 1131f, -1643f, 751f, -466f, 1388f, 811f, 187f, 745f, -1000f);

var<private> global1: array<bool, 21>;

var<private> global2: Struct_1;

var<private> global3: vec4<i32> = vec4<i32>(42800i, 1i, -39725i, -9137i);

var<private> global4: array<bool, 9> = array<bool, 9>(false, false, true, false, false, false, true, true, false);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec3<bool> {
    global3 = ~(vec4<i32>(~(i32(-1i) * -1i), global3.x, u_input.a, u_input.a) & vec4<i32>(-(~(-1701i)), global3.x, global3.x, u_input.a));
    var var_0 = select(select(global4[_wgslsmith_index_u32(global2.a, 9u)], select(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(u_input.c.x, u_input.b.x), 21u)], false, true), true), true, select(!global1[_wgslsmith_index_u32(u_input.d, 21u)], global4[_wgslsmith_index_u32(~(~(~u_input.c.x)), 9u)], true));
    var var_1 = 26526u;
    global0 = array<f32, 15>();
    global2 = Struct_1(_wgslsmith_sub_u32(reverseBits(4014u) << (~_wgslsmith_mod_u32(global2.a, 14359u) % 32u), u_input.b.x), _wgslsmith_f_op_f32(683f * -1184f));
    return vec3<bool>(true, global4[_wgslsmith_index_u32(40661u, 9u)], !(!(!(!global4[_wgslsmith_index_u32(global2.a, 9u)]))));
}

fn func_4(arg_0: Struct_3, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: vec4<i32>) -> vec4<f32> {
    let var_0 = select(arg_1, select(!vec4<bool>(!global4[_wgslsmith_index_u32(1954u, 9u)], any(vec2<bool>(global4[_wgslsmith_index_u32(arg_0.a, 9u)], false)), arg_3.x > 2147483647i, arg_1.x), select(arg_1, vec4<bool>(true || arg_1.x, global3.x == 24337i, arg_3.x > arg_3.x, false), select(!arg_1, !vec4<bool>(global4[_wgslsmith_index_u32(u_input.d, 9u)], false, global1[_wgslsmith_index_u32(arg_0.a, 21u)], true), arg_2.e.a.x || true)), arg_1), false);
    let var_1 = vec3<u32>(abs(_wgslsmith_sub_u32(global2.a, ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b))), _wgslsmith_add_u32(~_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.d, global2.a, 4294967295u), global2.a), ~(~(~42219u))), _wgslsmith_div_u32(arg_0.a, countOneBits(_wgslsmith_mod_u32(4294967295u, arg_2.a))));
    var var_2 = _wgslsmith_add_vec3_u32(countOneBits(~min(vec3<u32>(u_input.d, var_1.x, u_input.c.x), max(vec3<u32>(1u, 108664u, 1u), var_1))), min(~var_1, ~var_1 >> (vec3<u32>(~1u, u_input.c.x & u_input.c.x, global2.a >> (30533u % 32u)) % vec3<u32>(32u))));
    let var_3 = ~vec3<i32>(0i, -_wgslsmith_add_i32(u_input.a, 41531i) | -_wgslsmith_div_i32(-22234i, arg_0.b), ~(-_wgslsmith_div_i32(arg_3.x, 2147483647i)));
    var var_4 = true;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u, 15u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-106f * -1207f)), -911f, _wgslsmith_f_op_f32(-280f + _wgslsmith_f_op_f32(abs(1294f)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1630f, global2.b, global2.b, 761f))) - _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, -190f, -1092f, -880f), vec4<f32>(1000f, global2.b, -1166f, global0[_wgslsmith_index_u32(1521u, 15u)]))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b, global0[_wgslsmith_index_u32(33745u, 15u)], 662f, -390f) * vec4<f32>(670f, global2.b, 2525f, 1036f)) * vec4<f32>(global2.b, global0[_wgslsmith_index_u32(1411u, 15u)], -2575f, -475f)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.b)), _wgslsmith_f_op_f32(f32(-1f) * -1446f), _wgslsmith_f_op_f32(step(-364f, 582f)), _wgslsmith_f_op_f32(select(global2.b, global0[_wgslsmith_index_u32(arg_2.a, 15u)], global4[_wgslsmith_index_u32(arg_2.a, 9u)]))))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_4(Struct_3(max(abs(min(0u, global2.a)), _wgslsmith_div_u32(~global2.a, ~4294967295u)), u_input.a, Struct_2(vec3<bool>(true, any(vec2<bool>(false, false)), 2147483647i < arg_0.x)), -_wgslsmith_mult_i32(arg_0.x, -2147483647i), Struct_2(vec3<bool>(any(vec3<bool>(global4[_wgslsmith_index_u32(4294967295u, 9u)], global4[_wgslsmith_index_u32(u_input.b.x, 9u)], global1[_wgslsmith_index_u32(4619u, 21u)])), 926f == global2.b, global1[_wgslsmith_index_u32(57905u, 21u)] | true))), !(!vec4<bool>(select(global4[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(59581u, 21u)]), true, true, global4[_wgslsmith_index_u32(~74744u, 9u)])), Struct_3(global2.a, u_input.a, Struct_2(select(func_3(), vec3<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 9u)], true), vec3<bool>(false, true, global4[_wgslsmith_index_u32(4294967295u, 9u)]))), abs(select(i32(-1i) * -1395i, global3.x, true)), Struct_2(select(select(vec3<bool>(global4[_wgslsmith_index_u32(66432u, 9u)], global1[_wgslsmith_index_u32(global2.a, 21u)], global1[_wgslsmith_index_u32(4294967295u, 21u)]), vec3<bool>(false, true, false), global1[_wgslsmith_index_u32(global2.a, 21u)]), vec3<bool>(true, global4[_wgslsmith_index_u32(57228u, 9u)], true), !vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 21u)], global1[_wgslsmith_index_u32(15104u, 21u)], global1[_wgslsmith_index_u32(u_input.d, 21u)])))), vec4<i32>(global3.x, abs(abs(global3.x)), max(_wgslsmith_clamp_i32(i32(-1i) * -20177i, global3.x, ~68830i), -40470i), -70629i)));
    var var_1 = global3.x >> (4294967295u % 32u);
    var var_2 = _wgslsmith_sub_vec3_i32(global3.yzx, _wgslsmith_mod_vec3_i32(~(-global3.zzw) ^ ~vec3<i32>(u_input.a, 0i, global3.x), ~arg_0.zxx));
    global1 = array<bool, 21>();
    var var_3 = vec3<u32>(~global2.a, 2297u, min(u_input.d, u_input.d));
    return Struct_2(vec3<bool>(any(!func_3().zx), any(select(select(vec3<bool>(true, false, global4[_wgslsmith_index_u32(0u, 9u)]), vec3<bool>(true, false, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], true, global4[_wgslsmith_index_u32(var_3.x, 9u)])), vec3<bool>(false, false, global1[_wgslsmith_index_u32(28516u, 21u)]), select(vec3<bool>(global1[_wgslsmith_index_u32(82844u, 21u)], global4[_wgslsmith_index_u32(var_3.x, 9u)], global1[_wgslsmith_index_u32(1u, 21u)]), vec3<bool>(true, true, global4[_wgslsmith_index_u32(1u, 9u)]), vec3<bool>(false, global4[_wgslsmith_index_u32(global2.a, 9u)], global1[_wgslsmith_index_u32(u_input.c.x, 21u)])))), true));
}

fn func_1(arg_0: f32) -> Struct_2 {
    return func_2(~firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, global3.x, global3.x, global3.x), -vec4<i32>(global3.x, -2147483647i, u_input.a, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(494f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1271f)))))));
    let var_1 = select(vec4<bool>(all(vec2<bool>(all(vec4<bool>(false, global4[_wgslsmith_index_u32(global2.a, 9u)], true, global4[_wgslsmith_index_u32(4294967295u, 9u)])), u_input.a <= -8900i)), var_0.a.x, global1[_wgslsmith_index_u32(0u, 21u)], false), vec4<bool>(false & select(false, 2239u > global2.a, global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(16745u, 101464u, u_input.b.x), 9u)]), var_0.a.x != !(global4[_wgslsmith_index_u32(global2.a, 9u)] | global1[_wgslsmith_index_u32(global2.a, 21u)]), global4[_wgslsmith_index_u32(~u_input.c.x, 9u)], func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-543f)))).a.x), any(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, global1[_wgslsmith_index_u32(global2.a, 21u)], false), vec4<bool>(var_0.a.x, true, true, var_0.a.x)), select(vec4<bool>(global1[_wgslsmith_index_u32(global2.a, 21u)], false, true, true), vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(2441u, 21u)]), true), false)));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global2.b, -1000f), global0[_wgslsmith_index_u32(global2.a, 15u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-627f - 240f) + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), global1[_wgslsmith_index_u32(global2.a, 21u)])), _wgslsmith_f_op_f32(f32(-1f) * -141f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(u_input.d, -1i, Struct_2(vec3<bool>(false, var_1.x, true)), global3.x, Struct_2(var_0.a)), var_1, Struct_3(0u, 3537i, Struct_2(var_0.a), 1i, Struct_2(vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], false, global1[_wgslsmith_index_u32(u_input.c.x, 21u)]))), vec4<i32>(global3.x, -11367i, -2147483647i, -1i))).x)), _wgslsmith_f_op_f32(f32(-1f) * -1001f))));
    var var_3 = u_input.d | u_input.d;
    var var_4 = _wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(~(_wgslsmith_mod_u32(0u & global2.a, global2.a) >> (u_input.b.x % 32u)), 15u)]));
    var var_5 = var_1;
    global3 = ~vec4<i32>(2147483647i, ~u_input.a, (countOneBits(0i) ^ _wgslsmith_dot_vec3_i32(global3.xxz, global3.xxx)) ^ _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a, -1i), _wgslsmith_div_i32(-2147483647i, global3.x)), select(u_input.a, -firstLeadingBit(u_input.a), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(global3.yyy, vec3<i32>(-1i, ~u_input.a, _wgslsmith_add_i32(-34114i, 4665i))));
}

