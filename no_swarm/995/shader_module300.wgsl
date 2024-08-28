struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec2<i32>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(0u, 1u, 5539u, 0u), vec4<u32>(0u, 1u, 0u, 1u), vec2<i32>(-23564i, 2147483647i), vec2<i32>(-16298i, 0i), vec2<i32>(2147483647i, 44184i)), Struct_1(vec4<u32>(49728u, 59113u, 1u, 1u), vec4<u32>(394u, 51515u, 1u, 4294967295u), vec2<i32>(-1i, -706i), vec2<i32>(-37693i, 1i), vec2<i32>(i32(-2147483648), 30794i)), Struct_1(vec4<u32>(1u, 6276u, 4294967295u, 1u), vec4<u32>(18526u, 4294967295u, 39170u, 4294967295u), vec2<i32>(-32113i, -1i), vec2<i32>(28728i, -1i), vec2<i32>(22876i, i32(-2147483648))), Struct_1(vec4<u32>(81036u, 89478u, 56181u, 0u), vec4<u32>(42924u, 0u, 4294967295u, 79727u), vec2<i32>(-2069i, 8907i), vec2<i32>(i32(-2147483648), -9652i), vec2<i32>(-36098i, -23348i)), Struct_1(vec4<u32>(0u, 1u, 3301u, 1u), vec4<u32>(4294967295u, 1u, 709u, 6289u), vec2<i32>(2147483647i, 19257i), vec2<i32>(-1i, -54238i), vec2<i32>(-15245i, -27288i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 0u, 1u), vec4<u32>(90259u, 4294967295u, 1u, 11980u), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(6302i, i32(-2147483648)), vec2<i32>(-3618i, -3818i)), Struct_1(vec4<u32>(1u, 0u, 11855u, 4294967295u), vec4<u32>(1u, 4294967295u, 69143u, 1u), vec2<i32>(-1i, 0i), vec2<i32>(11332i, -63547i), vec2<i32>(1i, 0i)), Struct_1(vec4<u32>(0u, 23461u, 0u, 7960u), vec4<u32>(33321u, 33636u, 1u, 1u), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(1270i, -46106i), vec2<i32>(-1i, i32(-2147483648))), Struct_1(vec4<u32>(1u, 1u, 30475u, 4294967295u), vec4<u32>(51115u, 4294967295u, 0u, 10106u), vec2<i32>(0i, 2147483647i), vec2<i32>(-16924i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -9287i)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: Struct_2) -> vec4<u32> {
    let var_0 = ~_wgslsmith_add_vec4_i32(-(vec4<i32>(-1i) * -u_input.e), -_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.e, vec4<i32>(u_input.e.x, u_input.c, arg_2.d.d.x, arg_2.d.c.x)), u_input.e));
    var var_1 = arg_2.c.xy;
    var var_2 = !any(vec2<bool>(true, all(!vec3<bool>(true, arg_0, false))));
    var_2 = !(!(!any(select(vec3<bool>(arg_0, false, arg_0), vec3<bool>(false, false, arg_1), vec3<bool>(false, true, arg_0)))));
    var_2 = all(vec4<bool>(-1i < (u_input.c & _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e.x, -43986i), vec2<i32>(u_input.e.x, arg_2.d.e.x))), arg_0, select(~(-2147483647i) == select(arg_2.d.e.x, 55992i, arg_1), arg_1, all(vec2<bool>(arg_1, arg_1))), !select(arg_0, true, select(arg_1, true, false))));
    return ~abs(arg_2.a & ~arg_2.a) >> (vec4<u32>(u_input.d, _wgslsmith_mult_u32(~u_input.a.x, ~(1u << (u_input.d % 32u))), 20662u, 1u) % vec4<u32>(32u));
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<i32>) -> u32 {
    let var_0 = u_input.c;
    let var_1 = global0[_wgslsmith_index_u32(reverseBits(abs(reverseBits(firstTrailingBit(4294967295u)))), 9u)];
    global0 = array<Struct_1, 9>();
    let var_2 = _wgslsmith_mod_vec4_u32(~func_3(arg_2.x, all(vec2<bool>(false, arg_2.x)), Struct_2(vec4<u32>(var_1.b.x, 74498u, 4634u, 79171u), -1000f, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(779f, arg_0.x, arg_0.x), vec3<f32>(arg_1, -518f, arg_1), vec3<bool>(true, false, arg_2.x))), global0[_wgslsmith_index_u32(u_input.a.x | 4294967295u, 9u)], ~vec3<u32>(var_1.b.x, var_1.b.x, 0u))), ~(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, u_input.d, u_input.a.x), vec4<u32>(var_1.a.x, var_1.b.x, 0u, var_1.b.x))));
    var var_3 = false;
    return _wgslsmith_dot_vec2_u32(~abs(vec2<u32>(11847u, _wgslsmith_add_u32(111149u, var_1.b.x))), max(u_input.a.zz, min(u_input.a.zy, select(select(vec2<u32>(4294967295u, 23176u), var_2.wy, vec2<bool>(arg_2.x, false)), var_2.yy, select(arg_2, arg_2, true)))));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: vec3<u32>) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-669f))))));
    let var_1 = max(vec4<u32>(~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(19928u, 4294967295u, arg_2.x, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 0u, arg_2.x))), u_input.a.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(857u, _wgslsmith_add_u32(49084u, arg_2.x), 51492u), firstLeadingBit(12171u)), 33638u), vec4<u32>(u_input.d, arg_2.x, 4294967295u, u_input.d) << ((abs(select(vec4<u32>(81806u, 0u, 22643u, arg_2.x), vec4<u32>(u_input.d, 39107u, arg_2.x, 0u), vec4<bool>(false, true, true, false))) >> (vec4<u32>(func_2(vec3<f32>(arg_0, arg_0, 1483f), 826f, vec2<bool>(true, false), vec4<i32>(u_input.e.x, -1i, arg_1, u_input.c)), ~u_input.d, u_input.a.x, abs(87078u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    let var_2 = true;
    let var_3 = true;
    let var_4 = Struct_2(_wgslsmith_div_vec4_u32(vec4<u32>(firstLeadingBit(arg_2.x), 4294967295u, ~var_1.x, ~44409u), vec4<u32>(arg_2.x >> (1u % 32u), _wgslsmith_sub_u32(var_1.x, var_1.x), firstTrailingBit(u_input.a.x), var_1.x)) | var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, arg_0, 1880f))))), Struct_1(vec4<u32>((34491u ^ u_input.d) << (var_1.x % 32u), arg_2.x, firstTrailingBit(4463u), u_input.d), firstTrailingBit(vec4<u32>(var_1.x, _wgslsmith_dot_vec4_u32(var_1, var_1), 71391u, 1u)), u_input.b.zy, u_input.b.yy, u_input.b.xx), ~(~abs(var_1.yww)));
    return StorageBuffer(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(188f)), var_4.c.x)), ~4294967295u, _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, 1i), ~vec2<i32>(19323i, 2147483647i)), _wgslsmith_add_vec2_i32(u_input.b.zz, -(~vec2<i32>(-1i, arg_1))), ~vec2<i32>(-arg_1, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, var_4.d.d.x, 100373i), vec3<i32>(arg_1, 0i, 1i)))), firstTrailingBit(~min(firstTrailingBit(39799u), var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 9>();
    var var_0 = false;
    global0 = array<Struct_1, 9>();
    var_0 = true;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(f32(-1f) * -158f), _wgslsmith_add_i32(-1i, ~_wgslsmith_mult_i32(abs(8506i), u_input.c)), u_input.a);
}

