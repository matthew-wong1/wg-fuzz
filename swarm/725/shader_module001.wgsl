struct Struct_1 {
    a: i32,
    b: i32,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: f32,
    d: Struct_1,
    e: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 23> = array<i32, 23>(-15666i, 14298i, 2147483647i, -1063i, 9463i, 0i, 0i, 14160i, 1i, -15730i, 13997i, 71572i, i32(-2147483648), -15649i, 1i, -1i, 2147483647i, 2147483647i, i32(-2147483648), -22939i, i32(-2147483648), -1i, -1i);

var<private> global1: Struct_2 = Struct_2(vec2<u32>(0u, 30800u), vec3<bool>(true, false, true), vec3<f32>(102f, 949f, 765f), Struct_1(-27146i, i32(-2147483648), -875f, vec4<f32>(885f, 344f, 1841f, -247f)), vec4<bool>(true, true, true, false));

var<private> global2: array<f32, 8> = array<f32, 8>(-737f, -410f, 756f, 636f, -1447f, -1139f, -1850f, -408f);

var<private> global3: Struct_2;

var<private> global4: bool;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(trunc(global3.c.x));
    let var_1 = Struct_3(Struct_2(global3.a, select(!global1.e.zyx, select(!global1.e.xwy, !vec3<bool>(false, global3.e.x, true), vec3<bool>(global3.b.x, true, true)), !select(global3.e.yww, global3.e.zzw, vec3<bool>(false, global1.e.x, true))), vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(global1.a.x, 8u)])), _wgslsmith_f_op_f32(f32(-1f) * -386f)), global1.d, !global3.e), global3.b.x & !any(select(global1.b, global3.b, vec3<bool>(false, global1.b.x, global1.b.x))), _wgslsmith_f_op_f32(global1.d.c - global2[_wgslsmith_index_u32(44235u, 8u)]), Struct_1(select(i32(-1i) * -48511i, -22040i, true) ^ ~_wgslsmith_mod_i32(2147483647i, global1.d.a), 1i, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(global3.a.x, 8u)], -567f))), 3320f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(19669u, 8u)], var_0, 1854f, global2[_wgslsmith_index_u32(global1.a.x, 8u)])))), _wgslsmith_clamp_i32(24478i >> (_wgslsmith_dot_vec2_u32(global1.a, global1.a) % 32u), countOneBits(2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.b, max(global0[_wgslsmith_index_u32(global3.a.x, 23u)], u_input.c), _wgslsmith_clamp_i32(u_input.d, -1i, -1i)), max(u_input.a, vec3<i32>(-2147483647i, 12397i, global3.d.b)) << (_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.a.x, global1.a.x, global1.a.x), vec3<u32>(global3.a.x, global1.a.x, global1.a.x), vec3<u32>(global1.a.x, 1u, global1.a.x)) % vec3<u32>(32u)))));
    var var_2 = Struct_3(var_1.a, any(!(!global3.e.xx)), global1.d.d.x, Struct_1(countOneBits(~(-global0[_wgslsmith_index_u32(global3.a.x, 23u)])), u_input.d, var_1.c, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(global3.d.d * vec4<f32>(771f, global3.c.x, 1106f, global2[_wgslsmith_index_u32(global1.a.x, 8u)])), _wgslsmith_f_op_vec4_f32(vec4<f32>(-319f, var_1.c, 431f, global1.c.x) - vec4<f32>(global3.d.c, -799f, -1308f, global3.c.x)))), global3.d.d))), _wgslsmith_dot_vec3_i32(vec3<i32>(global3.d.b, _wgslsmith_div_i32(_wgslsmith_mod_i32(45642i, -2147483647i), _wgslsmith_sub_i32(-22956i, 29933i)), _wgslsmith_mult_i32(~var_1.d.b, reverseBits(-63i))), u_input.a));
    let var_3 = ~u_input.a.xz;
    var var_4 = 130f;
    return select(vec3<bool>(true, select(true, true, true), _wgslsmith_div_f32(448f, global1.c.x) >= var_1.c), vec3<bool>(all(!(!vec2<bool>(var_1.b, global3.e.x))), var_2.b, any(!select(vec3<bool>(global3.b.x, true, false), global3.b, global1.b))), select(select(global1.e.yyw, var_1.a.e.zyy, select(!vec3<bool>(global1.e.x, var_2.a.b.x, false), select(vec3<bool>(var_2.a.e.x, true, global3.b.x), vec3<bool>(false, var_1.b, true), var_2.a.b), true)), select(vec3<bool>(false, all(vec4<bool>(global3.e.x, var_1.b, false, true)), false), !vec3<bool>(true, var_1.a.b.x, false), vec3<bool>(true, global3.b.x, true)), !select(any(vec4<bool>(false, global3.e.x, global1.e.x, var_1.a.e.x)), any(global3.b), all(global3.e.zxx))));
}

fn func_2() -> u32 {
    global2 = array<f32, 8>();
    var var_0 = Struct_3(Struct_2(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(30243u, global1.a.x), global3.a, vec2<u32>(0u, 63798u)) | vec2<u32>(global3.a.x, global3.a.x)), vec3<bool>(all(func_3()), true, 2663u >= min(global1.a.x, global3.a.x)), global3.c, Struct_1(-firstLeadingBit(2147483647i), 1i, global1.d.d.x, global1.d.d), !global1.e), true, global3.c.x, global1.d, _wgslsmith_mult_i32(0i << (global3.a.x % 32u), -29498i));
    var_0 = Struct_3(Struct_2(~((vec2<u32>(global1.a.x, 113756u) << (vec2<u32>(var_0.a.a.x, 0u) % vec2<u32>(32u))) | vec2<u32>(var_0.a.a.x, 29447u)), vec3<bool>(false, !(global3.e.x || true), all(var_0.a.e.wz) == false), var_0.a.c, Struct_1(-13443i, 1i, global2[_wgslsmith_index_u32(~global3.a.x, 8u)], vec4<f32>(-1075f, -755f, 1f, _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(global3.a.x, 8u)])))), vec4<bool>(true, !var_0.b, global3.e.x, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-2212f)), -1610f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1097f)) * _wgslsmith_f_op_f32(select(global3.d.c, global3.c.x, true))), global2[_wgslsmith_index_u32(global3.a.x, 8u)], global1.d, _wgslsmith_clamp_i32(~1i, _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mod_vec3_i32(vec3<i32>(62713i, -32963i, global1.d.a), countOneBits(vec3<i32>(global1.d.b, 35i, global1.d.b)))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(~vec4<i32>(global1.d.a, -2147483647i, global0[_wgslsmith_index_u32(global3.a.x, 23u)], global3.d.b), vec4<i32>(23940i, 2147483647i, 1i, global3.d.a)), abs(vec4<i32>(-1i, var_0.a.d.b, -7965i, global1.d.a)) | _wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, -2147483647i, global3.d.b, 15768i), vec4<i32>(u_input.a.x, 0i, global0[_wgslsmith_index_u32(var_0.a.a.x, 23u)], global3.d.b)))));
    var var_1 = u_input.d == max(_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -75912i) ^ vec2<i32>(global1.d.b, -2147483647i), ~(~vec2<i32>(global3.d.b, global3.d.a))), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, countOneBits(firstTrailingBit(global3.d.b))));
    var_1 = all(var_0.a.e.xxy);
    return global3.a.x;
}

fn func_1() -> f32 {
    let var_0 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_clamp_u32(14640u, ~73198u, 1u), 42018u, select(0u, max(global3.a.x, global1.a.x), global1.b.x | false), ~global1.a.x), vec4<u32>(0u, global3.a.x << (global1.a.x % 32u), func_2(), ~_wgslsmith_div_u32(0u, select(global3.a.x, global3.a.x, true))));
    let var_1 = Struct_2(~global1.a, global3.b, global1.d.d.zwy, Struct_1(u_input.d, -min(u_input.d ^ -24345i, _wgslsmith_mod_i32(-2147483647i, -1i)), _wgslsmith_f_op_f32(1110f + global2[_wgslsmith_index_u32(abs(var_0) << (_wgslsmith_dot_vec4_u32(vec4<u32>(3280u, 36572u, global1.a.x, global1.a.x), vec4<u32>(10665u, global1.a.x, global1.a.x, 1u)) % 32u), 8u)]), vec4<f32>(_wgslsmith_f_op_f32(floor(global3.c.x)), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(~var_0, 8u)])), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global1.c.x)), _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(global1.a.x, 8u)])), true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 8u)], 342f)))), vec4<bool>(func_3().x, true, global1.b.x & true, func_3().x));
    global0 = array<i32, 23>();
    var var_2 = Struct_4(any(func_3().xz));
    let var_3 = Struct_4(true);
    return -1172f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.b;
    var var_1 = vec3<f32>(global2[_wgslsmith_index_u32(global3.a.x, 8u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -537f) + global1.d.c), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(step(-797f, global1.c.x))))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x))) * global3.c.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1()), global1.c.x) - -1949f), -216f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -250f))))))));
    var var_3 = select(countOneBits(abs(global1.a << (global1.a % vec2<u32>(32u))) ^ vec2<u32>(1u, 8443u)), max(vec2<u32>(4294967295u, ~20106u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(global3.a.x, 76469u) << (~vec2<u32>(global1.a.x, 4294967295u) % vec2<u32>(32u)), global1.a, global3.a)), !(false & global3.b.x) & false);
    let var_4 = 2147483647i << (var_3.x % 32u);
    global2 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(44960u, select(_wgslsmith_mult_u32(~global1.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(25821u, var_3.x, 1u, 1u), vec4<u32>(global3.a.x, 4294967295u, global3.a.x, var_3.x))), 38230u, false), 19070u), vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a.xy, min(-vec2<i32>(-2147483647i, var_0), u_input.a.xy)), 0i, ~select(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(var_3.x, 23u)], global3.d.b), ~(-16136i), any(vec4<bool>(false, false, global1.b.x, global1.e.x)))));
}

