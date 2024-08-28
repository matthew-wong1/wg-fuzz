struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_2;

var<private> global2: array<f32, 32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    let var_0 = !vec3<bool>(true, true, global1.a.a.x & false);
    let var_1 = arg_1.a.a.x;
    global1 = Struct_2(Struct_1(!(!select(arg_1.a.a, vec4<bool>(false, true, false, true), var_1)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-global1.a.b)))));
    var var_2 = Struct_3(Struct_1(!vec4<bool>(true, false, true, !arg_3.a.x), vec3<f32>(global1.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.b.x) * _wgslsmith_f_op_f32(select(arg_3.b.x, global1.a.b.x, global1.a.a.x))), arg_3.b.x)), reverseBits(vec2<i32>(1i, -25587i)) | select(_wgslsmith_div_vec2_i32(firstLeadingBit(vec2<i32>(arg_1.b.x, -15608i)), vec2<i32>(-2147483647i, 0i)), -firstLeadingBit(arg_2.zx), !(!vec2<bool>(var_0.x, arg_1.a.a.x))));
    let var_3 = Struct_3(arg_1.a, var_2.b);
    return arg_1.a.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> Struct_2 {
    global1 = Struct_2(Struct_1(select(vec4<bool>(true, true, arg_0.a.x, -101f == global1.a.b.x), vec4<bool>(global1.a.a.x, func_3(0i, Struct_3(arg_0, vec2<i32>(33094i, 22733i)), vec3<i32>(-23141i, 4835i, 58666i), Struct_1(global1.a.a, vec3<f32>(-1961f, global2[_wgslsmith_index_u32(102532u, 32u)], -417f))), all(global1.a.a), true), arg_0.a.x), global1.a.b));
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_div_vec3_i32(min(~vec3<i32>(-2147483647i, -6291i, 5214i), ~vec3<i32>(73978i, -2147483647i, -2147483647i)), select(~vec3<i32>(-1i, -9799i, 1i), ~vec3<i32>(-2147483647i, -2236i, 341i), global1.a.a.x)), vec3<i32>(min(-19715i << (arg_1.x % 32u), ~1i), -2147483647i, max(-1i, 8077i))));
    global0 = _wgslsmith_mult_i32(10410i, ~(-(~abs(-21183i))));
    let var_1 = Struct_3(arg_0, -vec2<i32>(28514i, _wgslsmith_mult_i32(var_0.x, var_0.x) << (~76772u % 32u)));
    let var_2 = select(arg_0.a.xw, select(vec2<bool>(true, true), vec2<bool>(true, false), !func_3(9289i, Struct_3(Struct_1(vec4<bool>(false, false, false, arg_0.a.x), vec3<f32>(-1000f, global2[_wgslsmith_index_u32(4294967295u, 32u)], var_1.a.b.x)), vec2<i32>(-1i, var_0.x)), min(vec3<i32>(var_0.x, 2147483647i, -25966i), vec3<i32>(var_0.x, var_0.x, 51579i)), arg_0)), arg_1.x <= ~u_input.a);
    return Struct_2(Struct_1(!select(vec4<bool>(global1.a.a.x, global1.a.a.x, var_1.a.a.x, var_1.a.a.x), vec4<bool>(false, true, var_2.x, false), var_1.a.a), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.b.x, arg_0.b.x, global2[_wgslsmith_index_u32(47648u, 32u)])) * var_1.a.b)));
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    global2 = array<f32, 32>();
    var var_0 = Struct_2(global1.a);
    var var_1 = ~select(vec4<i32>(min(_wgslsmith_mod_i32(arg_1.x, 2147483647i), -2147483647i), -select(0i, arg_1.x, false), countOneBits(-1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-12560i, arg_1.x, arg_1.x, arg_1.x), ~vec4<i32>(1i, arg_1.x, arg_1.x, -1i))), _wgslsmith_clamp_vec4_i32(arg_1, vec4<i32>(i32(-1i) * -1i, firstTrailingBit(-1i), -2147483647i, i32(-1i) * -2147483647i), arg_1), !(13487u != (u_input.a | u_input.a)));
    let var_2 = Struct_3(arg_0.a, vec2<i32>(firstTrailingBit(arg_1.x), var_1.x));
    var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(firstTrailingBit(18658i), var_2.b.x | -(i32(-1i) * -17762i), _wgslsmith_sub_i32(var_2.b.x, var_1.x | var_2.b.x), abs(-var_2.b.x)), vec4<i32>(i32(-1i) * -_wgslsmith_sub_i32(arg_1.x, arg_1.x), countOneBits(~(-43351i)) | arg_1.x, ~_wgslsmith_div_i32(max(-919i, var_1.x), countOneBits(arg_1.x)), 1i));
    return max(~(~u_input.a), ~((arg_2 << (arg_2 % 32u)) ^ firstTrailingBit(u_input.a)));
}

fn func_1() -> Struct_3 {
    let var_0 = abs(reverseBits(vec4<u32>(min(73446u, u_input.a), u_input.a, u_input.a, func_4(func_2(global1.a, vec4<u32>(121u, 56693u, u_input.a, 0u)), vec4<i32>(-4155i, 19793i, 2147483647i, -2147483647i), u_input.a))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-789f * global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(13899u, 1u), 32u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(49678u, 32u)] * -245f)));
    global1 = func_2(func_2(func_2(func_2(Struct_1(vec4<bool>(global1.a.a.x, true, global1.a.a.x, global1.a.a.x), vec3<f32>(1175f, -2602f, 210f)), vec4<u32>(var_0.x, var_0.x, 4294967295u, 54117u)).a, ~abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, 12522u))).a, ~var_0).a, min(_wgslsmith_sub_vec4_u32(countOneBits(_wgslsmith_sub_vec4_u32(var_0, vec4<u32>(u_input.a, var_0.x, 4294967295u, var_0.x))), firstTrailingBit(_wgslsmith_div_vec4_u32(var_0, vec4<u32>(11019u, u_input.a, 4294967295u, 1u)))), vec4<u32>(~1u, 1u, abs(var_0.x), _wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(u_input.a, var_0.x)), _wgslsmith_clamp_vec2_u32(var_0.xz, vec2<u32>(52882u, 15070u), var_0.wx)))));
    global0 = _wgslsmith_add_i32(25580i, 1i >> (max(_wgslsmith_sub_u32(1u, _wgslsmith_div_u32(12403u, u_input.a)), 33395u) % 32u));
    var var_2 = Struct_3(global1.a, -vec2<i32>(abs(1i), firstTrailingBit(62367i)));
    return Struct_3(func_2(func_2(global1.a, vec4<u32>(u_input.a, 1u, var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, var_0.x, u_input.a), vec3<u32>(14636u, u_input.a, u_input.a)))).a, var_0).a, vec2<i32>(~var_2.b.x, 2147483647i));
}

fn func_5(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> Struct_1 {
    global0 = -arg_0;
    let var_0 = _wgslsmith_div_i32(arg_3.b.x, min(_wgslsmith_dot_vec3_i32(~vec3<i32>(1i, arg_3.b.x, arg_1.b.x), -vec3<i32>(0i, arg_0, arg_0)), -arg_0)) ^ (i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 0i, 6814i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(24095i, arg_0, arg_1.b.x, -26121i), vec4<i32>(-47756i, arg_0, arg_0, arg_0))));
    global2 = array<f32, 32>();
    global0 = 24833i;
    let var_1 = Struct_1(select(!vec4<bool>(true, arg_3.a.a.x | arg_1.a.a.x, arg_3.a.a.x, global1.a.a.x), !select(select(global1.a.a, arg_3.a.a, global1.a.a.x), !vec4<bool>(true, global1.a.a.x, arg_3.a.a.x, global1.a.a.x), global1.a.a), select(true, true, false)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(global1.a.b, vec3<f32>(global2[_wgslsmith_index_u32(5867u, 32u)], arg_1.a.b.x, 875f)))))))));
    return func_2(Struct_1(select(vec4<bool>(!global1.a.a.x, var_1.a.x, arg_3.b.x >= 1i, false), !global1.a.a, vec4<bool>(any(vec3<bool>(false, false, global1.a.a.x)), 12193u > u_input.a, true, var_1.a.x)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -184f) + -663f), _wgslsmith_f_op_f32(select(179f, _wgslsmith_f_op_f32(round(-2023f)), true)), func_2(global1.a, abs(vec4<u32>(arg_2, arg_2, 1u, 62694u))).a.b.x)), vec4<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, arg_2, 1u), vec3<u32>(u_input.a, 1u, 4294967295u)) << (~vec3<u32>(arg_2, 30770u, 4706u) % vec3<u32>(32u)), vec3<u32>(u_input.a & 30512u, u_input.a, arg_2)), abs(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_2, u_input.a, arg_2, 0u)), abs(vec4<u32>(62483u, 4294967295u, 25771u, arg_2)))), arg_2, ~1u)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1i;
    var var_0 = ~firstLeadingBit(abs(vec2<u32>(u_input.a, u_input.a)) ^ ~_wgslsmith_mod_vec2_u32(vec2<u32>(70879u, 4294967295u), vec2<u32>(1u, u_input.a)));
    var var_1 = func_5(44127i, func_1(), min(7799u, ~33169u), func_1());
    var var_2 = global1.a.a.x;
    var var_3 = !global1.a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x);
}

