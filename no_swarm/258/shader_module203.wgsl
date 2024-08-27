struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_4 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 1>;

var<private> global1: vec4<f32>;

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(false, vec3<i32>(i32(-2147483648), 1i, 8628i), false), Struct_1(false, vec3<i32>(i32(-2147483648), 2147483647i, -2127i), false));

var<private> global4: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(37413u, 0u, 15290u, 18369u), vec4<u32>(101231u, 0u, 4294967295u, 1u), vec4<u32>(45789u, 4294967295u, 4294967295u, 54387u), vec4<u32>(0u, 28279u, 18757u, 4294967295u), vec4<u32>(13366u, 1u, 0u, 18691u), vec4<u32>(43894u, 63554u, 110822u, 1u), vec4<u32>(8143u, 1u, 18507u, 4294967295u), vec4<u32>(4294967295u, 0u, 26556u, 53546u), vec4<u32>(0u, 63647u, 19415u, 4294967295u), vec4<u32>(1u, 52687u, 4294967295u, 1u), vec4<u32>(6517u, 48627u, 40604u, 4294967295u), vec4<u32>(8698u, 51374u, 9746u, 58428u), vec4<u32>(106347u, 4294967295u, 1u, 36988u), vec4<u32>(44434u, 17418u, 1u, 0u), vec4<u32>(28895u, 1u, 40657u, 0u), vec4<u32>(4294967295u, 1u, 4294967295u, 84519u), vec4<u32>(35880u, 22425u, 28706u, 1u), vec4<u32>(1u, 0u, 56439u, 80328u), vec4<u32>(68052u, 26570u, 1u, 4294967295u), vec4<u32>(58787u, 12315u, 1u, 0u));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec2<u32> {
    let var_0 = global2.d;
    var var_1 = 0i;
    global0 = array<i32, 1>();
    var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(-(global2.e.x ^ _wgslsmith_sub_i32(-12351i, global2.d)), countOneBits(-global0[_wgslsmith_index_u32(~u_input.a, 1u)]), _wgslsmith_mult_i32(global0[_wgslsmith_index_u32(4294967295u, 1u)] ^ global0[_wgslsmith_index_u32(min(global2.b.x, 66601u), 1u)], _wgslsmith_mod_i32(18187i, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0[_wgslsmith_index_u32(4294967295u, 1u)]), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(1975u, 1u)]))))), firstTrailingBit(vec3<i32>(~(-24120i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(global2.e.x, global0[_wgslsmith_index_u32(u_input.a, 1u)], global2.d, 1622i), global2.e), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(u_input.a, 1u)], 0i), ~global2.e.x, -29885i), ~_wgslsmith_div_i32(global2.d, -15633i))));
    let var_2 = !any(select(vec3<bool>(global2.a.x, all(global2.a.zz), global2.a.x || false), !global2.a, !any(vec2<bool>(false, false))));
    return _wgslsmith_mult_vec2_u32(vec2<u32>(21187u, _wgslsmith_dot_vec4_u32(select(countOneBits(vec4<u32>(48410u, 1u, 43135u, u_input.a)), ~vec4<u32>(0u, 0u, u_input.a, 12245u), select(vec4<bool>(global2.a.x, true, var_2, true), vec4<bool>(var_2, global2.a.x, global2.a.x, true), false)), global4[_wgslsmith_index_u32(~global2.b.x, 20u)])), global2.c.xx);
}

fn func_2(arg_0: u32, arg_1: vec4<u32>) -> Struct_2 {
    let var_0 = func_3();
    global3 = array<Struct_1, 2>();
    var var_1 = Struct_3(global2.c.yy, -757f);
    let var_2 = global3[_wgslsmith_index_u32(countOneBits(1u), 2u)];
    let var_3 = -min(vec3<i32>(-1i, -_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(global0[_wgslsmith_index_u32(var_1.a.x, 1u)], var_2.b.x)), ~(~global0[_wgslsmith_index_u32(48012u, 1u)])), var_2.b);
    return Struct_2(select(vec3<bool>(any(!global2.a.zy), any(!vec2<bool>(true, global2.a.x)), var_2.a), !global2.a, global2.a.x), ~max(~global2.b, _wgslsmith_clamp_vec3_u32(arg_1.xww, vec3<u32>(90943u, 23011u, 1u), vec3<u32>(4294967295u, 16037u, 54243u)) >> (global2.b % vec3<u32>(32u))), vec3<u32>(~max(1u, u_input.a), 17450u, 4294967295u), ~_wgslsmith_mult_i32(global2.d, min(firstLeadingBit(-1i), 2147483647i)), vec4<i32>(var_3.x, var_2.b.x ^ ((2674i >> (u_input.a % 32u)) & abs(-9746i)), ~(~(~(-1i))), min(firstLeadingBit(abs(var_2.b.x)), min(global2.d, _wgslsmith_mod_i32(global2.e.x, 29981i)))));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> Struct_2 {
    let var_0 = func_2(~4131u, vec4<u32>(55459u, _wgslsmith_clamp_u32(~global2.b.x, 51157u, _wgslsmith_mod_u32(54920u, 23440u)) >> (4294967295u % 32u), global2.c.x, _wgslsmith_sub_u32(13855u, firstLeadingBit(_wgslsmith_mult_u32(20656u, u_input.a)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(996f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-961f * -1000f)))))) * _wgslsmith_f_op_f32(-1128f + global1.x));
    let var_2 = ~_wgslsmith_mod_u32(98123u, ~global2.c.x);
    var var_3 = arg_0;
    var var_4 = abs(firstTrailingBit(vec3<i32>(firstLeadingBit(-10744i), 0i, abs(~0i))));
    return func_2(var_0.b.x, vec4<u32>(var_0.c.x, ~u_input.a, _wgslsmith_add_u32(var_2, 1u), var_2) << (~vec4<u32>(global2.b.x, var_0.c.x >> (55645u % 32u), var_0.b.x, 79697u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 1>();
    let var_0 = func_1(global3[_wgslsmith_index_u32(firstLeadingBit(4294967295u), 2u)], all(select(global2.a, global2.a, !(!global2.a))));
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.c.x, 4294967295u, 74098u), ~abs(var_0.c));
    var var_2 = vec3<bool>(false, all(global2.a), global2.a.x);
    var var_3 = global2.d;
    global4 = array<vec4<u32>, 20>();
    var var_4 = Struct_4(vec3<f32>(899f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global1.x)) * global1.x), _wgslsmith_div_f32(-481f, global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_4.a.x)) * 1562f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(503f + _wgslsmith_f_op_f32(global1.x * 424f))))));
}

