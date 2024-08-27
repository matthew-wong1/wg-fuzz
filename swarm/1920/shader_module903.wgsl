struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 25> = array<f32, 25>(-218f, -1211f, -1067f, 1351f, -2081f, -894f, 373f, 169f, 768f, 594f, 1399f, 1202f, 662f, -410f, 1132f, 1974f, 1265f, 1362f, 924f, 739f, -1000f, 1000f, 804f, 1121f, -856f);

var<private> global1: f32 = 534f;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_2(~4294967295u, abs(~select(~vec4<u32>(4294967295u, arg_1.x, arg_1.x, 1u), select(vec4<u32>(arg_1.x, 1u, 120792u, u_input.c.x), vec4<u32>(4294967295u, 52061u, 13468u, arg_1.x), false), select(true, true, false))));
    let var_1 = _wgslsmith_sub_vec2_u32(u_input.c, ~var_0.b.zx >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))) >> (u_input.b % vec2<u32>(32u));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~58548u, ~var_0.a), 25u)];
    let var_2 = !(u_input.b.x >= _wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(83130u), _wgslsmith_add_u32(u_input.c.x, 95477u), 4294967295u & var_1.x, arg_1.x), var_0.b));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(var_1.x, 25u)] * -687f)) + -1231f) - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(abs(4294967295u), 25u)]))));
}

fn func_2(arg_0: vec4<f32>) -> bool {
    var var_0 = arg_0;
    global1 = arg_0.x;
    var var_1 = _wgslsmith_f_op_f32(func_3(1i, _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.b.x, 4294967295u), abs(vec3<u32>(100367u, u_input.a.x, 50073u))), ~abs(~vec3<u32>(u_input.a.x, 2522u, 36127u)))));
    var_0 = arg_0;
    var var_2 = abs(abs(u_input.a));
    return true;
}

fn func_1() -> vec2<i32> {
    let var_0 = !vec3<bool>(true, func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-249f, -655f, -1195f, global0[_wgslsmith_index_u32(14456u, 25u)]))), any(vec2<bool>(any(vec4<bool>(true, false, false, true)), false)));
    global1 = -1486f;
    let var_1 = Struct_4(u_input.c, Struct_1(~(~u_input.a.x), vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-767f)))), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a.x, 4297u)), ~vec3<u32>(u_input.b.x, u_input.c.x, 87236u)), 25u)])), u_input.b.x);
    var var_2 = vec3<bool>(var_0.x, all(!select(select(vec4<bool>(var_0.x, true, false, var_0.x), vec4<bool>(true, true, true, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false)), !vec4<bool>(false, var_0.x, false, var_0.x), !vec4<bool>(var_0.x, var_0.x, false, var_0.x))), any(!select(vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, true, false), false)));
    var var_3 = var_1;
    return firstTrailingBit(vec2<i32>(i32(-1i) * -61852i, -2147483647i)) & (-(~vec2<i32>(1i, -2411i)) << (~u_input.a % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -2147483647i, -1i, -51964i), vec4<i32>(18332i, 2147483647i, 2147483647i, 49400i)), 2147483647i) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), -vec2<i32>(71730i, 22267i), func_1())));
    var var_1 = ~(~_wgslsmith_sub_u32(countOneBits(1u), ~u_input.c.x));
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(16547u, 1u), 25u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 25u)] - _wgslsmith_f_op_f32(sign(-519f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 25u)] * 489f))))) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~max(u_input.a.x, u_input.b.x), 25u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(u_input.c.x, 25u)])))))));
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(~func_1().x, ~(~var_0.x) & var_0.x), max(-abs(var_0.x & var_0.x), _wgslsmith_add_i32(1085i, 7996i)), firstLeadingBit(2519i), var_0.x);
    var var_3 = Struct_2(u_input.a.x, select(min(vec4<u32>(u_input.c.x, 60532u, 0u, 25271u) >> (vec4<u32>(u_input.a.x, 11740u, u_input.c.x, u_input.a.x) % vec4<u32>(32u)), max(vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, u_input.a.x), vec4<u32>(u_input.a.x, 80958u, u_input.a.x, u_input.a.x))), _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.b.x, u_input.c.x, u_input.b.x, 4294967295u)), firstLeadingBit(vec4<u32>(0u, u_input.a.x, u_input.c.x, 1u))), true) ^ vec4<u32>(~1u, 37670u, _wgslsmith_dot_vec4_u32(vec4<u32>(27549u, u_input.a.x, 100477u, 0u), abs(vec4<u32>(1118u, u_input.a.x, u_input.b.x, 4294967295u))), u_input.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-18862i, 0i, func_1().x), vec4<i32>(var_0.x, _wgslsmith_div_i32(reverseBits(23756i), -var_2.x), _wgslsmith_div_i32(2147483647i, (var_0.x << (u_input.c.x % 32u)) | 1i), var_2.x), _wgslsmith_dot_vec2_i32(max(_wgslsmith_div_vec2_i32(var_2.xz, abs(var_2.zw)), max(vec2<i32>(1i, 2396i) >> (vec2<u32>(var_3.a, u_input.a.x) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(var_2.yy, vec2<i32>(var_2.x, var_0.x)))), ~abs(vec2<i32>(var_2.x, 0i))), ~select(-80162i, _wgslsmith_add_i32(~0i, -var_2.x), true), firstTrailingBit(vec2<u32>(firstLeadingBit(0u), ~min(62888u, u_input.a.x))));
}

