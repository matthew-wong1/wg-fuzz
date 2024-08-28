struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 6>;

var<private> global1: array<f32, 30>;

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(-918f, -508f), vec2<f32>(-1127f, 758f), vec2<f32>(1123f, 1125f), vec2<f32>(-1742f, 1000f), vec2<f32>(-293f, 200f), vec2<f32>(728f, -1766f), vec2<f32>(506f, -838f), vec2<f32>(-288f, 100f));

var<private> global3: array<Struct_3, 20>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: i32, arg_1: bool, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_2.a, vec2<f32>(-854f, 484f))))), _wgslsmith_sub_vec3_i32(countOneBits(select(vec3<i32>(-1i, arg_0, u_input.a), vec3<i32>(u_input.a, arg_0, 4037i), select(vec3<bool>(arg_1, arg_1, false), vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, false, arg_1)))), countOneBits(~vec3<i32>(u_input.a, 0i, arg_0))), vec4<bool>(false, false, false, !all(vec4<bool>(false, true, arg_1, true))));
    let var_1 = vec4<bool>(true, false, _wgslsmith_clamp_i32(~2147483647i, firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 1i, u_input.a, 0i), vec4<i32>(u_input.a, arg_0, -1i, var_0.b.x))), u_input.a) == -1i, any(vec4<bool>(all(!var_0.c.wxy), true, var_0.c.x, !(!var_0.c.x))));
    global0 = array<vec2<bool>, 6>();
    global3 = array<Struct_3, 20>();
    let var_2 = _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(~1u, _wgslsmith_mult_u32(1u, ~26591u)), vec2<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(16228u, 4294967295u), select(vec2<u32>(4294967295u, 1u), vec2<u32>(58418u, 0u), vec2<bool>(true, false))), select(~0u, 4294967295u, arg_1))), max(abs(min(vec2<u32>(0u, 15624u), vec2<u32>(0u, 10126u) << (vec2<u32>(0u, 1u) % vec2<u32>(32u)))), abs(min(_wgslsmith_clamp_vec2_u32(vec2<u32>(76375u, 1u), vec2<u32>(25530u, 0u), vec2<u32>(0u, 1u)), _wgslsmith_div_vec2_u32(vec2<u32>(55633u, 3583u), vec2<u32>(110935u, 47874u))))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(736f, -1568f) - -1130f) - _wgslsmith_div_f32(-1625f, global1[_wgslsmith_index_u32(reverseBits(~43084u), 30u)]));
}

fn func_2() -> u32 {
    global0 = array<vec2<bool>, 6>();
    global1 = array<f32, 30>();
    global1 = array<f32, 30>();
    var var_0 = vec3<f32>(global1[_wgslsmith_index_u32(~1u, 30u)], _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(-3467i, u_input.a, u_input.a)), vec3<i32>(1i, 1i, 1i)), true, Struct_1(global2[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_3(countOneBits(-2147483647i), false, Struct_1(vec2<f32>(595f, -249f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(5049u, 30u)])) * _wgslsmith_f_op_f32(step(-1208f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 30u)] * global1[_wgslsmith_index_u32(14899u, 30u)])))), select(true, true, !any(global0[_wgslsmith_index_u32(27494u, 6u)])))));
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, -609f))) - global2[_wgslsmith_index_u32(_wgslsmith_div_u32(45488u, ~18877u), 8u)])), (vec3<i32>(-1i) * -vec3<i32>(u_input.a, -50905i, 2147483647i)) >> (vec3<u32>(1u, 1724u, ~1u) % vec3<u32>(32u)), vec4<bool>(false, all(vec3<bool>(true, true, true)), false, true));
    return firstTrailingBit(4294967295u);
}

fn func_4(arg_0: u32) -> vec4<u32> {
    let var_0 = 59343u;
    global0 = array<vec2<bool>, 6>();
    var var_1 = ~arg_0;
    global3 = array<Struct_3, 20>();
    var var_2 = true;
    return ~reverseBits(countOneBits(~(vec4<u32>(arg_0, 38053u, 26577u, 80893u) | vec4<u32>(7947u, arg_0, arg_0, 4294967295u))));
}

fn func_1() -> Struct_3 {
    let var_0 = 0u;
    global3 = array<Struct_3, 20>();
    var var_1 = func_4(~(~func_2()));
    let var_2 = ~_wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(29381i, 2147483647i), vec2<i32>(-60022i, -1i)), -1i, _wgslsmith_add_i32(u_input.a, u_input.a)) | -(vec3<i32>(u_input.a, 1i, u_input.a) << (var_1.wxx % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(vec3<i32>(13607i, u_input.a, -1i), ~vec3<i32>(u_input.a, u_input.a, u_input.a)) >> (firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_1.x, var_1.x), var_1.xxz)) % vec3<u32>(32u)));
    var_1 = reverseBits(vec4<u32>(12131u, 66240u, 0u, var_0));
    return Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-275f, 495f) - vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], -1053f)))), _wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(var_2), min(var_2, var_2)), _wgslsmith_sub_vec3_i32(-var_2, vec3<i32>(-71563i, 0i, var_2.x))), select(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false)), vec4<bool>(true, true, true, false), all(vec2<bool>(false, true))), vec4<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(false, true, false, true)), true, u_input.a > 0i), vec4<bool>(true, true, true, any(global0[_wgslsmith_index_u32(0u, 6u)])))), vec2<u32>(countOneBits(~var_0 << (100139u % 32u)), ~max(~var_1.x, _wgslsmith_div_u32(3054u, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec2<f32>, 8>();
    var var_0 = global3[_wgslsmith_index_u32(4294967295u, 20u)];
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a.a.a.x, 150f)) * vec2<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.b.x, 30u)]), global1[_wgslsmith_index_u32(reverseBits(38167u), 30u)]))), ~(-var_0.a.b), var_0.a.c);
    var var_2 = firstLeadingBit(countOneBits(vec3<u32>(_wgslsmith_mult_u32(var_0.b.x, 3056u), ~1u, _wgslsmith_div_u32(var_0.b.x, var_0.b.x)))) & vec3<u32>(countOneBits(var_0.b.x), abs(reverseBits(_wgslsmith_sub_u32(0u, 0u))), 4294967295u);
    var var_3 = var_1.a;
    var var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(abs(~0i), -16389i, var_1.b.x ^ var_4.a.b.x)));
}

