struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: bool,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2>;

var<private> global1: array<u32, 22> = array<u32, 22>(4294967295u, 4294967295u, 4294967295u, 39052u, 4294967295u, 4294967295u, 0u, 23795u, 86334u, 13957u, 64062u, 4294967295u, 52318u, 5056u, 15647u, 1u, 28105u, 14633u, 42792u, 0u, 10273u, 0u);

var<private> global2: array<vec4<i32>, 32>;

var<private> global3: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(38118u), Struct_2(4294967295u), Struct_2(5583u), Struct_2(5420u), Struct_2(112329u), Struct_2(4294967295u), Struct_2(1u), Struct_2(0u), Struct_2(0u), Struct_2(1u), Struct_2(49983u), Struct_2(1u), Struct_2(52723u), Struct_2(4294967295u), Struct_2(4294967295u), Struct_2(1u), Struct_2(63400u));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global2 = array<vec4<i32>, 32>();
    let var_0 = u_input.d;
    var var_1 = 383f;
    var var_2 = Struct_3(-1645f, _wgslsmith_mod_vec2_i32(max(select(vec2<i32>(var_0, var_0), -vec2<i32>(-6100i, -1i), any(vec4<bool>(false, true, false, true))), vec2<i32>(var_0, reverseBits(-12693i))), ((vec2<i32>(21956i, 0i) << (u_input.c % vec2<u32>(32u))) << (~vec2<u32>(u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73985u, 22u)], 22u)], 22u)], 22u)]) % vec2<u32>(32u))) ^ firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(-10641i, -19850i), vec2<i32>(var_0, -33398i)))), all(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), Struct_1(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), any(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false))), vec2<i32>(u_input.d, abs(-37905i)), 26579i << (min(1u, 0u) % 32u)));
    let var_3 = (firstTrailingBit(vec3<i32>(1i, ~29762i, -1i)) >> (~max(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 22u)], 22u)], 22u)], 0u), vec3<u32>(4294967295u, u_input.a, 1610u)), countOneBits(vec3<u32>(u_input.a, 28115u, global1[_wgslsmith_index_u32(43430u, 22u)]))) % vec3<u32>(32u))) & -((_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.d), vec3<i32>(u_input.d, u_input.d, -75273i)) << (~vec3<u32>(0u, u_input.c.x, u_input.c.x) % vec3<u32>(32u))) | _wgslsmith_clamp_vec3_i32(min(vec3<i32>(var_0, var_0, u_input.d), vec3<i32>(var_2.b.x, var_2.d.c, var_2.b.x)), select(vec3<i32>(-2147483647i, -22021i, 0i), vec3<i32>(9747i, -1i, 1i), vec3<bool>(true, true, var_2.d.a.x)), vec3<i32>(var_0, 2147483647i, var_0)));
    return -17718i;
}

fn func_2(arg_0: Struct_1) -> i32 {
    global1 = array<u32, 22>();
    let var_0 = arg_0;
    let var_1 = true;
    var var_2 = arg_0.b;
    return func_3() & -firstLeadingBit(arg_0.c);
}

fn func_1(arg_0: i32) -> i32 {
    global2 = array<vec4<i32>, 32>();
    var var_0 = ~(~(~select(firstTrailingBit(vec4<u32>(global1[_wgslsmith_index_u32(1u, 22u)], 121667u, global1[_wgslsmith_index_u32(u_input.c.x, 22u)], 4294967295u)), abs(vec4<u32>(global1[_wgslsmith_index_u32(44435u, 22u)], u_input.a, global1[_wgslsmith_index_u32(1u, 22u)], 30798u)), false)));
    let var_1 = (min(~(-vec2<i32>(64568i, u_input.b)), _wgslsmith_clamp_vec2_i32(vec2<i32>(arg_0, arg_0), vec2<i32>(arg_0, arg_0), vec2<i32>(u_input.b, 15460i)) << (u_input.c % vec2<u32>(32u))) >> (_wgslsmith_div_vec2_u32(var_0.xz, u_input.c) % vec2<u32>(32u))) | _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(30024i, arg_0), -2147483647i), firstLeadingBit(vec2<i32>(2147483647i, arg_0))), -(~(-vec2<i32>(u_input.b, -2147483647i))));
    let var_2 = func_2(global0[_wgslsmith_index_u32(12132u, 2u)]) << (max(1u, ~u_input.a) % 32u);
    var var_3 = select(0u, firstTrailingBit(_wgslsmith_div_u32(1u, ~var_0.x)), any(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<bool>(true, true))));
    return ~(~21904i);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 32>();
    global0 = array<Struct_1, 2>();
    global2 = array<vec4<i32>, 32>();
    let var_0 = ~u_input.c.x;
    global0 = array<Struct_1, 2>();
    var var_1 = Struct_2(4294967295u);
    var var_2 = ~_wgslsmith_mult_i32(func_1(min(u_input.b, -2147483647i)) ^ u_input.d, u_input.b);
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)) * vec3<f32>(1f, 1f, 1f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(680f + -2060f))), 174f, _wgslsmith_f_op_f32(f32(-1f) * -1606f)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f * -1261f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1020f)), 1675f), all(select(vec2<bool>(true, false), vec2<bool>(false, false), false)) || !all(vec3<bool>(false, false, false)))));
    let var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_3 + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1114f, -750f, -1095f) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_3.x, -2277f, -1187f)))) + vec3<f32>(_wgslsmith_f_op_f32(579f - 393f), _wgslsmith_f_op_f32(-var_3.x), -1000f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1981f), any(vec2<bool>(true, false)))), var_3.x, var_3.x) - var_3));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1000f, _wgslsmith_f_op_f32(sign(-148f))), var_4.zz)) + var_3.yy), -1355f, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_3.x - var_4.x))), _wgslsmith_f_op_f32(step(-2091f, _wgslsmith_f_op_f32(floor(177f)))), true)), _wgslsmith_f_op_f32(-1348f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.x, var_4.x)))), 523f), vec4<u32>(_wgslsmith_mult_u32(4294967295u, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(15536u, ~42579u), 22u)]), ~min(~var_0, ~var_0), countOneBits(~(~u_input.c.x)), u_input.c.x));
}

