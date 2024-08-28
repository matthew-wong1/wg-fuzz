struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true));

var<private> global1: array<f32, 5> = array<f32, 5>(-1000f, 133f, -144f, 1081f, -1695f);

var<private> global2: array<Struct_3, 13>;

var<private> global3: array<vec4<i32>, 24>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    global3 = array<vec4<i32>, 24>();
    let var_0 = !(!arg_0.a.x);
    var var_1 = vec4<u32>(~_wgslsmith_add_u32(countOneBits(~82135u), 1u), arg_1.a, _wgslsmith_div_u32(_wgslsmith_mult_u32(13254u, _wgslsmith_add_u32(reverseBits(0u), ~u_input.a.x)), 10224u), _wgslsmith_mod_u32(max(select(arg_1.a, 1u, var_0), countOneBits(18021u)) & 1u, 5226u));
    let var_2 = 0i;
    let var_3 = Struct_1(!select(!select(global0[_wgslsmith_index_u32(var_1.x, 23u)], arg_0.a, true), vec2<bool>(true, true), global0[_wgslsmith_index_u32(0u, 23u)]));
    return arg_1.a;
}

fn func_2(arg_0: Struct_3) -> u32 {
    let var_0 = Struct_2(true, Struct_1(vec2<bool>((1000f != global1[_wgslsmith_index_u32(1u, 5u)]) & true, true & (u_input.d.x >= u_input.d.x))), select(false, _wgslsmith_sub_u32(~arg_0.a, ~u_input.b.x) != func_3(Struct_1(vec2<bool>(true, false)), Struct_3(25752u)), false | !(130f <= global1[_wgslsmith_index_u32(u_input.e.x, 5u)])));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2243f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 5u)]))))) + -432f);
    var var_2 = 48486u;
    let var_3 = Struct_2(true, Struct_1(global0[_wgslsmith_index_u32(~4294967295u, 23u)]), false);
    let var_4 = ~select(_wgslsmith_dot_vec4_i32(-vec4<i32>(29223i, 2147483647i, u_input.d.x, -52716i), _wgslsmith_mult_vec4_i32(global3[_wgslsmith_index_u32(countOneBits(u_input.c), 24u)], _wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.d.x, 68917i, u_input.d.x), vec4<i32>(20744i, 1i, 17003i, u_input.d.x)))), _wgslsmith_div_i32(u_input.d.x, i32(-1i) * -14951i) | (u_input.d.x >> (~u_input.b.x % 32u)), true);
    return arg_0.a;
}

fn func_1() -> vec2<bool> {
    return !global0[_wgslsmith_index_u32(countOneBits(func_2(global2[_wgslsmith_index_u32(1u, 13u)])), 23u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(select(vec2<bool>(true, false), func_1(), select(vec2<bool>(true, true), global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.c, 4294967295u, 100746u), vec4<u32>(u_input.e.x, u_input.a.x, 27015u, u_input.b.x)), 23u)], vec2<bool>(true, true))));
    let var_1 = select(!select(!select(vec3<bool>(true, false, false), vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(false, var_0.a.x, false)), vec3<bool>(true, true, all(vec4<bool>(var_0.a.x, true, true, false))), var_0.a.x), select(select(vec3<bool>(all(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.a.x)), all(vec4<bool>(false, var_0.a.x, var_0.a.x, false)), false), select(vec3<bool>(true, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, true, false), !var_0.a.x), true), !(!select(vec3<bool>(false, true, false), vec3<bool>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, var_0.a.x, true))), select(vec3<bool>(var_0.a.x, true, select(true, var_0.a.x, true)), !vec3<bool>(true, var_0.a.x, var_0.a.x), !select(vec3<bool>(false, var_0.a.x, var_0.a.x), vec3<bool>(var_0.a.x, true, true), true))), !(!vec3<bool>(var_0.a.x, var_0.a.x, true)));
    global2 = array<Struct_3, 13>();
    let var_2 = func_3(Struct_1(vec2<bool>(true | (global1[_wgslsmith_index_u32(u_input.e.x, 5u)] != 2517f), !(true & var_0.a.x))), Struct_3(~44494u));
    var var_3 = Struct_1(!select(var_0.a, select(select(var_0.a, global0[_wgslsmith_index_u32(u_input.c, 23u)], var_1.x), !var_1.yx, vec2<bool>(false, var_0.a.x)), !var_1.xz));
    var var_4 = Struct_2(!all(!(!vec2<bool>(var_3.a.x, var_1.x))), Struct_1(var_0.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(0u, 5u)]) * _wgslsmith_div_f32(1000f, global1[_wgslsmith_index_u32(var_2, 5u)])), 1f)) <= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1367f)) - global1[_wgslsmith_index_u32(var_2, 5u)]), global1[_wgslsmith_index_u32(var_2, 5u)])));
    global3 = array<vec4<i32>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_mult_u32(0u, func_3(var_4.b, Struct_3(var_2))), func_3(Struct_1(var_1.xy), global2[_wgslsmith_index_u32(~4294967295u, 13u)]) ^ ~var_2), 0u, ~_wgslsmith_mod_u32(func_2(global2[_wgslsmith_index_u32(1u, 13u)]), min(_wgslsmith_mod_u32(0u, var_2), 1u)), _wgslsmith_f_op_f32(min(123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~var_2, 5u)], 1f, var_4.b.a.x | false))))), 2147483647i);
}

