struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<Struct_1, 31>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<bool>) -> i32 {
    global1 = array<Struct_1, 17>();
    var var_0 = Struct_1(~(~u_input.c), -28567i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -584f) + 592f) - global0.d), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global0.d)), _wgslsmith_f_op_f32(abs(-2349f))) - global0.d))));
    let var_1 = global0.c;
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 17u)];
    var_2 = global2[_wgslsmith_index_u32(var_0.a, 31u)];
    return _wgslsmith_mult_i32(~(_wgslsmith_mod_i32(~(-30864i), firstTrailingBit(1i)) << (1u % 32u)), -1i >> (1u % 32u));
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<bool>, arg_2: vec4<bool>) -> f32 {
    var var_0 = Struct_1(~(~reverseBits(global0.a)), arg_0.x, global0.c, _wgslsmith_f_op_f32(abs(global0.c)));
    let var_1 = Struct_1(_wgslsmith_clamp_u32(22504u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(52389u, global0.a, ~0u), ~(~vec3<u32>(1u, 12463u, 4294967295u)))), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(max(-18575i, 80642i), -arg_0.x), max(func_3(arg_1.xx), firstLeadingBit(-41841i))), var_0.b, _wgslsmith_sub_i32(arg_0.x, abs(~(-2147483647i)))), _wgslsmith_f_op_f32(f32(-1f) * -370f), 597f);
    var var_2 = true;
    var var_3 = arg_0;
    var var_4 = ~67331u;
    return _wgslsmith_f_op_f32(-global0.d);
}

fn func_4(arg_0: i32, arg_1: vec2<u32>, arg_2: f32, arg_3: bool) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(abs(~global0.b) << (~0u % 32u), arg_0) | ~(~reverseBits(6986i));
    global1 = array<Struct_1, 17>();
    global0 = Struct_1(4294967295u, 49815i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.c), _wgslsmith_f_op_f32(step(-1200f, -1000f))))))));
    global1 = array<Struct_1, 17>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-2074f, global0.c, global0.c), vec3<f32>(global0.d, -1797f, 1666f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-685f, arg_2, arg_2)))))));
    return Struct_1(min(_wgslsmith_clamp_u32(14775u, select(arg_1.x, u_input.a, false), 0u), ~1056u << (firstTrailingBit(0u) % 32u)) << (global0.a % 32u), -35304i, 769f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.x, -1780f)) * 771f)))));
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<bool>, arg_3: vec3<u32>) -> vec3<u32> {
    var var_0 = arg_0;
    global2 = array<Struct_1, 31>();
    let var_1 = true;
    let var_2 = select(vec3<bool>(arg_2.x, any(arg_2), false), vec3<bool>((-3226i >= _wgslsmith_mult_i32(2147483647i, global0.b)) | var_1, !arg_2.x, arg_2.x), var_1);
    let var_3 = func_4(global0.b, arg_3.xz, _wgslsmith_f_op_f32(arg_1 + _wgslsmith_f_op_f32(func_2(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, global0.b, 2147483647i, -1i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b)) & max(vec4<i32>(u_input.b, global0.b, 17192i, -1i), vec4<i32>(-77554i, u_input.b, global0.b, 2147483647i)), !(!vec4<bool>(var_2.x, false, true, true)), !vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x)))), !(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-752f, -1337f))) >= -1259f));
    return ~(~_wgslsmith_clamp_vec3_u32(firstLeadingBit(arg_0.xzy), firstTrailingBit(min(var_0.yww, vec3<u32>(15383u, arg_3.x, 1u))), ~vec3<u32>(arg_0.x, u_input.c, u_input.d)));
}

fn func_5(arg_0: vec3<i32>, arg_1: bool) -> StorageBuffer {
    var var_0 = ~countOneBits(~abs(vec2<u32>(u_input.d, u_input.d)) >> (reverseBits(vec2<u32>(11542u, u_input.d) >> (vec2<u32>(global0.a, u_input.d) % vec2<u32>(32u))) % vec2<u32>(32u)));
    var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(0u | var_0.x, _wgslsmith_div_u32(43294u, 1u)) | (func_1(countOneBits(vec4<u32>(u_input.a, 1u, global0.a, 15381u)), global0.c, !vec4<bool>(arg_1, arg_1, false, false), min(vec3<u32>(global0.a, global0.a, 88908u), vec3<u32>(global0.a, 49156u, u_input.a))).yz >> (abs(reverseBits(vec2<u32>(var_0.x, 8466u))) % vec2<u32>(32u))), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.a, u_input.c, 4294967295u, 7050u), vec4<u32>(28396u, u_input.d, var_0.x, 0u)) & 2813u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(65840u, 3566u, var_0.x, 0u) << (vec4<u32>(var_0.x, global0.a, 55093u, 4294967295u) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global0.a, var_0.x, var_0.x), vec4<u32>(0u, 45759u, u_input.d, u_input.a), vec4<u32>(0u, global0.a, var_0.x, 21862u)))));
    global2 = array<Struct_1, 31>();
    var_0 = firstLeadingBit(min(_wgslsmith_sub_vec2_u32(vec2<u32>(46198u, 55658u) ^ vec2<u32>(var_0.x, 4294967295u), _wgslsmith_add_vec2_u32(vec2<u32>(34412u, global0.a), vec2<u32>(var_0.x, u_input.c))), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, u_input.a), vec2<u32>(var_0.x, var_0.x)) ^ max(vec2<u32>(58057u, var_0.x), vec2<u32>(29183u, var_0.x)))) ^ abs(min(_wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.d, u_input.c)), ~vec2<u32>(0u, 13088u)), vec2<u32>(1u, select(global0.a, 4294967295u, false))));
    var var_1 = Struct_1(_wgslsmith_clamp_u32(func_4(global0.b, _wgslsmith_mult_vec2_u32(vec2<u32>(global0.a, var_0.x) | vec2<u32>(var_0.x, global0.a), vec2<u32>(1u, 4294967295u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-589f - global0.d)), all(!vec3<bool>(arg_1, true, true))).a, var_0.x, _wgslsmith_dot_vec2_u32(~(vec2<u32>(0u, global0.a) ^ vec2<u32>(28396u, u_input.d)), vec2<u32>(~var_0.x, func_4(-21567i, vec2<u32>(78960u, var_0.x), 248f, true).a))), 19850i, 502f, global0.d);
    return StorageBuffer(_wgslsmith_div_u32(_wgslsmith_sub_u32(var_1.a, 14698u), firstTrailingBit(~4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~(global0.a & 16720u), 17u)];
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.d) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -909f) * 1072f));
    let x = u_input.a;
    s_output = func_5(vec3<i32>(~(-10322i), var_0.b, ~countOneBits(u_input.b)) << (_wgslsmith_mult_vec3_u32(~firstLeadingBit(vec3<u32>(4294967295u, 0u, u_input.d)), func_1(~vec4<u32>(global0.a, 74711u, 7831u, 1u), _wgslsmith_f_op_f32(f32(-1f) * -459f), vec4<bool>(true, true, true, true), vec3<u32>(0u, 4294967295u, var_0.a))) % vec3<u32>(32u)), true);
}

