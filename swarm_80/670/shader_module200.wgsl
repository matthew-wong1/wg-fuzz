struct Struct_1 {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(4668i, vec2<i32>(2147483647i, i32(-2147483648)), vec4<u32>(58806u, 1u, 4294967295u, 74093u), Struct_1(vec2<u32>(3851u, 1u), -1i, vec2<u32>(4294967295u, 0u), 29069i), Struct_1(vec2<u32>(101356u, 8225u), -830i, vec2<u32>(1u, 0u), -1i)));

var<private> global2: f32 = -1602f;

var<private> global3: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global4: array<u32, 12>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> vec3<i32> {
    return _wgslsmith_sub_vec3_i32(vec3<i32>(global0.d.b, u_input.c, i32(-1i) * -3926i), vec3<i32>(global0.d.b ^ abs(-29150i), ~_wgslsmith_div_i32(global0.b.x, u_input.c), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(21325i, u_input.a, global0.d.d) >> (_wgslsmith_clamp_u32(global4[_wgslsmith_index_u32(arg_0.a.x, 12u)], arg_0.a.x, 23109u) % 32u), -global0.b.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: i32) -> vec2<u32> {
    global2 = -219f;
    let var_0 = all(vec3<bool>(global3.x, !(!global3.x && true), true));
    let var_1 = 144f;
    var var_2 = global0.e;
    let var_3 = !select(vec2<bool>(all(!vec4<bool>(false, global3.x, false, false)), !(u_input.b <= global0.d.c.x)), global3.zy, !vec2<bool>(global3.x, true));
    return _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(min(var_2.a, global0.e.c), vec2<u32>(0u, ~1u) << (var_2.a % vec2<u32>(32u))), ~min(var_2.a, abs(global0.e.a) & vec2<u32>(1u, global0.e.c.x)));
}

fn func_2() -> bool {
    global0 = Struct_2(u_input.c, min(global0.b, global0.b), vec4<u32>(global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(global0.d.a.x, 59047u, u_input.b) ^ global0.c.wxx, vec3<u32>(global4[_wgslsmith_index_u32(57788u, 12u)], 1u, u_input.b) & vec3<u32>(4294967295u, global4[_wgslsmith_index_u32(u_input.b, 12u)], global0.d.a.x)), 12u)], u_input.b, global4[_wgslsmith_index_u32(global0.c.x, 12u)], _wgslsmith_sub_u32(firstLeadingBit(1u), ~_wgslsmith_div_u32(u_input.b, 3554u))), Struct_1(global0.c.xz, 1i, global0.c.yz, -1i), Struct_1(~global0.c.ww | _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(global0.d.c, vec2<u32>(global0.d.a.x, global0.e.a.x)), global0.e.a), _wgslsmith_sub_i32(-2147483647i, 0i), vec2<u32>(u_input.b, ~(~global4[_wgslsmith_index_u32(10967u, 12u)])), _wgslsmith_dot_vec4_i32(-_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -77445i, global0.b.x, 2147483647i), vec4<i32>(u_input.a, 0i, 5774i, u_input.c)), vec4<i32>(-1i, 2147483647i, 0i, -28515i) & ~vec4<i32>(u_input.a, -2147483647i, -25739i, -4335i))));
    var var_0 = Struct_1(func_4(reverseBits(~func_3(global0.e)), global0.e.b), _wgslsmith_clamp_i32(func_3(global0.e).x, 10655i, min(~(-1i), global0.b.x)), _wgslsmith_sub_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(~4294967295u, global0.e.a.x), ~_wgslsmith_sub_vec2_u32(global0.e.c, vec2<u32>(global4[_wgslsmith_index_u32(u_input.b, 12u)], u_input.b)), firstTrailingBit(vec2<u32>(0u, 19717u))), vec2<u32>(firstTrailingBit(~1u), global0.d.a.x)), 2147483647i);
    global0 = Struct_2((_wgslsmith_add_i32(~u_input.c, 1i) | global0.b.x) & global0.e.b, _wgslsmith_div_vec2_i32(vec2<i32>(74803i, -(~26021i)), -(~firstTrailingBit(vec2<i32>(-114i, var_0.d)))), ~countOneBits(select(global0.c, vec4<u32>(global4[_wgslsmith_index_u32(27791u, 12u)], 4294967295u, 1u, 0u), !vec4<bool>(true, global3.x, global3.x, false))), global0.e, Struct_1(func_4(func_3(Struct_1(var_0.a, global0.e.d, global0.e.a, 26363i)), _wgslsmith_div_i32(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.d.d, u_input.a, u_input.a, -61014i), vec4<i32>(0i, 1i, var_0.d, -455i)))), 2147483647i, _wgslsmith_mult_vec2_u32(~_wgslsmith_sub_vec2_u32(vec2<u32>(global0.c.x, 1u), var_0.a), ~(vec2<u32>(var_0.a.x, global0.c.x) | var_0.c)), ~firstTrailingBit(-35391i)));
    return false;
}

fn func_5(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> Struct_1 {
    global3 = vec4<bool>(func_2(), select(arg_1.x, !global3.x || true, false), global3.x, all(select(vec3<bool>(true, true, true), select(!global3.wzz, select(global3.yxz, arg_1.xzz, false), any(vec4<bool>(false, global3.x, global3.x, true))), select(true, all(vec2<bool>(arg_1.x, global3.x)), global3.x))));
    let var_0 = global0.d.c.x;
    global0 = global1[_wgslsmith_index_u32(max(4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(min(~vec4<u32>(u_input.b, global0.d.c.x, arg_2.c.x, arg_0), vec4<u32>(0u, arg_0, 100025u, 0u)), vec4<u32>(countOneBits(0u), 1u, ~0u, firstLeadingBit(global4[_wgslsmith_index_u32(u_input.b, 12u)]))), func_4(vec3<i32>(-27812i, ~arg_2.b, u_input.c), -_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, global0.e.b), vec3<i32>(global0.b.x, 44691i, global0.a))).x)), 1u)];
    let var_1 = 1u;
    var var_2 = global0.e.d;
    return arg_2;
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(1u, vec4<bool>(global3.x, false && global3.x, !(true && any(global3.zwx)), func_2()), global0.e);
    var_0 = Struct_1(~(global0.e.c ^ var_0.c), global0.d.b, global0.c.yw, -1i);
    let var_1 = global3.wx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(666f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(532f + 493f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(1688f, -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -618f))))), select(_wgslsmith_div_u32(1u, 1u) <= _wgslsmith_dot_vec4_u32(vec4<u32>(11372u, u_input.b, global4[_wgslsmith_index_u32(u_input.b, 12u)], u_input.b), global0.c), true, any(global3.xx)))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-421f + -434f)) * _wgslsmith_f_op_f32(173f + -302f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(382f - 334f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-2280f, -1478f)), 432f), all(!vec2<bool>(true, var_1.x)))))));
    var_0 = Struct_1(~(_wgslsmith_mod_vec2_u32(~vec2<u32>(53988u, 0u), vec2<u32>(var_0.a.x, var_0.a.x)) << (vec2<u32>(abs(global0.c.x), _wgslsmith_div_u32(global0.d.c.x, 20764u)) % vec2<u32>(32u))), firstLeadingBit(reverseBits(max(~1i, _wgslsmith_clamp_i32(var_0.d, 2147483647i, -68014i)))), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(~global4[_wgslsmith_index_u32(1u, 12u)], _wgslsmith_div_u32(u_input.b, 0u), ~global4[_wgslsmith_index_u32(4294967295u, 12u)]), ~firstLeadingBit(var_0.a.x)), vec2<u32>(u_input.b, 0u & u_input.b)), _wgslsmith_sub_i32(var_0.d, 45896i));
    return Struct_2(_wgslsmith_div_i32(-global0.a, var_0.d), vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_0.d, 3466i, 2147483647i), vec3<i32>(-50943i, -22473i, global0.d.b)), vec3<i32>(global0.a, global0.a, -16403i)) >> (firstTrailingBit(_wgslsmith_sub_u32(u_input.b, var_0.c.x)) % 32u), u_input.c), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(global4[_wgslsmith_index_u32(133491u, 12u)], 1u, 0u, 0u)), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(global0.c, vec4<u32>(u_input.b, 1u, var_0.c.x, var_0.a.x)), ~vec4<u32>(31838u, 53312u, 0u, var_0.a.x))), countOneBits(global0.c)), Struct_1(vec2<u32>(var_0.a.x & var_0.c.x, global0.c.x >> (0u % 32u)) >> (vec2<u32>(~4294967295u, 7269u) % vec2<u32>(32u)), -2147483647i, ~vec2<u32>(~1u, _wgslsmith_dot_vec3_u32(global0.c.wyz, vec3<u32>(6907u, u_input.b, var_0.a.x))), -24809i), Struct_1(max(global0.c.zy, countOneBits(vec2<u32>(4294967295u, global0.c.x))), u_input.c, global0.c.wx, min(_wgslsmith_mult_i32(~(-2147483647i), global0.e.d & -1i), var_0.b)));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32) -> i32 {
    var var_0 = Struct_2(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), reverseBits(~vec2<i32>(arg_0.e.b, 0i))), global0.b, countOneBits(arg_0.c), arg_1.e, func_5(~firstTrailingBit(4294967295u), !(!(!vec4<bool>(true, true, true, global3.x))), global0.e));
    global1 = array<Struct_2, 1>();
    let var_1 = var_0.e.a;
    let var_2 = Struct_1(abs(abs(_wgslsmith_add_vec2_u32(var_0.c.ww, vec2<u32>(755u, var_1.x)) ^ vec2<u32>(var_1.x, global4[_wgslsmith_index_u32(40952u, 12u)]))), ~_wgslsmith_mod_i32(-func_1().a, 1i), abs(vec2<u32>(_wgslsmith_add_u32(min(var_1.x, global4[_wgslsmith_index_u32(4294967295u, 12u)]), 15759u ^ arg_1.c.x), _wgslsmith_dot_vec2_u32(arg_0.c.wx, _wgslsmith_mod_vec2_u32(vec2<u32>(8309u, arg_1.c.x), vec2<u32>(var_0.d.a.x, 0u))))), -arg_0.e.b);
    var var_3 = arg_1.d;
    return max(6151i, ~(-86746i));
}

fn func_7(arg_0: i32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_1 {
    global0 = Struct_2(global0.e.d, countOneBits(vec2<i32>(global0.d.b, global0.e.d) & global0.b) | vec2<i32>(u_input.c, -1i), arg_3.c, arg_3.d, Struct_1(~_wgslsmith_div_vec2_u32(func_5(1u, vec4<bool>(false, global3.x, global3.x, global3.x), Struct_1(global0.d.a, -52236i, arg_3.c.zy, arg_2.b)).c, vec2<u32>(0u, global0.d.a.x)), i32(-1i) * -30874i, func_5(global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_mod_u32(0u, u_input.b)), 12u)], !select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global3.x, true, global3.x, true), true), arg_2).c, ~(-(arg_3.b.x << (arg_2.c.x % 32u)))));
    var var_0 = _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, ~global0.b.x, 18637i), ~(~(-vec3<i32>(-38788i, -1688i, -1i)))), _wgslsmith_add_vec3_i32(vec3<i32>(firstLeadingBit(1i), -1i, arg_0), min(vec3<i32>(_wgslsmith_sub_i32(0i, arg_3.a), arg_3.a, min(-1i, arg_3.d.b)), _wgslsmith_mult_vec3_i32(-vec3<i32>(u_input.a, arg_2.d, -1i), abs(vec3<i32>(arg_0, arg_2.d, arg_2.d))))));
    var var_1 = global3.x;
    var var_2 = global3.x;
    var_0 = ~vec3<i32>(abs(arg_2.b), func_5(_wgslsmith_div_u32(4294967295u, arg_3.d.c.x), !vec4<bool>(false, global3.x, global3.x, global3.x), arg_3.d).b, func_5(arg_2.a.x, !vec4<bool>(global3.x, true, true, global3.x), func_1().d).b) ^ vec3<i32>(_wgslsmith_mult_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(global0.e.d, arg_0, arg_2.d), vec3<i32>(-45888i, var_0.x, arg_3.e.b)), global0.e.d), ~reverseBits(global0.e.b), ~(-reverseBits(arg_0)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global4[_wgslsmith_index_u32(0u, 12u)], global0.c.x), 1u)];
    var var_1 = firstTrailingBit(2147483647i);
    global0 = Struct_2(u_input.c, (vec2<i32>(global0.b.x, ~(-1i)) | global0.b) << (_wgslsmith_div_vec2_u32(global0.e.c, var_0.c.wx) % vec2<u32>(32u)), ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.e.c.x, 1u, u_input.b, 0u), var_0.c), var_0.c)), func_7(func_6(func_1(), func_1(), _wgslsmith_mod_i32(abs(1i), var_0.d.d)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(-927f)), _wgslsmith_f_op_f32(-465f - 706f))), global0.e, func_1()), global0.d);
    var var_2 = _wgslsmith_f_op_f32(round(131f));
    let var_3 = _wgslsmith_clamp_vec2_i32(~var_0.b, -global0.b, abs(firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, global0.e.b), global0.b, vec2<i32>(u_input.c, global0.a))) ^ reverseBits(~vec2<i32>(global0.b.x, u_input.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(1f))));
}

