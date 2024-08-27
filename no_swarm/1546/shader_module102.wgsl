struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(1643f, 628f));

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<i32, 32>;

var<private> global3: array<Struct_1, 17>;

var<private> global4: vec3<i32> = vec3<i32>(-55269i, 1i, -1098i);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: Struct_1) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_0.a + _wgslsmith_f_op_vec2_f32(arg_0.a + vec2<f32>(arg_0.a.x, -594f))))) - _wgslsmith_f_op_vec2_f32(abs(arg_3.a))));
    var var_1 = firstTrailingBit(-_wgslsmith_div_vec4_i32(-(vec4<i32>(1i, global2[_wgslsmith_index_u32(0u, 32u)], u_input.b.x, global4.x) & vec4<i32>(global2[_wgslsmith_index_u32(32679u, 32u)], 0i, -19401i, 1i)), vec4<i32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.c, 0u, 26554u), 32u)], 0i, 54845i, -2147483647i)));
    global2 = array<i32, 32>();
    let var_2 = ~firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(6118u, 1u), 1u, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(15910u, u_input.c, u_input.c), vec3<u32>(54035u, arg_2.x, 1u), vec3<u32>(0u, 74222u, u_input.c)), ~vec3<u32>(arg_2.x, u_input.c, arg_2.x))));
    var var_3 = -410f;
    return vec2<u32>(arg_2.x & (~arg_2.x ^ _wgslsmith_div_u32(1u, var_2.x)), 16779u);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> u32 {
    let var_0 = arg_0;
    global1 = array<Struct_1, 5>();
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(var_1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.a.x, var_1.a.x)) - arg_0.a.x))), _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(ceil(arg_0.a.x))))));
    global2 = array<i32, 32>();
    return ~(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(select(1u, u_input.c, true), _wgslsmith_mult_u32(arg_1, 4294967295u)), u_input.c));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> bool {
    var var_0 = arg_2;
    var var_1 = select(vec4<bool>(true, !(!arg_0) && !arg_0, !(all(vec4<bool>(false, true, false, arg_0)) && true), !(!arg_0)), vec4<bool>(true, false, arg_0, all(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)))), vec4<bool>(arg_0, false, true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) * var_0.a.x) <= arg_3.a.x));
    return false;
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_1 {
    global2 = array<i32, 32>();
    global4 = -max(_wgslsmith_div_vec3_i32(vec3<i32>(1i, ~0i, min(23278i, 50258i)), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(2468i, -34236i)), firstTrailingBit(u_input.b.x), _wgslsmith_mod_i32(2147483647i, arg_2))), ~countOneBits(-vec3<i32>(arg_2, u_input.b.x, -2147483647i)));
    var var_0 = Struct_1(global0.a);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(global0.a)))));
    let var_2 = min(func_1(global1[_wgslsmith_index_u32(4294967295u, 5u)], false, abs(~(~vec2<u32>(u_input.c, u_input.c))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.a.x, var_1.a.x)))))).x, u_input.c);
    return Struct_1(var_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~((func_1(Struct_1(vec2<f32>(global0.a.x, global0.a.x)), true, vec2<u32>(1584u, 8693u), Struct_1(vec2<f32>(global0.a.x, 2123f))) >> (func_1(Struct_1(global0.a), true, vec2<u32>(28963u, u_input.c), Struct_1(vec2<f32>(global0.a.x, -1113f))) % vec2<u32>(32u))) >> (reverseBits(~func_1(Struct_1(vec2<f32>(-992f, global0.a.x)), false, vec2<u32>(47455u, u_input.c), Struct_1(vec2<f32>(-1526f, global0.a.x)))) % vec2<u32>(32u)));
    global0 = func_4(vec4<u32>(var_0.x, _wgslsmith_div_u32(u_input.c, firstTrailingBit(1u) | var_0.x), func_2(Struct_1(global0.a), ~1u), 616u), select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, true), select(true, false, false)), !vec4<bool>(func_3(false, global3[_wgslsmith_index_u32(33538u, 17u)], Struct_1(global0.a), global3[_wgslsmith_index_u32(51723u, 17u)]), u_input.a == global2[_wgslsmith_index_u32(var_0.x, 32u)], true, true), true), select(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c, _wgslsmith_div_u32(_wgslsmith_mult_u32(var_0.x, u_input.c), u_input.c)), 32u)], i32(-1i) * -2147483647i, true));
    global3 = array<Struct_1, 17>();
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(741f)), _wgslsmith_f_op_f32(f32(-1f) * -1111f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1649f) - _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(-1000f, global0.a.x, false))))))));
    var var_2 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(var_0.x, var_0.x, u_input.c) & max(vec3<u32>(4294967295u, u_input.c, u_input.c), vec3<u32>(u_input.c, u_input.c, var_0.x))) & select(abs(reverseBits(vec3<u32>(var_0.x, u_input.c, 36201u))), countOneBits(vec3<u32>(1u, 4294967295u, u_input.c)), !select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), false)), _wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.c, var_0.x), firstTrailingBit(var_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 2175u, 129130u, var_0.x), vec4<u32>(57786u, 0u, var_0.x, 4294967295u))), min(vec3<u32>(14235u, u_input.c, u_input.c), ~vec3<u32>(var_0.x, u_input.c, 19382u))), abs(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 45187u, u_input.c), vec3<u32>(var_0.x, var_0.x, 19138u))) << (vec3<u32>(countOneBits(16658u), ~u_input.c, u_input.c & var_0.x) % vec3<u32>(32u)))), 5u)];
    global2 = array<i32, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(6441u, 0u, var_0.x), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, var_0.x, 17457u), vec3<u32>(8645u, 49373u, 0u))) & vec3<u32>(var_0.x, 1u, 23299u | u_input.c), ~(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 4294967295u, 4294967295u), vec3<u32>(var_0.x, 4294967295u, var_0.x)) >> ((vec3<u32>(46286u, 1u, u_input.c) ^ vec3<u32>(u_input.c, 3967u, 45979u)) % vec3<u32>(32u)))), var_1, 117174u, ~35419i, _wgslsmith_div_vec3_f32(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(var_1.x * global0.a.x), _wgslsmith_f_op_f32(-global0.a.x)), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-247f, global0.a.x)), -1033f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-484f))), 462f)));
}

