struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(50055u, 1u, 36330u, 45544u);

var<private> global1: vec4<i32>;

var<private> global2: array<u32, 20>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> vec4<i32> {
    let var_0 = -u_input.b;
    return ~vec4<i32>(0i, 1i >> (1u % 32u), global1.x ^ _wgslsmith_mod_i32(u_input.b, var_0 | 2147483647i), -global1.x);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: Struct_1) -> Struct_1 {
    global1 = select(max(firstTrailingBit(-vec4<i32>(-2147483647i, global1.x, 2147483647i, u_input.b) | vec4<i32>(u_input.b, global1.x, u_input.b, -29146i)), _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(-2147483647i, 89833i, u_input.b, -14305i)), -(~vec4<i32>(-9829i, u_input.b, 1i, u_input.b)), ~func_2())), firstLeadingBit(vec4<i32>(max(~global1.x, _wgslsmith_div_i32(global1.x, -4797i)), -(u_input.b ^ 67887i), -_wgslsmith_clamp_i32(22337i, -31388i, global1.x), global1.x)), !(true & arg_2.a.x));
    var var_0 = vec2<u32>(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(global0.x, 20u)], 4294967295u, 6864u), global0.yxx)), 1u) << (~(global0.wx ^ ~(vec2<u32>(4294967295u, global0.x) | vec2<u32>(1u, 1u))) % vec2<u32>(32u));
    let var_1 = func_2().x;
    var var_2 = arg_2;
    var var_3 = _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, 1u, 1u, global2[_wgslsmith_index_u32(global0.x, 20u)])), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_0.x, global2[_wgslsmith_index_u32(var_0.x, 20u)], var_0.x, u_input.a.x), vec4<u32>(0u, u_input.c, u_input.c, 1u), vec4<u32>(var_0.x, global2[_wgslsmith_index_u32(16237u, 20u)], 7486u, 11049u))) & 21296u, ~(~47595u), _wgslsmith_mod_u32(global0.x, reverseBits(50264u))), ~abs(global0.zyy | firstLeadingBit(vec3<u32>(1u, global2[_wgslsmith_index_u32(global0.x, 20u)], u_input.c))));
    return arg_2;
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_clamp_i32(0i, max(~(-1i), min(global1.x, 0i)), u_input.b);
    global2 = array<u32, 20>();
    global0 = min(vec4<u32>(u_input.a.x, _wgslsmith_add_u32(1u, ~global0.x), 16841u, _wgslsmith_dot_vec4_u32(~vec4<u32>(39273u, 0u, 1u, 36081u) ^ vec4<u32>(15299u, global2[_wgslsmith_index_u32(1u, 20u)], u_input.c, 0u), ~(~vec4<u32>(1u, 21608u, 11157u, global0.x)))), abs(~(~vec4<u32>(u_input.a.x, 70577u, global2[_wgslsmith_index_u32(u_input.c, 20u)], global2[_wgslsmith_index_u32(u_input.a.x, 20u)]))));
    let var_1 = 0u;
    let var_2 = !arg_2.a.x != true;
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> i32 {
    var var_0 = func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(min(arg_1, arg_1))), -2755f, -403f, 475f)), arg_2, Struct_1(select(vec2<bool>(!arg_2.a.x, all(vec3<bool>(false, true, arg_2.a.x))), func_3(vec4<f32>(arg_1, arg_1, arg_1, arg_1), func_1(vec2<f32>(arg_1, 1000f), true, arg_2), arg_2).a, select(vec2<bool>(true, arg_2.a.x), arg_2.a, !arg_2.a))));
    global0 = reverseBits(vec4<u32>(abs(arg_0), ~u_input.a.x, _wgslsmith_dot_vec2_u32(global0.xy, global0.wz), 61207u)) | vec4<u32>(_wgslsmith_clamp_u32(arg_0, countOneBits(_wgslsmith_add_u32(43970u, global2[_wgslsmith_index_u32(4294967295u, 20u)])), ~(~global2[_wgslsmith_index_u32(0u, 20u)])), _wgslsmith_div_u32(u_input.c, firstLeadingBit(global2[_wgslsmith_index_u32(firstTrailingBit(1u), 20u)])), abs(_wgslsmith_clamp_u32(select(arg_0, 1u, true), ~4294967295u, ~u_input.a.x)), global0.x);
    let var_1 = Struct_1(!vec2<bool>(any(select(vec2<bool>(false, arg_2.a.x), vec2<bool>(var_0.a.x, arg_2.a.x), var_0.a.x)), false));
    let var_2 = ~arg_0 == firstTrailingBit(global0.x);
    let var_3 = true;
    return reverseBits(_wgslsmith_mod_i32(~func_2().x, 0i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<u32, 20>();
    var var_0 = 4294967295u;
    let var_1 = _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b, reverseBits(-6496i | global1.x) >> (31352u % 32u)), func_4(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1350f * _wgslsmith_f_op_f32(floor(433f)))), func_3(vec4<f32>(_wgslsmith_f_op_f32(abs(875f)), -844f, -679f, 1674f), func_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, 997f))), any(vec4<bool>(true, true, true, false)), Struct_1(vec2<bool>(true, true))), Struct_1(vec2<bool>(true, true)))));
    let var_2 = ~(~(~(~(vec4<u32>(global0.x, 44811u, global0.x, 13681u) >> (vec4<u32>(0u, 15974u, global2[_wgslsmith_index_u32(global0.x, 20u)], 0u) % vec4<u32>(32u))))));
    global0 = (var_2 & var_2) << (reverseBits(var_2) % vec4<u32>(32u));
    let var_3 = func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1998f, -1247f, -1622f, -934f))))))), Struct_1(select(vec2<bool>(false, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_div_f32(447f, 304f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1043f, -1792f) * vec2<f32>(-338f, 736f))))), true, Struct_1(vec2<bool>(true, true))));
    let var_4 = ~select(_wgslsmith_sub_vec2_u32(~global0.xz >> (global0.yx % vec2<u32>(32u)), u_input.a), global0.yx, !var_3.a);
    var var_5 = 47866u;
    var var_6 = -vec4<i32>(global1.x, u_input.b, _wgslsmith_add_i32(u_input.b | ~(-2147483647i), ~abs(-1i)), global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_i32(select(vec4<i32>(1i, 0i, -21280i, ~var_6.x), -vec4<i32>(global1.x, 2147483647i, global1.x, var_1) | ~vec4<i32>(var_1, -27386i, 49490i, u_input.b), true), -vec4<i32>(12575i, var_1, -global1.x, ~u_input.b)), -(vec2<i32>(func_2().x, -2147483647i) ^ global1.wy), abs(vec4<u32>(~_wgslsmith_dot_vec4_u32(var_2, var_2), ~global0.x, global2[_wgslsmith_index_u32(reverseBits(~85484u), 20u)], ~(~var_2.x))), ~(~(~(~var_2.wz))), global1.x);
}

