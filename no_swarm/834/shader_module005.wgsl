struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 16> = array<bool, 16>(false, false, true, false, true, false, true, false, true, false, true, false, true, false, true, true);

var<private> global1: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<u32>(27831u, 1u, 76294u, 1u), true), Struct_1(vec4<u32>(58311u, 36953u, 4755u, 4294967295u), true), Struct_1(vec4<u32>(43859u, 6165u, 1u, 4472u), false), Struct_1(vec4<u32>(1u, 4294967295u, 83823u, 66449u), false), Struct_1(vec4<u32>(3819u, 26642u, 0u, 121026u), true), Struct_1(vec4<u32>(80277u, 4294967295u, 0u, 4294967295u), false), Struct_1(vec4<u32>(1u, 120203u, 1u, 269u), false), Struct_1(vec4<u32>(31356u, 25675u, 12616u, 13406u), false), Struct_1(vec4<u32>(1u, 13711u, 0u, 4294967295u), true), Struct_1(vec4<u32>(17150u, 32886u, 8464u, 67214u), true), Struct_1(vec4<u32>(30718u, 35294u, 105283u, 8998u), true), Struct_1(vec4<u32>(36701u, 0u, 0u, 1u), false), Struct_1(vec4<u32>(1u, 1u, 10956u, 14388u), false), Struct_1(vec4<u32>(1u, 27015u, 0u, 0u), true), Struct_1(vec4<u32>(11163u, 0u, 0u, 6549u), true), Struct_1(vec4<u32>(42514u, 22271u, 0u, 3370u), true), Struct_1(vec4<u32>(15157u, 14325u, 1u, 31620u), true), Struct_1(vec4<u32>(4045u, 4294967295u, 11291u, 15107u), true), Struct_1(vec4<u32>(0u, 0u, 0u, 0u), false), Struct_1(vec4<u32>(36006u, 55990u, 4294967295u, 13897u), false), Struct_1(vec4<u32>(0u, 0u, 0u, 4294967295u), true), Struct_1(vec4<u32>(41328u, 53716u, 73500u, 48966u), false), Struct_1(vec4<u32>(16014u, 0u, 4294967295u, 8240u), true), Struct_1(vec4<u32>(1u, 0u, 4294967295u, 51892u), true), Struct_1(vec4<u32>(0u, 1u, 0u, 31968u), false), Struct_1(vec4<u32>(0u, 17948u, 1u, 0u), false), Struct_1(vec4<u32>(4294967295u, 0u, 127221u, 4294967295u), false), Struct_1(vec4<u32>(4294967295u, 0u, 60794u, 4294967295u), false), Struct_1(vec4<u32>(1439u, 4294967295u, 4294967295u, 1239u), false), Struct_1(vec4<u32>(7937u, 0u, 0u, 27103u), true), Struct_1(vec4<u32>(1u, 43018u, 12856u, 0u), false), Struct_1(vec4<u32>(27638u, 26744u, 53220u, 5427u), true));

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<u32>(0u, 4294967295u, 30200u, 36114u), true), Struct_1(vec4<u32>(63733u, 53661u, 20529u, 4294967295u), true), Struct_1(vec4<u32>(38496u, 4294967295u, 33089u, 0u), false), Struct_1(vec4<u32>(4944u, 1u, 0u, 35212u), false), Struct_1(vec4<u32>(30401u, 4294967295u, 0u, 4294967295u), true), Struct_1(vec4<u32>(19586u, 13967u, 4294967295u, 48569u), false), Struct_1(vec4<u32>(4294967295u, 56293u, 98412u, 1u), true), Struct_1(vec4<u32>(0u, 4294967295u, 1u, 22691u), false), Struct_1(vec4<u32>(9938u, 4294967295u, 46044u, 27008u), false), Struct_1(vec4<u32>(4294967295u, 29352u, 1u, 0u), false), Struct_1(vec4<u32>(62158u, 0u, 21631u, 1126u), false), Struct_1(vec4<u32>(23638u, 4294967295u, 31472u, 34452u), false), Struct_1(vec4<u32>(1u, 4294967295u, 3863u, 4294967295u), false), Struct_1(vec4<u32>(30401u, 4294967295u, 38732u, 39005u), false), Struct_1(vec4<u32>(4294967295u, 1u, 2354u, 49973u), false), Struct_1(vec4<u32>(4294967295u, 19446u, 0u, 4294967295u), false), Struct_1(vec4<u32>(4294967295u, 89330u, 0u, 49457u), true), Struct_1(vec4<u32>(105508u, 1u, 0u, 1u), false), Struct_1(vec4<u32>(27756u, 99765u, 4294967295u, 97936u), false), Struct_1(vec4<u32>(58048u, 31494u, 14074u, 0u), true), Struct_1(vec4<u32>(31138u, 1u, 1u, 71972u), true), Struct_1(vec4<u32>(4294967295u, 0u, 1u, 82168u), true), Struct_1(vec4<u32>(1u, 1u, 4294967295u, 56414u), false), Struct_1(vec4<u32>(87378u, 0u, 4294967295u, 32327u), false), Struct_1(vec4<u32>(4294967295u, 33293u, 33969u, 24834u), false), Struct_1(vec4<u32>(41351u, 40076u, 0u, 1u), false), Struct_1(vec4<u32>(4294967295u, 41805u, 4294967295u, 1890u), true), Struct_1(vec4<u32>(4294967295u, 1u, 8989u, 68456u), true), Struct_1(vec4<u32>(35181u, 1u, 1u, 13603u), false), Struct_1(vec4<u32>(4294967295u, 58299u, 0u, 4294967295u), true), Struct_1(vec4<u32>(4294967295u, 12510u, 98330u, 11742u), true), Struct_1(vec4<u32>(37096u, 1u, 1u, 83226u), true));

var<private> global3: Struct_1;

var<private> global4: vec4<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: i32) -> bool {
    global2 = array<Struct_1, 32>();
    let var_0 = global1[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, _wgslsmith_clamp_u32(4589u, arg_1.a.x, 0u), ~1u, min(1u, 4294967295u)), _wgslsmith_mod_vec4_u32(max(arg_1.a, vec4<u32>(0u, 7196u, 4294967295u, 0u)), select(arg_1.a, arg_1.a, vec4<bool>(global0[_wgslsmith_index_u32(global3.a.x, 16u)], false, global4.x, false))))) | arg_1.a.x, 32u)];
    global0 = array<bool, 16>();
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(596f * _wgslsmith_f_op_f32(-1000f - 265f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(2036f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-140f)) + 2416f)))));
    return select(false, all(select(select(vec4<bool>(arg_1.b, global4.x, arg_1.b, false), !vec4<bool>(true, var_0.b, global3.b, true), arg_1.b), !vec4<bool>(global3.b, arg_1.b, global3.b, global3.b), select(select(vec4<bool>(true, true, true, arg_1.b), vec4<bool>(false, var_0.b, var_0.b, true), global0[_wgslsmith_index_u32(4294967295u, 16u)]), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 16u)], false), !var_0.b))), all(global4.zw));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec2<f32> {
    global2 = array<Struct_1, 32>();
    global1 = array<Struct_1, 32>();
    let var_0 = arg_1;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(249f, 985f), vec2<f32>(1507f, 2470f)) * vec2<f32>(-664f, 1993f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2264f, -2013f) + vec2<f32>(1228f, -830f)) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -381f), vec2<f32>(229f, 296f)))))));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: i32) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_1, arg_1, arg_1, 49427u), vec4<u32>(global3.a.x, 1u, 0u, global3.a.x)), func_3(0i, global2[_wgslsmith_index_u32(arg_1, 32u)], -arg_2)), Struct_1(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, arg_1, 12472u, arg_1), global3.a), any(vec4<bool>(true, global3.b, false, false))), Struct_1(firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(global3.a.x, 0u, arg_1, global3.a.x), global3.a)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(82268u, global3.a.x, global3.a.x), global3.a.yww), global3.a.ywx), 16u)]), global2[_wgslsmith_index_u32(16523u, 32u)])) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-741f, 1000f))))));
    global0 = array<bool, 16>();
    var var_1 = Struct_1(~global3.a, global3.b);
    global2 = array<Struct_1, 32>();
    var var_2 = global2[_wgslsmith_index_u32(arg_1, 32u)];
    return _wgslsmith_dot_vec2_u32(~_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_2.a.x, 26967u) & select(var_2.a.wx, global3.a.yz, global4.ww), var_2.a.zw, global3.a.xz), min(~vec2<u32>(var_1.a.x << (var_1.a.x % 32u), ~global3.a.x), reverseBits(~vec2<u32>(1u, global3.a.x))));
}

fn func_5(arg_0: u32, arg_1: vec2<i32>, arg_2: u32) -> i32 {
    global1 = array<Struct_1, 32>();
    var var_0 = Struct_1(~(~vec4<u32>(~global3.a.x, firstLeadingBit(arg_0), ~arg_2, 20502u)), all(vec3<bool>(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, arg_1.x, u_input.a.x, u_input.a.x), vec4<i32>(arg_1.x, u_input.a.x, u_input.a.x, 28985i)), Struct_1(global3.a, true), -37814i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~64511u, 1u), 16u)], true)));
    global1 = array<Struct_1, 32>();
    var var_1 = -387f;
    var var_2 = global3.b;
    return ~49342i;
}

fn func_1(arg_0: vec4<f32>, arg_1: u32, arg_2: f32) -> i32 {
    var var_0 = arg_0.zzw;
    var var_1 = any(!(!select(!vec3<bool>(global0[_wgslsmith_index_u32(arg_1, 16u)], false, global3.b), global4.yyy, !vec3<bool>(false, global4.x, global0[_wgslsmith_index_u32(4294967295u, 16u)]))));
    global4 = vec4<bool>(false, _wgslsmith_f_op_f32(var_0.x - -1146f) > _wgslsmith_f_op_f32(arg_2 - var_0.x), global0[_wgslsmith_index_u32(~35220u, 16u)], all(global4.zwx));
    global3 = global2[_wgslsmith_index_u32(30903u, 32u)];
    global1 = array<Struct_1, 32>();
    return firstTrailingBit(select(func_5(arg_1, vec2<i32>(max(-32419i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 23420i), u_input.a.zx)), func_2(u_input.a.zy, 13850u, ~u_input.a.x)), ~u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -408f) > _wgslsmith_f_op_f32(select(-313f, _wgslsmith_f_op_f32(sign(var_0.x)), true))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 16>();
    var var_0 = 80314u;
    let var_1 = _wgslsmith_dot_vec3_i32(-abs(vec3<i32>(u_input.a.x ^ 32713i, 1i, firstLeadingBit(37129i))), u_input.a.xxx);
    let var_2 = select(-(vec3<i32>(func_1(vec4<f32>(1665f, -693f, 101f, -189f), global3.a.x, 574f), abs(u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(33191i, -28645i, -46996i), vec3<i32>(var_1, 30088i, -2147483647i))) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(global3.a.x, global3.a.x, 1u), vec3<u32>(global3.a.x, 11415u, global3.a.x)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(~(u_input.a.zyy << (vec3<u32>(0u, 0u, 1u) % vec3<u32>(32u))), firstTrailingBit(u_input.a.yww), -vec3<i32>(var_1, u_input.a.x, 1i) & min(vec3<i32>(-5488i, var_1, u_input.a.x), u_input.a.zwz)) | _wgslsmith_add_vec3_i32(u_input.a.yxx, _wgslsmith_mult_vec3_i32(~u_input.a.xwx, vec3<i32>(0i, var_1, -2147483647i))), select(!global4.yxy, !global4.zwz, select(!select(global4.wxx, vec3<bool>(global0[_wgslsmith_index_u32(global3.a.x, 16u)], global3.b, global3.b), false), !vec3<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 16u)], false), !select(global4.wxz, global4.yxw, vec3<bool>(false, true, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~global3.a.yww, global3.a.wxz), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(168f - -1279f) * _wgslsmith_f_op_f32(1000f + -494f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-505f, -1466f)), _wgslsmith_f_op_f32(f32(-1f) * -239f))))), u_input.a, -_wgslsmith_mod_i32(countOneBits(var_1) >> (_wgslsmith_dot_vec3_u32(global3.a.xyz, global3.a.zxz) % 32u), -var_1));
}

