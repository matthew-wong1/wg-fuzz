struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 12>;

var<private> global1: array<vec3<bool>, 13>;

var<private> global2: Struct_3;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<f32>) -> vec3<u32> {
    global1 = array<vec3<bool>, 13>();
    let var_0 = -_wgslsmith_sub_vec2_i32(firstTrailingBit(vec2<i32>(arg_1.b.a, -1i)) & select(vec2<i32>(-43748i, 9498i), vec2<i32>(-1i, 37597i), global2.d), firstLeadingBit(vec2<i32>(1i, 1i))) & firstTrailingBit(vec2<i32>(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2781i, -2147483647i), -vec3<i32>(2147483647i, 0i, -7180i))));
    let var_1 = true;
    let var_2 = Struct_2(Struct_1(abs(u_input.a)), Struct_1(_wgslsmith_add_i32(1i, arg_0.b.a) << (~u_input.b.x % 32u)), Struct_1(u_input.a));
    global0 = array<Struct_2, 12>();
    return countOneBits(~u_input.b);
}

fn func_2(arg_0: i32, arg_1: vec3<i32>, arg_2: f32) -> Struct_3 {
    var var_0 = _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(~_wgslsmith_sub_vec3_u32(u_input.b, u_input.b), _wgslsmith_sub_vec3_u32(vec3<u32>(1u, u_input.b.x, u_input.b.x) ^ vec3<u32>(1u, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 21113u), vec2<u32>(u_input.b.x, u_input.b.x)), u_input.b.x, ~u_input.b.x)) >> (((func_3(global0[_wgslsmith_index_u32(u_input.b.x, 12u)], Struct_2(Struct_1(arg_1.x), Struct_1(arg_0), Struct_1(-2147483647i)), global2.a.xwz) & u_input.b) ^ min(firstLeadingBit(u_input.b), select(u_input.b, vec3<u32>(28503u, u_input.b.x, u_input.b.x), vec3<bool>(global2.d, global2.d, global2.d)))) % vec3<u32>(32u)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(firstTrailingBit(u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, u_input.b.x), ~u_input.b.x), ~(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), abs(u_input.b)));
    let var_1 = global0[_wgslsmith_index_u32(20640u, 12u)];
    var var_2 = Struct_1(-arg_0);
    var var_3 = any(select(vec2<bool>(true, !(false | global2.d)), !vec2<bool>(true, global2.a.x >= -303f), vec2<bool>(global2.d, global2.d)));
    let var_4 = Struct_2(Struct_1(2147483647i), Struct_1(68709i), var_1.a);
    return Struct_3(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, global2.b, -362f, arg_2) + vec4<f32>(arg_2, -416f, arg_2, -875f)) - _wgslsmith_f_op_vec4_f32(step(global2.a, vec4<f32>(1000f, global2.a.x, 1193f, arg_2)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global2.a)))))), arg_2, _wgslsmith_f_op_vec2_f32(select(global2.c, _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global2.c, vec2<f32>(441f, 219f)) + global2.c), select(select(!vec2<bool>(false, global2.d), vec2<bool>(true, false), true), !(!vec2<bool>(global2.d, false)), !(!global2.d)))), any(!(!vec4<bool>(global2.d, true, global2.d, global2.d))));
}

fn func_1() -> vec4<bool> {
    var var_0 = !global2.d;
    var var_1 = func_2(-u_input.a, vec3<i32>(reverseBits(21912i & -u_input.a), -u_input.a, 40506i), 2006f);
    let var_2 = select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1625f)) + global2.b)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-119f)) * var_1.b), true, !(((0u >> (0u % 32u)) <= u_input.b.x) & (true | (global2.d && false))));
    var_0 = true;
    let var_3 = vec3<f32>(var_1.b, var_1.a.x, 375f);
    return select(select(vec4<bool>(select(any(vec4<bool>(true, false, true, global2.d)), false, var_2), !(u_input.a < u_input.a), global2.d, true & global2.d), !select(!vec4<bool>(var_1.d, var_1.d, global2.d, var_2), select(vec4<bool>(var_2, false, false, false), vec4<bool>(true, true, false, global2.d), vec4<bool>(false, false, global2.d, true)), any(vec2<bool>(global2.d, false))), !all(!global1[_wgslsmith_index_u32(u_input.b.x, 13u)])), !select(vec4<bool>(true, !var_1.d, var_1.d, var_1.c.x != var_1.b), vec4<bool>(var_2, var_1.d, !var_1.d, true), !(!vec4<bool>(true, var_1.d, false, false))), vec4<bool>(true, !(_wgslsmith_add_i32(u_input.a, 0i) == -20719i), !var_2, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<bool>(false, any(func_1()) & global2.d, false, any(func_1().xzw) & true);
    let var_1 = _wgslsmith_clamp_vec2_u32(~u_input.b.yy, u_input.b.yz, u_input.b.yy);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.c.x, _wgslsmith_f_op_f32(round(2361f))))), global2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1129f, -616f))))), 1069f);
    var var_3 = _wgslsmith_sub_vec3_i32(vec3<i32>(firstTrailingBit(~(-2147483647i)) >> (var_1.x % 32u), -_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.a, 2147483647i, 34480i, -1i)), abs(u_input.a)), 21758i | reverseBits(~u_input.a)), vec3<i32>(-1i) * -min(vec3<i32>(u_input.a, u_input.a, -16214i), ~vec3<i32>(u_input.a, u_input.a, -25683i)));
    var var_4 = Struct_2(Struct_1(max(firstTrailingBit(-1i), -13204i) >> (~_wgslsmith_mod_u32(0u, var_1.x) % 32u)), Struct_1(-32910i & u_input.a), Struct_1(-1i));
    var var_5 = u_input.b.x;
    var_5 = 4294967295u;
    var var_6 = func_2(-(~((i32(-1i) * -1i) ^ -var_4.c.a)), -(reverseBits(~vec3<i32>(-1i, u_input.a, 2286i)) & min(-vec3<i32>(4741i, var_4.c.a, u_input.a), firstTrailingBit(vec3<i32>(-87810i, 21552i, -26810i)))), _wgslsmith_f_op_f32(global2.a.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -156f) + _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1582f, global2.a.x), _wgslsmith_f_op_f32(-778f * 880f)))))).a.xzy;
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(var_4.a.a), var_4.a.a), vec4<i32>(18447i, min(var_3.x, var_3.x) | var_3.x, countOneBits(-var_4.b.a), max(var_4.b.a, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-13389i, var_4.c.a, 1i), ~var_3.x))), -486f);
}

