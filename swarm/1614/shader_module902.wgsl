struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<bool>,
    d: vec2<i32>,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec4<bool>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: Struct_3,
    d: bool,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 12> = array<vec4<bool>, 12>(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false));

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: Struct_5, arg_1: Struct_4, arg_2: vec3<i32>, arg_3: vec3<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(184f)) - _wgslsmith_f_op_f32(abs(-847f)))))) * _wgslsmith_f_op_f32(trunc(-1076f)));
    return _wgslsmith_add_i32(~u_input.d.x, _wgslsmith_mult_i32(firstTrailingBit(-_wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.d.x, arg_2.x), vec3<i32>(arg_0.c.a.e, u_input.d.x, 52559i))), -1i));
}

fn func_2() -> Struct_3 {
    global0 = array<vec4<bool>, 12>();
    global0 = array<vec4<bool>, 12>();
    global1 = Struct_2(u_input.d.x | reverseBits(global1.a), ~u_input.d.x, !(!select(vec3<bool>(true, global1.c.x, false), global1.c, true)), Struct_1(global1.c.zy, global1.d.c.x, select(vec4<bool>(any(global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), global1.d.b, true, global1.d.b), global0[_wgslsmith_index_u32(~(~24144u), 12u)], global1.d.a.x), vec2<i32>(u_input.d.x, ~1i), func_3(Struct_5(vec3<i32>(-39215i, global1.e, 0i) & vec3<i32>(global1.a, 1i, 0i), vec4<u32>(23057u, u_input.a, 0u, u_input.a) >> (vec4<u32>(4066u, u_input.a, 4294967295u, u_input.a) % vec4<u32>(32u)), Struct_3(global1.d, Struct_2(global1.d.d.x, 1i, vec3<bool>(global1.c.x, true, false), Struct_1(global1.c.yx, global1.c.x, global1.d.c, vec2<i32>(global1.d.d.x, global1.a), -2147483647i), u_input.d.x), global1.d.c), true, ~vec4<u32>(u_input.a, 9712u, u_input.a, 4380u)), Struct_4(global1.d.c.x && global1.d.b, 117160u, _wgslsmith_sub_vec3_u32(u_input.c, vec3<u32>(u_input.a, u_input.b, 4294967295u))), -(vec3<i32>(1i, 1i, -32415i) << (u_input.c % vec3<u32>(32u))), vec3<u32>(~u_input.a, firstLeadingBit(u_input.c.x), _wgslsmith_mod_u32(1u, u_input.c.x)))), -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(global1.b, global1.b), _wgslsmith_div_i32(16070i, u_input.d.x)), -vec2<i32>(u_input.d.x, -24571i) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(6837i, 35995i), vec2<i32>(global1.e, global1.a))));
    var var_0 = vec2<i32>(i32(-1i) * -countOneBits(2147483647i), reverseBits(32136i));
    global0 = array<vec4<bool>, 12>();
    return Struct_3(Struct_1(vec2<bool>(false, (u_input.d.x << (u_input.a % 32u)) >= 1i), !global1.c.x, !(!global0[_wgslsmith_index_u32(~u_input.a, 12u)]), reverseBits(_wgslsmith_div_vec2_i32(u_input.d, vec2<i32>(var_0.x, u_input.d.x))), 32711i), Struct_2(global1.e, 0i, !(!global1.d.c.wwz), Struct_1(global1.d.a, true, global1.d.c, -vec2<i32>(1i, global1.e), 1i), -9828i >> (u_input.b % 32u)), global1.d.c);
}

fn func_1(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = Struct_5(-vec3<i32>(select(abs(arg_0.x), i32(-1i) * -12204i, select(true, global1.d.b, true)), ~global1.d.d.x, ~_wgslsmith_dot_vec2_i32(arg_0, global1.d.d)), select(abs(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.a), ~vec4<u32>(u_input.c.x, 17481u, 1u, u_input.a))), ~abs(~vec4<u32>(u_input.b, 8806u, u_input.b, u_input.b)), vec4<bool>(!(!global1.c.x), false, !(true && global1.c.x), global1.d.a.x)), func_2(), false, vec4<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, u_input.a, u_input.c.x, 1u), vec4<u32>(u_input.a, 14365u, u_input.b, u_input.a)), abs(vec4<u32>(u_input.a, u_input.b, u_input.b, u_input.c.x))) ^ select(_wgslsmith_div_u32(u_input.b, 38523u), 31560u, global1.d.b != global1.d.c.x), u_input.c.x, reverseBits(5085u), ~(~u_input.a)));
    global1 = func_2().b;
    let var_1 = Struct_2(u_input.d.x, 26036i, !vec3<bool>(false, all(func_2().a.c.xzw), !func_2().b.d.c.x), func_2().b.d, -70887i);
    let var_2 = !func_2().b.c;
    var var_3 = Struct_4(any(func_2().c.yy), firstLeadingBit(_wgslsmith_add_u32(select(u_input.a | u_input.b, var_0.b.x, global1.c.x), ~(~4294967295u))), abs(var_0.e.xwy));
    return var_0.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~13259u;
    global1 = func_1(~(~(~abs(vec2<i32>(global1.e, global1.d.e)))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1000f + -108f))))));
    let var_2 = Struct_2(-global1.d.e, ~global1.d.d.x & global1.d.e, select(!(!(!vec3<bool>(global1.c.x, global1.d.b, global1.c.x))), !global1.c, select(!vec3<bool>(false, global1.c.x, true), vec3<bool>(true, true, true), !all(vec3<bool>(global1.c.x, global1.c.x, false)))), global1.d, 1i);
    var_1 = -1404f;
    global0 = array<vec4<bool>, 12>();
    var_1 = -1067f;
    let var_3 = func_1(~select(-abs(var_2.d.d), _wgslsmith_sub_vec2_i32(-vec2<i32>(-1i, -23283i), vec2<i32>(-45521i, var_2.b)), true)).c.yy;
    let x = u_input.a;
    s_output = StorageBuffer(min(min(max(vec2<i32>(global1.a, u_input.d.x) ^ vec2<i32>(var_2.b, global1.d.d.x), abs(vec2<i32>(var_2.e, 0i))), func_2().b.d.d), -(~(-global1.d.d))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(1143f + _wgslsmith_f_op_f32(f32(-1f) * -540f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1352f), _wgslsmith_f_op_f32(max(679f, 1852f)))))));
}

