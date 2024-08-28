struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(0i, i32(-2147483648), -2719i), vec3<i32>(i32(-2147483648), 1i, 0i), vec3<i32>(1i, i32(-2147483648), 17295i), vec3<i32>(-18710i, 13468i, -28581i), vec3<i32>(-1i, 29533i, i32(-2147483648)), vec3<i32>(-43614i, -1135i, -1446i), vec3<i32>(-43219i, 2147483647i, 2147483647i), vec3<i32>(2793i, 2147483647i, 8014i), vec3<i32>(-1i, -1i, 1i), vec3<i32>(i32(-2147483648), 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -34775i, -61273i), vec3<i32>(0i, -28852i, -1i), vec3<i32>(0i, 25011i, 9024i), vec3<i32>(1682i, -27457i, 38318i), vec3<i32>(1i, i32(-2147483648), 29614i), vec3<i32>(48931i, 6201i, 1i));

var<private> global2: Struct_2;

var<private> global3: array<vec2<bool>, 23>;

var<private> global4: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> f32 {
    global3 = array<vec2<bool>, 23>();
    global0 = Struct_3(global0.c.xyz, global0.b, vec4<i32>(countOneBits(global0.a.x), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(16909i, global0.a.x), global0.a.xz) ^ countOneBits(1i), firstTrailingBit(reverseBits(-23840i))), global0.a.x | 44233i, 0i));
    var var_0 = true;
    let var_1 = Struct_3(select(reverseBits(firstLeadingBit(global1[_wgslsmith_index_u32(arg_1.d.x, 16u)])) & _wgslsmith_mult_vec3_i32(~global1[_wgslsmith_index_u32(0u, 16u)], max(global0.c.wxz, vec3<i32>(global0.a.x, 0i, global0.a.x))), global1[_wgslsmith_index_u32(~(~min(0u, arg_0.a)), 16u)], false), Struct_2(0u >> (~arg_0.a % 32u), -408f, _wgslsmith_f_op_f32(f32(-1f) * -292f), arg_1.d), global0.c);
    var var_2 = !vec4<bool>(!(!select(false, true, true)), false, true, true);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.b + -1000f))), var_1.b.c));
}

fn func_2(arg_0: u32, arg_1: f32) -> Struct_3 {
    global3 = array<vec2<bool>, 23>();
    global1 = array<vec3<i32>, 16>();
    let var_0 = abs(-global0.c.yyz);
    global2 = Struct_2(1u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1854f + _wgslsmith_f_op_f32(func_3(global0.b, global0.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1)), 461f)), vec2<u32>(arg_0, 62598u));
    var var_1 = Struct_3(-global1[_wgslsmith_index_u32(~0u, 16u)], Struct_2(1u, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1 * global2.c), _wgslsmith_f_op_f32(-global2.c)) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(458f, 1588f) + _wgslsmith_f_op_f32(-354f - global2.b))), _wgslsmith_f_op_f32(select(global2.b, global0.b.b, any(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true))))), ~countOneBits(vec2<u32>(1u, 38790u))), select(vec4<i32>(~min(var_0.x, global0.c.x), _wgslsmith_sub_i32(var_0.x, 27046i), countOneBits(_wgslsmith_mod_i32(var_0.x, var_0.x)), ~global0.c.x), ~(vec4<i32>(32149i, -2147483647i, -16939i, var_0.x) >> (abs(vec4<u32>(global2.a, 0u, 77047u, 0u)) % vec4<u32>(32u))), !vec4<bool>(any(vec2<bool>(false, true)), var_0.x <= global0.c.x, false, any(vec4<bool>(true, true, true, true)))));
    return Struct_3(vec3<i32>(global0.c.x, -_wgslsmith_add_i32(firstLeadingBit(var_1.a.x), _wgslsmith_add_i32(11116i, -33094i)), abs(_wgslsmith_mult_i32(-23348i, 38491i) << (u_input.a % 32u))), var_1.b, vec4<i32>(-30923i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec4_i32(~global0.c, select(vec4<i32>(2147483647i, global0.c.x, -12273i, global0.c.x), global0.c, false))), var_0.x << (~(~4294967295u) % 32u), var_1.a.x));
}

fn func_1() -> f32 {
    global0 = func_2(~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global2.c, -1007f, true | any(global3[_wgslsmith_index_u32(u_input.a, 23u)]))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-502f - 684f))));
    let var_0 = _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~(-global0.a), global1[_wgslsmith_index_u32(4294967295u, 16u)]), _wgslsmith_add_vec3_i32(~global1[_wgslsmith_index_u32(0u, 16u)], _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -global1[_wgslsmith_index_u32(u_input.a, 16u)], ~global1[_wgslsmith_index_u32(~77268u, 16u)])));
    var var_1 = Struct_1(true);
    global1 = array<vec3<i32>, 16>();
    var var_2 = reverseBits((vec4<i32>(-2147483647i, _wgslsmith_add_i32(global0.a.x, 1i), ~global0.a.x, 1i) ^ global0.c) & global0.c);
    return _wgslsmith_f_op_f32(-func_2(~11028u, _wgslsmith_div_f32(-190f, 248f)).b.c);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(~117954u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_1()))), 144f, vec2<u32>(~(~17440u), global2.a) ^ (_wgslsmith_mult_vec2_u32(select(vec2<u32>(1u, 0u), global0.b.d, global3[_wgslsmith_index_u32(1u, 23u)]), vec2<u32>(u_input.a, global2.a)) << (func_2(~52198u, _wgslsmith_f_op_f32(exp2(global2.c))).b.d % vec2<u32>(32u))));
    let var_0 = _wgslsmith_dot_vec4_u32(max(countOneBits(vec4<u32>(u_input.a, u_input.a, 1u, 245u)), ~vec4<u32>(1u, 56255u, 46988u, 1u)), ~abs(vec4<u32>(0u, global2.a, global2.a, u_input.a) >> (vec4<u32>(u_input.a, 31235u, 53739u, 16161u) % vec4<u32>(32u)))) ^ 0u;
    global1 = array<vec3<i32>, 16>();
    let var_1 = Struct_3(-func_2(51305u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.c)))).a, Struct_2(~u_input.a, global0.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -348f)), global2.d), vec4<i32>(_wgslsmith_add_i32(firstTrailingBit(~1i), ~(~global0.a.x)), 30685i, _wgslsmith_div_i32(1i, min(_wgslsmith_sub_i32(-30632i, 0i), _wgslsmith_mod_i32(-2147483647i, global0.a.x))), ~(-2147483647i)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-305f, 1f)) + _wgslsmith_f_op_f32(-global0.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(abs(countOneBits(vec4<u32>(~global2.a, abs(35970u), 25363u, firstLeadingBit(var_1.b.a)))));
}

