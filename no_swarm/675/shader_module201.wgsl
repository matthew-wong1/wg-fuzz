struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<i32, 3>;

var<private> global2: array<u32, 9>;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> f32 {
    var var_0 = max(vec3<u32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~13967u, _wgslsmith_sub_u32(firstLeadingBit(29189u), 1u | global2[_wgslsmith_index_u32(4294967295u, 9u)]), 41471u), 9u)], abs(_wgslsmith_mult_u32(max(23275u, u_input.d), _wgslsmith_mult_u32(4294967295u, u_input.a.x))), ~(~abs(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]))), firstLeadingBit(~countOneBits(~u_input.a.yxy)));
    global2 = array<u32, 9>();
    var_0 = vec3<u32>(1u, 9233u, abs(~abs(51780u)) & var_0.x);
    var var_1 = true;
    global2 = array<u32, 9>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1126f)) * 1196f);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: Struct_2) -> Struct_3 {
    var var_0 = arg_2;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1440f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a.x + -404f), global0.a.x))), vec2<i32>(firstLeadingBit(1i), ~(25651i << (~u_input.a.x % 32u))), countOneBits(_wgslsmith_sub_u32(max(u_input.d, firstLeadingBit(1u)), u_input.d)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(var_0.a.x)))))), 1344f));
    var var_2 = ~(~(~u_input.a));
    var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.a, 1643f, 251f)))), _wgslsmith_f_op_vec3_f32(-arg_2.a), true)) + global0.a.zwy));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(global0.a))));
    return Struct_3(vec4<f32>(648f, _wgslsmith_f_op_f32(func_3(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(45397u, var_2.x), 3u)], -43240i & var_1.b.x), Struct_4(-vec2<i32>(-30238i, var_1.b.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.a), _wgslsmith_f_op_f32(select(-2558f, -1285f, false))))), 686f));
}

fn func_1(arg_0: u32) -> Struct_1 {
    global2 = array<u32, 9>();
    global0 = func_2(global1[_wgslsmith_index_u32(u_input.a.x, 3u)], Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global0.a.zxx)) * _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global0.a.zzx * vec3<f32>(-357f, global0.a.x, global0.a.x)))))), Struct_2(vec3<f32>(707f, _wgslsmith_div_f32(global0.a.x, _wgslsmith_f_op_f32(1424f - 331f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1120f))))));
    var var_0 = global0.a.x;
    var var_1 = true;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global0.a.x))))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.a.x))), ~(-(~u_input.b.yz)), firstLeadingBit(arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(-1046f, global0.a.x), -2016f)))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_4) -> vec3<u32> {
    let var_0 = arg_0;
    let var_1 = func_2(~(43501i << (_wgslsmith_clamp_u32(~35687u, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(31929u, u_input.d), 9u)], ~69057u) % 32u)), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x * -633f) - arg_0.a), arg_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a - -158f) * _wgslsmith_f_op_f32(exp2(arg_0.d))))), Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.xxy * _wgslsmith_f_op_vec3_f32(-global0.a.wxw)) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.a.xxw), _wgslsmith_f_op_vec3_f32(max(global0.a.xyz, vec3<f32>(global0.a.x, -105f, var_0.d))))))));
    global0 = Struct_3(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(148f - global0.a.x) * _wgslsmith_f_op_f32(arg_0.a + -812f)), var_1.a.x, var_1.a.x))));
    global2 = array<u32, 9>();
    let var_2 = vec2<i32>(-24905i, var_0.b.x);
    return vec3<u32>(4294967295u, global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_clamp_u32(var_0.c, 14990u, ~_wgslsmith_mult_u32(arg_0.c, 33118u))), 9u)], ~(global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(4294967295u, 9u)], u_input.d), u_input.a.wz), 9u)] ^ (62272u >> (~var_0.c % 32u))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec4<i32>) -> Struct_3 {
    let var_0 = func_2(reverseBits(~2147483647i), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1192f, global0.a.x, 1605f) - vec3<f32>(1000f, 859f, global0.a.x)))), Struct_2(vec3<f32>(-842f, _wgslsmith_f_op_f32(max(-407f, -1128f)), -571f)));
    global1 = array<i32, 3>();
    let var_1 = var_0;
    var var_2 = Struct_4(arg_1.wx);
    var var_3 = vec3<u32>(_wgslsmith_clamp_u32(max(countOneBits(u_input.d), 4294967295u), firstTrailingBit(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 9u)], 9u)]), 37028u), _wgslsmith_mult_u32(countOneBits(firstTrailingBit(u_input.a.x)), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_0.x, min(u_input.d, global2[_wgslsmith_index_u32(u_input.d, 9u)]), u_input.a.x << (1u % 32u)), 9u)]), 4294967295u) | _wgslsmith_mod_vec3_u32(u_input.a.xxy, _wgslsmith_div_vec3_u32(select(~vec3<u32>(u_input.d, u_input.d, u_input.d), arg_0 << (arg_0 % vec3<u32>(32u)), true), ~(~vec3<u32>(4294967295u, 4294967295u, 4294967295u))));
    return func_2(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~(~4294967295u >> (min(var_3.x, 7145u) % 32u)), 3u)], countOneBits(-(~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(15085u, 9u)], 3u)]))), Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-13225i, Struct_4(u_input.b.xx)))), _wgslsmith_f_op_f32(func_3(2147483647i, Struct_4(var_2.a))), _wgslsmith_f_op_f32(var_1.a.x - -485f))), Struct_2(vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -631f)), _wgslsmith_f_op_f32(-global0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_5(~_wgslsmith_mod_vec3_u32(func_4(func_1(u_input.d), Struct_4(vec2<i32>(61328i, -3153i))), select(vec3<u32>(0u, u_input.a.x, 1u), u_input.a.xww & u_input.a.wyy, select(false, true, true))), vec4<i32>(-(~firstLeadingBit(u_input.c)), ~u_input.b.x, _wgslsmith_sub_i32(-1i, global1[_wgslsmith_index_u32(min(~4294967295u, min(4294967295u, global2[_wgslsmith_index_u32(34561u, 9u)])), 3u)]), ~u_input.c));
    global2 = array<u32, 9>();
    let var_0 = -(~_wgslsmith_dot_vec2_i32(min(_wgslsmith_div_vec2_i32(u_input.b.zx, u_input.b.yy), -u_input.b.zx), countOneBits(reverseBits(vec2<i32>(-9125i, global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 9u)], 9u)], 3u)])))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, global0.a.x, global0.a.x))), _wgslsmith_f_op_vec3_f32(-global0.a.yyw), ~1u <= _wgslsmith_sub_u32(0u, u_input.d))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.a.xwx - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.a.x, 708f, -1473f)))) - _wgslsmith_f_op_vec3_f32(ceil(global0.a.yyx))))));
    var var_2 = -405f;
    var var_3 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 533f, 394f, var_1.a.x) - global0.a)))));
}

