struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: u32,
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

var<private> global0: Struct_2;

var<private> global1: array<i32, 18>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: u32, arg_3: Struct_1) -> Struct_2 {
    global0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1295f - arg_0) * _wgslsmith_f_op_f32(-204f - -879f))))));
    let var_0 = Struct_2(global0.a);
    global1 = array<i32, 18>();
    global1 = array<i32, 18>();
    var var_1 = var_0.a;
    return var_0;
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2, arg_3: u32) -> u32 {
    global1 = array<i32, 18>();
    var var_0 = global1[_wgslsmith_index_u32(select(~(~(~u_input.d)), ~u_input.d, _wgslsmith_f_op_f32(abs(func_2(_wgslsmith_f_op_f32(-arg_2.a), true, arg_3, Struct_1(4294967295u)).a)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(trunc(global0.a)))))), 18u)];
    let var_1 = func_2(func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)) + arg_2.a), !all(vec4<bool>(false, false, true, false)) & !(arg_2.a <= -602f), _wgslsmith_dot_vec3_u32(select(firstLeadingBit(vec3<u32>(42870u, u_input.d, 21292u)), min(vec3<u32>(u_input.d, arg_3, u_input.d), vec3<u32>(24853u, 0u, 22349u)), vec3<bool>(true, true, true)), ~(vec3<u32>(u_input.d, arg_3, arg_3) << (vec3<u32>(18955u, arg_3, 12083u) % vec3<u32>(32u)))), Struct_1(1u)).a, false, _wgslsmith_mult_u32((_wgslsmith_mult_u32(arg_3, 1u) << (11102u % 32u)) & ~_wgslsmith_add_u32(u_input.d, 39706u), _wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(12207u, 0u, 4294967295u), min(vec3<u32>(arg_3, 0u, 72343u), vec3<u32>(5300u, u_input.d, 1u))), _wgslsmith_dot_vec4_u32(vec4<u32>(140928u, arg_3, arg_3, arg_3), vec4<u32>(u_input.d, 0u, 1u, u_input.d)))), Struct_1(0u));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * arg_0.a);
    let var_3 = Struct_1(u_input.d);
    return var_3.a;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: u32) -> Struct_1 {
    let var_0 = ~vec4<i32>(2147483647i, _wgslsmith_mult_i32(-1i, 10875i), 0i, firstLeadingBit(_wgslsmith_div_i32(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(arg_1.x, 18u)], -1889i), ~global1[_wgslsmith_index_u32(arg_1.x, 18u)])));
    return Struct_1(arg_1.x);
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = func_4(func_2(arg_0, any(vec4<bool>(true, true, true, true)), abs(u_input.d), Struct_1(u_input.d)), vec4<u32>(min(57200u, 4294967295u), func_3(Struct_2(-302f), 0i, func_2(arg_0, false, 102166u, Struct_1(u_input.d)), 0u) << (u_input.d % 32u), 91564u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.d, 17719u), abs(u_input.d) & 1u)), select(vec4<i32>(1i, _wgslsmith_add_i32(u_input.c, u_input.b.x), 1i, 0i), u_input.b, true) << ((_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(15943u, 3742u, 0u, 53401u)), select(vec4<u32>(21845u, u_input.d, u_input.d, u_input.d), vec4<u32>(44204u, 4294967295u, u_input.d, u_input.d), vec4<bool>(true, false, true, false))) << (countOneBits(vec4<u32>(0u, u_input.d, 1u, 54959u)) % vec4<u32>(32u))) % vec4<u32>(32u)), 0u);
    global1 = array<i32, 18>();
    global0 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1514f * global0.a)), global0.a)), !(!(-42460i > -u_input.c)), _wgslsmith_clamp_u32(0u, max(26843u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a, 0u), ~vec3<u32>(var_0.a, 1u, 3292u))), 13544u), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.a, u_input.d, 29807u) >> (vec3<u32>(28539u, 0u, 38906u) % vec3<u32>(32u)), vec3<u32>(var_0.a, 45173u, u_input.d)), firstLeadingBit(max(vec3<u32>(var_0.a, u_input.d, u_input.d), vec3<u32>(4294967295u, var_0.a, var_0.a))))));
    global0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -225f), true, 4294967295u, var_0);
    global1 = array<i32, 18>();
    return ~(~(~(~33227u & _wgslsmith_mod_u32(27440u, u_input.d))));
}

fn func_5(arg_0: u32) -> Struct_1 {
    let var_0 = -u_input.b.yzz;
    var var_1 = Struct_2(global0.a);
    var var_2 = select(vec2<i32>(1i & _wgslsmith_div_i32(0i, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.d, arg_0, 28302u), 18u)]), -8619i), countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i >> (arg_0 % 32u), min(u_input.b.x, u_input.c)), -vec2<i32>(2147483647i, -9056i))), true);
    var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-var_1.a)) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-531f * _wgslsmith_f_op_f32(max(global0.a, global0.a)))))));
    let var_3 = -108f;
    return func_4(func_2(var_3, true, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, min(arg_0, 2062u)), _wgslsmith_mult_vec2_u32(abs(vec2<u32>(u_input.d, arg_0)), vec2<u32>(arg_0, arg_0))), func_4(func_2(_wgslsmith_f_op_f32(-global0.a), any(vec3<bool>(false, true, true)), arg_0, func_4(Struct_2(2167f), vec4<u32>(1756u, u_input.d, arg_0, 4294967295u), u_input.b, arg_0)), firstTrailingBit(vec4<u32>(u_input.d, arg_0, 77377u, 0u)), select(vec4<i32>(2147483647i, 2147483647i, global1[_wgslsmith_index_u32(4294967295u, 18u)], 1i), -u_input.b, any(vec4<bool>(false, true, true, true))), 24893u)), vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d, reverseBits(73611u)), ~(u_input.d >> (u_input.d % 32u))), ~(~firstLeadingBit(15597u)), 0u << (~(1u & u_input.d) % 32u), _wgslsmith_add_u32(func_1(_wgslsmith_f_op_f32(ceil(1521f))), u_input.d)), ~vec4<i32>(31333i, 8982i, 0i, ~(-1i)), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = Struct_1(u_input.d ^ ~1u);
    let var_2 = !vec3<bool>(false, false, _wgslsmith_f_op_f32(-global0.a) != 1000f);
    global1 = array<i32, 18>();
    var var_3 = func_5((func_1(_wgslsmith_f_op_f32(floor(global0.a))) ^ var_1.a) ^ max(_wgslsmith_mult_u32(u_input.d << (7290u % 32u), 0u), ~0u));
    global1 = array<i32, 18>();
    var var_4 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(660f + -1156f)));
}

