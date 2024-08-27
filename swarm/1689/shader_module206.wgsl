struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: f32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24>;

var<private> global1: Struct_1;

var<private> global2: vec3<bool> = vec3<bool>(false, true, false);

var<private> global3: array<i32, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> vec4<u32> {
    var var_0 = 25570i;
    global0 = array<vec3<u32>, 24>();
    let var_1 = _wgslsmith_clamp_u32(global1.a.x, firstTrailingBit(~4294967295u), ~countOneBits(max(arg_0.c.a.x, arg_0.c.a.x)));
    var_0 = ~abs(8638i);
    global3 = array<i32, 31>();
    return ~reverseBits(_wgslsmith_add_vec4_u32(~(~vec4<u32>(var_1, 0u, 1u, global1.a.x)), countOneBits(~vec4<u32>(var_1, arg_0.c.a.x, global1.a.x, var_1))));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: f32) -> Struct_1 {
    global1 = Struct_1(~vec3<u32>(select(~2909u, _wgslsmith_add_u32(global1.a.x, 0u), false), select(global1.a.x, 5986u, global2.x), 11467u));
    var var_0 = global2.xy;
    let var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), arg_2))), _wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f)))))));
    var var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(~global1.a.x, 4294967295u, _wgslsmith_add_u32(4294967295u, 0u), ~_wgslsmith_div_u32(global1.a.x, 47746u)), max(_wgslsmith_add_vec4_u32(~vec4<u32>(global1.a.x, 31389u, 1u, global1.a.x), firstLeadingBit(vec4<u32>(1u, 0u, 0u, 100185u))), ~_wgslsmith_mod_vec4_u32(vec4<u32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x), vec4<u32>(global1.a.x, global1.a.x, 0u, 2468u)))) & func_3(Struct_2(-vec4<i32>(-23252i, u_input.a, u_input.a, -1i), ~(i32(-1i) * -2147483647i), Struct_1(~global1.a)));
    var var_3 = -1168f;
    return Struct_1(~vec3<u32>(~(~global1.a.x), _wgslsmith_add_u32(var_2.x, ~26594u), var_2.x));
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32, arg_3: Struct_4) -> vec3<i32> {
    global0 = array<vec3<u32>, 24>();
    var var_0 = Struct_4(arg_3.a, func_2(firstLeadingBit(arg_2), 446f, _wgslsmith_f_op_f32(ceil(-534f))), arg_3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1272f) + -158f), _wgslsmith_div_vec2_u32(firstTrailingBit(global1.a.zy & abs(vec2<u32>(64004u, arg_3.e.x))), reverseBits(arg_0.a.a.xy)));
    var var_1 = !all(var_0.c.zxz);
    var var_2 = arg_3.c;
    var var_3 = _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(36530u, arg_1.x, 1u), firstLeadingBit(global0[_wgslsmith_index_u32(var_0.e.x, 24u)])) ^ arg_1.yyy, var_0.b.a), ~vec3<u32>(49238u, ~(~68189u), ~23840u ^ _wgslsmith_mult_u32(global1.a.x, arg_0.a.a.x)));
    return -firstLeadingBit(_wgslsmith_mult_vec3_i32(firstTrailingBit(var_0.a.yxz), firstTrailingBit(arg_3.a.yyy)));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: vec3<bool>) -> Struct_2 {
    return Struct_2(vec4<i32>(global3[_wgslsmith_index_u32(~4294967295u, 31u)], ~u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(28155i, arg_1.x)), u_input.a, -global3[_wgslsmith_index_u32(1u, 31u)], ~arg_1.x), vec4<i32>(arg_1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1.x, u_input.a, -33957i, 11974i), vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(arg_0.a.a.x, 31u)], -15489i, -1i)), -7621i, min(u_input.a, 1i))), ~_wgslsmith_mod_i32(u_input.a >> (arg_0.a.a.x % 32u), _wgslsmith_add_i32(u_input.a, global3[_wgslsmith_index_u32(1u, 31u)]))), func_1(Struct_3(func_2(~arg_1.x, -361f, _wgslsmith_f_op_f32(sign(-1401f)))), select(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.a.x, global1.a.x, global1.a.x) & vec4<u32>(global1.a.x, global1.a.x, 4294967295u, 14215u), vec4<u32>(76205u, global1.a.x, 28417u, arg_0.a.a.x)), reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(61731u, 55062u, arg_0.a.a.x, arg_0.a.a.x), vec4<u32>(arg_0.a.a.x, global1.a.x, 19556u, 4294967295u))), !(!vec4<bool>(true, false, global2.x, arg_2.x))), _wgslsmith_sub_i32(-arg_1.x ^ (-656i << (1u % 32u)), 0i), Struct_4(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_1.x, 0i, global3[_wgslsmith_index_u32(arg_0.a.a.x, 31u)], global3[_wgslsmith_index_u32(5459u, 31u)]), vec4<i32>(0i, -31659i, u_input.a, -2147483647i) | vec4<i32>(35326i, global3[_wgslsmith_index_u32(14536u, 31u)], 2147483647i, arg_1.x)), arg_0.a, !(!vec4<bool>(false, false, arg_2.x, true)), -489f, vec2<u32>(0u, abs(75410u)))).x, arg_0.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(~_wgslsmith_mult_vec3_u32(~_wgslsmith_div_vec3_u32(global1.a, vec3<u32>(global1.a.x, global1.a.x, 1u)), global1.a));
    var var_1 = func_4(Struct_3(Struct_1(abs(global0[_wgslsmith_index_u32(var_0.a.x, 24u)]))), func_1(Struct_3(Struct_1(vec3<u32>(39331u, 91898u, var_0.a.x))), max(select(vec4<u32>(74605u, 140860u, 36150u, var_0.a.x), _wgslsmith_mult_vec4_u32(vec4<u32>(var_0.a.x, 37992u, 1u, var_0.a.x), vec4<u32>(var_0.a.x, 1u, 1u, var_0.a.x)), global2.x), ~vec4<u32>(var_0.a.x, global1.a.x, 1u, global1.a.x)), 1i, Struct_4((vec4<i32>(2147483647i, 22219i, -18294i, 9729i) ^ vec4<i32>(global3[_wgslsmith_index_u32(78942u, 31u)], global3[_wgslsmith_index_u32(var_0.a.x, 31u)], u_input.a, global3[_wgslsmith_index_u32(global1.a.x, 31u)])) << (vec4<u32>(45600u, var_0.a.x, global1.a.x, global1.a.x) % vec4<u32>(32u)), Struct_1(~vec3<u32>(var_0.a.x, 0u, 4294967295u)), vec4<bool>(all(global2.zz), 4294967295u != var_0.a.x, false, u_input.a <= global3[_wgslsmith_index_u32(4294967295u, 31u)]), _wgslsmith_f_op_f32(457f * _wgslsmith_f_op_f32(-770f + 1284f)), vec2<u32>(_wgslsmith_mult_u32(global1.a.x, 55214u), global1.a.x ^ 24198u))), vec3<bool>(global2.x, true, true));
    let var_2 = all(vec4<bool>(global2.x, false, any(select(global2.xy, global2.zz, !global2.zz)), !select(true | global2.x, global2.x, global2.x)));
    let var_3 = Struct_3(func_4(Struct_3(Struct_1(reverseBits(var_0.a))), vec3<i32>(-2147483647i, max(-u_input.a, _wgslsmith_div_i32(var_1.a.x, 35673i)), min(0i, 0i)), select(vec3<bool>(all(vec2<bool>(false, global2.x)), true, var_1.a.x == u_input.a), vec3<bool>(true && var_2, false, false), vec3<bool>(true, true, true))).c);
    var var_4 = Struct_4(vec4<i32>(~_wgslsmith_mult_i32(firstTrailingBit(1i), u_input.a), 0i, -(~u_input.a) >> (_wgslsmith_sub_u32(var_1.c.a.x, 1u) % 32u), -_wgslsmith_sub_i32(-2147483647i, -2147483647i)), func_2(~(-2147483647i), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-814f)))), 1697f)), _wgslsmith_f_op_f32(1585f * _wgslsmith_f_op_f32(274f - 555f))), select(vec4<bool>(any(select(vec4<bool>(false, true, true, var_2), vec4<bool>(global2.x, false, global2.x, false), vec4<bool>(false, false, var_2, true))), true, !any(vec4<bool>(global2.x, global2.x, false, false)), var_2), !(!(!vec4<bool>(false, false, var_2, true))), !(!select(vec4<bool>(global2.x, false, false, var_2), vec4<bool>(false, var_2, var_2, true), var_2))), -1000f, var_3.a.a.yx);
    global0 = array<vec3<u32>, 24>();
    global1 = var_4.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, global1.a.x), _wgslsmith_div_u32(7218u, 1u)), 1u, ~_wgslsmith_add_u32(var_0.a.x, 1u)), _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(var_3.a.a, global0[_wgslsmith_index_u32(46196u, 24u)]), ~vec3<u32>(global1.a.x, 0u, 1u)) | (vec3<u32>(var_0.a.x, 4294967295u, var_1.c.a.x) & (var_3.a.a >> (vec3<u32>(88241u, var_4.e.x, 93637u) % vec3<u32>(32u))))), vec4<u32>(_wgslsmith_div_u32(0u, 1u), var_3.a.a.x | _wgslsmith_div_u32(func_3(Struct_2(vec4<i32>(var_1.b, u_input.a, 40036i, var_1.b), var_1.b, Struct_1(vec3<u32>(0u, global1.a.x, 1u)))).x, ~var_0.a.x), 11486u, ~var_3.a.a.x), max(vec3<i32>(-2147483647i, -29556i, -1i), vec3<i32>(global3[_wgslsmith_index_u32(func_3(Struct_2(vec4<i32>(2147483647i, -90525i, var_1.a.x, u_input.a), var_1.a.x, Struct_1(vec3<u32>(global1.a.x, var_3.a.a.x, var_4.b.a.x)))).x, 31u)] >> (var_0.a.x % 32u), -(~2147483647i), ~0i)));
}

