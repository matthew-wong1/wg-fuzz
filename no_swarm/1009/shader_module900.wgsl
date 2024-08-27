struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(14343i, 20351i, -22136i);

var<private> global1: f32 = 1978f;

var<private> global2: array<Struct_2, 28>;

var<private> global3: array<u32, 5> = array<u32, 5>(34500u, 33922u, 0u, 30051u, 1u);

var<private> global4: array<Struct_2, 16> = array<Struct_2, 16>(Struct_2(Struct_1(false), 1110f, Struct_1(false), Struct_1(true), 47538i), Struct_2(Struct_1(false), 834f, Struct_1(true), Struct_1(false), 11583i), Struct_2(Struct_1(true), 463f, Struct_1(false), Struct_1(true), -1i), Struct_2(Struct_1(true), -1000f, Struct_1(false), Struct_1(true), 18454i), Struct_2(Struct_1(false), -755f, Struct_1(true), Struct_1(true), 19448i), Struct_2(Struct_1(false), -340f, Struct_1(false), Struct_1(false), 2147483647i), Struct_2(Struct_1(true), 882f, Struct_1(false), Struct_1(false), 36783i), Struct_2(Struct_1(false), -1000f, Struct_1(true), Struct_1(false), -4098i), Struct_2(Struct_1(false), -824f, Struct_1(true), Struct_1(false), 19933i), Struct_2(Struct_1(true), -1204f, Struct_1(true), Struct_1(true), 2147483647i), Struct_2(Struct_1(false), 1109f, Struct_1(false), Struct_1(false), -33245i), Struct_2(Struct_1(false), -561f, Struct_1(true), Struct_1(true), 0i), Struct_2(Struct_1(true), -282f, Struct_1(true), Struct_1(false), 83749i), Struct_2(Struct_1(true), -149f, Struct_1(true), Struct_1(false), -1i), Struct_2(Struct_1(false), 289f, Struct_1(true), Struct_1(false), -52774i), Struct_2(Struct_1(true), -1364f, Struct_1(true), Struct_1(true), 2147483647i));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool) -> bool {
    var var_0 = Struct_1(true);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(arg_0, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1216f, _wgslsmith_f_op_f32(-arg_0))));
    let var_2 = Struct_2(Struct_1(true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0, 1000f), _wgslsmith_f_op_f32(-457f + arg_0)))), Struct_1(!(!arg_2)), Struct_1(true), _wgslsmith_mult_i32(abs(u_input.a), firstTrailingBit(0i)));
    var var_3 = vec2<u32>(_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(abs(1u), 5u)], 46988u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(30958u, 5u)], 203u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(15648u, 5u)], 5u)], 0u), vec4<u32>(global3[_wgslsmith_index_u32(104097u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], global3[_wgslsmith_index_u32(42099u, 5u)], 12027u)), 5u)] << (_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)], 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 5u)], 5u)], 5u)]), vec2<u32>(global3[_wgslsmith_index_u32(63887u, 5u)], global3[_wgslsmith_index_u32(26826u, 5u)])) % 32u), 5u)]), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_sub_vec4_u32(~vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 5u)], 5u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17647u, 5u)], 5u)], 4294967295u, 65819u), abs(vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(33045u, 5u)], 5u)], global3[_wgslsmith_index_u32(0u, 5u)], 1u, 0u))), ~vec4<u32>(40028u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(19467u, 5u)], 5u)] | 4294967295u, global3[_wgslsmith_index_u32(74283u, 5u)], _wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(32302u, 5u)], 5u)], 4294967295u))), 5u)]);
    return any(vec4<bool>(all(vec2<bool>(var_0.a, arg_2)) | true, all(select(select(vec4<bool>(var_0.a, var_2.c.a, var_0.a, var_2.a.a), vec4<bool>(arg_2, false, false, var_2.a.a), vec4<bool>(true, false, true, var_2.c.a)), vec4<bool>(var_2.d.a, var_2.a.a, false, true), !vec4<bool>(var_0.a, true, arg_2, var_0.a))), any(!vec4<bool>(var_0.a, false, false, var_2.c.a)) || (_wgslsmith_mult_i32(global0.x, -18680i) <= -1i), (arg_1 & arg_1) > u_input.a));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: Struct_3, arg_3: Struct_2) -> bool {
    global2 = array<Struct_2, 28>();
    let var_0 = select(vec4<bool>(false, func_3(arg_3.b, arg_3.e, !arg_3.a.a), func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.b + 1007f))), -11177i, !(!arg_0.x)), arg_1), !vec4<bool>(!(arg_3.d.a != true), arg_1, !(!arg_0.x), true), (~arg_3.e | arg_3.e) < 2147483647i);
    global1 = 1002f;
    global3 = array<u32, 5>();
    global3 = array<u32, 5>();
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32, arg_3: i32) -> vec3<f32> {
    let var_0 = arg_0.c;
    global4 = array<Struct_2, 16>();
    var var_1 = vec2<i32>(0i, arg_3);
    var var_2 = vec4<bool>(var_0.a, func_4(vec2<bool>(func_3(arg_2, global0.x | 2448i, !arg_1.a.a), !arg_1.a.a != arg_0.c.a), false, Struct_3(~(vec3<u32>(76690u, 23208u, 4294967295u) ^ vec3<u32>(global3[_wgslsmith_index_u32(0u, 5u)], 33401u, 49490u)), select(vec4<i32>(0i, -8145i, u_input.b, -2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(63680i, arg_1.e, arg_1.e, -2147483647i), vec4<i32>(-2290i, u_input.a, arg_3, -20216i)), !vec4<bool>(true, var_0.a, true, arg_1.d.a))), Struct_2(Struct_1(all(vec3<bool>(false, var_0.a, false))), arg_2, arg_1.d, var_0, ~(arg_3 << (global3[_wgslsmith_index_u32(1u, 5u)] % 32u)))), all(!vec3<bool>(true, true, all(vec3<bool>(arg_1.c.a, true, true)))), firstLeadingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(0u, 5u)], 1u, 0u), vec4<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(8408u, 5u)], 5u)], 0u, global3[_wgslsmith_index_u32(93833u, 5u)], global3[_wgslsmith_index_u32(1u, 5u)]) | vec4<u32>(0u, 1u, 4294967295u, 4294967295u)), 5u)]) > 1u);
    global4 = array<Struct_2, 16>();
    return _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_1.b, _wgslsmith_f_op_f32(step(arg_1.b, arg_1.b)), arg_1.b), vec3<f32>(_wgslsmith_f_op_f32(arg_0.b - 1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(abs(647f)))) - 1599f), arg_2)));
}

fn func_1(arg_0: Struct_3) -> f32 {
    global3 = array<u32, 5>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(489f, _wgslsmith_f_op_f32(f32(-1f) * -211f), 566f) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1075f, -470f, -2174f)))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(264f)) - _wgslsmith_f_op_f32(abs(514f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(382f, 626f))), -726f), true)) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1183f), _wgslsmith_div_f32(-133f, -966f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-2860f, -1124f, -601f), vec3<f32>(-1030f, -592f, -796f), false)) - vec3<f32>(1025f, -322f, -782f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(849f, -1048f, -1000f), vec3<f32>(2301f, -442f, -1080f), vec3<bool>(true, false, true))) - _wgslsmith_f_op_vec3_f32(func_2(global2[_wgslsmith_index_u32(arg_0.a.x, 28u)], global2[_wgslsmith_index_u32(16990u, 28u)], -547f, arg_0.b.x)))))));
    var var_1 = firstTrailingBit(~(_wgslsmith_sub_vec4_u32(vec4<u32>(7392u, global3[_wgslsmith_index_u32(5520u, 5u)], 4090u, arg_0.a.x), vec4<u32>(arg_0.a.x, global3[_wgslsmith_index_u32(arg_0.a.x, 5u)], 0u, 1u)) | vec4<u32>(global3[_wgslsmith_index_u32(arg_0.a.x, 5u)], 47068u, 26195u, 4294967295u))) ^ ~vec4<u32>(~arg_0.a.x >> (~4294967295u % 32u), arg_0.a.x, 64585u, 43321u);
    var var_2 = _wgslsmith_clamp_vec2_i32(arg_0.b.xz, ~global0.zx, global0.yy);
    let var_3 = abs(firstTrailingBit(var_1.xy));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -584f), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_div_f32(1084f, _wgslsmith_f_op_f32(func_1(Struct_3(vec3<u32>(global3[_wgslsmith_index_u32(33842u, 5u)], global3[_wgslsmith_index_u32(4294967295u, 5u)], 37133u), vec4<i32>(global0.x, -2147483647i, u_input.b, -54335i))))), _wgslsmith_f_op_f32(func_1(Struct_3(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(3702u, 5u)], 5u)], 1u, global3[_wgslsmith_index_u32(25026u, 5u)]), vec4<i32>(u_input.b, global0.x, -36182i, 1i)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(-2312f, 582f)), _wgslsmith_div_f32(1000f, -1000f))), _wgslsmith_f_op_f32(select(-725f, _wgslsmith_f_op_f32(656f - 337f), false))))), ~global3[_wgslsmith_index_u32(4294967295u, 5u)], vec3<i32>(2458i, firstLeadingBit(u_input.a), firstTrailingBit(i32(-1i) * -global0.x)));
}

