struct Struct_1 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(701f, -2009f), vec2<f32>(-787f, -895f), vec2<f32>(792f, 991f), vec2<f32>(381f, -636f), vec2<f32>(-599f, 929f), vec2<f32>(1000f, -143f), vec2<f32>(211f, -440f), vec2<f32>(-365f, 1127f), vec2<f32>(1000f, 528f), vec2<f32>(-144f, 2365f), vec2<f32>(-391f, 313f), vec2<f32>(1367f, 680f));

var<private> global2: Struct_2;

var<private> global3: array<bool, 18>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> u32 {
    global0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(1u, 12u)] * global1[_wgslsmith_index_u32(u_input.a.x, 12u)]), arg_0.zy))))));
    var var_0 = global2.b;
    let var_1 = arg_1.b;
    global2 = arg_1;
    let var_2 = i32(-1i) * -192i;
    return ~59982u;
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_add_vec2_u32(arg_1.zz, vec2<u32>(1u, 4294967295u));
    global2 = Struct_2(any(!vec3<bool>(global2.b.b.x != global2.b.a.x, false, arg_1.x > 0u)), global2.b);
    var_0 = vec2<u32>(~func_3(vec3<f32>(-830f, -1118f, global0.x), Struct_2(global2.b.a.x, global2.b)) | 1u, var_0.x);
    global2 = Struct_2(global3[_wgslsmith_index_u32(~4294967295u, 18u)], Struct_1(!global2.b.b, global2.b.a, _wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_f_op_f32(-global2.b.c);
}

fn func_1(arg_0: bool, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<i32>(-2147483647i, 2147483647i, i32(-1i) * -28071i, _wgslsmith_div_i32(4260i >> (u_input.b % 32u), firstLeadingBit(24850i))), ~vec4<u32>(83333u, u_input.b, 4294967295u, 4294967295u) >> (vec4<u32>(_wgslsmith_sub_u32(1u, u_input.a.x), u_input.a.x, u_input.b, ~u_input.a.x) % vec4<u32>(32u)))));
    let var_1 = !select(select(!select(vec3<bool>(arg_1.x, false, true), vec3<bool>(arg_1.x, true, false), vec3<bool>(false, arg_1.x, global3[_wgslsmith_index_u32(15351u, 18u)])), !vec3<bool>(true, false, global3[_wgslsmith_index_u32(54233u, 18u)]), !(16819u > u_input.b)), select(vec3<bool>(true, arg_0 && global3[_wgslsmith_index_u32(43450u, 18u)], true), !select(vec3<bool>(global2.b.b.x, true, global3[_wgslsmith_index_u32(u_input.b, 18u)]), vec3<bool>(arg_1.x, false, false), true), !vec3<bool>(arg_1.x, false, arg_0)), vec3<bool>(false, true, !(arg_0 & global3[_wgslsmith_index_u32(28074u, 18u)])));
    global2 = Struct_2(!global3[_wgslsmith_index_u32(min(~_wgslsmith_clamp_u32(u_input.b, u_input.b, 22398u), u_input.a.x), 18u)], global2.b);
    global3 = array<bool, 18>();
    global0 = _wgslsmith_f_op_vec2_f32(global1[_wgslsmith_index_u32(u_input.b >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a.x, 5645u), ~u_input.b), 0u) % 32u), 12u)] + vec2<f32>(global2.b.c, -819f));
    return global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(771f, -575f, global2.b.c) * vec3<f32>(-1697f, 610f, global2.b.c)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1064f, global0.x, global0.x))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.c, global0.x, global2.b.c)) + _wgslsmith_div_vec3_f32(vec3<f32>(global2.b.c, 2086f, global0.x), vec3<f32>(global0.x, 252f, global0.x)))))));
    global2 = Struct_2(_wgslsmith_f_op_f32(-global0.x) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(390f, -1045f)))), func_1(true, vec2<bool>(!global3[_wgslsmith_index_u32(reverseBits(u_input.a.x), 18u)], any(!global2.b.b))));
    global3 = array<bool, 18>();
    var var_1 = vec4<u32>(_wgslsmith_dot_vec3_u32(~firstTrailingBit(vec3<u32>(86729u, 0u, 4294967295u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.b) | vec3<u32>(u_input.a.x, 1534u, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(19478u, u_input.b, u_input.a.x), vec3<u32>(u_input.a.x, 19004u, 1u)))), u_input.a.x << (_wgslsmith_dot_vec4_u32(~vec4<u32>(14226u, u_input.a.x, 0u, u_input.b), reverseBits(vec4<u32>(u_input.b, 13716u, 4294967295u, u_input.a.x))) % 32u), u_input.b, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 0u, 19034u, u_input.a.x), vec4<u32>(0u, u_input.b, 3288u, 20276u)), vec4<u32>(u_input.a.x, u_input.b, u_input.b, 0u) | vec4<u32>(u_input.b, u_input.b, 38981u, u_input.a.x)), ~(vec4<u32>(31225u, u_input.b, 21836u, 0u) & vec4<u32>(u_input.b, 32583u, 20294u, u_input.a.x)))) ^ _wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32((vec4<u32>(1u, 38405u, u_input.b, 7698u) >> (vec4<u32>(50797u, 1u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(u_input.a.x, u_input.b, 17829u, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 0u, 4294967295u, u_input.b)), vec4<u32>(0u, 1688u, 4294967295u, ~_wgslsmith_add_u32(1u, u_input.b)), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(9494u, 4294967295u, 0u, u_input.a.x)), vec4<u32>(62187u, 1u, u_input.b, u_input.a.x)), ~vec4<u32>(u_input.b, 0u, u_input.b, u_input.a.x) ^ vec4<u32>(u_input.b, 0u, u_input.b, 1u), vec4<u32>(29426u, ~50230u, 1u, 4294967295u)));
    var var_2 = vec3<i32>(~20263i | -_wgslsmith_clamp_i32(1i, 7851i, -51819i), _wgslsmith_dot_vec2_i32(vec2<i32>(~2973i, -4958i), vec2<i32>(0i, _wgslsmith_sub_i32(-1i, -33118i))), _wgslsmith_dot_vec2_i32(vec2<i32>(38271i >> (u_input.b % 32u), -2147483647i), vec2<i32>(1i, 1i))) & ~vec3<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(34860i, 18690i), -vec2<i32>(15087i, 18459i)), reverseBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(11776i, -11528i, 21180i, -66485i), vec4<i32>(-2147483647i, 1i, -2147483647i, -15341i)));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(_wgslsmith_mod_vec4_i32(vec4<i32>(var_2.x, -1816i, var_2.x, 3614i), vec4<i32>(var_2.x, -2147483647i, 0i, 29700i)), select(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x), vec4<u32>(u_input.a.x, 4294967295u, 1u, 4294967295u), true))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1220f)), _wgslsmith_div_f32(var_0.x, 1000f))), global2.b.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1774f))))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(-vec3<i32>(-2147483647i, i32(-1i) * -63060i, _wgslsmith_div_i32(1i, var_2.x))), var_2.zy, firstLeadingBit(firstLeadingBit(vec2<u32>(var_1.x, reverseBits(u_input.b)))));
}

