struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<bool>,
    d: Struct_1,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 18>;

var<private> global1: array<vec4<f32>, 21> = array<vec4<f32>, 21>(vec4<f32>(-545f, 502f, -814f, 174f), vec4<f32>(657f, 1000f, 549f, 1772f), vec4<f32>(-950f, -1000f, -951f, -926f), vec4<f32>(550f, -547f, 1100f, 989f), vec4<f32>(-238f, 120f, -964f, -1239f), vec4<f32>(1841f, -715f, 1337f, 337f), vec4<f32>(-1600f, -1229f, -1124f, 1975f), vec4<f32>(2433f, -492f, -1448f, 1435f), vec4<f32>(-275f, -709f, 1085f, 1128f), vec4<f32>(-1255f, 1154f, 775f, 384f), vec4<f32>(1297f, 1000f, -587f, -294f), vec4<f32>(-712f, -1285f, -1057f, -1592f), vec4<f32>(902f, -656f, 385f, -824f), vec4<f32>(-1331f, -618f, 121f, -826f), vec4<f32>(-1163f, 543f, -1791f, -586f), vec4<f32>(-694f, -789f, 1000f, 867f), vec4<f32>(-481f, 581f, 520f, -153f), vec4<f32>(1000f, 1221f, -866f, -151f), vec4<f32>(-1580f, -631f, -1000f, 367f), vec4<f32>(936f, -452f, 711f, 520f), vec4<f32>(-631f, 1000f, 1169f, 1000f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: Struct_4) -> bool {
    let var_0 = u_input.a.x;
    global1 = array<vec4<f32>, 21>();
    let var_1 = Struct_3(Struct_2(arg_2.d));
    global1 = array<vec4<f32>, 21>();
    global0 = array<u32, 18>();
    return var_1.a.a.a.x <= -countOneBits(0i);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> Struct_2 {
    var var_0 = max(arg_0.yyy, arg_0.yxw);
    let var_1 = vec2<i32>(~1i >> (0u % 32u), ~(-(~1i)));
    global1 = array<vec4<f32>, 21>();
    global1 = array<vec4<f32>, 21>();
    var var_2 = !func_3(arg_1.a.a.b.x, 1u, Struct_4(_wgslsmith_clamp_u32(firstTrailingBit(55689u), arg_0.x & 1u, arg_0.x), ~(vec2<u32>(arg_2, 20400u) & vec2<u32>(arg_0.x, 0u)), vec4<bool>(true, true, all(vec3<bool>(arg_1.a.a.d.x, arg_1.a.a.b.x, arg_1.a.a.d.x)), any(vec4<bool>(true, arg_1.a.a.d.x, false, arg_1.a.a.d.x))), arg_1.a.a, _wgslsmith_div_vec4_f32(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 21u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_2, 18u)], 21u)])));
    return arg_1.a;
}

fn func_1(arg_0: f32) -> StorageBuffer {
    var var_0 = Struct_3(func_2(vec4<u32>(~global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(55247u, 18u)], 18u)], global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(28286u, global0[_wgslsmith_index_u32(8169u, 18u)]), vec2<u32>(12656u, global0[_wgslsmith_index_u32(1u, 18u)])), _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(1u, 18u)]), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 0u))), 18u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4062u, 18u)], 18u)], global0[_wgslsmith_index_u32(13949u, 18u)]), vec2<u32>(7405u, global0[_wgslsmith_index_u32(58007u, 18u)])), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(80946u, 25417u), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], 22564u) ^ vec2<u32>(79910u, global0[_wgslsmith_index_u32(2888u, 18u)])), 18u)]), Struct_3(Struct_2(Struct_1(u_input.a, vec3<bool>(true, false, false), vec4<i32>(11939i, -2147483647i, -44746i, 1i), vec3<bool>(false, false, true)))), global0[_wgslsmith_index_u32(~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(global0[_wgslsmith_index_u32(1u, 18u)], 38781u))), 18u)], -2147483647i));
    global1 = array<vec4<f32>, 21>();
    let var_1 = Struct_4(1u, reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(52894u, 18u)]) << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 18u)], 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(1u, 18u)]) % vec2<u32>(32u)), vec2<u32>(23138u, 14047u) >> (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(22205u, 18u)], 18u)], 61663u) % vec2<u32>(32u)))) & (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)] ^ 13387u, ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6382u, 18u)], 18u)]) & _wgslsmith_sub_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(27498u, 18u)]) ^ vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(83175u, 18u)], 18u)], 4294967295u), countOneBits(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(113210u, 18u)], 18u)], 18u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)])))), vec4<bool>(max(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35474u, 18u)], 18u)], 69373u) > global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)]), 18u)], ~1u), 18u)], true, var_0.a.a.d.x, 1i <= ~(-u_input.a.x)), func_2(vec4<u32>(~4294967295u, max(_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 18u)], 18u)], 18u)], 18u)], 18u)], 60245u), global0[_wgslsmith_index_u32(84643u, 18u)]), global0[_wgslsmith_index_u32(1u, 18u)], 59702u), Struct_3(func_2(select(vec4<u32>(1u, 35599u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(66729u, 18u)], 18u)], 18u)], 1u), vec4<u32>(4294967295u, 1u, 0u, 38676u), var_0.a.a.b.x), Struct_3(var_0.a), select(7491u, 5448u, var_0.a.a.b.x), -11657i)), _wgslsmith_mod_u32(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 18u)], 18u)], 42700u), 18u)], ~63174u), 148i).a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-565f))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0), 811f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(234f - arg_0))))));
    global0 = array<u32, 18>();
    var_0 = Struct_3(var_0.a);
    return StorageBuffer(var_1.e.x, -416f, _wgslsmith_div_i32(u_input.a.x, abs(_wgslsmith_mult_i32(u_input.a.x, var_0.a.a.c.x))) & -_wgslsmith_mod_i32(~u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 2147483647i, var_0.a.a.c.x), vec3<i32>(-57758i, var_1.d.c.x, u_input.a.x))), select(_wgslsmith_clamp_vec2_u32(reverseBits(var_1.b), abs(min(vec2<u32>(global0[_wgslsmith_index_u32(var_1.a, 18u)], var_1.b.x), var_1.b)), var_1.b), var_1.b, vec2<bool>(true, true)), -_wgslsmith_add_vec4_i32(var_0.a.a.c, _wgslsmith_mod_vec4_i32(~var_0.a.a.c, var_1.d.c | vec4<i32>(36215i, -60399i, -26655i, 1i))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(step(-489f, 505f)));
}

