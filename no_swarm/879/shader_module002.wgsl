struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: array<i32, 14>;

var<private> global2: array<f32, 32> = array<f32, 32>(425f, 870f, 248f, -107f, -705f, 1867f, 1388f, -2049f, -242f, 419f, -406f, 104f, -703f, 1192f, 410f, 283f, 1024f, -1153f, 133f, 1087f, 889f, -1782f, -1000f, 1605f, -1034f, -938f, 359f, -531f, 1665f, -390f, 237f, -1000f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_2() -> i32 {
    global2 = array<f32, 32>();
    return global1[_wgslsmith_index_u32(25313u, 14u)];
}

fn func_3() -> vec4<i32> {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false))), true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true));
    global0 = array<Struct_1, 20>();
    var var_1 = abs(-reverseBits(u_input.a) | _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mod_i32(0i, u_input.a), _wgslsmith_mult_i32(1i, -2147483647i), 21714i, -u_input.b.x), ~min(vec4<i32>(u_input.a, 59212i, u_input.b.x, 2147483647i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 14u)], 1i, -2147483647i, global1[_wgslsmith_index_u32(26331u, 14u)]))));
    let var_2 = ~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(1u, 1u, 1u)), _wgslsmith_mod_vec3_u32(select(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(25207u, 4294967295u, 1u), vec3<bool>(false, true, false)), vec3<u32>(1u, 1u, 1u)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(55397u, 2639u) & select(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, 4294967295u, 40178u), vec3<u32>(4294967295u, var_2, var_2)), ~0u, true), 32u)]), global2[_wgslsmith_index_u32(abs(0u), 32u)], -236f, global2[_wgslsmith_index_u32(~(~0u), 32u)]);
    return (abs(-(~vec4<i32>(-2147483647i, u_input.b.x, 1i, 0i))) & abs(-firstLeadingBit(vec4<i32>(u_input.b.x, u_input.b.x, 1i, 24926i)))) >> (_wgslsmith_add_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, var_2), vec2<u32>(28289u, var_2)), 75533u, _wgslsmith_mult_u32(1u, 81990u), var_2 | 54641u), reverseBits(_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(25975u, var_2, 36405u, 59628u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, var_2, var_2, 1u), vec4<u32>(var_2, var_2, 4294967295u, var_2))))) % vec4<u32>(32u));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<bool>) -> u32 {
    var var_0 = Struct_1(firstTrailingBit(firstTrailingBit(vec4<i32>(i32(-1i) * -2147483647i, global1[_wgslsmith_index_u32(arg_0.x, 14u)], ~1i, func_2()))), ~_wgslsmith_sub_vec2_i32(u_input.b.zx, _wgslsmith_sub_vec2_i32(vec2<i32>(25376i, -1i), vec2<i32>(u_input.b.x, 0i)) | u_input.b.xy), _wgslsmith_sub_vec4_u32(~(~reverseBits(vec4<u32>(35385u, arg_0.x, 1u, 4294967295u))), ~(~(~vec4<u32>(arg_0.x, 1u, arg_0.x, 52459u)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(arg_0.x, 32u)], global2[_wgslsmith_index_u32(arg_0.x, 32u)])))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(arg_0.x, arg_0.x, 1u), 32u)] - 1330f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 32u)] * global2[_wgslsmith_index_u32(arg_0.x, 32u)])))))));
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 20u)];
    var_0 = Struct_1(func_3(), vec2<i32>(-(~var_1.b.x), _wgslsmith_mod_i32(var_0.b.x << (35322u % 32u), global1[_wgslsmith_index_u32(~arg_0.x, 14u)])) << (~_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.c.x, arg_0.x), max(vec2<u32>(arg_0.x, var_1.c.x), var_0.c.zw)) % vec2<u32>(32u)), _wgslsmith_add_vec4_u32(select(vec4<u32>(var_1.c.x, arg_0.x, 0u, 4294967295u), var_0.c, select(vec4<bool>(arg_1.x, false, true, arg_1.x), vec4<bool>(true, arg_1.x, arg_1.x, arg_1.x), true)) << (vec4<u32>(1u, 4294967295u, _wgslsmith_add_u32(var_1.c.x, var_0.c.x), 32729u) % vec4<u32>(32u)), var_1.c), vec3<f32>(388f, var_1.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.d.x + 740f), -1848f, false)))));
    let var_2 = u_input.b;
    global0 = array<Struct_1, 20>();
    return 35599u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, abs(func_1(vec3<u32>(42317u, 19510u, 0u), vec3<bool>(true, false, false))), _wgslsmith_dot_vec4_u32(~vec4<u32>(27368u, 35253u, 32915u, 4294967295u), vec4<u32>(55776u, 78993u, 4294967295u, 113350u)), 1u), ~abs(~vec4<u32>(4294967295u, 10941u, 1329u, 0u))) | ~_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(38133u, 42213u, 25435u, 51456u)) & firstTrailingBit(vec4<u32>(2043u, 1u, 1u, 24005u)), vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_1 = global0[_wgslsmith_index_u32(min(1u, func_1(~_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, var_0.x, 1u), var_0.zzx ^ var_0.zzy), vec3<bool>(_wgslsmith_f_op_f32(floor(-638f)) >= global2[_wgslsmith_index_u32(firstLeadingBit(var_0.x), 32u)], false, any(vec2<bool>(true, false))))), 20u)];
    var var_2 = vec4<u32>(var_1.c.x, var_0.x, min(var_0.x, countOneBits(var_1.c.x >> (24602u % 32u))), ~var_1.c.x) ^ firstTrailingBit(vec4<u32>(26167u, _wgslsmith_mult_u32(1u, var_0.x), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(var_1.c.x, 4294967295u)), var_0.zy), 8723u));
    let var_3 = global0[_wgslsmith_index_u32(~(max(_wgslsmith_add_u32(var_1.c.x, 1u), var_2.x) & _wgslsmith_add_u32(var_2.x, ~var_1.c.x)), 20u)];
    var_0 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(var_3.c, vec4<u32>(1u, ~var_1.c.x << (1u % 32u), func_1(~vec3<u32>(var_0.x, var_0.x, var_2.x), vec3<bool>(true, true, true)), ~var_0.x ^ min(4294967295u, var_3.c.x))), vec4<u32>(var_0.x, firstLeadingBit(var_0.x) << (var_2.x % 32u), ~(~(~var_0.x)), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<i32>(abs(global1[_wgslsmith_index_u32(var_3.c.x, 14u)]), 0i), var_3.a.wy), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -169f, global2[_wgslsmith_index_u32(var_0.x, 32u)], 158f)))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_1.d.x * var_1.d.x), _wgslsmith_f_op_f32(var_1.d.x * 1483f), var_3.d.x, 222f) + vec4<f32>(_wgslsmith_f_op_f32(ceil(var_3.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -309f), 1f, _wgslsmith_f_op_f32(-var_3.d.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.d + var_1.d), var_3.d, vec3<bool>(all(vec3<bool>(true, false, false)), false, true))))));
}

