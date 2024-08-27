struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: vec4<i32>) -> bool {
    var var_0 = arg_1;
    var var_1 = Struct_1(true, global0.b, _wgslsmith_dot_vec3_u32(~arg_1.b.wxz, _wgslsmith_sub_vec3_u32(var_0.b.zzx ^ vec3<u32>(var_0.b.x, 1u, global0.c), ~vec3<u32>(global0.c, arg_1.c.x, arg_1.b.x))));
    var var_2 = arg_2.yww;
    var var_3 = countOneBits(vec4<i32>(min(~_wgslsmith_dot_vec2_i32(arg_2.yz, vec2<i32>(u_input.a.x, arg_2.x)), -23157i), ~(reverseBits(var_2.x) ^ ~37060i), _wgslsmith_sub_i32(min(-var_2.x, -37359i << (global0.c % 32u)), reverseBits(i32(-1i) * -1i)), _wgslsmith_sub_i32(-18745i, _wgslsmith_mod_i32(3304i, ~(-43130i)))));
    var var_4 = vec4<f32>(1109f, 1000f, _wgslsmith_div_f32(arg_1.d.x, _wgslsmith_f_op_f32(trunc(arg_1.d.x))), _wgslsmith_f_op_f32(236f + -842f));
    return select(all(!select(vec2<bool>(false, true), vec2<bool>(true, true), all(vec3<bool>(true, true, false)))), !(!var_1.a & var_1.a) & ((_wgslsmith_f_op_f32(min(-682f, var_0.d.x)) >= _wgslsmith_f_op_f32(round(var_0.d.x))) == global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + _wgslsmith_f_op_f32(-1000f * 767f)) * var_0.d.x) > _wgslsmith_f_op_f32(-arg_0.x));
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = Struct_1(false, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.b.x * global0.b.x), global0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global0.b.x))), global0.b.x) * global0.b), ~(~0u));
    let var_0 = global0.b.x;
    let var_1 = select(!vec2<bool>(all(vec2<bool>(true, global0.a)), !global0.a), !vec2<bool>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, -139f)), Struct_2(vec3<u32>(4294967295u, global0.c, arg_0), vec4<u32>(0u, 141282u, 0u, global0.c), vec2<u32>(u_input.c, global0.c), vec3<f32>(2796f, global0.b.x, global0.b.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(21262i, 23530i, u_input.a.x, -55986i), vec4<i32>(0i, u_input.a.x, 8630i, 2147483647i))), _wgslsmith_mod_u32(9u, 4294967295u) == _wgslsmith_clamp_u32(12626u, 1u, u_input.b)), !(!(!(!vec2<bool>(global0.a, global0.a)))));
    let var_2 = global0.a & any(!(!select(vec3<bool>(var_1.x, global0.a, false), vec3<bool>(var_1.x, true, var_1.x), false)));
    let var_3 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(firstTrailingBit(countOneBits(~vec2<u32>(arg_0, 1u))), firstLeadingBit(vec2<u32>(min(arg_0, 86957u), ~arg_0))), _wgslsmith_add_vec2_u32(vec2<u32>(global0.c, 104534u), vec2<u32>(0u ^ (arg_0 << (u_input.c % 32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 4294967295u, global0.c), vec3<u32>(global0.c, arg_0, global0.c) & vec3<u32>(arg_0, arg_0, 35984u)))));
    return Struct_2(~firstTrailingBit(vec3<u32>(global0.c, 0u, _wgslsmith_add_u32(11793u, 0u))), (~vec4<u32>(103672u, u_input.c, global0.c, 94523u) & _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_0, 29942u, var_3.x, 27635u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 47179u, 1u, 11344u), vec4<u32>(41831u, 1u, arg_0, 12744u), vec4<u32>(arg_0, 0u, global0.c, 4294967295u)))) >> (_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(arg_0, 1u, 1u, 0u)) << (_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global0.c, 1u, u_input.b), vec4<u32>(var_3.x, arg_0, arg_0, 0u)) % vec4<u32>(32u)), vec4<u32>(global0.c << (u_input.b % 32u), u_input.b, arg_0 ^ 49724u, 0u)) % vec4<u32>(32u)), var_3, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, -443f)))) + vec3<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(-global0.b.x))))));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: vec4<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) + -629f);
    var var_1 = _wgslsmith_f_op_f32(round(global0.b.x));
    return select(_wgslsmith_sub_vec3_u32(vec3<u32>(min(firstTrailingBit(arg_1.x), global0.c & u_input.c), arg_2.c, 1u), vec3<u32>(_wgslsmith_dot_vec2_u32(~arg_0.a.yy, _wgslsmith_mod_vec2_u32(vec2<u32>(49805u, 57764u), arg_0.c)), 1u, 0u)), vec3<u32>(25020u, u_input.c, 1u), select(!select(vec3<bool>(true, arg_2.a, true), vec3<bool>(false, true, false), false), !select(vec3<bool>(arg_2.a, arg_2.a, true), !vec3<bool>(true, arg_2.a, global0.a), true), !(!(!vec3<bool>(global0.a, false, arg_2.a)))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: u32) -> f32 {
    let var_0 = ~(~u_input.b);
    let var_1 = Struct_2(_wgslsmith_mult_vec3_u32(func_4(func_2(0u), _wgslsmith_sub_vec3_u32(arg_1.a, arg_1.a), Struct_1(global0.a, vec4<f32>(714f, -122f, 1000f, -787f), var_0), min(vec4<i32>(0i, 0i, -1i, -1i), vec4<i32>(u_input.a.x, u_input.a.x, 8108i, 2147483647i))) << (_wgslsmith_div_vec3_u32(vec3<u32>(82110u, global0.c, 79889u) ^ arg_1.a, func_2(43113u).b.zzw) % vec3<u32>(32u)), ~select(vec3<u32>(u_input.b, var_0, 36468u), select(vec3<u32>(4294967295u, var_0, 4294967295u), vec3<u32>(11553u, 1u, u_input.c), vec3<bool>(false, arg_0.x, true)), !arg_0.zwz)), _wgslsmith_div_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 13743u, 4294967295u, arg_1.c.x), vec4<u32>(7264u, arg_3, u_input.c, arg_3), arg_1.b) << (_wgslsmith_mult_vec4_u32(arg_1.b, countOneBits(vec4<u32>(var_0, 0u, arg_3, 26424u))) % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(~arg_1.b, vec4<u32>(global0.c, var_0, 0u, 4294967295u)) << (vec4<u32>(4294967295u, global0.c, arg_1.c.x, ~7468u) % vec4<u32>(32u))), reverseBits(~(~vec2<u32>(21009u, 8163u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(global0.b.wxy * vec3<f32>(global0.b.x, 418f, -1248f)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.d.x, arg_1.d.x, arg_1.d.x), vec3<f32>(485f, arg_1.d.x, 436f))), arg_2))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-486f, global0.b.x, global0.b.x))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, -2344f))))));
    global0 = Struct_1(!((_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(0i, 27972i, -27435i)) > ~(-2147483647i)) | (_wgslsmith_f_op_f32(step(1098f, 154f)) >= 1553f)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.d.x))), _wgslsmith_f_op_f32(trunc(1000f)), 1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-936f * var_1.d.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(6540u, _wgslsmith_dot_vec2_u32(vec2<u32>(86150u, global0.c), vec2<u32>(49072u, 66182u) >> (vec2<u32>(arg_3, 12198u) % vec2<u32>(32u))), ~1u, _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, var_0), var_1.b.wy))), ~(var_1.b << (select(vec4<u32>(1u, u_input.b, var_0, 11456u), arg_1.b, true) % vec4<u32>(32u)))));
    let var_2 = 0i;
    global0 = Struct_1(true, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.d.x, global0.b.x, var_1.d.x, var_1.d.x), global0.b)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(global0.b))))))), _wgslsmith_add_u32(~_wgslsmith_mod_u32(1u, _wgslsmith_add_u32(var_0, 4294967295u)), arg_3));
    return -1751f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(false, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) * _wgslsmith_f_op_vec4_f32(abs(global0.b)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<bool>(global0.a, true, true, true), Struct_2(vec3<u32>(u_input.c, u_input.b, global0.c), vec4<u32>(u_input.c, u_input.c, global0.c, global0.c), vec2<u32>(12725u, 4294967295u), vec3<f32>(-938f, 1035f, global0.b.x)), vec3<bool>(global0.a, global0.a, false), 43518u))), 275f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-541f))), _wgslsmith_f_op_f32(-global0.b.x))), ~_wgslsmith_add_u32(u_input.c, _wgslsmith_div_u32(_wgslsmith_add_u32(global0.c, global0.c), ~global0.c)));
    let var_0 = Struct_1(true, _wgslsmith_div_vec4_f32(vec4<f32>(global0.b.x, global0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b.x, 1537f)) - global0.b.x), global0.b.x), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(770f + global0.b.x), global0.b.x, -285f, _wgslsmith_f_op_f32(-1129f + 1383f))))), u_input.b);
    var var_1 = _wgslsmith_f_op_f32(func_1(!select(vec4<bool>(false, global0.c > 1u, var_0.a, false | global0.a), vec4<bool>(false && global0.a, !global0.a, true, var_0.a), true), Struct_2(countOneBits(vec3<u32>(~var_0.c, countOneBits(69127u), 1u ^ u_input.b)), abs(vec4<u32>(1u, global0.c, 4294967295u, var_0.c) << (reverseBits(vec4<u32>(global0.c, 12155u, global0.c, 0u)) % vec4<u32>(32u))), firstTrailingBit(~vec2<u32>(77402u, u_input.b)) >> (vec2<u32>(6028u, select(u_input.b, 24101u, var_0.a)) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-func_2(var_0.c).d)))), select(vec3<bool>(var_0.a, true, !(!var_0.a)), vec3<bool>(!all(vec3<bool>(true, false, false)), _wgslsmith_f_op_f32(-1052f + global0.b.x) > _wgslsmith_f_op_f32(-var_0.b.x), true), true), ~reverseBits(_wgslsmith_dot_vec3_u32(func_2(39502u).b.yxz, min(vec3<u32>(1u, global0.c, 33704u), vec3<u32>(25202u, var_0.c, 37249u))))));
    var var_2 = 4294967295u;
    let var_3 = Struct_2(_wgslsmith_add_vec3_u32(min(~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 5801u, 17625u), vec3<u32>(1u, u_input.b, 5429u)), vec3<u32>(var_0.c, _wgslsmith_div_u32(var_0.c, 1u), 42418u)), vec3<u32>(46145u << (1u % 32u), firstTrailingBit(u_input.c << (0u % 32u)), ~(u_input.c >> (59720u % 32u)))), abs(abs(_wgslsmith_clamp_vec4_u32(~vec4<u32>(var_0.c, 53339u, 4294967295u, global0.c), ~vec4<u32>(4294967295u, 15119u, global0.c, 19855u), vec4<u32>(4294967295u, 0u, global0.c, 56311u)))), vec2<u32>(~(global0.c & 71297u) & var_0.c, _wgslsmith_div_u32(var_0.c, 1u >> (1u % 32u))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.b.x, var_0.b.x, 1386f), vec3<f32>(-1090f, global0.b.x, var_0.b.x), global0.a)))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1206f, -925f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1194f * 126f) * _wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(global0.b.x + -933f), false)))), var_0.b.ww);
}

