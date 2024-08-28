struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: vec4<u32> = vec4<u32>(1u, 4294967295u, 0u, 1u);

var<private> global2: bool = false;

var<private> global3: array<i32, 17> = array<i32, 17>(2147483647i, 0i, -1i, -20960i, 1i, -22213i, -1i, 1i, 0i, -14843i, 1i, -24344i, 0i, -8118i, -90891i, i32(-2147483648), i32(-2147483648));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3) -> bool {
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -947f);
    var var_0 = !select(vec2<bool>(!arg_0.a.a, !arg_0.a.a), select(vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(arg_1.a.b.x > 1u, arg_1.a.a), select(!arg_0.a.a, arg_0.a.a, true)), arg_0.a.a);
    let var_1 = Struct_3(Struct_1(arg_1.a.a, arg_0.a.b, -(max(vec4<i32>(arg_1.b, -2147483647i, 2147483647i, u_input.c), vec4<i32>(global3[_wgslsmith_index_u32(arg_0.a.b.x, 17u)], 13621i, 5401i, -1i)) ^ (arg_0.a.c | vec4<i32>(0i, 30367i, 0i, u_input.c)))), global3[_wgslsmith_index_u32(~(reverseBits(abs(1u)) | select(0u, ~arg_0.a.b.x, arg_0.a.a)), 17u)]);
    var var_2 = Struct_3(Struct_1(any(select(vec4<bool>(var_1.a.a, var_1.a.a, true, true), vec4<bool>(true, var_1.a.a, arg_1.a.a, false), vec4<bool>(var_0.x, arg_0.a.a, true, arg_1.a.a))) || true, countOneBits(max(~global1.yy, ~arg_0.a.b)), vec4<i32>(-_wgslsmith_mult_i32(u_input.c, global3[_wgslsmith_index_u32(1u, 17u)]), 1i, arg_0.b, 1i | arg_1.a.c.x)), _wgslsmith_clamp_i32(abs(_wgslsmith_clamp_i32(arg_0.b, ~arg_1.a.c.x, i32(-1i) * -11118i)), arg_0.b, -23026i));
    return all(vec3<bool>(select(select(var_2.a.a, false, all(vec4<bool>(true, false, false, var_1.a.a))), true, false), false, !any(select(vec2<bool>(true, arg_0.a.a), vec2<bool>(false, var_1.a.a), true))));
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_1(func_3(Struct_3(Struct_1(true, _wgslsmith_div_vec2_u32(vec2<u32>(global1.x, global1.x), u_input.a.xx), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 13507i, u_input.c, global3[_wgslsmith_index_u32(4294967295u, 17u)]), vec4<i32>(u_input.c, 0i, 1i, 57292i))), countOneBits(u_input.c)), Struct_3(Struct_1(true, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, global1.x), vec2<u32>(1u, u_input.a.x)), vec4<i32>(-5631i, 30321i, 2147483647i, u_input.c)), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.x, u_input.b, 0u), vec3<u32>(global1.x, u_input.b, u_input.b) | vec3<u32>(u_input.b, u_input.a.x, 0u)), 17u)])), vec2<u32>(~1u, max(~4294967295u << (global1.x % 32u), 5906u)), vec4<i32>(0i, 42149i, -1i, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32((vec2<u32>(0u, 4294967295u) | global1.xw) << (_wgslsmith_mod_vec2_u32(global1.zw, global1.ww) % vec2<u32>(32u)), max(vec2<u32>(u_input.a.x, global1.x), _wgslsmith_mult_vec2_u32(vec2<u32>(4923u, 4294967295u), u_input.a.zx))), 17u)]));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-326f)) - 635f));
    let var_1 = vec3<i32>(_wgslsmith_add_i32(_wgslsmith_div_i32(0i, ~_wgslsmith_clamp_i32(u_input.c, u_input.c, var_0.c.x)), ~var_0.c.x), firstLeadingBit(-31805i), var_0.c.x);
    global0 = _wgslsmith_f_op_f32(-473f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-140f + 789f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1155f), -1005f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1202f, 1000f, var_0.a)) - -670f)), true)));
    let var_2 = Struct_2(var_0, vec4<i32>(var_1.x, -33098i, (u_input.c << (var_0.b.x % 32u)) >> ((_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(12768u, 58882u, 0u)) & firstLeadingBit(global1.x)) % 32u), -1i));
    return Struct_3(var_2.a, firstLeadingBit(1i));
}

fn func_1() -> vec4<u32> {
    global2 = !(true && all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    var var_0 = vec2<u32>(firstTrailingBit(u_input.a.x), u_input.b);
    global2 = true;
    var var_1 = func_2();
    var_1 = Struct_3(var_1.a, _wgslsmith_div_i32(abs(global3[_wgslsmith_index_u32(16395u, 17u)] | _wgslsmith_mult_i32(var_1.b, global3[_wgslsmith_index_u32(0u, 17u)])), _wgslsmith_dot_vec3_i32(var_1.a.c.yzx, var_1.a.c.wxz)));
    return vec4<u32>(~(~(~var_1.a.b.x)), var_0.x << (1u % 32u), ~(firstLeadingBit(15925u) & abs(_wgslsmith_sub_u32(1u, var_0.x))), _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(26537u, _wgslsmith_mod_u32(~var_0.x, ~0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(891f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(507f * -2619f))), -390f, all(vec4<bool>(false, true, false, false))))), -507f);
    global1 = firstLeadingBit(func_1());
    global3 = array<i32, 17>();
    var var_0 = _wgslsmith_div_vec4_i32(-select(vec4<i32>(~global3[_wgslsmith_index_u32(global1.x, 17u)], -global3[_wgslsmith_index_u32(0u, 17u)], ~u_input.c, u_input.c), select(~vec4<i32>(1i, u_input.c, 1i, -32433i), vec4<i32>(-2147483647i, global3[_wgslsmith_index_u32(28251u, 17u)], 3971i, global3[_wgslsmith_index_u32(42584u, 17u)]), vec4<bool>(false, false, true, false)), false), _wgslsmith_mod_vec4_i32(-(vec4<i32>(-1i) * -vec4<i32>(u_input.c, 8477i, global3[_wgslsmith_index_u32(0u, 17u)], u_input.c)), vec4<i32>(~(-27346i), abs(1i), u_input.c, ~firstLeadingBit(global3[_wgslsmith_index_u32(81003u, 17u)]))));
    var var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(-(~firstTrailingBit(vec4<i32>(var_0.x, var_0.x, 15824i, global3[_wgslsmith_index_u32(0u, 17u)]))), _wgslsmith_mult_vec4_i32(select(vec4<i32>(-148i, -2147483647i, global3[_wgslsmith_index_u32(u_input.a.x, 17u)], -1239i), vec4<i32>(global3[_wgslsmith_index_u32(global1.x, 17u)], global3[_wgslsmith_index_u32(u_input.b, 17u)], global3[_wgslsmith_index_u32(13405u, 17u)], -1i), true), _wgslsmith_div_vec4_i32(vec4<i32>(14335i, var_0.x, 26921i, global3[_wgslsmith_index_u32(35104u, 17u)]), vec4<i32>(-3937i, global3[_wgslsmith_index_u32(26397u, 17u)], 0i, var_0.x))) >> (vec4<u32>(countOneBits(24512u), ~u_input.a.x, 50111u, global1.x) % vec4<u32>(32u))), _wgslsmith_mod_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(abs(global1.x), 17u)], i32(-1i) * -1i, _wgslsmith_mod_i32(global3[_wgslsmith_index_u32(global1.x, 17u)], u_input.c), -u_input.c), _wgslsmith_add_vec4_i32(~(vec4<i32>(-55456i, -1i, 0i, 2147483647i) ^ vec4<i32>(2147483647i, u_input.c, var_0.x, -1i)), vec4<i32>(17060i, _wgslsmith_dot_vec3_i32(var_0.xzw, vec3<i32>(0i, -2147483647i, 16056i)), _wgslsmith_mod_i32(2147483647i, -21478i), firstTrailingBit(69495i)))));
    global1 = ~select(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(49879u, global1.x, u_input.b, u_input.b), vec4<u32>(global1.x, global1.x, 54254u, u_input.b))), vec4<u32>(u_input.a.x, u_input.a.x ^ 0u, u_input.a.x, _wgslsmith_sub_u32(1u, u_input.a.x))), reverseBits(vec4<u32>(0u, u_input.a.x, u_input.b, u_input.b)) & firstTrailingBit(reverseBits(vec4<u32>(global1.x, 49001u, global1.x, global1.x))), false | any(vec2<bool>(false, false)));
    global3 = array<i32, 17>();
    var_1 = select(_wgslsmith_mod_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(var_1.x, global3[_wgslsmith_index_u32(0u, 17u)], -39037i, -2147483647i), vec4<i32>(-23500i, u_input.c, var_1.x, global3[_wgslsmith_index_u32(6419u, 17u)])), -vec4<i32>(2147483647i, var_1.x, 41663i, 1i), true), firstLeadingBit(vec4<i32>(var_1.x, 34619i, 10056i, var_0.x) << (vec4<u32>(u_input.b, global1.x, global1.x, 102681u) % vec4<u32>(32u)))), _wgslsmith_mod_vec4_i32(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-35775i, global3[_wgslsmith_index_u32(36793u, 17u)], var_0.x, var_1.x), vec4<i32>(u_input.c, 14282i, 0i, var_1.x))), select(-vec4<i32>(76051i, -2147483647i, var_0.x, var_0.x), -vec4<i32>(-1i, u_input.c, 2147483647i, var_0.x), select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), false))), ~(global3[_wgslsmith_index_u32(u_input.a.x, 17u)] & 1i) <= ~(-global3[_wgslsmith_index_u32(0u, 17u)])) << (reverseBits(vec4<u32>(reverseBits(_wgslsmith_div_u32(u_input.a.x, global1.x)), 0u, u_input.a.x, func_1().x)) % vec4<u32>(32u));
    var var_2 = _wgslsmith_dot_vec3_u32(global1.xww, u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1872f)) * 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-714f * -599f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-559f, 1000f, 489f))), vec3<f32>(-1037f, -611f, _wgslsmith_f_op_f32(-1843f * -654f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1042f, 310f, _wgslsmith_f_op_f32(floor(709f))) - vec3<f32>(1787f, _wgslsmith_f_op_f32(floor(1016f)), -1077f))));
}

