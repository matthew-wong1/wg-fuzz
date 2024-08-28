struct Struct_1 {
    a: f32,
    b: i32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1i, 2147483647i);

var<private> global1: u32;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(518f, i32(-2147483648), vec4<u32>(1u, 0u, 0u, 19543u)), Struct_1(453f, 0i, vec4<u32>(0u, 0u, 57249u, 28364u)), Struct_1(-2154f, 0i, vec4<u32>(98163u, 21846u, 2559u, 2960u)), Struct_1(381f, -44828i, vec4<u32>(4294967295u, 35864u, 1u, 15912u)), Struct_1(189f, 8727i, vec4<u32>(0u, 4294967295u, 24266u, 4294967295u)), Struct_1(-504f, 18258i, vec4<u32>(90931u, 1u, 1u, 38522u)), Struct_1(-2244f, -1i, vec4<u32>(4294967295u, 17552u, 1u, 11563u)), Struct_1(1468f, -34774i, vec4<u32>(5939u, 4294967295u, 48991u, 20324u)), Struct_1(514f, -30569i, vec4<u32>(0u, 43929u, 0u, 41471u)));

var<private> global3: Struct_1;

var<private> global4: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> f32 {
    global4 = vec2<u32>(firstTrailingBit(1u), _wgslsmith_mod_u32(4294967295u, ~global4.x));
    let var_0 = global3.a;
    global3 = global2[_wgslsmith_index_u32(~global4.x, 9u)];
    var var_1 = Struct_1(global3.a, global3.b, global3.c);
    var var_2 = vec2<bool>(!(!all(vec4<bool>(true, false, false, true))), select(any(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), true, !select(true, true, true)));
    return _wgslsmith_f_op_f32(389f * _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~_wgslsmith_clamp_vec2_i32(u_input.c.zz, u_input.c.xx, u_input.c.xy), select(countOneBits(arg_0.c.yww), ~u_input.a.yyy, vec3<bool>(true, true, true)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -716f) + _wgslsmith_f_op_f32(-308f + global3.a)))), -2147483647i, _wgslsmith_mult_vec4_u32(global3.c, vec4<u32>(min(1u, 21910u), 4294967295u, arg_1.c.x, max(4294967295u, 4294967295u) & ~u_input.a.x)));
    global3 = Struct_1(_wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a)))), ~(-3463i), _wgslsmith_add_vec4_u32(~(var_0.c >> (~arg_0.c % vec4<u32>(32u))), firstTrailingBit(vec4<u32>(1u, 0u, 1u & global3.c.x, ~global3.c.x))));
    let var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(u_input.c, firstLeadingBit(u_input.c)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(min(u_input.c, u_input.c)), firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(2147483647i, var_0.b, -2147483647i)), 62136i, -25480i)), -vec3<i32>(reverseBits(u_input.c.x), -var_0.b, -48531i)));
    var var_2 = global2[_wgslsmith_index_u32(arg_2.c.x, 9u)];
    global4 = ~(~(~(~select(global3.c.zz, var_2.c.yz, true))));
    return _wgslsmith_f_op_f32(arg_1.a * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a - var_0.a) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -882f))) + 1000f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(arg_1))));
    global1 = arg_0.c.x;
    var var_1 = _wgslsmith_dot_vec3_u32(reverseBits(global3.c.wyw), vec3<u32>(~(~abs(63801u)), 0u, arg_0.c.x));
    global0 = vec2<i32>(1i, min(arg_0.b, select(arg_0.b, global3.b, false) & _wgslsmith_div_i32(-21534i, 26640i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 4294967295u, ~45463u), min(arg_0.c.xyx, global3.c.wxw)) % 32u));
    let var_2 = _wgslsmith_mod_vec4_i32(vec4<i32>(-643i, arg_0.b, 2147483647i, -2242i >> (min(arg_0.c.x >> (0u % 32u), ~0u) % 32u)), vec4<i32>(-10632i, -20060i, u_input.c.x, ~min(global0.x & global3.b, -u_input.c.x)));
    return global2[_wgslsmith_index_u32(arg_0.c.x, 9u)];
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    global1 = ~_wgslsmith_div_u32(31644u, u_input.a.x);
    let var_0 = func_4(global2[_wgslsmith_index_u32(~(abs(u_input.a.x) << (((57614u & global4.x) >> (_wgslsmith_div_u32(4294967295u, global3.c.x) % 32u)) % 32u)), 9u)], _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.a, global3.a, 417f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, -383f, 376f) * vec3<f32>(arg_0.a, global3.a, 117f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.a, arg_0.a, -2449f) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.a * global3.a), _wgslsmith_f_op_f32(func_2(Struct_1(-819f, 7875i, u_input.a), arg_0, Struct_1(-413f, -43908i, vec4<u32>(20438u, global4.x, 4294967295u, 43381u)), arg_0.b)), _wgslsmith_f_op_f32(trunc(2711f))))));
    global4 = ~vec2<u32>(select((arg_0.c.x | arg_0.c.x) & 4294967295u, 0u, true), 1u);
    var var_1 = Struct_1(-782f, global3.b, vec4<u32>(1u, abs(1u) >> (global3.c.x % 32u), ~u_input.b, 1u));
    var var_2 = Struct_1(global3.a, _wgslsmith_clamp_i32(-13184i, (global3.b | abs(var_0.b)) >> (6933u % 32u), 1i), vec4<u32>(arg_0.c.x, reverseBits(~1u), abs(~arg_0.c.x) >> (0u % 32u), ~61450u));
    return StorageBuffer(_wgslsmith_dot_vec2_u32(vec2<u32>(~global4.x, max(arg_0.c.x, 45906u)) & _wgslsmith_mod_vec2_u32(vec2<u32>(global3.c.x, 0u) << (vec2<u32>(var_0.c.x, global3.c.x) % vec2<u32>(32u)), ~vec2<u32>(0u, 26996u)), vec2<u32>(1u, _wgslsmith_mult_u32(var_1.c.x, 4294967295u) << (~arg_0.c.x % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(firstTrailingBit(~(~global3.c.x)), ~_wgslsmith_mod_u32(4294967295u, ~1u)), 9u)];
    var var_0 = _wgslsmith_f_op_f32(-global3.a);
    let var_1 = ~(~global3.c.x);
    global2 = array<Struct_1, 9>();
    global1 = global4.x;
    let x = u_input.a;
    s_output = func_1(global2[_wgslsmith_index_u32(93338u, 9u)]);
}

