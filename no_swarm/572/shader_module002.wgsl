struct Struct_1 {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<f32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

var<private> global1: bool;

var<private> global2: array<i32, 21> = array<i32, 21>(i32(-2147483648), 6757i, -9854i, -71158i, -81436i, i32(-2147483648), 0i, 37335i, 39624i, 1i, i32(-2147483648), -60085i, -1i, 14171i, -1i, -1i, i32(-2147483648), 20523i, i32(-2147483648), 11494i, i32(-2147483648));

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>) -> u32 {
    global0 = ~4294967295u;
    global1 = true;
    global0 = arg_0;
    var var_0 = !arg_1.x;
    let var_1 = _wgslsmith_f_op_f32(sign(-702f));
    return 0u;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    global2 = array<i32, 21>();
    global1 = true;
    let var_0 = select(vec3<bool>(true, false, false), select(!vec3<bool>(any(vec3<bool>(true, false, false)), any(vec3<bool>(false, true, true)), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2.d.x)) * arg_2.d.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(191f)) - _wgslsmith_f_op_f32(f32(-1f) * -819f))) <= _wgslsmith_div_f32(arg_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = ~arg_0.x;
    global1 = select(!(all(vec4<bool>(var_0.x, false, false, var_0.x)) && var_0.x), var_0.x, var_0.x && !var_0.x);
    return min(_wgslsmith_dot_vec2_u32(vec2<u32>(~(~4294967295u), ~firstLeadingBit(arg_1.x)), arg_2.b.zy), ~(_wgslsmith_add_u32(min(1u, arg_1.x), arg_1.x) & 0u));
}

fn func_2(arg_0: Struct_1) -> vec3<bool> {
    var var_0 = _wgslsmith_add_i32((max(~(-4429i), arg_0.a.x << (4294967295u % 32u)) | 1i) >> ((~arg_0.c & ~1u) % 32u), -52441i);
    var var_1 = arg_0;
    let var_2 = _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 20494u, ~(~(~arg_0.b.x))), vec3<u32>(func_4(vec3<u32>(func_3(1u, vec3<bool>(false, true, true)), ~0u, var_1.b.x), var_1.b.zy, arg_0, vec3<i32>(-30775i, -26973i, arg_0.a.x) ^ ~vec3<i32>(var_1.a.x, arg_0.a.x, var_1.a.x)), u_input.a, u_input.a));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.d.x, -960f, false || select(false, true, true))), _wgslsmith_div_f32(790f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-540f, -714f, true))))), all(vec4<bool>(false, true, true, false)) != false)));
    global1 = any(select(vec3<bool>(true, all(vec4<bool>(true, true, false, true)), all(vec2<bool>(false, true))), vec3<bool>(!(arg_0.e.x <= 0u), any(vec4<bool>(true, true, true, true)), true), vec3<bool>(true, true, all(vec3<bool>(false, false, true)) != true)));
    return !vec3<bool>(true, all(vec3<bool>(true, 0u <= var_1.e.x, all(vec3<bool>(true, false, true)))), !all(vec3<bool>(true, true, true)));
}

fn func_1() -> vec3<u32> {
    global1 = all(select(vec3<bool>(true, true, true), func_2(Struct_1(vec3<i32>(14745i, 1i, -1533i), vec3<u32>(u_input.b, u_input.a, 104135u), u_input.b, vec3<f32>(636f, 248f, -300f), vec2<u32>(4294967295u, 102212u))), !select(true, false, false))) && true;
    var var_0 = vec3<bool>(false, true, true);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) + -969f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(583f)), _wgslsmith_f_op_f32(1192f + 2036f), 0i <= global2[_wgslsmith_index_u32(4294967295u, 21u)])) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1173f)) * -839f))), -656f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -513f))) + _wgslsmith_f_op_f32(-400f - -426f)), -2439f);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -118f) + _wgslsmith_f_op_f32(var_1.x * 1020f)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_1.x, 391f))));
    let var_3 = var_0.x;
    return ~max(vec3<u32>(func_4(vec3<u32>(u_input.a, u_input.b, u_input.b), countOneBits(vec2<u32>(u_input.a, u_input.a)), Struct_1(vec3<i32>(29295i, 1i, -2147483647i), vec3<u32>(83505u, u_input.b, u_input.b), 33833u, vec3<f32>(-543f, var_1.x, var_1.x), vec2<u32>(u_input.a, 0u)), _wgslsmith_sub_vec3_i32(vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 21u)], global2[_wgslsmith_index_u32(74560u, 21u)], 0i), vec3<i32>(global2[_wgslsmith_index_u32(u_input.b, 21u)], 1851i, global2[_wgslsmith_index_u32(2725u, 21u)]))), u_input.b, ~(4294967295u | u_input.b)), ~vec3<u32>(~u_input.a, _wgslsmith_clamp_u32(0u, u_input.b, 69598u), u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(func_1()) >> (_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.b, u_input.b, u_input.a), _wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(1u, 81423u, u_input.b)) & ~vec3<u32>(u_input.a, 1u, 1u)) % vec3<u32>(32u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-135f * -522f), _wgslsmith_f_op_f32(max(1183f, -999f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(317f - -1173f) + _wgslsmith_f_op_f32(f32(-1f) * -2673f)), -730f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-2641f, 1662f, 1034f) + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-360f, 1057f, -1932f)))))), ~0u & ~u_input.b, _wgslsmith_mod_vec2_i32(vec2<i32>(1i, -global2[_wgslsmith_index_u32(u_input.a, 21u)]), vec2<i32>(global2[_wgslsmith_index_u32(~u_input.b, 21u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(u_input.b, 21u)]), vec2<i32>(44591i, global2[_wgslsmith_index_u32(31043u, 21u)])))) << ((firstLeadingBit(~vec2<u32>(59292u, u_input.b)) >> (func_1().xz % vec2<u32>(32u))) % vec2<u32>(32u)), vec4<i32>(abs(select(-35121i, 1i, true)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, u_input.a), 21u)], _wgslsmith_div_i32(_wgslsmith_mod_i32(-global2[_wgslsmith_index_u32(u_input.a, 21u)], 85469i), 4130i), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(4294967295u, 21u)], global2[_wgslsmith_index_u32(50347u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)]), vec4<i32>(global2[_wgslsmith_index_u32(u_input.a, 21u)], global2[_wgslsmith_index_u32(4294967295u, 21u)], 2147483647i, global2[_wgslsmith_index_u32(u_input.a, 21u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, global2[_wgslsmith_index_u32(1u, 21u)], -40276i, -18960i), vec4<i32>(-1i, 0i, 43551i, global2[_wgslsmith_index_u32(33757u, 21u)]), vec4<i32>(-2147483647i, 49849i, global2[_wgslsmith_index_u32(0u, 21u)], -18351i))), vec4<i32>(_wgslsmith_add_i32(45803i, 1i), abs(8531i), -2147483647i ^ global2[_wgslsmith_index_u32(u_input.b, 21u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(58205u, 4294967295u), 21u)]))));
}

