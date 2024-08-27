struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: array<i32, 32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~87697u, _wgslsmith_mult_u32(~u_input.a.x, 0u | (u_input.a.x << (u_input.a.x % 32u))), u_input.a.x, _wgslsmith_mult_u32(abs(~u_input.a.x), _wgslsmith_add_u32(18312u, u_input.a.x))), select(~vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x, 4294967295u), vec4<u32>(_wgslsmith_mod_u32(78358u, u_input.a.x) ^ u_input.a.x, 1u, ~(~13319u), 4294967295u & (u_input.a.x ^ u_input.a.x)), !select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false)), true)));
    let var_1 = !select(select(select(vec2<bool>(true, true), vec2<bool>(true, false), any(vec2<bool>(false, true))), vec2<bool>(select(false, false, false), true), !(43566u != var_0)), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true))), false), any(select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, true, true), true)));
    var var_2 = Struct_1(~((_wgslsmith_add_i32(0i, global1[_wgslsmith_index_u32(4294967295u, 32u)]) << (_wgslsmith_sub_u32(var_0, u_input.a.x) % 32u)) << (var_0 % 32u)));
    var var_3 = u_input.b;
    let var_4 = Struct_1(-_wgslsmith_add_i32(min(var_2.a, -13009i), -26795i) << (max(13712u, _wgslsmith_dot_vec2_u32(~u_input.a, vec2<u32>(u_input.a.x, 83085u))) % 32u));
    return _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) - _wgslsmith_f_op_f32(f32(-1f) * -368f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(1f)), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1884f, -100f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-480f + -306f) * 964f)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_2) -> vec4<f32> {
    var var_0 = arg_2;
    var_0 = Struct_2(abs(vec2<u32>(38594u, 77442u)), arg_2.b, vec2<i32>(-var_0.c.x, _wgslsmith_sub_i32(u_input.b, 3592i)));
    var_0 = arg_2;
    var var_1 = Struct_1(7162i);
    let var_2 = arg_2;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(func_3()))));
}

fn func_4(arg_0: u32, arg_1: vec4<f32>) -> Struct_2 {
    global0 = false;
    let var_0 = Struct_1(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(firstTrailingBit(1u), 42900u), 32u)]);
    var var_1 = any(vec2<bool>(true, true));
    global0 = !(!(!any(vec2<bool>(false, false))));
    var_1 = reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0, 1u, 52067u, 28829u) ^ ~vec4<u32>(u_input.a.x, u_input.a.x, arg_0, arg_0), abs(vec4<u32>(arg_0, u_input.a.x, 5052u, u_input.a.x)))) < ~min(u_input.a.x, arg_0);
    return Struct_2(_wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(~u_input.a, select(u_input.a, u_input.a, true)), u_input.a), ~(~_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(15748u, arg_0))), vec2<u32>(38299u, arg_0)), Struct_1(~(_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(0u, 32u)], u_input.b) | _wgslsmith_add_i32(u_input.b, global1[_wgslsmith_index_u32(0u, 32u)]))), _wgslsmith_clamp_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(25161i, global1[_wgslsmith_index_u32(u_input.a.x, 32u)]) >> (vec2<u32>(arg_0, u_input.a.x) % vec2<u32>(32u)), ~vec2<i32>(1i, -2147483647i)), countOneBits(-vec2<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 32u)], -1i)), -countOneBits(vec2<i32>(1i, 1i))) >> (~select(firstTrailingBit(u_input.a), u_input.a, true) % vec2<u32>(32u)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = Struct_1(u_input.b);
    var var_1 = ~u_input.a.x >> (max(0u, u_input.a.x) % 32u);
    let var_2 = func_4(76926u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(func_2(vec2<u32>(u_input.a.x, 49195u), var_0.a, Struct_2(vec2<u32>(0u, 0u), arg_2, vec2<i32>(-1i, var_0.a)))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2399f, arg_0, arg_0, arg_0)))) + vec4<f32>(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(-1463f * arg_1)), arg_0, _wgslsmith_f_op_f32(319f * 1972f), -2063f)));
    let var_3 = Struct_2(vec2<u32>(0u, u_input.a.x & 35492u), func_4(~select(min(var_2.a.x, 19794u), max(u_input.a.x, 10694u), true), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_0, -813f, arg_0, arg_1), vec4<f32>(-1000f, arg_1, -401f, -1216f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1153f, arg_0, arg_0, -2447f))))))).b, -_wgslsmith_div_vec2_i32(var_2.c, var_2.c));
    let var_4 = func_4(_wgslsmith_add_u32(1u, ~var_2.a.x), vec4<f32>(_wgslsmith_f_op_vec4_f32(func_3()).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -140f)), _wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -273f)) - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(arg_1, 1000f), _wgslsmith_f_op_f32(arg_1 * 573f)))))).b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 32>();
    global1 = array<i32, 32>();
    let var_0 = Struct_1(~(-(~(-2147483647i)) | (global1[_wgslsmith_index_u32(~u_input.a.x, 32u)] & _wgslsmith_sub_i32(1i, u_input.b))));
    global0 = !(!func_1(-787f, -1000f, Struct_1(u_input.b), var_0) & !select(true, true, true));
    var var_1 = vec3<u32>(u_input.a.x, _wgslsmith_add_u32(u_input.a.x, 8259u), func_4(abs(_wgslsmith_add_u32(countOneBits(u_input.a.x), 1u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))).a.x);
    global0 = true && (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1338f))) * -1168f) <= -847f);
    var_1 = vec3<u32>(_wgslsmith_mult_u32(u_input.a.x, firstTrailingBit(var_1.x)), _wgslsmith_sub_u32(~u_input.a.x, ~(abs(4294967295u) | reverseBits(var_1.x))), _wgslsmith_clamp_u32(~u_input.a.x, ~u_input.a.x, ~(~(var_1.x & var_1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-1725f, vec2<u32>(~func_4(_wgslsmith_div_u32(65206u, 1u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1826f, 1388f, 374f, -296f) - vec4<f32>(488f, 173f, -1887f, 2319f))).a.x, abs(var_1.x)));
}

