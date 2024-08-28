struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(true, true), -1i, vec4<bool>(false, false, false, false));

var<private> global1: array<f32, 12> = array<f32, 12>(-1597f, 522f, -399f, -752f, -465f, -412f, 456f, -1474f, 158f, 528f, -1126f, 2093f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: vec4<i32>, arg_3: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.xy))));
    var var_1 = global0.c.wxw;
    var var_2 = Struct_1(select(vec2<bool>(true, !all(vec4<bool>(true, var_1.x, false, global0.a.x))), select(select(var_1.xx, vec2<bool>(true, true), vec2<bool>(true, false)), !select(var_1.zz, vec2<bool>(true, global0.a.x), vec2<bool>(false, var_1.x)), true), all(select(global0.c, vec4<bool>(arg_3, global0.a.x, true, var_1.x), global0.c)) & arg_3), _wgslsmith_add_i32(0i, 1769i), !vec4<bool>(global0.a.x, -global0.b >= 29275i, var_1.x, !var_1.x || true));
    let var_3 = -2860f;
    var var_4 = !global0.c;
    return 0i;
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    let var_0 = 1i ^ (global0.b ^ func_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-arg_0))), vec4<u32>(u_input.a.x, 0u, u_input.a.x, ~u_input.a.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, global0.b, -32277i, global0.b), vec4<i32>(0i, global0.b, global0.b, -12636i)), global0.b, ~(-55844i), -1i), global0.a.x));
    let var_1 = !(!global0.c);
    global0 = Struct_1(select(vec2<bool>(var_1.x, global0.a.x), !var_1.yw, select(select(vec2<bool>(var_1.x, false), !vec2<bool>(false, var_1.x), var_1.xw), select(var_1.yz, select(vec2<bool>(var_1.x, true), global0.c.xy, var_1.x), !vec2<bool>(var_1.x, var_1.x)), var_1.yz)), -13592i, !select(vec4<bool>(var_1.x, global0.c.x, true, true), vec4<bool>(global0.c.x, any(vec4<bool>(var_1.x, false, var_1.x, false)), true, !global0.a.x), !vec4<bool>(false, global0.c.x, global0.c.x, false)));
    let var_2 = select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mod_u32(u_input.a.x, u_input.a.x), _wgslsmith_mult_u32(~18966u, u_input.a.x), firstTrailingBit(0u), 0u), vec4<u32>(1u, ~1u, u_input.a.x, u_input.a.x << (12938u % 32u)) ^ select(~vec4<u32>(4294967295u, 1u, 61303u, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 34u) ^ vec4<u32>(42069u, 0u, 14255u, 4294967295u), !vec4<bool>(var_1.x, false, false, var_1.x))), global0.a.x);
    var var_3 = ~_wgslsmith_add_vec2_i32(-vec2<i32>(global0.b | -1i, var_0), countOneBits(-vec2<i32>(0i, 5720i) | select(vec2<i32>(-2147483647i, var_0), vec2<i32>(52818i, -8180i), var_1.yy)));
    return _wgslsmith_add_i32(2147483647i, (56220i & _wgslsmith_mod_i32(global0.b, var_0)) << (61832u % 32u)) << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u & (121569u & u_input.a.x), 19591u, countOneBits(firstTrailingBit(4294967295u))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(var_2, var_2, 29574u), vec3<u32>(u_input.a.x, u_input.a.x, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(81020u, u_input.a.x), u_input.a), u_input.a.x, u_input.a.x)) % 32u);
}

fn func_4(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    let var_0 = Struct_1(global0.a, _wgslsmith_sub_i32(~(i32(-1i) * -22385i), ~global0.b), global0.c);
    global0 = Struct_1(global0.a, 4578i, arg_3);
    let var_1 = select(var_0.c.xzz, !(!(!arg_2.c.xzx)), global0.c.wyx);
    global0 = Struct_1(!(!arg_2.a), abs(~(~(var_0.b << (u_input.a.x % 32u)))), select(vec4<bool>(select(!var_1.x, true, true), true | (var_0.b <= arg_2.b), var_1.x, arg_3.x), var_0.c, select(global0.b != (1i >> (arg_0 % 32u)), true, !(!var_0.c.x))));
    var var_2 = !(any(vec4<bool>(!global0.c.x, !var_1.x, false || arg_1, !global0.c.x)) != true);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-246f + _wgslsmith_f_op_f32(floor(-1000f))));
}

fn func_1(arg_0: u32, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec2<bool>(false, !(!(!global0.c.x))), 0i, !(!vec4<bool>(!global0.a.x, !global0.a.x, 1787f < global1[_wgslsmith_index_u32(u_input.a.x, 12u)], true)));
    let var_1 = 715f;
    var var_2 = _wgslsmith_f_op_f32(func_4(arg_0, global0.a.x, Struct_1(!select(select(vec2<bool>(false, true), global0.a, false), vec2<bool>(true, true), false), -_wgslsmith_sub_i32(func_2(vec4<f32>(arg_1.x, -683f, var_1, 863f)), -2147483647i), global0.c), !select(var_0.c, vec4<bool>(var_0.a.x | true, !global0.a.x, !global0.a.x, var_0.c.x), !any(vec4<bool>(var_0.c.x, var_0.c.x, global0.c.x, true)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1, _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(-381f * -596f)))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1387f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(0u, 12u)] - var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_4(36486u, global0.a.x, Struct_1(var_0.c.yy, 1i, global0.c), var_0.c)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)] + 1390f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(54888u, arg_0, u_input.a.x, 4294967295u), vec4<u32>(1u, 0u, u_input.a.x, 0u)), 12u)], _wgslsmith_f_op_f32(-var_1), var_1) + _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1, arg_1.x, var_1), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1, global1[_wgslsmith_index_u32(1u, 12u)], global1[_wgslsmith_index_u32(61784u, 12u)]), vec3<f32>(global1[_wgslsmith_index_u32(88112u, 12u)], 110f, 1979f))))))), vec3<bool>(global0.a.x && true, true, _wgslsmith_f_op_f32(trunc(var_1)) >= var_1)));
    var var_4 = Struct_1(!vec2<bool>(global0.a.x & false, var_0.a.x), 30299i, vec4<bool>(!global0.a.x, !global0.c.x, firstTrailingBit(4946i) == -3817i, any(var_0.c)));
    return Struct_1(select(vec2<bool>(true, true), var_4.a, var_4.c.yx), firstTrailingBit(39555i), !vec4<bool>(global0.a.x, all(!var_4.c.xyy), !select(false, true, true), var_0.c.x || true));
}

fn func_5(arg_0: f32, arg_1: Struct_1) -> u32 {
    global1 = array<f32, 12>();
    global1 = array<f32, 12>();
    let var_0 = 573f;
    return _wgslsmith_dot_vec2_u32(min(abs(vec2<u32>(51501u ^ u_input.a.x, 27738u)), _wgslsmith_mult_vec2_u32(abs(abs(u_input.a)), vec2<u32>(4294967295u, u_input.a.x))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(min(abs(~u_input.a.x) & 0u, func_5(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 12u)], -646f), func_1(~0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1635f, -1355f) + vec2<f32>(1702f, global1[_wgslsmith_index_u32(1u, 12u)]))))), 12u)] > _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 12u)]);
    var var_1 = vec3<f32>(global1[_wgslsmith_index_u32(~0u, 12u)], _wgslsmith_f_op_f32(abs(153f)), _wgslsmith_f_op_f32(trunc(global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.a.x, 4294967295u)), 1u), 12u)])));
    let var_2 = _wgslsmith_f_op_f32(-1343f * global1[_wgslsmith_index_u32(~0u, 12u)]);
    var var_3 = select(firstLeadingBit(~u_input.a), vec2<u32>(u_input.a.x, ~((u_input.a.x ^ 28239u) ^ 1u)), vec2<bool>(true, !(true & (false || global0.c.x))));
    let var_4 = func_1(19410u, var_1.zx);
    var_1 = vec3<f32>(var_1.x, var_2, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(var_1.x)))));
    let var_5 = _wgslsmith_div_f32(1681f, _wgslsmith_f_op_f32(567f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -504f))))));
    global0 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(~max(func_1(4294967295u, vec2<f32>(-1000f, 256f)).b, global0.b & var_4.b), _wgslsmith_mult_i32(~1i, _wgslsmith_mod_i32(global0.b, var_4.b))), ~var_3.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_5), -481f, _wgslsmith_f_op_f32(round(var_5)), _wgslsmith_f_op_f32(428f * -1097f)))), -_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2744i, var_4.b, 97749i, global0.b), vec4<i32>(global0.b, -1i, global0.b, var_4.b)), select(vec4<i32>(var_4.b, global0.b, 18110i, 0i), vec4<i32>(0i, -1i, global0.b, global0.b), var_4.c.x)), min(~vec4<i32>(54392i, var_4.b, global0.b, var_4.b), abs(vec4<i32>(0i, var_4.b, 0i, var_4.b)))));
}

