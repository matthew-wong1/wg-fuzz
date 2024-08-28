struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(4294967295u, 0u);

var<private> global1: vec3<f32> = vec3<f32>(1492f, -2064f, 1497f);

var<private> global2: Struct_1 = Struct_1(vec3<bool>(false, true, true), 29237u);

var<private> global3: bool = false;

var<private> global4: array<bool, 13>;

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec3<i32>) -> vec3<bool> {
    var var_0 = any(vec4<bool>(!(!(global2.b != 1u)), !(_wgslsmith_f_op_f32(max(-812f, -659f)) != _wgslsmith_f_op_f32(ceil(724f))), any(vec3<bool>(!global2.a.x, global4[_wgslsmith_index_u32(1u, 13u)] != global4[_wgslsmith_index_u32(global0.x, 13u)], global4[_wgslsmith_index_u32(global2.b, 13u)])), any(vec2<bool>(false && global2.a.x, global4[_wgslsmith_index_u32(~u_input.d, 13u)]))));
    let var_1 = Struct_1(vec3<bool>(1i > firstTrailingBit(select(2147483647i, arg_2.x, global4[_wgslsmith_index_u32(48743u, 13u)])), true, !(!(!global2.a.x))), ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.x, 12322u), vec2<u32>(global2.b, global0.x))));
    let var_2 = Struct_3(-398f, Struct_2(_wgslsmith_mult_i32(reverseBits(arg_2.x), 31598i), 399f), Struct_2(abs(arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), ~676i);
    global2 = var_1;
    let var_3 = global0.x;
    return vec3<bool>(false, global2.a.x, all(vec4<bool>(true, all(vec4<bool>(global2.a.x, true, global4[_wgslsmith_index_u32(36951u, 13u)], false)), global2.a.x, true)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: vec4<i32>) -> Struct_2 {
    global0 = vec2<u32>(u_input.d, _wgslsmith_mod_u32(abs(43973u), ~(~(global2.b >> (42271u % 32u)))));
    let var_0 = Struct_2(arg_3.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(arg_1)))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + 847f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-240f + -958f)), _wgslsmith_f_op_f32(f32(-1f) * -2317f));
    let var_2 = var_0;
    var var_3 = Struct_3(-1000f, var_2, Struct_2(2147483647i, arg_1), _wgslsmith_dot_vec4_i32(vec4<i32>(~reverseBits(var_0.a), -reverseBits(1431i), u_input.b.x, 2147483647i), _wgslsmith_mod_vec4_i32(countOneBits(abs(u_input.b)), vec4<i32>(~u_input.e, var_2.a, 2147483647i, u_input.a.x))));
    return Struct_2(var_3.c.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.b)) + var_3.a), 670f)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: Struct_2) -> vec4<f32> {
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-532f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.x))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -766f));
    let var_0 = vec3<i32>(func_3(select(select(vec3<bool>(global4[_wgslsmith_index_u32(1u, 13u)], global2.a.x, true), vec3<bool>(false, global2.a.x, global4[_wgslsmith_index_u32(8114u, 13u)]), vec3<bool>(true, global2.a.x, global2.a.x)), vec3<bool>(global4[_wgslsmith_index_u32(0u, 13u)], global4[_wgslsmith_index_u32(u_input.c, 13u)], global2.a.x), !vec3<bool>(global4[_wgslsmith_index_u32(u_input.c, 13u)], false, global2.a.x)), _wgslsmith_div_f32(1394f, arg_2.b), select(select(global2.a.xx, global2.a.xx, global2.a.x), vec2<bool>(global2.a.x, true), true), _wgslsmith_mod_vec4_i32(~u_input.b, vec4<i32>(-2147483647i, -2147483647i, arg_1, u_input.b.x))).a, arg_1, 2147483647i) << (min(firstTrailingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, global0.x, global0.x), _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 23360u, 1u), vec3<u32>(0u, global2.b, 1u), vec3<u32>(global2.b, global2.b, u_input.c)), _wgslsmith_sub_vec3_u32(vec3<u32>(global2.b, global2.b, u_input.d), vec3<u32>(57081u, global2.b, global2.b)))), vec3<u32>(reverseBits(~4294967295u), ~_wgslsmith_mod_u32(u_input.d, global2.b), u_input.c)) % vec3<u32>(32u));
    global0 = ~(~(vec2<u32>(~u_input.c, ~global0.x) & ~(vec2<u32>(1202u, 51811u) << (vec2<u32>(u_input.c, 4294967295u) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.b, global1.x))), _wgslsmith_f_op_f32(-arg_2.b), -1500f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(arg_0.b.b)))), arg_0.b.b, arg_0.c.b, _wgslsmith_f_op_f32(round(arg_2.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(arg_2.b)), global1.x, _wgslsmith_f_op_f32(-arg_2.b), 282f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0.a, 1000f, -1000f, arg_0.a)))))), select(select(vec4<bool>(false, global2.a.x, global2.a.x, false), select(vec4<bool>(false, global2.a.x, global2.a.x, global4[_wgslsmith_index_u32(u_input.c, 13u)]), vec4<bool>(global4[_wgslsmith_index_u32(1u, 13u)], global2.a.x, global2.a.x, global2.a.x), vec4<bool>(false, global4[_wgslsmith_index_u32(global2.b, 13u)], global2.a.x, global4[_wgslsmith_index_u32(4294967295u, 13u)])), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, global4[_wgslsmith_index_u32(0u, 13u)], global4[_wgslsmith_index_u32(41048u, 13u)], global4[_wgslsmith_index_u32(32379u, 13u)]))), vec4<bool>(global2.a.x & false, true, !global2.a.x, false != global4[_wgslsmith_index_u32(global2.b, 13u)]), global4[_wgslsmith_index_u32(firstLeadingBit(21488u), 13u)])))));
    let var_2 = arg_0.b.b;
    return var_1;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec4<bool>) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(global1.x, func_3(func_2(global1.yy, Struct_2(18752i, 2854f), u_input.b.wzx), global1.x, !global2.a.xz, vec4<i32>(0i, -2147483647i, 0i, u_input.a.x)), func_3(func_2(global1.xy, Struct_2(-47701i, global1.x), u_input.b.xxz), _wgslsmith_f_op_f32(f32(-1f) * -584f), global2.a.xy, -u_input.b), u_input.b.x >> (global0.x % 32u)), u_input.e, func_3(select(!global2.a, !vec3<bool>(false, false, arg_1.x), select(global2.a, vec3<bool>(global4[_wgslsmith_index_u32(0u, 13u)], true, false), global4[_wgslsmith_index_u32(u_input.c, 13u)])), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(step(1276f, global1.x)))), select(select(vec2<bool>(arg_1.x, false), vec2<bool>(global2.a.x, true), arg_1.x), global2.a.yy, any(arg_1.yxz)), vec4<i32>(u_input.a.x, u_input.b.x, 0i, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x))))), vec4<f32>(128f, global1.x, 1810f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(Struct_3(1325f, Struct_2(u_input.b.x, global1.x), Struct_2(-21200i, global1.x), u_input.b.x), -2147483647i, Struct_2(u_input.b.x, global1.x))).x)));
    var var_1 = arg_0.x;
    var var_2 = ~(vec2<u32>(45982u, abs(60419u)) ^ firstLeadingBit(_wgslsmith_add_vec2_u32(~vec2<u32>(arg_0.x, global0.x), arg_0.zy)));
    let var_3 = vec4<f32>(-1214f, global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(global1.x - global1.x))) - var_0.x), -504f);
    let var_4 = ~(global0.x << (~global2.b % 32u));
    return StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_vec4_f32(func_4(Struct_3(var_0.x, Struct_2(-22099i, 569f), func_3(vec3<bool>(true, global4[_wgslsmith_index_u32(0u, 13u)], global2.a.x), 650f, vec2<bool>(false, true), vec4<i32>(6816i, -1i, u_input.a.x, -35324i)), 1i), u_input.b.x, func_3(select(vec3<bool>(true, true, arg_1.x), global2.a, arg_1.x), _wgslsmith_f_op_f32(global1.x + global1.x), !global2.a.xz, u_input.b))).x)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_3.zwx))), vec2<u32>(~28320u, _wgslsmith_add_u32(_wgslsmith_clamp_u32(abs(1u), _wgslsmith_dot_vec2_u32(arg_0.xw, arg_0.zz), _wgslsmith_dot_vec4_u32(arg_0, vec4<u32>(46905u, 0u, 4294967295u, 0u))), ~1u >> (0u % 32u))), u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-689f, -1485f))))), _wgslsmith_f_op_f32(-global1.x)), vec3<f32>(948f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(ceil(-360f))) - 862f), -313f));
    global0 = ~abs(reverseBits(vec2<u32>(813u, u_input.c) & vec2<u32>(global0.x, 58635u))) << (~(~countOneBits(vec2<u32>(global2.b, 0u)) & vec2<u32>(0u, global2.b)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = func_1(vec4<u32>(4294967295u, reverseBits(global0.x), u_input.d, ~0u) ^ ~_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 22696u, global0.x, 58200u), vec4<u32>(global2.b, 21594u, 4294967295u, 12399u)), _wgslsmith_mult_vec4_u32(vec4<u32>(36599u, u_input.d, global2.b, global0.x), vec4<u32>(global2.b, 6573u, 1u, 32143u))), vec4<bool>(any(!select(global2.a.xx, vec2<bool>(global2.a.x, global2.a.x), global2.a.x)), true, global4[_wgslsmith_index_u32(~4294967295u, 13u)], all(vec2<bool>(false, true))));
}

