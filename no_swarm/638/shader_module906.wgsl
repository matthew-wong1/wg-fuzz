struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: bool,
    d: i32,
    e: u32,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: vec3<i32>,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<i32>(-1i, 1i), -259i), 1063f);

var<private> global1: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(325f, -707f, -659f, 1443f), vec4<f32>(-362f, 303f, 1601f, -1311f), vec4<f32>(-1000f, 407f, 1000f, -1504f), vec4<f32>(-1000f, 1000f, -1224f, -589f), vec4<f32>(-652f, -1459f, -558f, -2304f), vec4<f32>(-922f, -285f, 821f, 1145f), vec4<f32>(2345f, 363f, -531f, -1000f), vec4<f32>(-1000f, 777f, -1000f, -710f), vec4<f32>(-1000f, 222f, -430f, -744f), vec4<f32>(-815f, 532f, -239f, -2069f), vec4<f32>(719f, -1091f, 894f, 456f), vec4<f32>(-110f, -141f, 1248f, 742f), vec4<f32>(-435f, 411f, 274f, 459f), vec4<f32>(626f, -226f, 349f, 192f), vec4<f32>(363f, -357f, 1231f, -2409f), vec4<f32>(402f, -1086f, 1424f, 1053f), vec4<f32>(-1000f, -130f, 1492f, -1071f), vec4<f32>(751f, -517f, 941f, 1312f), vec4<f32>(929f, -921f, 632f, -631f), vec4<f32>(-2317f, -314f, 967f, 565f), vec4<f32>(-1018f, 532f, -643f, 2976f), vec4<f32>(-1832f, -668f, -1012f, -507f), vec4<f32>(-1169f, 987f, -1196f, -142f), vec4<f32>(653f, 1880f, -1000f, -439f), vec4<f32>(-1000f, 1000f, 798f, -1045f), vec4<f32>(-272f, 343f, -157f, 1781f), vec4<f32>(-120f, 1203f, 1533f, 1000f));

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec4<f32>, arg_1: i32) -> f32 {
    let var_0 = arg_0.zzw;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(arg_0, vec4<f32>(-638f, arg_0.x, arg_0.x, 1000f))), vec4<f32>(1000f, var_0.x, 1247f, var_0.x)), _wgslsmith_f_op_vec4_f32(ceil(arg_0)))) - arg_0), Struct_2(global0.a, -566f), global2.x, 41362i, u_input.d);
    var_1 = Struct_3(vec4<f32>(-1856f, 292f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.b.b), _wgslsmith_f_op_f32(108f - 268f)))), var_1.a.x), var_1.b, true, _wgslsmith_clamp_i32(countOneBits(~(-40617i)), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 28298i, 2147483647i, 6343i), _wgslsmith_sub_vec4_i32(vec4<i32>(-1i, u_input.a, var_1.d, global0.a.b), vec4<i32>(global0.a.a.x, 1i, arg_1, -1i))), ~firstLeadingBit(vec4<i32>(-1252i, var_1.b.a.b, arg_1, -40348i))), -u_input.b), ~firstTrailingBit(_wgslsmith_sub_u32(4294967295u, var_1.e)));
    var var_2 = vec4<bool>(false | (all(select(vec4<bool>(var_1.c, global2.x, true, true), vec4<bool>(true, var_1.c, true, var_1.c), var_1.c)) || all(vec3<bool>(var_1.c, true, true))), all(!vec3<bool>(any(vec2<bool>(false, true)), true, any(vec4<bool>(false, global2.x, true, false)))), !all(vec3<bool>(true, var_1.c, var_1.c == var_1.c)), select(!(!(global0.b > var_0.x)), -(~2147483647i) != (_wgslsmith_sub_i32(var_1.d, -2147483647i) >> (~4294967295u % 32u)), false));
    var_2 = select(!select(select(vec4<bool>(global2.x, true, var_1.c, global2.x), select(vec4<bool>(false, true, true, var_1.c), vec4<bool>(var_2.x, true, false, var_1.c), var_2.x), -27972i >= var_1.d), vec4<bool>(true, select(false, global2.x, true), any(var_2.xzy), var_1.c), !any(vec4<bool>(global2.x, true, false, false))), vec4<bool>(!select(!var_2.x, true, any(vec4<bool>(true, true, false, true))), max(_wgslsmith_add_u32(u_input.d, 4294967295u), ~18997u) >= ~1u, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(820f, arg_0.x))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f) * _wgslsmith_f_op_f32(max(var_1.b.b, global0.b))), var_2.x), select(!select(select(vec4<bool>(var_1.c, var_1.c, global2.x, global2.x), vec4<bool>(var_2.x, false, var_2.x, global2.x), vec4<bool>(true, false, true, var_1.c)), vec4<bool>(var_2.x, var_1.c, false, global2.x), false), vec4<bool>(true, (-2147483647i == u_input.e.x) & false, true, !global2.x & var_2.x), !any(!var_2.xw)));
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -690f)) + global0.b)));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: Struct_5, arg_3: vec2<f32>) -> f32 {
    global2 = vec3<bool>(all(global2.xz), global2.x, !any(vec2<bool>(true, true)));
    global1 = array<vec4<f32>, 27>();
    global1 = array<vec4<f32>, 27>();
    var var_0 = max(1u >> ((~arg_0.e | ~arg_0.e) % 32u), 4294967295u) >> (~(~4896u) % 32u);
    let var_1 = Struct_4(29190i << (~_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.d, u_input.d), countOneBits(117035u)) % 32u));
    return arg_1;
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> vec3<bool> {
    global0 = Struct_2(Struct_1(-u_input.e.zz, -abs(0i)), _wgslsmith_f_op_f32(func_4(Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b, arg_0, global0.b, 1074f) + _wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(53043u, 27u)])), Struct_2(global0.a, _wgslsmith_f_op_f32(-global0.b)), all(vec3<bool>(global2.x, false, global2.x)), _wgslsmith_sub_i32(2147483647i, ~(-41728i)), ~_wgslsmith_div_u32(u_input.d, u_input.d)), -808f, Struct_5(_wgslsmith_div_vec3_i32(-u_input.e, -u_input.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) - _wgslsmith_f_op_f32(func_3(global1[_wgslsmith_index_u32(57100u, 27u)], u_input.b)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_0)) + vec2<f32>(-596f, _wgslsmith_f_op_f32(-1000f * arg_0))))));
    var var_0 = Struct_2(global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -423f), _wgslsmith_div_f32(-1526f, -1000f))) * global0.b) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(108f, arg_0, arg_0, global0.b) * vec4<f32>(global0.b, arg_0, arg_0, -2487f)), -global0.a.a.x)) * _wgslsmith_f_op_f32(-global0.b))));
    var var_1 = -(_wgslsmith_div_i32(max(492i, _wgslsmith_mult_i32(u_input.c.x, var_0.a.b)), -reverseBits(var_0.a.a.x)) << (~(~1u) % 32u));
    global0 = Struct_2(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) - _wgslsmith_f_op_f32(f32(-1f) * -217f)))));
    let var_2 = Struct_3(vec4<f32>(746f, 463f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), _wgslsmith_f_op_f32(-722f + var_0.b)), Struct_2(Struct_1(vec2<i32>(var_0.a.b, i32(-1i) * -37156i), ~1i | reverseBits(var_0.a.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -423f)), _wgslsmith_clamp_u32(abs(~40980u), ~_wgslsmith_mod_u32(u_input.d, 4294967295u), 4294967295u) >= firstLeadingBit(_wgslsmith_dot_vec4_u32(arg_1, arg_1)), -u_input.a, max(_wgslsmith_mod_u32(abs(arg_1.x), arg_1.x << (53879u % 32u)), _wgslsmith_dot_vec2_u32(arg_1.ww, arg_1.xz) & max(16005u, 0u)) ^ 4294967295u);
    return vec3<bool>(false, all(global2.yy), ~(~arg_1.x) > 41143u);
}

fn func_1() -> vec3<i32> {
    var var_0 = global0.a;
    global2 = select(vec3<bool>(true, false, global2.x), !select(!func_2(-313f, vec4<u32>(u_input.d, u_input.d, 31491u, u_input.d)), vec3<bool>(global2.x, true, select(global2.x, false, global2.x)), _wgslsmith_f_op_f32(-global0.b) == _wgslsmith_f_op_f32(min(global0.b, 696f))), select(select(vec3<bool>(true, true, true), !(!vec3<bool>(false, global2.x, false)), any(!vec4<bool>(global2.x, false, false, false))), vec3<bool>(global2.x, false, u_input.d > _wgslsmith_dot_vec3_u32(vec3<u32>(11031u, u_input.d, u_input.d), vec3<u32>(u_input.d, u_input.d, u_input.d))), !(!select(vec3<bool>(global2.x, global2.x, true), vec3<bool>(global2.x, true, false), global2.x))));
    let var_1 = vec4<i32>(2147483647i, -_wgslsmith_add_i32(i32(-1i) * -2147483647i, ~_wgslsmith_mult_i32(var_0.a.x, -1i)), 2147483647i, global0.a.a.x | var_0.b);
    let var_2 = Struct_5(u_input.e & var_1.zwx, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1000f + global0.b))) - global0.b))));
    global2 = vec3<bool>(true, global2.x, true);
    return -vec3<i32>(56486i, ~global0.a.a.x, var_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(Struct_1(vec2<i32>(_wgslsmith_add_i32(-30952i, _wgslsmith_sub_i32(global0.a.a.x, global0.a.b)), 1i), _wgslsmith_dot_vec3_i32(func_1(), _wgslsmith_mod_vec3_i32(-u_input.e, abs(vec3<i32>(1i, global0.a.b, 2147483647i))))), _wgslsmith_div_f32(1077f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(func_4(Struct_3(vec4<f32>(global0.b, -573f, -236f, 124f), Struct_2(global0.a, global0.b), true, -14055i, 0u), -354f, Struct_5(vec3<i32>(68811i, u_input.c.x, global0.a.b), 378f), vec2<f32>(1885f, global0.b))))))));
    let var_0 = Struct_2(Struct_1(vec2<i32>(50130i, reverseBits(u_input.e.x)), 51803i), global0.b);
    let var_1 = global2.x;
    let var_2 = global0.b;
    let var_3 = false;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1335f, 2207f, var_0.b, 1333f), vec4<f32>(-439f, -692f, 2026f, var_0.b))), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.b, global0.b, -303f, 1000f), global1[_wgslsmith_index_u32(32150u, 27u)])) + global1[_wgslsmith_index_u32(~0u, 27u)]) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0.b, -124f, global0.b, var_0.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(484f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(589f))))));
}

