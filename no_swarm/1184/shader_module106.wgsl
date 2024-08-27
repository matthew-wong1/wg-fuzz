struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec3<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<u32, 23> = array<u32, 23>(1u, 2299u, 1u, 44859u, 11960u, 22708u, 63799u, 4294967295u, 4294967295u, 0u, 23366u, 0u, 1u, 123165u, 2511u, 47836u, 46661u, 4294967295u, 14390u, 4294967295u, 34479u, 4294967295u, 37812u);

var<private> global2: vec4<f32>;

var<private> global3: vec4<i32>;

var<private> global4: array<u32, 15>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec3<bool>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2.x, 468f))), -1606f)));
    var var_1 = false;
    var var_2 = Struct_1(~vec3<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 5940u, global1[_wgslsmith_index_u32(3660u, 23u)], u_input.d), vec4<u32>(global4[_wgslsmith_index_u32(1u, 15u)], 0u, 36159u, u_input.b)), ~vec4<u32>(arg_1, global1[_wgslsmith_index_u32(u_input.d, 23u)], arg_0, 75677u)), 69073u), vec4<u32>(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(49932u, arg_1), 23u)] >> (firstTrailingBit(_wgslsmith_clamp_u32(arg_0, arg_0, 4294967295u)) % 32u), 1u, global1[_wgslsmith_index_u32(~countOneBits(0u), 23u)] ^ global4[_wgslsmith_index_u32(~(~u_input.b), 15u)], _wgslsmith_sub_u32(arg_0 << (~arg_1 % 32u), u_input.d)), arg_2, vec4<f32>(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x)))), global2.x));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)))), -901f));
    var_1 = false && !(global2.x > 2004f);
    return var_2.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(~(~vec3<u32>(66778u, 4294967295u, global4[_wgslsmith_index_u32(16167u, 15u)])) | ~select(vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(734u, 23u)], 23u)], 23u)], global1[_wgslsmith_index_u32(u_input.b, 23u)]), vec3<u32>(global4[_wgslsmith_index_u32(u_input.d, 15u)], 4294967295u, 46157u), vec3<bool>(global0.x, global0.x, true)), abs(func_3(firstTrailingBit(u_input.b), u_input.d, !global0.yxx)), vec3<u32>(global4[_wgslsmith_index_u32(1u, 15u)], ~_wgslsmith_mod_u32(3571u, u_input.d), abs(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], u_input.b)))), vec4<u32>(44253u, 7446u, u_input.d, 48888u), select(vec3<bool>(select(arg_0.x <= arg_0.x, all(vec4<bool>(global0.x, global0.x, global0.x, global0.x)), global2.x <= -1215f), false, !global0.x & any(vec3<bool>(true, global0.x, global0.x))), vec3<bool>(false, true, true), global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-894f, 194f, 1148f, global2.x)))))));
    let var_1 = Struct_2(Struct_1(var_0.a, var_0.b, !(!global0.xzx), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(var_0.d - var_0.d)))), -(min(vec3<i32>(19288i, arg_1.x, -2147483647i), vec3<i32>(-2147483647i, global3.x, 50294i)) << (_wgslsmith_mod_vec3_u32(~vec3<u32>(123235u, global1[_wgslsmith_index_u32(var_0.a.x, 23u)], u_input.b), ~var_0.a) % vec3<u32>(32u))), global3.x, Struct_1(vec3<u32>(4160u, ~(~global1[_wgslsmith_index_u32(var_0.a.x, 23u)]), 22890u), ~vec4<u32>(19634u, _wgslsmith_sub_u32(u_input.b, 0u), ~global1[_wgslsmith_index_u32(4294967295u, 23u)], select(u_input.b, global1[_wgslsmith_index_u32(var_0.a.x, 23u)], global0.x)), vec3<bool>(false, !(global0.x && var_0.c.x), global0.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.x, -521f, global2.x, -871f), var_0.d, var_0.c.x)), vec4<f32>(-421f, global2.x, arg_0.x, arg_0.x), !global0.x))))));
    let var_2 = Struct_1(var_1.d.a, vec4<u32>(11841u, ~5247u, 0u, u_input.b), global0.wxx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global2.x, _wgslsmith_div_f32(1128f, var_1.a.d.x), _wgslsmith_div_f32(arg_0.x, global2.x), _wgslsmith_f_op_f32(f32(-1f) * -947f)), var_0.d)));
    return 1000f;
}

fn func_1(arg_0: vec2<bool>) -> vec3<u32> {
    let var_0 = global0.x;
    global1 = array<u32, 23>();
    global2 = vec4<f32>(global2.x, -1736f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1098f + global2.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<f32>(358f, -148f, global2.x), vec3<i32>(0i, 25673i, 2147483647i))) * global2.x)), global2.x);
    var var_1 = all(select(select(global0.xw, select(global0.wy, vec2<bool>(true, true), select(vec2<bool>(true, arg_0.x), vec2<bool>(true, false), arg_0.x)), global0.yy), global0.zz, !(!any(vec4<bool>(arg_0.x, true, false, false)))));
    var var_2 = Struct_1(vec3<u32>(45300u, _wgslsmith_add_u32(~u_input.b, 21812u), 76949u ^ _wgslsmith_dot_vec2_u32(vec2<u32>(global4[_wgslsmith_index_u32(1u, 15u)], u_input.b), vec2<u32>(4294967295u, 4294967295u))) >> (firstLeadingBit(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, global4[_wgslsmith_index_u32(4294967295u, 15u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d, 23u)], 15u)], 23u)], 15u)]), vec3<u32>(u_input.b, 19058u, u_input.b)) << (select(vec3<u32>(global4[_wgslsmith_index_u32(66873u, 15u)], u_input.b, u_input.d), vec3<u32>(2692u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], 23u)], 4294967295u), global0.ywz) % vec3<u32>(32u))) % vec3<u32>(32u)), vec4<u32>(~6581u, 4294967295u ^ u_input.b, firstTrailingBit(~select(4294967295u, u_input.b, arg_0.x)), firstTrailingBit(3130u)), !vec3<bool>(true, !(arg_0.x | false), all(vec3<bool>(true, false, arg_0.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, -694f, -101f, global2.x))))))));
    return _wgslsmith_clamp_vec3_u32(var_2.a, ~vec3<u32>(0u, reverseBits(u_input.d) & select(4294967295u, global4[_wgslsmith_index_u32(u_input.d, 15u)], var_2.c.x), max(u_input.b, var_2.b.x) & var_2.a.x), ~firstLeadingBit(~(var_2.b.yxz | var_2.b.zww)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 23>();
    var var_0 = Struct_1(_wgslsmith_clamp_vec3_u32(select(abs(vec3<u32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], 1u, u_input.b)), vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(0u, 23u)], 42265u) << (vec3<u32>(u_input.d, global1[_wgslsmith_index_u32(u_input.d, 23u)], global4[_wgslsmith_index_u32(u_input.d, 15u)]) % vec3<u32>(32u)), any(vec4<bool>(true, true, global0.x, global0.x))) | ~vec3<u32>(u_input.d, u_input.d, 8833u), _wgslsmith_mod_vec3_u32(~(vec3<u32>(0u, 106302u, 4294967295u) ^ vec3<u32>(u_input.b, 47640u, 25861u)), func_1(!global0.wz)), reverseBits(~(~vec3<u32>(global1[_wgslsmith_index_u32(u_input.b, 23u)], u_input.d, u_input.d)))), _wgslsmith_add_vec4_u32((vec4<u32>(0u, global1[_wgslsmith_index_u32(u_input.b, 23u)], global1[_wgslsmith_index_u32(89375u, 23u)], 4294967295u) ^ vec4<u32>(24000u, 26458u, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 15u)], 4294967295u)) << (min(vec4<u32>(4262u, 33714u, u_input.b, 1146u), vec4<u32>(0u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b, 15u)], 15u)], 23u)], 23u)], global4[_wgslsmith_index_u32(u_input.b, 15u)])) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.b, 23u)], global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 23u)], 15u)]), ~0u, 22623u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, global4[_wgslsmith_index_u32(27713u, 15u)]), vec2<u32>(global4[_wgslsmith_index_u32(u_input.d, 15u)], 4294967295u)))) ^ min(abs(_wgslsmith_div_vec4_u32(vec4<u32>(24828u, global4[_wgslsmith_index_u32(52779u, 15u)], 96528u, u_input.b), vec4<u32>(25589u, 44103u, global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(29948u, 23u)], 15u)], u_input.b))), vec4<u32>(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(20608u, 15u)], 23u)], 0u, u_input.d, 4294967295u) & max(vec4<u32>(global4[_wgslsmith_index_u32(0u, 15u)], 17893u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73722u, 23u)], 23u)], global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(99931u, 23u)], 15u)], 23u)]), vec4<u32>(5030u, global4[_wgslsmith_index_u32(124971u, 15u)], 60032u, global1[_wgslsmith_index_u32(0u, 23u)]))), select(!select(vec3<bool>(true, false, global0.x), select(global0.ywx, global0.wwx, true), false), select(vec3<bool>(all(global0.wwx), true, global0.x), vec3<bool>(global0.x, global0.x, true), global0.x), !(!(41091i < u_input.a))), vec4<f32>(624f, -1943f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(global2.x)), -659f))), global2.x));
    global4 = array<u32, 15>();
    var var_1 = !select(vec3<bool>((true || var_0.c.x) && false, _wgslsmith_f_op_f32(global2.x + var_0.d.x) == _wgslsmith_f_op_f32(var_0.d.x - -595f), any(!vec4<bool>(false, var_0.c.x, false, true))), vec3<bool>(global0.x, var_0.c.x, var_0.c.x), all(vec4<bool>(var_0.a.x != var_0.b.x, any(global0.wxw), var_0.c.x, any(vec2<bool>(false, true)))));
    var_1 = select(var_0.c, select(!select(var_0.c, !global0.xxz, !vec3<bool>(var_0.c.x, true, global0.x)), !global0.xxy, vec3<bool>(!all(vec4<bool>(global0.x, true, global0.x, true)), true, var_0.c.x)), global0.wxy);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.zxy, _wgslsmith_mod_u32(global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0.b.x, 0u) & 0u, 15u)] | _wgslsmith_mult_u32(var_0.a.x, global4[_wgslsmith_index_u32(0u, 15u)]), 4294967295u), _wgslsmith_mod_vec2_u32(firstLeadingBit(_wgslsmith_sub_vec2_u32(~var_0.a.yz, var_0.b.zz)), ~vec2<u32>(~18199u, ~7691u)), -508f, abs(_wgslsmith_dot_vec4_u32(max(var_0.b, var_0.b), vec4<u32>(_wgslsmith_mod_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a.x, 23u)], 23u)]), global1[_wgslsmith_index_u32(max(1u, 244u), 23u)], 1u, firstLeadingBit(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(82283u, 15u)], 23u)])))));
}

