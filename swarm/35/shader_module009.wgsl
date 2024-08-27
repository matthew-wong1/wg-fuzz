struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19> = array<i32, 19>(1i, 7160i, 3191i, -1i, 60405i, 0i, -18348i, -27712i, i32(-2147483648), 2147483647i, -45952i, 2147483647i, 24090i, 0i, 57548i, -9837i, 13940i, -1i, -1i);

var<private> global1: Struct_1 = Struct_1(634f, 0u);

var<private> global2: Struct_1 = Struct_1(362f, 2157u);

var<private> global3: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(-762f, 4294967295u), Struct_1(507f, 0u), Struct_1(1000f, 28082u), Struct_1(1641f, 7351u), Struct_1(-1064f, 26813u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: bool, arg_3: vec3<i32>) -> i32 {
    let var_0 = vec3<u32>(global2.b, ~_wgslsmith_clamp_u32((16515u << (0u % 32u)) << ((0u & global1.b) % 32u), 4294967295u, 1u), 67591u);
    let var_1 = ~global2.b;
    let var_2 = _wgslsmith_f_op_f32(-global1.a);
    let var_3 = arg_3.x;
    global3 = array<Struct_1, 5>();
    return 0i;
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: f32) -> vec4<u32> {
    let var_0 = select(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-37041i, ~(-1i)), ~(-1i) & -arg_2), -1i, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, 49633i), -vec2<i32>(14518i, global0[_wgslsmith_index_u32(arg_1.b, 19u)])), -21132i)), _wgslsmith_add_vec3_i32(-(~select(vec3<i32>(-28162i, 31607i, u_input.a), vec3<i32>(-2147483647i, arg_2, global0[_wgslsmith_index_u32(72810u, 19u)]), true)), _wgslsmith_mult_vec3_i32(~(vec3<i32>(global0[_wgslsmith_index_u32(arg_1.b, 19u)], u_input.a, u_input.a) | vec3<i32>(1i, global0[_wgslsmith_index_u32(global2.b, 19u)], 15313i)), -vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(arg_0, 19u)], u_input.a))), !select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), all(vec4<bool>(true, false, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, any(vec4<bool>(true, true, true, false)))));
    let var_1 = arg_0;
    global2 = global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~29019u, 1u), 5u)];
    var var_2 = max(-616i, u_input.a);
    let var_3 = max(~firstLeadingBit(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_0.x, -2147483647i), var_0), -1i, _wgslsmith_sub_i32(-46953i, global0[_wgslsmith_index_u32(global2.b, 19u)]), u_input.a | u_input.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 1i | (arg_2 >> (4294967295u % 32u)), -21481i, min(_wgslsmith_mult_i32(0i, -2147483647i), _wgslsmith_div_i32(-37274i, var_0.x))), _wgslsmith_mult_vec4_i32(~vec4<i32>(-35535i, -25459i, 21693i, -38860i), select(vec4<i32>(-1i, 19691i, -1i, arg_2), firstTrailingBit(vec4<i32>(2147483647i, 25174i, arg_2, -2147483647i)), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true)))));
    return _wgslsmith_div_vec4_u32(vec4<u32>(arg_1.b, ~(~(arg_1.b << (var_1 % 32u))), var_1 | ~_wgslsmith_div_u32(global2.b, arg_0), max(~arg_1.b, arg_1.b) << (~(global1.b ^ global2.b) % 32u)), vec4<u32>(~_wgslsmith_mod_u32(reverseBits(39843u), _wgslsmith_mult_u32(global1.b, arg_0)), ~arg_1.b, _wgslsmith_mult_u32(0u, ~(~1u)), 15594u));
}

fn func_2(arg_0: bool) -> vec4<u32> {
    global0 = array<i32, 19>();
    let var_0 = 100522u;
    global3 = array<Struct_1, 5>();
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a));
    let var_2 = _wgslsmith_sub_vec4_u32(select(~(~vec4<u32>(1u, 4294967295u, global1.b, global2.b)), abs(min(vec4<u32>(global1.b, global1.b, 1u, 1u), vec4<u32>(global1.b, 43158u, 56347u, 0u))), true && arg_0) | vec4<u32>(18699u, ~(global1.b | global2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(global2.b, 1u), vec2<u32>(42392u, 83059u) >> (vec2<u32>(global2.b, global1.b) % vec2<u32>(32u))), global2.b), func_4(0u, global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global2.b, 26257u), 5u)], func_3(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -13443i, u_input.a), vec3<i32>(49088i, -39724i, -31632i)), _wgslsmith_f_op_f32(-574f * global1.a), any(vec3<bool>(true, true, true)), -vec3<i32>(-1i, global0[_wgslsmith_index_u32(global1.b, 19u)], -68147i)), _wgslsmith_f_op_f32(ceil(global2.a))) & ~(~(~vec4<u32>(global1.b, 13469u, 85318u, 1u))));
    return ~abs(firstLeadingBit(select(vec4<u32>(global2.b, 1927u, global1.b, global1.b), ~var_2, arg_0)));
}

fn func_1(arg_0: vec4<f32>, arg_1: i32) -> StorageBuffer {
    let var_0 = any(vec3<bool>(true, true, true));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(func_2(any(select(vec2<bool>(false, true), vec2<bool>(var_0, true), vec2<bool>(false, var_0)))), abs(firstTrailingBit(vec4<u32>(global2.b, 1u, 4294967295u, global2.b)))) << (~32659u % 32u), 5u)];
    var var_2 = ~11785u;
    global1 = global3[_wgslsmith_index_u32(26619u, 5u)];
    global3 = array<Struct_1, 5>();
    return StorageBuffer(-_wgslsmith_clamp_i32(~max(global0[_wgslsmith_index_u32(global2.b, 19u)], arg_1), -1i, -3974i), _wgslsmith_mult_vec4_u32(countOneBits(vec4<u32>(global1.b, var_1.b, 0u, 19845u) & vec4<u32>(global1.b, 1u, var_1.b, 135558u)) & vec4<u32>(var_1.b & 28480u, func_4(global1.b, global3[_wgslsmith_index_u32(global2.b, 5u)], arg_1, arg_0.x).x, ~58021u, 51592u | global1.b), _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 43500u, global2.b, 61676u), vec4<u32>(16858u, global1.b, 4294967295u, 0u) & vec4<u32>(16032u, 1u, global2.b, global2.b)) & ~(vec4<u32>(66767u, var_1.b, 28968u, 83182u) ^ vec4<u32>(69852u, 42076u, 1u, global1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_1, 5>();
    global2 = Struct_1(1026f, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 66997u, ~1u), vec3<u32>(global1.b, global2.b, max(~0u, ~global2.b))));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-global2.a), global2.b);
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a), global1.a), _wgslsmith_f_op_f32(var_0.a - _wgslsmith_f_op_f32(f32(-1f) * -578f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global1.a)), var_0.a), _wgslsmith_f_op_f32(f32(-1f) * -1240f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-759f, global1.a, global2.a, global2.a), vec4<f32>(global1.a, global1.a, 298f, -180f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1639f, 1808f, global1.a, global2.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-534f, -2047f, global2.a, 439f), vec4<f32>(var_0.a, 876f, global1.a, global1.a))), vec4<bool>(true, true, true, true))), vec4<bool>(true, true, false, !(var_0.a > global1.a)))), firstLeadingBit(-_wgslsmith_mod_i32(1i, u_input.a)));
}

