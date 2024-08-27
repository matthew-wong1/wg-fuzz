struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec4<i32>(17932i, 3729i, -12304i, -24355i), vec4<bool>(false, true, true, false), false);

var<private> global1: array<bool, 7> = array<bool, 7>(true, true, true, false, true, true, true);

var<private> global2: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec4<i32>(21494i, i32(-2147483648), i32(-2147483648), -1i), vec4<bool>(false, true, true, false), true), Struct_3(vec4<i32>(0i, 44892i, i32(-2147483648), 0i), vec4<bool>(false, true, false, false), false), Struct_3(vec4<i32>(0i, -1i, i32(-2147483648), 41375i), vec4<bool>(false, true, true, false), false), Struct_3(vec4<i32>(8934i, 78813i, -1i, -59529i), vec4<bool>(false, false, false, true), false), Struct_3(vec4<i32>(-45104i, -1i, 2147483647i, 11008i), vec4<bool>(true, false, false, true), true));

var<private> global3: f32;

var<private> global4: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(-18968i, 1i, i32(-2147483648), 2147483647i), vec4<i32>(-13709i, i32(-2147483648), i32(-2147483648), i32(-2147483648)), vec4<i32>(11401i, i32(-2147483648), 1i, -55951i), vec4<i32>(-6935i, 0i, 39918i, 25922i), vec4<i32>(-1i, 13192i, -5463i, i32(-2147483648)), vec4<i32>(-1i, -2767i, -1i, 2610i), vec4<i32>(0i, -20299i, -47548i, 2147483647i), vec4<i32>(2147483647i, -21540i, i32(-2147483648), 1i), vec4<i32>(-50786i, -39862i, i32(-2147483648), -1i), vec4<i32>(-57287i, i32(-2147483648), 2147483647i, 20878i), vec4<i32>(-4214i, i32(-2147483648), 46124i, -1i), vec4<i32>(56056i, 561i, 0i, 0i), vec4<i32>(2147483647i, -7960i, -42668i, 1i), vec4<i32>(2147483647i, -36073i, -17419i, -32599i), vec4<i32>(2147483647i, 44838i, 2147483647i, -51763i), vec4<i32>(i32(-2147483648), -20590i, 19412i, 1i), vec4<i32>(21722i, 35261i, 2147483647i, i32(-2147483648)), vec4<i32>(3704i, i32(-2147483648), 0i, -41220i), vec4<i32>(0i, 0i, -1i, -28030i), vec4<i32>(2147483647i, 0i, 2147483647i, -1i), vec4<i32>(-18876i, -51869i, 0i, -49745i), vec4<i32>(1i, -1i, 2147483647i, 78766i), vec4<i32>(-8171i, 2147483647i, -57526i, 30200i), vec4<i32>(8609i, 8289i, 8968i, -1i), vec4<i32>(2147483647i, 1i, 50529i, 3117i), vec4<i32>(-1i, 1i, i32(-2147483648), 60264i), vec4<i32>(1i, -1i, 9432i, 44982i), vec4<i32>(-1i, 82842i, 2147483647i, 39887i));

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> bool {
    global2 = array<Struct_3, 5>();
    global0 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.d, 26680u) << (u_input.d % 32u), 5u)];
    var var_0 = Struct_3(vec4<i32>(-(~(-15570i)), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b, max(global0.a.xwy, vec3<i32>(-32000i, u_input.a, u_input.b.x))), global0.a.xyy), -9918i, -1i), !global0.b, global0.b.x);
    global2 = array<Struct_3, 5>();
    global4 = array<vec4<i32>, 28>();
    return true;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(Struct_1(!func_3(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2026f * 1049f), _wgslsmith_f_op_f32(348f * 271f), _wgslsmith_f_op_f32(515f - 127f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) - vec3<f32>(_wgslsmith_f_op_f32(max(-676f, -1177f)), 1000f, -574f)), reverseBits(firstLeadingBit(vec2<u32>(u_input.d, u_input.c.x)))), Struct_3(_wgslsmith_mod_vec4_i32(~reverseBits(vec4<i32>(2147483647i, u_input.b.x, 6835i, -2147483647i)), vec4<i32>(u_input.b.x, ~u_input.b.x, u_input.a & -77504i, min(global0.a.x, u_input.a))), !select(global0.b, global0.b, true), global1[_wgslsmith_index_u32(~0u, 7u)]));
    global2 = array<Struct_3, 5>();
    var_0 = Struct_4(var_0.a, Struct_3(-vec4<i32>(var_0.b.a.x, _wgslsmith_sub_i32(u_input.a, 1i), 1i, ~global0.a.x), vec4<bool>(all(var_0.b.b.ywy), global0.b.x, var_0.a.a & any(vec2<bool>(false, false)), !global1[_wgslsmith_index_u32(var_0.a.d.x, 7u)]), true));
    global1 = array<bool, 7>();
    return var_0.a;
}

fn func_1() -> Struct_1 {
    global2 = array<Struct_3, 5>();
    let var_0 = false == global0.c;
    global4 = array<vec4<i32>, 28>();
    return func_2();
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<u32>) -> Struct_3 {
    global2 = array<Struct_3, 5>();
    let var_0 = reverseBits(-(~(abs(global0.a.yw) | vec2<i32>(u_input.a, 0i))));
    let var_1 = _wgslsmith_div_i32(_wgslsmith_add_i32(~global0.a.x & _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.x, u_input.b.x, -1i), vec3<i32>(-2147483647i, global0.a.x, -1i), vec3<i32>(var_0.x, global0.a.x, 22571i)), global0.a.wyx), u_input.b.x), 20109i);
    let var_2 = firstLeadingBit(~(~(~global0.a)));
    let var_3 = arg_1.c.x;
    return Struct_3(select(abs(global0.a), global0.a, true && arg_1.a), !select(!global0.b, global0.b, global0.b), false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(vec4<i32>(-1i) * -countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b.x, 0i, global0.a.x, global0.a.x), vec4<i32>(global0.a.x, global0.a.x, u_input.a, 4436i))), global0.b, abs(u_input.b.x) <= (-_wgslsmith_div_i32(global0.a.x, global0.a.x) >> (80448u % 32u)));
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1199f + _wgslsmith_f_op_f32(2138f - -620f))))));
    let var_1 = vec3<i32>(-51477i, ~(-26996i), 7328i);
    let var_2 = u_input.c.xww;
    global0 = func_4(u_input.c | vec4<u32>(~1u, _wgslsmith_clamp_u32(~1578u, var_2.x, abs(706u)), ~var_2.x, _wgslsmith_dot_vec2_u32(~vec2<u32>(var_2.x, 30980u), vec2<u32>(var_2.x, 23156u))), func_1(), _wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_add_u32(var_2.x, _wgslsmith_sub_u32(4294967295u, var_2.x)), max(u_input.c.x, 129410u), var_2.x, 16698u), u_input.c >> (vec4<u32>(~u_input.d, 4294967295u, ~100452u, reverseBits(0u)) % vec4<u32>(32u))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(146f - 120f))), _wgslsmith_f_op_f32(-func_1().c.x)) + vec2<f32>(func_1().b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-852f * 1267f), _wgslsmith_f_op_f32(floor(-1644f)))))));
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.x, 1872f, 123f)) * vec3<f32>(-164f, -920f, 440f)))), global0.b, false, var_2.x);
    global4 = array<vec4<i32>, 28>();
    let var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_2.x, var_4.d), u_input.c.xwz), select(var_2, ~vec3<u32>(158774u, 0u, u_input.c.x), !vec3<bool>(true, var_5.b.x, true)))), global0.a.wy, vec3<u32>(1u, func_1().d.x, var_2.x));
}

