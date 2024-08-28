struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: vec2<bool>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 6> = array<vec3<u32>, 6>(vec3<u32>(16768u, 0u, 2912u), vec3<u32>(80758u, 0u, 0u), vec3<u32>(1u, 3992u, 0u), vec3<u32>(56793u, 1u, 1u), vec3<u32>(4294967295u, 46238u, 1u), vec3<u32>(49450u, 4294967295u, 55624u));

var<private> global1: array<i32, 30>;

var<private> global2: vec3<f32>;

var<private> global3: Struct_1 = Struct_1(true, 549f, vec2<i32>(0i, -5846i), vec2<bool>(true, true), vec3<i32>(2147483647i, 0i, -5981i));

var<private> global4: vec3<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(global4.x, _wgslsmith_f_op_f32(abs(2471f)), global3.e.zy, !select(select(vec2<bool>(true, false), global3.d, !vec2<bool>(global4.x, false)), global3.d, !vec2<bool>(true, global3.a)), vec3<i32>(abs(2147483647i), countOneBits(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(35424u, 1u), 30u)]), ~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-2147483647i, global3.e.x, -6349i), u_input.a.x >> (4261u % 32u))));
    global3 = Struct_1(true, var_0.b, ~global3.e.zy, select(select(global4.xz, vec2<bool>(true, true), global3.d), vec2<bool>(~4294967295u >= (u_input.b | u_input.b), any(vec2<bool>(true, global4.x))), select(var_0.d, global4.xz, !select(vec2<bool>(true, false), vec2<bool>(global4.x, true), true))), max(u_input.a, vec3<i32>(-global1[_wgslsmith_index_u32(82693u, 30u)], 15736i, -25777i)));
    var var_1 = -global1[_wgslsmith_index_u32(min(17396u, ~u_input.b) ^ ~(~13248u), 30u)] ^ select(~firstLeadingBit(firstTrailingBit(u_input.d)), ~(-(-1i >> (u_input.b % 32u))), false);
    var_1 = countOneBits(-1i);
    var var_2 = -_wgslsmith_div_i32(~u_input.a.x, -76582i) >= select(countOneBits(global1[_wgslsmith_index_u32(25101u, 30u)]), ~1i, true);
    return vec2<bool>(global3.d.x && all(!vec3<bool>(global3.a, global4.x, false)), true);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32, arg_3: u32) -> f32 {
    let var_0 = vec3<bool>(global4.x, !all(!select(vec3<bool>(global3.a, false, global3.d.x), vec3<bool>(global3.a, global4.x, arg_1.d.x), false)), !(arg_1.b > _wgslsmith_div_f32(438f, _wgslsmith_f_op_f32(trunc(543f)))));
    var var_1 = arg_1.e.x;
    let var_2 = Struct_1((arg_1.b >= global3.b) && !(4294967295u != _wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(77888u, arg_3, 4461u, 0u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(324f * global2.x))), vec2<i32>(~global1[_wgslsmith_index_u32(0u, 30u)], -32317i), select(global4.yz, select(func_3(), select(!global3.d, vec2<bool>(true, global4.x), true), vec2<bool>(global4.x, arg_1.b == global2.x)), true), firstTrailingBit(firstLeadingBit(vec3<i32>(abs(156i), -1i, _wgslsmith_clamp_i32(-30831i, 1i, global1[_wgslsmith_index_u32(66277u, 30u)])))));
    var var_3 = Struct_1(all(!vec3<bool>(all(var_0), all(vec4<bool>(global3.a, global3.a, false, var_0.x)), !global3.d.x)), var_2.b, ~(-vec2<i32>(-global1[_wgslsmith_index_u32(8589u, 30u)], abs(-2147483647i))), vec2<bool>(var_0.x, true), vec3<i32>(_wgslsmith_dot_vec2_i32(-arg_1.e.xy, u_input.a.zx ^ vec2<i32>(u_input.c.x, u_input.d)), 36533i, _wgslsmith_mult_i32(-35252i, var_2.e.x)));
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b * var_2.b) - 2011f), var_2.b, arg_1.b))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1271f), arg_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))) + _wgslsmith_f_op_f32(f32(-1f) * -1414f))) * -509f);
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * 911f)) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x * global2.x), -702f))))), _wgslsmith_f_op_f32(func_4(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, arg_0.x), u_input.e.zx), 1u), 0u), Struct_1(select(true, false, true), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))), -global3.c, func_3(), global3.e), ~global1[_wgslsmith_index_u32(~arg_0.x, 30u)], max(71693u, 96576u))), global3.b);
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    var var_0 = -2147483647i;
    let var_1 = abs(abs(arg_0.x));
    return Struct_1(global4.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(func_4(vec2<u32>(u_input.b, 20185u), Struct_1(false, global2.x, vec2<i32>(u_input.a.x, global3.e.x), global3.d, u_input.a), -7244i, 4294967295u))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -423f) + _wgslsmith_f_op_f32(f32(-1f) * -1539f))), vec2<i32>(select(-7856i, select(_wgslsmith_div_i32(global1[_wgslsmith_index_u32(var_1, 30u)], global3.c.x), -u_input.c.x, global3.e.x == global1[_wgslsmith_index_u32(29804u, 30u)]), global3.a), u_input.c.x << (var_1 % 32u)), !(!select(vec2<bool>(true, global4.x), global3.d, vec2<bool>(global4.x, global3.a))), -abs(vec3<i32>(global1[_wgslsmith_index_u32(var_1 | 0u, 30u)], _wgslsmith_dot_vec3_i32(vec3<i32>(global3.e.x, -9221i, 10976i), u_input.c.yzy), global3.c.x & 2147483647i)));
}

fn func_5(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = global4.xy;
    let var_1 = vec3<f32>(902f, -591f, _wgslsmith_f_op_f32(round(472f)));
    global0 = array<vec3<u32>, 6>();
    var var_2 = Struct_1(!(!func_3().x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-2708f * global2.x), _wgslsmith_f_op_f32(-339f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x * global3.b))))), abs(arg_0.c) | _wgslsmith_clamp_vec2_i32(~select(vec2<i32>(-37213i, -17103i), global3.e.yx, vec2<bool>(global3.a, true)), vec2<i32>(u_input.d, ~global3.e.x), _wgslsmith_add_vec2_i32(countOneBits(global3.c), vec2<i32>(arg_0.c.x, 0i))), global3.d, vec3<i32>(_wgslsmith_sub_i32(2194i, global1[_wgslsmith_index_u32(abs(u_input.b), 30u)]), 1i, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~global0[_wgslsmith_index_u32(u_input.e.x, 6u)], ~global0[_wgslsmith_index_u32(4294967295u, 6u)]), 30u)]));
    var_2 = Struct_1(false, -500f, vec2<i32>(max(-2147483647i, var_2.e.x & 0i), _wgslsmith_mult_i32(~(-36955i), -arg_0.c.x ^ ~(-2147483647i))), func_3(), (vec3<i32>(firstLeadingBit(arg_0.e.x), 19918i, firstLeadingBit(48934i)) | firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(u_input.e.x, 30u)], var_2.e.x, 22201i), vec3<i32>(u_input.a.x, 5292i, global3.c.x)))) << (_wgslsmith_sub_vec3_u32(abs(u_input.e.yzz >> (vec3<u32>(83188u, 1u, u_input.e.x) % vec3<u32>(32u))), (vec3<u32>(32789u, u_input.b, 0u) | vec3<u32>(u_input.e.x, 14410u, 0u)) ^ vec3<u32>(u_input.b, 53613u, u_input.b)) % vec3<u32>(32u)));
    return !select(vec3<bool>(var_2.d.x, global3.d.x, -703f > _wgslsmith_f_op_f32(var_2.b * global3.b)), vec3<bool>(!var_2.d.x, arg_0.d.x, !(u_input.b <= u_input.e.x)), select(vec3<bool>(any(global3.d), arg_0.a, false), select(!vec3<bool>(true, global3.a, true), vec3<bool>(true, global3.d.x, global3.a), all(global4.yy)), select(vec3<bool>(false, true, true), vec3<bool>(var_2.d.x, var_2.a, true), select(vec3<bool>(arg_0.d.x, global4.x, false), vec3<bool>(false, false, true), vec3<bool>(false, global3.a, arg_0.d.x)))));
}

fn func_1() -> vec4<f32> {
    global4 = select(!select(func_5(func_2(vec3<u32>(7719u, u_input.b, u_input.e.x))), !vec3<bool>(global4.x, global4.x, true), any(!vec4<bool>(global4.x, global3.a, false, global3.d.x))), !(!(!(!vec3<bool>(global4.x, global3.a, global4.x)))), false);
    var var_0 = 163f;
    var var_1 = !(!func_3());
    global3 = func_2(global0[_wgslsmith_index_u32(~u_input.e.x | _wgslsmith_mult_u32(max(1u, 1u), max(51593u, 3130u)), 6u)]);
    let var_2 = Struct_1(var_1.x, global3.b, u_input.c.yw << (~vec2<u32>(u_input.b, 4294967295u) % vec2<u32>(32u)), select(vec2<bool>(func_3().x, global3.a), vec2<bool>(true, true), global3.a), vec3<i32>(0i, -16310i, _wgslsmith_mod_i32(max(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.b, u_input.e.x), 30u)], ~u_input.d), u_input.a.x)));
    return _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1274f, global2.x, global3.b, -1162f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, var_2.b, 491f, global3.b) + _wgslsmith_div_vec4_f32(vec4<f32>(-804f, global3.b, -1131f, global2.x), vec4<f32>(global3.b, global3.b, global2.x, global3.b))))) * vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(global3.b, -1052f)), 1000f)), 1091f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b)), global2.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, global2.x, global2.x, global3.b), vec4<f32>(1066f, global2.x, 324f, global2.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global3.b, 1188f)), select(global3.a, false, global4.x))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-393f, global3.b, 953f, -1194f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1())));
    let var_1 = Struct_1(true, _wgslsmith_f_op_f32(-var_0.x), u_input.c.zz, vec2<bool>(func_5(Struct_1(true, -1630f, u_input.c.zx, select(vec2<bool>(true, false), vec2<bool>(false, global4.x), global4.x), abs(u_input.a))).x, false), global3.e);
    var var_2 = 15265u;
    let var_3 = u_input.e.x;
    let var_4 = Struct_1(true, global2.x, select(vec2<i32>(1777i, reverseBits(global1[_wgslsmith_index_u32(~u_input.e.x, 30u)])), u_input.c.xx << (abs(~u_input.e.wz) % vec2<u32>(32u)), true), func_3(), ((_wgslsmith_div_vec3_i32(vec3<i32>(-11821i, -32053i, -2147483647i), u_input.c.xxw) >> ((global0[_wgslsmith_index_u32(45764u, 6u)] & global0[_wgslsmith_index_u32(var_3, 6u)]) % vec3<u32>(32u))) >> (u_input.e.yxw % vec3<u32>(32u))) << (firstLeadingBit(vec3<u32>(u_input.b, u_input.b, ~1u)) % vec3<u32>(32u)));
    var var_5 = u_input.e.wz;
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec4_f32(func_1()).zyx, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -621f), _wgslsmith_f_op_f32(max(159f, global3.b)), _wgslsmith_f_op_f32(-var_1.b))))), vec2<i32>(27711i, ~(~_wgslsmith_mult_i32(var_1.c.x, 39700i))), ~u_input.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(vec2<u32>(0u, var_5.x), var_4, global1[_wgslsmith_index_u32(2894u, 30u)], var_5.x)) * global3.b), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-955f, -1000f) - func_2(vec3<u32>(4294967295u, 36122u, 4294967295u)).b), func_3().x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(270f, _wgslsmith_f_op_f32(abs(-325f)))), _wgslsmith_f_op_f32(-420f + global2.x)))));
}

