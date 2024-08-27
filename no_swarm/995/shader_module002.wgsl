struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<bool>,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 26> = array<f32, 26>(1570f, -966f, -955f, -905f, 294f, -668f, -1000f, -1305f, 771f, -518f, 1030f, -402f, 1083f, -1709f, 468f, 734f, -651f, 412f, 465f, -1000f, 829f, -1912f, -148f, -495f, -1548f, 1163f);

var<private> global1: u32 = 28360u;

var<private> global2: Struct_1 = Struct_1(0u, vec2<f32>(346f, -416f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: u32) -> vec4<bool> {
    var var_0 = ~_wgslsmith_div_u32(max(firstLeadingBit(11324u), abs(~arg_3)), _wgslsmith_sub_u32(select(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.a, arg_3), vec3<u32>(1u, u_input.a, arg_3)), false), ~21844u));
    global1 = arg_0.a;
    var var_1 = ~(~(~(reverseBits(vec3<u32>(arg_0.a, arg_3, arg_3)) ^ min(vec3<u32>(u_input.a, global2.a, global2.a), vec3<u32>(4294967295u, 3114u, global2.a)))));
    var var_2 = Struct_3(Struct_2(true, arg_0, _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(68503u, 26u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_add_u32(u_input.a, var_1.x), arg_0.a, firstTrailingBit(0u)), ~(~vec3<u32>(global2.a, 4294967295u, global2.a)))), select(!vec4<bool>(!arg_2.x, arg_2.x | arg_2.x, arg_0.a < global2.a, false), select(!(!vec4<bool>(false, true, arg_2.x, arg_2.x)), vec4<bool>(arg_2.x, select(arg_2.x, arg_2.x, arg_2.x), !arg_2.x, arg_2.x), arg_2.x), vec4<bool>((0u >= global2.a) | !arg_2.x, !(u_input.c.x != u_input.c.x), true, true | (true && arg_2.x))), arg_0, countOneBits(37780u));
    global1 = 0u;
    return !var_2.b;
}

fn func_2() -> vec3<i32> {
    let var_0 = global0[_wgslsmith_index_u32(1u, 26u)];
    var var_1 = Struct_4(select(!select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !func_3(Struct_1(55765u, vec2<f32>(-1000f, global0[_wgslsmith_index_u32(0u, 26u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(743f, global0[_wgslsmith_index_u32(u_input.a, 26u)], global2.b.x, 158f) - vec4<f32>(1115f, 1000f, global2.b.x, global0[_wgslsmith_index_u32(1u, 26u)])), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), false), reverseBits(global2.a)), all(vec3<bool>(any(vec3<bool>(false, true, false)), true, false))));
    global1 = select(min(~global2.a, _wgslsmith_mult_u32(1u, 4294967295u)), global2.a, false);
    global0 = array<f32, 26>();
    let var_2 = 1u;
    return _wgslsmith_mult_vec3_i32(abs(select(max(reverseBits(vec3<i32>(u_input.b, -8950i, 11718i)), countOneBits(vec3<i32>(u_input.c.x, -2147483647i, 1i))), vec3<i32>(u_input.c.x, ~u_input.c.x, ~u_input.b), true)), abs(_wgslsmith_add_vec3_i32(~vec3<i32>(u_input.c.x, -10545i, u_input.c.x), vec3<i32>(u_input.c.x, -2147483647i, u_input.b)) | firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, 2771i, -1i), vec3<i32>(u_input.b, u_input.b, u_input.c.x)))));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = ~(func_2() >> (vec3<u32>(countOneBits(61004u), max(~global2.a, global2.a), countOneBits(global2.a)) % vec3<u32>(32u)));
    var var_1 = Struct_3(Struct_2(any(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), func_3(Struct_1(73405u, global2.b), vec4<f32>(-1890f, arg_2.x, 678f, global2.b.x), vec3<bool>(true, false, false), global2.a).xzy)), Struct_1(u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2))), arg_2.x, vec3<u32>(global2.a >> (u_input.a % 32u), _wgslsmith_clamp_u32(53603u, 31595u, 4294967295u), global2.a) >> ((~vec3<u32>(u_input.a, 4294967295u, 1u) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(global2.a, 1u, global2.a), vec3<u32>(1u, 15342u, 76731u), vec3<u32>(0u, u_input.a, u_input.a)) % vec3<u32>(32u))) % vec3<u32>(32u))), vec4<bool>(select(any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), true)), true, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.x, 2147483647i), vec2<i32>(var_0.x, u_input.b)) >= (i32(-1i) * -2147483647i)), func_3(Struct_1(~0u, global2.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, global0[_wgslsmith_index_u32(global2.a, 26u)], global2.b.x, 886f))), vec3<bool>(true, true, true), ~u_input.a).x, true, any(vec3<bool>(true, true, true))), Struct_1(select(u_input.a, 34940u, any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false)))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.b + global2.b) + _wgslsmith_f_op_vec2_f32(-arg_2)), _wgslsmith_f_op_vec2_f32(-global2.b)))), 47987u);
    var var_2 = select(reverseBits(_wgslsmith_div_vec4_u32(abs(vec4<u32>(43100u, global2.a, 0u, var_1.d) & vec4<u32>(global2.a, 65879u, 14694u, 4294967295u)), countOneBits(~vec4<u32>(global2.a, 1u, var_1.a.b.a, 4294967295u)))), vec4<u32>(global2.a, var_1.c.a, 45159u, u_input.a), global2.a < ~0u);
    var var_3 = Struct_2(!(!any(vec4<bool>(false, false, var_1.a.a, var_1.a.a))), var_1.a.b, 1317f, firstLeadingBit(min(vec3<u32>(var_2.x, u_input.a ^ 0u, ~0u), vec3<u32>(var_2.x, select(var_2.x, var_2.x, var_1.a.a), 9739u & var_1.a.d.x))));
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.b.b.x, -1005f, 511f, var_1.a.b.b.x)) - vec4<f32>(1635f, var_3.b.b.x, 330f, var_3.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(328f, -205f, -1823f, global0[_wgslsmith_index_u32(0u, 26u)]), vec4<f32>(1000f, 100f, var_3.c, 424f)))), vec4<bool>(true, true, !var_3.a, true))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(global2.b.x, -258f)), arg_2.x, -613f, _wgslsmith_f_op_f32(-var_3.c)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_4.x * arg_2.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    global0 = array<f32, 26>();
    global0 = array<f32, 26>();
    let var_0 = 903f;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~4294967295u, 0u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, global2.a), 4294967295u), ~(~1146u), 4294967295u), u_input.a), firstTrailingBit(global2.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-vec4<i32>(u_input.c.x, u_input.b, -26035i, u_input.c.x), ~vec4<i32>(2147483647i, -1i, 27482i, 2147483647i), global2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.x) * _wgslsmith_f_op_f32(select(var_0, -257f, true))) - 985f)));
}

