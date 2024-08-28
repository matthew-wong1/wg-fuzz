struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: f32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec4<i32>, 13>;

var<private> global2: array<i32, 18> = array<i32, 18>(1i, i32(-2147483648), 5426i, -49629i, 16084i, 0i, -1i, -1i, 15781i, 12648i, 1i, 23427i, 41407i, 1i, -24899i, -1i, 2147483647i, 19507i);

var<private> global3: vec3<i32>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: vec4<bool>) -> vec3<u32> {
    global1 = array<vec4<i32>, 13>();
    global1 = array<vec4<i32>, 13>();
    var var_0 = firstTrailingBit(4294967295u);
    let var_1 = 0i;
    var var_2 = u_input.b.x;
    return min(~reverseBits(~vec3<u32>(33950u, 1u, 30474u)), global0.b.a) >> (global0.e % vec3<u32>(32u));
}

fn func_2() -> u32 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(1u, 13u)], global0.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)), _wgslsmith_f_op_f32(-global0.c))), global0.d, firstLeadingBit(_wgslsmith_clamp_vec3_u32(func_3(global0.b.a.x, Struct_3(global0.a, Struct_2(vec3<u32>(u_input.c, global0.e.x, 57204u), true), global0.c, vec2<u32>(u_input.a, global0.e.x), global0.e), global1[_wgslsmith_index_u32(global0.e.x, 13u)], vec4<bool>(global0.b.b, global0.b.b, false, true)), vec3<u32>(global0.e.x, u_input.c, 4294967295u), global0.e) << (global0.b.a % vec3<u32>(32u))));
    var var_1 = global0.b;
    var var_2 = vec2<f32>(var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_0.c)), global0.c, true)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.c)), _wgslsmith_div_f32(global0.c, global0.c)))));
    let var_3 = max(reverseBits(~select(global2[_wgslsmith_index_u32(var_0.e.x, 18u)], 0i, var_0.b.b)), abs(min(_wgslsmith_sub_i32(u_input.b.x, global3.x), abs(u_input.b.x)))) ^ (global3.x ^ 47507i);
    let var_4 = -vec2<i32>(~(~u_input.b.x), -global3.x);
    return ~1u;
}

fn func_1() -> Struct_3 {
    global3 = vec3<i32>(max(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(u_input.a), ~u_input.c), 18u)], ~1i), global0.a.x, firstLeadingBit(global0.a.x));
    var var_0 = global0.b;
    var var_1 = Struct_1(1213f);
    let var_2 = u_input.a;
    let var_3 = 4294967295u << (func_2() % 32u);
    return Struct_3(_wgslsmith_div_vec4_i32(global0.a, _wgslsmith_mod_vec4_i32(~vec4<i32>(15689i, global0.a.x, global2[_wgslsmith_index_u32(var_2, 18u)], -1i), vec4<i32>(-2147483647i, global3.x, 20995i, -2147483647i)) << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(11881u, 64715u, global0.e.x, 4294967295u), vec4<u32>(38222u, var_0.a.x, var_3, 30678u), vec4<u32>(0u, u_input.c, 4294967295u, var_0.a.x)) % vec4<u32>(32u))), global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-666f)) * _wgslsmith_f_op_f32(round(621f))) * -1494f) - global0.c), _wgslsmith_add_vec2_u32(~(~(~var_0.a.xy)), global0.b.a.zy), ~var_0.a);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    var var_0 = select(!select(!select(vec4<bool>(false, arg_2.b.b, arg_1, false), vec4<bool>(arg_1, arg_3.b, true, arg_3.b), vec4<bool>(global0.b.b, true, true, arg_2.b.b)), select(vec4<bool>(true, global0.b.b, false, arg_2.b.b), select(vec4<bool>(arg_0.b.b, arg_0.b.b, true, arg_2.b.b), vec4<bool>(global0.b.b, arg_0.b.b, arg_0.b.b, true), vec4<bool>(arg_1, true, arg_2.b.b, arg_1)), select(vec4<bool>(true, arg_1, true, arg_0.b.b), vec4<bool>(arg_3.b, arg_3.b, true, true), vec4<bool>(false, false, arg_1, arg_3.b))), select(!vec4<bool>(arg_0.b.b, arg_0.b.b, true, true), select(vec4<bool>(arg_0.b.b, false, false, false), vec4<bool>(global0.b.b, true, arg_2.b.b, arg_1), vec4<bool>(false, arg_2.b.b, true, true)), select(false, true, arg_1))), !vec4<bool>(all(!vec4<bool>(true, false, global0.b.b, true)), arg_0.b.b, any(select(vec4<bool>(true, true, global0.b.b, arg_2.b.b), vec4<bool>(arg_0.b.b, true, arg_3.b, true), vec4<bool>(false, false, global0.b.b, true))), false), !(!select(vec4<bool>(false, false, true, false), !vec4<bool>(global0.b.b, true, false, arg_2.b.b), arg_1)));
    var var_1 = Struct_1(772f);
    let var_2 = 136f;
    let var_3 = all(!vec3<bool>(arg_0.b.b, !(false | arg_1), true));
    global3 = -vec3<i32>(_wgslsmith_mult_i32(~(~global3.x), -u_input.b.x), max(1i, u_input.b.x), firstTrailingBit(u_input.b.x ^ ~(-33838i)));
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(func_1(), true, func_1(), global0.b);
    global1 = array<vec4<i32>, 13>();
    global3 = select(global0.a.yzx, abs(global0.a.wyz), global0.b.b);
    var var_0 = Struct_1(-855f);
    var var_1 = false;
    var_1 = true;
    let var_2 = ~(-(_wgslsmith_add_vec2_i32(global0.a.yy, global0.a.wz) << (func_3(43089u, Struct_3(vec4<i32>(global0.a.x, -18751i, global0.a.x, global0.a.x), global0.b, global0.c, vec2<u32>(0u, u_input.a), global0.b.a), vec4<i32>(u_input.b.x, 34939i, 7446i, u_input.b.x), vec4<bool>(global0.b.b, global0.b.b, global0.b.b, false)).zz % vec2<u32>(32u)))) ^ (abs(vec2<i32>(-1i, countOneBits(-1i))) << ((~_wgslsmith_mod_vec2_u32(global0.d, vec2<u32>(u_input.a, 0u)) & _wgslsmith_add_vec2_u32(select(global0.d, vec2<u32>(32295u, global0.b.a.x), false), ~vec2<u32>(0u, global0.e.x))) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-386f + _wgslsmith_f_op_f32(-336f * _wgslsmith_div_f32(global0.c, 722f)))), i32(-1i) * -1i, 2147483647i);
}

