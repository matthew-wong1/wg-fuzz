struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<bool, 22>;

var<private> global2: vec4<i32> = vec4<i32>(35778i, 2147483647i, -1i, -1439i);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec2<bool>) -> bool {
    let var_0 = Struct_4(vec3<i32>(~(global2.x & ~u_input.b), -abs(min(global2.x, u_input.b)), global0.x), global2.xxx, -1206f);
    global2 = abs(_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global2.x, var_0.a.x, -1i, -1i), select(vec4<i32>(var_0.b.x, 13848i, 21090i, 6260i) ^ vec4<i32>(var_0.b.x, -2646i, var_0.a.x, 0i), -vec4<i32>(u_input.b, global0.x, -10490i, 27060i), true)), _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(2147483647i, 0i, global0.x, global2.x), vec4<i32>(_wgslsmith_add_i32(56498i, u_input.a.x), 1i, 45292i, -12203i))));
    let var_1 = vec4<u32>(1u, 1u, 1u, 1u);
    global0 = abs(-vec4<i32>(-1i, _wgslsmith_mod_i32(u_input.a.x, 29038i), ~var_0.b.x, 39404i));
    let var_2 = arg_0.x;
    return false;
}

fn func_4(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: f32) -> u32 {
    let var_0 = arg_2.c.x;
    global1 = array<bool, 22>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(513f, arg_3) * vec2<f32>(1668f, 440f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-103f, arg_3) + vec2<f32>(arg_2.b, 391f)))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, arg_2.b)), vec2<f32>(156f, arg_2.b))))));
    global2 = -_wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, global0.ww), global0.x, _wgslsmith_mult_i32(19166i, var_0), _wgslsmith_mod_i32(1i, var_0))), select(select(reverseBits(vec4<i32>(39068i, u_input.a.x, arg_2.c.x, 49139i)), -vec4<i32>(8143i, arg_2.c.x, global0.x, 0i), arg_1), -(~vec4<i32>(-41204i, -14165i, global2.x, global2.x)), false));
    var var_2 = arg_2.c.x;
    return ~min(15510u, _wgslsmith_sub_u32(1u, arg_2.a));
}

fn func_2(arg_0: vec4<u32>, arg_1: bool, arg_2: bool) -> vec2<bool> {
    let var_0 = !vec2<bool>(arg_2 && arg_1, arg_1);
    var var_1 = select(!vec3<bool>(false, !(arg_0.x <= 68779u), !arg_1 != any(vec4<bool>(global1[_wgslsmith_index_u32(arg_0.x, 22u)], global1[_wgslsmith_index_u32(arg_0.x, 22u)], false, true))), select(!select(!vec3<bool>(global1[_wgslsmith_index_u32(arg_0.x, 22u)], false, true), vec3<bool>(true, arg_2, arg_2), any(vec4<bool>(arg_2, var_0.x, true, global1[_wgslsmith_index_u32(arg_0.x, 22u)]))), vec3<bool>(var_0.x, global1[_wgslsmith_index_u32(~0u, 22u)], all(!vec4<bool>(arg_2, global1[_wgslsmith_index_u32(arg_0.x, 22u)], arg_2, true))), true), vec3<bool>(~(~4294967295u) <= ~_wgslsmith_dot_vec4_u32(arg_0, arg_0), arg_2, true));
    let var_2 = u_input.a.x;
    var var_3 = 519f;
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(824f, -1103f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(883f - -1243f) * _wgslsmith_f_op_f32(-688f - -950f))), -1533f, global1[_wgslsmith_index_u32(func_4(!vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 22u)]), vec4<bool>(func_3(var_1.xy), select(false, arg_2, arg_2), true, 5276i == var_2), Struct_1(arg_0.x, _wgslsmith_f_op_f32(round(-1000f)), select(vec3<i32>(1026i, -51897i, 80216i), global0.zyz, vec3<bool>(false, global1[_wgslsmith_index_u32(4294967295u, 22u)], arg_1))), -1388f), 22u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-400f, 1652f))))) * -291f), -631f);
    return vec2<bool>(!all(vec4<bool>(true, all(vec2<bool>(true, arg_1)), true, false && arg_1)), min(-1i, i32(-1i) * -19222i) > -(~var_2));
}

fn func_1() -> bool {
    var var_0 = !select(func_2(vec4<u32>(~23706u, _wgslsmith_mult_u32(16148u, 1u), 69649u, 4294967295u), false, true), !vec2<bool>(global1[_wgslsmith_index_u32(~0u, 22u)], false), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(82335u, 1u), vec2<u32>(0u, 1u)), _wgslsmith_sub_vec2_u32(~vec2<u32>(1u, 13497u), ~vec2<u32>(9939u, 4294967295u))), 22u)]);
    let var_1 = vec3<bool>(func_3(vec2<bool>(global1[_wgslsmith_index_u32(~(~1u), 22u)], global1[_wgslsmith_index_u32(~1u, 22u)])), var_0.x, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(select(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 29895u, 5045u), vec4<u32>(4294967295u, 1u, 1u, 79856u)), _wgslsmith_mult_u32(~0u, _wgslsmith_clamp_u32(4294967295u, 1u, 8257u)), true), ~18757u), 22u)]);
    let var_2 = _wgslsmith_clamp_vec2_i32(u_input.a >> (~vec2<u32>(_wgslsmith_mult_u32(2255u, 63716u), 1u) % vec2<u32>(32u)), vec2<i32>(global2.x ^ _wgslsmith_clamp_i32(firstLeadingBit(u_input.a.x), firstLeadingBit(-49316i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, -30359i, u_input.b), vec4<i32>(2147483647i, 966i, u_input.b, -18813i))), min(21171i, firstLeadingBit(global0.x))), vec2<i32>(~countOneBits(firstLeadingBit(0i)), countOneBits(_wgslsmith_mult_i32(34513i, -global2.x))));
    global0 = max(firstLeadingBit(_wgslsmith_mult_vec4_i32((vec4<i32>(0i, -2147483647i, global0.x, -2147483647i) << (vec4<u32>(91819u, 23185u, 94674u, 1u) % vec4<u32>(32u))) ^ reverseBits(vec4<i32>(var_2.x, 0i, -1i, global2.x)), (vec4<i32>(0i, var_2.x, -1i, u_input.a.x) & vec4<i32>(u_input.b, -9100i, 87139i, 2147483647i)) >> (vec4<u32>(1u, 18400u, 0u, 1u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(abs(-vec4<i32>(-46955i, 6622i, u_input.b, u_input.b)), -vec4<i32>(global0.x, 2147483647i, 0i, u_input.a.x)) | firstLeadingBit(abs(reverseBits(vec4<i32>(u_input.b, -30773i, global2.x, u_input.b)))));
    let var_3 = !select(!vec4<bool>(false, var_0.x || true, false, false), !(!select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(2097u, 22u)], false, true), vec4<bool>(var_1.x, var_0.x, var_0.x, var_0.x), true)), select(!select(vec4<bool>(var_0.x, global1[_wgslsmith_index_u32(1u, 22u)], true, false), vec4<bool>(var_1.x, global1[_wgslsmith_index_u32(0u, 22u)], false, true), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), vec4<bool>(var_0.x | true, global1[_wgslsmith_index_u32(106546u, 22u)], true, all(var_1)), !select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 22u)], global1[_wgslsmith_index_u32(4294967295u, 22u)], var_1.x, false), vec4<bool>(var_1.x, true, var_0.x, true), vec4<bool>(true, true, true, var_1.x))));
    return all(var_3);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !vec4<bool>(false & select(func_1(), global1[_wgslsmith_index_u32(~6240u, 22u)], global1[_wgslsmith_index_u32(37358u, 22u)]), false, false, true);
    global2 = ~(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.x, global2.x, -2147483647i, global0.x) << (vec4<u32>(1u, 4294967295u, 4294967295u, 11430u) % vec4<u32>(32u)), reverseBits(vec4<i32>(global0.x, u_input.b, -44357i, global2.x)), reverseBits(vec4<i32>(global2.x, u_input.a.x, 2147483647i, global2.x))));
    global1 = array<bool, 22>();
    let var_1 = Struct_4(~_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(0i, -26667i), 23505i & u_input.a.x, 1i), vec3<i32>(u_input.b, countOneBits(global0.x), global2.x)), ~global0.zyx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(321f, 243f)))))));
    let var_2 = ~abs(~vec2<u32>(~89674u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 64287u))));
    global0 = vec4<i32>(abs(global2.x), max(~1i, -var_1.a.x), -9685i | _wgslsmith_dot_vec4_i32(-vec4<i32>(var_1.a.x, 4510i, u_input.b, -29539i), ~countOneBits(vec4<i32>(0i, 40982i, global0.x, 36212i))), abs(~(-1i)));
    var var_3 = Struct_1(1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -469f)), vec3<i32>(firstLeadingBit(~(-2874i)), reverseBits(global2.x), -1i));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(170f, var_1.c, var_3.b, var_3.b), vec4<f32>(var_3.b, 172f, -1069f, -448f))))))))));
}

