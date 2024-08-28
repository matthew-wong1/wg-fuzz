struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec2<u32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1046f;

var<private> global1: u32;

var<private> global2: array<vec3<u32>, 23>;

var<private> global3: vec2<i32>;

var<private> global4: u32 = 0u;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(vec4<i32>(~2147483647i, ~firstTrailingBit(global3.x), min(select(arg_0, -55564i, false), -2147483647i), arg_0), !any(vec2<bool>(true, true)), ~firstTrailingBit(max(vec3<i32>(2147483647i, 1i, arg_0), vec3<i32>(arg_0, 26277i, -1i)))));
    let var_1 = vec2<bool>(var_0.a.b, var_0.a.b);
    var_0 = Struct_2(var_0.a);
    let var_2 = abs(u_input.a.x);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1060f - 123f) * _wgslsmith_f_op_f32(f32(-1f) * -601f))) - 1070f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-158f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-350f + -207f)))), -1385f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1171f, 614f)))) + -463f));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_5, arg_3: vec4<bool>) -> u32 {
    let var_0 = arg_3;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1257f, -195f, 1007f, 465f) + vec4<f32>(1000f, 1041f, -343f, -535f)), _wgslsmith_f_op_vec4_f32(func_3(-20383i)), select(var_0, arg_3, false))))));
    var var_2 = Struct_1(vec4<i32>(-1i, -2147483647i, _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(arg_2.c.a, arg_2.c.a), arg_2.d.a.a), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.c.a.x, 1i, global3.x), reverseBits(vec3<i32>(arg_2.b.d.x, -31879i, arg_2.a.a.c.x)))), select(arg_2.d.a.a.x, abs(_wgslsmith_dot_vec2_i32(arg_2.a.a.c.zy, arg_2.c.a.zz)), true)), false, _wgslsmith_sub_vec3_i32(~_wgslsmith_sub_vec3_i32(arg_2.d.a.a.xxw, arg_2.c.c), arg_2.d.a.a.zww) << ((~vec3<u32>(1u, 4294967295u, 4294967295u) | arg_2.b.a) % vec3<u32>(32u)));
    var var_3 = arg_2.a;
    let var_4 = abs(_wgslsmith_clamp_u32(firstLeadingBit(u_input.a.x), ~u_input.a.x, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(0u, 28792u), abs(_wgslsmith_mod_u32(1u, u_input.a.x)), 16401u)));
    return _wgslsmith_dot_vec4_u32(~(vec4<u32>(max(1u, arg_2.b.b.x), 41876u, 4294967295u & var_4, ~var_4) | (firstTrailingBit(vec4<u32>(u_input.a.x, arg_2.b.b.x, 1u, 0u)) | vec4<u32>(35066u, 4294967295u, 4294967295u, 30860u))), ~(~vec4<u32>(~133875u, _wgslsmith_dot_vec4_u32(vec4<u32>(58149u, arg_2.b.b.x, 84347u, u_input.a.x), vec4<u32>(1u, var_4, var_4, 4294967295u)), ~arg_2.b.b.x, 1u)));
}

fn func_1(arg_0: i32, arg_1: Struct_5) -> u32 {
    global4 = u_input.a.x;
    return firstTrailingBit((~u_input.a.x ^ 0u) | _wgslsmith_mult_u32(3492u, arg_1.b.b.x)) >> (~func_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(713f + 1027f))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(-1498f, -2973f), vec2<f32>(269f, 713f)))), arg_1, select(vec4<bool>(arg_1.c.b, arg_1.d.a.b, true, arg_1.a.a.b), !vec4<bool>(arg_1.a.a.b, true, arg_1.d.a.b, false), select(vec4<bool>(arg_1.d.a.b, true, true, arg_1.c.b), vec4<bool>(false, false, arg_1.a.a.b, arg_1.a.a.b), vec4<bool>(arg_1.b.c.b, true, true, false)))) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a.x;
    let var_0 = -vec3<i32>(global3.x, 23204i, (i32(-1i) * -global3.x) ^ abs(-global3.x));
    global0 = _wgslsmith_f_op_f32(min(-101f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -752f)))));
    global4 = _wgslsmith_dot_vec4_u32(select(abs(_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, 9819u, u_input.a.x), vec4<u32>(42887u, u_input.a.x, 4294967295u, 0u))), _wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 61611u, 95711u, 15257u), vec4<u32>(1u, 1u, 4294967295u, u_input.a.x)), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) << (vec4<u32>(u_input.a.x, 1u, 0u, 21545u) % vec4<u32>(32u))), true) & (vec4<u32>(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, 5u), u_input.a.x, 0u) << (~(~vec4<u32>(39250u, 1u, 4294967295u, u_input.a.x)) % vec4<u32>(32u))), vec4<u32>(reverseBits(~u_input.a.x), u_input.a.x, countOneBits(_wgslsmith_div_u32(~u_input.a.x, func_1(global3.x, Struct_5(Struct_2(Struct_1(vec4<i32>(18427i, global3.x, global3.x, var_0.x), true, var_0)), Struct_4(global2[_wgslsmith_index_u32(u_input.a.x, 23u)], u_input.a, Struct_1(vec4<i32>(2147483647i, -26490i, global3.x, 5758i), true, var_0), vec4<i32>(global3.x, var_0.x, var_0.x, global3.x)), Struct_1(vec4<i32>(-4651i, var_0.x, -2147483647i, 0i), false, var_0), Struct_2(Struct_1(vec4<i32>(global3.x, global3.x, var_0.x, var_0.x), true, var_0)))))), 31894u));
    var var_1 = ~(-vec4<i32>(9498i, _wgslsmith_dot_vec3_i32(var_0, var_0) & abs(12961i), ~global3.x ^ ~global3.x, countOneBits(abs(-2147483647i))));
    var var_2 = Struct_4(vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.a.x, 45851u), u_input.a.x), firstLeadingBit(vec2<u32>(~(4294967295u ^ u_input.a.x), ~59427u)), Struct_1(max(vec4<i32>(var_1.x, _wgslsmith_clamp_i32(var_1.x, var_0.x, 42038i), var_1.x, 2147483647i), select(_wgslsmith_sub_vec4_i32(vec4<i32>(64778i, -36725i, 48861i, 23073i), vec4<i32>(2147483647i, 509i, var_0.x, -2147483647i)), select(vec4<i32>(var_0.x, global3.x, var_0.x, 22115i), vec4<i32>(var_1.x, var_1.x, 2147483647i, 2885i), true), vec4<bool>(true, true, true, true))), true, select(vec3<i32>(0i, var_1.x, global3.x), vec3<i32>(global3.x, -32716i, 0i), true) ^ ~(-var_0)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, ~(-global3.x), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(global3.x, global3.x)), countOneBits(global3.x)), ~(~vec4<i32>(-28630i, global3.x, 8840i, 1i))));
    var var_3 = min(u_input.a.x, ~(~88413u));
    let x = u_input.a;
    s_output = StorageBuffer(min(u_input.a.x, u_input.a.x) << ((~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, u_input.a.x, var_2.a.x, var_2.b.x), vec4<u32>(2443u, 0u, 39306u, 1u)) << (4294967295u % 32u)) % 32u), _wgslsmith_mod_i32(var_0.x, 0i));
}

