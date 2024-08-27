struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12>;

var<private> global1: array<Struct_1, 17>;

var<private> global2: array<f32, 31> = array<f32, 31>(-1867f, 1000f, -146f, -1253f, 1007f, -1006f, 1296f, 309f, -1000f, 1259f, 1184f, -915f, 899f, 901f, 968f, 607f, -1239f, -2495f, 421f, 1963f, 795f, -1808f, -1000f, -981f, -295f, 1069f, 1443f, -874f, -1000f, 229f, 1000f);

var<private> global3: array<vec3<u32>, 23>;

var<private> global4: vec2<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global2[_wgslsmith_index_u32(~global4.x, 31u)], -844f, global2[_wgslsmith_index_u32(firstLeadingBit(13236u), 31u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.c, 31u)]))))));
    let var_1 = ~(-47821i);
    let var_2 = _wgslsmith_add_u32(68347u, ~global0[_wgslsmith_index_u32(5766u, 12u)]);
    let var_3 = vec3<bool>(!(!(any(vec3<bool>(false, false, true)) & (global4.x >= 36664u))), true & all(vec4<bool>(true, true, true, true)), any(!select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), true))));
    var var_4 = ~(-(~((vec3<i32>(arg_0, var_1, var_1) << (global3[_wgslsmith_index_u32(global4.x, 23u)] % vec3<u32>(32u))) ^ (vec3<i32>(-17339i, arg_0, var_1) ^ vec3<i32>(var_1, 23554i, 0i)))));
    return ~1i;
}

fn func_2() -> vec4<i32> {
    var var_0 = global1[_wgslsmith_index_u32(13663u, 17u)];
    global2 = array<f32, 31>();
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, global4.x), 17u)];
    let var_2 = Struct_1(vec2<u32>(global4.x, ~(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 53564u, 0u, u_input.c), vec4<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 1u, u_input.c, 39290u)) << (firstLeadingBit(var_1.a.x) % 32u))), ~var_0.b);
    let var_3 = func_3(0i);
    return ~vec4<i32>(var_1.b, 44617i, _wgslsmith_dot_vec2_i32(~reverseBits(vec2<i32>(0i, var_2.b)), -vec2<i32>(u_input.a, var_2.b)), -(~2147483647i));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: vec4<i32>) -> vec4<f32> {
    let var_0 = ~(-arg_2.xw);
    global3 = array<vec3<u32>, 23>();
    let var_1 = Struct_1(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~arg_0), vec2<u32>(~u_input.c, ~u_input.d)), u_input.c), u_input.b);
    global1 = array<Struct_1, 17>();
    global1 = array<Struct_1, 17>();
    return _wgslsmith_div_vec4_f32(vec4<f32>(1003f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-2609f)))), _wgslsmith_div_f32(-1466f, _wgslsmith_f_op_f32(trunc(-1331f))), global2[_wgslsmith_index_u32(~1u, 31u)]), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1167f, -830f, arg_1, -720f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(26013u, 31u)], arg_1, arg_1, global2[_wgslsmith_index_u32(4294967295u, 31u)])), select(true, 4294967295u <= u_input.c, true))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, -335f, global2[_wgslsmith_index_u32(0u, 31u)], -1259f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, global2[_wgslsmith_index_u32(arg_0, 31u)], global2[_wgslsmith_index_u32(51294u, 31u)], -1669f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(316f, arg_1, -1101f, global2[_wgslsmith_index_u32(48340u, 31u)])))))));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: u32, arg_3: bool) -> Struct_1 {
    var var_0 = Struct_1((vec2<u32>(firstTrailingBit(110865u), reverseBits(arg_2)) >> (select(vec2<u32>(u_input.c, arg_2), vec2<u32>(28412u, 1u) ^ vec2<u32>(u_input.d, global0[_wgslsmith_index_u32(arg_2, 12u)]), arg_3) % vec2<u32>(32u))) & firstLeadingBit(reverseBits(select(vec2<u32>(arg_2, 1989u), arg_0.a, vec2<bool>(true, true)))), 1i);
    var var_1 = select(~vec4<u32>(~global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, var_0.a.x), 12u)], ~4294967295u, ~8327u, var_0.a.x), _wgslsmith_sub_vec4_u32(abs(vec4<u32>(1u, 0u, u_input.d, u_input.d) | ~vec4<u32>(1u, 1u, 42618u, global4.x)), vec4<u32>(~(~global4.x), 0u, _wgslsmith_mult_u32(arg_0.a.x, 1u & u_input.d), _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(u_input.d, 1u, 0u, 0u)), ~vec4<u32>(var_0.a.x, 75106u, 4294967295u, global4.x)))), any(!(!vec2<bool>(arg_3, arg_3))));
    var_1 = ~select(firstTrailingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(37631u, 1u, 0u, arg_2), vec4<u32>(global0[_wgslsmith_index_u32(var_0.a.x, 12u)], arg_0.a.x, var_0.a.x, 4294967295u))), _wgslsmith_sub_vec4_u32(min(~vec4<u32>(arg_0.a.x, 54136u, arg_0.a.x, arg_2), ~vec4<u32>(global0[_wgslsmith_index_u32(arg_0.a.x, 12u)], global0[_wgslsmith_index_u32(var_1.x, 12u)], global0[_wgslsmith_index_u32(28506u, 12u)], global0[_wgslsmith_index_u32(1u, 12u)])), (vec4<u32>(1u, var_0.a.x, 1u, var_0.a.x) | vec4<u32>(0u, arg_0.a.x, global4.x, arg_0.a.x)) ^ ~vec4<u32>(49402u, arg_2, u_input.d, 77547u)), select(!select(vec4<bool>(false, false, false, arg_3), vec4<bool>(arg_3, false, arg_3, arg_3), arg_3), select(vec4<bool>(true, arg_3, arg_3, true), vec4<bool>(false, arg_3, true, false), !arg_3), !select(vec4<bool>(arg_3, arg_3, true, false), vec4<bool>(false, arg_3, arg_3, false), arg_3)));
    global3 = array<vec3<u32>, 23>();
    let var_2 = arg_3;
    return Struct_1(firstTrailingBit(vec2<u32>(var_1.x | 4294967295u, ~(arg_2 & var_0.a.x))), 2147483647i);
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    global3 = array<vec3<u32>, 23>();
    global1 = array<Struct_1, 17>();
    let var_0 = func_5(Struct_1(vec2<u32>(2664u, 0u), u_input.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.c, 31u)], 1044f, -704f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.x, 12u)], 31u)]) + vec4<f32>(global2[_wgslsmith_index_u32(global4.x, 31u)], global2[_wgslsmith_index_u32(5985u, 31u)], global2[_wgslsmith_index_u32(u_input.d, 31u)], -1257f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-604f, global2[_wgslsmith_index_u32(0u, 31u)], -806f, global2[_wgslsmith_index_u32(1u, 31u)]), vec4<f32>(-468f, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 12u)], 12u)], 31u)], -505f, 1202f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1055f, -699f, -489f, global2[_wgslsmith_index_u32(1u, 31u)]) * vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(24580u, 12u)], 31u)], global2[_wgslsmith_index_u32(0u, 31u)], 929f, global2[_wgslsmith_index_u32(u_input.d, 31u)])))), _wgslsmith_f_op_vec4_f32(func_4(100650u, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 31u)]), -1387f)), _wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.x, arg_0.x, 2147483647i, -1i), func_2())))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d, 26307u), vec2<u32>(4294967295u, global4.x), vec2<u32>(0u, global0[_wgslsmith_index_u32(0u, 12u)])), vec2<u32>(4294967295u << (global4.x % 32u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~36529u, 12u)], 12u)])), abs(38990u)), !(!(2147483647i < max(-66688i, u_input.a))));
    let var_1 = vec2<bool>(any(vec3<bool>(true, true, true)), all(select(select(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, true)), vec4<bool>(true, true, true, true), select(false, false, false)), vec4<bool>(true, true, true, true), select(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)))));
    var var_2 = _wgslsmith_mult_i32(~_wgslsmith_div_i32(arg_0.x, -29641i) | (u_input.b << (global0[_wgslsmith_index_u32(49164u, 12u)] % 32u)), -abs(u_input.b & var_0.b)) >> (~(1u ^ countOneBits(~global0[_wgslsmith_index_u32(var_0.a.x, 12u)])) % 32u);
    return func_5(func_5(Struct_1(var_0.a, ~(2147483647i ^ arg_0.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(240f, global2[_wgslsmith_index_u32(96350u, 31u)], -843f, 293f), vec4<f32>(global2[_wgslsmith_index_u32(1u, 31u)], -1000f, 1000f, -266f)))))), var_0.a.x, any(select(!vec3<bool>(var_1.x, false, var_1.x), select(vec3<bool>(true, true, true), vec3<bool>(true, false, var_1.x), var_1.x), vec3<bool>(true, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(591f, -391f, false)), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4488u, 31u)]), 287f, -228f) * vec4<f32>(_wgslsmith_f_op_f32(398f - global2[_wgslsmith_index_u32(20464u, 31u)]), 342f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 12u)], 31u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48926u, 12u)], 12u)], 31u)], 231f)))), 0u, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(-(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(30147i, 2147483647i)) >> (firstTrailingBit(vec2<u32>(u_input.d, u_input.d)) % vec2<u32>(32u)))));
    let var_1 = Struct_1(~select(var_0.a, var_0.a, vec2<bool>(true, true)), countOneBits(1i));
    let var_2 = Struct_1(_wgslsmith_sub_vec2_u32(~(~(~vec2<u32>(0u, 1u))), var_0.a), var_1.b);
    global4 = var_2.a >> (vec2<u32>(4294967295u, _wgslsmith_div_u32(~_wgslsmith_mod_u32(global4.x, global4.x), 0u)) % vec2<u32>(32u));
    var_0 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 31u)], -514f), _wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26664u, 12u)], 31u)], global2[_wgslsmith_index_u32(u_input.c, 31u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_4(var_1.a.x, 1141f, vec4<i32>(u_input.a, var_1.b, 1i, 18883i))).x - _wgslsmith_f_op_f32(-477f - -102f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(global2[_wgslsmith_index_u32(var_0.a.x, 31u)])), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(43929u, 12u)], 31u)]))))));
}

