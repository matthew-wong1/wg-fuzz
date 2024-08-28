struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: i32,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: Struct_3;

var<private> global2: array<Struct_2, 10>;

var<private> global3: array<u32, 26> = array<u32, 26>(17239u, 4294967295u, 1u, 0u, 4294967295u, 101392u, 34127u, 59616u, 4294967295u, 0u, 4294967295u, 48975u, 27408u, 29386u, 4294967295u, 42162u, 26786u, 0u, 4294967295u, 0u, 15247u, 0u, 15877u, 4294967295u, 20168u, 12975u);

var<private> global4: vec2<f32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool) -> u32 {
    let var_0 = global4.x;
    global4 = vec2<f32>(_wgslsmith_f_op_f32(select(-1720f, 322f, select(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 67378u), 25u)] & true, global0[_wgslsmith_index_u32(u_input.b, 25u)], global1.a.a.d))), 1896f);
    let var_1 = !vec3<bool>(any(vec2<bool>(all(vec4<bool>(false, true, arg_1, true)), any(vec2<bool>(arg_1, true)))), true, global1.a.a.d);
    global3 = array<u32, 26>();
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global4.x * arg_0.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global4.x, -1898f)), -1342f)), global4.x, global4.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.c.x, 910f, -1000f, global1.a.c.x) + vec4<f32>(global1.a.c.x, arg_0.x, global1.a.b.x, 762f)))))));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), vec4<u32>(global3[_wgslsmith_index_u32(0u, 26u)], 1u, 13028u, global3[_wgslsmith_index_u32(u_input.a, 26u)])), _wgslsmith_div_u32(global3[_wgslsmith_index_u32(u_input.a, 26u)], 4294967295u), min(16948u, u_input.a), firstTrailingBit(u_input.a)), vec4<u32>(~_wgslsmith_mult_u32(0u, 4533u), 1u, 0u, 31435u)), _wgslsmith_add_u32(u_input.b, 0u));
}

fn func_2() -> f32 {
    global4 = _wgslsmith_f_op_vec2_f32(round(global1.a.b.zy));
    global1 = Struct_3(global2[_wgslsmith_index_u32(4294967295u, 10u)]);
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global4.x, 1781f), global1.a.b.x, global1.a.b.x, _wgslsmith_f_op_f32(-global4.x)), vec4<f32>(-184f, _wgslsmith_f_op_f32(-global4.x), 381f, -148f))));
    var var_1 = ~_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(1u, global3[_wgslsmith_index_u32(22466u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)]), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 26u)], 1u, global3[_wgslsmith_index_u32(34321u, 26u)])) & _wgslsmith_sub_vec3_u32(~vec3<u32>(50768u, 49834u, u_input.b), abs(vec3<u32>(4294967295u, 315u, 61405u))), vec3<u32>(~(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(25495u, 26u)], 26u)]), func_3(_wgslsmith_f_op_vec3_f32(ceil(var_0.zyx)), true), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 26136u, 1u), vec3<u32>(u_input.b, global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b, 26u)], 26u)])), 26u)] & global3[_wgslsmith_index_u32(~u_input.b, 26u)]));
    global0 = array<bool, 25>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1039f + _wgslsmith_div_f32(_wgslsmith_div_f32(-1000f, -1820f), var_0.x)), global4.x, true)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(abs(~_wgslsmith_add_u32(min(0u, 0u), _wgslsmith_mod_u32(u_input.a, 1u))), 10u)]);
    let var_2 = arg_1;
    var var_3 = Struct_3(Struct_2(var_2.a.a, var_1.a.b, _wgslsmith_f_op_vec2_f32(round(arg_1.a.b.xx))));
    global0 = array<bool, 25>();
    return Struct_1(-_wgslsmith_clamp_vec3_i32(select(vec3<i32>(0i, var_0.a.a.a.x, -1i), _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.a.a.x, var_3.a.a.c, 19724i), vec3<i32>(-1i, arg_1.a.a.c, -24153i)), true), -firstTrailingBit(arg_1.a.a.a), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.a.c, 8945i, var_0.a.a.a.x), abs(arg_1.a.a.a))), _wgslsmith_f_op_f32(round(global1.a.b.x)), -9201i, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1147f * global4.x), arg_2) - var_0.a.c.x)));
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = func_4(vec2<bool>(global0[_wgslsmith_index_u32(0u, 25u)], !global0[_wgslsmith_index_u32(u_input.a, 25u)]), Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.b), 10u)]), _wgslsmith_f_op_f32(select(-1439f, global1.a.b.x, !(_wgslsmith_f_op_f32(func_2()) != _wgslsmith_f_op_f32(-global1.a.a.e)))));
    var var_1 = vec2<i32>(func_4(select(vec2<bool>(true, true), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 26u)], 25u)]), !vec2<bool>(true, var_0.d), vec2<bool>(true, global0[_wgslsmith_index_u32(75818u, 25u)])), vec2<bool>(true, u_input.a > global3[_wgslsmith_index_u32(u_input.b, 26u)])), Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(min(global3[_wgslsmith_index_u32(1u, 26u)], u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.b), vec3<u32>(global3[_wgslsmith_index_u32(u_input.a, 26u)], global3[_wgslsmith_index_u32(2777u, 26u)], u_input.a))), 10u)]), 1f).c, ~_wgslsmith_div_i32(var_0.a.x, global1.a.a.c >> ((global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(91039u, 26u)], 26u)] << (4294967295u % 32u)) % 32u)));
    var_1 = vec2<i32>(global1.a.a.c & ~_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(6866i, -2147483647i)), global1.a.a.a.xy), global1.a.a.a.x);
    let var_2 = ~select(u_input.b, ~10689u, !(u_input.a == 50719u));
    let var_3 = global3[_wgslsmith_index_u32(var_2, 26u)];
    return global1.a;
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = Struct_2(func_1(1i).a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-arg_3), _wgslsmith_f_op_f32(abs(global4.x)), arg_2.a.b), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_3, 666f, arg_3), global1.a.b, vec3<bool>(arg_2.a.d, false, false)))))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1011f + -2067f))), arg_1.c.x));
    var var_1 = 747f;
    var var_2 = Struct_3(global1.a);
    var var_3 = u_input.a;
    let var_4 = ~4294967295u;
    return func_4(select(!vec2<bool>(!var_0.a.d, global1.a.a.d), vec2<bool>(true, false), !vec2<bool>(true, !var_0.a.d)), Struct_3(arg_1), _wgslsmith_div_f32(173f, _wgslsmith_f_op_f32(-arg_1.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-543f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-992f * global1.a.a.b) - global1.a.c.x), -1250f, select(any(vec3<bool>(true, global1.a.a.d, true)), all(vec3<bool>(false, global0[_wgslsmith_index_u32(91292u, 25u)], global1.a.a.d)), true))) * _wgslsmith_f_op_f32(-650f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(205f)))))));
    let var_1 = func_5(false, func_1(1i), global2[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a << (u_input.a % 32u), u_input.b, 27510u, 12998u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, global3[_wgslsmith_index_u32(u_input.b, 26u)], global3[_wgslsmith_index_u32(u_input.a, 26u)], 4294967295u) ^ vec4<u32>(16904u, 1u, 151137u, u_input.b), vec4<u32>(u_input.a, u_input.a, 4294967295u, 4222u) >> (vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(7323u, 26u)], 26u)], u_input.a, 69726u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(789u, 26u)], 26u)], 26u)]) % vec4<u32>(32u))))), 10u)], -1024f);
    var var_2 = _wgslsmith_mod_i32(var_1.a.x, var_1.c) | -var_1.c;
    let var_3 = !vec2<bool>(all(vec4<bool>(any(vec2<bool>(false, var_1.d)), false, true, var_1.d)), false);
    let var_4 = global1.a.b;
    global3 = array<u32, 26>();
    global4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_4.x, var_1.b)), vec2<f32>(global1.a.b.x, -277f), var_1.d)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, var_1.b) - var_4.yx) * global1.a.c)));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~global3[_wgslsmith_index_u32(35155u, 26u)], abs(_wgslsmith_mod_u32(_wgslsmith_mult_u32(36521u, 67110u), 41873u)), global3[_wgslsmith_index_u32(77461u, 26u)]), _wgslsmith_f_op_f32(f32(-1f) * -199f), var_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, -454f, false)), global4.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-916f * var_4.x) - var_0.x)) * global1.a.c), vec2<f32>(var_1.e, var_0.x));
}

