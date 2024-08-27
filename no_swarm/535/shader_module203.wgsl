struct Struct_1 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: array<bool, 3> = array<bool, 3>(false, false, true);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: i32) -> Struct_1 {
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(-732f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-558f - global1.a.x) - _wgslsmith_f_op_f32(min(-456f, -727f))), -555f)), global1.b);
    global2 = array<bool, 3>();
    var var_0 = Struct_1(global1.a, (1i << (_wgslsmith_mod_u32(_wgslsmith_mod_u32(66318u, 1u), _wgslsmith_add_u32(101272u, 9250u)) % 32u)) >> (1u % 32u));
    let var_1 = ~(~(~_wgslsmith_mult_vec2_u32(~vec2<u32>(0u, 1u), firstTrailingBit(vec2<u32>(1u, 4294967295u)))));
    let var_2 = select(vec3<bool>(~(~5801u) == _wgslsmith_div_u32(~var_1.x, var_1.x), all(vec2<bool>(global2[_wgslsmith_index_u32(var_1.x, 3u)] | global2[_wgslsmith_index_u32(var_1.x, 3u)], global2[_wgslsmith_index_u32(0u, 3u)])), true), !select(vec3<bool>(false, true, global2[_wgslsmith_index_u32(var_1.x, 3u)]), vec3<bool>(true, true, false), !vec3<bool>(false, true, global2[_wgslsmith_index_u32(0u, 3u)])), global2[_wgslsmith_index_u32(~var_1.x, 3u)]);
    return Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(359f)), _wgslsmith_f_op_f32(trunc(245f)), _wgslsmith_f_op_f32(sign(-540f))), global1.a, var_2)), 14328i);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: bool) -> i32 {
    let var_0 = countOneBits(vec4<u32>(_wgslsmith_dot_vec2_u32(min(vec2<u32>(0u, 4294967295u), vec2<u32>(1u, 4294967295u)), ~vec2<u32>(0u, 4294967295u)), min(~1u, max(80343u, 53546u)), max(51171u, 3778u), 1u)) ^ ~(~vec4<u32>(1u, ~1u, select(21924u, 6580u, global2[_wgslsmith_index_u32(22110u, 3u)]), select(4294967295u, 35484u, arg_2)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(global1.a * vec3<f32>(-1125f, global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -722f) * 1862f))), -1i);
    let var_2 = var_1.a.x;
    global1 = Struct_1(var_1.a, 6754i);
    var var_3 = select(!vec4<bool>(true, true, true, arg_0.x), arg_0, vec4<bool>(((var_0.x >> (var_0.x % 32u)) ^ _wgslsmith_add_u32(0u, 33484u)) != _wgslsmith_add_u32(var_0.x, var_0.x), true == any(!vec4<bool>(true, false, arg_0.x, true)), select(!arg_0.x, any(arg_0.yzz), false), any(vec4<bool>(false, true, true, false))));
    return ~(-9584i);
}

fn func_1() -> Struct_2 {
    var var_0 = func_2(u_input.c);
    let var_1 = Struct_2(Struct_1(vec3<f32>(495f, global1.a.x, var_0.a.x), func_2(2506i).b), Struct_1(global1.a, _wgslsmith_clamp_i32(u_input.a, ~func_3(vec4<bool>(global2[_wgslsmith_index_u32(62316u, 3u)], global2[_wgslsmith_index_u32(1u, 3u)], global2[_wgslsmith_index_u32(0u, 3u)], true), vec4<i32>(-54148i, global1.b, -30609i, 49750i), global2[_wgslsmith_index_u32(1u, 3u)]), u_input.c)));
    var var_2 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(ceil(global1.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-240f)), _wgslsmith_div_f32(-797f, var_1.b.a.x), global2[_wgslsmith_index_u32(9019u, 3u)])) * -316f), _wgslsmith_div_f32(867f, 1f), global1.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global1.a.x, 498f, 728f)) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.a.x, 443f, global1.a.x, global1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(241f, global1.a.x, var_0.a.x, 1530f))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_1.b.a.x)) + -669f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1000f, -1303f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-628f - 464f) + _wgslsmith_f_op_f32(min(global1.a.x, 308f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(min(937f, -1000f))))))));
    let var_3 = Struct_1(var_2.wyz, var_0.b);
    global0 = !any(vec4<bool>(global2[_wgslsmith_index_u32(reverseBits(161238u), 3u)] & global2[_wgslsmith_index_u32(~1u, 3u)], false, any(select(vec4<bool>(false, true, true, false), vec4<bool>(false, global2[_wgslsmith_index_u32(12348u, 3u)], false, true), global2[_wgslsmith_index_u32(23534u, 3u)])), all(vec3<bool>(global2[_wgslsmith_index_u32(18387u, 3u)], true, global2[_wgslsmith_index_u32(42648u, 3u)]))));
    return var_1;
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = arg_2;
    var var_1 = vec2<u32>(_wgslsmith_dot_vec4_u32(~countOneBits(~vec4<u32>(45953u, 1u, 10864u, 7560u)), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 73978u), _wgslsmith_sub_vec2_u32(vec2<u32>(36974u, 93291u), vec2<u32>(0u, 0u))), 1u, 1u, firstLeadingBit(_wgslsmith_mult_u32(0u, 1u)))), 1u);
    var var_2 = _wgslsmith_add_vec4_u32(~select(~firstLeadingBit(vec4<u32>(0u, 110263u, var_1.x, 76263u)), vec4<u32>(var_1.x, 26490u, var_1.x, var_1.x) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.x, var_1.x, var_1.x), vec4<u32>(82700u, 33489u, var_1.x, var_1.x)), all(vec4<bool>(arg_0, arg_0, true, global2[_wgslsmith_index_u32(var_1.x, 3u)]))), ~min(abs(~vec4<u32>(var_1.x, 25012u, var_1.x, 300u)), max(vec4<u32>(var_1.x, 4294967295u, 81442u, var_1.x), firstTrailingBit(vec4<u32>(61016u, var_1.x, 0u, var_1.x)))));
    var var_3 = vec4<u32>(1u, 4294967295u, _wgslsmith_div_u32(var_1.x, countOneBits(var_2.x) << ((_wgslsmith_add_u32(var_1.x, 46223u) ^ 38274u) % 32u)), ((4294967295u ^ var_1.x) ^ 4294967295u) << (16894u % 32u));
    let var_4 = var_0.b;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 3>();
    var var_0 = min(~(i32(-1i) * -1i), func_4(!global2[_wgslsmith_index_u32(0u, 3u)], false, func_1(), 0i));
    var var_1 = Struct_1(global1.a, global1.b);
    var var_2 = vec3<bool>(global2[_wgslsmith_index_u32(~(~(~(~51231u))), 3u)], true, false);
    var var_3 = vec3<f32>(func_1().b.a.x, global1.a.x, 451f);
    let var_4 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, _wgslsmith_f_op_f32(min(-295f, _wgslsmith_f_op_f32(1378f * -905f))), _wgslsmith_div_f32(global1.a.x, func_1().b.a.x))), var_1.b << (min(select(abs(1u), abs(1u), true), 0u) % 32u));
    let var_5 = global1.b;
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~countOneBits(vec4<u32>(71036u, 26448u, 8314u, 1u)), min(vec4<u32>(0u, 4294967295u, 32316u, 12600u) >> (select(vec4<u32>(1u, 27144u, 4294967295u, 53294u), vec4<u32>(1u, 1u, 5021u, 4294967295u), false) % vec4<u32>(32u)), reverseBits(~vec4<u32>(0u, 114749u, 4294967295u, 35421u)))));
}

