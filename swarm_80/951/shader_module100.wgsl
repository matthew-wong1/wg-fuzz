struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec4<u32>,
    c: Struct_2,
    d: vec4<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: f32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 28>;

var<private> global1: bool;

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(1652u, vec4<u32>(7217u, 17037u, 10227u, 16176u), true, 1140f, Struct_1(-27765i)), Struct_2(1u, vec4<u32>(70282u, 1u, 0u, 13027u), true, -920f, Struct_1(0i)), Struct_2(12221u, vec4<u32>(0u, 58597u, 13192u, 7199u), false, 891f, Struct_1(23963i)), Struct_2(19373u, vec4<u32>(26979u, 81433u, 55787u, 5472u), true, -1000f, Struct_1(i32(-2147483648))), Struct_2(4294967295u, vec4<u32>(58680u, 104950u, 76072u, 79479u), false, 1165f, Struct_1(2147483647i)), Struct_2(77473u, vec4<u32>(106144u, 6919u, 0u, 116703u), false, -410f, Struct_1(55774i)), Struct_2(36043u, vec4<u32>(14261u, 86232u, 18247u, 1u), false, 484f, Struct_1(-5195i)), Struct_2(760u, vec4<u32>(4294967295u, 4294967295u, 1u, 7660u), false, -320f, Struct_1(28572i)), Struct_2(75047u, vec4<u32>(4294967295u, 13415u, 61115u, 0u), true, 1000f, Struct_1(2534i)), Struct_2(22587u, vec4<u32>(7518u, 56153u, 4294967295u, 0u), true, 1000f, Struct_1(20800i)), Struct_2(4294967295u, vec4<u32>(8961u, 4294967295u, 116446u, 4294967295u), false, 1000f, Struct_1(1i)), Struct_2(11036u, vec4<u32>(35476u, 4576u, 0u, 4294967295u), false, 329f, Struct_1(-63842i)), Struct_2(0u, vec4<u32>(4457u, 139508u, 1u, 19771u), true, 995f, Struct_1(34477i)), Struct_2(3780u, vec4<u32>(27807u, 49134u, 19550u, 61379u), true, 391f, Struct_1(-1i)), Struct_2(4294967295u, vec4<u32>(21383u, 6410u, 0u, 4294967295u), false, 397f, Struct_1(-28616i)), Struct_2(22016u, vec4<u32>(79108u, 52314u, 36601u, 26686u), true, -705f, Struct_1(0i)), Struct_2(66610u, vec4<u32>(4294967295u, 56500u, 1u, 44219u), false, 703f, Struct_1(-1i)), Struct_2(1u, vec4<u32>(0u, 49741u, 4294967295u, 34602u), true, -753f, Struct_1(18725i)), Struct_2(6859u, vec4<u32>(72199u, 0u, 4294967295u, 67229u), false, -1000f, Struct_1(2147483647i)), Struct_2(1u, vec4<u32>(0u, 28301u, 23599u, 85092u), false, -1574f, Struct_1(1652i)), Struct_2(0u, vec4<u32>(35037u, 0u, 1u, 4294967295u), false, 2071f, Struct_1(-11762i)), Struct_2(1u, vec4<u32>(0u, 1u, 17991u, 1u), true, 402f, Struct_1(65642i)), Struct_2(0u, vec4<u32>(5493u, 32449u, 48363u, 4294967295u), false, 370f, Struct_1(i32(-2147483648))), Struct_2(31075u, vec4<u32>(4294967295u, 4294967295u, 35528u, 30085u), false, -2962f, Struct_1(-4058i)), Struct_2(1u, vec4<u32>(0u, 0u, 1u, 34690u), true, 434f, Struct_1(-39569i)), Struct_2(0u, vec4<u32>(73740u, 4294967295u, 64755u, 4456u), true, 375f, Struct_1(7631i)), Struct_2(76388u, vec4<u32>(0u, 0u, 1u, 4294967295u), true, 477f, Struct_1(36864i)), Struct_2(1u, vec4<u32>(59402u, 11663u, 8858u, 8457u), true, 1284f, Struct_1(7105i)));

var<private> global3: Struct_1 = Struct_1(0i);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> vec2<f32> {
    var var_0 = vec2<u32>(~(~1u) & _wgslsmith_add_u32(_wgslsmith_div_u32(~u_input.c.x, 123830u), ~1u), _wgslsmith_dot_vec2_u32(vec2<u32>(10839u, 4294967295u), ~_wgslsmith_clamp_vec2_u32(~vec2<u32>(10012u, u_input.c.x), countOneBits(vec2<u32>(u_input.a.x, 80935u)), reverseBits(vec2<u32>(0u, u_input.c.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(809f)) - _wgslsmith_div_f32(480f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -548f))));
    var var_2 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(870f, _wgslsmith_f_op_f32(-479f * _wgslsmith_div_f32(609f, -1332f)), _wgslsmith_f_op_f32(-157f + -983f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(662f)), -1000f, all(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 28u)], global0[_wgslsmith_index_u32(var_0.x, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)]))))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(-318f)), _wgslsmith_div_f32(-457f, 503f), _wgslsmith_f_op_f32(step(-1485f, 1090f)), _wgslsmith_f_op_f32(step(-689f, -260f)))))), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~78429u), var_0.x << (~u_input.c.x % 32u)) & _wgslsmith_dot_vec4_u32(select(vec4<u32>(34677u, u_input.a.x, 1u, 1u), u_input.a, !vec4<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false, global0[_wgslsmith_index_u32(u_input.a.x, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)])), firstTrailingBit(~vec4<u32>(0u, 31012u, var_0.x, u_input.c.x))), 28u)]));
    let var_3 = global0[_wgslsmith_index_u32(abs(~max(~(~97u), _wgslsmith_clamp_u32(~61799u, _wgslsmith_div_u32(u_input.a.x, 90085u), var_0.x))), 28u)];
    var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(15794u, 4294967295u), countOneBits(vec2<u32>(_wgslsmith_add_u32(countOneBits(65487u), var_0.x), 4294967295u)));
    return _wgslsmith_f_op_vec2_f32(var_2.xw + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.yx * var_2.wz)), vec2<f32>(-725f, _wgslsmith_f_op_f32(var_2.x + -625f)), 503f <= var_2.x)) - vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(var_2.x + 637f)), var_2.x)));
}

fn func_2() -> vec2<i32> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.b.zwz, ~(u_input.b.xyy | u_input.b.zwy)) | u_input.d.x);
    global3 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.e.zy, _wgslsmith_clamp_vec2_i32(u_input.d.zx ^ reverseBits(u_input.b.yz), u_input.d.zz, vec2<i32>(14372i, var_0.a) & vec2<i32>(2147483647i, 0i))));
    var var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-492f, 1127f) - vec2<f32>(-219f, 311f)) - vec2<f32>(2450f, -1000f)))))), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(1u, 28u)], false)))));
    let var_2 = Struct_4(Struct_1(_wgslsmith_sub_i32(-firstLeadingBit(31492i), u_input.e.x)), Struct_2(4294967295u >> (u_input.c.x % 32u), firstTrailingBit(vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, u_input.c.x), 1u, u_input.a.x, _wgslsmith_mult_u32(0u, u_input.a.x))), true, var_1.x, Struct_1(61108i)), Struct_1(var_0.a));
    var var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_1.x)) - _wgslsmith_f_op_f32(max(403f, var_1.x))))))));
    return _wgslsmith_clamp_vec2_i32(max(abs(u_input.e.xx), u_input.e.yy), vec2<i32>(_wgslsmith_mod_i32(global3.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 2147483647i, var_0.a, var_2.a.a), vec4<i32>(var_2.b.e.a, -43597i, global3.a, 0i))) ^ 0i, countOneBits(_wgslsmith_clamp_i32(-6341i, 0i, ~global3.a))), select(~select(-u_input.e.zx, ~u_input.b.yw, !vec2<bool>(true, var_2.b.c)), u_input.b.zy, vec2<bool>(true, true)));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = arg_1.x;
    let var_1 = func_2();
    var var_2 = global0[_wgslsmith_index_u32(select(2126u & ~_wgslsmith_dot_vec3_u32(~u_input.a.wyy, u_input.a.zwx), ~0u, !global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(_wgslsmith_div_u32(12795u, u_input.a.x), 0u, _wgslsmith_mod_u32(45836u, u_input.c.x)), 28u)]), 28u)];
    global0 = array<bool, 28>();
    global2 = array<Struct_2, 28>();
    return global2[_wgslsmith_index_u32(reverseBits(65240u), 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(1439f, vec4<u32>(~(~1u), ~77945u, u_input.a.x, abs(0u)) | vec4<u32>(107743u, u_input.a.x, _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.c.x, u_input.a.x), _wgslsmith_clamp_u32(u_input.a.x, 4294967295u, 30784u)), countOneBits(u_input.c.x)), func_1(vec4<bool>(!all(vec4<bool>(true, true, global0[_wgslsmith_index_u32(u_input.c.x, 28u)], false)), select(global0[_wgslsmith_index_u32(1u, 28u)], any(vec3<bool>(false, global0[_wgslsmith_index_u32(1u, 28u)], global0[_wgslsmith_index_u32(u_input.c.x, 28u)])), !global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), true, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, u_input.a.x) >> (u_input.a.x % 32u), 28u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(455f, 1139f), vec2<f32>(1793f, -1763f)))) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(688f, -1000f) + vec2<f32>(501f, -2945f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(724f, -495f) * vec2<f32>(-839f, -264f)))))), u_input.a);
    global1 = true;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(-586f * -1340f), firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(var_0.d.x, u_input.a.x, 76747u, 9229u), var_0.d << (u_input.a % vec4<u32>(32u))))), func_1(vec4<bool>(global0[_wgslsmith_index_u32(~u_input.c.x, 28u)], !select(global0[_wgslsmith_index_u32(0u, 28u)], true, var_0.c.c), all(vec4<bool>(var_0.c.c, var_0.c.c, true, true)), var_0.c.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1023f, -689f)) + vec2<f32>(-2077f, _wgslsmith_f_op_f32(trunc(var_0.a))))), u_input.a);
    var var_2 = u_input.b.ww;
    let var_3 = vec3<i32>(-var_1.c.e.a, 31379i, -(global3.a >> (max(~var_1.b.x, _wgslsmith_div_u32(var_1.b.x, 44205u)) % 32u)));
    let var_4 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_1.c.d - -1000f)));
    global3 = Struct_1(-10895i);
    var var_5 = u_input.c << (~_wgslsmith_clamp_vec2_u32(countOneBits(vec2<u32>(46021u, 109779u)), _wgslsmith_mult_vec2_u32(firstTrailingBit(vec2<u32>(var_0.d.x, u_input.a.x)), select(var_0.c.b.xy, vec2<u32>(u_input.a.x, var_0.c.a), var_1.c.c)), ~(vec2<u32>(23594u, 16728u) & u_input.c)) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(827f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.d)))), -938f, ~(~vec2<i32>(~u_input.b.x, min(-1048i, var_3.x))), ~(firstTrailingBit(var_3.x) | _wgslsmith_sub_i32(var_2.x, reverseBits(-6349i))));
}

