struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec4<bool>,
    c: vec3<u32>,
    d: Struct_3,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<u32, 23> = array<u32, 23>(47669u, 60275u, 87917u, 1u, 47446u, 4294967295u, 4294967295u, 35169u, 28306u, 0u, 13845u, 20371u, 51395u, 4294967295u, 0u, 5814u, 0u, 1u, 39687u, 1u, 1u, 73119u, 1u);

var<private> global1: array<Struct_5, 11> = array<Struct_5, 11>(Struct_5(vec3<f32>(-539f, 694f, 1000f), false), Struct_5(vec3<f32>(-1126f, 1129f, -1492f), false), Struct_5(vec3<f32>(-503f, 371f, -134f), true), Struct_5(vec3<f32>(1000f, 318f, 748f), true), Struct_5(vec3<f32>(1728f, -668f, -415f), true), Struct_5(vec3<f32>(-848f, -1000f, -969f), false), Struct_5(vec3<f32>(-508f, -1000f, 901f), true), Struct_5(vec3<f32>(1527f, 1261f, -829f), true), Struct_5(vec3<f32>(-625f, -184f, 309f), false), Struct_5(vec3<f32>(582f, 1000f, -178f), false), Struct_5(vec3<f32>(-1818f, 2362f, 1565f), true));

var<private> global2: vec4<i32> = vec4<i32>(-39436i, i32(-2147483648), 0i, i32(-2147483648));

var<private> global3: vec3<u32>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_2, arg_2: Struct_5) -> f32 {
    var var_0 = _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(min(-2147483647i, arg_1.d.a)), _wgslsmith_add_i32(global2.x, -2147483647i), ~global2.x), global2.zyw), vec3<i32>(~arg_1.a.d, u_input.a, u_input.a), global2.yxz ^ abs(abs(min(vec3<i32>(26968i, 2147483647i, global2.x), vec3<i32>(global2.x, global2.x, u_input.a)))));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.a.x * arg_2.a.x), _wgslsmith_div_f32(arg_1.c.x, arg_1.d.b))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(498f - -435f) * _wgslsmith_f_op_f32(-173f + 286f))))), arg_0.a.x, 1742f, _wgslsmith_f_op_f32(-599f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.d.b, _wgslsmith_f_op_f32(-790f + arg_1.d.b))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a.x - -1000f))))));
    var_0 = -abs(~global2.wyx);
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(trunc(arg_0.a.x)), arg_1.a.b, arg_2.a.x)))));
    let var_3 = arg_2.a.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x));
}

fn func_2() -> Struct_5 {
    global2 = reverseBits(firstTrailingBit(-vec4<i32>(_wgslsmith_dot_vec2_i32(global2.xy, global2.zx), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -1i, u_input.a, -1i), vec4<i32>(global2.x, 0i, u_input.a, -56160i)), firstTrailingBit(0i), -14960i)));
    var var_0 = 1650f;
    let var_1 = Struct_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-899f, 656f, true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_5(vec3<f32>(271f, 1447f, -439f), true), Struct_2(Struct_1(-2147483647i, -1405f, false, global2.x), 1u, vec4<f32>(160f, -1071f, -560f, -1343f), Struct_1(u_input.a, -109f, true, global2.x)), global1[_wgslsmith_index_u32(global3.x, 11u)])) * _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 11u)], Struct_2(Struct_1(global2.x, -602f, true, -17769i), global3.x, vec4<f32>(-1000f, -146f, 683f, -877f), Struct_1(49437i, -1230f, false, u_input.a)), Struct_5(vec3<f32>(922f, 1527f, -1234f), true)))) - -121f)), !(countOneBits(max(u_input.a, u_input.a)) < firstLeadingBit(_wgslsmith_sub_i32(u_input.a, global2.x))), u_input.a);
    var var_2 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, _wgslsmith_f_op_f32(round(var_1.b)), var_1.b)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(-871f, -1239f, -1362f) * vec3<f32>(var_1.b, 779f, -259f)), _wgslsmith_div_vec3_f32(vec3<f32>(var_1.b, var_1.b, 123f), vec3<f32>(var_1.b, -602f, var_1.b)))))), !var_1.c);
    let var_3 = _wgslsmith_clamp_u32(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(19336u, 23u)], 23u)], 0u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~19453u, select(0u, 3954u, false), max(4294967295u, 0u), global3.x), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 23u)], global3.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(54898u, 23u)], 23u)], global0[_wgslsmith_index_u32(0u, 23u)]))), ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, 17090u, global0[_wgslsmith_index_u32(global3.x, 23u)], 1u), min(vec4<u32>(2905u, global0[_wgslsmith_index_u32(4294967295u, 23u)], global3.x, 26513u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 23u)], 1u, 860u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 23u)], 23u)]))), ~(~global0[_wgslsmith_index_u32(global3.x, 23u)])), _wgslsmith_clamp_u32(307u, global0[_wgslsmith_index_u32(~firstTrailingBit(global3.x | 24748u), 23u)], 61147u));
    return Struct_5(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -917f), _wgslsmith_f_op_f32(-var_1.b), var_2.a.x))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(!var_2.b, true, var_2.b, false), var_2.b)));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    global1 = array<Struct_5, 11>();
    var var_0 = countOneBits(~vec3<u32>(~(89756u >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 23u)], 23u)] % 32u)), global0[_wgslsmith_index_u32(4294967295u, 23u)], global3.x));
    var var_1 = func_2();
    let var_2 = ~vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_0.x, 1u, global0[_wgslsmith_index_u32(var_0.x, 23u)]), select(vec4<u32>(0u, 26701u, 1u, global3.x), vec4<u32>(var_0.x, global0[_wgslsmith_index_u32(var_0.x, 23u)], 1u, global0[_wgslsmith_index_u32(var_0.x, 23u)]), true)), 19386u ^ firstTrailingBit(var_0.x), 4294967295u ^ select(72264u, global3.x, false)), ~abs(~0u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(firstTrailingBit(~abs(global3.x)), 23u)], 23u)], global0[_wgslsmith_index_u32(select(1u, reverseBits(14416u), !var_1.b), 23u)]);
    let var_3 = -firstTrailingBit(max(global2.x & ~global2.x, global2.x));
    return StorageBuffer(~global3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(-global2.x);
}

