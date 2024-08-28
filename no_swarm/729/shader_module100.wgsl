struct Struct_1 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: bool,
    d: Struct_3,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 19> = array<f32, 19>(-2318f, 797f, 1357f, 565f, 337f, 544f, -1426f, -675f, -542f, 725f, 190f, 332f, 1067f, -218f, -645f, 1469f, -1288f, -1630f, -1006f);

var<private> global1: array<bool, 26>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<i32> {
    var var_0 = Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(reverseBits(~32631u), ~(~u_input.a)), 26u)], any(select(select(vec4<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)], false, global1[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<bool>(true, global1[_wgslsmith_index_u32(0u, 26u)], global1[_wgslsmith_index_u32(1u, 26u)], false), true), vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)], false, global1[_wgslsmith_index_u32(4294967295u, 26u)]), true)), !global1[_wgslsmith_index_u32(select(u_input.c, 110828u | u_input.b.x, global1[_wgslsmith_index_u32(~u_input.a, 26u)]), 26u)], all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 26u)], true))), global1[_wgslsmith_index_u32(0u, 26u)]);
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(32257u, 19u)], -1210f, global0[_wgslsmith_index_u32(u_input.a, 19u)], arg_0), vec4<f32>(1165f, global0[_wgslsmith_index_u32(u_input.b.x, 19u)], global0[_wgslsmith_index_u32(u_input.a, 19u)], 1906f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, global0[_wgslsmith_index_u32(u_input.a, 19u)], 761f) * vec4<f32>(arg_0, global0[_wgslsmith_index_u32(u_input.a, 19u)], 619f, -1000f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -2832f, -636f, 688f) - vec4<f32>(-1698f, -489f, arg_0, arg_0))))))), vec2<f32>(arg_0, _wgslsmith_div_f32(-1466f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 19u)] - 251f))), any(!var_0.a), Struct_3(_wgslsmith_f_op_f32(ceil(-1088f)), !(!select(vec3<bool>(true, true, var_0.a.x), var_0.a.wzz, var_0.a.yyx))), !select(vec4<bool>(global1[_wgslsmith_index_u32(abs(1u), 26u)], var_0.a.x, var_0.a.x, true), vec4<bool>(!var_0.a.x, true, global1[_wgslsmith_index_u32(reverseBits(u_input.c), 26u)], all(var_0.a.xwz)), select(true, all(var_0.a.yzz), var_0.b)));
    var var_2 = 28897i;
    var var_3 = u_input.b.x;
    let var_4 = Struct_1(!(!(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 26u)], var_0.b, var_1.d.b.x), var_0.a, vec4<bool>(false, false, var_1.d.b.x, false)))), (true & !(false || var_1.e.x)) & var_0.a.x);
    return vec2<i32>(firstLeadingBit(((177i << (u_input.c % 32u)) ^ ~arg_1) >> (u_input.b.x % 32u)), min(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 1i, arg_1), _wgslsmith_mult_vec3_i32(vec3<i32>(15011i, arg_1, arg_1), vec3<i32>(arg_1, -1i, arg_1))), arg_1) | arg_1);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_2) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-432f, global0[_wgslsmith_index_u32(arg_1.a, 19u)]) * 1430f);
    let var_1 = select(arg_1.b.a.wy, vec2<bool>((select(arg_1.b.b, true, arg_1.b.a.x) == (arg_3.c.x != arg_3.c.x)) || true, !(!(false | arg_1.b.a.x))), arg_1.b.a.xz);
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_mult_i32(17672i, arg_1.c.x), _wgslsmith_sub_i32(func_3(1000f, arg_3.c.x).x, arg_3.c.x)), _wgslsmith_div_i32(~arg_3.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.c.x, arg_3.c.x), arg_1.c)) & firstTrailingBit(-22064i), -countOneBits(26284i));
    return _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(min(~vec4<i32>(-40984i, arg_3.c.x, 39481i, var_2.x), _wgslsmith_div_vec4_i32(vec4<i32>(arg_3.c.x, 8287i, 1i, arg_3.c.x), vec4<i32>(-16030i, arg_1.c.x, arg_3.c.x, 15759i))), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, arg_1.c.x, 2147483647i, -31519i), vec4<i32>(arg_1.c.x, 1i, 1i, arg_1.c.x), vec4<i32>(59195i, var_2.x, arg_3.c.x, arg_3.c.x)), vec4<i32>(10602i, arg_3.c.x, arg_1.c.x, var_2.x))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(0i, arg_3.c.x), vec2<i32>(-2147483647i, arg_1.c.x), var_2.yz), arg_3.c), _wgslsmith_mult_i32(func_3(arg_2.x, arg_1.c.x).x, 2147483647i), 24531i, -_wgslsmith_add_i32(arg_1.c.x, arg_1.c.x)) >> (abs(_wgslsmith_div_vec4_u32(vec4<u32>(arg_0.x, 43084u, arg_3.a, 4294967295u), u_input.b)) % vec4<u32>(32u)));
}

fn func_2() -> vec2<i32> {
    var var_0 = (func_4(~vec2<u32>(u_input.a, u_input.b.x) >> (u_input.b.xw % vec2<u32>(32u)), Struct_2(4294967295u << (u_input.c % 32u), Struct_1(vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 26u)], true, global1[_wgslsmith_index_u32(89824u, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)]), global1[_wgslsmith_index_u32(4294967295u, 26u)]), func_3(-628f, 208i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1812f, 866f) - vec2<f32>(global0[_wgslsmith_index_u32(0u, 19u)], -1475f))), Struct_2(u_input.b.x, Struct_1(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)], true), false), vec2<i32>(-2147483647i, 2147483647i))) | ~(-2147483647i)) & _wgslsmith_dot_vec2_i32(vec2<i32>(~(-29541i), ~abs(1i)), vec2<i32>(-firstLeadingBit(-24900i), -_wgslsmith_clamp_i32(2147483647i, 0i, 31549i)));
    let var_1 = Struct_3(_wgslsmith_div_f32(2683f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.a, 19u)])), select(vec3<bool>(!all(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 26u)], global1[_wgslsmith_index_u32(u_input.b.x, 26u)], false)), global1[_wgslsmith_index_u32(abs(u_input.c), 26u)] & any(vec3<bool>(global1[_wgslsmith_index_u32(0u, 26u)], true, global1[_wgslsmith_index_u32(0u, 26u)])), !(!global1[_wgslsmith_index_u32(44378u, 26u)])), !vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 26u)], !global1[_wgslsmith_index_u32(6229u, 26u)]), select(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(38943u, u_input.c), 26u)], all(!vec2<bool>(global1[_wgslsmith_index_u32(u_input.c, 26u)], global1[_wgslsmith_index_u32(u_input.c, 26u)])), !global1[_wgslsmith_index_u32(~4344u, 26u)])));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-287f, _wgslsmith_f_op_f32(var_1.a - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~u_input.b.x, 19u)])))));
    let var_3 = Struct_2(~reverseBits(_wgslsmith_mod_u32(abs(u_input.a), 1u)), Struct_1(vec4<bool>(-643f < _wgslsmith_f_op_f32(round(var_1.a)), global1[_wgslsmith_index_u32(~(u_input.c ^ u_input.b.x), 26u)], true, var_1.b.x), false), -firstLeadingBit(vec2<i32>(0i, _wgslsmith_mult_i32(-1i, 1i))));
    var var_4 = !global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.b.wz, u_input.b.wy ^ select(u_input.b.wx, u_input.b.zx, var_1.b.x)), 26u)];
    return var_3.c;
}

fn func_5(arg_0: vec2<i32>, arg_1: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(global0[_wgslsmith_index_u32(0u, 19u)]))))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(28207u >> (u_input.c % 32u), u_input.a) | (~u_input.a | (u_input.a ^ 69163u)), 19u)], 189f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10738u, 19u)])), _wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(min(4294967295u, u_input.b.x), 19u)]))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(u_input.b.x, 19u)]) * vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(1u, 19u)]))))), global1[_wgslsmith_index_u32(~(~19995u), 26u)], Struct_3(global0[_wgslsmith_index_u32(44420u, 19u)], !vec3<bool>(!global1[_wgslsmith_index_u32(u_input.c, 26u)], global1[_wgslsmith_index_u32(max(0u, 37315u), 26u)], true)), !vec4<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(u_input.b.yw, u_input.b.yw), 26u)], true, (false & global1[_wgslsmith_index_u32(u_input.b.x, 26u)]) | (false == global1[_wgslsmith_index_u32(4294967295u, 26u)]), any(select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.c, 26u)], true, global1[_wgslsmith_index_u32(4294967295u, 26u)]), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)], global1[_wgslsmith_index_u32(u_input.c, 26u)], true), true))));
    var var_1 = Struct_3(-434f, !(!select(vec3<bool>(true, var_0.e.x, var_0.d.b.x), vec3<bool>(false, var_0.c, true), global1[_wgslsmith_index_u32(1u, 26u)])));
    let var_2 = vec4<bool>(var_0.c, var_1.b.x, var_1.b.x, !all(vec3<bool>(false, true, var_0.d.b.x)));
    var var_3 = var_0.d;
    var_1 = Struct_3(-798f, var_2.ywy);
    return Struct_2(_wgslsmith_dot_vec4_u32(max(vec4<u32>(1u, ~u_input.b.x, 0u, 70394u), ~u_input.b), u_input.b), Struct_1(var_2, any(select(var_2.xzx, !var_3.b, all(var_2)))), vec2<i32>(-1i, 2147483647i));
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = arg_0.b.b;
    var var_1 = vec2<u32>(arg_0.a, ~arg_0.a);
    var var_2 = u_input.b.zxx;
    let var_3 = Struct_2(4294967295u, func_5(vec2<i32>(arg_0.c.x, arg_0.c.x), vec2<i32>(26780i, func_3(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_0.a, 19u)] * global0[_wgslsmith_index_u32(arg_0.a, 19u)]), ~43352i).x)).b, vec2<i32>(0i, 1i));
    let var_4 = !arg_0.b.a.xz;
    return var_3.b;
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = array<f32, 19>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-351f - 1269f))) * -3128f);
    global1 = array<bool, 26>();
    return func_6(func_5(func_2(), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-36620i, 21163i), vec2<i32>(48934i, 0i)), ~vec2<i32>(40955i, 0i)) ^ func_3(var_0, -1i)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 19>();
    global1 = array<bool, 26>();
    var var_0 = !vec3<bool>(global1[_wgslsmith_index_u32(~(~u_input.c), 26u)], global1[_wgslsmith_index_u32(u_input.a, 26u)], false);
    let var_1 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(abs(-648f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 19u)])))));
    var var_2 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 19u)]), global0[_wgslsmith_index_u32(min(u_input.b.x, 1u), 19u)]) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(u_input.c, 19u)], global0[_wgslsmith_index_u32(83977u, 19u)]) - vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 19u)], -1510f))))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(714f, -1000f, _wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(trunc(var_2.x))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x), vec4<f32>(1164f, global0[_wgslsmith_index_u32(30264u, 19u)], -595f, -925f))))))));
    let var_4 = false;
    var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_3.xy)));
    global0 = array<f32, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~countOneBits(~countOneBits(vec3<i32>(2147483647i, -2147483647i, 2147483647i))));
}

