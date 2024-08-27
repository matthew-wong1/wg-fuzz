struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: i32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: f32,
}

struct Struct_5 {
    a: vec2<f32>,
    b: i32,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_1, 19>;

var<private> global2: Struct_5 = Struct_5(vec2<f32>(427f, -420f), -11979i, vec2<f32>(1304f, 534f), Struct_2(Struct_1(false), Struct_1(false), Struct_1(true), -7530i, 2147483647i));

var<private> global3: vec3<i32> = vec3<i32>(2147483647i, -7791i, -16436i);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    global3 = vec3<i32>(global3.x, max(~select(0i, abs(36938i), true), _wgslsmith_div_i32(34461i, firstLeadingBit(-35772i & global0.a.c.d))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global3.xx, global3.zx), global3.xy));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)));
    global1 = array<Struct_1, 19>();
    let var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global2.a.x + var_0)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(636f)))), max(global3.x ^ global2.b, ~global0.a.c.d << (16032u % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(790f, 2265f), _wgslsmith_f_op_f32(max(global2.c.x, -875f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global2.a * vec2<f32>(-969f, -891f)) - _wgslsmith_f_op_vec2_f32(-global2.c)))), global0.a.c);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1554f + var_1.c.x), -1448f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global2.c)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, global2.c.x)) - _wgslsmith_f_op_vec2_f32(step(var_1.a, vec2<f32>(global0.c, var_0)))))) + vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.c.x + -1320f))), -1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-227f - global2.c.x)))));
    return vec2<f32>(global0.c, -285f);
}

fn func_2(arg_0: f32) -> Struct_3 {
    var var_0 = vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(select(-12889i, 1i, !global2.d.b.a)), -(_wgslsmith_div_i32(global2.d.d, global3.x) ^ -global2.d.d)), _wgslsmith_add_i32(_wgslsmith_mod_i32(0i, -_wgslsmith_sub_i32(global3.x, global2.b)), 2147483647i), ~global2.b, -2147483647i);
    var var_1 = global2.d.a.a;
    var var_2 = Struct_4(global0.a, Struct_1(all(!global0.a.a)), -200f);
    var_1 = (-888i ^ firstTrailingBit(global2.d.e)) >= var_2.a.c.e;
    var var_3 = Struct_5(vec2<f32>(514f, -1118f), 57191i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3()))) - vec2<f32>(_wgslsmith_div_f32(-325f, var_2.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-241f))))), var_2.a.c);
    return global0.a;
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(max(global0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1129f + -988f))) * _wgslsmith_f_op_f32(floor(global0.c))))));
    let var_1 = _wgslsmith_mult_vec3_i32(vec3<i32>(~(firstTrailingBit(21390i) << (0u % 32u)), -arg_0.d, min(~(-1i), abs(firstLeadingBit(global3.x)))), ~reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.c.e, 1i, arg_0.d) | vec3<i32>(-11514i, 6010i, arg_0.d), -vec3<i32>(1i, global2.b, arg_0.d))));
    let var_2 = true;
    var var_3 = 53668u;
    global2 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(min(2021f, -858f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1335f)))), -1i, _wgslsmith_div_vec2_f32(global2.c, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -973f), global2.a.x)), Struct_2(global1[_wgslsmith_index_u32(~(~_wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a)), 19u)], global0.b, global0.a.b, reverseBits(var_0.c.e), arg_0.d));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.a.x))), false)));
}

fn func_4(arg_0: f32, arg_1: vec2<f32>, arg_2: f32, arg_3: Struct_1) -> Struct_4 {
    global1 = array<Struct_1, 19>();
    return Struct_4(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - -1000f))), Struct_1(global0.a.c.c.a), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1f))))));
}

fn func_5(arg_0: Struct_4) -> vec3<bool> {
    let var_0 = vec2<bool>(!arg_0.a.b.a, (-1i >> (u_input.a % 32u)) < arg_0.a.c.e);
    let var_1 = -1307f;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(-1766f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(global0.c, -1214f)), -387f)))))));
    global3 = vec3<i32>(global0.a.c.d, abs(global3.x), (~global2.d.e ^ arg_0.a.c.d) ^ -global2.d.e);
    global3 = select(~countOneBits(_wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.c.e, -1i, 1i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(arg_0.a.c.d, global0.a.c.e, global3.x), vec3<i32>(global2.d.d, global3.x, global2.b)))), -min(vec3<i32>(0i, global2.d.e, global3.x), _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.c.d, 3396i, -5914i), vec3<i32>(-4772i, global3.x, arg_0.a.c.d))) ^ select(max(vec3<i32>(-42551i, global2.d.d, global3.x), _wgslsmith_mod_vec3_i32(vec3<i32>(global2.b, -2147483647i, -1i), vec3<i32>(1i, 80960i, global3.x))), select(-vec3<i32>(4682i, global0.a.c.e, global2.d.e), -vec3<i32>(global0.a.c.e, 2147483647i, global0.a.c.d), arg_0.a.a), vec3<bool>(false, global2.d.c.a, true)), global0.a.a);
    return vec3<bool>(any(vec4<bool>(all(select(arg_0.a.a, vec3<bool>(arg_0.b.a, global0.a.a.x, true), arg_0.a.a)), true, global0.a.c.b.a, var_0.x)), var_0.x && false, (~abs(u_input.a) >> (u_input.a % 32u)) != 55640u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = global2.d;
    global3 = vec3<i32>(-(~_wgslsmith_dot_vec3_i32(max(vec3<i32>(var_1.e, -6289i, var_1.e), vec3<i32>(0i, -36388i, global2.d.e)), vec3<i32>(global3.x, -52i, var_1.e))), _wgslsmith_mult_i32(~global2.d.e, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.x, global0.a.c.d, -2147483647i) & ~vec3<i32>(global0.a.c.d, 1i, var_1.e), firstTrailingBit(vec3<i32>(0i, 2147483647i, 1i)) | (vec3<i32>(global3.x, global2.d.d, -18844i) ^ vec3<i32>(-2147483647i, -2147483647i, var_1.e)))), 2147483647i);
    var var_2 = abs(-vec3<i32>(reverseBits(global3.x) >> ((26622u << (0u % 32u)) % 32u), global2.d.e, var_1.d));
    let var_3 = select(select(func_5(func_4(_wgslsmith_f_op_f32(func_1(global0.a.c)), vec2<f32>(438f, global2.a.x), _wgslsmith_f_op_f32(floor(685f)), func_2(global0.c).c.c)), vec3<bool>(_wgslsmith_f_op_f32(-global2.c.x) <= _wgslsmith_div_f32(global0.c, global0.c), false, all(!vec4<bool>(var_1.b.a, false, var_1.c.a, true))), var_1.c.a), select(vec3<bool>(global2.d.c.a, _wgslsmith_div_f32(global0.c, global2.c.x) <= 1507f, !func_4(1000f, global2.a, global0.c, Struct_1(var_1.b.a)).b.a), !select(select(global0.a.a, global0.a.a, global0.a.c.c.a), global0.a.a, global0.a.a), vec3<bool>(true, true, func_4(-1071f, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1159f, 2252f))), _wgslsmith_f_op_f32(1268f - global0.c), Struct_1(true)).b.a)), false);
    global1 = array<Struct_1, 19>();
    let var_4 = !(true && (~(-global0.a.c.d) != (i32(-1i) * -1i)));
    let var_5 = vec2<i32>(42375i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-1i, global2.d.e, global0.a.c.e, -2147483647i) << (vec4<u32>(var_0, u_input.a, var_0, u_input.a) % vec4<u32>(32u))), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global2.d.e, var_2.x, 1i, global2.b), vec4<i32>(global2.b, 0i, global3.x, global2.d.e)), ~var_2.x, global0.a.c.d, ~1i))) ^ global3.yx;
    let x = u_input.a;
    s_output = StorageBuffer(abs(57387u), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, var_0), vec2<u32>(~4294967295u, u_input.a)) & vec2<u32>(_wgslsmith_mult_u32(var_0, select(var_0, u_input.a, true)), 4294967295u));
}

