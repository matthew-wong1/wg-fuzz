struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: f32,
    c: vec2<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 18>;

var<private> global1: vec4<bool> = vec4<bool>(false, false, false, false);

var<private> global2: array<vec4<f32>, 29>;

var<private> global3: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(-1270f), Struct_1(-254f), Struct_1(744f), Struct_1(-1000f), Struct_1(1000f), Struct_1(370f), Struct_1(-2170f), Struct_1(300f), Struct_1(154f), Struct_1(200f), Struct_1(-1000f), Struct_1(1386f), Struct_1(983f), Struct_1(-1380f), Struct_1(-700f), Struct_1(-323f), Struct_1(-1362f), Struct_1(-1542f), Struct_1(-313f), Struct_1(-109f), Struct_1(-163f), Struct_1(1873f), Struct_1(240f), Struct_1(-930f), Struct_1(459f), Struct_1(-258f), Struct_1(-1000f), Struct_1(685f), Struct_1(-1000f), Struct_1(-228f), Struct_1(-1000f), Struct_1(-1242f));

var<private> global4: vec2<u32> = vec2<u32>(0u, 67347u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<f32>) -> vec4<bool> {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a, 32u)];
    let var_1 = abs(_wgslsmith_div_vec4_u32(~vec4<u32>(5004u, u_input.a, u_input.a, 1u) | ~vec4<u32>(1u, u_input.a, 4294967295u, 1u), firstTrailingBit(vec4<u32>(17217u, u_input.a, 0u, global4.x)))) ^ select(~(~firstLeadingBit(vec4<u32>(global4.x, global4.x, 1u, u_input.a))), select(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 1u, u_input.a), vec4<u32>(4294967295u, 76276u, 37767u, 1u)), ~vec4<u32>(u_input.a, 13331u, global4.x, 0u) | abs(vec4<u32>(1u, 2853u, u_input.a, u_input.a)), _wgslsmith_div_f32(-1561f, arg_0.x) != -1473f), true);
    let var_2 = Struct_1(-945f);
    let var_3 = global3[_wgslsmith_index_u32(1u, 32u)];
    var var_4 = ((countOneBits(17763u) << (_wgslsmith_mult_u32(u_input.a, var_1.x & var_1.x) % 32u)) | (global4.x >> (firstLeadingBit(firstTrailingBit(u_input.a)) % 32u))) ^ ~(~select(global4.x, global4.x, global1.x) >> (0u % 32u));
    return select(vec4<bool>(false, global1.x, true, global1.x), select(select(select(vec4<bool>(false, global1.x, true, true), select(vec4<bool>(global1.x, true, global1.x, global1.x), vec4<bool>(false, false, true, true), vec4<bool>(true, global1.x, global1.x, global1.x)), true), !(!vec4<bool>(false, false, global1.x, global1.x)), !(!vec4<bool>(global1.x, global1.x, global1.x, true))), select(!select(vec4<bool>(false, global1.x, true, true), vec4<bool>(global1.x, global1.x, global1.x, global1.x), true), vec4<bool>(any(global1.yww), true, true, select(false, true, true)), all(select(vec4<bool>(true, global1.x, true, global1.x), vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(global1.x, false, true, false)))), all(global1.wx)), global1.x);
}

fn func_4(arg_0: i32, arg_1: vec4<bool>) -> vec2<u32> {
    let var_0 = 272f;
    var var_1 = -857f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(ceil(1f)));
    global1 = arg_1;
    global1 = select(select(!vec4<bool>(true, !global1.x, true, all(global1.zz)), !func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, var_2.a))), vec4<bool>(func_3(_wgslsmith_f_op_vec2_f32(abs(global0[_wgslsmith_index_u32(u_input.a, 18u)]))).x, 273f < _wgslsmith_f_op_f32(floor(1000f)), all(select(global1.zzx, vec3<bool>(false, true, true), arg_1.x)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, var_2.a))).x)), select(arg_1, vec4<bool>(global1.x, arg_1.x, any(vec4<bool>(false, global1.x, global1.x, global1.x)), global1.x), false), global1.x | (-(arg_0 ^ arg_0) == -2147483647i));
    return select(_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a, _wgslsmith_div_u32(0u, global4.x)) ^ ~vec2<u32>(43667u, 59452u), ~vec2<u32>(~global4.x, ~u_input.a)), vec2<u32>(1u >> (global4.x % 32u), global4.x), arg_1.x);
}

fn func_5(arg_0: vec2<u32>) -> vec3<f32> {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1299f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -449f) * _wgslsmith_f_op_f32(step(-1303f, -1225f)))))));
    var var_1 = abs(~_wgslsmith_mult_vec4_u32(firstTrailingBit(~vec4<u32>(1u, 13422u, global4.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(88526u, 4294967295u, 4294967295u, 20699u) & vec4<u32>(35314u, u_input.a, 1u, 4294967295u), vec4<u32>(50087u, arg_0.x, global4.x, arg_0.x) << (vec4<u32>(0u, u_input.a, u_input.a, global4.x) % vec4<u32>(32u)))));
    var var_2 = firstLeadingBit(~78130u) >= u_input.a;
    global4 = var_1.zx;
    var var_3 = -242f;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(988f, -180f, 369f) * vec3<f32>(1794f, 1422f, 582f)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1126f, 1261f, 328f)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1572f, -1661f, -1000f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1576f, 681f, 459f))))));
}

fn func_2(arg_0: i32) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(max(func_4(_wgslsmith_dot_vec2_i32(vec2<i32>(89671i, arg_0), vec2<i32>(-35123i, 38771i)), func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-329f, 677f)))), _wgslsmith_clamp_vec2_u32(~min(vec2<u32>(global4.x, u_input.a), vec2<u32>(27779u, u_input.a)), firstLeadingBit(reverseBits(vec2<u32>(43558u, 0u))), max(~vec2<u32>(77082u, global4.x), _wgslsmith_div_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(1u, global4.x)))))));
    let var_1 = Struct_1(216f);
    global0 = array<vec2<f32>, 18>();
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(select(countOneBits(u_input.a), 4294967295u, true || global1.x), ~0u, 4294967295u), 32u)];
    let var_3 = 3667u;
    return 459f;
}

fn func_1() -> f32 {
    var var_0 = ~countOneBits(_wgslsmith_sub_vec4_u32(vec4<u32>(~18530u, 4294967295u, ~0u, _wgslsmith_dot_vec3_u32(vec3<u32>(5669u, global4.x, 77018u), vec3<u32>(0u, global4.x, 1u))), vec4<u32>(_wgslsmith_div_u32(global4.x, global4.x), ~global4.x, 166347u, 71364u)));
    return _wgslsmith_div_f32(-211f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -284f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -682f), _wgslsmith_f_op_f32(func_2(-17486i))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(_wgslsmith_mod_vec4_u32(min(~(~vec4<u32>(global4.x, global4.x, 1u, global4.x)), ~vec4<u32>(1u, 7762u, global4.x, u_input.a)), vec4<u32>(global4.x, _wgslsmith_mult_u32(17825u, 21825u) ^ _wgslsmith_div_u32(4294967295u, u_input.a), global4.x, reverseBits(global4.x >> (37090u % 32u)))));
    global1 = vec4<bool>(!all(vec2<bool>(false, !global1.x)), !(!any(select(vec4<bool>(global1.x, global1.x, false, global1.x), vec4<bool>(false, true, true, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1064f, -744f)) * 1127f) + _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_5(vec2<u32>(138u, u_input.a))).x, _wgslsmith_f_op_f32(-1047f + 1000f))), true);
    let var_1 = _wgslsmith_f_op_f32(floor(-191f)) <= 403f;
    global1 = !func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(global4.x, u_input.a, u_input.a) >> (var_0.zww % vec3<u32>(32u)), ~vec3<u32>(107867u, u_input.a, 31562u)), var_0.xxx), 18u)]);
    global0 = array<vec2<f32>, 18>();
    let var_2 = !global1.wyx;
    global1 = !(!(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, var_2.x, global1.x, var_2.x), vec4<bool>(false, global1.x, global1.x, false)), vec4<bool>(true, var_1, true, true), !global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1108f, -1822f, -387f)), _wgslsmith_f_op_f32(1787f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 340f))))), _wgslsmith_f_op_vec2_f32(ceil(global0[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(global4.x, var_0.x, ~var_0.x)), 18u)])), reverseBits(_wgslsmith_dot_vec4_i32(max(countOneBits(vec4<i32>(1i, -2147483647i, 10230i, 0i)), firstLeadingBit(vec4<i32>(2147483647i, -1i, -1i, -25858i))), select(vec4<i32>(-3947i, 0i, -2147483647i, -1i) << (vec4<u32>(52725u, 4294967295u, 9721u, u_input.a) % vec4<u32>(32u)), vec4<i32>(1i, 1i, 1i, 1i), func_3(global0[_wgslsmith_index_u32(global4.x, 18u)])))));
}

