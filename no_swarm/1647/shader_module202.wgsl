struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: array<Struct_1, 5>;

var<private> global2: array<Struct_1, 4>;

var<private> global3: array<Struct_1, 14>;

var<private> global4: array<vec4<u32>, 4> = array<vec4<u32>, 4>(vec4<u32>(18083u, 335u, 47957u, 50776u), vec4<u32>(50318u, 0u, 0u, 41455u), vec4<u32>(15586u, 1u, 21224u, 0u), vec4<u32>(0u, 80722u, 1u, 74005u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> f32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-380f, -464f)))))), _wgslsmith_add_vec3_u32(abs(countOneBits(vec3<u32>(26518u, 1u, 3351u))), vec3<u32>(9704u, ~38773u, u_input.d.x)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d.x, u_input.d.x, u_input.a), u_input.d)), vec4<i32>(~(u_input.c ^ -2147483647i), u_input.b, ~abs(-47456i), abs(select(u_input.b, u_input.b, true))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(465f, 521f, -868f, -452f)))), ~countOneBits(~vec2<u32>(u_input.a, 0u)) << (vec2<u32>(max(6045u, u_input.a), _wgslsmith_mult_u32(select(u_input.d.x, 1u, true), u_input.d.x << (u_input.d.x % 32u))) % vec2<u32>(32u)), global0[_wgslsmith_index_u32(~1u, 11u)], Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1324f, -1964f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(142f, -600f))))), _wgslsmith_div_vec3_u32(~vec3<u32>(7739u, u_input.d.x, 12599u), u_input.d), u_input.d, max(firstLeadingBit(vec4<i32>(0i, -2147483647i, 0i, u_input.b)) << (~global4[_wgslsmith_index_u32(0u, 4u)] % vec4<u32>(32u)), (vec4<i32>(1i, 2147483647i, 1i, 635i) ^ vec4<i32>(0i, u_input.c, -7226i, u_input.c)) << (global4[_wgslsmith_index_u32(~u_input.d.x, 4u)] % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(325f, 1486f), _wgslsmith_f_op_f32(-1000f * -1135f), _wgslsmith_f_op_f32(f32(-1f) * -766f), 1204f) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 1196f, 964f, 1000f)))))));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(428f, -2126f)), _wgslsmith_f_op_vec2_f32(trunc(var_0.c.e.xz)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_0.d.a, vec2<f32>(803f, var_0.a.e.x))))), u_input.d, firstTrailingBit(~u_input.d), ~vec4<i32>(_wgslsmith_add_i32(u_input.c, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 0i, var_0.a.d.x), vec3<i32>(u_input.c, 2147483647i, 40977i))), var_0.a.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.d.d.x, -1i), var_0.a.d.xxx), u_input.b), vec4<f32>(_wgslsmith_f_op_f32(step(var_0.a.a.x, _wgslsmith_f_op_f32(round(-240f)))), var_0.c.a.x, _wgslsmith_f_op_f32(-var_0.a.e.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.a.x - var_0.c.e.x)), -705f, false || any(vec4<bool>(true, true, true, false))))));
    global1 = array<Struct_1, 5>();
    let var_2 = vec4<bool>(0u >= var_1.c.x, all(vec3<bool>(any(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), false)), true, true)), false, !(!(any(vec2<bool>(false, true)) | any(vec2<bool>(true, true)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.a.e.x * var_1.a.x), _wgslsmith_f_op_f32(max(var_0.a.a.x, -599f)))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-889f, var_1.e.x))), var_1.e.wx)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(var_0.a.a.x)), 299f)))));
    return var_0.a.e.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global3[_wgslsmith_index_u32(u_input.a, 14u)], u_input.d.yy, global3[_wgslsmith_index_u32(~1u, 14u)], Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(285f, 992f), -298f)), ~_wgslsmith_mod_vec3_u32(u_input.d, vec3<u32>(u_input.d.x, u_input.a, 1u)), countOneBits(u_input.d), ~(~abs(vec4<i32>(-28908i, u_input.c, u_input.c, u_input.b))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(-592f, 1927f), _wgslsmith_f_op_f32(floor(284f)), _wgslsmith_f_op_f32(f32(-1f) * -2017f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1017f, 619f, -291f, -191f))))));
    var var_1 = Struct_2(Struct_1(var_0.a.a, ~var_0.a.b, vec3<u32>(_wgslsmith_div_u32(var_0.b.x, ~var_0.a.b.x), ~var_0.a.c.x, ~reverseBits(var_0.b.x)), firstTrailingBit(~var_0.c.d) & _wgslsmith_clamp_vec4_i32(var_0.a.d, vec4<i32>(var_0.a.d.x, var_0.d.d.x, -2147483647i, -22584i) ^ vec4<i32>(30251i, -1i, 0i, 1i), var_0.d.d), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1023f, var_0.d.e.x, 1050f, 146f)))), vec2<u32>(select(94158u, 21869u, true & select(false, false, false)), ~u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(330f, var_0.d.e.x) - var_0.d.e.zx))), vec3<u32>(abs(43374u), 1785u, _wgslsmith_dot_vec3_u32(var_0.a.b, u_input.d)) | _wgslsmith_sub_vec3_u32(var_0.d.c, u_input.d | u_input.d), select(min(var_0.a.c >> (vec3<u32>(0u, 1u, 24395u) % vec3<u32>(32u)), ~u_input.d), firstLeadingBit(_wgslsmith_div_vec3_u32(u_input.d, u_input.d)), _wgslsmith_f_op_f32(var_0.d.e.x * var_0.d.e.x) >= var_0.c.a.x), var_0.d.d, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.d.e) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d.e * vec4<f32>(-348f, -1412f, 345f, 889f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1271f, var_0.c.a.x)), var_0.d.c >> (select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_0.b.x, var_0.b.x), vec3<u32>(27805u, 44349u, u_input.d.x)), firstTrailingBit(u_input.d), true) % vec3<u32>(32u)), max(~var_0.a.c >> (firstLeadingBit(var_0.a.c) % vec3<u32>(32u)), firstTrailingBit(min(vec3<u32>(var_0.c.c.x, 24935u, var_0.a.b.x), u_input.d))), ~vec4<i32>(i32(-1i) * -2147483647i, u_input.c, abs(42885i), var_0.a.d.x), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -965f), _wgslsmith_div_f32(var_0.a.a.x, 168f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(var_0.c.e.x)))), _wgslsmith_f_op_f32(-896f * _wgslsmith_f_op_f32(select(var_0.a.a.x, -1000f, true))), 1213f)));
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(834f, -186f), vec2<f32>(537f, var_0.c.e.x))))), ~u_input.d, u_input.d, vec4<i32>(firstTrailingBit(-2147483647i) | _wgslsmith_clamp_i32(67231i, var_1.d.d.x, u_input.b), -_wgslsmith_dot_vec4_i32(var_1.c.d, vec4<i32>(u_input.b, 15716i, 0i, -10948i)), 1i, _wgslsmith_mod_i32(u_input.c, _wgslsmith_dot_vec3_i32(var_1.a.d.zxx, vec3<i32>(u_input.b, 0i, u_input.b)))), var_1.a.e), _wgslsmith_sub_vec2_u32(var_0.c.c.xy, _wgslsmith_sub_vec2_u32(_wgslsmith_div_vec2_u32(u_input.d.xy, vec2<u32>(u_input.d.x, 86379u)), countOneBits(var_1.d.c.xx))) << (u_input.d.xy % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_vec2_f32(floor(var_0.a.e.zw)), var_0.c.b, firstLeadingBit(vec3<u32>(var_1.a.c.x, u_input.a, var_1.a.b.x)) | vec3<u32>(var_1.d.b.x, ~24405u, ~var_1.c.b.x), ~vec4<i32>(u_input.b, -22842i, 1i, abs(var_0.c.d.x)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.a.x - var_1.d.e.x) * -1000f), -783f, 639f, _wgslsmith_f_op_f32(round(-305f)))), var_0.c);
}

fn func_1() -> Struct_2 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -992f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f - 578f)), _wgslsmith_f_op_f32(f32(-1f) * -1249f)))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.d.x, 5u)];
    let var_2 = vec2<i32>(firstTrailingBit(19460i), _wgslsmith_div_i32(-(u_input.b >> (firstTrailingBit(0u) % 32u)), _wgslsmith_sub_i32(firstTrailingBit(-61953i), _wgslsmith_dot_vec3_i32(var_1.d.www, vec3<i32>(-2147483647i, u_input.b, 42036i)))));
    let var_3 = firstLeadingBit(vec3<u32>(countOneBits(~(~1u)), 0u, u_input.a));
    global3 = array<Struct_1, 14>();
    var var_4 = 16546i;
    global4 = array<vec4<u32>, 4>();
    var var_5 = func_1();
    global2 = array<Struct_1, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_vec2_f32(-var_5.c.a), vec2<f32>(var_5.c.a.x, _wgslsmith_f_op_f32(var_5.a.e.x - var_5.a.e.x)), ~vec2<i32>(i32(-1i) * -1i, 2147483647i), _wgslsmith_add_vec2_u32(vec2<u32>(45948u, (var_3.x ^ var_5.b.x) | _wgslsmith_mult_u32(91891u, var_1.c.x)), (_wgslsmith_div_vec2_u32(var_5.b, var_5.c.b.xx) << (vec2<u32>(1u, 1u) % vec2<u32>(32u))) | (_wgslsmith_div_vec2_u32(var_5.a.b.xx, vec2<u32>(var_5.c.c.x, var_1.b.x)) | u_input.d.zz)));
}

