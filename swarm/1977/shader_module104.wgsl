struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_3,
    d: vec4<bool>,
}

struct Struct_5 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(2147483647i, -1i, -21771i);

var<private> global1: array<u32, 22>;

var<private> global2: array<vec4<u32>, 32> = array<vec4<u32>, 32>(vec4<u32>(0u, 0u, 1u, 62280u), vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u), vec4<u32>(26907u, 4294967295u, 0u, 4294967295u), vec4<u32>(46140u, 76386u, 10755u, 1987u), vec4<u32>(59988u, 4294967295u, 4294967295u, 35626u), vec4<u32>(0u, 6206u, 2215u, 103864u), vec4<u32>(16581u, 653u, 4294967295u, 14408u), vec4<u32>(20072u, 21819u, 0u, 21978u), vec4<u32>(34197u, 21340u, 9124u, 4294967295u), vec4<u32>(0u, 4294967295u, 1u, 5172u), vec4<u32>(4294967295u, 32518u, 43713u, 1u), vec4<u32>(1u, 578u, 17898u, 4949u), vec4<u32>(0u, 4294967295u, 43835u, 97765u), vec4<u32>(0u, 20117u, 6637u, 17926u), vec4<u32>(39334u, 4294967295u, 24873u, 40349u), vec4<u32>(4294967295u, 4294967295u, 1u, 1u), vec4<u32>(0u, 4294967295u, 116947u, 0u), vec4<u32>(32955u, 45639u, 1u, 4294967295u), vec4<u32>(4294967295u, 32302u, 31613u, 0u), vec4<u32>(29764u, 9732u, 1u, 0u), vec4<u32>(1u, 56479u, 32940u, 6273u), vec4<u32>(11269u, 4294967295u, 1u, 60346u), vec4<u32>(26379u, 68131u, 0u, 1u), vec4<u32>(67072u, 86903u, 0u, 2694u), vec4<u32>(1u, 81152u, 16320u, 39704u), vec4<u32>(10948u, 73342u, 10326u, 17063u), vec4<u32>(0u, 18187u, 49777u, 33179u), vec4<u32>(0u, 42156u, 128173u, 0u), vec4<u32>(97346u, 4294967295u, 85585u, 0u), vec4<u32>(4294967295u, 10407u, 1u, 17782u), vec4<u32>(15145u, 19728u, 4294967295u, 26481u), vec4<u32>(12776u, 4294967295u, 30108u, 18715u));

var<private> global3: Struct_1 = Struct_1(vec3<u32>(49906u, 0u, 4294967295u), vec4<f32>(-790f, 1182f, 1057f, 226f), true, vec3<f32>(1000f, 863f, -694f), vec4<i32>(-53706i, 10574i, i32(-2147483648), i32(-2147483648)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = Struct_5(_wgslsmith_f_op_f32(trunc(arg_0.x)));
    global0 = -((global3.e.xzx | ~max(global3.e.yzy, vec3<i32>(global0.x, 0i, global0.x))) | vec3<i32>(global3.e.x, abs(global3.e.x) | ~1i, abs(-global0.x)));
    let var_1 = abs(_wgslsmith_clamp_vec3_i32(global3.e.zwz, ~global3.e.wyw, ~global3.e.ywx));
    let var_2 = false;
    return !any(!vec3<bool>(var_0.a <= -801f, !global3.c, any(vec4<bool>(false, true, false, var_2))));
}

fn func_3(arg_0: vec3<f32>) -> vec2<bool> {
    let var_0 = !select(vec4<bool>(global3.c, true, func_1(_wgslsmith_f_op_vec2_f32(sign(arg_0.xx))), global3.c), select(!(!vec4<bool>(global3.c, false, true, true)), !vec4<bool>(true, global3.c, false, global3.c), true), !vec4<bool>(true, global3.d.x < -224f, global3.c, global3.c || global3.c));
    var var_1 = _wgslsmith_f_op_vec4_f32(max(global3.b, _wgslsmith_f_op_vec4_f32(-global3.b)));
    let var_2 = Struct_3(var_0.x, Struct_1(vec3<u32>(1u, firstTrailingBit(~1u), 33690u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.x, arg_0.x, -430f, global3.d.x))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(global3.b, global3.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-746f, 291f, -1173f, 298f))))), !var_0.x, _wgslsmith_f_op_vec3_f32(-var_1.wzx), firstLeadingBit(min(global3.e, global3.e)) << (~abs(global2[_wgslsmith_index_u32(4294967295u, 32u)]) % vec4<u32>(32u))));
    global1 = array<u32, 22>();
    let var_3 = countOneBits(~(~global3.a.xx | firstLeadingBit(abs(vec2<u32>(17693u, 4294967295u)))));
    return vec2<bool>(var_2.b.c, !((true == !var_0.x) || global3.c));
}

fn func_2(arg_0: i32) -> vec2<bool> {
    global2 = array<vec4<u32>, 32>();
    var var_0 = -37350i;
    return !func_3(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global3.d))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<u32>, 32>();
    global2 = array<vec4<u32>, 32>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + 589f)) * _wgslsmith_f_op_f32(f32(-1f) * -183f)))) - 1000f);
    let var_1 = select(vec2<bool>(!(global3.c | true), func_1(vec2<f32>(_wgslsmith_f_op_f32(2882f + global3.b.x), _wgslsmith_f_op_f32(select(-828f, 885f, true))))), select(select(func_2(global3.e.x), vec2<bool>(global3.c, !global3.c), all(vec2<bool>(true, true))), vec2<bool>(global3.c, global3.c), vec2<bool>(true, all(vec3<bool>(global3.c, global3.c, global3.c)) & (51681u > global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global3.a.x, 22u)], 22u)]))), vec2<bool>(global3.c, !all(!vec2<bool>(global3.c, global3.c))));
    let var_2 = -select(~vec2<i32>(-2147483647i, global0.x) >> (~u_input.a % vec2<u32>(32u)), select(vec2<i32>(global0.x, global0.x), ~vec2<i32>(global3.e.x, -1i), true), vec2<bool>(false, false)) ^ (vec2<i32>(global3.e.x, -global0.x << (~u_input.a.x % 32u)) | ~_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(global0.yy, vec2<i32>(-22700i, -27851i)), firstLeadingBit(global0.zx), vec2<i32>(0i, 1i)));
    global0 = vec3<i32>(1i, var_2.x, _wgslsmith_add_i32(-36454i, 11188i));
    let var_3 = Struct_3(select(all(select(select(vec3<bool>(global3.c, false, global3.c), vec3<bool>(var_1.x, global3.c, false), false), select(vec3<bool>(true, global3.c, false), vec3<bool>(var_1.x, var_1.x, var_1.x), false), vec3<bool>(var_1.x, global3.c, true))), -2147483647i > var_2.x, !(!(global3.c != var_1.x))), Struct_1(firstLeadingBit(global3.a) & ~vec3<u32>(25444u, u_input.a.x, global3.a.x), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(global3.b + global3.b))))), func_2(max(global0.x & global0.x, ~global3.e.x)).x, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-707f, _wgslsmith_f_op_f32(-1560f * -366f), -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, global3.b.x, global3.d.x)), true)), vec4<i32>(-global3.e.x, 1i, var_2.x, 11736i)));
    let var_4 = ~global0.x;
    let x = u_input.a;
    s_output = StorageBuffer(global2[_wgslsmith_index_u32(1u, 32u)], vec3<f32>(-446f, global3.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-692f)))), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.x + 436f)), -443f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.b.d.x + global3.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -208f)))), _wgslsmith_f_op_f32(-var_3.b.d.x)), abs(4294967295u), vec2<f32>(-560f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.b.x)))));
}

