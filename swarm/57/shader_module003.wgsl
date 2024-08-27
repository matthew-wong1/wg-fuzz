struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(vec3<i32>(2147483647i, -11057i, -39413i)), Struct_2(vec3<i32>(6089i, -12770i, 2147483647i)), Struct_2(vec3<i32>(23324i, 2147483647i, 64026i)), Struct_2(vec3<i32>(44410i, 32176i, -35053i)), Struct_2(vec3<i32>(-49596i, -46340i, 0i)), Struct_2(vec3<i32>(2147483647i, -13434i, -57214i)), Struct_2(vec3<i32>(-1i, -7041i, -1i)), Struct_2(vec3<i32>(2147483647i, -1i, -4369i)), Struct_2(vec3<i32>(-6048i, 811i, 2147483647i)));

var<private> global1: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(2147483647i, -1i), vec2<i32>(-27546i, i32(-2147483648)), vec2<i32>(23241i, 52612i), vec2<i32>(-1i, 2147483647i), vec2<i32>(18193i, -36327i), vec2<i32>(-1i, 0i), vec2<i32>(27821i, -1i), vec2<i32>(-16831i, 29525i), vec2<i32>(-1i, 26327i), vec2<i32>(-1i, -39332i), vec2<i32>(i32(-2147483648), -39390i), vec2<i32>(-2046i, 1i), vec2<i32>(-21936i, 0i), vec2<i32>(68183i, -57936i), vec2<i32>(2147483647i, -13734i), vec2<i32>(0i, -12937i), vec2<i32>(-3947i, 2147483647i), vec2<i32>(29878i, -1i), vec2<i32>(-43979i, i32(-2147483648)), vec2<i32>(35915i, -11218i));

var<private> global2: array<Struct_3, 9> = array<Struct_3, 9>(Struct_3(Struct_2(vec3<i32>(-45034i, -36149i, 65457i))), Struct_3(Struct_2(vec3<i32>(-1i, 3898i, -7109i))), Struct_3(Struct_2(vec3<i32>(-1i, 20181i, -1i))), Struct_3(Struct_2(vec3<i32>(11596i, 0i, 2147483647i))), Struct_3(Struct_2(vec3<i32>(i32(-2147483648), 2496i, 29179i))), Struct_3(Struct_2(vec3<i32>(29781i, i32(-2147483648), i32(-2147483648)))), Struct_3(Struct_2(vec3<i32>(-1i, 2147483647i, -10829i))), Struct_3(Struct_2(vec3<i32>(14257i, 63992i, 9743i))), Struct_3(Struct_2(vec3<i32>(0i, 1i, 37191i))));

var<private> global3: array<u32, 17>;

var<private> global4: array<Struct_1, 32>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    global0 = array<Struct_2, 9>();
    return _wgslsmith_add_i32(u_input.c, _wgslsmith_mult_i32(-110202i, _wgslsmith_div_i32(abs(u_input.a.x), i32(-1i) * -u_input.e.x)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: i32) -> vec3<f32> {
    let var_0 = min(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, firstLeadingBit(func_3())), u_input.a.x), vec2<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(u_input.e, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.d, ~39516u), 17u)], 20u)])));
    global0 = array<Struct_2, 9>();
    var var_1 = _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 1i, _wgslsmith_mult_i32(arg_0.c.x ^ _wgslsmith_div_i32(-27572i, -1821i), u_input.a.x << ((u_input.d << (arg_0.e.x % 32u)) % 32u)), i32(-1i) * -arg_3), select(~(vec4<i32>(arg_3, 1i, arg_3, arg_3) ^ vec4<i32>(-38173i, 3082i, 14990i, var_0.x)), -firstLeadingBit(abs(vec4<i32>(u_input.a.x, 9999i, arg_2.a.x, arg_2.a.x))), arg_0.d));
    var var_2 = any(select(vec2<bool>(arg_0.a, arg_0.a), vec2<bool>(false | select(arg_0.d, true, false), true), !select(vec2<bool>(arg_0.a, arg_0.d), !vec2<bool>(arg_0.a, arg_0.a), arg_0.d)));
    global2 = array<Struct_3, 9>();
    return vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(564f)) - _wgslsmith_f_op_f32(abs(arg_1.x))) + 1481f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, arg_1.x)))), -334f, arg_0.a)), arg_1.x);
}

fn func_4(arg_0: vec3<f32>, arg_1: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec3_i32(max(-_wgslsmith_div_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(u_input.c, u_input.a.x, 15954i)), vec3<i32>(u_input.c, u_input.e.x, _wgslsmith_mult_i32(-28890i, _wgslsmith_mult_i32(-1i, u_input.b)))), vec3<i32>(~(abs(2147483647i) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(1u, 17u)], 3334u), vec2<u32>(4294967295u, 4294967295u)) % 32u)), -9683i, _wgslsmith_sub_i32(reverseBits(u_input.e.x), abs(-2147483647i))));
    var var_1 = select(select(!(!vec4<bool>(false, arg_1, arg_1, false)), !vec4<bool>(any(vec3<bool>(arg_1, arg_1, arg_1)), arg_1, !arg_1, true), select(!(!vec4<bool>(true, arg_1, true, true)), select(select(vec4<bool>(arg_1, true, true, true), vec4<bool>(arg_1, arg_1, arg_1, false), vec4<bool>(arg_1, arg_1, arg_1, arg_1)), select(vec4<bool>(false, false, true, arg_1), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, arg_1, true, false)), false), true)), select(select(!vec4<bool>(arg_1, true, arg_1, arg_1), select(!vec4<bool>(true, true, arg_1, arg_1), !vec4<bool>(arg_1, arg_1, arg_1, false), select(vec4<bool>(arg_1, arg_1, arg_1, arg_1), vec4<bool>(arg_1, arg_1, arg_1, arg_1), arg_1)), all(!vec3<bool>(arg_1, false, true))), select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, arg_1, true), vec4<bool>(arg_1, arg_1, arg_1, false)), vec4<bool>(arg_1, true, arg_1 && false, arg_1), vec4<bool>(true, !arg_1, true, true)), true), true);
    let var_2 = global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u << (u_input.d % 32u), 17u)], 9u)];
    global2 = array<Struct_3, 9>();
    let var_3 = var_2.a;
    return !(!var_1.yyy);
}

fn func_5(arg_0: bool, arg_1: vec3<bool>, arg_2: Struct_3) -> vec3<f32> {
    var var_0 = ~vec2<u32>(50789u, u_input.d);
    let var_1 = Struct_3(Struct_2(select(_wgslsmith_mult_vec3_i32(arg_2.a.a, arg_2.a.a), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.e.x, arg_2.a.a.x, -2147483647i), arg_2.a.a), !arg_0) >> (_wgslsmith_div_vec3_u32(vec3<u32>(19597u, u_input.d, 8568u), ~vec3<u32>(u_input.d, 74529u, var_0.x)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-488f * -193f) + _wgslsmith_div_f32(936f, 1253f)), _wgslsmith_f_op_f32(max(-1507f, _wgslsmith_f_op_f32(f32(-1f) * -696f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1245f)))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-548f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1006f * 154f))), _wgslsmith_f_op_f32(-587f - 1005f))))));
    var var_3 = global4[_wgslsmith_index_u32(max(var_0.x | ~(~0u), u_input.d), 32u)];
    var var_4 = any(vec4<bool>(any(select(arg_1, select(vec3<bool>(true, false, false), vec3<bool>(true, false, arg_1.x), arg_1), all(vec3<bool>(true, true, arg_0)))), !arg_1.x, any(!select(vec2<bool>(true, false), vec2<bool>(false, false), arg_1.x)), all(vec3<bool>(true, all(arg_1.xy), true))));
    return vec3<f32>(_wgslsmith_f_op_f32(-var_2.x), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-870f, var_2.x, arg_0))));
}

fn func_1() -> bool {
    global3 = array<u32, 17>();
    let var_0 = global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(u_input.d, 17u)], 17u)], 9u)];
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_5(true, !func_4(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(false, 0i, global1[_wgslsmith_index_u32(22485u, 20u)], false, vec3<u32>(1u, u_input.d, 49694u)), vec3<f32>(-374f, 389f, 119f), global0[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(27368u, 17u)], 9u)], -1i)), true), Struct_3(global0[_wgslsmith_index_u32(~abs(u_input.d), 9u)]))));
    global3 = array<u32, 17>();
    let var_2 = true;
    return any(func_4(var_1, true).zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(11956u, 9u)];
    var var_1 = select(false, false, all(vec4<bool>(false, true | func_1(), false, (var_0.a.x != 2147483647i) == false)));
    let x = u_input.a;
    s_output = StorageBuffer(1553i);
}

