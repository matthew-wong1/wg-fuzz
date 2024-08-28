struct Struct_1 {
    a: u32,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: vec4<i32>,
    b: f32,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: i32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: Struct_3,
    c: vec2<f32>,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, true, true, true, false, true, true, false);

var<private> global1: vec3<i32>;

var<private> global2: array<bool, 9>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4) -> vec3<i32> {
    global0 = array<bool, 8>();
    var var_0 = 1u;
    var var_1 = arg_1.b;
    var_0 = var_1.c.c;
    global1 = vec3<i32>(-(~(-2147483647i)), var_1.d, abs(_wgslsmith_div_i32(-_wgslsmith_div_i32(2147483647i, u_input.c.x), -2147483647i)));
    return ~_wgslsmith_mod_vec3_i32(u_input.c, u_input.c);
}

fn func_2() -> Struct_1 {
    global2 = array<bool, 9>();
    global1 = (min(func_3(!vec2<bool>(true, global2[_wgslsmith_index_u32(1u, 9u)]), Struct_4(true, Struct_3(381f, 19311i, Struct_1(0u, 4294967295u, 4294967295u), -46361i), vec2<f32>(1161f, -274f))), select(~vec3<i32>(global1.x, global1.x, -2147483647i), u_input.c, true)) >> ((~_wgslsmith_sub_vec3_u32(u_input.a, u_input.a) << (u_input.b.zww % vec3<u32>(32u))) % vec3<u32>(32u))) ^ u_input.c;
    global0 = array<bool, 8>();
    global1 = ~vec3<i32>(52632i, 1i, u_input.c.x);
    var var_0 = ~_wgslsmith_mult_vec4_u32(u_input.b, _wgslsmith_div_vec4_u32(vec4<u32>(0u, 5350u, u_input.b.x, u_input.a.x), countOneBits(u_input.b) >> (u_input.b % vec4<u32>(32u))));
    return Struct_1(~4294967295u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, reverseBits(u_input.a.x), var_0.x), vec3<u32>(firstTrailingBit(var_0.x), ~u_input.a.x, _wgslsmith_div_u32(var_0.x, 38258u))) % 32u), ~(~0u), u_input.a.x);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(abs(countOneBits(-2147483647i)), (20611i ^ arg_0.b.d) >> (u_input.b.x % 32u));
    global1 = _wgslsmith_mod_vec3_i32(max(vec3<i32>(var_0 ^ (arg_2.x ^ arg_2.x), 12691i, 0i), vec3<i32>(arg_1.x, 1i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.c.zx, arg_1), func_3(vec2<bool>(arg_0.a, global2[_wgslsmith_index_u32(arg_0.b.c.b, 9u)]), Struct_4(true, arg_0.b, arg_0.c)).x, abs(global1.x)))), vec3<i32>(countOneBits(min(arg_0.b.d, arg_2.x & global1.x)), (global1.x | firstLeadingBit(arg_2.x)) << (~u_input.b.x % 32u), ~(-19903i)));
    let var_1 = !(!vec3<bool>(any(select(vec3<bool>(global2[_wgslsmith_index_u32(arg_0.b.c.c, 9u)], false, global0[_wgslsmith_index_u32(arg_0.b.c.c, 8u)]), vec3<bool>(global2[_wgslsmith_index_u32(1u, 9u)], arg_0.a, false), true)), !(!global0[_wgslsmith_index_u32(u_input.b.x, 8u)]), true));
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-590f, -1085f, -1346f));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2432f, var_2.x) * vec2<f32>(3190f, 944f))) * var_2.yz) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_2.yx))) - _wgslsmith_f_op_vec2_f32(-arg_0.c))));
    return func_2();
}

fn func_5(arg_0: Struct_5, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> Struct_1 {
    global1 = arg_3;
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-775f, 981f, -823f), vec3<f32>(-128f, 720f, -552f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1082f, 272f, -1049f), vec3<f32>(939f, 841f, -307f))), vec3<f32>(1542f, 714f, -478f))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -680f) - var_1.x), -1108f, var_1.x));
    var var_2 = Struct_3(1835f, global1.x << (~_wgslsmith_mod_u32(~u_input.a.x, var_0.c.x) % 32u), arg_1, global1.x);
    return var_2.c;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_5(true, 1i, ~(~reverseBits(vec3<u32>(23949u, u_input.a.x, u_input.b.x))));
    let var_1 = func_5(Struct_5(global0[_wgslsmith_index_u32(1u, 8u)], u_input.c.x, vec3<u32>(var_0.c.x, ~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), ~(0u >> (1u % 32u)))), func_4(Struct_4(false, Struct_3(_wgslsmith_f_op_f32(sign(1508f)), max(55854i, -72193i), func_2(), var_0.b), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-211f, -1622f))))), vec2<i32>(_wgslsmith_mult_i32(0i, global1.x) ^ ~2147483647i, -(~var_0.b)), ~_wgslsmith_mod_vec2_i32(u_input.c.xy, abs(vec2<i32>(var_0.b, -40755i)))), !(!(true | (global2[_wgslsmith_index_u32(u_input.b.x, 9u)] | true))), -vec3<i32>(global1.x >> ((1u | u_input.b.x) % 32u), _wgslsmith_sub_i32(global1.x, ~global1.x), 10970i));
    let var_2 = 26739i;
    global2 = array<bool, 9>();
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(145f, 105f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), all(vec4<bool>(global0[_wgslsmith_index_u32(var_1.c, 8u)], false, global0[_wgslsmith_index_u32(56321u, 8u)], true)))))), u_input.c.x, func_2(), ~9009i ^ u_input.c.x);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(-625f, _wgslsmith_f_op_f32(-1000f - 725f)))) - _wgslsmith_f_op_f32(select(-878f, 565f, _wgslsmith_f_op_f32(step(1581f, 2130f)) < 1366f))) + -196f);
    let var_1 = func_1();
    let var_2 = global1.x;
    global2 = array<bool, 9>();
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.a * -1000f), _wgslsmith_f_op_f32(-1052f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -896f), _wgslsmith_f_op_f32(var_1.a + -2402f)))))));
    let var_3 = vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, func_1().b, -2147483647i), ~(-global1.x));
    let var_4 = _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(reverseBits(2147483647i), var_3.x), abs(u_input.c.x), 12298i), vec3<i32>(var_3.x, 18522i, 2147483647i));
    var_0 = var_1.a;
    var var_5 = Struct_2(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c.x, global1.x, var_4.x & 2147483647i, global1.x), abs(max(max(vec4<i32>(u_input.c.x, var_1.d, 14390i, var_1.b), vec4<i32>(var_4.x, var_3.x, 22620i, 933i)), vec4<i32>(67595i, global1.x, u_input.c.x, var_4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -456f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(352f, var_1.a, var_1.a, var_1.a), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a, -401f, 179f, 451f) + vec4<f32>(825f, var_1.a, var_1.a, var_1.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec2_u32(countOneBits(~(~vec2<u32>(30406u, var_1.c.b))), vec2<u32>(~33635u, var_1.c.c)), _wgslsmith_add_i32(_wgslsmith_mult_i32(global1.x, _wgslsmith_div_i32(var_4.x, -38848i)) & 72477i, ~var_3.x), _wgslsmith_mult_vec2_i32(-(~var_5.a.wy >> (u_input.a.zy % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(var_5.a.zy, _wgslsmith_add_vec2_i32(max(var_4.zy, vec2<i32>(var_3.x, u_input.c.x)), global1.xx))), 1920f, -(~((var_4.xx >> (vec2<u32>(u_input.b.x, 0u) % vec2<u32>(32u))) >> (select(u_input.a.xy, u_input.b.xy, true) % vec2<u32>(32u)))));
}

