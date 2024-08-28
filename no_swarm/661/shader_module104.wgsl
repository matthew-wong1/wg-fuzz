struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec3<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_3,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 25>;

var<private> global1: bool;

var<private> global2: Struct_2 = Struct_2(vec3<u32>(37072u, 4294967295u, 14350u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4) -> vec3<bool> {
    var var_0 = abs(u_input.c);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-110f)));
    let var_2 = Struct_2(firstLeadingBit(vec3<u32>(u_input.c, global2.a.x, 3847u)));
    var var_3 = ~(~(~(vec4<u32>(4294967295u, global2.a.x, 448u, var_2.a.x) >> (vec4<u32>(global2.a.x, var_2.a.x, 26515u, var_2.a.x) % vec4<u32>(32u))))) | vec4<u32>(var_2.a.x, ~_wgslsmith_sub_u32(global2.a.x, 4294967295u) >> (5275u % 32u), ~(var_2.a.x >> (~47559u % 32u)), min(reverseBits(_wgslsmith_div_u32(u_input.b.x, 0u)), ~global2.a.x));
    let var_4 = Struct_3(_wgslsmith_f_op_f32(-501f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-716f, _wgslsmith_f_op_f32(exp2(var_1)), var_2.a.x != 8917u)) * _wgslsmith_f_op_f32(-1535f + -353f))));
    return arg_0.d;
}

fn func_2() -> Struct_4 {
    var var_0 = Struct_1(true);
    let var_1 = Struct_4(Struct_1(true), -1i, 4294967295u != _wgslsmith_add_u32(40238u, min(12123u, _wgslsmith_sub_u32(51552u, u_input.b.x))), !func_3(Struct_4(Struct_1(true), u_input.a.x, true, vec3<bool>(var_0.a, var_0.a, false))));
    let var_2 = Struct_3(979f);
    let var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-329f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.a * -192f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(173f))) * _wgslsmith_f_op_f32(1351f - _wgslsmith_f_op_f32(round(var_2.a))))) * vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(592f - var_2.a) - -425f), var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(461f - _wgslsmith_div_f32(var_2.a, var_2.a)))));
    var_0 = Struct_1(all(!select(var_1.d.xy, !vec2<bool>(var_0.a, true), !vec2<bool>(var_0.a, var_1.a.a))));
    return var_1;
}

fn func_1() -> vec3<u32> {
    let var_0 = func_2();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, global2.a.x), 25u)];
    global0 = array<Struct_5, 25>();
    let var_2 = var_1.c.a;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(step(var_1.c.a, -599f)));
    return global2.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!(!(u_input.a.x > _wgslsmith_div_i32(42708i, u_input.a.x))));
    let var_0 = ~(~u_input.a.x);
    let var_1 = Struct_2(select(vec3<u32>(1708u, 54543u, 0u) >> (_wgslsmith_sub_vec3_u32(~global2.a, func_1()) % vec3<u32>(32u)), ~(~global2.a), false));
    global2 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(abs(-(~1i)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(-1540f, 1000f)), 271f), _wgslsmith_f_op_f32(exp2(1f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-848f, _wgslsmith_f_op_f32(-1000f - -123f))))), min(var_0, _wgslsmith_dot_vec3_i32((vec3<i32>(63898i, 25363i, u_input.a.x) << (vec3<u32>(var_1.a.x, 1u, global2.a.x) % vec3<u32>(32u))) & max(vec3<i32>(-2147483647i, var_0, 19938i), vec3<i32>(-1i, u_input.a.x, var_0)), _wgslsmith_mult_vec3_i32(-vec3<i32>(-2147483647i, u_input.a.x, var_0), abs(vec3<i32>(-39592i, u_input.a.x, var_0))))), _wgslsmith_f_op_f32(f32(-1f) * -2528f), _wgslsmith_div_f32(-1194f, _wgslsmith_f_op_f32(2082f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1128f, 1391f)))));
}

