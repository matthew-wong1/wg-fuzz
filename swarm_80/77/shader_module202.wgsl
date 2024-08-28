struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 2>;

var<private> global1: f32 = -1108f;

var<private> global2: array<vec4<i32>, 17>;

var<private> global3: Struct_1;

var<private> global4: array<vec4<u32>, 6>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> bool {
    var var_0 = global3.c;
    let var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(262f * -570f), var_0.x, false)))), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 16390u, arg_1), global3.b, reverseBits(vec3<u32>(19869u, 66184u, arg_1))) & abs(~vec3<u32>(4680u, 4294967295u, 144187u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1648f, _wgslsmith_f_op_f32(trunc(477f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.c.x, -1656f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, global3.a) * global3.c))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -528f), -258f)))), vec4<bool>(all(global3.d.zy), true, select(all(select(vec4<bool>(global3.d.x, global3.d.x, global3.d.x, false), vec4<bool>(global3.d.x, global3.d.x, false, global3.d.x), global3.d)), true, all(!global3.d.yy)), true));
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-global3.a), global3.c.x);
    var var_3 = vec2<bool>(select(global3.d.x, true, !var_1.d.x), 1u >= arg_1);
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-347f, -1651f)) * var_2)));
    return !((max(26173u, _wgslsmith_mult_u32(global3.b.x, var_1.b.x)) & ~(~global3.b.x)) != arg_1);
}

fn func_2() -> Struct_1 {
    let var_0 = global3.b.yx;
    global4 = array<vec4<u32>, 6>();
    let var_1 = true;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-809f * global3.c.x), global3.b, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1733f), -587f), vec4<bool>(global3.d.x, !(!func_3(Struct_2(vec2<i32>(u_input.a, u_input.a)), var_0.x)), false, true));
    var var_3 = _wgslsmith_f_op_f32(max(192f, 1000f));
    return Struct_1(var_2.c.x, firstLeadingBit(firstLeadingBit(vec3<u32>(0u, 100661u, var_0.x)) & abs(~vec3<u32>(var_2.b.x, 1u, 83238u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.c.x, -515f)))))), var_2.d);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = vec3<bool>(false, all(vec3<bool>(true, all(vec4<bool>(false, arg_3.x, global3.d.x, false)) && true, global3.d.x || (global3.b.x <= 1u))), arg_3.x);
    let var_1 = 4294967295u;
    let var_2 = var_0.x;
    global2 = array<vec4<i32>, 17>();
    let var_3 = (vec4<i32>(i32(-1i) * -u_input.a, ~u_input.a, -abs(u_input.a), 12825i) | -select(global2[_wgslsmith_index_u32(~4294967295u, 17u)], _wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(global3.b.x, 17u)], global2[_wgslsmith_index_u32(arg_2.x, 17u)]), select(arg_3, global3.d, true))) | reverseBits(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~arg_2.x << (arg_2.x % 32u), ~(~62641u)), 17u)]);
    return arg_1;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec4<f32>) -> Struct_1 {
    global1 = -1000f;
    let var_0 = arg_2;
    global1 = _wgslsmith_f_op_f32(func_2().c.x - global3.a);
    let var_1 = ~(~max(99713u, _wgslsmith_dot_vec2_u32(select(vec2<u32>(56306u, 0u), vec2<u32>(global3.b.x, 0u), global3.d.wz), ~vec2<u32>(59430u, 5134u))));
    var var_2 = func_4(func_2(), var_0, abs(reverseBits(~vec4<u32>(global3.b.x, global3.b.x, global3.b.x, var_1)) & global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(var_1, 2u)], vec4<u32>(4294967295u, var_1, 72337u, 1050u)), var_1), 6u)]), select(vec4<bool>(true, true, !(u_input.a >= var_0.a.x), global3.d.x), vec4<bool>(global3.d.x, global3.d.x, all(vec3<bool>(global3.d.x, global3.d.x, global3.d.x)), !(global3.d.x & false)), global3.d));
    return func_2();
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: f32) -> Struct_2 {
    var var_0 = func_5(-4762i, reverseBits(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -49477i), ~vec3<i32>(u_input.a, -2147483647i, -752i))), func_4(func_2(), Struct_2(vec2<i32>(~u_input.a, firstTrailingBit(-4593i))), global4[_wgslsmith_index_u32(~arg_1.x, 6u)], select(global3.d, func_2().d, !global3.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2, -1335f, 1000f, global3.a)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, global3.c.x, -122f, arg_2) - vec4<f32>(518f, -737f, arg_2, -571f))))));
    global0 = array<vec4<u32>, 2>();
    global0 = array<vec4<u32>, 2>();
    let var_1 = global3.d.wy;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-118f)), global3.a);
    return func_4(Struct_1(global3.a, ~(~arg_1.wxx ^ ~vec3<u32>(2487u, 7264u, global3.b.x)), var_0.c, select(!vec4<bool>(var_1.x, global3.d.x, var_1.x, var_1.x), var_0.d, (0i | u_input.a) < u_input.a)), func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)), firstTrailingBit(firstTrailingBit(var_0.b)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2, -141f), vec2<f32>(1717f, -992f)))), var_0.d), Struct_2(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, u_input.a), vec2<i32>(1024i, u_input.a)))), vec4<u32>(_wgslsmith_mod_u32(global3.b.x, arg_1.x ^ arg_0), 1u | ~arg_1.x, 0u, select(~arg_0, 49818u, true)), !vec4<bool>(var_0.d.x, 22096i > u_input.a, false, var_0.d.x)), _wgslsmith_div_vec4_u32(_wgslsmith_clamp_vec4_u32(global0[_wgslsmith_index_u32(var_0.b.x, 2u)], vec4<u32>(~var_0.b.x, min(4294967295u, arg_0), 74787u, arg_0 & 0u), firstLeadingBit(vec4<u32>(arg_0, global3.b.x, 1u, var_0.b.x)) >> (global0[_wgslsmith_index_u32(firstLeadingBit(5673u), 2u)] % vec4<u32>(32u))), ~_wgslsmith_add_vec4_u32(global4[_wgslsmith_index_u32(~22220u, 6u)], ~arg_1)), vec4<bool>(global3.d.x, _wgslsmith_f_op_f32(round(257f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1777f)), false, max(1u, ~arg_1.x) <= 0u));
}

fn func_6(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = vec3<bool>(1197f == func_2().a, select(select(all(select(global3.d.zwx, global3.d.wyw, false)), false, true), global3.d.x, false), !global3.d.x);
    var var_1 = 49225i;
    var var_2 = arg_0;
    global1 = global3.a;
    global1 = _wgslsmith_f_op_f32(sign(global3.a));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global3.b.x;
    var var_1 = func_6(func_1(~1u, _wgslsmith_sub_vec4_u32(~(~vec4<u32>(global3.b.x, global3.b.x, 28424u, 42225u)), abs(~global4[_wgslsmith_index_u32(49192u, 6u)])), _wgslsmith_f_op_f32(-global3.c.x)), ~global3.b.x & _wgslsmith_dot_vec2_u32(vec2<u32>(abs(58386u), ~4294967295u), global3.b.zx));
    var var_2 = func_1(~(_wgslsmith_dot_vec3_u32(~global3.b, _wgslsmith_add_vec3_u32(vec3<u32>(0u, 27298u, 0u), var_1.b)) << (global3.b.x % 32u)), global0[_wgslsmith_index_u32(0u, 2u)], _wgslsmith_f_op_f32(-var_1.c.x));
    var var_3 = global3.c;
    var var_4 = func_2();
    var_1 = Struct_1(_wgslsmith_f_op_f32(func_2().a * var_1.c.x), vec3<u32>(func_2().b.x, ~((var_1.b.x & 1u) | min(4294967295u, 4294967295u)), 99534u), _wgslsmith_div_vec2_f32(var_4.c, func_2().c), vec4<bool>(var_4.d.x, global3.d.x, var_1.d.x, global3.d.x));
    var_2 = Struct_2(_wgslsmith_mod_vec2_i32(countOneBits(reverseBits(vec2<i32>(-63652i, -1i))), vec2<i32>(func_1(var_4.b.x, reverseBits(global4[_wgslsmith_index_u32(1u, 6u)]), _wgslsmith_f_op_f32(723f + var_3.x)).a.x, _wgslsmith_sub_i32(u_input.a ^ u_input.a, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.a);
}

