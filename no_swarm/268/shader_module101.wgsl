struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(1u), Struct_1(62696u), Struct_1(0u), Struct_1(40373u), Struct_1(4294967295u), Struct_1(4294967295u), Struct_1(93880u), Struct_1(53157u), Struct_1(4294967295u), Struct_1(1u), Struct_1(1u), Struct_1(0u), Struct_1(2366u), Struct_1(121u), Struct_1(25397u), Struct_1(1u), Struct_1(40833u), Struct_1(1u), Struct_1(1u), Struct_1(38054u), Struct_1(72720u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(1914u), Struct_1(36835u), Struct_1(4294967295u), Struct_1(0u), Struct_1(1u), Struct_1(3795u), Struct_1(57306u));

var<private> global1: Struct_1;

var<private> global2: f32 = 170f;

var<private> global3: vec4<bool>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: Struct_1, arg_1: f32) -> u32 {
    global0 = array<Struct_1, 31>();
    return 36797u;
}

fn func_3() -> f32 {
    var var_0 = -1400f;
    global2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1f, 1128f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1000f))))))));
    global3 = vec4<bool>(all(global3.xww), true, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(u_input.e, vec4<i32>(u_input.d, u_input.c, -45288i, u_input.b.x), _wgslsmith_sub_vec4_i32(u_input.e, u_input.e)), ~vec4<i32>(u_input.b.x, 2147483647i, u_input.d, u_input.d)) < 63348i, false);
    var var_1 = false;
    var var_2 = ~0u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-734f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(884f)))))) + 1f));
}

fn func_2(arg_0: Struct_1) -> StorageBuffer {
    global1 = Struct_1(_wgslsmith_mult_u32(~(~select(global1.a, global1.a, true)), u_input.a));
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-612f, -1000f, 281f))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1248f, -478f, -856f), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(131f, 1000f, -1365f), vec3<f32>(1578f, -275f, -1000f))), !global3.zww))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(633f, -1000f, 1000f)))));
    global0 = array<Struct_1, 31>();
    var var_1 = -17821i;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1116f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_3()))) + _wgslsmith_div_f32(1000f, var_0.x)), _wgslsmith_f_op_f32(max(-1203f, _wgslsmith_f_op_f32(func_3())))));
    return StorageBuffer(_wgslsmith_add_i32(u_input.b.x, u_input.c), _wgslsmith_mult_vec4_u32(max(abs(vec4<u32>(1u, u_input.a, global1.a, 34937u)), vec4<u32>(4294967295u, global1.a, 73221u, u_input.a) >> (vec4<u32>(u_input.a, 8896u, global1.a, 50230u) % vec4<u32>(32u))), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0.a, 856u, 1305u, global1.a), vec4<u32>(global1.a, 0u, global1.a, arg_0.a), vec4<u32>(global1.a, 0u, global1.a, 4294967295u))) << (countOneBits(reverseBits(vec4<u32>(1443u, arg_0.a, u_input.a, 13312u))) % vec4<u32>(32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a, 0u, arg_0.a, 4294967295u) & abs(vec4<u32>(1u, 0u, 30433u, 27476u)), ~max(vec4<u32>(arg_0.a, 0u, 99662u, arg_0.a), vec4<u32>(48076u, global1.a, u_input.a, u_input.a))), firstTrailingBit(4294967295u >> (firstLeadingBit(4294967295u) % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(abs(_wgslsmith_sub_u32(21643u, global1.a)), 1u);
    let var_1 = ~select(func_1(global0[_wgslsmith_index_u32(10536u, 31u)], -2121f), global1.a, global3.x);
    var var_2 = true;
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1342f - _wgslsmith_div_f32(1387f, 252f))) - -1172f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1618f + _wgslsmith_f_op_f32(f32(-1f) * -1006f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-765f * 1f))));
    global0 = array<Struct_1, 31>();
    let var_3 = Struct_1(~67520u);
    var_2 = !(global3.x | (all(!vec2<bool>(global3.x, false)) && false));
    let x = u_input.a;
    s_output = func_2(Struct_1(global1.a));
}

