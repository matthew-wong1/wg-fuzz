struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec4<f32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: f32;

var<private> global2: array<u32, 29> = array<u32, 29>(72465u, 1u, 35970u, 14068u, 1u, 1u, 48667u, 1u, 1u, 21615u, 4294967295u, 232u, 1u, 0u, 21069u, 51116u, 1u, 4294967295u, 6075u, 1u, 27211u, 85431u, 62601u, 54741u, 23794u, 1u, 1u, 29972u, 46957u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    global1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(0u & ~(~4294967295u & global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, u_input.a.yy), 29u)]), 12u)]);
    return 17939u >> (abs(select(u_input.d, global2[_wgslsmith_index_u32(14074u, 29u)], true && any(vec4<bool>(true, true, false, true)))) % 32u);
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> f32 {
    var var_0 = Struct_3(Struct_2(func_3()), arg_2.a, (-firstTrailingBit(vec3<i32>(2147483647i, 1i, 1i)) & -select(vec3<i32>(-11385i, 2147483647i, 28946i), vec3<i32>(-40564i, -2147483647i, 12438i), vec3<bool>(arg_0, arg_2.e.c.x, arg_2.a.a.x))) | vec3<i32>(-2147483647i, firstTrailingBit(reverseBits(7913i)), ~(-u_input.c.x)));
    global0 = array<f32, 12>();
    let var_1 = 4294967295u;
    var var_2 = vec4<u32>(arg_2.b.x, _wgslsmith_mod_u32(reverseBits(~4294967295u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 14516u, 0u), _wgslsmith_mod_vec3_u32(u_input.a.xyz, ~vec3<u32>(arg_1, arg_1, 1u)))), arg_2.a.d, ~(~var_0.b.d));
    let var_3 = Struct_3(var_0.a, var_0.b, vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.x, arg_3, 27811i), u_input.c ^ vec3<i32>(-20685i, 0i, 2147483647i)), firstLeadingBit(u_input.c)), -1i, -_wgslsmith_clamp_i32(10080i, var_0.c.x, arg_3 | var_0.c.x)));
    return global0[_wgslsmith_index_u32(countOneBits(var_0.b.d >> (_wgslsmith_dot_vec4_u32(~u_input.a, arg_2.b) % 32u)), 12u)];
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    var var_0 = arg_0;
    var var_1 = var_0.a.c.x || true;
    var var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_div_f32(var_0.a.b, global0[_wgslsmith_index_u32(6659u, 12u)]), _wgslsmith_f_op_f32(-var_0.a.b), _wgslsmith_f_op_f32(min(var_0.d.x, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-321f, var_0.c.x, var_0.d.x)) - vec3<f32>(arg_0.c.x, var_0.d.x, var_0.c.x)), arg_0.a.a.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.c.x, 1649f, -1092f) + arg_0.d.yyz) + arg_0.d.yzw))), _wgslsmith_div_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(var_0.b, var_0.b), arg_0.b), 12u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(min(u_input.a.x, 4294967295u), 12u)]), var_0.a.b), vec3<f32>(arg_0.a.b, -2169f, _wgslsmith_f_op_f32(round(1283f)))), var_0.a.a.x));
    var var_3 = arg_0;
    let var_4 = arg_0.e.a.x;
    return arg_0;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(-arg_1.b.b);
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1152f)) * _wgslsmith_f_op_f32(f32(-1f) * -454f)))));
    var var_1 = ~(-vec4<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-36394i, u_input.b), reverseBits(u_input.c.xz)), 2147483647i, u_input.c.x));
    let var_2 = func_4(Struct_4(arg_1.b, ~_wgslsmith_add_vec4_u32(~vec4<u32>(arg_3, global2[_wgslsmith_index_u32(u_input.a.x, 29u)], 0u, global2[_wgslsmith_index_u32(u_input.d, 29u)]), arg_2), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1279f, -364f, var_0.x, var_0.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -364f, -1000f, -508f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1158f - -800f), _wgslsmith_f_op_f32(func_2(arg_0.x, arg_3, Struct_4(Struct_1(arg_0.zx, 183f, arg_1.b.a, 0u), arg_2, vec4<f32>(arg_1.b.b, arg_1.b.b, var_0.x, 2345f), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], 654f, -644f, var_0.x), arg_1.b), 1i)), 660f, _wgslsmith_f_op_f32(-var_0.x))), Struct_1(select(select(vec2<bool>(arg_0.x, arg_0.x), arg_0.yz, false), vec2<bool>(arg_1.b.c.x, arg_0.x), arg_1.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1398f, var_0.x)), vec2<bool>(!arg_0.x, true), select(arg_1.b.d, 4294967295u, arg_1.b.c.x) >> (arg_3 % 32u))));
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.d.x - arg_1.b.b) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(804f, 607f) * 978f), -952f)), arg_1.b.b);
    return var_2.e;
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec4<bool>) -> vec2<bool> {
    var var_0 = u_input.a.x;
    global1 = global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec3_u32(u_input.a.wzy, ~(~u_input.a.wwy)) << (func_4(func_4(func_4(Struct_4(Struct_1(arg_2.zy, -1000f, vec2<bool>(true, arg_2.x), 1u), u_input.a, vec4<f32>(-1216f, -683f, 1000f, 1000f), vec4<f32>(629f, -359f, arg_0.b.b, 606f), arg_0.b)))).a.d % 32u)), 12u)];
    let var_1 = u_input.a.x;
    var var_2 = arg_0.b;
    global2 = array<u32, 29>();
    return vec2<bool>(!(firstLeadingBit(var_1 | arg_1.d) <= (~var_2.d << (abs(var_1) % 32u))), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.b & (u_input.c.x >> (1u % 32u)), abs(0i), _wgslsmith_sub_i32(u_input.c.x, abs(0i)));
    global0 = array<f32, 12>();
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1278f);
    let var_1 = Struct_1(vec2<bool>(false, true), _wgslsmith_f_op_f32(147f + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 12u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(336f * -1510f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), any(vec2<bool>(true, true))), vec2<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), false)), _wgslsmith_sub_u32(u_input.a.x, 86956u) <= countOneBits(55909u)), !func_5(Struct_3(Struct_2(1u), Struct_1(vec2<bool>(true, false), global0[_wgslsmith_index_u32(18784u, 12u)], vec2<bool>(true, false), 0u), u_input.c), func_1(vec3<bool>(true, false, true), Struct_3(Struct_2(0u), Struct_1(vec2<bool>(false, true), 228f, vec2<bool>(false, false), u_input.d), u_input.c), vec4<u32>(u_input.d, u_input.a.x, 1u, 0u), 14474u), vec4<bool>(true, true, true, true))), reverseBits(global2[_wgslsmith_index_u32(1u, 29u)]));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(558f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-3151f, global0[_wgslsmith_index_u32(59886u, 12u)])))))) * _wgslsmith_f_op_f32(f32(-1f) * -236f)) + -304f);
    global0 = array<f32, 12>();
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~_wgslsmith_clamp_u32(0u, u_input.a.x, 26052u)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(452f, _wgslsmith_f_op_f32(-395f - 782f), _wgslsmith_f_op_f32(ceil(var_1.b)), _wgslsmith_f_op_f32(-var_1.b)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(-896f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(204f, global0[_wgslsmith_index_u32(0u, 12u)]), -322f, !var_1.c.x)), -357f, func_1(!vec3<bool>(var_1.c.x, false, true), Struct_3(Struct_2(44326u), var_1, vec3<i32>(var_0.x, u_input.c.x, var_0.x)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1.d, u_input.d, 1u, u_input.d), vec4<u32>(56872u, 87902u, 10613u, u_input.a.x)), 1u).b))), var_0.x, vec2<f32>(-845f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 12u)] - var_1.b))), u_input.c);
}

