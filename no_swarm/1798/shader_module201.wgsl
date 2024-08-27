struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: vec2<f32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: i32 = 22967i;

var<private> global2: array<vec2<u32>, 13>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-510f, -1876f, -1300f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(165f, 1633f, 478f))))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-294f, -2153f)), _wgslsmith_f_op_f32(f32(-1f) * -1169f), _wgslsmith_f_op_f32(f32(-1f) * -456f)))), any(vec3<bool>(all(!vec3<bool>(global0.a, global0.a, global0.a)), true, select(u_input.b.x != u_input.b.x, true, all(vec2<bool>(true, global0.a)))))));
    var var_1 = Struct_2(((_wgslsmith_mult_vec4_u32(vec4<u32>(47166u, 696u, u_input.a, u_input.a), vec4<u32>(62946u, u_input.a, 1u, 1u)) ^ vec4<u32>(u_input.a, arg_0.x, 78978u, 22137u)) << (vec4<u32>(~1u, 56567u, ~50096u, u_input.a << (arg_0.x % 32u)) % vec4<u32>(32u))) | vec4<u32>(4294967295u, _wgslsmith_clamp_u32(abs(17437u), _wgslsmith_clamp_u32(arg_0.x, 4294967295u, 10465u), reverseBits(0u)), u_input.a, 1u), Struct_1(0u, vec3<bool>(true, all(!vec4<bool>(global0.a, global0.a, false, global0.a)), any(vec2<bool>(false, global0.a))), var_0.x), u_input.c, vec2<f32>(-747f, _wgslsmith_f_op_f32(-623f * _wgslsmith_f_op_f32(f32(-1f) * -1000f))), ~_wgslsmith_sub_i32(reverseBits(u_input.b.x), u_input.c));
    let var_2 = Struct_3(abs(~firstLeadingBit(reverseBits(-17105i))));
    global1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(u_input.b.zy, -u_input.b.zz), abs(-28660i & _wgslsmith_mod_i32(var_1.e, 24972i))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.c, var_1.e, -1i, var_1.c), vec4<i32>(-13144i, var_2.a, var_1.c, 2147483647i) << (vec4<u32>(35219u, var_1.a.x, 1u, 45788u) % vec4<u32>(32u))), -(~vec4<i32>(var_1.c, var_2.a, var_1.e, var_1.e))), var_2.a));
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1608f, var_1.b.c, var_0.x, -248f), vec4<f32>(var_1.b.c, -1328f, -1725f, var_0.x)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.b.c, -113f, -1000f) * vec4<f32>(var_0.x, var_1.b.c, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.x, -818f, -563f, var_1.b.c), vec4<f32>(1942f, var_1.d.x, var_1.b.c, 1000f), vec4<bool>(true, global0.a, false, true))))))));
    return _wgslsmith_sub_u32(~var_1.b.a, _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.a, var_1.b.a), u_input.a ^ 0u));
}

fn func_2() -> vec4<i32> {
    var var_0 = -1080f;
    var var_1 = -2147483647i;
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-312f, -426f))), -860f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1753f, 963f))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1194f, 864f))))))));
    let var_3 = 1u;
    var var_4 = func_3(vec3<u32>(select(u_input.a, ~0u >> (var_3 % 32u), u_input.b.x <= (u_input.c >> (74604u % 32u))), 4294967295u, 38622u));
    return select(vec4<i32>(1i, u_input.c, _wgslsmith_div_i32(1i, u_input.c), u_input.b.x) | (vec4<i32>(0i, -24948i, u_input.b.x, u_input.b.x) ^ select(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.b.x), vec4<i32>(73551i, -75211i, u_input.b.x, 1i), true)), min(abs(reverseBits(vec4<i32>(77174i, -12823i, u_input.c, -47624i))), select(vec4<i32>(u_input.b.x, 1i, 0i, 1i), vec4<i32>(u_input.c, 0i, u_input.b.x, u_input.c), vec4<bool>(global0.a, global0.a, global0.a, true)) << (abs(vec4<u32>(var_3, var_3, var_3, var_3)) % vec4<u32>(32u))), !select(select(vec4<bool>(false, global0.a, true, global0.a), vec4<bool>(global0.a, global0.a, false, global0.a), global0.a), select(vec4<bool>(global0.a, global0.a, global0.a, global0.a), vec4<bool>(global0.a, global0.a, true, false), global0.a), true)) << (countOneBits(firstLeadingBit(~_wgslsmith_add_vec4_u32(vec4<u32>(var_3, var_3, 15173u, var_3), vec4<u32>(var_3, 3921u, 0u, 4294967295u)))) % vec4<u32>(32u));
}

fn func_1(arg_0: Struct_1) -> i32 {
    let var_0 = abs(countOneBits(vec4<i32>(52606i | u_input.c, -2147483647i, 0i, 5296i)) & func_2());
    global0 = Struct_4(any(vec2<bool>(true != arg_0.b.x, true)));
    return ~firstTrailingBit(_wgslsmith_dot_vec3_i32(select(vec3<i32>(var_0.x, u_input.b.x, u_input.c), var_0.yzz, true), u_input.b));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_4, arg_2: Struct_3, arg_3: i32) -> Struct_1 {
    global1 = -select(2147483647i, min(arg_0.x, arg_0.x), !(arg_1.a || (u_input.a <= 1u)));
    global2 = array<vec2<u32>, 13>();
    global0 = Struct_4(all(!(!(!vec4<bool>(arg_1.a, global0.a, arg_1.a, arg_1.a)))));
    let var_0 = _wgslsmith_div_f32(216f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1515f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(365f, -1036f) * -497f), _wgslsmith_f_op_f32(max(-1027f, _wgslsmith_f_op_f32(round(680f))))))));
    var var_1 = 53754i;
    return Struct_1(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(max(global2[_wgslsmith_index_u32(~u_input.a, 13u)], global2[_wgslsmith_index_u32(70827u, 13u)] << (global2[_wgslsmith_index_u32(4294967295u, 13u)] % vec2<u32>(32u))), vec2<u32>(~23063u, ~u_input.a)), u_input.a), select(vec3<bool>(global0.a, all(select(vec2<bool>(arg_1.a, arg_1.a), vec2<bool>(false, arg_1.a), vec2<bool>(false, true))), true), select(!select(vec3<bool>(true, true, true), vec3<bool>(global0.a, global0.a, global0.a), arg_1.a), select(vec3<bool>(true, global0.a, global0.a), select(vec3<bool>(true, arg_1.a, true), vec3<bool>(arg_1.a, arg_1.a, arg_1.a), vec3<bool>(global0.a, false, arg_1.a)), arg_1.a), any(!vec3<bool>(true, global0.a, arg_1.a))), select(select(select(vec3<bool>(arg_1.a, false, true), vec3<bool>(false, true, false), vec3<bool>(arg_1.a, true, false)), !vec3<bool>(false, global0.a, true), select(vec3<bool>(true, true, arg_1.a), vec3<bool>(true, false, global0.a), true)), !(!vec3<bool>(false, arg_1.a, global0.a)), vec3<bool>(select(false, arg_1.a, false), all(vec4<bool>(true, arg_1.a, false, false)), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(108f + _wgslsmith_f_op_f32(429f * 1008f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(false, !(true != !global0.a), global0.a, true);
    global2 = array<vec2<u32>, 13>();
    var_0 = !vec4<bool>(var_0.x, true, !var_0.x, true && global0.a);
    let var_1 = func_4(u_input.b | vec3<i32>(1i, _wgslsmith_clamp_i32(u_input.c, u_input.b.x, firstTrailingBit(u_input.c)), func_1(Struct_1(u_input.a, var_0.xzy, -743f)) ^ _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.c, u_input.b.x), vec3<i32>(-1i, -75963i, u_input.c))), Struct_4(((u_input.b.x << (u_input.a % 32u)) << (1u % 32u)) != (u_input.b.x ^ _wgslsmith_add_i32(-1i, u_input.c))), Struct_3(2147483647i), 0i);
    var var_2 = Struct_4(all(vec3<bool>(max(u_input.a, u_input.a) > ~1u, var_0.x, u_input.a <= 45476u)));
    let x = u_input.a;
    s_output = StorageBuffer(select(func_2(), vec4<i32>(~_wgslsmith_sub_i32(u_input.b.x, u_input.c), _wgslsmith_div_i32(1i, ~u_input.b.x), _wgslsmith_mult_i32(u_input.c >> (0u % 32u), ~u_input.c), _wgslsmith_sub_i32(u_input.b.x, 2147483647i) >> (~4294967295u % 32u)), select(vec4<bool>(false, true, true, !var_2.a), vec4<bool>(var_1.b.x && var_2.a, true, false, true), vec4<bool>(true, true, true, true))), ~(var_1.a << (abs(var_1.a) % 32u)), -26513i);
}

