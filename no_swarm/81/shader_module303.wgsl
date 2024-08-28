struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(-1i), Struct_1(1i), Struct_1(-75146i), Struct_1(-38600i), Struct_1(-1491i), Struct_1(0i), Struct_1(25278i), Struct_1(33454i));

var<private> global1: array<vec4<bool>, 16> = array<vec4<bool>, 16>(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false));

var<private> global2: array<bool, 19> = array<bool, 19>(false, true, true, false, true, false, true, false, false, true, false, false, false, false, true, true, true, false, false);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> vec4<i32> {
    global0 = array<Struct_1, 8>();
    global2 = array<bool, 19>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(max(-248f, _wgslsmith_f_op_f32(step(616f, -864f)))), -374f, _wgslsmith_f_op_f32(458f * _wgslsmith_f_op_f32(abs(-539f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-360f))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(871f, -213f, -1290f, -156f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1608f, 349f, 756f, -706f))))));
    let var_2 = vec4<i32>(arg_0.x, 1996i, -3089i, arg_0.x);
    return vec4<i32>(2147483647i, arg_0.x, 0i, -select(arg_0.x, 19595i, true));
}

fn func_2(arg_0: f32, arg_1: i32) -> Struct_3 {
    global2 = array<bool, 19>();
    var var_0 = Struct_4(Struct_2(arg_0, -func_3(min(vec2<i32>(-65152i, arg_1), vec2<i32>(arg_1, 1i)))), select(select(vec4<bool>(false, !global2[_wgslsmith_index_u32(328u, 19u)], false, any(vec3<bool>(true, true, true))), global1[_wgslsmith_index_u32(u_input.a.x, 16u)], global1[_wgslsmith_index_u32(u_input.a.x, 16u)]), select(select(select(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], vec4<bool>(true, false, global2[_wgslsmith_index_u32(66019u, 19u)], false), vec4<bool>(false, true, false, global2[_wgslsmith_index_u32(u_input.a.x, 19u)])), select(global1[_wgslsmith_index_u32(u_input.a.x, 16u)], vec4<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 19u)], false, global2[_wgslsmith_index_u32(u_input.a.x, 19u)]), global2[_wgslsmith_index_u32(u_input.a.x, 19u)]), global1[_wgslsmith_index_u32(1u, 16u)]), global1[_wgslsmith_index_u32(reverseBits(u_input.a.x & 4294967295u), 16u)], vec4<bool>(global2[_wgslsmith_index_u32(abs(u_input.a.x), 19u)], all(global1[_wgslsmith_index_u32(1u, 16u)]), true, global2[_wgslsmith_index_u32(~u_input.a.x, 19u)])), global2[_wgslsmith_index_u32(u_input.a.x, 19u)]), ~(~select(vec3<u32>(38444u, u_input.a.x, u_input.a.x), u_input.a.zxy, select(false, global2[_wgslsmith_index_u32(0u, 19u)], false))), _wgslsmith_mult_u32(reverseBits(_wgslsmith_mult_u32(u_input.a.x, 53659u)), ~_wgslsmith_mod_u32(54386u, u_input.a.x)) != ~u_input.a.x);
    var var_1 = !var_0.b.zz;
    var var_2 = false;
    global2 = array<bool, 19>();
    return Struct_3(var_0.d, var_0.a);
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: i32) -> Struct_2 {
    global1 = array<vec4<bool>, 16>();
    let var_0 = arg_1.b;
    global1 = array<vec4<bool>, 16>();
    var var_1 = arg_1.b;
    let var_2 = Struct_2(687f, _wgslsmith_div_vec4_i32(var_1.b, firstTrailingBit(var_0.b)) >> ((vec4<u32>(0u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x), 23718u, ~4294967295u) & _wgslsmith_add_vec4_u32(min(u_input.a, vec4<u32>(56363u, 4294967295u, u_input.a.x, u_input.a.x)), abs(u_input.a))) % vec4<u32>(32u)));
    return var_2;
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(abs(~_wgslsmith_mult_u32(max(4294967295u, 19179u), ~u_input.a.x)), 8u)];
    var var_1 = 758f;
    let var_2 = arg_0.b.b.x;
    var var_3 = !vec4<bool>(global2[_wgslsmith_index_u32(~u_input.a.x, 19u)], false, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(_wgslsmith_dot_vec3_u32(u_input.a.yyx, vec3<u32>(0u, 1u, 63249u))), u_input.a.x), 19u)], -10345i >= var_2);
    var var_4 = u_input.a.x;
    return Struct_4(arg_0.b, select(global1[_wgslsmith_index_u32(abs(firstLeadingBit(u_input.a.x)), 16u)], vec4<bool>(true, var_3.x, var_3.x, true), global1[_wgslsmith_index_u32(~countOneBits(u_input.a.x), 16u)]), u_input.a.zyx, false);
}

fn func_1(arg_0: u32) -> Struct_4 {
    global0 = array<Struct_1, 8>();
    global2 = array<bool, 19>();
    var var_0 = u_input.a;
    var var_1 = func_5(Struct_3(true, func_4(-612f, func_2(-223f, 2147483647i), -1i)), _wgslsmith_clamp_i32(1i, _wgslsmith_mult_i32(-_wgslsmith_clamp_i32(62718i, -1i, -18232i), ~abs(34336i)), -6931i), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(59544u, ~4294967295u, ~_wgslsmith_mod_u32(~var_0.x, ~17679u)), 8u)], Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(912f, -585f) + -525f)), min(abs(~vec4<i32>(-1i, 0i, -18714i, -1i)), func_4(417f, Struct_3(true, Struct_2(-587f, vec4<i32>(-11842i, -1i, 36483i, -9696i))), abs(-2147483647i)).b)));
    var var_2 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-570f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(559f, var_1.a.a))), var_1.a.a), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.a.a, var_1.a.a) + _wgslsmith_f_op_f32(round(var_1.a.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(var_1.a.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-745f, 103f)))))))));
    return func_5(func_2(-414f, _wgslsmith_dot_vec3_i32(abs(~vec3<i32>(var_1.a.b.x, var_1.a.b.x, var_1.a.b.x)), _wgslsmith_mod_vec3_i32(var_1.a.b.wxy, vec3<i32>(-1i, var_1.a.b.x, 27543i)))), _wgslsmith_mult_i32(-firstTrailingBit(var_1.a.b.x), ~_wgslsmith_clamp_i32(var_1.a.b.x, 41302i, 0i) | _wgslsmith_add_i32(var_1.a.b.x, var_1.a.b.x)), global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, var_1.c.x, 0u, 49493u), vec4<u32>(var_1.c.x, var_1.c.x, 1u, var_0.x))) >> (62260u % 32u), 8u)], Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(496f, _wgslsmith_div_f32(590f, var_1.a.a))), ~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(0i, 2147483647i, var_1.a.b.x, -1i)), var_1.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<bool, 19>();
    var var_0 = Struct_1(-13432i);
    global0 = array<Struct_1, 8>();
    global2 = array<bool, 19>();
    var var_1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -1346f), reverseBits(-vec4<i32>(-2147483647i, 2147483647i, 0i, var_0.a) << (abs(vec4<u32>(u_input.a.x, 36699u, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)))), !(!vec4<bool>(true, any(vec3<bool>(false, false, global2[_wgslsmith_index_u32(u_input.a.x, 19u)])), true, true)), u_input.a.zwz, true);
    let var_2 = func_1(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_1.c.x, u_input.a.x), vec3<u32>(var_1.c.x, var_1.c.x, u_input.a.x)), 55855u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.c.x, max(6934u, 35086u)), -_wgslsmith_dot_vec2_i32(var_1.a.b.ww, vec2<i32>(var_2.a.b.x | var_0.a, _wgslsmith_sub_i32(var_2.a.b.x, -3712i))));
}

