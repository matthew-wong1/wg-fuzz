struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<u32>,
    c: i32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 5> = array<Struct_5, 5>(Struct_5(vec2<i32>(-14923i, 0i), vec2<f32>(-1268f, -2135f), vec4<bool>(false, true, true, true)), Struct_5(vec2<i32>(2147483647i, 1i), vec2<f32>(427f, 353f), vec4<bool>(true, false, false, true)), Struct_5(vec2<i32>(25671i, i32(-2147483648)), vec2<f32>(-1000f, -209f), vec4<bool>(false, true, false, false)), Struct_5(vec2<i32>(-1241i, -21648i), vec2<f32>(-1677f, 370f), vec4<bool>(false, true, false, true)), Struct_5(vec2<i32>(-43453i, 18258i), vec2<f32>(682f, -419f), vec4<bool>(true, true, true, true)));

var<private> global1: i32 = -1i;

var<private> global2: array<vec4<f32>, 29> = array<vec4<f32>, 29>(vec4<f32>(-828f, -413f, 795f, -937f), vec4<f32>(-686f, -575f, -1744f, -1492f), vec4<f32>(1262f, -649f, 577f, -920f), vec4<f32>(-1566f, -1071f, 1058f, 823f), vec4<f32>(1464f, 837f, -2167f, -1324f), vec4<f32>(-1237f, -578f, 907f, -735f), vec4<f32>(1063f, 956f, 492f, 385f), vec4<f32>(524f, 588f, 1000f, -643f), vec4<f32>(249f, -1000f, 1168f, 1028f), vec4<f32>(329f, -2339f, 1424f, -2189f), vec4<f32>(855f, 1197f, -654f, -1234f), vec4<f32>(277f, -583f, 254f, -183f), vec4<f32>(204f, 759f, 274f, 2162f), vec4<f32>(803f, 1492f, -249f, -362f), vec4<f32>(1170f, 1451f, -1491f, 1511f), vec4<f32>(-370f, 112f, -365f, -904f), vec4<f32>(2075f, -821f, 843f, 167f), vec4<f32>(1454f, 660f, -1089f, 1296f), vec4<f32>(942f, -441f, 335f, 1305f), vec4<f32>(1282f, 1000f, 344f, 1163f), vec4<f32>(-1322f, 1920f, -1616f, 893f), vec4<f32>(-1000f, -267f, -895f, 388f), vec4<f32>(296f, -1000f, 2338f, -454f), vec4<f32>(-570f, -468f, 1642f, 1053f), vec4<f32>(567f, -612f, -487f, 1369f), vec4<f32>(424f, 1956f, -1000f, 615f), vec4<f32>(-454f, 538f, -1531f, -681f), vec4<f32>(277f, 314f, 151f, -406f), vec4<f32>(1000f, 747f, 2310f, 238f));

var<private> global3: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(70794u), Struct_1(0u), Struct_1(1u), Struct_1(1u), Struct_1(40172u), Struct_1(1568u), Struct_1(20706u), Struct_1(1u), Struct_1(1u), Struct_1(4294967295u), Struct_1(16479u), Struct_1(0u), Struct_1(64721u), Struct_1(1u), Struct_1(168825u), Struct_1(4294967295u), Struct_1(0u), Struct_1(4294967295u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    global3 = array<Struct_1, 18>();
    let var_0 = 47824u;
    let var_1 = Struct_2(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1526f + 2204f)));
    global1 = u_input.d.x;
    let var_2 = _wgslsmith_add_vec4_i32(abs(_wgslsmith_sub_vec4_i32(max(vec4<i32>(47168i, u_input.d.x, -1i, 2147483647i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -2147483647i)), vec4<i32>(u_input.b.x, 1203i, u_input.b.x, -90857i) >> (vec4<u32>(var_0, arg_0.a, 15226u, var_1.a.a) % vec4<u32>(32u)))) & abs(vec4<i32>(1i >> (1u % 32u), u_input.b.x, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), select(u_input.d.x, 2147483647i, arg_1))), vec4<i32>(u_input.b.x, 2147483647i, u_input.d.x, ~(u_input.d.x | ~u_input.d.x)));
    return vec2<bool>(arg_1, false);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<f32>) -> f32 {
    var var_0 = ~2147483647i << (~u_input.c.x % 32u);
    let var_1 = Struct_4(Struct_3(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.b.x), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, arg_0.x, -1i), u_input.d)) | arg_0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1000f), 2220f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, arg_1.x)))), func_3(Struct_1(u_input.a), true)), vec4<u32>(~(~1u) | ~(1u << (u_input.c.x % 32u)), u_input.c.x, u_input.c.x, ~firstTrailingBit(firstTrailingBit(619u))), 1i);
    var_0 = firstLeadingBit(u_input.d.x);
    var var_2 = _wgslsmith_sub_vec4_u32(var_1.b, ~(~var_1.b));
    let var_3 = var_1.b.wx;
    return var_1.a.b.x;
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> Struct_4 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~firstLeadingBit(u_input.a), 20175u), 5u)];
    global3 = array<Struct_1, 18>();
    var var_1 = _wgslsmith_f_op_f32(func_2(vec2<i32>(-1i, firstTrailingBit(~(~15071i))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -966f), -251f, var_0.b.x, _wgslsmith_f_op_f32(abs(var_0.b.x)))));
    var var_2 = _wgslsmith_add_vec2_i32(var_0.a, min(_wgslsmith_sub_vec2_i32(var_0.a, vec2<i32>(~var_0.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, 24600i, 0i, 1i), vec4<i32>(-4833i, u_input.d.x, -31947i, 20983i)))), ~abs(vec2<i32>(u_input.d.x, u_input.b.x)) ^ var_0.a));
    var var_3 = -2426f;
    return Struct_4(Struct_3(var_2.x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.b.x, var_0.b.x) * _wgslsmith_f_op_f32(-1862f - var_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(134f, -1117f))), _wgslsmith_f_op_f32(1062f - var_0.b.x)), !var_0.c.xw), (_wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a, arg_1.a, 19114u, arg_1.a), vec4<u32>(arg_1.a, u_input.a, u_input.a, 0u), vec4<u32>(4294967295u, u_input.c.x, 26773u, arg_1.a)), ~vec4<u32>(arg_1.a, 93611u, arg_1.a, 1u)) >> (vec4<u32>(3593u, 100907u, 31889u, ~4294967295u) % vec4<u32>(32u))) >> (~(~vec4<u32>(u_input.c.x, 5048u, arg_1.a, 59027u)) % vec4<u32>(32u)), 16964i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(1i, ~_wgslsmith_dot_vec2_i32(u_input.d.yx, select(-vec2<i32>(u_input.b.x, -1i), u_input.d.xx, vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1151f, -2393f, -364f), vec3<f32>(344f, 816f, -479f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(164f, -119f, 376f), vec3<f32>(-1539f, -1000f, -643f))))))), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(-806f, -415f)))), 953f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-433f)))), vec3<f32>(1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1011f)))), 902f))), !vec3<bool>(!any(vec4<bool>(false, true, true, false)), false, any(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true))))));
    var var_2 = func_1(any(!(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)))), global3[_wgslsmith_index_u32(u_input.c.x, 18u)]);
    var var_3 = _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~u_input.a, max(u_input.a, ~1u)), u_input.c);
    global0 = array<Struct_5, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1377f, -709f, var_2.a.c.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_2.a.b.x), _wgslsmith_f_op_f32(var_2.a.b.x * 1f), true)))));
}

