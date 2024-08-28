struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<f32>,
    c: u32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: Struct_1,
    e: vec2<u32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 10>;

var<private> global1: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec3<i32>(-1i, 0i, 1i), 1632f, vec3<i32>(0i, -1i, -6173i), Struct_1(-128f), vec2<u32>(108562u, 1u)), Struct_3(vec3<i32>(5746i, -1i, 1i), -534f, vec3<i32>(1i, 0i, 5971i), Struct_1(-1060f), vec2<u32>(0u, 1u)), Struct_3(vec3<i32>(-1i, 2147483647i, 2147483647i), -313f, vec3<i32>(i32(-2147483648), -1i, 2147483647i), Struct_1(-640f), vec2<u32>(19160u, 30835u)), Struct_3(vec3<i32>(1i, 1i, -1i), 1693f, vec3<i32>(-51940i, -36879i, 1i), Struct_1(1468f), vec2<u32>(4294967295u, 27838u)), Struct_3(vec3<i32>(29418i, 7054i, i32(-2147483648)), -256f, vec3<i32>(0i, 0i, 1i), Struct_1(-805f), vec2<u32>(1u, 0u)), Struct_3(vec3<i32>(480i, -1i, 4003i), 804f, vec3<i32>(-10292i, 2147483647i, i32(-2147483648)), Struct_1(-472f), vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec3<i32>(i32(-2147483648), -34709i, 59405i), -1444f, vec3<i32>(-74643i, -5508i, 26375i), Struct_1(1574f), vec2<u32>(4294967295u, 0u)));

var<private> global2: Struct_3;

var<private> global3: u32 = 4294967295u;

var<private> global4: Struct_2;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>, arg_3: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.d.a));
    var var_1 = Struct_2(_wgslsmith_add_vec2_i32(abs(_wgslsmith_div_vec2_i32(abs(global2.a.yy), ~vec2<i32>(global2.c.x, -27848i))), ((global2.c.zx & vec2<i32>(global2.c.x, global2.a.x)) | _wgslsmith_add_vec2_i32(vec2<i32>(arg_1, 21932i), global4.a)) & global4.a), _wgslsmith_f_op_vec4_f32(exp2(arg_3.b)), firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, u_input.a, global4.c), vec4<u32>(global4.c, 4294967295u, arg_2.x, 1u)), 22533u)));
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(global0[_wgslsmith_index_u32(4294967295u, 10u)], vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global4.b.x))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.b.x - var_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.b.x - var_2.a)))), select(select(vec2<bool>(all(vec4<bool>(false, true, false, false)), true), vec2<bool>(true, any(vec3<bool>(false, false, false))), vec2<bool>(true, true)), vec2<bool>(true, true), !vec2<bool>(true, all(vec4<bool>(true, true, true, false))))));
    var_2 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(756f, var_2.a))))))));
    return max(countOneBits(41442u), (4273u ^ _wgslsmith_mult_u32(~108052u, global4.c ^ u_input.a)) << (0u % 32u));
}

fn func_2(arg_0: f32, arg_1: vec3<u32>, arg_2: i32, arg_3: i32) -> Struct_3 {
    let var_0 = arg_2 >> (~0u % 32u);
    global2 = global1[_wgslsmith_index_u32(1u, 7u)];
    var var_1 = global1[_wgslsmith_index_u32(func_3(global2.d, arg_3, ~_wgslsmith_mod_vec3_u32(abs(arg_1), abs(vec3<u32>(0u, 1u, 4294967295u))), Struct_2(min(select(vec2<i32>(-2147483647i, var_0), global2.c.yz, true), vec2<i32>(firstLeadingBit(-1i), _wgslsmith_dot_vec3_i32(global2.c, vec3<i32>(-2147483647i, 23210i, global4.a.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(global4.b, vec4<f32>(-418f, global2.d.a, arg_0, -798f)), _wgslsmith_f_op_vec4_f32(select(global4.b, vec4<f32>(arg_0, global4.b.x, global2.b, arg_0), false)))), global2.e.x)), 7u)];
    global0 = array<vec2<f32>, 10>();
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(~u_input.a, 4294967295u & ~(48044u ^ var_1.e.x)), global2.e);
    return Struct_3(~var_1.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.a)))))), -select(_wgslsmith_add_vec3_i32(var_1.c >> (arg_1 % vec3<u32>(32u)), var_1.a), vec3<i32>(firstLeadingBit(global4.a.x), arg_2, ~var_1.c.x), vec3<bool>(true, true, true)), global2.d, vec2<u32>(23190u, 1u));
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: bool) -> Struct_3 {
    global0 = array<vec2<f32>, 10>();
    let var_0 = func_2(_wgslsmith_f_op_f32(-global2.b), vec3<u32>(u_input.a >> (1u % 32u), _wgslsmith_sub_u32(~global4.c, global4.c), u_input.a) << (_wgslsmith_mult_vec3_u32(select(vec3<u32>(49071u, 58302u, u_input.a), vec3<u32>(global4.c, 0u, u_input.a) << (vec3<u32>(global2.e.x, u_input.a, global4.c) % vec3<u32>(32u)), select(vec3<bool>(true, arg_2, true), vec3<bool>(arg_2, false, arg_2), arg_2)), vec3<u32>(3804u, 4294967295u, _wgslsmith_mult_u32(5218u, u_input.a))) % vec3<u32>(32u)), ~(-countOneBits(~global2.a.x)), _wgslsmith_clamp_i32(global4.a.x | ~(arg_1.x << (u_input.a % 32u)), 40932i, ~(-_wgslsmith_dot_vec2_i32(vec2<i32>(global2.a.x, global4.a.x), global2.a.zx))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b - _wgslsmith_div_f32(-892f, _wgslsmith_f_op_f32(global2.b + global4.b.x))) * _wgslsmith_f_op_f32(-global2.d.a)), select(vec2<i32>(global4.a.x, global4.a.x), -vec2<i32>(~global2.a.x, global2.a.x), true), true == (1072i > _wgslsmith_mod_i32(global4.a.x, 0i)));
    global4 = Struct_2(abs(vec2<i32>(global4.a.x, global4.a.x) | (firstTrailingBit(global4.a) & global2.a.xx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-305f, -1000f, _wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(481f - global4.b.x)))), 13022u);
    global1 = array<Struct_3, 7>();
    var var_0 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-884f + 1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-230f)))), -(-vec2<i32>(global4.a.x, global4.a.x) | vec2<i32>(global2.c.x, -5175i)), !all(vec4<bool>(false, all(vec2<bool>(true, true)), false, any(vec2<bool>(false, true)))));
    global4 = Struct_2(vec2<i32>(-1i, global4.a.x), vec4<f32>(-2765f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b * var_0.d.a), _wgslsmith_f_op_f32(global4.b.x - var_0.d.a))), func_1(global2.b, global4.a, true).d.a)), -1046f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1228f, 1613f)))), 4294967295u);
    let var_1 = Struct_3(-abs(global2.a), -187f, vec3<i32>(-2305i, global4.a.x, ~_wgslsmith_div_i32(-global4.a.x, global2.c.x)), func_2(_wgslsmith_f_op_f32(min(1191f, _wgslsmith_f_op_f32(max(-1018f, -326f)))), (~vec3<u32>(var_0.e.x, u_input.a, u_input.a) | abs(vec3<u32>(1u, 5174u, 18877u))) << (abs(vec3<u32>(0u, global2.e.x, 4294967295u)) % vec3<u32>(32u)), func_1(var_0.b, select(select(vec2<i32>(global2.a.x, global2.c.x), vec2<i32>(global2.a.x, -2147483647i), vec2<bool>(true, false)), _wgslsmith_div_vec2_i32(vec2<i32>(global2.c.x, global4.a.x), global2.c.zx), vec2<bool>(true, true)), true).c.x, -var_0.c.x).d, ~vec2<u32>(17676u, abs(reverseBits(1u))));
    global0 = array<vec2<f32>, 10>();
    var_0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -552f), (abs(~vec3<u32>(5933u, var_0.e.x, 0u)) >> (select(~vec3<u32>(var_0.e.x, global2.e.x, global4.c), vec3<u32>(var_0.e.x, global2.e.x, var_1.e.x) >> (vec3<u32>(var_1.e.x, 0u, global2.e.x) % vec3<u32>(32u)), vec3<bool>(true, true, true)) % vec3<u32>(32u))) << (((firstTrailingBit(vec3<u32>(var_1.e.x, global2.e.x, u_input.a)) | countOneBits(vec3<u32>(global4.c, 0u, global2.e.x))) & vec3<u32>(global2.e.x, func_2(var_0.d.a, vec3<u32>(15611u, u_input.a, 1u), 1i, global2.c.x).e.x, ~54138u)) % vec3<u32>(32u)), _wgslsmith_dot_vec2_i32(-_wgslsmith_div_vec2_i32(global4.a >> (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(var_1.a.xx, vec2<i32>(global4.a.x, 46413i))), firstTrailingBit(vec2<i32>(-15364i, -1i)) & select(vec2<i32>(-6501i, var_1.c.x), ~var_0.c.xy, vec2<bool>(true, false))), var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~(~global2.a)), _wgslsmith_f_op_vec2_f32(exp2(global4.b.xy)), -1000f, ~(~min(~vec4<u32>(var_0.e.x, global2.e.x, var_0.e.x, 4294967295u), vec4<u32>(global4.c, global2.e.x, 1u, 0u) >> (vec4<u32>(global4.c, var_1.e.x, 61134u, 4294967295u) % vec4<u32>(32u)))));
}

