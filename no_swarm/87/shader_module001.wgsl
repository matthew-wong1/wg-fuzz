struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-398f, -1304f, -959f, 1070f);

var<private> global1: vec4<f32> = vec4<f32>(-844f, -531f, 930f, 1502f);

var<private> global2: array<vec4<f32>, 31> = array<vec4<f32>, 31>(vec4<f32>(-2058f, -1000f, -410f, -137f), vec4<f32>(-134f, 1062f, -1457f, 1000f), vec4<f32>(-1232f, 119f, 433f, 2422f), vec4<f32>(-438f, 839f, -332f, 381f), vec4<f32>(-279f, 1174f, -297f, 1517f), vec4<f32>(1401f, 236f, 685f, -1000f), vec4<f32>(-2098f, -738f, -1239f, -153f), vec4<f32>(378f, 120f, 2988f, 1940f), vec4<f32>(-1241f, -1931f, -812f, -309f), vec4<f32>(271f, 1116f, -261f, -587f), vec4<f32>(-848f, -291f, 1422f, -439f), vec4<f32>(-920f, 1253f, 1639f, 2132f), vec4<f32>(-1078f, 688f, 639f, -397f), vec4<f32>(1000f, 701f, 2256f, -2256f), vec4<f32>(-397f, -532f, -462f, -232f), vec4<f32>(-1120f, -189f, -890f, 1500f), vec4<f32>(-1000f, -416f, -1689f, -1395f), vec4<f32>(-1889f, 374f, 884f, -522f), vec4<f32>(611f, 309f, 896f, 444f), vec4<f32>(-554f, 1307f, 525f, 481f), vec4<f32>(804f, 370f, 1008f, -1000f), vec4<f32>(219f, 1000f, 1000f, -2071f), vec4<f32>(136f, 851f, 334f, -722f), vec4<f32>(531f, 1665f, -664f, -551f), vec4<f32>(673f, 400f, -1265f, 726f), vec4<f32>(1207f, -1034f, 398f, 663f), vec4<f32>(-385f, 1353f, -507f, -437f), vec4<f32>(-105f, 201f, 351f, 500f), vec4<f32>(259f, 1000f, -784f, 572f), vec4<f32>(-891f, 503f, 746f, -617f), vec4<f32>(-706f, -802f, -215f, -563f));

var<private> global3: array<i32, 28> = array<i32, 28>(968i, 43762i, -21185i, 1i, i32(-2147483648), 2147483647i, -58815i, -59474i, -1i, 22027i, -22755i, -1i, -4616i, 19752i, -64028i, 0i, 10391i, -10448i, 32623i, 0i, i32(-2147483648), -1i, -1i, i32(-2147483648), -1i, 0i, -40850i, 1i);

var<private> global4: vec3<i32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: Struct_2) -> f32 {
    global1 = _wgslsmith_div_vec4_f32(vec4<f32>(-248f, -647f, 1294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-275f * -1530f))), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(0u << (arg_2.b % 32u), ~firstLeadingBit(1u)), 31u)]);
    global1 = _wgslsmith_f_op_vec4_f32(global2[_wgslsmith_index_u32(0u, 31u)] * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(global2[_wgslsmith_index_u32(73004u, 31u)], vec4<f32>(global1.x, 411f, global1.x, global0.x))) - _wgslsmith_div_vec4_f32(vec4<f32>(499f, global0.x, global1.x, global0.x), vec4<f32>(557f, 1000f, 201f, global0.x)))))));
    let var_0 = ~1u;
    var var_1 = abs(abs(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-56047i, global4.x, global4.x) & vec3<i32>(-1i, global3[_wgslsmith_index_u32(1u, 28u)], 0i), vec3<i32>(global3[_wgslsmith_index_u32(25825u, 28u)], -15287i, global4.x) & vec3<i32>(global4.x, 1i, u_input.b)))));
    var var_2 = global0.x;
    return -1000f;
}

fn func_2(arg_0: bool, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = all(vec4<bool>(true, all(!vec2<bool>(arg_0, true)) == (_wgslsmith_f_op_f32(-global1.x) == -102f), arg_0 | all(vec4<bool>(false, false, arg_0, true)), true));
    global1 = vec4<f32>(global1.x, -111f, 526f, -654f);
    let var_1 = arg_1.xy;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<f32>(global1.x, -887f, var_1.x), Struct_2(arg_0, u_input.a.x), Struct_2(false, 125009u), Struct_2(true, u_input.a.x))) * _wgslsmith_f_op_f32(f32(-1f) * -456f))), 1636f);
    global1 = global2[_wgslsmith_index_u32(1u, 31u)];
    return ~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, ~u_input.a.x, u_input.a.x, ~1523u), ~vec4<u32>(u_input.a.x, u_input.a.x, 24081u, u_input.a.x) << (~vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) >> (vec4<u32>(_wgslsmith_div_u32(u_input.a.x, firstTrailingBit(20186u >> (u_input.a.x % 32u))), u_input.a.x, _wgslsmith_clamp_u32(~u_input.a.x, 1u, 67618u), u_input.a.x) % vec4<u32>(32u));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> bool {
    var var_0 = vec3<i32>(countOneBits(global3[_wgslsmith_index_u32(func_2(true, vec3<f32>(492f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(ceil(global1.x)))).x, 28u)]), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2606i, reverseBits(39460i), -1i << (arg_0.x % 32u)), -vec3<i32>(global4.x, arg_1.b, 42109i))), u_input.b);
    var_0 = vec3<i32>(var_0.x, arg_1.b, _wgslsmith_add_i32(_wgslsmith_sub_i32(global3[_wgslsmith_index_u32(~7575u, 28u)], var_0.x), _wgslsmith_sub_i32(var_0.x, ~global4.x) ^ reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(arg_1.a, 28u)], -3695i, global4.x, -2147483647i), vec4<i32>(0i, 28075i, arg_1.b, global4.x)))));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.x, global1.x, 634f, global0.x)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-global1.zxw);
    let var_2 = arg_2;
    return any(!vec3<bool>(-1002f >= global1.x, arg_3.a, true)) && !(arg_3.a && arg_3.a);
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    global2 = array<vec4<f32>, 31>();
    global0 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 31u)]);
    let var_0 = func_4(_wgslsmith_mult_vec4_u32(~(~func_2(false, global0.zyw)), reverseBits(vec4<u32>(u_input.a.x, 39727u, 1u, ~u_input.a.x))), Struct_1(abs(42829u >> (1u % 32u)), global3[_wgslsmith_index_u32(abs(1u), 28u)], reverseBits(_wgslsmith_mod_vec2_u32(select(u_input.a.yy, u_input.a.zx, false), _wgslsmith_sub_vec2_u32(u_input.a.yx, vec2<u32>(u_input.a.x, 0u))))), arg_0, Struct_2(!any(vec4<bool>(false, true, true, false)), min(select(u_input.a.x & 4294967295u, countOneBits(u_input.a.x), true), u_input.a.x)));
    global3 = array<i32, 28>();
    global4 = vec3<i32>(_wgslsmith_clamp_i32(-24903i, -(_wgslsmith_sub_i32(27717i, 0i) ^ _wgslsmith_add_i32(global4.x, 29708i)), -_wgslsmith_mult_i32(27295i, max(u_input.b, u_input.b))), i32(-1i) * -min(-arg_0.x, -1i), -1i);
    return -2796f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-456f, 1000f) - vec2<f32>(global0.x, global0.x)), vec2<f32>(2425f, global0.x))))), _wgslsmith_f_op_vec2_f32(global1.zy + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.x, global0.x) + global1.yx))))));
    var var_2 = 0i;
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(global1.yx, vec2<f32>(-661f, _wgslsmith_f_op_f32(func_1(~vec4<i32>(global3[_wgslsmith_index_u32(4294967295u, 28u)], global4.x, 0i, -1i)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1140f)))));
    global3 = array<i32, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.wy))))));
}

