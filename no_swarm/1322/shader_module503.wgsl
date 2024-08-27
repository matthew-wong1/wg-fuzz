struct Struct_1 {
    a: bool,
    b: f32,
    c: f32,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_4,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 1> = array<vec4<bool>, 1>(vec4<bool>(false, true, false, true));

var<private> global1: Struct_5 = Struct_5(Struct_4(i32(-2147483648), vec3<i32>(0i, 14584i, 2715i), Struct_1(false, 3537f, -864f, vec2<bool>(true, true)), false, Struct_2(Struct_1(true, 555f, 503f, vec2<bool>(false, true)), vec3<u32>(1u, 32305u, 103476u), vec4<i32>(6544i, 1i, 19036i, 13415i), -886f, Struct_1(true, 396f, -387f, vec2<bool>(true, false)))), false, 67544u);

var<private> global2: Struct_2 = Struct_2(Struct_1(true, -734f, -324f, vec2<bool>(false, true)), vec3<u32>(0u, 16362u, 16262u), vec4<i32>(36061i, -56435i, -1i, -38286i), -1000f, Struct_1(true, -1798f, -109f, vec2<bool>(true, false)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> vec4<u32> {
    global1 = Struct_5(Struct_4(reverseBits(reverseBits(-5332i << (global2.b.x % 32u))), vec3<i32>(global2.c.x, select(-1i, global2.c.x, false) ^ (u_input.d >> (50372u % 32u)), global2.c.x & 1i), global1.a.c, select(true, _wgslsmith_sub_u32(global2.b.x, 0u) == ~global2.b.x, all(select(vec4<bool>(false, true, global1.a.e.a.a, true), global0[_wgslsmith_index_u32(70984u, 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)]))), Struct_2(Struct_1(!global1.b, _wgslsmith_f_op_f32(exp2(global2.d)), -480f, select(global1.a.c.d, global1.a.c.d, global2.e.a)), _wgslsmith_mult_vec3_u32(min(vec3<u32>(4593u, u_input.c, global2.b.x), global2.b), firstTrailingBit(vec3<u32>(27468u, 94899u, 11237u))), _wgslsmith_add_vec4_i32(vec4<i32>(global2.c.x, global2.c.x, -11025i, global2.c.x), abs(vec4<i32>(18412i, global2.c.x, -26976i, global1.a.b.x))), -1000f, Struct_1(any(vec3<bool>(false, false, global2.e.a)), global2.e.b, _wgslsmith_f_op_f32(-global1.a.c.b), select(vec2<bool>(global2.a.d.x, true), vec2<bool>(global1.b, true), global1.a.e.e.d.x)))), true, firstLeadingBit(u_input.e.x));
    global1 = Struct_5(global1.a, global2.e.a, max(countOneBits(~(~u_input.c)), reverseBits(global1.c ^ global2.b.x)));
    global2 = Struct_2(global2.a, _wgslsmith_mod_vec3_u32(u_input.e.wwz, ~_wgslsmith_div_vec3_u32(~global2.b, select(global1.a.e.b, vec3<u32>(global1.c, global1.a.e.b.x, global1.c), false))), _wgslsmith_div_vec4_i32(firstLeadingBit(global1.a.e.c), _wgslsmith_div_vec4_i32(reverseBits(global1.a.e.c << (vec4<u32>(global2.b.x, 18192u, 70262u, 0u) % vec4<u32>(32u))), reverseBits(global1.a.e.c))), -1000f, Struct_1(global1.b, global1.a.c.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.e.a.b + _wgslsmith_f_op_f32(734f + 761f))), vec2<bool>(true, false)));
    let var_0 = Struct_4(-u_input.b.x & _wgslsmith_clamp_i32(firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(-vec3<i32>(-1i, u_input.b.x, u_input.b.x), global2.c.wxx | vec3<i32>(global2.c.x, 0i, global1.a.a)), global2.c.x), global2.c.zyw, Struct_1(all(select(!vec3<bool>(false, global2.a.d.x, global2.e.d.x), !vec3<bool>(global1.a.c.d.x, true, global1.a.e.a.d.x), select(vec3<bool>(true, true, true), vec3<bool>(global1.a.e.a.a, true, global2.e.a), vec3<bool>(false, false, global2.a.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.e.e.b + _wgslsmith_f_op_f32(min(global1.a.e.e.c, global2.d)))), 1401f, select(!vec2<bool>(false, global1.a.c.d.x), select(!global2.e.d, vec2<bool>(false, global1.b), global2.a.d), false)), false, Struct_2(Struct_1(all(select(global0[_wgslsmith_index_u32(4294967295u, 1u)], vec4<bool>(true, true, global1.a.e.a.a, false), global2.a.d.x)), -715f, -1159f, select(vec2<bool>(true, true), global2.a.d, !global2.e.d)), global2.b, vec4<i32>(_wgslsmith_clamp_i32(-global2.c.x, _wgslsmith_dot_vec2_i32(u_input.b, u_input.b), firstLeadingBit(global1.a.b.x)), 2147483647i, global2.c.x, abs(-u_input.b.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global2.d))))), Struct_1(true, -529f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-327f))), vec2<bool>(!global1.b, global2.a.a))));
    let var_1 = global1.a;
    return firstLeadingBit(u_input.e);
}

fn func_2() -> f32 {
    let var_0 = global1.a;
    var var_1 = false;
    let var_2 = ~(~func_3());
    global1 = Struct_5(Struct_4(select(var_0.e.c.x, global2.c.x, !(var_0.e.c.x < var_0.b.x)), vec3<i32>(-_wgslsmith_div_i32(var_0.b.x, global2.c.x), var_0.e.c.x, 1i), Struct_1(select(false, global1.b, global1.a.c.a) && all(vec4<bool>(global2.a.d.x, true, false, false)), global1.a.e.d, _wgslsmith_f_op_f32(global1.a.e.e.b - _wgslsmith_f_op_f32(abs(global2.a.c))), select(vec2<bool>(global2.e.d.x, true), select(global1.a.e.e.d, var_0.c.d, false), true)), true, Struct_2(var_0.c, var_0.e.b, -abs(vec4<i32>(0i, u_input.a, global1.a.b.x, 15956i)), 134f, Struct_1(true, global1.a.e.e.c, _wgslsmith_f_op_f32(-var_0.c.c), select(vec2<bool>(false, global2.e.d.x), global1.a.e.e.d, false)))), all(!(!(!vec2<bool>(var_0.c.d.x, true)))), 106822u);
    var var_3 = Struct_3(select(func_3().x, _wgslsmith_dot_vec3_u32(max(~var_2.yxx, global1.a.e.b), min(vec3<u32>(global1.c, var_2.x, 0u), vec3<u32>(var_2.x, var_2.x, var_0.e.b.x) >> (vec3<u32>(global1.a.e.b.x, global2.b.x, global2.b.x) % vec3<u32>(32u)))), false));
    return 467f;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = vec2<f32>(-1904f, _wgslsmith_f_op_f32(func_2()));
    let var_1 = global1.a.a;
    let var_2 = var_0.x;
    var var_3 = global1.a.e;
    var_3 = Struct_2(Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(800f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.e.e.b - var_2) * _wgslsmith_f_op_f32(min(var_0.x, 1274f))) + _wgslsmith_div_f32(-994f, _wgslsmith_f_op_f32(-global2.d))), var_3.e.d), vec3<u32>(firstTrailingBit(~var_3.b.x), reverseBits(min(_wgslsmith_clamp_u32(1u, 4294967295u, global1.c), ~4294967295u)), 1u), -(~var_3.c ^ _wgslsmith_add_vec4_i32(global1.a.e.c, var_3.c)) & ~((global2.c >> (vec4<u32>(4294967295u, global1.a.e.b.x, var_3.b.x, 44710u) % vec4<u32>(32u))) ^ _wgslsmith_mult_vec4_i32(global2.c, vec4<i32>(global1.a.b.x, -41296i, 2147483647i, -1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0))), global1.a.e.e);
    return var_3.e;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> StorageBuffer {
    global0 = array<vec4<bool>, 1>();
    let var_0 = _wgslsmith_add_vec2_i32(vec2<i32>(0i, 32572i), abs(-(global1.a.b.xz | vec2<i32>(global1.a.a, global1.a.b.x)) << (_wgslsmith_add_vec2_u32(~vec2<u32>(61755u, 8531u), vec2<u32>(global1.a.e.b.x, 76036u) << (vec2<u32>(global2.b.x, 77463u) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global0 = array<vec4<bool>, 1>();
    global0 = array<vec4<bool>, 1>();
    global0 = array<vec4<bool>, 1>();
    return StorageBuffer(~_wgslsmith_div_vec4_i32(~abs(vec4<i32>(-2147483647i, 4101i, global1.a.e.c.x, global2.c.x)), global2.c), ~global1.a.e.b.xz);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 1>();
    var var_0 = ~_wgslsmith_mod_vec3_u32(countOneBits(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1265u, global2.b.x, global1.a.e.b.x), global1.a.e.b, global1.a.e.b)), ~(~firstTrailingBit(vec3<u32>(1u, 49525u, 1u))));
    let var_1 = abs(60042u);
    global0 = array<vec4<bool>, 1>();
    let x = u_input.a;
    s_output = func_4(func_1(639f, vec3<bool>(!global1.a.c.d.x, !(!global1.b), true)), func_1(global2.a.b, !(!(!vec3<bool>(global2.e.d.x, global2.e.d.x, true)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1301f * global1.a.c.b), -285f)));
}

