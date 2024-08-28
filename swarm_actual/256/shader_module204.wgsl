struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-1080f, -464f, -2199f, -2213f, -480f, 2014f, 735f, 873f, 1000f, -300f, 1192f, -1299f, -368f, -594f, -1353f, -549f, -903f, 776f, 632f);

var<private> global1: Struct_1 = Struct_1(1u, 1u, vec4<bool>(false, false, true, true));

var<private> global2: vec3<i32>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = select(4294967295u, min(0u, ~4294967295u), true);
    let var_1 = vec3<u32>(reverseBits(firstLeadingBit(max(~0u, ~4294967295u))), 11932u, 0u);
    global2 = abs(-vec3<i32>(-11576i, global2.x, 24311i));
    var var_2 = ~u_input.a;
    let var_3 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(global1.a, 19u)]);
    return arg_0;
}

fn func_3(arg_0: vec3<f32>) -> Struct_1 {
    global1 = Struct_1(58314u, ~1341u, global1.c);
    global2 = reverseBits(vec3<i32>(_wgslsmith_sub_i32(global2.x, 1i), -17984i, countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-51607i, -2147483647i, 0i), vec3<i32>(-1i, global2.x, -2147483647i)), firstTrailingBit(vec3<i32>(global2.x, global2.x, global2.x))))));
    var var_0 = arg_0;
    let var_1 = Struct_1(global1.a, u_input.a.x, global1.c);
    let var_2 = true;
    return func_2(Struct_1(u_input.a.x, _wgslsmith_mult_u32(select(4294967295u, u_input.a.x, var_2), _wgslsmith_div_u32(u_input.a.x, var_1.a)), !vec4<bool>(true, var_2, var_2, var_2 | true)));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = u_input.a.xzw;
    global1 = func_2(arg_0);
    let var_1 = Struct_1(4294967295u, countOneBits(~_wgslsmith_div_u32(0u, var_0.x)), global1.c);
    global1 = func_2(func_2(func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 19u)], -1470f, global0[_wgslsmith_index_u32(43635u, 19u)]) * vec3<f32>(1564f, global0[_wgslsmith_index_u32(1u, 19u)], 723f))))));
    var var_2 = 311f;
    return Struct_1(var_0.x, ~4294967295u, func_2(var_1).c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(~(~(~global1.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.a, 11606u) >> (u_input.a.xx % vec2<u32>(32u)), firstLeadingBit(vec2<u32>(3163u, 53794u))) >> (~57u % 32u), vec4<bool>(true, true, false, global1.c.x)));
    var var_1 = func_2(Struct_1(var_0.a, countOneBits(_wgslsmith_mult_u32(u_input.a.x, func_1(Struct_1(1u, var_0.a, vec4<bool>(global1.c.x, var_0.c.x, false, false))).a)), global1.c));
    let var_2 = Struct_1(3070u, ~var_0.b, var_0.c);
    var var_3 = func_1(Struct_1(0u, 4294967295u, !(!(!global1.c))));
    var_0 = func_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-888f, 148f, global0[_wgslsmith_index_u32(global1.b << (var_0.b % 32u), 19u)]) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1752f, global0[_wgslsmith_index_u32(global1.a, 19u)], global0[_wgslsmith_index_u32(0u, 19u)]), vec3<f32>(global0[_wgslsmith_index_u32(var_0.a, 19u)], global0[_wgslsmith_index_u32(var_0.b, 19u)], 126f), var_1.c.x)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1477f, -122f, 383f)))))));
    var var_4 = func_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1014f), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, var_0.a), 19u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1040f - global0[_wgslsmith_index_u32(u_input.a.x, 19u)]) - global0[_wgslsmith_index_u32(var_0.a << (0u % 32u), 19u)])) + vec3<f32>(-106f, -600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -778f)))));
    var var_5 = var_2;
    global1 = func_1(Struct_1(0u, ~var_4.b, func_2(var_2).c));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(~global2.x, countOneBits(1i), _wgslsmith_clamp_i32(-31634i & -global2.x, ~global2.x, -28171i << (1u % 32u))), ~vec4<i32>(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(9923i, 4040i)), ~vec2<i32>(17438i, global2.x)), -_wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, global2.x, global2.x), vec3<i32>(9514i, global2.x, 0i)), global2.x, ~global2.x), ~var_4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-2378f)))))), global2.x);
}

