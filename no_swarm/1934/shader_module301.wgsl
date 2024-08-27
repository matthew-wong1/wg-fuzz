struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<Struct_2, 8>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_2, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = arg_1;
    return 4294967295u;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<u32>) -> vec2<u32> {
    let var_0 = global1[_wgslsmith_index_u32(u_input.a, 8u)];
    let var_1 = 1i;
    return arg_2.ww >> (vec2<u32>(~_wgslsmith_div_u32(10395u | arg_0.b.a, ~82020u), func_2(arg_0.b, arg_1.c, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_2.x | u_input.a, u_input.a), 8u)], Struct_2(min(11431u, 1u)))) % vec2<u32>(32u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = countOneBits(vec2<u32>(1u, arg_0.b.a) ^ max(vec2<u32>(max(30304u, arg_0.a.a), _wgslsmith_add_u32(39701u, 68660u)), vec2<u32>(u_input.a, _wgslsmith_clamp_u32(arg_0.a.a, 1704u, arg_0.a.a))));
    global0 = _wgslsmith_div_i32(57754i, abs(max(i32(-1i) * -1i, ~1i))) >> (var_0.x % 32u);
    var var_1 = Struct_2(4294967295u);
    let var_2 = _wgslsmith_f_op_f32(-104f + -940f);
    global0 = _wgslsmith_dot_vec4_i32(-(~(-select(vec4<i32>(2147483647i, -1i, 29770i, 11309i), vec4<i32>(1i, 10907i, -17544i, 0i), vec4<bool>(false, arg_1.a, arg_1.a, true)))), vec4<i32>(-51502i, countOneBits(abs(1i)), (34477i ^ firstTrailingBit(-2147483647i)) >> (47564u % 32u), firstLeadingBit(1i) << (~var_0.x % 32u)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(0u >> (u_input.a % 32u));
    var var_1 = func_3(Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~select(vec2<u32>(46227u, 27046u), vec2<u32>(55413u, u_input.a), vec2<bool>(false, true)), ~func_1(Struct_3(Struct_2(u_input.a), Struct_2(u_input.a)), Struct_1(true, vec2<f32>(130f, -200f), -588f), vec4<u32>(u_input.a, 0u, 1u, 1u))), 8u)], global1[_wgslsmith_index_u32(var_0.a, 8u)]), Struct_1(false, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(626f, 276f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1313f, 1000f) + vec2<f32>(-400f, 916f)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(618f * -913f), -1836f, true))))));
    var var_2 = vec3<i32>(_wgslsmith_clamp_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, 13785i), select(-1i, _wgslsmith_sub_i32(-34284i, 4303i), true), max(2147483647i, 1i)), -(~abs(0i))), -42293i, _wgslsmith_div_i32(~(-(i32(-1i) * -2147483647i)), firstLeadingBit(1i) << (~_wgslsmith_sub_u32(var_0.a, var_0.a) % 32u)));
    let var_3 = Struct_3(global1[_wgslsmith_index_u32(0u, 8u)], global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, 33363u, u_input.a, 0u), vec4<u32>(var_0.a, var_0.a, var_0.a, 3188u)), ~vec4<u32>(u_input.a, 1u, u_input.a, u_input.a)) | (~70563u >> (0u % 32u)), countOneBits(0u)), 8u)]);
    var var_4 = var_3;
    var var_5 = -(~(vec3<i32>(var_2.x, -375i, var_2.x) << (vec3<u32>(var_0.a, var_0.a, var_4.b.a) % vec3<u32>(32u)))) ^ vec3<i32>((_wgslsmith_sub_i32(var_2.x, var_2.x) << ((1u ^ u_input.a) % 32u)) & var_2.x, ~(-10063i), var_2.x);
    global0 = firstTrailingBit(26942i);
    let var_6 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, -vec3<i32>(1i << (func_2(Struct_2(var_4.a.a), 1280f, var_3.a, var_3.b) % 32u), -_wgslsmith_mult_i32(var_5.x, var_2.x), var_2.x), 17334u, var_1.c);
}

