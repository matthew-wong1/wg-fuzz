struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(Struct_1(0i, vec4<bool>(false, true, true, true), -8356i, 1430f, vec3<i32>(107828i, i32(-2147483648), -25779i)), 578f, vec2<f32>(-378f, 320f), Struct_1(-10209i, vec4<bool>(true, false, false, false), 1i, 1206f, vec3<i32>(2147483647i, -1i, -10917i))), Struct_2(Struct_1(2147483647i, vec4<bool>(false, false, true, false), 2147483647i, -429f, vec3<i32>(2147483647i, -42144i, 39817i)), 712f, vec2<f32>(-1103f, -1000f), Struct_1(-67072i, vec4<bool>(false, false, false, true), 0i, -1375f, vec3<i32>(-1i, 6259i, -24761i))), Struct_2(Struct_1(20156i, vec4<bool>(false, false, false, false), -7245i, 1127f, vec3<i32>(19189i, 10808i, 16713i)), 346f, vec2<f32>(-575f, 342f), Struct_1(-34344i, vec4<bool>(false, false, true, false), 31990i, -666f, vec3<i32>(8087i, 2147483647i, 20549i))), Struct_2(Struct_1(54738i, vec4<bool>(true, true, true, false), 0i, 324f, vec3<i32>(2147483647i, -42477i, -1i)), 467f, vec2<f32>(-526f, 989f), Struct_1(1i, vec4<bool>(true, true, true, false), -6366i, 503f, vec3<i32>(i32(-2147483648), 42730i, -28073i))), Struct_2(Struct_1(0i, vec4<bool>(true, true, true, false), -40176i, 300f, vec3<i32>(0i, 1i, -22292i)), 982f, vec2<f32>(-611f, 1340f), Struct_1(3377i, vec4<bool>(true, true, false, false), i32(-2147483648), 1542f, vec3<i32>(-1876i, 23877i, 16443i))), Struct_2(Struct_1(28487i, vec4<bool>(true, false, true, false), 57004i, -959f, vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648))), 717f, vec2<f32>(-238f, -594f), Struct_1(i32(-2147483648), vec4<bool>(true, false, false, true), -18696i, 1013f, vec3<i32>(-1i, -15069i, -84389i))));

var<private> global1: Struct_1 = Struct_1(-27389i, vec4<bool>(false, false, false, false), i32(-2147483648), 644f, vec3<i32>(21343i, -21455i, 25654i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: f32) -> vec3<i32> {
    global1 = Struct_1(1i, !select(vec4<bool>(global1.b.x != true, global1.b.x, global1.b.x, false), vec4<bool>(global1.b.x, global1.b.x || global1.b.x, global1.b.x, !global1.b.x), global1.b), firstLeadingBit(-2147483647i), arg_0, vec3<i32>(_wgslsmith_mult_i32(global1.e.x, _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.d, 0i), ~29383i)), -2147483647i, -global1.a));
    var var_0 = global1.b.zx;
    var var_1 = ~0u;
    global1 = Struct_1(global1.c >> (1u % 32u), vec4<bool>(false, u_input.b >= ~(~1u), global1.b.x, false | var_0.x), global1.a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_0), global1.d)), -global1.e);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(global1.d * -704f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-165f)) * _wgslsmith_f_op_f32(-global1.d)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.d)) - _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -116f), arg_0)))));
    return abs(_wgslsmith_mult_vec3_i32(max(vec3<i32>(-59041i >> (u_input.e % 32u), firstTrailingBit(6656i), global1.a), global1.e), vec3<i32>(min(countOneBits(-1i), 1i), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global1.e, vec3<i32>(-1i, global1.a, u_input.c)), _wgslsmith_mult_vec3_i32(vec3<i32>(u_input.d, 20429i, global1.a), global1.e)), _wgslsmith_add_i32(-u_input.d, ~u_input.a.x))));
}

fn func_2() -> vec3<i32> {
    let var_0 = true;
    global0 = array<Struct_2, 6>();
    let var_1 = countOneBits(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, 34997u, 26914u), vec3<u32>(1u, 1u, 23414u)), ~(vec3<u32>(u_input.b, 9078u, 11602u) << (vec3<u32>(12234u, 0u, 9466u) % vec3<u32>(32u)))) | abs(vec3<u32>(u_input.b, 41905u, _wgslsmith_div_u32(u_input.b, 4294967295u))));
    let var_2 = global0[_wgslsmith_index_u32(var_1.x, 6u)];
    let var_3 = false;
    return _wgslsmith_sub_vec3_i32(global1.e, _wgslsmith_sub_vec3_i32(global1.e, func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d)))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = -max(max(select(min(vec4<i32>(global1.e.x, 10819i, global1.c, 41548i), vec4<i32>(-2147483647i, global1.a, arg_0.a, u_input.a.x)), max(vec4<i32>(arg_0.a, global1.c, -1i, -40596i), vec4<i32>(28885i, 18203i, arg_0.e.x, -2147483647i)), !vec4<bool>(false, arg_0.b.x, global1.b.x, global1.b.x)), vec4<i32>(global1.e.x, arg_0.c, -2147483647i, 1i) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(52562u, u_input.b, u_input.b, 0u), vec4<u32>(39114u, 53671u, u_input.b, u_input.e)) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_add_i32(~(-28037i), 0i), ~global1.a, -53074i, -u_input.c | global1.c));
    let var_1 = Struct_2(arg_0, _wgslsmith_f_op_f32(min(global1.d, _wgslsmith_f_op_f32(414f - -591f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, -1911f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d, arg_0.d))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d, 157f))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0.d, arg_0.d), vec2<f32>(-1543f, _wgslsmith_f_op_f32(arg_0.d * global1.d))))), arg_0);
    global1 = var_1.a;
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 6u)];
    var var_3 = u_input.b >> (~firstLeadingBit(u_input.e) % 32u);
    return Struct_1(_wgslsmith_add_i32(-2147483647i, min(u_input.d, 1i)), arg_0.b, ~(func_3(_wgslsmith_f_op_f32(-var_1.c.x)).x & _wgslsmith_mod_i32(func_2().x, -var_1.a.a)), _wgslsmith_f_op_f32(sign(-485f)), var_1.d.e);
}

fn func_1(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = 32921u;
    global1 = func_4(Struct_1(_wgslsmith_sub_i32(global1.a, _wgslsmith_add_i32(-u_input.d, -1i)), !global1.b, _wgslsmith_mod_i32(u_input.a.x, u_input.d | u_input.d) << ((~arg_0.d << (~u_input.e % 32u)) % 32u), -1361f, -func_2()));
    let var_1 = func_4(arg_0.b.d).b.xzz;
    var var_2 = arg_0;
    var_2 = arg_0;
    return !func_4(func_4(Struct_1(u_input.c, vec4<bool>(var_1.x, false, var_1.x, true), _wgslsmith_add_i32(2258i, -1i), -1334f, _wgslsmith_mod_vec3_i32(var_2.b.a.e, arg_0.c.e)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~_wgslsmith_clamp_vec2_i32(-u_input.a, _wgslsmith_mod_vec2_i32(vec2<i32>(-1437i, 10495i), u_input.a), reverseBits(u_input.a))) & ~(~vec2<i32>(~0i, u_input.d));
    var var_1 = Struct_2(Struct_1(_wgslsmith_add_i32(~22963i, abs(u_input.c)) | 2147483647i, select(!func_1(Struct_3(Struct_1(-29798i, global1.b, var_0.x, global1.d, global1.e), Struct_2(Struct_1(2147483647i, vec4<bool>(global1.b.x, false, true, false), var_0.x, global1.d, vec3<i32>(27725i, u_input.d, global1.e.x)), global1.d, vec2<f32>(-1075f, global1.d), Struct_1(0i, global1.b, global1.a, global1.d, vec3<i32>(var_0.x, global1.a, u_input.c))), Struct_1(u_input.a.x, vec4<bool>(global1.b.x, global1.b.x, global1.b.x, global1.b.x), -2147483647i, -1043f, global1.e), u_input.e, Struct_1(u_input.a.x, vec4<bool>(global1.b.x, false, true, true), var_0.x, 644f, global1.e))), vec4<bool>(true, global1.b.x, global1.b.x | true, global1.b.x), vec4<bool>(false, global1.b.x, global1.b.x == global1.b.x, global1.b.x)), -1i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -453f)))), vec3<i32>(34375i, global1.a, countOneBits(~var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1119f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(f32(-1f) * -689f)), _wgslsmith_f_op_f32(f32(-1f) * -1580f))), Struct_1(firstLeadingBit(var_0.x), global1.b, func_2().x, _wgslsmith_f_op_f32(func_4(Struct_1(global1.c, global1.b, -20983i, global1.d, vec3<i32>(u_input.c, 2147483647i, -14175i))).d * -1441f), ~(-min(global1.e, vec3<i32>(u_input.c, -5102i, u_input.a.x)))));
    var var_2 = Struct_3(var_1.d, global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.e, abs(20603u)), 6u)], Struct_1(-4398i, global1.b, u_input.d, -139f, ~var_1.d.e), 72631u | (~_wgslsmith_div_u32(31864u, 1u) >> (u_input.b % 32u)), func_4(Struct_1(abs(-32147i), vec4<bool>(true, var_1.d.b.x, !global1.b.x, true), select(global1.c & -8994i, min(33171i, -2147483647i), true), -1239f, (global1.e | var_1.d.e) ^ vec3<i32>(-1i, 0i, -1i))));
    let var_3 = Struct_3(var_2.e, global0[_wgslsmith_index_u32(u_input.b, 6u)], var_2.b.d, 4294967295u, var_1.d);
    var var_4 = vec4<i32>(func_2().x, ~(-2147483647i), global1.c, max(-16213i, var_3.a.c)) | abs(vec4<i32>(var_2.e.e.x, u_input.d, 2147483647i, _wgslsmith_add_i32(~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 21610i), vec2<i32>(38047i, 52632i)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.c, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1728f), global1.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.b.c.x - var_2.e.d)), _wgslsmith_f_op_f32(round(-1007f)), func_4(var_3.c).d), global1.d, ~(vec4<u32>(u_input.b, _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.d, u_input.b, 18190u, 1u), vec4<u32>(0u, 4294967295u, 0u, u_input.e)), var_3.d, reverseBits(4294967295u)) << (~vec4<u32>(u_input.b, 19538u, var_3.d, var_2.d) % vec4<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1229f, var_1.b, global1.b.x))) * _wgslsmith_f_op_f32(var_3.b.c.x * _wgslsmith_f_op_f32(abs(var_3.b.c.x)))) + _wgslsmith_f_op_f32(step(-1132f, -191f))));
}

