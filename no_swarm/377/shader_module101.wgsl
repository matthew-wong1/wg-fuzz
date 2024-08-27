struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 31> = array<f32, 31>(-124f, -1469f, 288f, 685f, 975f, 472f, -446f, 1285f, -101f, 342f, -1049f, -1454f, 724f, 291f, 845f, 541f, -294f, -1222f, -607f, -195f, -902f, 515f, 2761f, -338f, 865f, -705f, 475f, -1444f, 573f, 1672f, -410f);

var<private> global2: vec2<f32> = vec2<f32>(458f, -334f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    return max(-13593i, -10271i);
}

fn func_2(arg_0: u32) -> i32 {
    let var_0 = _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(select(-2147483647i, abs(2147483647i), global0.c.b), abs(func_3(global0.a)), ~(~global0.e))), firstTrailingBit((vec3<i32>(global0.d, 7135i, global0.e) >> (abs(vec3<u32>(4294967295u, arg_0, arg_0)) % vec3<u32>(32u))) & -vec3<i32>(u_input.b.x, u_input.b.x, -1i)));
    var var_1 = vec3<u32>(~global0.a.a, abs(9289u), ~(~arg_0));
    let var_2 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.x))), global1[_wgslsmith_index_u32(47917u, 31u)], -1581f)));
    global1 = array<f32, 31>();
    let var_3 = ~(~var_0.x);
    return _wgslsmith_clamp_i32(~(global0.d & _wgslsmith_clamp_i32(-var_3, var_3, -1i)), 28808i, _wgslsmith_mult_i32(-11385i, _wgslsmith_sub_i32(max(u_input.b.x, global0.d), 0i)));
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> vec3<i32> {
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2232f, arg_0.b))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b, global2.x)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2.x, -377f), vec2<f32>(global2.x, -1632f)))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-967f, -270f) - vec2<f32>(arg_0.b, global2.x))))), !all(vec2<bool>(arg_2.c, arg_2.b)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(468f, 1074f), vec2<f32>(-269f, global2.x))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 2991f))))))));
    return reverseBits(vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_add_i32(-2147483647i | arg_3.d, abs(-42662i)), func_2(1u) | u_input.a.x), 0i, -global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global0.b)), global1[_wgslsmith_index_u32(62955u, 31u)]))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec2<i32>(-global0.e, 13607i), u_input.a), _wgslsmith_mult_u32(1u, global0.a.a), ~(-31562i), firstLeadingBit(select(func_1(Struct_2(Struct_1(0u, global0.c.b, true), -2000f, global0.a, 0i, 0i), 0u, Struct_1(40322u, true, global0.a.c), Struct_2(Struct_1(global0.c.a, global0.a.c, global0.a.c), 1000f, global0.a, global0.e, u_input.b.x)), vec3<i32>(reverseBits(global0.d), global0.d, max(0i, global0.d)), !vec3<bool>(true, true, global0.c.c))));
}

