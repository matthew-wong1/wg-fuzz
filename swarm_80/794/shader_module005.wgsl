struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<f32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15> = array<i32, 15>(-1i, -1i, -25052i, i32(-2147483648), 2147483647i, 1i, 34123i, -6676i, 0i, -51194i, 2147483647i, -1i, 11838i, -1i, i32(-2147483648));

var<private> global1: f32 = 172f;

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global3: array<Struct_1, 1>;

var<private> global4: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    var var_0 = arg_2.d;
    global4 = arg_2.d;
    let var_1 = firstLeadingBit(~(~(~1u)));
    var_0 = global3[_wgslsmith_index_u32(var_1, 1u)];
    var var_2 = vec2<bool>(reverseBits(var_1) >= u_input.d.x, true);
    return true;
}

fn func_2() -> i32 {
    global1 = 1000f;
    global4 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.c, ~63310u), 1u)];
    global2 = vec4<bool>(true, global2.x, func_3(firstLeadingBit((u_input.d.xzw >> (vec3<u32>(1u, 1u, 91109u) % vec3<u32>(32u))) << (vec3<u32>(65361u, u_input.d.x, 29552u) % vec3<u32>(32u))), Struct_2(_wgslsmith_mult_u32(~u_input.d.x, u_input.c), !select(vec4<bool>(global2.x, global2.x, global2.x, global2.x), vec4<bool>(global2.x, global2.x, global2.x, true), false), global0[_wgslsmith_index_u32(u_input.d.x, 15u)], Struct_1(u_input.a | vec2<i32>(-104584i, -1i), -7681i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(130f, -1000f, global4.d.x)), _wgslsmith_f_op_vec2_f32(-global4.c.xz), global4.c.x)), Struct_2(~(~u_input.d.x), !select(vec4<bool>(global2.x, global2.x, global2.x, true), vec4<bool>(false, global2.x, global2.x, true), global2.x), _wgslsmith_add_i32(1244i, abs(global0[_wgslsmith_index_u32(36084u, 15u)])), Struct_1(vec2<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 15u)], -16523i), max(43537i, global0[_wgslsmith_index_u32(4294967295u, 15u)]), _wgslsmith_f_op_vec3_f32(-global4.c), global4.c.xy, global4.c.x)), ~(~vec4<u32>(96658u, 0u, u_input.d.x, 1u))), global2.x);
    var var_0 = global3[_wgslsmith_index_u32(22515u, 1u)];
    var var_1 = Struct_2(~u_input.c, select(!(!vec4<bool>(false, global2.x, global2.x, true)), !vec4<bool>(true, global2.x, global2.x, true), true | global2.x), 0i, Struct_1(var_0.a, _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(37327i, u_input.b, -2330i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, -10246i, 0i), vec3<i32>(1i, 0i, u_input.b))), 11457i), vec3<f32>(var_0.e, _wgslsmith_div_f32(global4.d.x, _wgslsmith_f_op_f32(round(global4.e))), _wgslsmith_f_op_f32(min(var_0.d.x, global4.d.x))), _wgslsmith_f_op_vec2_f32(-var_0.c.xz), var_0.e));
    return -min(global4.b, -reverseBits(select(-69081i, 1i, false)));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>) -> Struct_1 {
    var var_0 = min(vec3<i32>(~2147483647i >> (u_input.d.x % 32u), func_2(), -1i), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, min(global0[_wgslsmith_index_u32(u_input.c, 15u)], 35929i) >> (u_input.d.x % 32u)), firstTrailingBit(~vec3<i32>(-2147483647i, -40713i, 2147483647i))));
    let var_1 = max(~u_input.d, abs(u_input.d) << (~vec4<u32>(u_input.d.x | u_input.c, ~u_input.c, abs(u_input.d.x), u_input.c) % vec4<u32>(32u)));
    let var_2 = Struct_1(vec2<i32>(select(abs(u_input.a.x), -u_input.a.x, true) & _wgslsmith_add_i32(~u_input.b, 1i), i32(-1i) * -2147483647i), firstLeadingBit(_wgslsmith_dot_vec3_i32(select(min(vec3<i32>(global0[_wgslsmith_index_u32(u_input.d.x, 15u)], global4.b, global4.a.x), vec3<i32>(33408i, 18307i, global0[_wgslsmith_index_u32(var_1.x, 15u)])), ~vec3<i32>(var_0.x, 47122i, u_input.a.x), !global2.xwz), vec3<i32>(i32(-1i) * -2147483647i, firstTrailingBit(25243i), 2147483647i))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global4.c) - _wgslsmith_f_op_vec3_f32(global4.c - vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1757f), _wgslsmith_f_op_f32(ceil(arg_0)), arg_0))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-global4.c.zz), global4.d, vec2<bool>(any(select(global2.xzx, global2.zxx, false)), !any(vec4<bool>(true, global2.x, global2.x, arg_1.x))))), arg_0);
    let var_3 = Struct_1(~(~var_0.xy), _wgslsmith_mod_i32(-24223i >> ((_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, 1u), var_1.yw) >> (0u % 32u)) % 32u), -12780i & u_input.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-172f + _wgslsmith_f_op_f32(-global4.e)), _wgslsmith_f_op_f32(select(arg_0, _wgslsmith_f_op_f32(var_2.d.x - -1142f), arg_1.x)), -647f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(var_2.c)) * _wgslsmith_f_op_vec3_f32(-global4.c)))), vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x * global4.c.x)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1719f + arg_0))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.d.x * arg_0))))), _wgslsmith_f_op_f32(f32(-1f) * -440f));
    global1 = _wgslsmith_f_op_f32(-476f + _wgslsmith_f_op_f32(sign(var_2.e)));
    return Struct_1(select(~(~firstLeadingBit(u_input.a)), countOneBits(select(vec2<i32>(var_2.b, 26685i) | vec2<i32>(57780i, -28184i), var_2.a << (var_1.yw % vec2<u32>(32u)), true)), vec2<bool>(true, false)), 41329i << (countOneBits(u_input.c) % 32u), global4.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_2.e * 2073f), -683f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c.x, arg_0) + vec2<f32>(arg_0, var_2.e)))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-556f, !select(vec4<bool>(global2.x, global2.x, !global2.x, all(global2.xzy)), select(vec4<bool>(false, global2.x, global2.x, global2.x), !vec4<bool>(global2.x, global2.x, true, true), !vec4<bool>(false, false, global2.x, true)), vec4<bool>(true, true, 0i >= u_input.a.x, global2.x)));
    let var_1 = Struct_2(60236u, select(!vec4<bool>(!global2.x, global2.x | global2.x, global2.x, false), vec4<bool>(!(var_0.d.x == -494f), -global0[_wgslsmith_index_u32(u_input.c, 15u)] < abs(u_input.a.x), global2.x, global2.x), all(vec2<bool>(false, true))), global4.a.x | _wgslsmith_mod_i32(_wgslsmith_div_i32(abs(-17526i), -42206i ^ u_input.b), _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b, global0[_wgslsmith_index_u32(1u, 15u)], -8638i), vec3<i32>(1i, global0[_wgslsmith_index_u32(65784u, 15u)], global4.a.x)), 0i)), func_1(485f, !vec4<bool>(all(vec3<bool>(true, false, global2.x)), 0i < global4.b, true, global2.x)));
    global0 = array<i32, 15>();
    var var_2 = global3[_wgslsmith_index_u32(~_wgslsmith_sub_u32(1u ^ var_1.a, ~_wgslsmith_add_u32(u_input.d.x, var_1.a) | abs(abs(var_1.a))), 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(3322f)))) + _wgslsmith_f_op_f32(select(-887f, _wgslsmith_f_op_f32(f32(-1f) * -317f), !global2.x))), _wgslsmith_f_op_f32(-1386f * -438f)), _wgslsmith_add_i32((_wgslsmith_sub_i32(var_2.a.x, -1i) ^ max(global0[_wgslsmith_index_u32(u_input.c, 15u)], -1207i)) | 1i, var_1.d.b));
}

