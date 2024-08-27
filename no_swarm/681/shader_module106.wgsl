struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<i32>(1i, -1361i), -1394f, -20901i), Struct_1(vec2<i32>(-59550i, -15489i), 724f, 2147483647i), Struct_1(vec2<i32>(37095i, -8984i), -1137f, 22267i), Struct_1(vec2<i32>(1i, -31009i), -893f, -4562i), Struct_1(vec2<i32>(2147483647i, -127i), -1299f, i32(-2147483648)), Struct_1(vec2<i32>(-72356i, i32(-2147483648)), -613f, i32(-2147483648)), Struct_1(vec2<i32>(2147483647i, 0i), 922f, 4400i), Struct_1(vec2<i32>(-779i, 0i), -432f, -45721i), Struct_1(vec2<i32>(-95949i, -1i), -1643f, 1i), Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), -1000f, i32(-2147483648)), Struct_1(vec2<i32>(15638i, 0i), -642f, 0i), Struct_1(vec2<i32>(-15423i, -36188i), -422f, -42472i), Struct_1(vec2<i32>(-31664i, i32(-2147483648)), -240f, -1i), Struct_1(vec2<i32>(0i, 1i), -873f, -25996i), Struct_1(vec2<i32>(1i, 3523i), 781f, -62287i), Struct_1(vec2<i32>(1i, 3236i), 117f, i32(-2147483648)), Struct_1(vec2<i32>(-1i, 0i), -444f, -31268i), Struct_1(vec2<i32>(0i, i32(-2147483648)), -1854f, 2147483647i), Struct_1(vec2<i32>(-1i, -34875i), -1000f, 13000i), Struct_1(vec2<i32>(-32740i, 0i), 408f, -1i), Struct_1(vec2<i32>(i32(-2147483648), 0i), 2143f, i32(-2147483648)), Struct_1(vec2<i32>(1i, i32(-2147483648)), 1402f, 30643i));

var<private> global1: array<f32, 12> = array<f32, 12>(-1049f, 591f, 463f, 819f, -475f, -272f, 562f, 360f, -362f, -1000f, 660f, 540f);

var<private> global2: array<vec4<u32>, 18>;

var<private> global3: Struct_1;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    global2 = array<vec4<u32>, 18>();
    let var_0 = Struct_1(_wgslsmith_mod_vec2_i32(firstTrailingBit(arg_0.a), arg_0.a), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~(~(~1u)), 12u)]), global3.c);
    global2 = array<vec4<u32>, 18>();
    global0 = array<Struct_1, 22>();
    global1 = array<f32, 12>();
    return Struct_1(_wgslsmith_sub_vec2_i32(select(global3.a, countOneBits(vec2<i32>(29780i, arg_0.c)), vec2<bool>(true, true)), vec2<i32>(_wgslsmith_mod_i32(-global3.a.x, -u_input.b.x), var_0.a.x)), var_0.b, -select(firstLeadingBit(_wgslsmith_clamp_i32(0i, u_input.c, -72562i)), global3.c, true));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    var var_0 = !vec3<bool>(true == any(vec2<bool>(false, true)), true, false);
    global1 = array<f32, 12>();
    var var_1 = _wgslsmith_add_i32(2147483647i, _wgslsmith_div_i32(1i, _wgslsmith_add_i32(-2147483647i, u_input.b.x)) ^ -u_input.a) ^ -reverseBits(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(1i, u_input.c, arg_0.a.x), arg_0.a.x << (u_input.d.x % 32u)));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_div_f32(-834f, arg_0.b), -561f))))));
    var_1 = select(max(0i, 2147483647i), -arg_0.c | arg_0.a.x, var_0.x);
    return func_2(Struct_1(countOneBits(vec2<i32>(-15791i, -2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(var_2.x)))) * _wgslsmith_f_op_f32(select(arg_0.b, global3.b, -1i == u_input.a))), abs(_wgslsmith_dot_vec4_i32(vec4<i32>(global3.a.x, global3.c, 12982i, 0i), vec4<i32>(global3.c, -2642i, u_input.b.x, global3.a.x)))), 47122u);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global1 = array<f32, 12>();
    var var_0 = arg_0;
    let var_1 = Struct_1(max(vec2<i32>(~u_input.c, var_0.a.x), -vec2<i32>(_wgslsmith_sub_i32(2147483647i, 1i), -arg_0.c)), _wgslsmith_f_op_f32(step(-293f, 293f)), ~(_wgslsmith_div_i32(_wgslsmith_sub_i32(19560i, var_0.a.x), -1i) ^ abs(~14428i)));
    let var_2 = -450f;
    global1 = array<f32, 12>();
    return func_2(func_2(global0[_wgslsmith_index_u32(select(u_input.d.x, select(71066u, 20583u, true), all(vec3<bool>(true, true, false)) || true), 22u)], ~_wgslsmith_clamp_u32(u_input.d.x >> (u_input.d.x % 32u), u_input.d.x, ~u_input.d.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(15597u), 4294967295u | u_input.d.x), abs(vec2<u32>(1u, ~52922u))));
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    var var_0 = func_4(func_3(func_2(arg_0, u_input.d.x ^ abs(4294967295u)), _wgslsmith_div_f32(-1204f, 753f)));
    var var_1 = true;
    let var_2 = vec2<i32>(_wgslsmith_div_i32(func_2(global0[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(u_input.d.x)), 22u)], min(firstTrailingBit(u_input.d.x), 57111u)).c, _wgslsmith_div_i32(-26199i, 1i) & global3.a.x), 29702i);
    global1 = array<f32, 12>();
    let var_3 = arg_0;
    return Struct_1(vec2<i32>(-_wgslsmith_mod_i32(u_input.c, 7374i), _wgslsmith_dot_vec2_i32(select(u_input.b.zz, vec2<i32>(u_input.a, global3.a.x), vec2<bool>(false, true)), ~vec2<i32>(826i, 2147483647i))) & (_wgslsmith_sub_vec2_i32(var_3.a, -vec2<i32>(u_input.a, var_3.a.x)) | arg_0.a), func_3(func_4(var_3), global1[_wgslsmith_index_u32(~8284u, 12u)]).b, ~(~abs(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(u_input.b.xx, global1[_wgslsmith_index_u32(~u_input.d.x, 12u)], u_input.a));
    global2 = array<vec4<u32>, 18>();
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_1 = global3.b;
    global3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(_wgslsmith_add_u32(select(85510u, u_input.d.x, false) ^ 47653u, u_input.d.x | abs(4294967295u))), 1u), 22u)];
    var var_2 = Struct_1(var_0.a, _wgslsmith_f_op_f32(-global3.b), var_0.c);
    var_2 = global0[_wgslsmith_index_u32(0u, 22u)];
    let x = u_input.a;
    s_output = StorageBuffer(select(min(abs(min(u_input.b, u_input.b)), u_input.b ^ u_input.b), firstTrailingBit(-vec3<i32>(var_0.a.x, u_input.b.x, 0i) | vec3<i32>(-1i, 28202i, global3.c)), vec3<bool>(false, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.d.x, 12u)]) > var_0.b, !any(vec4<bool>(false, false, true, false)))), -168f, -u_input.b, select(~firstLeadingBit(vec4<u32>(30652u, 4294967295u, u_input.d.x, 0u)), countOneBits(global2[_wgslsmith_index_u32(4294967295u, 18u)]), vec4<bool>(any(vec2<bool>(true, true)), select(true, true, true), true, false)));
}

