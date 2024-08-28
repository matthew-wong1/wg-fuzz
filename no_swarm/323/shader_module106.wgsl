struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 14>;

var<private> global1: array<i32, 1> = array<i32, 1>(-8970i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<f32>) -> f32 {
    global1 = array<i32, 1>();
    var var_0 = -min(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(-35905i, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(-18069i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 14u)], 1u)]), vec2<i32>(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 1u)]))), -(~vec2<i32>(-7745i, 2147483647i))), abs(max(vec2<i32>(46563i, -2147483647i), vec2<i32>(1i, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48895u, 14u)], 14u)], 14u)], 1u)])) & _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, 55437i), vec2<i32>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 14u)], 1u)], global1[_wgslsmith_index_u32(1u, 1u)]))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2722f, -853f))) * _wgslsmith_f_op_f32(f32(-1f) * -671f)) * -105f));
    global1 = array<i32, 1>();
    let var_2 = true;
    return arg_0.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    var var_0 = Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 620f, -634f, -2607f))) + vec4<f32>(138f, _wgslsmith_f_op_f32(-2150f + 1229f), 1179f, 432f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(max(-844f, arg_1.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.xz))))), firstLeadingBit(-vec3<i32>(arg_0 >> (global0[_wgslsmith_index_u32(48556u, 14u)] % 32u), countOneBits(arg_0), 2147483647i)), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(all(vec4<bool>(true, true, true, false)), arg_1.x == arg_1.x, global0[_wgslsmith_index_u32(26685u, 14u)] >= 5739u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-187f - _wgslsmith_f_op_f32(-arg_1.x)) * arg_1.x))));
    let var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(reverseBits(var_0.c.x), var_0.c.x << (70563u % 32u)) & countOneBits(arg_0), var_0.c.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_1.x), 460f)))))), abs(vec3<i32>(0i, var_0.c.x, -12721i) << (~(~vec3<u32>(105619u, global0[_wgslsmith_index_u32(4294967295u, 14u)], global0[_wgslsmith_index_u32(55678u, 14u)])) % vec3<u32>(32u))), true, -547f);
    var var_2 = var_1.a;
    let var_3 = ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(12598u, global0[_wgslsmith_index_u32(24351u, 14u)], u_input.a, global0[_wgslsmith_index_u32(u_input.a, 14u)]), firstTrailingBit(~vec4<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(4294967295u, 14u)], u_input.a))));
    global0 = array<u32, 14>();
    return ~var_3;
}

fn func_1() -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(533f)), -2153f), 353f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(970f - _wgslsmith_f_op_f32(f32(-1f) * -562f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(768f))), true)), -1037f));
    global1 = array<i32, 1>();
    let var_1 = ~13381u;
    global0 = array<u32, 14>();
    global0 = array<u32, 14>();
    return -2147483647i & ~global1[_wgslsmith_index_u32(select(40u, func_2(_wgslsmith_mod_i32(0i, 25318i), vec3<f32>(var_0.x, var_0.x, -990f)), any(vec2<bool>(true, true))), 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(vec2<i32>(1i, min(firstLeadingBit(-2147483647i), global1[_wgslsmith_index_u32(3752u, 1u)])));
    let var_1 = Struct_1(_wgslsmith_sub_i32(func_1(), countOneBits(global1[_wgslsmith_index_u32(16960u, 1u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1806f, true))), abs(-vec3<i32>(_wgslsmith_mod_i32(21753i, global1[_wgslsmith_index_u32(4294967295u, 1u)]), var_0.x, var_0.x | global1[_wgslsmith_index_u32(1u, 1u)])), !all(vec4<bool>(true, all(vec4<bool>(true, true, false, false)), any(vec2<bool>(true, false)), true)), -2018f);
    global1 = array<i32, 1>();
    var var_2 = vec4<bool>(var_1.d, !(!var_1.d) || ((~global0[_wgslsmith_index_u32(4294967295u, 14u)] != ~u_input.a) || all(vec3<bool>(true, var_1.d, var_1.d))), true, any(vec2<bool>(var_1.d, var_1.d)));
    var_0 = reverseBits(_wgslsmith_add_vec2_i32(var_1.c.zz, -(~vec2<i32>(-25241i, -23655i))) << (~vec2<u32>(global0[_wgslsmith_index_u32(~u_input.a, 14u)], ~1u) % vec2<u32>(32u)));
    var_2 = vec4<bool>(false, !var_2.x, global1[_wgslsmith_index_u32(1u, 1u)] == min(global1[_wgslsmith_index_u32(0u, 1u)], -2147483647i), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(4294967295u, 14u)], ~func_2(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], 14u)], 1u)], vec3<f32>(var_1.e, var_1.e, 2085f))), 14u)] < (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec3<u32>(10490u, 0u, 4294967295u) >> (vec3<u32>(51367u, global0[_wgslsmith_index_u32(u_input.a, 14u)], global0[_wgslsmith_index_u32(4294967295u, 14u)]) % vec3<u32>(32u))) ^ func_2(var_0.x & global1[_wgslsmith_index_u32(u_input.a, 1u)], _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_1.e, var_1.e, var_1.b))))));
    let var_3 = max(_wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, 67804u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 14u)])), ~vec3<u32>(7818u, 12984u, global0[_wgslsmith_index_u32(0u, 14u)]) & vec3<u32>(u_input.a, 19433u, 1u)) | vec3<u32>(_wgslsmith_div_u32(firstTrailingBit(u_input.a), u_input.a), ~firstTrailingBit(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 14u)], 14u)], 14u)]), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 14u)]), vec2<u32>(global0[_wgslsmith_index_u32(u_input.a, 14u)], 11226u)), 14u)]), countOneBits(abs(vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(32385u, 14u)] << (4294967295u % 32u), 14u)], ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 14u)], 165908u, u_input.a), vec3<u32>(0u, global0[_wgslsmith_index_u32(u_input.a, 14u)], 66035u))))));
    var var_4 = Struct_1(-(-(global1[_wgslsmith_index_u32(11760u, 1u)] >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6483u, 14u)], 14u)] % 32u)) >> (func_2(_wgslsmith_mod_i32(-2147483647i, -15920i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(436f, -163f, 698f))) % 32u)), var_1.e, vec3<i32>(0i, -22512i, -_wgslsmith_sub_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 1u)], var_0.x), ~global1[_wgslsmith_index_u32(21348u, 1u)])), true, -711f);
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<u32>(global0[_wgslsmith_index_u32(1735u, 14u)], countOneBits(4294967295u), ~_wgslsmith_mult_u32(var_3.x, 1u), ~(~1u)), vec4<u32>(_wgslsmith_mult_u32(var_3.x, global0[_wgslsmith_index_u32(var_3.x, 14u)]), 1u & (var_3.x & 1u), ~abs(u_input.a), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_3.x), vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(u_input.a, 14u)], var_3.x)), min(var_3.x, global0[_wgslsmith_index_u32(var_3.x, 14u)]))), !vec4<bool>(false, any(var_2.xz), any(var_2.xy), true)), ~0u, global1[_wgslsmith_index_u32((~_wgslsmith_mult_u32(var_3.x, 1u) & ~67008u) >> (global0[_wgslsmith_index_u32(~1u, 14u)] % 32u), 1u)]);
}

