struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_1, 19>;

var<private> global2: array<i32, 20> = array<i32, 20>(-37261i, 34781i, 1i, 19514i, -12927i, 1i, 4953i, -7688i, 16439i, 2147483647i, -34081i, 0i, 33473i, -1i, 2147483647i, -1i, i32(-2147483648), 2147483647i, 10323i, 0i);

var<private> global3: array<vec4<bool>, 4>;

var<private> global4: vec3<u32> = vec3<u32>(3246u, 0u, 4294967295u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> bool {
    var var_0 = Struct_1(global4.zy, vec3<i32>(-1i, -12689i, firstLeadingBit(_wgslsmith_add_i32(global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(21851u, 20u)]))) & select(_wgslsmith_div_vec3_i32(arg_2.b, -vec3<i32>(global2[_wgslsmith_index_u32(global4.x, 20u)], arg_2.b.x, 12975i)), _wgslsmith_div_vec3_i32(_wgslsmith_clamp_vec3_i32(arg_2.b, arg_2.b, vec3<i32>(u_input.b, arg_2.b.x, global2[_wgslsmith_index_u32(arg_2.a.x, 20u)])), arg_2.b), true), select(select(select(select(vec4<bool>(false, arg_2.c.x, arg_2.c.x, true), vec4<bool>(false, false, arg_2.c.x, arg_2.c.x), true), arg_2.c, vec4<bool>(arg_2.c.x, false, arg_2.c.x, false)), select(arg_2.c, !vec4<bool>(true, false, arg_2.c.x, arg_2.c.x), true), all(!vec3<bool>(arg_2.c.x, false, true))), global3[_wgslsmith_index_u32(u_input.e, 4u)], !select(!arg_2.c.x, true, all(arg_2.c))));
    global3 = array<vec4<bool>, 4>();
    global0 = 974f;
    let var_1 = !select(vec2<bool>(false, arg_2.a.x <= 41581u), select(!vec2<bool>(var_0.c.x, arg_2.c.x), arg_2.c.wy, !(!arg_2.c.wx)), select(var_0.c.zw, vec2<bool>(!arg_2.c.x, true), select(arg_2.c.yz, !arg_2.c.zy, true)));
    var var_2 = ~(-2147483647i);
    return true;
}

fn func_2(arg_0: bool, arg_1: u32) -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(517f + _wgslsmith_f_op_f32(abs(-184f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-1000f, 362f, false)) - -743f)))));
    global4 = vec3<u32>(11591u, firstTrailingBit(~7938u), 48096u);
    let var_0 = vec4<bool>(arg_0, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -172f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-565f)))), Struct_1(u_input.a.yx, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -32675i, global2[_wgslsmith_index_u32(0u, 20u)]) ^ vec3<i32>(8404i, global2[_wgslsmith_index_u32(u_input.e, 20u)], u_input.d), -vec3<i32>(4951i, 6812i, global2[_wgslsmith_index_u32(u_input.a.x, 20u)])), select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 1u, 56977u, u_input.e), vec4<u32>(global4.x, arg_1, arg_1, u_input.e)), 4u)], global3[_wgslsmith_index_u32(~arg_1, 4u)], true))), !arg_0, arg_1 == 1u);
    global1 = array<Struct_1, 19>();
    let var_1 = global1[_wgslsmith_index_u32(select(_wgslsmith_dot_vec3_u32(vec3<u32>(~global4.x, global4.x, ~global4.x), vec3<u32>(~u_input.a.x, max(4294967295u, arg_1), arg_1)) << (~global4.x % 32u), firstLeadingBit(47981u), var_0.x), 19u)];
    return var_1.b;
}

fn func_1() -> vec3<u32> {
    global2 = array<i32, 20>();
    var var_0 = Struct_1(abs(select(reverseBits(u_input.a.xy), global4.yy, true)), _wgslsmith_div_vec3_i32(vec3<i32>(1066i, -u_input.b, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global4.xx, vec2<u32>(0u, 4294967295u)), 20u)]) & firstTrailingBit(~vec3<i32>(-1i, global2[_wgslsmith_index_u32(global4.x, 20u)], 1i)), firstTrailingBit(vec3<i32>(select(-1i, -6176i, true), -30i, u_input.c & u_input.c))), vec4<bool>(!all(vec2<bool>(true, true)), true, true, false));
    let var_1 = ~_wgslsmith_add_u32(countOneBits(~global4.x), abs(~var_0.a.x) >> ((firstTrailingBit(0u) | ~70746u) % 32u));
    var var_2 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.d, var_0.b.x, global2[_wgslsmith_index_u32(var_0.a.x, 20u)]), vec3<i32>(var_0.b.x, 5546i, var_0.b.x))), _wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c, var_0.b.x, global2[_wgslsmith_index_u32(global4.x, 20u)]), func_2(var_0.c.x, var_0.a.x))) | ~(-38601i), var_0.b.x);
    var var_3 = u_input.b;
    return ~vec3<u32>(1494u, _wgslsmith_sub_u32(~u_input.a.x, 0u), ~max(_wgslsmith_sub_u32(global4.x, 0u), ~var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(select(1366f, 771f, false))))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-408f * -1009f), -217f)));
    var var_1 = global2[_wgslsmith_index_u32((global4.x << (~(~_wgslsmith_add_u32(global4.x, global4.x)) % 32u)) >> (0u % 32u), 20u)];
    var_1 = (global2[_wgslsmith_index_u32(max(u_input.a.x, _wgslsmith_add_u32(global4.x, 0u)), 20u)] >> (global4.x % 32u)) >> (_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global4.x, 1u, 1u, global4.x) >> (vec4<u32>(4294967295u, 60641u, 95104u, 10038u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(6474u, global4.x, 1u, u_input.e), ~vec4<u32>(1u, u_input.a.x, u_input.e, 33605u))), reverseBits(_wgslsmith_sub_u32(4294967295u, 1u))) % 32u);
    var var_2 = true & !(_wgslsmith_mult_u32(~23489u, _wgslsmith_sub_u32(50391u, global4.x)) >= global4.x);
    var var_3 = Struct_1(~firstLeadingBit(vec2<u32>(~4294967295u, u_input.e)), _wgslsmith_div_vec3_i32(vec3<i32>(-64721i, -51761i, ~(-28322i)), ~vec3<i32>(u_input.d, u_input.d, global2[_wgslsmith_index_u32(53414u, 20u)]) >> (~func_1() % vec3<u32>(32u))), vec4<bool>(all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))), -466f >= var_0, true, false));
    var_3 = Struct_1(vec2<u32>(12890u, _wgslsmith_mod_u32(abs(global4.x) >> (firstTrailingBit(global4.x) % 32u), firstTrailingBit(60739u))), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b, reverseBits(var_3.b.x), -u_input.d), var_3.b)), !(!vec4<bool>(var_0 != var_0, false, any(var_3.c.yx), any(var_3.c))));
    let var_4 = ~var_3.b.xz;
    var var_5 = 202f;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 10398u, global4.x, u_input.a.x), vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, global4.x))) >> (firstTrailingBit(~vec4<u32>(global4.x, global4.x, u_input.a.x, 4294967295u)) % vec4<u32>(32u))));
}

