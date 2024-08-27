struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec3<u32>,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: bool = false;

var<private> global2: vec2<i32>;

var<private> global3: array<i32, 20>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool) -> f32 {
    global0 = select(vec3<bool>(!(~global3[_wgslsmith_index_u32(0u, 20u)] <= global2.x), all(vec3<bool>(all(global0.xz), false || arg_1, false)), false), select(vec3<bool>(any(vec4<bool>(arg_1, false, global0.x, true)), global0.x, countOneBits(global2.x) > (i32(-1i) * -1i)), select(vec3<bool>(any(vec4<bool>(global0.x, false, global0.x, true)), global0.x, global0.x == false), select(select(vec3<bool>(false, global0.x, true), vec3<bool>(false, global0.x, global0.x), vec3<bool>(false, false, arg_1)), vec3<bool>(arg_1, true, arg_1), select(vec3<bool>(global0.x, arg_1, true), vec3<bool>(global0.x, arg_1, true), vec3<bool>(true, false, global0.x))), !any(vec3<bool>(false, false, global0.x))), true), !select(select(vec3<bool>(false, true, false), vec3<bool>(arg_1, global0.x, true), select(arg_1, false, global0.x)), select(vec3<bool>(global0.x, true, global0.x), select(vec3<bool>(true, arg_1, false), vec3<bool>(arg_1, global0.x, global0.x), vec3<bool>(false, false, false)), !global0.x), any(vec4<bool>(global0.x, false, arg_1, arg_1))));
    global2 = u_input.c.zx;
    global2 = vec2<i32>(global2.x, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, global2.x, -1i, global2.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, global2.x, global2.x, global3[_wgslsmith_index_u32(11939u, 20u)]), u_input.c)), -(i32(-1i) * -63812i)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.wx, -u_input.c.zz), -vec2<i32>(u_input.c.x, global2.x))));
    let var_0 = vec4<i32>(22287i, _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-global2.x, -47075i), countOneBits(-u_input.c.x), -18535i | countOneBits(-u_input.c.x)), global3[_wgslsmith_index_u32(u_input.a, 20u)], select(-1i, firstTrailingBit(_wgslsmith_div_i32(16909i, global2.x)), global0.x) | abs(i32(-1i) * -4247i));
    global2 = select(select(-vec2<i32>(u_input.c.x, ~1i), _wgslsmith_sub_vec2_i32(~(-u_input.c.yw), var_0.xy), global0.yx), _wgslsmith_add_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(-u_input.c.x, global2.x), u_input.c.yw), vec2<i32>(~_wgslsmith_dot_vec3_i32(u_input.c.wzx, u_input.c.xxx), 13420i)), (any(!vec4<bool>(arg_1, false, false, false)) && true) | all(vec3<bool>(true, any(vec2<bool>(arg_1, global0.x)), all(vec3<bool>(global0.x, global0.x, global0.x)))));
    return -843f;
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    var var_0 = arg_0.c.wx;
    global3 = array<i32, 20>();
    var var_1 = all(!select(!vec4<bool>(arg_0.b.x, false, false, arg_0.b.x), vec4<bool>(arg_0.b.x, global0.x && true, !global0.x, true), vec4<bool>(-202f != arg_0.a, global0.x && true, arg_0.b.x, arg_0.b.x & true)));
    var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~(~u_input.b.x), !(0u < select(u_input.a, 0u, arg_0.b.x)))) * _wgslsmith_f_op_f32(arg_0.c.x + arg_0.a));
    return Struct_4(Struct_3(Struct_2(_wgslsmith_f_op_f32(sign(-352f)), !(!arg_0.b), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.c) + _wgslsmith_f_op_vec4_f32(-arg_0.c)), u_input.c.zwz), _wgslsmith_f_op_f32(step(arg_0.c.x, _wgslsmith_f_op_f32(-var_0.x))), vec3<u32>(u_input.a, 1u ^ (u_input.b.x >> (u_input.b.x % 32u)), reverseBits(67816u)), select(select(vec2<bool>(true, false), select(arg_0.b.xz, vec2<bool>(true, false), false), global0.x), select(!arg_0.b.xx, global0.yx, false), true), vec2<i32>(arg_0.d.x, -45961i)), Struct_3(Struct_2(var_2, arg_0.b, arg_0.c, u_input.c.wwx), -1220f, min(~(vec3<u32>(4294967295u, u_input.a, u_input.b.x) << (vec3<u32>(20094u, u_input.b.x, u_input.a) % vec3<u32>(32u))), vec3<u32>(0u, u_input.b.x, 0u)), vec2<bool>(global0.x, true), u_input.c.ww), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-751f + arg_0.c.x) - _wgslsmith_f_op_f32(-var_2)) != -449f, arg_0.b.x));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>) -> Struct_2 {
    global2 = ~(-_wgslsmith_clamp_vec2_i32(-firstLeadingBit(vec2<i32>(arg_0.a.e.x, 1i)), u_input.c.yw, _wgslsmith_mult_vec2_i32(-arg_0.b.a.d.zy, -arg_0.a.e)));
    var var_0 = arg_0.b.a.a;
    let var_1 = arg_0.a.a.c.x;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2108f + arg_0.a.b) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_1)), -892f))) != _wgslsmith_f_op_f32(round(-357f));
    let var_3 = firstLeadingBit(reverseBits(abs(select(i32(-1i) * -7647i, global3[_wgslsmith_index_u32(min(arg_0.a.c.x, 4294967295u), 20u)], 24938u > u_input.b.x))));
    return func_2(arg_0.a.a).b.a;
}

fn func_1(arg_0: bool, arg_1: u32) -> vec4<f32> {
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, _wgslsmith_div_u32(1u, arg_1)), 20u)];
    let var_1 = -56648i ^ _wgslsmith_div_i32(1i, max(u_input.c.x, 1i));
    let var_2 = Struct_3(func_4(func_2(Struct_2(-799f, !vec3<bool>(false, arg_0, false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1907f, -455f, 1665f)), u_input.c.zxz)), max(vec4<u32>(4294967295u & arg_1, 35971u, 4294967295u, 0u ^ arg_1), _wgslsmith_add_vec4_u32(vec4<u32>(arg_1, 1u, 11517u, arg_1) ^ vec4<u32>(u_input.b.x, arg_1, 0u, 4294967295u), firstTrailingBit(vec4<u32>(82669u, u_input.b.x, 8859u, arg_1))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1746f * 1273f) + _wgslsmith_f_op_f32(-258f * -1046f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1307f))))), ~abs(vec3<u32>(~arg_1, select(0u, 0u, false), 0u)), vec2<bool>(true, (arg_0 | all(global0.yy)) & !arg_0), func_4(Struct_4(Struct_3(func_2(Struct_2(-1000f, vec3<bool>(false, true, arg_0), vec4<f32>(-264f, -780f, -2584f, 1298f), u_input.c.zzx)).b.a, _wgslsmith_f_op_f32(select(-817f, 1083f, global0.x)), abs(vec3<u32>(1u, 0u, 94713u)), vec2<bool>(true, true), vec2<i32>(1i, var_1)), Struct_3(Struct_2(-170f, vec3<bool>(global0.x, global0.x, false), vec4<f32>(-1538f, 1411f, -1071f, 1985f), u_input.c.xzx), -1081f, select(vec3<u32>(1u, u_input.d, u_input.a), vec3<u32>(u_input.b.x, u_input.a, arg_1), vec3<bool>(true, arg_0, global0.x)), global0.zx, firstLeadingBit(vec2<i32>(global2.x, global2.x))), global0.zz), abs(vec4<u32>(47063u, u_input.b.x, ~0u, 4294967295u >> (arg_1 % 32u)))).d.yz);
    global2 = ~u_input.c.xy;
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-785f, 1897f), var_2.a.c.xy, arg_0)), _wgslsmith_f_op_vec2_f32(-var_2.a.c.yy))) + vec2<f32>(_wgslsmith_f_op_f32(step(var_2.b, 1685f)), var_2.b)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_2.a.c.xw, var_2.a.c.zw) - _wgslsmith_f_op_vec2_f32(var_2.a.c.zy + vec2<f32>(-506f, 213f))) + var_2.a.c.xz)), var_2.a.c.zx));
    return _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_2.a.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.xx;
    var_0 = countOneBits(select(u_input.c.yy, u_input.c.yz, !(!global0.xy))) | vec2<i32>(~global3[_wgslsmith_index_u32(1u, 20u)], 1i);
    var var_1 = ~select(u_input.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(63129u, 1u, 6507u), vec3<u32>(u_input.b.x, 17079u, 122672u)), global0.x == true);
    global3 = array<i32, 20>();
    let var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f) * _wgslsmith_f_op_f32(1084f + 1000f)) + -342f), vec3<bool>(global0.x, u_input.a >= u_input.a, true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(global0.x, ~u_input.a))), abs(min(u_input.c.zxw, vec3<i32>(61137i, 11614i, -1i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -865f)) + 1f) + -189f), select(~(~vec3<u32>(u_input.d, u_input.d, u_input.b.x)), ~(~vec3<u32>(42369u, u_input.d, u_input.d) & vec3<u32>(23084u, 33340u, u_input.d)), ~_wgslsmith_clamp_i32(1i, var_0.x, global3[_wgslsmith_index_u32(u_input.b.x, 20u)]) == global3[_wgslsmith_index_u32(35975u, 20u)]), select(!vec2<bool>(true, !global0.x), !(!(!vec2<bool>(global0.x, global0.x))), global0.x), select(countOneBits(func_4(Struct_4(Struct_3(Struct_2(-351f, vec3<bool>(true, global0.x, global0.x), vec4<f32>(1092f, 1012f, -1275f, -1445f), vec3<i32>(-2147483647i, u_input.c.x, var_0.x)), -502f, vec3<u32>(u_input.d, 1u, 2833u), global0.xx, vec2<i32>(-47844i, var_0.x)), Struct_3(Struct_2(333f, vec3<bool>(global0.x, false, global0.x), vec4<f32>(1395f, 1000f, -1089f, -365f), u_input.c.zyx), -682f, vec3<u32>(39679u, 16553u, 22322u), global0.zx, u_input.c.zw), vec2<bool>(true, true)), vec4<u32>(u_input.b.x, 14619u, u_input.b.x, 4294967295u)).d.yy), -u_input.c.yz, !global0.x) & u_input.c.wz);
    global3 = array<i32, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(494f, var_2.b), _wgslsmith_f_op_vec2_f32(sign(var_2.a.c.xz))))))), countOneBits(_wgslsmith_mult_i32(max(-2147483647i, -10667i) ^ func_4(Struct_4(var_2, var_2, vec2<bool>(var_2.a.b.x, false)), vec4<u32>(u_input.a, 0u, 33198u, 1u)).d.x, var_2.a.d.x)), ~16452u, _wgslsmith_f_op_f32(-var_2.b), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -global2.x) << (min(~vec2<u32>(4294967295u, u_input.d), u_input.b) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(42541i, var_0.x), firstLeadingBit(vec2<i32>(global3[_wgslsmith_index_u32(u_input.a, 20u)], global2.x))), reverseBits(vec2<i32>(var_0.x, global2.x)))));
}

