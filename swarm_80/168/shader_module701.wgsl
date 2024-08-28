struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: f32,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 32> = array<u32, 32>(85936u, 12126u, 1u, 1u, 83169u, 4294967295u, 50408u, 17u, 11178u, 1u, 111170u, 15265u, 7858u, 0u, 1u, 121559u, 0u, 4294967295u, 0u, 4294967295u, 25440u, 1u, 16992u, 60892u, 0u, 52096u, 22056u, 2152u, 4294967295u, 5525u, 46496u, 0u);

var<private> global1: array<Struct_1, 22>;

var<private> global2: array<i32, 2>;

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: u32, arg_1: u32) -> f32 {
    var var_0 = ~_wgslsmith_mult_u32(arg_1, global0[_wgslsmith_index_u32(83727u, 32u)]);
    let var_1 = 0u;
    global2 = array<i32, 2>();
    global2 = array<i32, 2>();
    let var_2 = abs(~firstLeadingBit(vec3<u32>(_wgslsmith_add_u32(66226u, 9469u), arg_1 ^ arg_1, arg_0)));
    return 118f;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec4<u32> {
    var var_0 = Struct_1(arg_1.a, any(select(vec2<bool>(false, true), arg_0.a, !global3.x)) | (abs(2147483647i & arg_0.d.x) <= arg_1.d.x), -523f, select(arg_1.d, vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(22766i, 12221i, -32852i), -2147483647i), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, global2[_wgslsmith_index_u32(0u, 2u)])), vec4<i32>(1i, -2147483647i, global2[_wgslsmith_index_u32(u_input.b, 2u)], 6437i)), arg_0.d.x, -2147483647i), select(!vec4<bool>(arg_1.b, arg_0.a.x, false, false), select(vec4<bool>(true, false, arg_1.a.x, global3.x), !vec4<bool>(false, arg_0.a.x, arg_0.b, false), arg_1.c < arg_0.c), -arg_0.d.x <= ~0i)));
    let var_1 = select(!vec4<bool>(true, arg_0.b, false, any(vec4<bool>(var_0.b, false, global3.x, global3.x))), !(!(!select(vec4<bool>(false, false, var_0.b, false), vec4<bool>(false, true, var_0.b, true), vec4<bool>(false, true, false, false)))), vec4<bool>(true, all(!vec3<bool>(global3.x, true, true)) & (91512u != global0[_wgslsmith_index_u32(108898u << (0u % 32u), 32u)]), !(true & !global3.x), !any(vec4<bool>(true, global3.x, arg_1.a.x, true))));
    let var_2 = true;
    global2 = array<i32, 2>();
    let var_3 = Struct_1(select(select(!var_0.a, vec2<bool>(true, true), !select(vec2<bool>(false, false), arg_0.a, vec2<bool>(false, true))), arg_1.a, true), true, 1978f, (~var_0.d << ((~vec4<u32>(global0[_wgslsmith_index_u32(u_input.b, 32u)], u_input.a, 20985u, global0[_wgslsmith_index_u32(u_input.b, 32u)]) << (vec4<u32>(66119u, u_input.b, global0[_wgslsmith_index_u32(u_input.a, 32u)], 35306u) % vec4<u32>(32u))) % vec4<u32>(32u))) | _wgslsmith_sub_vec4_i32((vec4<i32>(-1i, global2[_wgslsmith_index_u32(0u, 2u)], 0i, -2147483647i) | arg_1.d) << (abs(vec4<u32>(global0[_wgslsmith_index_u32(67067u, 32u)], 81701u, 102262u, u_input.b)) % vec4<u32>(32u)), arg_0.d));
    return ~_wgslsmith_mod_vec4_u32(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, u_input.a, u_input.a, 4294967295u), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.b, 32u)], 4294967295u))), ~(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 32u)], 32u)], u_input.a, 1u, 0u) << (firstLeadingBit(vec4<u32>(21157u, u_input.b, global0[_wgslsmith_index_u32(1u, 32u)], u_input.b)) % vec4<u32>(32u))));
}

fn func_1() -> u32 {
    let var_0 = true;
    let var_1 = Struct_1(select(vec2<bool>(_wgslsmith_f_op_f32(1015f * -223f) > _wgslsmith_f_op_f32(select(1343f, 195f, var_0)), all(vec4<bool>(true, global3.x, false, global3.x)) && select(global3.x, global3.x, true)), !(!select(vec2<bool>(global3.x, false), vec2<bool>(true, var_0), vec2<bool>(var_0, var_0))), true), true, -1635f, ~vec4<i32>(-7366i, global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26722u, 32u)], 32u)], u_input.b), 2u)], firstLeadingBit(global2[_wgslsmith_index_u32(u_input.b, 2u)]), i32(-1i) * -2851i));
    let var_2 = Struct_1(!vec2<bool>(var_0, global3.x), var_0, _wgslsmith_f_op_f32(func_2(u_input.b << (15456u % 32u), 10945u)), ((var_1.d >> (func_3(var_1, var_1) % vec4<u32>(32u))) & (countOneBits(var_1.d) ^ vec4<i32>(var_1.d.x, -2147483647i, 36689i, -12481i))) | abs(abs(var_1.d)));
    let var_3 = all(select(!(!var_2.a), select(vec2<bool>(true, true), select(var_2.a, !var_1.a, vec2<bool>(true, var_2.a.x)), _wgslsmith_f_op_f32(var_2.c - -1019f) <= _wgslsmith_f_op_f32(-var_2.c)), (_wgslsmith_f_op_f32(var_2.c * 529f) > var_1.c) || var_0));
    var var_4 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_mult_vec2_u32(firstLeadingBit(vec2<u32>(u_input.b, global0[_wgslsmith_index_u32(33029u, 32u)])), abs(~vec2<u32>(17577u, u_input.a))), vec2<u32>(global0[_wgslsmith_index_u32(~(global0[_wgslsmith_index_u32(u_input.a, 32u)] ^ global0[_wgslsmith_index_u32(u_input.a, 32u)]), 32u)], global0[_wgslsmith_index_u32(~(~global0[_wgslsmith_index_u32(u_input.b, 32u)]), 32u)])), countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, global0[_wgslsmith_index_u32(80037u, 32u)]), 32u)], 70333u)));
    return firstLeadingBit(_wgslsmith_add_u32(var_4.x, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(~(~u_input.a << (_wgslsmith_div_u32(69402u, 41227u) % 32u)), 22u)];
    let var_1 = _wgslsmith_f_op_f32(1305f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c, 105f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c) - var_0.c))));
    global0 = array<u32, 32>();
    let var_2 = _wgslsmith_mod_u32(~(~u_input.b), _wgslsmith_clamp_u32(~4294967295u, func_1(), max(_wgslsmith_dot_vec4_u32(vec4<u32>(41320u, global0[_wgslsmith_index_u32(4294967295u, 32u)], u_input.a, 18565u) | vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 32u)], 32u)], 32u)], 98974u, 4294967295u), func_3(Struct_1(var_0.a, var_0.b, -1871f, var_0.d), Struct_1(var_0.a, var_0.b, 1135f, var_0.d))), 1u)));
    global3 = !(!(!select(!var_0.a, var_0.a, vec2<bool>(true, true))));
    global3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_2(0u, var_2)), max(0u, ~reverseBits(_wgslsmith_mult_u32(11974u, var_2))));
}

