struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<i32, 23> = array<i32, 23>(17539i, i32(-2147483648), -28780i, i32(-2147483648), 20369i, 2147483647i, -5076i, -31034i, 33404i, 11492i, 1i, 21411i, -29001i, -31923i, -4656i, 2147483647i, 50701i, 52429i, 2147483647i, -53815i, i32(-2147483648), -73940i, 36182i);

var<private> global2: array<f32, 24> = array<f32, 24>(-364f, 400f, -255f, 546f, 817f, -336f, -232f, -535f, -993f, 1338f, -989f, -174f, 889f, -597f, -997f, -118f, 1285f, -1381f, 480f, -439f, 1067f, 295f, -604f, -1383f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec3<f32> {
    global0 = Struct_2(vec4<bool>(!(1u <= _wgslsmith_sub_u32(0u, u_input.b.x)), false, global0.a.x, !global0.a.x || (_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(u_input.b.x, 24u)])) <= _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], global2[_wgslsmith_index_u32(121917u, 24u)])))));
    let var_0 = ~firstLeadingBit(reverseBits(~u_input.b.x << (_wgslsmith_add_u32(1u, 1u) % 32u)));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(~select(99147u, u_input.b.x, true), 24u)], _wgslsmith_f_op_f32(-366f - -1021f))) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 24u)] - 279f)), global2[_wgslsmith_index_u32(~(4294967295u << (var_0 % 32u)), 24u)]))), u_input.b.xx, select(vec4<u32>(~_wgslsmith_mult_u32(var_0, u_input.b.x), ~4294967295u, 18004u, u_input.b.x), ~(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0, 35961u, u_input.b.x, 1u), vec4<u32>(var_0, u_input.b.x, var_0, var_0)) | reverseBits(vec4<u32>(u_input.b.x, u_input.b.x, 1u, var_0))), !global0.a.x), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(129441u, 24u)], 477f, global2[_wgslsmith_index_u32(var_0, 24u)])), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(614f, global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(var_0, 24u)]), vec3<f32>(global2[_wgslsmith_index_u32(var_0, 24u)], global2[_wgslsmith_index_u32(4294967295u, 24u)], global2[_wgslsmith_index_u32(var_0, 24u)]))), global0.a.x))))));
    var var_2 = _wgslsmith_div_f32(2030f, 832f);
    var var_3 = u_input.b.yz << (vec2<u32>(firstTrailingBit(40774u), u_input.b.x) % vec2<u32>(32u));
    return _wgslsmith_f_op_vec3_f32(var_1.d + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(var_1.b.x, 24u)], -852f, 1600f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: vec2<bool>) -> vec2<u32> {
    let var_0 = select(!vec4<bool>(all(arg_2), (u_input.b.x ^ u_input.b.x) < u_input.b.x, arg_3.x, global0.a.x), !vec4<bool>(arg_1.b.x >= 30304u, false, arg_3.x, true), global0.a);
    global1 = array<i32, 23>();
    global2 = array<f32, 24>();
    var var_1 = u_input.b.x;
    let var_2 = arg_1;
    return u_input.b.xx;
}

fn func_2() -> vec4<u32> {
    var var_0 = global0.a.xyy;
    let var_1 = Struct_1(-929f, func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1960f, global2[_wgslsmith_index_u32(25390u, 24u)], global2[_wgslsmith_index_u32(1u, 24u)], 1145f) * vec4<f32>(global2[_wgslsmith_index_u32(1u, 24u)], global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 257f, -1000f))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -167f), ~u_input.b.zy, vec4<u32>(22194u, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), _wgslsmith_add_u32(u_input.b.x, 0u), ~u_input.b.x), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(func_3()), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 24u)], -273f, global2[_wgslsmith_index_u32(u_input.b.x, 24u)]))))), global0.a.xyy, vec2<bool>(false, true)), vec4<u32>(~(_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, 1u) & ~0u), u_input.b.x >> (~8324u % 32u), ~0u, 0u), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(395f, -1008f, -274f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(354f, global2[_wgslsmith_index_u32(u_input.b.x, 24u)], 1177f) * vec3<f32>(703f, 2291f, 1037f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(778f, global2[_wgslsmith_index_u32(0u, 24u)], -389f) + vec3<f32>(-1423f, -894f, 1000f)))))));
    var var_2 = var_1;
    var var_3 = Struct_2(!global0.a);
    global1 = array<i32, 23>();
    return ~var_1.c;
}

fn func_1(arg_0: vec3<bool>) -> vec4<i32> {
    global1 = array<i32, 23>();
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1572f - -611f))), ~(~(~vec2<u32>(4294967295u, u_input.b.x) ^ ~vec2<u32>(51477u, u_input.b.x))), ((~vec4<u32>(65076u, 1u, 1u, u_input.b.x) << (vec4<u32>(10612u, u_input.b.x, u_input.b.x, 54633u) % vec4<u32>(32u))) >> ((~vec4<u32>(u_input.b.x, 15038u, 88903u, 1u) >> (func_2() % vec4<u32>(32u))) % vec4<u32>(32u))) | ~(~(vec4<u32>(u_input.b.x, 57710u, 0u, u_input.b.x) << (vec4<u32>(u_input.b.x, u_input.b.x, 4294967295u, 4294967295u) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-416f, -117f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 24u)]) + _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(75146u, 24u)] * 970f)))));
    var var_1 = global2[_wgslsmith_index_u32(var_0.b.x, 24u)];
    let var_2 = var_0;
    var var_3 = Struct_2(select(!vec4<bool>(true, arg_0.x, all(global0.a.zyw), true), select(select(vec4<bool>(global0.a.x, true, global0.a.x, false), !global0.a, select(global0.a, global0.a, vec4<bool>(global0.a.x, true, global0.a.x, true))), global0.a, !select(vec4<bool>(global0.a.x, true, arg_0.x, false), vec4<bool>(true, true, global0.a.x, false), vec4<bool>(true, arg_0.x, false, false))), global0.a.x));
    return vec4<i32>(u_input.a, firstTrailingBit(_wgslsmith_dot_vec3_i32(select(-vec3<i32>(u_input.a, global1[_wgslsmith_index_u32(4294967295u, 23u)], -1i), vec3<i32>(global1[_wgslsmith_index_u32(var_0.c.x, 23u)], global1[_wgslsmith_index_u32(u_input.b.x, 23u)], -2147483647i), select(vec3<bool>(true, arg_0.x, false), vec3<bool>(false, arg_0.x, true), true)), vec3<i32>(global1[_wgslsmith_index_u32(var_0.b.x, 23u)], u_input.a, _wgslsmith_mult_i32(global1[_wgslsmith_index_u32(var_2.c.x, 23u)], u_input.a)))), -max(u_input.a, 11122i) << (reverseBits(14417u) % 32u), -u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(u_input.b.x & (_wgslsmith_add_u32(u_input.b.x, 0u) ^ u_input.b.x), 23u)] | _wgslsmith_dot_vec2_i32(vec2<i32>(firstTrailingBit(_wgslsmith_mult_i32(2208i, global1[_wgslsmith_index_u32(3190u, 23u)])), 13893i & (2147483647i << (u_input.b.x % 32u))), ~(-(vec2<i32>(0i, 1i) | vec2<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], u_input.a))));
    var var_1 = abs(vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x), ~firstTrailingBit(32534u)), 0u, ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b.x), vec2<u32>(4294967295u, u_input.b.x)), countOneBits(u_input.b.yz))));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(global0.a.wzz), var_1.x, -(((vec2<i32>(-36608i, global1[_wgslsmith_index_u32(u_input.b.x, 23u)]) >> (vec2<u32>(var_1.x, var_1.x) % vec2<u32>(32u))) & -vec2<i32>(0i, 14950i)) << (vec2<u32>(~5901u, _wgslsmith_mult_u32(var_1.x, u_input.b.x)) % vec2<u32>(32u))), ~(-2147483647i), ~(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, u_input.a, global1[_wgslsmith_index_u32(1u, 23u)], global1[_wgslsmith_index_u32(u_input.b.x, 23u)]), max(vec4<i32>(global1[_wgslsmith_index_u32(u_input.b.x, 23u)], -15999i, 0i, 42563i), vec4<i32>(-212i, global1[_wgslsmith_index_u32(var_1.x, 23u)], -36920i, global1[_wgslsmith_index_u32(4294967295u, 23u)])))));
}

