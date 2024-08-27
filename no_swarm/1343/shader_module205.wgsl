struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: Struct_2,
    d: vec4<u32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec3<f32>,
    d: Struct_3,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, false);

var<private> global1: array<vec4<f32>, 28>;

var<private> global2: array<Struct_2, 5> = array<Struct_2, 5>(Struct_2(Struct_1(vec4<i32>(-7231i, 16318i, -3354i, -10329i), 4294967295u, vec3<u32>(22684u, 1u, 28528u)), vec2<i32>(0i, i32(-2147483648)), Struct_1(vec4<i32>(62296i, 1i, 6303i, -1i), 40260u, vec3<u32>(29783u, 0u, 4294967295u))), Struct_2(Struct_1(vec4<i32>(374i, 18638i, i32(-2147483648), i32(-2147483648)), 24686u, vec3<u32>(0u, 4294967295u, 1u)), vec2<i32>(-42873i, 0i), Struct_1(vec4<i32>(-7481i, 20833i, -6325i, i32(-2147483648)), 4294967295u, vec3<u32>(4294967295u, 0u, 14492u))), Struct_2(Struct_1(vec4<i32>(1417i, -1i, -25031i, 2147483647i), 4294967295u, vec3<u32>(978u, 4294967295u, 37647u)), vec2<i32>(2425i, 34376i), Struct_1(vec4<i32>(1i, -37397i, -26864i, -20505i), 0u, vec3<u32>(0u, 1u, 4294967295u))), Struct_2(Struct_1(vec4<i32>(2147483647i, -49118i, 0i, -9114i), 0u, vec3<u32>(2617u, 19167u, 46046u)), vec2<i32>(14735i, 0i), Struct_1(vec4<i32>(59633i, 0i, 42260i, 1i), 35439u, vec3<u32>(12821u, 4294967295u, 4294967295u))), Struct_2(Struct_1(vec4<i32>(10032i, i32(-2147483648), 0i, -26773i), 1u, vec3<u32>(14026u, 4294967295u, 0u)), vec2<i32>(i32(-2147483648), -1i), Struct_1(vec4<i32>(39768i, -25544i, -33722i, 2356i), 24251u, vec3<u32>(4294967295u, 24116u, 35089u))));

var<private> global3: u32 = 1u;

var<private> global4: vec2<i32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> vec2<i32> {
    var var_0 = ~firstLeadingBit(~vec4<i32>(firstTrailingBit(global4.x), 0i, global4.x, 0i));
    let var_1 = 81471u;
    return var_0.yw;
}

fn func_4(arg_0: i32) -> f32 {
    global4 = vec2<i32>(func_3(false).x, ~(-_wgslsmith_div_i32(global4.x, arg_0))) | select(~(~vec2<i32>(1i, arg_0)) ^ abs(vec2<i32>(31071i, arg_0)), select(vec2<i32>(i32(-1i) * -1959i, reverseBits(arg_0)), _wgslsmith_sub_vec2_i32(~vec2<i32>(arg_0, 27248i), select(vec2<i32>(-5320i, 0i), vec2<i32>(2147483647i, arg_0), vec2<bool>(true, global0.x))), vec2<bool>(select(global0.x, false, global0.x), true)), ~global4.x <= arg_0);
    var var_0 = Struct_3(countOneBits(_wgslsmith_mod_u32(12895u, ~u_input.b.x)), global0.x, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b.x, min(~9773u, ~(~u_input.a.x))), 5u)], ~(_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(4456u, u_input.b.x, 18828u, u_input.b.x)), ~vec4<u32>(50048u, 0u, u_input.b.x, 4294967295u)) & _wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a.x, u_input.b.x, 0u, u_input.b.x), vec4<u32>(u_input.b.x, 19994u, u_input.a.x, 0u))), arg_0);
    let var_1 = arg_0;
    var var_2 = all(select(vec4<bool>(!all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), false, false, global0.x || (var_0.b | global0.x)), vec4<bool>(all(vec2<bool>(var_0.b, true)), ~var_0.a > var_0.c.a.b, true, all(!global0.xx)), true));
    global3 = ~_wgslsmith_clamp_u32(u_input.a.x, (abs(7753u) ^ (4294967295u << (u_input.a.x % 32u))) >> (firstLeadingBit(~49512u) % 32u), 67883u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1616f)));
}

fn func_2() -> vec3<f32> {
    let var_0 = _wgslsmith_sub_vec4_i32(min(~vec4<i32>(global4.x, global4.x, _wgslsmith_mod_i32(-30094i, global4.x), _wgslsmith_mult_i32(global4.x, 11875i)), _wgslsmith_div_vec4_i32(~min(vec4<i32>(global4.x, global4.x, -14719i, -2147483647i), vec4<i32>(165i, global4.x, -2147483647i, 2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(28861i, global4.x, global4.x, global4.x) >> (vec4<u32>(u_input.a.x, 49539u, u_input.a.x, 43386u) % vec4<u32>(32u)), vec4<i32>(-1i, global4.x, global4.x, -12332i) << (vec4<u32>(u_input.a.x, 48767u, 58293u, 37283u) % vec4<u32>(32u)), vec4<i32>(1i, 55949i, global4.x, global4.x)))), ~vec4<i32>(~(~global4.x), _wgslsmith_div_i32(global4.x, 26652i << (u_input.b.x % 32u)), -(~global4.x), -global4.x));
    var var_1 = -112f;
    let var_2 = 586f;
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_2)))), 1150f, _wgslsmith_f_op_f32(func_4(_wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(func_3(false), select(vec2<i32>(-34432i, var_0.x), vec2<i32>(global4.x, var_0.x), global0.zy))))), var_2);
    let var_4 = global0.yw;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(var_3.zwz)));
}

fn func_1() -> StorageBuffer {
    let var_0 = 1i;
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2()))))));
    global1 = array<vec4<f32>, 28>();
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_2()).x))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(-190f, _wgslsmith_f_op_f32(-343f + _wgslsmith_f_op_f32(min(var_1.x, var_1.x)))) - _wgslsmith_f_op_f32(-var_1.x)));
    global1 = array<vec4<f32>, 28>();
    return StorageBuffer(abs(max(1u, 28918u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.x))))), vec3<u32>(_wgslsmith_mult_u32(~18211u, ~4294967295u), u_input.a.x, ~_wgslsmith_add_u32(~u_input.a.x, _wgslsmith_div_u32(0u, u_input.a.x))), 54294u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

