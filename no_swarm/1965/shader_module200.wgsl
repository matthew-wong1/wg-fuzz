struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<f32, 22> = array<f32, 22>(1367f, -1075f, 869f, -258f, -210f, 203f, -1508f, -1413f, -544f, -1022f, 664f, 1273f, -405f, 994f, 254f, -1375f, 1863f, -859f, -861f, 1377f, 960f, 1654f);

var<private> global2: vec4<f32> = vec4<f32>(-349f, 1236f, 920f, 1004f);

var<private> global3: array<vec2<i32>, 20>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec4<f32> {
    let var_0 = true;
    var var_1 = vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u) >> (select(vec2<u32>(0u, 25903u), vec2<u32>(0u, 0u), vec2<bool>(true, false)) % vec2<u32>(32u)), vec2<u32>(1u, 1u)), ~1u, 4294967295u);
    global0 = abs(firstLeadingBit(var_1.x | _wgslsmith_mod_u32(50439u >> (1u % 32u), min(265u, var_1.x))));
    let var_2 = global2.yx;
    var var_3 = var_0;
    return _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(firstTrailingBit(var_1.x << (var_1.x % 32u)), 22u)], _wgslsmith_f_op_f32(f32(-1f) * -1000f))), 714f, var_2.x, -647f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_1.x, 22u)])), 700f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1504f))), var_2.x) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(779f, 1581f, 837f, arg_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(294f, 644f, var_2.x, 3295f)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(var_1.x, 22u)], -322f, global2.x, 1413f) + vec4<f32>(301f, global2.x, 568f, arg_0)))))));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<u32> {
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(2503u, 22u)], global2.x, 285f, global2.x) + vec4<f32>(-1501f, global1[_wgslsmith_index_u32(arg_1, 22u)], -380f, 1031f)), vec4<f32>(169f, 618f, global1[_wgslsmith_index_u32(arg_1, 22u)], 2825f))), vec4<f32>(1032f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_1, 22u)]), global1[_wgslsmith_index_u32(~17039u, 22u)], _wgslsmith_f_op_f32(max(-708f, global1[_wgslsmith_index_u32(arg_1, 22u)]))))))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1475f))), global2.x, _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global2.x))))));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, global1[_wgslsmith_index_u32(arg_1, 22u)], global2.x, global2.x) - vec4<f32>(1415f, global2.x, global1[_wgslsmith_index_u32(arg_1, 22u)], -912f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(423f - global2.x), _wgslsmith_f_op_f32(f32(-1f) * -399f), -558f, 882f) + _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(ceil(3056f))))), all(vec4<bool>(true, true, true, true)))));
    var var_1 = _wgslsmith_mod_u32(arg_1, arg_1);
    global0 = select(arg_1, 57075u, !((abs(arg_1) << (min(75047u, arg_1) % 32u)) == 4294967295u));
    var var_2 = abs(1i);
    return ~(~vec2<u32>(1u, firstTrailingBit(max(1u, arg_1))));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = vec4<f32>(-2551f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(2492f))), _wgslsmith_f_op_f32(f32(-1f) * -683f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 22u)])));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-420f - global2.x))) + -648f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -634f)) + -319f)))));
    global3 = array<vec2<i32>, 20>();
    var var_2 = Struct_1(~_wgslsmith_mult_i32(firstTrailingBit(u_input.b.x), -1i) < arg_0.c, _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.b.x & ~0u, _wgslsmith_sub_u32(arg_0.b.x, 36759u ^ arg_0.b.x)), _wgslsmith_clamp_vec2_u32(vec2<u32>(abs(arg_0.b.x), firstTrailingBit(arg_0.b.x)), reverseBits(~arg_0.b), arg_0.b)), countOneBits(_wgslsmith_add_i32(-(~u_input.b.x), abs(-1i))));
    let var_3 = arg_0;
    return var_0;
}

fn func_1() -> vec4<u32> {
    global2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_1(false, func_2(i32(-1i) * -2147483647i, _wgslsmith_sub_u32(0u, 0u)), max(1i, u_input.b.x)))));
    let var_0 = max(abs(vec4<i32>(1i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(8419i, -58164i, u_input.a, 42044i), countOneBits(vec4<i32>(u_input.a, -19632i, u_input.b.x, u_input.b.x))), ~u_input.b.x)), _wgslsmith_sub_vec4_i32(-vec4<i32>(u_input.b.x, -2147483647i, u_input.a, -2147483647i) << (select(countOneBits(vec4<u32>(9823u, 1u, 0u, 60142u)), vec4<u32>(57894u, 1u, 4294967295u, 3606u), vec4<bool>(false, false, false, false)) % vec4<u32>(32u)), -vec4<i32>(-2147483647i, 2147483647i, u_input.a, _wgslsmith_mod_i32(u_input.a, 1i))));
    global3 = array<vec2<i32>, 20>();
    global3 = array<vec2<i32>, 20>();
    let var_1 = Struct_1(any(vec2<bool>(true, true)), firstTrailingBit(~vec2<u32>(1u, 10289u)), 20621i);
    return vec4<u32>(~firstLeadingBit(127396u), var_1.b.x, 99593u, _wgslsmith_add_u32(~var_1.b.x, var_1.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = firstTrailingBit(~_wgslsmith_div_u32(reverseBits(var_0.x), 52299u));
    global3 = array<vec2<i32>, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_4(Struct_1(true, ~var_0.xy, u_input.a))).x, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 22u)] - _wgslsmith_f_op_f32(min(-114f, global1[_wgslsmith_index_u32(1u, 22u)])))), -522f), _wgslsmith_div_vec3_i32(~_wgslsmith_clamp_vec3_i32(max(vec3<i32>(-2147483647i, 1i, u_input.b.x), vec3<i32>(0i, u_input.a, -52167i)), vec3<i32>(12056i, u_input.a, -38214i) << (var_0.zzx % vec3<u32>(32u)), vec3<i32>(-2147483647i, 1i, u_input.a) ^ vec3<i32>(2147483647i, -2147483647i, 22101i)), _wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(35346i, -49079i, u_input.a), vec3<i32>(-2147483647i, -19700i, 1i))), vec3<i32>(_wgslsmith_mod_i32(94267i, -22031i), -38854i, reverseBits(-1i)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-562f, _wgslsmith_f_op_f32(trunc(1479f))))) + _wgslsmith_f_op_vec2_f32(global2.zx + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2349f, global1[_wgslsmith_index_u32(33618u, 22u)]) - vec2<f32>(1138f, -145f))))), vec4<f32>(-569f, 789f, global1[_wgslsmith_index_u32(firstTrailingBit(~4294967295u), 22u)], 1000f), u_input.b.x);
}

