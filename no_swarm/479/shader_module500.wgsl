struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: i32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4> = array<i32, 4>(12593i, 56519i, 0i, 1i);

var<private> global1: vec4<u32> = vec4<u32>(18398u, 4294967295u, 4294967295u, 102065u);

var<private> global2: array<bool, 9> = array<bool, 9>(false, true, true, true, true, false, true, false, false);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool) -> f32 {
    global1 = vec4<u32>(1u, 32975u, select(u_input.b.x, _wgslsmith_mult_u32(_wgslsmith_mod_u32(0u >> (u_input.b.x % 32u), u_input.b.x), _wgslsmith_sub_u32(~0u, min(u_input.a.x, u_input.c))), any(select(vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 9u)], arg_0, arg_0), select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(false, true, true), arg_0), select(vec3<bool>(arg_0, global2[_wgslsmith_index_u32(u_input.b.x, 9u)], global2[_wgslsmith_index_u32(44819u, 9u)]), vec3<bool>(arg_0, arg_0, global2[_wgslsmith_index_u32(u_input.b.x, 9u)]), vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 9u)], global2[_wgslsmith_index_u32(29322u, 9u)], arg_0))))), _wgslsmith_clamp_u32(47073u, min(~(~10951u), u_input.c), ~global1.x));
    var var_0 = _wgslsmith_div_vec3_i32(select(vec3<i32>(~0i, 70581i, global0[_wgslsmith_index_u32(4294967295u >> (0u % 32u), 4u)] | global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x, 4294967295u), 4u)]), countOneBits(vec3<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(global1.x, 4u)], 2147483647i), 44145i, global0[_wgslsmith_index_u32(u_input.a.x, 4u)])), !select(select(vec3<bool>(global2[_wgslsmith_index_u32(4294967295u, 9u)], arg_0, arg_0), vec3<bool>(false, false, true), true), !vec3<bool>(true, arg_0, arg_0), select(vec3<bool>(true, true, true), vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 9u)], arg_0, global2[_wgslsmith_index_u32(4294967295u, 9u)]), true))), vec3<i32>(global0[_wgslsmith_index_u32(select(u_input.c, firstLeadingBit(global1.x), global1.x >= u_input.b.x), 4u)] | -1i, -2147483647i, _wgslsmith_dot_vec2_i32(~select(vec2<i32>(global0[_wgslsmith_index_u32(18491u, 4u)], 1i), vec2<i32>(global0[_wgslsmith_index_u32(0u, 4u)], global0[_wgslsmith_index_u32(global1.x, 4u)]), true), select(~vec2<i32>(global0[_wgslsmith_index_u32(109274u, 4u)], global0[_wgslsmith_index_u32(global1.x, 4u)]), firstLeadingBit(vec2<i32>(-2147483647i, 0i)), all(vec3<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 9u)], arg_0))))));
    var_0 = vec3<i32>(-31242i, _wgslsmith_mult_i32(~587i, ~max(var_0.x, -var_0.x)), ~firstLeadingBit(_wgslsmith_add_i32(-2147483647i, global0[_wgslsmith_index_u32(u_input.c, 4u)]) | -2147483647i));
    var var_1 = Struct_3(abs(~44360u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(round(-820f)), -334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1f))));
    return 921f;
}

fn func_2() -> vec3<bool> {
    let var_0 = Struct_1(all(!vec4<bool>(true, true, global2[_wgslsmith_index_u32(~global1.x, 9u)], !global2[_wgslsmith_index_u32(u_input.c, 9u)])), _wgslsmith_f_op_f32(round(-468f)), 12204i, 1i, !vec2<bool>(all(vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 9u)])), all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global2[_wgslsmith_index_u32(28960u, 9u)], true), vec4<bool>(false, true, true, global2[_wgslsmith_index_u32(global1.x, 9u)])))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.b + _wgslsmith_f_op_f32(func_3(var_0.a))), 1739f, _wgslsmith_f_op_f32(step(-1742f, _wgslsmith_f_op_f32(abs(-898f)))), var_0.b) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(189f, 651f, 1000f, _wgslsmith_f_op_f32(174f - -1135f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-782f, 396f, var_0.b, var_0.b), vec4<f32>(193f, -128f, var_0.b, 1342f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 1338f, var_0.b, -878f) - vec4<f32>(274f, 1069f, var_0.b, var_0.b))), vec4<bool>(true, select(var_0.e.x, global2[_wgslsmith_index_u32(u_input.a.x, 9u)], global2[_wgslsmith_index_u32(49489u, 9u)]), global2[_wgslsmith_index_u32(8290u, 9u)], any(var_0.e))))));
    let var_2 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(~global1.x, 4u)], ~var_0.d, var_0.d, _wgslsmith_mod_i32(-55315i, ~(-15059i))), -max(vec4<i32>(var_0.c, var_0.c, 1i, var_0.c), vec4<i32>(-2147483647i, -1i, 2147483647i, global0[_wgslsmith_index_u32(global1.x, 4u)])) ^ vec4<i32>(global0[_wgslsmith_index_u32(1u, 4u)], -60020i, max(-1i, var_0.d), var_0.c)), (-_wgslsmith_div_i32(-1i, var_0.c) | -var_0.d) << (min(global1.x, ~abs(global1.x)) % 32u));
    let var_3 = abs(-33272i);
    var var_4 = var_0;
    return select(vec3<bool>(true == var_4.a, var_4.e.x, select(var_4.a, !(global0[_wgslsmith_index_u32(u_input.b.x, 4u)] != var_2.x), var_0.a)), vec3<bool>(global2[_wgslsmith_index_u32(~3239u << (abs(u_input.a.x) % 32u), 9u)] & (all(vec4<bool>(global2[_wgslsmith_index_u32(54431u, 9u)], global2[_wgslsmith_index_u32(u_input.b.x, 9u)], true, global2[_wgslsmith_index_u32(1u, 9u)])) || global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global1.x, global1.x), 9u)]), all(var_4.e), all(vec3<bool>(global2[_wgslsmith_index_u32(~global1.x, 9u)], var_4.e.x, true && var_0.e.x))), var_0.e.x);
}

fn func_1(arg_0: Struct_3) -> bool {
    return !any(select(!func_2(), !select(vec3<bool>(global2[_wgslsmith_index_u32(6544u, 9u)], global2[_wgslsmith_index_u32(82030u, 9u)], false), vec3<bool>(true, false, true), vec3<bool>(global2[_wgslsmith_index_u32(global1.x, 9u)], global2[_wgslsmith_index_u32(global1.x, 9u)], true)), func_2().x));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> vec4<u32> {
    global1 = abs(~(~vec4<u32>(_wgslsmith_clamp_u32(63219u, u_input.b.x, arg_1.a), u_input.c, u_input.b.x, ~4633u)));
    let var_0 = firstTrailingBit(global1.zx);
    var var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(global1.wyx >> (vec3<u32>(5914u, 66181u, 0u) % vec3<u32>(32u))), u_input.a.xzz), 115248u), 4u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -1102f, 1929f, 858f))), vec4<f32>(1016f, 737f, -518f, 619f), select(vec4<bool>(false, false, false, arg_0.x), vec4<bool>(true, true, true, true), vec4<bool>(global2[_wgslsmith_index_u32(global1.x, 9u)], global2[_wgslsmith_index_u32(1u, 9u)], arg_0.x, true)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(575f, _wgslsmith_f_op_f32(min(-1399f, -279f)), _wgslsmith_f_op_f32(max(527f, 513f)), _wgslsmith_f_op_f32(-148f + 225f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1231f, -600f, -1044f, 2855f)))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(global1.xxx ^ vec3<u32>(arg_1.a, global1.x, arg_1.a), max(vec3<u32>(global1.x, arg_1.a, 0u), global1.wzx)) | vec3<u32>(12403u << (global1.x % 32u), var_0.x, 0u), global1.xyy << (_wgslsmith_add_vec3_u32(global1.wxz << (vec3<u32>(19563u, global1.x, 16274u) % vec3<u32>(32u)), _wgslsmith_add_vec3_u32(u_input.a.zxz, vec3<u32>(global1.x, 1u, 0u))) % vec3<u32>(32u))));
    global0 = array<i32, 4>();
    var_1 = Struct_2(65072i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-var_1.b), _wgslsmith_f_op_vec4_f32(-var_1.b)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_1.b.x, -566f, var_1.b.x, -427f)))))), u_input.c);
    return ~vec4<u32>(_wgslsmith_div_u32(reverseBits(var_0.x), countOneBits(var_1.c)), _wgslsmith_sub_u32(var_0.x, arg_1.a) >> (global1.x % 32u), arg_1.a, _wgslsmith_div_u32(_wgslsmith_div_u32(global1.x | var_1.c, _wgslsmith_add_u32(17790u, arg_1.a)), min(122686u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    global1 = u_input.a;
    let var_0 = Struct_2(global0[_wgslsmith_index_u32(12982u, 4u)], vec4<f32>(-275f, -1479f, -789f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(801f, -1417f)))))), 1u);
    var var_1 = func_4(!vec2<bool>(_wgslsmith_f_op_f32(max(1000f, var_0.b.x)) < var_0.b.x, func_1(Struct_3(10955u))), Struct_3(65746u));
    let var_2 = 990f;
    let var_3 = _wgslsmith_sub_vec2_i32(firstLeadingBit(~vec2<i32>(reverseBits(var_0.a), -var_0.a)), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, firstTrailingBit(0i), ~2147483647i, reverseBits(14091i)), vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(var_1.x, 4u)], -43311i, -4907i, global0[_wgslsmith_index_u32(27666u, 4u)])), 2147483647i));
    var var_4 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_1.x, 27017u), 9u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2));
}

