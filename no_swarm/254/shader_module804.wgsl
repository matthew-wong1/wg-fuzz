struct Struct_1 {
    a: i32,
    b: f32,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1) -> f32 {
    var var_0 = -836f;
    global0 = array<bool, 31>();
    let var_1 = select(!(!(!vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(arg_0.c.x, 31u)]))), !select(!select(vec4<bool>(true, true, global0[_wgslsmith_index_u32(arg_0.c.x, 31u)], false), vec4<bool>(true, false, global0[_wgslsmith_index_u32(arg_0.c.x, 31u)], false), vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c.x, 31u)], global0[_wgslsmith_index_u32(arg_0.c.x, 31u)], false, global0[_wgslsmith_index_u32(44953u, 31u)])), !vec4<bool>(false, false, global0[_wgslsmith_index_u32(0u, 31u)], false), !(!vec4<bool>(true, true, false, global0[_wgslsmith_index_u32(arg_0.c.x, 31u)]))), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0.c.x << (_wgslsmith_div_u32(47401u, arg_0.c.x) % 32u), 31u)], true, true | (u_input.a.x == -10014i), _wgslsmith_f_op_f32(-arg_0.b) < _wgslsmith_f_op_f32(arg_0.b - -870f)));
    var_0 = _wgslsmith_f_op_f32(-arg_0.b);
    var_0 = arg_0.b;
    return -801f;
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_sub_u32(~58832u, firstLeadingBit(arg_1));
    var var_1 = arg_0;
    global0 = array<bool, 31>();
    global0 = array<bool, 31>();
    var var_2 = select(!select(vec2<bool>(!global0[_wgslsmith_index_u32(arg_0.c.x, 31u)], global0[_wgslsmith_index_u32(~79079u, 31u)]), !select(vec2<bool>(true, true), vec2<bool>(true, global0[_wgslsmith_index_u32(13156u, 31u)]), vec2<bool>(true, false)), true), vec2<bool>(global0[_wgslsmith_index_u32(var_1.c.x, 31u)], false), true);
    return Struct_1(i32(-1i) * -2147483647i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.x << (arg_0.c.x % 32u), -301f, arg_0.c)))), ~(select(vec4<u32>(1u, 82035u, arg_0.c.x, 1u), vec4<u32>(arg_0.c.x, arg_1, var_1.c.x, var_1.c.x), true | global0[_wgslsmith_index_u32(0u, 31u)]) & _wgslsmith_sub_vec4_u32(arg_0.c, max(var_1.c, arg_0.c))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = func_2(func_2(func_2(arg_1, var_0.c.x), 51805u), arg_1.c.x);
    var_0 = Struct_1(_wgslsmith_dot_vec3_i32(min(abs(-vec3<i32>(var_0.a, arg_0.a, u_input.a.x)), countOneBits(~vec3<i32>(1i, arg_2, u_input.a.x))), abs(vec3<i32>(4489i, -50042i, 2147483647i)) >> (arg_1.c.wzw % vec3<u32>(32u))), arg_1.b, arg_0.c);
    return func_2(func_2(Struct_1(_wgslsmith_div_i32(0i, _wgslsmith_add_i32(u_input.a.x, arg_0.a)), arg_1.b, select(vec4<u32>(arg_1.c.x, 4294967295u, var_0.c.x, 21963u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c.x, 15250u, arg_0.c.x, arg_0.c.x), vec4<u32>(arg_1.c.x, 4294967295u, 56125u, 590u)), vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.c.x, 31u)], false, false))), 4294967295u), 4294967295u);
}

fn func_5(arg_0: Struct_1, arg_1: u32, arg_2: u32, arg_3: i32) -> vec4<i32> {
    let var_0 = 0i;
    var var_1 = _wgslsmith_mult_u32(arg_2, reverseBits(_wgslsmith_div_u32(~(1u ^ arg_1), ~arg_1)));
    var var_2 = arg_0;
    let var_3 = 1769f;
    let var_4 = Struct_1(i32(-1i) * -1i, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(Struct_1(0i, -522f, vec4<u32>(arg_0.c.x, arg_0.c.x, 4294967295u, arg_0.c.x)), arg_0, -70i).b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_2.b)) * _wgslsmith_f_op_f32(-var_3))))), reverseBits(vec4<u32>(max(arg_1, ~arg_0.c.x), reverseBits(min(1u, arg_2)), firstLeadingBit(50018u), ~(~0u))));
    return ~min(vec4<i32>(~(-20113i), _wgslsmith_add_i32(countOneBits(14736i), ~51683i), countOneBits(abs(47789i)), max(func_2(Struct_1(17439i, 666f, vec4<u32>(0u, 0u, arg_1, 0u)), var_2.c.x).a, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_4.a, -23864i), vec3<i32>(2147483647i, 0i, -2147483647i)))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, 2147483647i, arg_0.a, arg_3), vec4<i32>(arg_0.a, var_0, var_2.a, -1i), vec4<i32>(-9822i, u_input.a.x, 2147483647i, -1i)) >> (~(~arg_0.c) % vec4<u32>(32u)));
}

fn func_1(arg_0: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_div_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(~24812i, ~u_input.a.x, u_input.a.x, -u_input.a.x), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 0i)))), _wgslsmith_sub_vec4_i32((vec4<i32>(15141i, 65i, 4489i, u_input.a.x) >> (vec4<u32>(0u, arg_0, arg_0, 46202u) % vec4<u32>(32u))) & -vec4<i32>(22304i, u_input.a.x, u_input.a.x, u_input.a.x), abs(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, u_input.a.x, 1i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-12945i, 2147483647i, u_input.a.x, -15437i)))), _wgslsmith_sub_vec4_i32(func_5(func_4(func_2(Struct_1(u_input.a.x, 1000f, vec4<u32>(4294967295u, 0u, arg_0, 1u)), 4294967295u), func_2(Struct_1(u_input.a.x, 1000f, vec4<u32>(arg_0, arg_0, arg_0, 40429u)), arg_0), reverseBits(u_input.a.x)), 1u, _wgslsmith_sub_u32(arg_0, func_2(Struct_1(1i, -326f, vec4<u32>(810u, 37871u, arg_0, arg_0)), 1u).c.x), -u_input.a.x), ~vec4<i32>(-2208i, _wgslsmith_add_i32(-2147483647i, 2147483647i), u_input.a.x, u_input.a.x)));
    var var_1 = abs(arg_0);
    var_0 = -max(~vec4<i32>(var_0.x, u_input.a.x, max(686i, 0i), 0i), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, 2147483647i, u_input.a.x, 2147483647i), vec4<i32>(51093i, 0i, 1i, var_0.x)), vec4<i32>(22084i << (arg_0 % 32u), 1i, _wgslsmith_sub_i32(u_input.a.x, 0i), u_input.a.x)));
    let var_2 = ~(~(-(~_wgslsmith_mod_i32(3695i, var_0.x))));
    var_0 = ~(vec4<i32>(_wgslsmith_sub_i32(-31680i, _wgslsmith_mod_i32(-75568i, var_0.x)), -2147483647i, -19321i, u_input.a.x) >> (~(~countOneBits(vec4<u32>(0u, arg_0, 13238u, 0u))) % vec4<u32>(32u)));
    return ~(~countOneBits(~vec4<u32>(0u, arg_0, 1u, 25104u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(firstLeadingBit(abs(vec4<u32>(1u, 1u, 1u, 1u))));
    let var_1 = ~(-vec2<i32>(2147483647i, countOneBits(u_input.a.x)));
    let var_2 = ~vec4<u32>(firstLeadingBit(12143u), ~var_0.x, var_0.x, var_0.x);
    var_0 = func_1(4294967295u);
    var var_3 = -33288i;
    var var_4 = select(vec3<bool>(~select(-5246i, 8022i, global0[_wgslsmith_index_u32(var_2.x, 31u)]) > ~var_1.x, !any(select(vec2<bool>(global0[_wgslsmith_index_u32(1u, 31u)], true), vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 31u)], true), true)), !(global0[_wgslsmith_index_u32(var_2.x, 31u)] | true)), select(!(!vec3<bool>(global0[_wgslsmith_index_u32(51661u, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], true)), select(vec3<bool>(any(vec2<bool>(false, global0[_wgslsmith_index_u32(var_0.x, 31u)])), select(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)], global0[_wgslsmith_index_u32(var_0.x, 31u)]), select(global0[_wgslsmith_index_u32(0u, 31u)], global0[_wgslsmith_index_u32(var_2.x, 31u)], true)), select(!vec3<bool>(global0[_wgslsmith_index_u32(1343u, 31u)], false, global0[_wgslsmith_index_u32(1u, 31u)]), select(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(0u, 31u)]), vec3<bool>(true, false, global0[_wgslsmith_index_u32(var_0.x, 31u)]), vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)])), global0[_wgslsmith_index_u32(var_0.x, 31u)]), true), global0[_wgslsmith_index_u32(var_2.x ^ _wgslsmith_add_u32(var_2.x, var_2.x), 31u)]), vec3<bool>(false, true, _wgslsmith_f_op_f32(-113f + _wgslsmith_f_op_f32(select(637f, 845f, true))) <= 918f));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~var_2)), u_input.a);
}

