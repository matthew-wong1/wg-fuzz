struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<f32, 7> = array<f32, 7>(504f, -1000f, 1646f, 376f, 381f, -683f, -872f);

var<private> global2: array<Struct_1, 2>;

var<private> global3: vec2<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = 4294967295u;
    let var_1 = arg_1;
    let var_2 = arg_1;
    global0 = 26157i;
    return -840f;
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    let var_0 = ~(~(abs(~vec3<u32>(global3.x, global3.x, u_input.b)) & ~(~vec3<u32>(613u, u_input.b, 14859u))));
    global0 = -54261i;
    let var_1 = vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.b, 27441u), ~global3.x) & var_0.x, _wgslsmith_dot_vec3_u32(~(~vec3<u32>(26302u, var_0.x, u_input.b)), var_0)) >> (var_0.xz % vec2<u32>(32u));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -237f) + _wgslsmith_f_op_f32(arg_0.x + -792f))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.a, 2147483647i, -24910i, 2147483647i), -abs(vec4<i32>(u_input.c, 0i, u_input.d, u_input.a))), ~(~max(vec4<i32>(u_input.c, 1i, 550i, u_input.d), vec4<i32>(u_input.c, 23425i, 23311i, u_input.d)))), true, ~vec4<u32>(var_1.x, 1u, countOneBits(440u), ~25261u));
    var var_3 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.x))), vec4<i32>(_wgslsmith_div_i32(-7036i, 2147483647i), -(~(-1i)) >> (var_2.d.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_mult_i32(u_input.d, 19177i), _wgslsmith_mult_i32(25722i, var_2.b.x), var_2.b.x), -vec4<i32>(-46980i, 86979i, -26533i, var_2.b.x)), _wgslsmith_div_i32(_wgslsmith_mod_i32(abs(2147483647i), _wgslsmith_mult_i32(var_2.b.x, var_2.b.x)), -(u_input.a | 0i))), var_2.c, var_2.d);
    return u_input.e;
}

fn func_2(arg_0: vec4<i32>) -> vec4<i32> {
    let var_0 = 393i;
    var var_1 = Struct_1(global1[_wgslsmith_index_u32(max(min(~4499u, u_input.e << (u_input.b % 32u)), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), reverseBits(vec2<u32>(0u, u_input.e))), firstLeadingBit(~u_input.e), global3.x)), 7u)], arg_0, any(vec2<bool>(true, true)) & any(vec2<bool>(true, true)), vec4<u32>(0u, 0u, ~_wgslsmith_clamp_u32(u_input.b, func_3(vec4<f32>(global1[_wgslsmith_index_u32(u_input.b, 7u)], 1867f, global1[_wgslsmith_index_u32(5989u, 7u)], 191f)), u_input.b), global3.x));
    let var_2 = _wgslsmith_mod_vec2_i32(arg_0.wy, var_1.b.yy);
    return max(firstTrailingBit(~_wgslsmith_mod_vec4_i32(~arg_0, arg_0 ^ var_1.b)), ~(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(var_1.b, vec4<i32>(arg_0.x, var_0, -44470i, u_input.c)), vec4<i32>(arg_0.x, 39287i, 10901i, 10138i)) >> (_wgslsmith_div_vec4_u32(var_1.d, var_1.d) % vec4<u32>(32u))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = -494f;
    var var_1 = global3.x;
    global0 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(-(~abs(arg_0.yy)), reverseBits(-(arg_0.xz | vec2<i32>(u_input.a, 0i)))), -1i, u_input.a);
    var var_2 = vec3<u32>(_wgslsmith_dot_vec4_u32(arg_1, arg_2.d), func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(arg_2.a)), _wgslsmith_f_op_f32(arg_2.a + global1[_wgslsmith_index_u32(0u, 7u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3.x, 6819u), 7u)], 895f) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(396f, 606f, global1[_wgslsmith_index_u32(4294967295u, 7u)], -1047f))))))), ~(~(max(u_input.b, 4294967295u) >> (arg_1.x % 32u))));
    var var_3 = ~select(1u, min(u_input.e, abs(18263u)), all(vec3<bool>(arg_2.c, arg_2.c, true))) >> (_wgslsmith_dot_vec3_u32(~min(vec3<u32>(global3.x, arg_2.d.x, global3.x), vec3<u32>(4294967295u, 1u, u_input.b)), countOneBits(vec3<u32>(arg_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, arg_1.x, arg_1.x), vec3<u32>(57519u, 4294967295u, u_input.e)), ~var_2.x))) % 32u);
    return StorageBuffer(_wgslsmith_sub_i32(firstLeadingBit(_wgslsmith_mod_i32(arg_2.b.x, 48215i)), _wgslsmith_mod_i32(min(_wgslsmith_add_i32(6390i, u_input.c), 2147483647i), u_input.a)), -22946i, -(_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -2147483647i), arg_2.b.xw) >> (~abs(vec2<u32>(1u, 1u)) % vec2<u32>(32u))), -1106f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~(~vec2<u32>(_wgslsmith_div_u32(u_input.b, 1u), u_input.e)));
    var var_0 = Struct_1(global1[_wgslsmith_index_u32(4294967295u >> (~global3.x % 32u), 7u)], vec4<i32>(-u_input.a, firstLeadingBit(2147483647i), 12102i, u_input.c), true, vec4<u32>(~(~(global3.x << (global3.x % 32u))), _wgslsmith_add_u32(~_wgslsmith_add_u32(66070u, 602u), global3.x), _wgslsmith_add_u32(abs(_wgslsmith_sub_u32(u_input.e, 0u)), 33881u), reverseBits(15436u)));
    var var_1 = global2[_wgslsmith_index_u32(select(_wgslsmith_sub_u32(u_input.b, global3.x), 9531u, !((true || var_0.c) && var_0.c) | false), 2u)];
    global2 = array<Struct_1, 2>();
    global1 = array<f32, 7>();
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(firstTrailingBit(var_0.d.x)), global3.x), ~_wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(var_0.d.zw, vec2<u32>(u_input.e, 3313u)), vec2<u32>(var_1.d.x, global3.x))) & vec2<u32>(var_0.d.x, (_wgslsmith_div_u32(var_0.d.x, 1u) & 1u) & (~var_0.d.x >> (global3.x % 32u)));
    let x = u_input.a;
    s_output = func_4(-var_0.b.wxx, var_1.d, Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec3<f32>(global1[_wgslsmith_index_u32(var_2.x, 7u)], var_0.a, 1306f), global2[_wgslsmith_index_u32(u_input.e, 2u)])) - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2.x, 7u)])))), func_2(var_1.b), select(var_1.c && var_0.c, var_1.c, true) & var_0.c, vec4<u32>(min(65171u >> (var_0.d.x % 32u), _wgslsmith_div_u32(15011u, var_2.x)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e, 0u, var_2.x), var_1.d.yyx), var_1.d.x, 41071u >> (global3.x % 32u))));
}

