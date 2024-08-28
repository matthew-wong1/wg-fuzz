struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: vec4<i32> = vec4<i32>(57372i, -1i, -20661i, 19382i);

var<private> global2: array<u32, 6> = array<u32, 6>(2119u, 0u, 55489u, 10093u, 0u, 23936u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: vec3<f32>) -> Struct_2 {
    global0 = array<u32, 10>();
    let var_0 = vec3<f32>(-1832f, arg_3.x, _wgslsmith_f_op_f32(-arg_3.x));
    global2 = array<u32, 6>();
    global2 = array<u32, 6>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_3.x))));
    return Struct_2(Struct_1(~arg_0.ywy, !any(vec4<bool>(false, true, false, false)), var_0.x, _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], _wgslsmith_sub_u32(arg_0.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0.x, 6u)], 10u)], 6u)], global0[_wgslsmith_index_u32(arg_2, 10u)], 80920u, 55165u), arg_0)))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: i32, arg_3: vec3<i32>) -> vec4<i32> {
    global1 = _wgslsmith_add_vec4_i32(~vec4<i32>(max(2147483647i, -2147483647i), -1412i, firstTrailingBit(u_input.c) & -1i, arg_3.x), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, global1.x, global1.x), vec4<i32>(-1i, 21781i, arg_3.x, -64734i))), -1i, ~arg_3.x, -6567i), vec4<i32>(-1i) * -vec4<i32>(57556i, -18623i, arg_3.x, -2147483647i)));
    global2 = array<u32, 6>();
    var var_0 = !select(!vec2<bool>(1u >= global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 6u)], !arg_0.a.b), vec2<bool>(!arg_0.a.b, true), vec2<bool>(arg_0.a.b, arg_0.a.b));
    let var_1 = abs(203u);
    global2 = array<u32, 6>();
    return min(~(~vec4<i32>(2147483647i, 9460i, arg_3.x, 51219i)) & vec4<i32>(6347i, 2147483647i, 18273i, min(-u_input.c, _wgslsmith_clamp_i32(-1i, arg_3.x, 8347i))), select(vec4<i32>(arg_2, firstLeadingBit(arg_1.x), -(~0i), _wgslsmith_dot_vec2_i32(u_input.a.xz, -vec2<i32>(global1.x, arg_1.x))), select(max(~vec4<i32>(-34444i, arg_3.x, 0i, arg_2), _wgslsmith_mult_vec4_i32(vec4<i32>(13097i, arg_2, u_input.b, global1.x), vec4<i32>(arg_3.x, 1i, arg_1.x, 39225i))), vec4<i32>(-1i) * -vec4<i32>(arg_3.x, global1.x, global1.x, global1.x), vec4<bool>(!var_0.x, arg_0.a.b, !arg_0.a.b, false)), select(!(!vec4<bool>(arg_0.a.b, true, true, false)), vec4<bool>(arg_0.a.b, any(vec4<bool>(false, true, var_0.x, var_0.x)), !arg_0.a.b, var_0.x | var_0.x), true)));
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> f32 {
    let var_0 = select(!vec2<bool>(arg_1, true), !select(select(!vec2<bool>(arg_1, false), vec2<bool>(false, arg_1), vec2<bool>(true, true)), !select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, true), true), vec2<bool>(true, select(arg_1, arg_1, arg_1))), any(vec2<bool>(true, true)) || arg_1);
    let var_1 = !vec4<bool>(!var_0.x, var_0.x, arg_1, all(select(select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(var_0.x, arg_1, var_0.x), vec3<bool>(arg_1, false, arg_1)), vec3<bool>(true, false, false), true)));
    let var_2 = arg_1;
    global2 = array<u32, 6>();
    global1 = _wgslsmith_clamp_vec4_i32(min(arg_0 | func_3(func_2(vec4<u32>(13023u, global2[_wgslsmith_index_u32(71405u, 6u)], 13675u, global0[_wgslsmith_index_u32(18719u, 10u)]), -9059i, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], vec3<f32>(-1038f, 947f, -853f)), global1.wx, -18746i, arg_0.zyx), arg_0), firstTrailingBit(firstTrailingBit(vec4<i32>(min(2147483647i, global1.x), global1.x, -2147483647i, -22222i))), reverseBits(vec4<i32>(countOneBits(-arg_0.x), _wgslsmith_mod_i32(u_input.c, -20996i), -global1.x, firstTrailingBit(2147483647i))));
    return -571f;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3, arg_2: vec4<bool>, arg_3: f32) -> f32 {
    global2 = array<u32, 6>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(arg_1.b.a.c, arg_3, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(374f * arg_0.x)), 476f), vec4<f32>(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-393f))), -1421f, -532f))));
    var var_1 = !arg_2.zw;
    let var_2 = Struct_4(func_2(vec4<u32>(100608u, 4294967295u, func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(12286u, 6u)], 10u)], 32382u, 1u), vec4<u32>(4294967295u, 8632u, global2[_wgslsmith_index_u32(4294967295u, 6u)], global2[_wgslsmith_index_u32(6652u, 6u)])), 2147483647i, ~20786u, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2305f, 113f, arg_1.b.a.c)))).a.a.x, ~4294967295u), -2147483647i >> (global0[_wgslsmith_index_u32(27488u << (firstLeadingBit(4294967295u) % 32u), 10u)] % 32u), abs(global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(1u, 6u)], 6u)]) & firstTrailingBit(4294967295u), _wgslsmith_div_vec3_f32(arg_0, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(112f, 473f, 1010f))), _wgslsmith_f_op_vec3_f32(-arg_0))))).a, 9004u, -39085i, vec3<i32>(arg_1.c, arg_1.c, -26951i), _wgslsmith_sub_vec3_i32(-u_input.a, (vec3<i32>(global1.x, global1.x, 1i) | u_input.a) << ((arg_1.b.a.a | firstLeadingBit(arg_1.a)) % vec3<u32>(32u))));
    let var_3 = arg_1.b;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<i32>(func_3(var_3, var_2.e.yz, -43326i, vec3<i32>(u_input.c, 31965i, u_input.c)).x, min(global1.x, global1.x), 0i, ~(-1i)) ^ -(vec4<i32>(1i, 6061i, arg_1.c, 1i) & vec4<i32>(global1.x, u_input.c, arg_1.c, u_input.b)), var_2.a.b)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1767f, var_3.a.c)) * _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(427f * 304f) * 1f)))) > _wgslsmith_f_op_f32(1118f - 671f);
    var var_1 = _wgslsmith_f_op_f32(round(-1994f));
    global0 = array<u32, 10>();
    var var_2 = _wgslsmith_sub_u32(~85565u, global2[_wgslsmith_index_u32(~(~85904u), 6u)]);
    var var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(func_1(vec4<i32>(100580i, global1.x, u_input.c, 0i), true)), _wgslsmith_f_op_f32(-481f - -1821f), _wgslsmith_f_op_f32(200f * -464f)), Struct_3(vec3<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 1u, 0u), Struct_2(Struct_1(vec3<u32>(50408u, 6131u, 4294967295u), true, 293f, 4294967295u)), _wgslsmith_div_i32(func_3(Struct_2(Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 6u)], 10u)], global0[_wgslsmith_index_u32(1u, 10u)]), false, -3378f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 6u)])), u_input.a.xz, u_input.b, vec3<i32>(2828i, 0i, global1.x)).x, ~1i), func_2(~vec4<u32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15014u, 6u)], 6u)], 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 6u)], 6u)], global0[_wgslsmith_index_u32(15239u, 10u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55191u, 10u)], 10u)]), u_input.b, ~42896u, vec3<f32>(1000f, -1791f, 459f)).a), select(vec4<bool>(true, true, all(vec2<bool>(true, false)), true), vec4<bool>(true, global2[_wgslsmith_index_u32(56484u, 6u)] >= global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(13753u, 6u)], 10u)], true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(func_2(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31752u, 10u)], 10u)], 0u, global0[_wgslsmith_index_u32(4294967295u, 10u)]), u_input.b, 61744u, vec3<f32>(-811f, 335f, 1000f)).a.c, _wgslsmith_f_op_f32(-471f + -794f)))))));
    let var_4 = !(!vec4<bool>(false, true, _wgslsmith_f_op_f32(select(-993f, -1314f, true)) != _wgslsmith_f_op_f32(229f - -1385f), firstLeadingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)]) < global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(1u, 10u)], 0u), 10u)]));
    global1 = ~(min(vec4<i32>(-40513i, 0i, global1.x, -9107i) ^ select(vec4<i32>(u_input.b, u_input.b, 0i, 0i), vec4<i32>(2147483647i, -2147483647i, -2147483647i, global1.x), var_4.x), vec4<i32>(-106540i, _wgslsmith_mult_i32(global1.x, 23777i), global1.x, u_input.a.x)) & vec4<i32>(i32(-1i) * -2147483647i, u_input.a.x, global1.x, _wgslsmith_mod_i32(countOneBits(global1.x), u_input.b)));
    let var_5 = Struct_4(Struct_1(select(~(vec3<u32>(32996u, global2[_wgslsmith_index_u32(78921u, 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)], 6u)]) ^ vec3<u32>(12556u, global2[_wgslsmith_index_u32(1u, 6u)], global2[_wgslsmith_index_u32(4834u, 6u)])), ~max(vec3<u32>(0u, 1u, 0u), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(63303u, 10u)], 10u)], 44987u, global2[_wgslsmith_index_u32(70606u, 6u)])), var_4.yxy), true, _wgslsmith_f_op_f32(func_4(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -372f), _wgslsmith_div_f32(591f, -806f), -791f), Struct_3(min(vec3<u32>(global0[_wgslsmith_index_u32(16172u, 10u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 6u)], 10u)], 10u)], 10u)], 10u)], 6u)], 6u)], 4294967295u), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 6u)], 6u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 6u)], 6u)], 10u)], 112180u)), func_2(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(1u, 10u)], 0u, 0u), -1i, 52407u, vec3<f32>(-722f, -2803f, 632f)), reverseBits(-16128i), Struct_1(vec3<u32>(global0[_wgslsmith_index_u32(35616u, 10u)], 4294967295u, 75931u), var_4.x, -1030f, 4294967295u)), !vec4<bool>(var_4.x, true, false, var_4.x), _wgslsmith_f_op_f32(trunc(-197f)))), min(4294967295u, ~1u)), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~1u, 39460u), 6u)], _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, global1.x), u_input.c), _wgslsmith_mod_i32(global1.x, -2147483647i)) | -_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.b, -14929i, 1i), vec4<i32>(14111i, 74314i, 50415i, 38019i)), vec3<i32>(42865i, func_3(Struct_2(Struct_1(vec3<u32>(global2[_wgslsmith_index_u32(1u, 6u)], 1u, 1u), true, 127f, 4294967295u)), ~vec2<i32>(global1.x, global1.x) >> (_wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 10u)], 10u)], 10u)]), vec2<u32>(global0[_wgslsmith_index_u32(0u, 10u)], 7266u)) % vec2<u32>(32u)), max(~u_input.b, _wgslsmith_clamp_i32(global1.x, global1.x, 10615i)), vec3<i32>(u_input.b, 0i, global1.x)).x, -firstLeadingBit(u_input.c) << ((_wgslsmith_mult_u32(4294967295u, global0[_wgslsmith_index_u32(4294967295u, 10u)]) & (4294967295u >> (global0[_wgslsmith_index_u32(11541u, 10u)] % 32u))) % 32u)), _wgslsmith_add_vec3_i32(global1.zyz, -(~_wgslsmith_sub_vec3_i32(vec3<i32>(global1.x, -1i, u_input.c), vec3<i32>(u_input.c, 38290i, 1i)))));
    let var_6 = Struct_4(Struct_1(max(~(var_5.a.a << (vec3<u32>(global2[_wgslsmith_index_u32(19653u, 6u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 10u)], 6u)], 0u) % vec3<u32>(32u))), var_5.a.a), var_4.x, 139f, abs(global0[_wgslsmith_index_u32(var_5.a.a.x, 10u)]) << (~global2[_wgslsmith_index_u32(0u, 6u)] % 32u)), 474u, var_5.e.x, _wgslsmith_mult_vec3_i32(abs(var_5.e), -vec3<i32>(firstTrailingBit(-72252i), _wgslsmith_mult_i32(u_input.c, var_5.c), -52302i)), var_5.e << (vec3<u32>(var_5.b ^ 87071u, ~abs(4294967295u), var_5.a.a.x) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.zx ^ vec2<i32>(~(~1i), var_5.d.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1580f, 1501f, var_6.a.c, 334f) - vec4<f32>(var_6.a.c, 1455f, var_6.a.c, var_6.a.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-483f, var_6.a.c, var_6.a.c, 803f)))))));
}

