struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: u32,
    e: vec2<u32>,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec2<i32>(25813i, 44645i), vec3<u32>(40092u, 25560u, 16639u));

var<private> global1: Struct_4;

var<private> global2: array<vec2<i32>, 3>;

var<private> global3: array<bool, 10> = array<bool, 10>(true, true, true, true, true, true, false, true, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: bool, arg_3: vec2<bool>) -> u32 {
    let var_0 = ~global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~global0.a << (36686u % 32u), global0.c.x), 3u)];
    let var_1 = Struct_3(_wgslsmith_dot_vec3_u32(global0.c, global0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(741f)), _wgslsmith_f_op_f32(1000f * -1516f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-340f - _wgslsmith_f_op_f32(select(103f, 748f, global1.a)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-116f - -1000f))))), _wgslsmith_sub_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(21229u, global0.c.x), _wgslsmith_add_u32(~arg_0, _wgslsmith_mod_u32(arg_0, 4294967295u))), ~0u), ~(~(~(~global0.c.yx))));
    let var_2 = !select(select(!(!vec4<bool>(global1.a, global1.a, false, true)), select(select(vec4<bool>(arg_3.x, true, true, arg_3.x), vec4<bool>(false, true, false, false), global1.a), !vec4<bool>(false, global3[_wgslsmith_index_u32(global0.c.x, 10u)], global1.a, global1.a), select(vec4<bool>(false, true, arg_2, true), vec4<bool>(global3[_wgslsmith_index_u32(4294967295u, 10u)], arg_2, global1.a, global1.a), vec4<bool>(arg_2, global1.a, arg_2, global1.a))), select(!vec4<bool>(true, global1.a, false, false), select(vec4<bool>(true, arg_3.x, false, true), vec4<bool>(arg_3.x, false, false, false), vec4<bool>(arg_3.x, true, arg_2, false)), select(vec4<bool>(true, false, false, false), vec4<bool>(arg_2, false, false, arg_3.x), vec4<bool>(arg_3.x, false, false, global1.a)))), select(vec4<bool>(any(arg_3), !arg_3.x, select(global1.a, arg_3.x, global1.a), true), vec4<bool>(var_0.x < -26923i, all(arg_3), any(vec3<bool>(arg_2, false, global1.a)), global1.a), !(!vec4<bool>(arg_2, arg_3.x, global3[_wgslsmith_index_u32(global0.a, 10u)], global3[_wgslsmith_index_u32(58267u, 10u)]))), select(select(!vec4<bool>(global1.a, true, false, arg_3.x), select(vec4<bool>(arg_2, true, arg_3.x, arg_3.x), vec4<bool>(arg_2, global1.a, false, false), vec4<bool>(false, true, false, true)), vec4<bool>(global1.a, arg_3.x, arg_2, global3[_wgslsmith_index_u32(var_1.d, 10u)])), select(select(vec4<bool>(global1.a, false, true, arg_2), vec4<bool>(global3[_wgslsmith_index_u32(var_1.e.x, 10u)], false, true, true), false), select(vec4<bool>(arg_3.x, false, true, arg_3.x), vec4<bool>(true, arg_3.x, false, arg_2), false), global1.a), true));
    global2 = array<vec2<i32>, 3>();
    var var_3 = Struct_3(4294967295u, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-773f, 424f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.c.x, var_1.c.x)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(var_1.c, var_1.b, vec2<bool>(global3[_wgslsmith_index_u32(var_1.a, 10u)], arg_3.x))))), global1.a)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(sign(-225f)), _wgslsmith_f_op_f32(trunc(var_1.c.x))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_1.b.x, -261f), vec2<f32>(var_1.c.x, -930f))))), (~arg_0 & 26569u) > 13955u)), ~_wgslsmith_div_u32(~19103u, var_1.d << (~arg_0 % 32u)), _wgslsmith_sub_vec2_u32(abs(firstLeadingBit(vec2<u32>(1u, u_input.a.x))) ^ vec2<u32>(~52852u, ~4294967295u), _wgslsmith_clamp_vec2_u32(u_input.a.yw, vec2<u32>(0u, ~var_1.d), vec2<u32>(abs(arg_0), _wgslsmith_dot_vec4_u32(u_input.a, u_input.a)))));
    return ~firstLeadingBit(var_3.d);
}

fn func_2(arg_0: bool) -> vec3<i32> {
    global2 = array<vec2<i32>, 3>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1182f + -1948f)), -166f)), Struct_1(~(~global0.a), global0.b, vec3<u32>(global0.c.x, func_3(global0.a, global0.b.x, global1.a, vec2<bool>(true, false)), ~(0u << (0u % 32u)))));
    let var_1 = select(select(vec3<bool>(global3[_wgslsmith_index_u32(40949u, 10u)], all(vec3<bool>(global3[_wgslsmith_index_u32(global0.c.x, 10u)], false, global3[_wgslsmith_index_u32(43998u, 10u)])) && arg_0, true), select(select(select(vec3<bool>(global1.a, arg_0, true), vec3<bool>(global3[_wgslsmith_index_u32(0u, 10u)], global1.a, global3[_wgslsmith_index_u32(0u, 10u)]), vec3<bool>(false, true, arg_0)), !vec3<bool>(false, arg_0, true), vec3<bool>(global1.a, true, true)), select(!vec3<bool>(false, global1.a, true), !vec3<bool>(true, global3[_wgslsmith_index_u32(global0.a, 10u)], true), any(vec2<bool>(global1.a, arg_0))), vec3<bool>(any(vec4<bool>(global1.a, arg_0, global1.a, arg_0)), true, arg_0)), !arg_0), vec3<bool>(arg_0, arg_0, true), any(vec2<bool>(global3[_wgslsmith_index_u32(firstLeadingBit(~u_input.a.x), 10u)], true | arg_0)));
    let var_2 = var_0;
    var var_3 = true;
    return select(abs(~vec3<i32>(_wgslsmith_mod_i32(var_2.b.b.x, -3699i), global0.b.x, var_0.b.b.x)), -reverseBits(vec3<i32>(0i, global0.b.x, countOneBits(2147483647i))), select(vec3<bool>(true, any(select(var_1, vec3<bool>(true, false, false), var_1)), false), select(select(vec3<bool>(var_1.x, false, arg_0), !vec3<bool>(true, var_1.x, arg_0), !vec3<bool>(arg_0, true, true)), vec3<bool>(true, true, global3[_wgslsmith_index_u32(~4294967295u, 10u)]), select(select(vec3<bool>(true, var_1.x, true), vec3<bool>(global1.a, global1.a, global3[_wgslsmith_index_u32(0u, 10u)]), var_1), vec3<bool>(false, global1.a, true), arg_0)), all(vec2<bool>(any(vec4<bool>(true, arg_0, false, true)), arg_0))));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>) -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(793f - _wgslsmith_f_op_f32(f32(-1f) * -477f)), _wgslsmith_f_op_f32(f32(-1f) * -119f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(877f)) * _wgslsmith_f_op_f32(909f + 2211f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -100f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(543f - -101f) - -2206f)))));
    global2 = array<vec2<i32>, 3>();
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-462f * _wgslsmith_f_op_f32(var_0.x - 141f)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1903f - -1000f), _wgslsmith_f_op_f32(exp2(var_0.x))))), -625f, var_0.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1000f, var_0.x, var_0.x))))));
    let var_1 = Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_div_u32(40840u, _wgslsmith_dot_vec3_u32(global0.c, vec3<u32>(3430u, global0.a, 0u))), global0.c.x), min(u_input.a.wy, vec2<u32>(u_input.a.x, 1u))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_0.x, 380f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1104f, 255f), var_0.yz))), (u_input.a.x | 1u) < 4294967295u)) + vec2<f32>(var_0.x, var_0.x)), var_0.xy, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(reverseBits(~vec3<u32>(1u, 4294967295u, 1u)), ~u_input.a.wzx), _wgslsmith_mult_vec3_u32(u_input.a.zyw & firstTrailingBit(vec3<u32>(global0.c.x, 86411u, u_input.a.x)), _wgslsmith_mult_vec3_u32(u_input.a.wwx, u_input.a.yyz))), u_input.a.zz);
    var var_2 = _wgslsmith_mult_i32(abs(20791i), ~(-1i)) >> (~var_1.d % 32u);
    return -2147483647i;
}

fn func_1(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = func_4(firstLeadingBit(func_2(global1.a) << (reverseBits(~u_input.a.xxz) % vec3<u32>(32u))), ~vec3<i32>(_wgslsmith_dot_vec2_i32(func_2(true).zz, global0.b), max(global0.b.x, global0.b.x) & 0i, _wgslsmith_add_i32(-1i, 1i)));
    var var_1 = abs(vec2<u32>(_wgslsmith_clamp_u32(12602u, min(_wgslsmith_clamp_u32(global0.c.x, global0.c.x, arg_1.b.c.x), u_input.a.x), arg_1.b.c.x), 4294967295u));
    let var_2 = reverseBits(_wgslsmith_clamp_vec2_u32(global0.c.zz, u_input.a.wy ^ u_input.a.zw, u_input.a.wz));
    let var_3 = select(select(select(vec3<bool>(false, !global3[_wgslsmith_index_u32(1u, 10u)], true), !vec3<bool>(global3[_wgslsmith_index_u32(global0.c.x, 10u)], global1.a, global1.a), global3[_wgslsmith_index_u32(0u, 10u)]), !select(select(vec3<bool>(false, false, global3[_wgslsmith_index_u32(50670u, 10u)]), vec3<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 10u)], false, true), global1.a), vec3<bool>(global3[_wgslsmith_index_u32(arg_1.b.a, 10u)], false, global3[_wgslsmith_index_u32(var_2.x, 10u)]), global1.a), global1.a | all(select(vec2<bool>(true, true), vec2<bool>(false, global3[_wgslsmith_index_u32(1u, 10u)]), vec2<bool>(global3[_wgslsmith_index_u32(1u, 10u)], global3[_wgslsmith_index_u32(6084u, 10u)])))), !vec3<bool>(false & (true == global1.a), true, true), select(!vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(1u, u_input.a.x, 69235u, global0.a)), 10u)], !global1.a, true), vec3<bool>(true, true, true), all(select(!vec3<bool>(true, global3[_wgslsmith_index_u32(arg_0, 10u)], false), vec3<bool>(false, global3[_wgslsmith_index_u32(arg_1.b.c.x, 10u)], global3[_wgslsmith_index_u32(arg_1.b.c.x, 10u)]), !vec3<bool>(true, global1.a, false)))));
    var var_4 = _wgslsmith_mod_vec2_u32(vec2<u32>(abs(1u), max(firstTrailingBit(1u), 0u)), ~(~abs(arg_1.b.c.zz)));
    return arg_1.b;
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<u32> {
    global2 = array<vec2<i32>, 3>();
    var var_0 = any(select(vec2<bool>(true, false), vec2<bool>(!(u_input.a.x >= arg_0.a), global1.a), vec2<bool>(true, global0.a != 58093u)));
    var_0 = global3[_wgslsmith_index_u32(~(firstLeadingBit(_wgslsmith_div_u32(~u_input.a.x, firstTrailingBit(global0.c.x))) ^ 0u), 10u)];
    var var_1 = arg_0;
    let var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(select(vec3<i32>(2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.b.x, arg_0.b.x, -2147483647i), vec3<i32>(-25290i, -2147483647i, global0.b.x)), _wgslsmith_add_i32(global0.b.x, -24203i)), select(-vec3<i32>(global0.b.x, arg_0.b.x, -388i), vec3<i32>(arg_0.b.x, global0.b.x, 2147483647i), any(vec4<bool>(true, false, global3[_wgslsmith_index_u32(global0.c.x, 10u)], global3[_wgslsmith_index_u32(arg_0.a, 10u)]))), select(select(vec3<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 10u)], global1.a), vec3<bool>(global1.a, global1.a, true), vec3<bool>(global3[_wgslsmith_index_u32(arg_1.x, 10u)], false, false)), vec3<bool>(false, true, false), global1.a)), _wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, global0.b.x, global0.b.x), select(vec3<i32>(-2147483647i, var_1.b.x, -7740i), vec3<i32>(-1i, arg_0.b.x, arg_0.b.x), false)), _wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(global0.b.x, var_1.b.x, -2147483647i)), ~vec3<i32>(global0.b.x, var_1.b.x, 1i)))), vec3<i32>(abs(_wgslsmith_mod_i32(var_1.b.x, -15798i)), _wgslsmith_dot_vec4_i32(firstLeadingBit(~vec4<i32>(1i, 14402i, 3639i, 2147483647i)), vec4<i32>(global0.b.x, 79176i, var_1.b.x, arg_0.b.x) ^ min(vec4<i32>(arg_0.b.x, -2147483647i, global0.b.x, arg_0.b.x), vec4<i32>(-73864i, -1i, global0.b.x, global0.b.x))), var_1.b.x));
    return var_1.c;
}

fn func_6(arg_0: vec2<f32>, arg_1: vec2<u32>, arg_2: Struct_2, arg_3: Struct_1) -> Struct_1 {
    var var_0 = select(~func_5(func_1(arg_2.b.c.x, arg_2), ~select(vec4<u32>(arg_1.x, 4294967295u, 0u, 0u), u_input.a, true)).x, arg_1.x, true);
    global3 = array<bool, 10>();
    var var_1 = !vec3<bool>(~global0.b.x <= arg_3.b.x, global1.a && true, ~arg_3.c.x < _wgslsmith_sub_u32(55300u, 0u));
    global2 = array<vec2<i32>, 3>();
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), -778f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -453f))), all(vec4<bool>(global1.a, var_1.x, global3[_wgslsmith_index_u32(~u_input.a.x, 10u)], true))))));
    return Struct_1(_wgslsmith_mult_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(firstLeadingBit(arg_1.x), _wgslsmith_dot_vec2_u32(u_input.a.wx, arg_3.c.xx)), _wgslsmith_sub_u32(~arg_1.x, 1u)), _wgslsmith_dot_vec4_u32(abs(vec4<u32>(arg_1.x, 4294967295u, 50554u, arg_2.b.c.x)), u_input.a)), _wgslsmith_mult_vec2_i32(global0.b, _wgslsmith_mult_vec2_i32(global0.b, ~firstTrailingBit(vec2<i32>(arg_3.b.x, arg_2.b.b.x)))), _wgslsmith_clamp_vec3_u32(~(min(vec3<u32>(105283u, arg_3.c.x, 4294967295u), global0.c) ^ ~global0.c), select(~vec3<u32>(0u, arg_1.x, 1u), func_1(~arg_3.c.x, Struct_2(arg_2.a, Struct_1(arg_2.b.a, global0.b, global0.c))).c, (global1.a & true) | true), vec3<u32>(~(~arg_1.x), _wgslsmith_dot_vec4_u32(u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, 37608u, arg_3.a, 0u), u_input.a)), ~0u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(194f * -1359f) + _wgslsmith_f_op_f32(min(990f, -675f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1931f - 756f)))), select(global0.c.yz, u_input.a.wx, select(!select(vec2<bool>(true, global1.a), vec2<bool>(false, false), true), select(vec2<bool>(global3[_wgslsmith_index_u32(global0.c.x, 10u)], false), select(vec2<bool>(global1.a, true), vec2<bool>(global1.a, false), global1.a), global1.a), any(vec3<bool>(global1.a, true, global1.a)) & false)), Struct_2(1000f, Struct_1(~60172u, -global2[_wgslsmith_index_u32(23159u, 3u)], _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 22041u, 4294967295u), global0.c) >> (~vec3<u32>(global0.c.x, 58898u, u_input.a.x) % vec3<u32>(32u)))), Struct_1(4294967295u, abs(global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(1u, 6743u, global0.a), 3u)]), func_5(func_1(20544u, Struct_2(-232f, Struct_1(48688u, vec2<i32>(global0.b.x, -39916i), vec3<u32>(u_input.a.x, 47131u, u_input.a.x)))), vec4<u32>(max(1u, 0u), 4396u, u_input.a.x, 17813u))));
    var var_0 = global0.b;
    let var_1 = vec2<i32>(var_0.x, ~1i);
    let var_2 = _wgslsmith_clamp_vec2_i32(vec2<i32>(func_4(-vec3<i32>(1169i, var_0.x, 2147483647i), -vec3<i32>(0i, var_0.x, 2147483647i)) & global0.b.x, global0.b.x), countOneBits(func_2(_wgslsmith_f_op_f32(f32(-1f) * -408f) != _wgslsmith_f_op_f32(sign(-881f))).zz), abs(-vec2<i32>(global0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-4078i, 46428i, 2147483647i, var_0.x), vec4<i32>(global0.b.x, var_0.x, 2147483647i, 12569i)))));
    let var_3 = _wgslsmith_f_op_f32(max(692f, _wgslsmith_f_op_f32(sign(-347f))));
    global0 = Struct_1(u_input.a.x & _wgslsmith_div_u32(~(~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c.x, u_input.a.x, 53066u, u_input.a.x), _wgslsmith_div_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, global0.a)))), -(~vec2<i32>(~global0.b.x, -1217i | var_2.x)), ~select(~global0.c, vec3<u32>(16501u, _wgslsmith_mod_u32(global0.c.x, 4294967295u), ~8190u), true));
    global1 = Struct_4(global3[_wgslsmith_index_u32(global0.c.x, 10u)]);
    let x = u_input.a;
    s_output = StorageBuffer(min(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 0u), u_input.a.wx)), min(vec2<u32>(abs(78692u), firstTrailingBit(u_input.a.x)), _wgslsmith_mult_vec2_u32(global0.c.xy, _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, u_input.a.x), vec2<u32>(u_input.a.x, 0u))))), var_1 << (~global0.c.zx % vec2<u32>(32u)), var_3);
}

