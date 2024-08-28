struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<i32, 9>;

var<private> global2: bool = true;

var<private> global3: array<bool, 14> = array<bool, 14>(true, true, false, false, false, false, false, false, false, true, true, false, false, true);

var<private> global4: Struct_3 = Struct_3(Struct_1(76418u), vec2<bool>(false, false), Struct_1(0u), vec2<bool>(false, true));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_1() -> bool {
    return (abs(global4.c.a) & 4294967295u) > global4.a.a;
}

fn func_3(arg_0: vec4<u32>, arg_1: i32, arg_2: vec3<u32>, arg_3: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_div_vec4_i32(countOneBits(_wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-41055i, global1[_wgslsmith_index_u32(arg_2.x, 9u)], -24556i, arg_3.x), vec4<i32>(2147483647i, 0i, u_input.a.x, u_input.a.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(2715u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], -1i, arg_1), vec4<i32>(arg_1, arg_3.x, global1[_wgslsmith_index_u32(arg_2.x, 9u)], arg_1)))) | firstLeadingBit(-vec4<i32>(1i, u_input.a.x, u_input.a.x, arg_3.x)), -vec4<i32>(1i >> (~arg_2.x % 32u), u_input.a.x | _wgslsmith_mod_i32(-1742i, arg_1), global1[_wgslsmith_index_u32(arg_2.x, 9u)], arg_1));
    let var_1 = vec2<i32>(_wgslsmith_add_i32(~(arg_3.x & 32129i), u_input.a.x), 2147483647i << (global4.c.a % 32u));
    return !(!global3[_wgslsmith_index_u32(arg_0.x, 14u)]);
}

fn func_2(arg_0: Struct_2) -> Struct_3 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(~arg_0.b.a, 14u)], global4.c);
    global4 = Struct_3(Struct_1(9771u), global4.b, global4.c, vec2<bool>(false, true));
    var var_1 = vec3<bool>(func_3(_wgslsmith_div_vec4_u32(vec4<u32>(~arg_0.b.a, abs(global4.c.a), _wgslsmith_sub_u32(global4.a.a, global4.a.a), 1u), countOneBits(vec4<u32>(47206u, var_0.b.a, 4294967295u, var_0.b.a))), -u_input.a.x, vec3<u32>(var_0.b.a, arg_0.b.a, abs(4294967295u)), vec3<i32>(-_wgslsmith_dot_vec3_i32(vec3<i32>(-26922i, global1[_wgslsmith_index_u32(var_0.b.a, 9u)], 28811i), vec3<i32>(-18491i, global1[_wgslsmith_index_u32(arg_0.b.a, 9u)], u_input.a.x)), u_input.a.x, -1i)), global4.b.x, all(global4.b));
    let var_2 = arg_0;
    global4 = Struct_3(Struct_1(~arg_0.b.a), !vec2<bool>(any(select(vec4<bool>(var_0.a, var_1.x, false, var_1.x), vec4<bool>(true, false, var_0.a, var_1.x), global4.d.x)), true), Struct_1(1u), vec2<bool>(var_2.a, global3[_wgslsmith_index_u32(1u, 14u)]));
    return Struct_3(global4.c, !global4.d, Struct_1(54098u), select(select(select(vec2<bool>(false, false), !var_1.zz, true), vec2<bool>(true, var_2.a), var_0.a), !vec2<bool>(true, func_1()), global4.b));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = func_2(Struct_2(select(!all(global4.d), func_1(), global3[_wgslsmith_index_u32(abs(global4.c.a) ^ abs(4294967295u), 14u)]), Struct_1(global4.c.a)));
    var var_0 = global3[_wgslsmith_index_u32((~global4.c.a ^ select(49575u, _wgslsmith_dot_vec2_u32(~vec2<u32>(global4.c.a, 4294967295u), _wgslsmith_div_vec2_u32(vec2<u32>(40410u, 19260u), vec2<u32>(0u, global4.a.a))), false)) | (4294967295u >> (global4.a.a % 32u)), 14u)];
    let var_1 = Struct_1((global4.a.a >> ((~1u >> (1u % 32u)) % 32u)) << (~1u % 32u));
    global3 = array<bool, 14>();
    var var_2 = vec2<bool>(true, (all(vec2<bool>(true, false)) & !(!global3[_wgslsmith_index_u32(4294967295u, 14u)])) && true);
    var var_3 = false;
    global3 = array<bool, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(-29514i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1736f))))), 63849u);
}

