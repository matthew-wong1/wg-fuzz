struct Struct_1 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

var<private> global1: array<i32, 6>;

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec2<i32>) -> bool {
    let var_0 = u_input.d.x;
    let var_1 = arg_2.x;
    global1 = array<i32, 6>();
    var var_2 = reverseBits(~vec2<u32>(_wgslsmith_add_u32(var_0, _wgslsmith_div_u32(525u, 31210u)), var_0 >> (1u % 32u)));
    let var_3 = Struct_3(vec4<i32>(-(arg_0.x & _wgslsmith_sub_i32(-48682i, arg_1.x)), -1i, ~arg_2.x, 2147483647i));
    return true;
}

fn func_3() -> f32 {
    global0 = array<Struct_2, 18>();
    let var_0 = Struct_1(~vec2<u32>(~9448u, u_input.d.x), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1338f, 601f)) - 1193f) + 158f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-161f - 239f)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1000f))))), 375f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(890f, -1054f))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2270f), _wgslsmith_f_op_f32(max(-1000f, 1841f)))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(722f, 1355f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1526f, 707f, true))))), -52865i);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1752f, 1000f)), var_0.b.xy, !(!global2.xz))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-770f + var_0.c.x), _wgslsmith_f_op_f32(trunc(1052f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_0.c))))));
    let var_2 = vec3<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.c.x, var_1.x)) - _wgslsmith_f_op_f32(-var_0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(f32(-1f) * -1210f)))))));
    var var_3 = Struct_2(var_0, var_0, var_2.x, 44503u);
    return 1000f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> bool {
    global0 = array<Struct_2, 18>();
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(187f, _wgslsmith_f_op_f32(-447f * arg_0.c.x)) + _wgslsmith_div_f32(arg_1.a.c.x, 473f))))));
    return select(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-61999i, u_input.c.x), reverseBits(u_input.a.x), firstLeadingBit(u_input.c.x))) != -(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 4373u, 4294967295u, 330u), vec4<u32>(57776u, 31217u, u_input.d.x, arg_0.a.x)), 6u)] | 0i), any(vec2<bool>(func_2(u_input.a, select(u_input.a, vec2<i32>(-1i, arg_1.a.d), global2.yz), vec2<i32>(26777i, 0i)), global2.x)), ~u_input.b <= 1u);
}

fn func_1(arg_0: vec4<bool>) -> vec3<u32> {
    global2 = vec4<bool>(!select(func_2(vec2<i32>(u_input.c.x, 2147483647i) << (vec2<u32>(u_input.d.x, u_input.d.x) % vec2<u32>(32u)), ~u_input.a, vec2<i32>(-39901i, u_input.a.x) & u_input.c.yy), true, !global2.x), !func_2(vec2<i32>(max(global1[_wgslsmith_index_u32(u_input.d.x, 6u)], global1[_wgslsmith_index_u32(u_input.d.x, 6u)]), u_input.c.x), countOneBits(u_input.c.zy) << (u_input.d.xw % vec2<u32>(32u)), -abs(vec2<i32>(1i, u_input.a.x))), !select(any(global2.yy) || true, any(select(global2.zwy, vec3<bool>(true, arg_0.x, true), global2.xzz)), arg_0.x), any(arg_0));
    var var_0 = func_4(Struct_1(vec2<u32>(39853u, 4294967295u), vec3<f32>(-353f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(184f * -814f) + -1086f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -429f), _wgslsmith_f_op_f32(-270f * -1735f))), -1i), global0[_wgslsmith_index_u32(~44580u, 18u)]);
    global1 = array<i32, 6>();
    global2 = !arg_0;
    let var_1 = Struct_2(Struct_1(vec2<u32>(_wgslsmith_mod_u32(u_input.d.x, _wgslsmith_mult_u32(55102u, 69208u)), u_input.d.x), _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-473f, 521f, 121f) * vec3<f32>(1917f, -808f, 1000f)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-315f, 130f, 147f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1022f, 644f, 307f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-183f, _wgslsmith_f_op_f32(f32(-1f) * -542f))), 2147483647i), Struct_1(u_input.d.zw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-432f, -418f, 591f) * vec3<f32>(877f, -504f, -1152f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2166f, 370f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-725f, -700f)), !vec2<bool>(global2.x, global2.x)))), 1i), -766f, (((u_input.d.x ^ 0u) >> (min(11420u, u_input.b) % 32u)) | u_input.d.x) | 101818u);
    return abs(u_input.d.xyw);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec4<bool>(global2.x, (u_input.d.x > u_input.d.x) || true, select(false, true, (global2.x | global2.x) && true) || global2.x, all(!select(!vec3<bool>(global2.x, global2.x, global2.x), select(global2.wyz, vec3<bool>(true, false, global2.x), global2.x), select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(true, global2.x, global2.x), global2.x))));
    var var_0 = select((u_input.d.wxz >> (vec3<u32>(~4294967295u, _wgslsmith_mod_u32(1u, 4294967295u), u_input.b) % vec3<u32>(32u))) ^ u_input.d.xwz, func_1(!(!vec4<bool>(global2.x, global2.x, false, true))), (27466u <= ~(u_input.d.x | 0u)) & any(vec2<bool>(global2.x || global2.x, !global2.x)));
    global1 = array<i32, 6>();
    global1 = array<i32, 6>();
    global0 = array<Struct_2, 18>();
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -280f), _wgslsmith_div_f32(-510f, 497f))), _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(f32(-1f) * -1315f))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-430f))))));
    var var_2 = var_0.x;
    var_0 = _wgslsmith_clamp_vec3_u32(~countOneBits(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 4294967295u), vec2<u32>(u_input.d.x, 53074u)), ~u_input.d.x, _wgslsmith_sub_u32(5185u, u_input.d.x))), u_input.d.xyz >> (vec3<u32>(_wgslsmith_add_u32(~var_0.x, ~var_0.x), countOneBits(2486u), _wgslsmith_dot_vec3_u32(u_input.d.yyz, _wgslsmith_div_vec3_u32(u_input.d.zwx, vec3<u32>(0u, u_input.b, var_0.x)))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_div_u32(var_0.x, var_0.x | 1u), firstTrailingBit(~u_input.b), ~_wgslsmith_div_u32(1u, 65140u)) | countOneBits(firstLeadingBit(vec3<u32>(var_0.x, 34302u, 4294967295u))));
    let var_3 = -global1[_wgslsmith_index_u32(func_1(vec4<bool>(any(!global2.wwx), select(!global2.x, !global2.x, true), true, any(vec2<bool>(true, global2.x)))).x, 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(219f, var_1, min(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_3, reverseBits(var_3), var_3 >> (21040u % 32u)), u_input.c, u_input.c & (u_input.c | vec3<i32>(u_input.a.x, 2147483647i, -1i))), vec3<i32>(0i, ~var_3, _wgslsmith_mod_i32(43371i, 7850i))));
}

