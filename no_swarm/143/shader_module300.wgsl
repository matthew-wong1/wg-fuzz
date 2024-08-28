struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8> = array<vec3<i32>, 8>(vec3<i32>(0i, -36618i, 20931i), vec3<i32>(i32(-2147483648), 0i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), vec3<i32>(1i, -24248i, 1i), vec3<i32>(0i, -26243i, 63864i), vec3<i32>(1i, 0i, -1i), vec3<i32>(-7345i, -26819i, 38873i), vec3<i32>(23559i, 35919i, 10831i));

var<private> global1: array<vec2<f32>, 11> = array<vec2<f32>, 11>(vec2<f32>(-861f, -1891f), vec2<f32>(-451f, -242f), vec2<f32>(-948f, 698f), vec2<f32>(274f, 718f), vec2<f32>(1291f, 435f), vec2<f32>(-1639f, -239f), vec2<f32>(1695f, 1989f), vec2<f32>(-2714f, -1289f), vec2<f32>(-298f, 714f), vec2<f32>(1357f, -890f), vec2<f32>(510f, -373f));

var<private> global2: vec4<u32> = vec4<u32>(66998u, 1u, 4294967295u, 1u);

var<private> global3: array<Struct_5, 17>;

var<private> global4: Struct_2;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3) -> vec2<f32> {
    global1 = array<vec2<f32>, 11>();
    let var_0 = Struct_4(vec4<i32>(-_wgslsmith_sub_i32(~29228i, 1i), ~(~arg_1.a.a.b.x), _wgslsmith_div_i32(-2147483647i, ~min(u_input.a.x, -31042i)), firstLeadingBit(arg_1.a.d.b.x)), global4.a, global4.d);
    global0 = array<vec3<i32>, 8>();
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-757f, _wgslsmith_div_f32(arg_1.a.a.a.x, 286f))));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(~u_input.a.x | 9399i, _wgslsmith_add_i32(-27862i, u_input.a.x) & var_0.b.d), arg_1.a.c.x, _wgslsmith_add_i32(2147483647i, var_0.c.d), var_0.c.c) | var_0.a;
    return var_0.c.a;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_4) -> u32 {
    var var_0 = true;
    global1 = array<vec2<f32>, 11>();
    var var_1 = max(abs(~(vec3<u32>(4294967295u, 4294967295u, 4294967295u) << (vec3<u32>(0u, 4294967295u, global2.x) % vec3<u32>(32u))) | max(arg_1.e | vec3<u32>(14775u, 1u, arg_1.e.x), vec3<u32>(45331u, 52355u, 0u))), vec3<u32>(min(_wgslsmith_div_u32(~56905u, _wgslsmith_add_u32(u_input.b.x, 4294967295u)), u_input.c), abs(~(~global2.x)), 0u));
    return arg_1.e.x;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec3<u32>, arg_3: Struct_5) -> u32 {
    let var_0 = min(-2147483647i, arg_0.d.c);
    global1 = array<vec2<f32>, 11>();
    let var_1 = Struct_4(~(~(vec4<i32>(-1i) * -vec4<i32>(1i, arg_0.c.x, -1i, -2147483647i))), arg_0.d, global4.d);
    global0 = array<vec3<i32>, 8>();
    let var_2 = global3[_wgslsmith_index_u32(~(~u_input.c), 17u)];
    return func_4(vec4<bool>(arg_0.b, true, !select(false, true, global4.b) && all(vec4<bool>(true, false, false, false)), false), Struct_2(global4.a, true, abs(vec3<i32>(~var_1.c.d, arg_3.a & -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 2147483647i, var_1.a.x), var_1.a))), Struct_1(_wgslsmith_f_op_vec2_f32(step(global4.a.a, vec2<f32>(arg_1.a.d.a.x, -826f))), (global4.d.b & vec3<i32>(arg_0.d.c, 64698i, -8418i)) & vec3<i32>(-9509i, -33104i, -2147483647i), _wgslsmith_div_i32(-arg_3.a, var_0), i32(-1i) * -arg_1.a.a.c), global2.zwz), Struct_1(_wgslsmith_f_op_vec2_f32(func_3(vec4<bool>(true, true, all(vec2<bool>(true, true)), all(vec3<bool>(global4.b, arg_3.b, false))), Struct_3(Struct_2(Struct_1(vec2<f32>(-1242f, -735f), arg_1.a.c, var_2.a, -31670i), false, vec3<i32>(var_0, 30721i, arg_3.a), Struct_1(vec2<f32>(-1000f, arg_0.d.a.x), vec3<i32>(-42611i, arg_1.a.a.d, arg_1.a.c.x), global4.a.d, var_1.a.x), global4.e), any(vec3<bool>(arg_0.b, true, global4.b))))), vec3<i32>(arg_1.a.c.x, var_2.a, -var_2.a) << (vec3<u32>(~arg_2.x, var_2.c, 4294967295u) % vec3<u32>(32u)), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(var_1.a, vec4<i32>(-6930i, arg_0.d.b.x, -2147483647i, arg_3.a)), -2147483647i), i32(-1i) * -2147483647i), var_1);
}

fn func_1() -> u32 {
    global2 = ~vec4<u32>(~(global2.x | _wgslsmith_mod_u32(1u, 1u)), 1u, min(~40849u, 1u), _wgslsmith_sub_u32(u_input.c ^ func_2(Struct_2(global4.a, true, vec3<i32>(u_input.a.x, global4.d.d, 10707i), Struct_1(global1[_wgslsmith_index_u32(54780u, 11u)], vec3<i32>(global4.d.b.x, -34186i, global4.a.c), u_input.a.x, global4.a.b.x), vec3<u32>(global2.x, u_input.c, global2.x)), Struct_3(Struct_2(global4.d, true, vec3<i32>(-21613i, -13330i, global4.a.d), global4.d, global4.e), global4.b), u_input.b, global3[_wgslsmith_index_u32(global4.e.x, 17u)]), ~(40667u >> (u_input.c % 32u))));
    global1 = array<vec2<f32>, 11>();
    let var_0 = Struct_4(_wgslsmith_clamp_vec4_i32(~(vec4<i32>(global4.c.x, 5640i, -1i, global4.c.x) ^ (vec4<i32>(1i, u_input.a.x, -1i, 8928i) >> (vec4<u32>(u_input.b.x, 4294967295u, 47876u, 0u) % vec4<u32>(32u)))), _wgslsmith_div_vec4_i32(abs(vec4<i32>(global4.a.d, -2147483647i, 2147483647i, global4.d.d)), vec4<i32>(37765i, global4.d.c, u_input.a.x, u_input.a.x) ^ vec4<i32>(-15027i, global4.c.x, u_input.a.x, u_input.a.x)) >> (vec4<u32>(9197u, abs(31579u), 14237u, ~25134u) % vec4<u32>(32u)), min(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -22759i, -1i, u_input.a.x), vec4<i32>(global4.d.d, global4.d.d, u_input.a.x, u_input.a.x) << (vec4<u32>(global4.e.x, u_input.c, global2.x, 8973u) % vec4<u32>(32u))), (vec4<i32>(u_input.a.x, global4.d.b.x, global4.c.x, global4.d.b.x) | vec4<i32>(35821i, -51364i, -8181i, global4.c.x)) << (countOneBits(vec4<u32>(19393u, 0u, global4.e.x, 4294967295u)) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(~1u, 11u)] + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.a.a.x, global4.d.a.x))), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(592f, -1630f))), true)), _wgslsmith_sub_vec3_i32(~vec3<i32>(global4.c.x, 0i, u_input.a.x), vec3<i32>(select(u_input.a.x, u_input.a.x, global4.b), global4.c.x, _wgslsmith_sub_i32(u_input.a.x, 1i))), global4.a.c, 1i), Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a.a), global4.a.b, _wgslsmith_mod_i32(abs(22432i) & global4.d.b.x, ~(~global4.d.d)), -4662i));
    let var_1 = global4.d;
    var var_2 = Struct_2(global4.a, all(select(!(!vec3<bool>(global4.b, false, true)), !vec3<bool>(global4.b, true, true), false)), _wgslsmith_add_vec3_i32(~(var_0.c.b << (u_input.b % vec3<u32>(32u))), reverseBits(var_1.b)), var_0.b, vec3<u32>(~global2.x >> (select(_wgslsmith_add_u32(u_input.b.x, 19379u), global4.e.x << (1u % 32u), !global4.b) % 32u), firstTrailingBit(30730u), 0u));
    return ~(global2.x >> (u_input.b.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(abs(1u), ~0u, func_1()) << ((_wgslsmith_add_u32(firstLeadingBit(1u), global4.e.x) << (global4.e.x % 32u)) % 32u), 102f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(abs(global4.e.x), 11u)] * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(659f, -323f), _wgslsmith_f_op_vec2_f32(-global4.a.a))))));
}

