struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
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

var<private> global0: bool = false;

var<private> global1: Struct_3;

var<private> global2: i32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> u32 {
    global1 = Struct_3(vec4<bool>(all(select(vec2<bool>(false, arg_1.a.a), select(global1.a.zx, global1.a.zz, global1.a.xx), !global1.a.xz)), true, _wgslsmith_dot_vec3_u32(vec3<u32>(15560u, u_input.b.x, 0u), vec3<u32>(0u, 1u, global1.d.x)) > ~(~4294967295u), true), Struct_2(Struct_1(false), Struct_1(all(vec2<bool>(arg_1.b.a, true))), global1.b.c), firstTrailingBit(vec2<u32>(u_input.b.x, global1.c.x)), global1.d);
    let var_0 = arg_1.a;
    global1 = Struct_3(global1.a, arg_1, ~(vec2<u32>(1u, u_input.a) & vec2<u32>(1u & global1.d.x, ~u_input.b.x)), countOneBits(vec4<u32>(~u_input.b.x, ~global1.c.x, global1.d.x, _wgslsmith_dot_vec3_u32(global1.d.xxw, vec3<u32>(7394u, global1.d.x, global1.c.x))) << (global1.d % vec4<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-133f, 232f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 1078f))))))));
    var var_2 = Struct_4(select(min(vec4<i32>(arg_1.c.x, global1.b.c.x ^ -1i, arg_1.c.x, 16992i), _wgslsmith_sub_vec4_i32(select(vec4<i32>(arg_1.c.x, global1.b.c.x, -1i, -7668i), vec4<i32>(-2147483647i, u_input.c, u_input.c, 2147483647i), vec4<bool>(var_0.a, false, var_0.a, false)), vec4<i32>(1i, u_input.c, -21400i, global1.b.c.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(-global1.b.c.xx, select(vec2<i32>(global1.b.c.x, -2147483647i), global1.b.c.zx, vec2<bool>(true, arg_1.b.a))), (global1.b.c.x << (global1.c.x % 32u)) & (global1.b.c.x << (global1.c.x % 32u)), -_wgslsmith_dot_vec4_i32(vec4<i32>(5742i, -2147483647i, arg_1.c.x, global1.b.c.x), vec4<i32>(global1.b.c.x, u_input.c, 0i, 1554i)), -28693i), vec4<bool>(all(vec4<bool>(true, arg_1.b.a, global1.b.a.a, false)), true, true, true)), ~55670i);
    return _wgslsmith_dot_vec4_u32(~(~firstLeadingBit(global1.d)), vec4<u32>(~(u_input.a & global1.d.x), ~_wgslsmith_clamp_u32(u_input.a, 37405u, global1.c.x), global1.d.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), global1.d.zyx), countOneBits(global1.d.x)))) >> (~0u % 32u);
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    global1 = Struct_3(global1.a, global1.b, vec2<u32>(arg_0.x, u_input.b.x ^ (~global1.d.x << (func_3(global1.a.x, Struct_2(Struct_1(global1.b.b.a), global1.b.b, vec3<i32>(global1.b.c.x, global1.b.c.x, global1.b.c.x))) % 32u))), vec4<u32>(u_input.a, 1u, _wgslsmith_mult_u32(46917u, firstTrailingBit(43474u) >> (select(1u, 0u, false) % 32u)), reverseBits(~11817u)));
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_1 = _wgslsmith_add_i32(abs(select(-1i, -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -1i, global1.b.c.x, global1.b.c.x), vec4<i32>(2147483647i, global1.b.c.x, u_input.c, 26486i)) > u_input.c)), 1i);
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1647f))), 393f, 536f)));
    var var_3 = Struct_4(min(~(vec4<i32>(-732i, -1i, 0i, global1.b.c.x) ^ vec4<i32>(var_1, -53361i, global1.b.c.x, var_1)) & min(_wgslsmith_sub_vec4_i32(vec4<i32>(353i, -2147483647i, var_1, global1.b.c.x), vec4<i32>(global1.b.c.x, -1i, global1.b.c.x, -2147483647i)), vec4<i32>(12277i, global1.b.c.x, -5971i, -56689i)), ~firstLeadingBit(-vec4<i32>(32868i, var_1, global1.b.c.x, global1.b.c.x))), u_input.c);
    return Struct_3(select(global1.a, global1.a, vec4<bool>(global1.a.x, !(!global1.a.x), !(var_2.x <= var_2.x), global1.a.x)), global1.b, arg_0.zz, vec4<u32>(0u, ~global1.d.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b.x, 2317u), firstLeadingBit(global1.c & u_input.b)), _wgslsmith_mod_u32(arg_0.x, 1u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: bool) -> vec3<f32> {
    var var_0 = vec4<bool>(global1.a.x, all(global1.a.ww), global1.b.b.a, false);
    let var_1 = any(select(vec2<bool>(true, true), var_0.wz, vec2<bool>(true, !arg_1)));
    let var_2 = func_2(_wgslsmith_add_vec3_u32(vec3<u32>(countOneBits(4294967295u), 12964u, u_input.a), ~min(~global1.d.yxy, global1.d.yzx)));
    let var_3 = select(vec4<u32>(arg_0.x, select(_wgslsmith_dot_vec2_u32(~vec2<u32>(9229u, 33849u), u_input.b), ~min(4294967295u, 4294967295u), var_2.a.x), ~(~global1.c.x) & _wgslsmith_sub_u32(~44142u, ~arg_0.x), ~arg_0.x), var_2.d, true);
    global1 = Struct_3(!func_2(_wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_0.x, 4294967295u, 44347u)), ~vec3<u32>(var_2.c.x, 29421u, var_2.c.x))).a, func_2(~vec3<u32>(~34586u, _wgslsmith_dot_vec4_u32(var_3, global1.d), select(var_2.d.x, global1.c.x, true))).b, vec2<u32>(~select(4294967295u, 13021u, var_1) | select(~4294967295u, 4294967295u, all(var_0.yy)), ~1u), (var_3 & ~select(var_3, var_3, vec4<bool>(var_0.x, var_0.x, true, false))) | ~var_3);
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -361f), _wgslsmith_f_op_f32(floor(945f))) + _wgslsmith_f_op_f32(-1f)) + 1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(302f)) - -423f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(568f * _wgslsmith_f_op_f32(f32(-1f) * -320f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-290f * 1f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(891f, -702f))) * -522f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(676f)) * -177f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f))))) + 1000f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_1(global1.d.yw, global1.a.x)), vec3<f32>(-816f, -804f, 702f)))))));
    var var_2 = global1.b;
    var var_3 = select(select(global1.a, func_2(global1.d.zwz & global1.d.zxw).a, vec4<bool>(var_2.a.a, false, !(u_input.c > global1.b.c.x), any(func_2(vec3<u32>(global1.d.x, global1.c.x, u_input.a)).a.xzy))), func_2(global1.d.wxx).a, global1.b.c.x != u_input.c);
    let var_4 = func_2(vec3<u32>(1u, ~(~0u), firstTrailingBit(~(~u_input.b.x))));
    var var_5 = reverseBits(~global1.d.x);
    var var_6 = func_2(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), firstLeadingBit(20419u)), 1u), func_2(countOneBits(firstTrailingBit(vec3<u32>(0u, var_4.c.x, var_4.d.x)))).c.x, _wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(~u_input.b.x, ~11597u)))).a;
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -620f), _wgslsmith_f_op_vec3_f32(func_1(vec2<u32>(global1.d.x, ~(var_4.d.x << (u_input.a % 32u))), all(!select(var_6.xx, var_3.xw, vec2<bool>(var_4.a.x, false))))).x);
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_vec2_i32(global1.b.c.yx, _wgslsmith_clamp_vec2_i32(~var_2.c.yx, _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.c), var_2.c.xy, vec2<i32>(-6321i, var_2.c.x)), vec2<i32>(global1.b.c.x, -34120i)), var_2.c.zz));
}

