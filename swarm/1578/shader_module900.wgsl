struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: f32;

var<private> global2: Struct_2;

var<private> global3: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(746f, 430f, -988f, -2410f), vec4<f32>(2112f, 876f, -433f, 658f), vec4<f32>(-1000f, 206f, 730f, 573f), vec4<f32>(-129f, -475f, 727f, -790f), vec4<f32>(1621f, -1529f, 678f, -922f), vec4<f32>(599f, -869f, 1857f, 404f), vec4<f32>(812f, -900f, -565f, 213f), vec4<f32>(-1275f, -1030f, 1049f, 175f), vec4<f32>(-491f, 502f, 1000f, -431f), vec4<f32>(787f, -1579f, -1000f, -2077f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: bool) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(abs(1092f));
    global1 = 989f;
    return global2.a.x;
}

fn func_2(arg_0: f32, arg_1: bool, arg_2: vec4<u32>) -> u32 {
    var var_0 = Struct_2(vec3<u32>(~(~1u) >> (firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, global0.x), vec2<u32>(4294967295u, 0u))) % 32u), ~func_3(vec3<f32>(-584f, arg_0, arg_0), true, countOneBits(global2.d.b), global2.c.c), global0.x), global2.c, Struct_1(vec3<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), 955f), _wgslsmith_add_vec4_i32(~vec4<i32>(2147483647i, 48699i, -29227i, global2.b.b.x), firstTrailingBit(-global2.b.b)), global2.b.c), global2.b, _wgslsmith_f_op_f32(-global2.c.a.x));
    let var_1 = vec4<u32>(~(~select(select(29576u, 23710u, false), 4294967295u, global2.d.a.x <= var_0.d.a.x)), global2.a.x, global0.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(min(~32324u, 47694u), ~global0.x >> (~1u % 32u)), countOneBits(global2.a.x)));
    var_0 = Struct_2(global2.a, var_0.c, global2.c, var_0.b, _wgslsmith_f_op_f32(-var_0.c.a.x));
    global2 = Struct_2(select(vec3<u32>(46046u, reverseBits(26189u), 46112u) >> (var_1.xzw % vec3<u32>(32u)), var_1.zxx, !all(!vec2<bool>(false, global2.b.c))), Struct_1(_wgslsmith_f_op_vec3_f32(var_0.d.a * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(var_0.d.a)), _wgslsmith_f_op_vec3_f32(-var_0.c.a), vec3<bool>(global2.d.c, global2.d.c, false)))), _wgslsmith_mult_vec4_i32(~var_0.c.b, _wgslsmith_clamp_vec4_i32(max(var_0.c.b, vec4<i32>(28254i, global2.b.b.x, -2147483647i, 55581i)), ~vec4<i32>(27906i, u_input.c, global2.c.b.x, 1i), vec4<i32>(u_input.c, 28636i, -30587i, 1i))), false), var_0.c, Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(338f, 1680f, _wgslsmith_f_op_f32(abs(1288f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global2.b.a))))), vec4<i32>(677i, _wgslsmith_mult_i32(-1i, -2147483647i), max(abs(3653i), u_input.b), global2.c.b.x), _wgslsmith_f_op_f32(-global2.e) <= arg_0), global2.b.a.x);
    global3 = array<vec4<f32>, 10>();
    return ~(~1u);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>) -> Struct_2 {
    return Struct_2(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(min(1u, 62958u), _wgslsmith_mult_u32(global0.x, 18887u)), 0u, func_2(global2.b.a.x, global2.d.c, vec4<u32>(71075u, 1u, 0u, u_input.a.x)) | u_input.a.x), vec3<u32>(func_3(vec3<f32>(327f, global2.b.a.x, -1002f), all(vec4<bool>(true, global2.c.c, false, true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, u_input.b, -20992i, 17531i), vec4<i32>(-41691i, u_input.c, 1i, -2147483647i), vec4<i32>(global2.d.b.x, -28428i, global2.c.b.x, -2147483647i)), !arg_1.x), u_input.a.x, u_input.a.x ^ ~4294967295u)), global2.d, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(global2.c.a + global2.b.a)))), reverseBits(min(global2.c.b | global2.b.b, global2.c.b)), false), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-568f, _wgslsmith_f_op_f32(step(global2.e, 625f)), _wgslsmith_div_f32(global2.c.a.x, 1000f))), ~(~_wgslsmith_mod_vec4_i32(global2.c.b, global2.d.b)), select(global2.d.c, !all(vec3<bool>(global2.b.c, arg_1.x, false)), all(vec2<bool>(false, global2.d.c)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(global2.d.a.x, 1459f))), global2.c.a.x))));
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> bool {
    global1 = -182f;
    let var_0 = func_4((abs(min(-21603i, u_input.b)) << (~func_2(671f, arg_0.c, vec4<u32>(1u, global2.a.x, 0u, global2.a.x)) % 32u)) & arg_0.b.x, select(vec3<bool>(~u_input.a.x != ~global2.a.x, true, _wgslsmith_f_op_f32(-global2.b.a.x) != 136f), vec3<bool>(true, true, true), select(select(!vec3<bool>(global2.d.c, arg_0.c, global2.d.c), vec3<bool>(false, true, global2.c.c), vec3<bool>(true, arg_0.c, global2.b.c)), !(!vec3<bool>(global2.b.c, false, arg_0.c)), !arg_0.c == true)));
    var var_1 = arg_0.b.zw;
    var var_2 = vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, var_0.a.x), 4294967295u);
    var var_3 = func_4(var_1.x, vec3<bool>(all(vec3<bool>(true, true, true)), any(!(!vec3<bool>(arg_0.c, false, var_0.d.c))), any(vec2<bool>(all(vec3<bool>(arg_0.c, true, global2.c.c)), all(vec4<bool>(global2.d.c, true, false, arg_0.c))))));
    return all(!vec3<bool>(_wgslsmith_div_f32(arg_0.a.x, 474f) > _wgslsmith_f_op_f32(279f * 1422f), any(vec3<bool>(var_3.c.c, global2.b.c, false)) == true, !var_3.b.c && global2.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec2<bool>(global2.c.a.x > 894f, -global2.d.b.x > _wgslsmith_div_i32(global2.c.b.x, _wgslsmith_dot_vec4_i32(global2.c.b, vec4<i32>(u_input.c, -1i, u_input.c, 1515i))));
    let var_1 = global2.b;
    var_0 = select(!(!select(!vec2<bool>(false, global2.c.c), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(false, false), false), func_1(Struct_1(var_1.a, vec4<i32>(u_input.c, var_1.b.x, global2.d.b.x, global2.c.b.x), var_0.x), 0i))), !(!select(vec2<bool>(var_0.x, global2.b.c), vec2<bool>(true, var_1.c), all(vec4<bool>(true, true, false, false)))), vec2<bool>(var_1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2.e))) <= global2.d.a.x));
    var var_2 = _wgslsmith_dot_vec4_u32(countOneBits(~(vec4<u32>(u_input.a.x, 24663u, 95794u, global2.a.x) ^ vec4<u32>(76671u, 57241u, 64386u, 4294967295u))), ~max(max(vec4<u32>(0u, global2.a.x, 32196u, global2.a.x), vec4<u32>(1827u, u_input.a.x, global2.a.x, 4294967295u)), vec4<u32>(0u, global0.x, 46672u, global2.a.x))) << (~u_input.a.x % 32u);
    var var_3 = min(global2.a.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(global2.a.x, 12743u, 0u)), vec3<u32>(~45596u, global0.x | 53128u, max(0u, 1u))), func_4(global2.b.b.x | u_input.b, vec3<bool>(any(vec3<bool>(true, true, var_1.c)), 211f == var_1.a.x, true)).a.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b.x, var_1.b, 0u, ~firstTrailingBit(firstTrailingBit(reverseBits(vec4<u32>(u_input.a.x, 41716u, 29553u, u_input.a.x)))));
}

