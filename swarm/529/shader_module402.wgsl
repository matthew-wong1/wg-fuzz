struct Struct_1 {
    a: vec2<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<u32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 11>;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(68769u, 20556u), 19326u);

var<private> global2: vec4<i32> = vec4<i32>(0i, -1i, -15398i, 1i);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_4, arg_2: f32) -> vec2<u32> {
    let var_0 = _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(_wgslsmith_mult_i32(30030i, u_input.c.x), global2.x ^ 36372i, ~u_input.a)) >> (select(~_wgslsmith_div_vec3_u32(arg_1.b, vec3<u32>(17690u, 97953u, 67137u)), vec3<u32>(~u_input.b.x, 98345u << (global1.a.x % 32u), 0u), !(!vec3<bool>(arg_1.c, false, arg_1.c))) % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(-vec3<i32>(38564i, 1i, u_input.c.x), global2.xwy));
    global0 = array<vec3<f32>, 11>();
    var var_1 = var_0.yx;
    let var_2 = !vec4<bool>(true, arg_1.c, select(true, arg_1.c, var_1.x > ~var_1.x), false);
    var var_3 = ~var_1.x;
    return abs(~(~vec2<u32>(reverseBits(arg_0.a.a.x), min(u_input.b.x, 4294967295u))));
}

fn func_2(arg_0: f32, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    var var_0 = Struct_1(u_input.b.zx, ~abs(global1.a.x));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0[_wgslsmith_index_u32(var_0.b, 11u)])), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(128237u, global1.b), 11u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.b, var_0.b), 11u)], _wgslsmith_f_op_vec3_f32(trunc(global0[_wgslsmith_index_u32(global1.a.x, 11u)]))))), !vec3<bool>(true, all(vec3<bool>(true, false, true)), true))));
    var var_2 = Struct_1(func_3(Struct_2(Struct_1(vec2<u32>(4294967295u, var_0.a.x) ^ global1.a, u_input.b.x)), Struct_4(Struct_2(Struct_1(vec2<u32>(4294967295u, var_0.a.x), global1.b)), u_input.b, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * var_1.x))))), global1.a.x);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1068f, var_1.x, select(true, true, true))))), 70471u, var_2.b, true);
    let var_4 = false;
    return Struct_1(~(~(var_0.a >> (var_0.a % vec2<u32>(32u)))) >> (~vec2<u32>(~21741u, 25287u) % vec2<u32>(32u)), ~var_2.b);
}

fn func_1(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> u32 {
    global1 = Struct_1(global1.a, countOneBits(101072u));
    let var_0 = Struct_4(Struct_2(func_2(_wgslsmith_f_op_f32(-511f + 1761f), ~global2.x, u_input.c | vec2<i32>(arg_3, -25729i))), u_input.b, arg_0.x == _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global2 = select(firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 1i, 0i, -15231i), -vec4<i32>(1i, arg_3, global2.x, global2.x))), -vec4<i32>(41485i, arg_3, -1i, arg_3) | vec4<i32>(22162i, _wgslsmith_div_i32(u_input.a, arg_3), 2147483647i, 0i), all(!select(arg_2, vec3<bool>(var_0.c, false, var_0.c), var_0.c))) << (vec4<u32>(u_input.b.x ^ abs(0u << (1u % 32u)), u_input.b.x, global1.a.x, firstTrailingBit(firstTrailingBit(3060u << (var_0.a.a.b % 32u)))) % vec4<u32>(32u));
    let var_1 = Struct_3(arg_0.x, 4294967295u, ~4294967295u, arg_2.x);
    global1 = Struct_1(firstTrailingBit(vec2<u32>(u_input.b.x, var_1.c) ^ global1.a) | ~vec2<u32>(4294967295u, 0u), _wgslsmith_mod_u32(~(~u_input.b.x), var_1.c));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_1(global1.a, ~32752u);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1494f, 1112f)), _wgslsmith_f_op_f32(f32(-1f) * -1914f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -182f))) * _wgslsmith_f_op_f32(f32(-1f) * -456f)));
    global0 = array<vec3<f32>, 11>();
    let var_1 = i32(-1i) * -26251i;
    let var_2 = ~(~(abs(func_1(vec2<f32>(-547f, 632f), false, vec3<bool>(true, true, false), 22125i)) & 0u));
    var var_3 = global1.b;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(max(~firstTrailingBit(u_input.b.x), var_2), firstTrailingBit(max(~u_input.b.x, 1201u ^ var_2)), global1.a.x), global1.a.x, u_input.a, vec4<i32>(-var_1 & -24345i, 1i, global2.x, global2.x), -(~(vec4<i32>(-1i) * -vec4<i32>(global2.x, 25043i, global2.x, 3328i))));
}

