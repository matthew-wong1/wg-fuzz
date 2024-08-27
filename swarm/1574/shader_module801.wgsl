struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: Struct_2 = Struct_2(false, Struct_1(66896u), false, false);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<bool>) -> bool {
    global1 = Struct_2(global1.d, Struct_1(~(_wgslsmith_add_u32(1u, 19929u) & _wgslsmith_sub_u32(u_input.a.x, 22224u))), arg_1.x & all(!(!arg_1)), global1.a);
    global1 = Struct_2(global1.d, global1.b, all(arg_1.yy), true);
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -993f);
    var_0 = 434f;
    let var_1 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(select(u_input.d, vec3<u32>(global1.b.a, u_input.d.x, 4294967295u), global1.a), vec3<u32>(8951u, u_input.a.x, 4294967295u)), ~_wgslsmith_mult_vec3_u32(u_input.d, u_input.a)), ~global1.b.a, _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, global1.b.a, 14388u)) >> (_wgslsmith_mod_u32(global1.b.a, u_input.d.x) % 32u), 1u)) >> ((1u << (_wgslsmith_div_u32(~(~u_input.d.x), 72416u) % 32u)) % 32u);
    return _wgslsmith_f_op_f32(max(173f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-114f, -803f)))))) < _wgslsmith_div_f32(971f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-484f, 684f)), 1337f)));
}

fn func_2() -> Struct_2 {
    global0 = true;
    let var_0 = global1.b;
    global1 = Struct_2(all(vec4<bool>(any(vec3<bool>(true, false, false)), global1.a || global1.a, global1.d || global1.d, true)) || true, Struct_1(76543u), true, false);
    global1 = Struct_2(func_3(select(abs(vec2<i32>(u_input.c, u_input.b) ^ vec2<i32>(56898i, u_input.c)), firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-49226i, u_input.c), vec2<i32>(u_input.b, u_input.c))), vec2<bool>(true, !global1.c)), !select(vec3<bool>(global1.c, false, global1.c), vec3<bool>(true, global1.a, false), !global1.d)), global1.b, true & global1.c, global1.d || false);
    global0 = global1.c;
    return Struct_2(reverseBits(~u_input.b) == abs(max(abs(-2147483647i), ~(-9402i))), Struct_1(1u), false, all(select(vec3<bool>(global1.c, u_input.b <= u_input.c, func_3(vec2<i32>(46234i, 0i), vec3<bool>(false, global1.c, global1.a))), select(select(vec3<bool>(true, global1.a, global1.c), vec3<bool>(false, global1.c, true), true), select(vec3<bool>(global1.d, true, global1.c), vec3<bool>(false, global1.c, false), vec3<bool>(global1.d, global1.d, true)), true), select(select(vec3<bool>(false, false, global1.c), vec3<bool>(true, global1.a, true), vec3<bool>(global1.d, global1.c, true)), !vec3<bool>(false, global1.c, global1.a), true))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec4<bool>) -> vec2<bool> {
    var var_0 = func_2();
    let var_1 = arg_1.a;
    var var_2 = arg_0.x;
    let var_3 = !(12514u > ~var_1) & all(select(arg_3, select(select(vec4<bool>(false, global1.c, global1.d, arg_3.x), vec4<bool>(true, global1.d, true, var_0.c), true), select(arg_3, arg_3, vec4<bool>(true, arg_3.x, true, true)), any(arg_3.xz)), true));
    let var_4 = -vec3<i32>(reverseBits(min(-2147483647i, ~u_input.b)), firstLeadingBit(u_input.c), arg_0.x);
    return vec2<bool>(!(_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.c, var_4.x, 22188i, -14100i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(0i, var_4.x, -3471i, 1i), vec4<i32>(0i, 42259i, arg_0.x, -30866i), vec4<i32>(arg_0.x, u_input.c, var_4.x, var_4.x))) <= (max(var_4.x, -2147483647i) ^ select(arg_0.x, 0i, var_3))), false);
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<bool>) -> vec3<f32> {
    global1 = Struct_2(arg_1.x, global1.b, global1.d, all(select(select(vec3<bool>(true, true, global1.c), vec3<bool>(global1.d, false, global1.d), global1.a), vec3<bool>(global1.d, arg_1.x, arg_1.x), any(vec4<bool>(true, arg_1.x, false, true)))) | (countOneBits(u_input.c) <= _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-54333i, 0i), vec2<i32>(u_input.b, u_input.b)), firstLeadingBit(u_input.b))));
    global0 = all(vec4<bool>(global1.c, global1.c, !global1.c, true));
    global1 = func_2();
    let var_0 = arg_0;
    var var_1 = global1.b;
    return var_0.wyx;
}

fn func_5(arg_0: vec3<f32>, arg_1: vec2<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = select(select(select(select(vec4<bool>(arg_2.c, true, global1.d, true), !vec4<bool>(true, false, true, global1.d), true), vec4<bool>(any(vec4<bool>(global1.d, arg_2.a, arg_2.d, false)), all(vec4<bool>(true, false, arg_2.c, arg_2.d)), true, true), vec4<bool>(true, true, true, 463f <= arg_0.x)), !select(!vec4<bool>(arg_2.c, global1.a, arg_2.a, false), vec4<bool>(true, true, global1.a, arg_2.d), vec4<bool>(false, false, arg_2.a, global1.a)), !((arg_0.x < -2323f) && global1.c)), select(!select(!vec4<bool>(false, global1.d, false, false), select(vec4<bool>(global1.d, true, false, arg_2.c), vec4<bool>(global1.a, false, arg_2.c, arg_2.a), arg_2.c), select(vec4<bool>(false, arg_2.c, false, global1.c), vec4<bool>(false, false, false, arg_2.a), vec4<bool>(true, arg_2.a, true, true))), !(!vec4<bool>(arg_2.c, true, arg_2.a, false)), all(vec2<bool>(true, any(vec3<bool>(global1.c, false, arg_2.d))))), abs(countOneBits(_wgslsmith_mult_i32(u_input.c, 24219i))) > _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, u_input.c), _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(27047i, u_input.c, u_input.b, 2147483647i), vec4<i32>(-14021i, u_input.b, u_input.b, u_input.b)), vec4<i32>(0i, u_input.c, -31763i, u_input.c) & vec4<i32>(1i, u_input.b, 1i, u_input.c))));
    var var_1 = 13223i;
    var_0 = vec4<bool>(!(arg_2.c && arg_2.a), arg_2.a, true, true);
    global1 = arg_2;
    let var_2 = arg_0;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = true;
    global1 = func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-242f, 143f, 770f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-960f, 671f, 403f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1f, 1f, 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(349f, 149f, 155f) * vec3<f32>(-698f, -1343f, 1000f))), global1.a & any(vec4<bool>(true, false, global1.a, global1.d)))), _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1463f, -1409f, 1000f, -719f), vec4<f32>(173f, 2087f, 1584f, 1000f), global1.c)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1023f, -1740f, 132f, 783f))))), !func_1(vec2<i32>(u_input.c, 46773i), global1.b, vec4<u32>(73115u, 5194u, 30366u, u_input.a.x), vec4<bool>(true, global1.d, global1.a, global1.d)))))), select(vec2<u32>(20436u, 104194u), countOneBits(select(~u_input.a.xy, firstTrailingBit(u_input.a.yz), global1.b.a < 1u)), vec2<bool>(global1.a, true)), Struct_2(global1.c, Struct_1(u_input.a.x), false, select(global1.a, !(true | global1.c), true)));
    var var_0 = vec2<bool>(true, true);
    let var_1 = select(vec3<bool>(func_3(-reverseBits(vec2<i32>(0i, -2147483647i)), vec3<bool>(var_0.x && false, true, u_input.d.x != global1.b.a)), false, global1.a), !(!select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(true, true, true), !global1.a)), false);
    global0 = all(vec4<bool>(false, func_1(min(firstLeadingBit(vec2<i32>(u_input.b, 9260i)), vec2<i32>(u_input.b, 0i)), Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.d.x, global1.b.a, global1.b.a), vec4<u32>(u_input.d.x, 41483u, 9765u, 21221u))), (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, u_input.a.x) | vec4<u32>(global1.b.a, 2100u, u_input.d.x, 4392u)) | max(vec4<u32>(global1.b.a, global1.b.a, 1u, global1.b.a), vec4<u32>(45613u, global1.b.a, 21012u, 15831u)), select(vec4<bool>(true, global1.c, global1.d, true), select(vec4<bool>(var_1.x, global1.a, false, global1.c), vec4<bool>(true, true, true, global1.c), false), var_0.x)).x, var_0.x, min(u_input.d.x, _wgslsmith_mult_u32(2279u, u_input.a.x)) != ~u_input.a.x));
    let var_2 = select(countOneBits(-min(vec4<i32>(-2147483647i, 25758i, u_input.c, 1i), vec4<i32>(2147483647i, 2147483647i, u_input.b, -19019i))) ^ (vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, 0i, -86i), vec4<i32>(2147483647i, -2147483647i, u_input.b, 2147483647i)), u_input.c, select(u_input.b, u_input.c, var_0.x), ~(-2147483647i)) & ~(vec4<i32>(u_input.b, u_input.c, u_input.c, -16657i) ^ vec4<i32>(0i, u_input.c, -2147483647i, -4882i))), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(22116i, u_input.b, 2147483647i, 2147483647i), vec4<i32>(21592i, u_input.b, 0i, -4562i), global1.a) & (vec4<i32>(10013i, u_input.c, u_input.c, -1i) & vec4<i32>(-2147483647i, u_input.b, u_input.c, -17606i)), -vec4<i32>(-4126i, u_input.c, -2147483647i, -1i)), ~countOneBits(vec4<i32>(2147483647i, 1i, u_input.b, u_input.c))), select(!select(vec4<bool>(var_0.x, true, global1.c, true), vec4<bool>(true, global1.c, true, global1.c), var_1.x), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_0.x, true, false, true)), vec4<bool>(true, func_2().a, var_1.x, global1.a)), func_1(vec2<i32>(u_input.b, countOneBits(u_input.c)), func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1381f, -224f, -190f)), _wgslsmith_clamp_vec2_u32(u_input.d.zx, u_input.d.xx, u_input.d.xy), Struct_2(false, Struct_1(4294967295u), var_0.x, false)).b, reverseBits(vec4<u32>(global1.b.a, 4294967295u, 0u, u_input.a.x) & vec4<u32>(global1.b.a, u_input.d.x, 18999u, 20540u)), !select(vec4<bool>(false, true, true, false), vec4<bool>(global1.d, true, global1.c, true), vec4<bool>(global1.a, var_1.x, false, false))).x));
    var_0 = !select(var_1.yz, var_1.xz, var_1.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_u32(max(u_input.a.yz, ~u_input.a.xz), vec2<u32>(29900u, ~global1.b.a)) & u_input.a.yx, vec3<f32>(231f, _wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(457f, 2703f, -2243f, 1181f))), vec4<f32>(1f, 1f, 1f, 1f)), var_1.zx)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1138f)))), max(~firstLeadingBit(vec4<u32>(21244u, 21702u, 4294967295u, 27053u)) >> (_wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.d.x, 59217u, u_input.d.x), vec4<u32>(global1.b.a, 38338u, 4294967295u, 12853u)), ~vec4<u32>(u_input.a.x, u_input.a.x, 11863u, 1u)) % vec4<u32>(32u)), abs(select(countOneBits(vec4<u32>(global1.b.a, 1u, global1.b.a, u_input.a.x)), select(vec4<u32>(global1.b.a, u_input.d.x, 819u, global1.b.a), vec4<u32>(u_input.d.x, 0u, u_input.d.x, global1.b.a), false), any(vec3<bool>(var_1.x, false, true))))));
}

