struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<i32>,
    d: vec3<f32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = 637f;

var<private> global2: array<vec4<u32>, 20>;

var<private> global3: u32 = 53055u;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<f32> {
    var var_0 = Struct_1(-2147483647i, global0.b, global0.c, vec3<f32>(global0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.d.x, -1000f), 875f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + -1833f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.d.x - 1000f))))), global2[_wgslsmith_index_u32(firstLeadingBit(45449u), 20u)]);
    global3 = ~13283u;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(exp2(global0.d.x)), 565f, var_0.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.d.x, var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1207f - 234f) - var_0.d.x)))) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.x))), _wgslsmith_f_op_f32(sign(918f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x + -1062f) + global0.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.d.x - 553f), _wgslsmith_div_f32(-1000f, var_0.d.x))), vec4<f32>(var_0.d.x, var_0.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1574f) - -837f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(368f - var_0.d.x)))))));
    var_0 = Struct_1(-(-u_input.a.x & 1i) | _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(max(vec4<i32>(global0.c.x, global0.c.x, 0i, global0.c.x), vec4<i32>(-32294i, -25221i, 25754i, -2147483647i)), -vec4<i32>(global0.a, var_0.a, -53616i, -37782i)), vec4<i32>(u_input.a.x, -global0.c.x, ~var_0.c.x, 0i)), vec3<bool>(all(select(vec4<bool>(true, global0.b.x, global0.b.x, true), vec4<bool>(true, true, true, true), select(vec4<bool>(global0.b.x, var_0.b.x, true, true), vec4<bool>(true, global0.b.x, false, true), false))), !all(var_0.b), any(vec4<bool>(false, all(vec4<bool>(global0.b.x, global0.b.x, var_0.b.x, true)), any(global0.b.zx), true))), global0.c, var_2.yyx, vec4<u32>(0u >> (_wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(global0.e.x, 20u)], var_0.e) % 32u), firstLeadingBit(49900u), 1u, 1u ^ _wgslsmith_dot_vec4_u32(var_0.e, global2[_wgslsmith_index_u32(4294967295u, 20u)])) & var_0.e);
    return _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-499f, _wgslsmith_f_op_f32(f32(-1f) * -937f))), -1773f, var_0.d.x, 1356f)));
}

fn func_2(arg_0: u32, arg_1: vec4<u32>, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.d.x, -1217f, global0.d.x, -643f), _wgslsmith_f_op_vec4_f32(func_3(63258u))))) * vec4<f32>(-1085f, _wgslsmith_f_op_f32(min(-367f, _wgslsmith_f_op_f32(-global0.d.x))), _wgslsmith_div_f32(global0.d.x, _wgslsmith_f_op_f32(global0.d.x * -2731f)), _wgslsmith_f_op_f32(f32(-1f) * -478f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(global0.d.x)))), _wgslsmith_f_op_vec4_f32(func_3(countOneBits(global0.e.x))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.x + -1162f)), global0.d.x)));
    var var_1 = vec3<bool>(true, !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), -106f) != 832f), global0.b.x);
    var var_2 = u_input.a;
    let var_3 = Struct_1(_wgslsmith_dot_vec2_i32(select(~vec2<i32>(0i, global0.a), _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, var_2.x), global0.c | vec2<i32>(-2147483647i, var_2.x)), var_1.x), vec2<i32>(-max(-72237i, global0.a), abs(var_2.x))), vec3<bool>((_wgslsmith_f_op_f32(max(-2301f, global0.d.x)) == _wgslsmith_div_f32(global0.d.x, -678f)) != !(global0.a >= 62508i), true | !any(vec3<bool>(true, var_1.x, var_1.x)), all(global0.b)), vec2<i32>(10360i, ~1i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.x, var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1594f, var_0.x))))), (global0.e >> (arg_1 % vec4<u32>(32u))) | (arg_1 << (abs(vec4<u32>(arg_1.x, arg_1.x, 5453u, 0u)) % vec4<u32>(32u))));
    var var_4 = var_3;
    return Struct_1(select(reverseBits(_wgslsmith_sub_i32(global0.a, var_3.a)) >> (~_wgslsmith_dot_vec2_u32(var_3.e.xz, arg_1.wy) % 32u), countOneBits(~(~var_3.a)), select(all(global0.b) || (false & var_1.x), any(!var_1.zx), 50821u < (28074u << (arg_0 % 32u)))), global0.b, min((vec2<i32>(1i, -2147483647i) ^ var_3.c) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(global0.c.x, 2147483647i), global0.c, vec2<i32>(var_2.x, -2147483647i)), global0.c), global0.d, select(min(select(firstTrailingBit(vec4<u32>(8622u, 4294967295u, 4294967295u, 15923u)), ~global2[_wgslsmith_index_u32(81676u, 20u)], !var_4.b.x), select(countOneBits(vec4<u32>(14323u, var_4.e.x, 11915u, global0.e.x)), var_3.e, !vec4<bool>(true, var_4.b.x, global0.b.x, var_3.b.x))), (~vec4<u32>(48971u, 1u, var_3.e.x, 14613u) | firstLeadingBit(global0.e)) | var_3.e, !(!(!vec4<bool>(false, var_4.b.x, var_4.b.x, global0.b.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<i32>) -> vec2<u32> {
    var var_0 = arg_2.d.x;
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -677f);
    var_0 = global0.d.x;
    var var_1 = func_2(34959u ^ global0.e.x, ~_wgslsmith_div_vec4_u32(arg_2.e, (arg_2.e | vec4<u32>(1u, 1u, arg_2.e.x, arg_1.e.x)) << (vec4<u32>(arg_0.x, arg_2.e.x, arg_1.e.x, 28761u) % vec4<u32>(32u))), select(_wgslsmith_dot_vec3_u32(arg_1.e.zyy, ~vec3<u32>(arg_1.e.x, global0.e.x, arg_0.x) << (vec3<u32>(arg_1.e.x, global0.e.x, 1338u) % vec3<u32>(32u))), firstTrailingBit(0u), false && !(75876u > global0.e.x)));
    let var_2 = Struct_1(_wgslsmith_dot_vec2_i32(select(vec2<i32>(~u_input.a.x, var_1.c.x), global0.c, true & any(arg_2.b.zz)), u_input.a), global0.b, arg_3, vec3<f32>(global0.d.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -630f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(897f)), _wgslsmith_f_op_f32(select(452f, arg_2.d.x, true))))), _wgslsmith_f_op_f32(-1064f + var_1.d.x)), ~vec4<u32>(0u, ~arg_0.x, ~var_1.e.x ^ _wgslsmith_mod_u32(arg_2.e.x, global0.e.x), 4294967295u));
    return ~vec2<u32>(abs(global0.e.x), _wgslsmith_mod_u32(var_1.e.x, _wgslsmith_dot_vec3_u32(vec3<u32>(13496u, var_1.e.x, arg_1.e.x), vec3<u32>(var_1.e.x, arg_0.x, global0.e.x) | var_1.e.xzz)));
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global0.d.x, arg_0, global0.b.x && true)), -1966f)));
    let var_1 = ~reverseBits(_wgslsmith_mult_vec2_u32(func_4(global0.e ^ global2[_wgslsmith_index_u32(global0.e.x, 20u)], func_2(10695u, vec4<u32>(1u, global0.e.x, 66087u, 0u), global0.e.x), func_2(global0.e.x, vec4<u32>(global0.e.x, global0.e.x, global0.e.x, global0.e.x), global0.e.x), vec2<i32>(-1i, u_input.a.x)), _wgslsmith_clamp_vec2_u32(abs(global0.e.wx), global0.e.yy, ~vec2<u32>(global0.e.x, 40189u))));
    var var_2 = Struct_1(0i, vec3<bool>(!all(vec4<bool>(false, true, true, false)), u_input.a.x > _wgslsmith_sub_i32(-u_input.a.x, global0.c.x), !all(vec4<bool>(global0.b.x, true, global0.b.x, global0.b.x))), global0.c, _wgslsmith_div_vec3_f32(global0.d, _wgslsmith_f_op_vec4_f32(func_3(func_4(_wgslsmith_mod_vec4_u32(vec4<u32>(global0.e.x, global0.e.x, global0.e.x, global0.e.x), global2[_wgslsmith_index_u32(var_1.x, 20u)]), Struct_1(54950i, vec3<bool>(true, global0.b.x, global0.b.x), vec2<i32>(global0.a, -2147483647i), global0.d, vec4<u32>(4294967295u, 4294967295u, 1u, var_1.x)), func_2(3278u, vec4<u32>(global0.e.x, 30414u, global0.e.x, 7375u), 35652u), global0.c).x)).xyw), global0.e);
    var var_3 = Struct_1(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(var_2.c, -vec2<i32>(var_2.a, var_2.c.x)), -2147483647i), !(!(!var_2.b)), vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_add_i32(var_2.c.x, 48500i), _wgslsmith_add_i32(2147483647i, var_2.a)), -12138i), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-259f + arg_0), -1099f, _wgslsmith_f_op_f32(f32(-1f) * -1326f)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global0.d)))), !global0.b)), global2[_wgslsmith_index_u32(var_1.x, 20u)]);
    let var_4 = Struct_1(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(var_3.a, global0.c.x), u_input.a)) >> (_wgslsmith_add_u32((var_1.x | 73447u) << (global0.e.x % 32u), global0.e.x) % 32u), !global0.b, ~global0.c, var_3.d, vec4<u32>(36280u, func_4(vec4<u32>(~var_1.x, 1u, ~15878u, _wgslsmith_sub_u32(var_3.e.x, var_2.e.x)), func_2(~var_3.e.x, global2[_wgslsmith_index_u32(var_1.x, 20u)] << (vec4<u32>(1u, 0u, 4719u, var_3.e.x) % vec4<u32>(32u)), global0.e.x), func_2(_wgslsmith_add_u32(47713u, var_3.e.x), global2[_wgslsmith_index_u32(var_2.e.x, 20u)], 1u), _wgslsmith_div_vec2_i32(vec2<i32>(0i, -26426i), abs(vec2<i32>(1i, u_input.a.x)))).x, 27781u, var_2.e.x));
    return Struct_1(u_input.a.x, !var_3.b, ~(-min(countOneBits(global0.c), _wgslsmith_mult_vec2_i32(global0.c, var_4.c))), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_2.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -1522f))), 557f, var_3.d.x), ~global2[_wgslsmith_index_u32(~reverseBits(var_3.e.x & var_2.e.x), 20u)]);
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> vec2<i32> {
    let var_0 = 137846u;
    global3 = ~countOneBits(~(~arg_2));
    let var_1 = !vec3<bool>(firstLeadingBit(arg_1.c.x >> (arg_0 % 32u)) == 1i, global0.b.x, true);
    let var_2 = true;
    var var_3 = 1435f;
    return abs(u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_f32(step(1430f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(550f + global0.d.x))));
    let var_0 = !select(global0.b.xx, vec2<bool>(!(global0.a != global0.c.x), ~global0.a >= _wgslsmith_sub_i32(71545i, 22001i)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.d.x)), _wgslsmith_f_op_f32(-global0.d.x)) < _wgslsmith_f_op_f32(555f - _wgslsmith_f_op_f32(-221f * global0.d.x)));
    global3 = 4294967295u;
    var var_1 = Struct_1(u_input.a.x, select(global0.b, global0.b, !global0.b), func_5(0u, func_1(_wgslsmith_div_f32(global0.d.x, global0.d.x)), countOneBits(reverseBits(global0.e.x))) >> (~func_1(1398f).e.ww % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(313f - -1000f))), _wgslsmith_f_op_f32(ceil(func_2(global0.e.x, global2[_wgslsmith_index_u32(global0.e.x, 20u)], global0.e.x).d.x)), _wgslsmith_f_op_f32(floor(-819f)))), global0.e);
    var var_2 = _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(0u, 16004u)), select(var_1.e.zw, var_1.e.zz, vec2<bool>(var_1.b.x, false)) ^ var_1.e.xx), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(0u, _wgslsmith_clamp_u32(var_1.e.x, var_1.e.x, 0u)), abs(global0.e.x)), 43434u));
    var var_3 = Struct_1(func_1(global0.d.x).a, vec3<bool>(true, func_2(abs(1u), countOneBits(~vec4<u32>(var_1.e.x, 48138u, var_1.e.x, var_1.e.x)), var_1.e.x).b.x, var_1.b.x), u_input.a, vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -389f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d.x)))), select(global0.e, global0.e, !vec4<bool>(var_1.c.x > 4005i, any(vec4<bool>(var_1.b.x, false, false, global0.b.x)), any(global0.b.yx), var_0.x)));
    let var_4 = select(vec3<bool>(all(func_1(_wgslsmith_f_op_f32(global0.d.x * -748f)).b.xz), select(var_0.x, true, func_1(func_1(550f).d.x).b.x), !func_2(var_1.e.x, ~var_3.e, ~var_3.e.x).b.x), vec3<bool>(global0.b.x, !all(!global0.b.yy), !(true & var_1.b.x)), select(false, var_3.b.x, !(!(!global0.b.x))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~_wgslsmith_sub_u32(1u, var_1.e.x), vec4<u32>(~var_1.e.x, select(var_1.e.x, 0u, var_3.b.x), var_3.e.x, firstLeadingBit(global0.e.x)), 1u).d.x + -515f));
    var var_5 = ((((global0.e.x | 863u) >> ((var_3.e.x >> (var_3.e.x % 32u)) % 32u)) | 1u) & 17651u) != ~func_1(-1000f).e.x;
    let x = u_input.a;
    s_output = StorageBuffer((global0.e.x ^ _wgslsmith_add_u32(1074u & var_1.e.x, ~51258u)) ^ ~(~24977u), 47736u, var_1.d.xz, -1000f, -182f);
}

