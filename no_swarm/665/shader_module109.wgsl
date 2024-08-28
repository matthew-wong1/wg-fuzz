struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: i32,
}

struct Struct_5 {
    a: f32,
    b: vec3<u32>,
    c: Struct_3,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 4>;

var<private> global1: Struct_2 = Struct_2(Struct_1(1u), Struct_1(0u), false, vec3<i32>(i32(-2147483648), -25046i, -21871i));

var<private> global2: u32;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -847f), _wgslsmith_f_op_f32(trunc(-860f))) + _wgslsmith_f_op_f32(f32(-1f) * -902f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-821f + 1016f) - 735f))), -1205f));
    global2 = ~global1.a.a;
    let var_1 = global1.b;
    global1 = Struct_2(Struct_1(63905u), Struct_1(u_input.e.x), any(!(!select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, global1.c), true))), ~(vec3<i32>(global1.d.x, select(-2147483647i, -2147483647i, arg_1), -1i) << (_wgslsmith_sub_vec3_u32(u_input.e, ~u_input.e) % vec3<u32>(32u))));
    var var_2 = ~vec2<u32>(var_1.a, ~1u);
    return ~arg_0;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: Struct_4) -> i32 {
    global2 = 1u;
    global1 = Struct_2(global1.a, Struct_1(_wgslsmith_sub_u32(arg_1.b.a, 36008u)), !(!all(!vec3<bool>(true, global1.c, true))), arg_0.a);
    global1 = Struct_2(Struct_1(_wgslsmith_clamp_u32(firstTrailingBit(1u), global1.a.a, ~u_input.e.x)), Struct_1(6523u), all(vec4<bool>(global1.c, global1.c, false, select(any(vec3<bool>(true, true, global1.c)), true, true))), -vec3<i32>(-1i, _wgslsmith_mult_i32(func_3(-2147483647i, global1.c), min(arg_2.x, 3154i)), -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.b, arg_3.a.x, arg_3.b, 3333i), u_input.c)));
    let var_0 = -arg_3.a.x;
    var var_1 = max(select(1i, -3114i, 1149f < _wgslsmith_f_op_f32(step(arg_1.a, _wgslsmith_f_op_f32(arg_1.a + -965f)))), arg_0.b);
    return 1i;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_3) -> Struct_2 {
    var var_0 = select(!vec2<bool>(!all(vec2<bool>(false, global1.c)), !(84366u <= u_input.e.x)), vec2<bool>(true, true), select(select(select(vec2<bool>(true, true), !vec2<bool>(global1.c, arg_1.c), any(vec3<bool>(arg_1.c, false, true))), select(vec2<bool>(true, true), select(vec2<bool>(true, arg_1.c), vec2<bool>(global1.c, global1.c), vec2<bool>(false, false)), vec2<bool>(true, global1.c)), vec2<bool>(true, true)), select(select(select(vec2<bool>(arg_1.c, global1.c), vec2<bool>(true, arg_1.c), true), select(vec2<bool>(true, false), vec2<bool>(true, global1.c), vec2<bool>(global1.c, true)), !vec2<bool>(global1.c, arg_1.c)), vec2<bool>(true, all(vec3<bool>(arg_1.c, true, false))), global1.c), select(vec2<bool>(true, true), vec2<bool>(global1.c, global1.c), true)));
    global2 = arg_2.b.a;
    var_0 = vec2<bool>(!any(select(vec4<bool>(arg_1.c, false, true, true), select(vec4<bool>(true, false, arg_1.c, global1.c), vec4<bool>(global1.c, global1.c, arg_1.c, true), false), !vec4<bool>(true, arg_1.c, true, false))), all(!select(!vec2<bool>(arg_1.c, arg_1.c), select(vec2<bool>(true, arg_1.c), vec2<bool>(false, false), false), !vec2<bool>(arg_1.c, global1.c))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.a, arg_2.a) * vec2<f32>(arg_2.a, arg_2.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-503f, 858f) - vec2<f32>(arg_2.a, 166f))))))));
    global1 = arg_1;
    return arg_1;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(u_input.c.zxz, i32(-1i) * -select(~0i, _wgslsmith_clamp_i32(29948i, 2147483647i, global1.d.x), global1.c));
    let var_1 = func_4(_wgslsmith_div_vec2_i32(abs(vec2<i32>(_wgslsmith_mult_i32(var_0.a.x, 2147483647i), func_2(var_0, Struct_3(-959f, global1.a), vec3<i32>(33566i, u_input.d.x, u_input.d.x), var_0))), firstTrailingBit(abs(vec2<i32>(global1.d.x, 2147483647i)))), Struct_2(Struct_1(_wgslsmith_clamp_u32(~u_input.e.x, ~u_input.e.x, u_input.e.x)), global1.b, select(any(vec2<bool>(global1.c, global1.c)), global1.c, global1.c), -select(abs(vec3<i32>(global1.d.x, var_0.a.x, -33891i)), ~global1.d, 22291u == global1.b.a)), Struct_3(727f, global1.a));
    var var_2 = !select(vec2<bool>(global1.c, true), !(!select(vec2<bool>(global1.c, var_1.c), vec2<bool>(global1.c, var_1.c), vec2<bool>(true, var_1.c))), select(vec2<bool>(!global1.c, true), select(select(vec2<bool>(false, global1.c), vec2<bool>(false, global1.c), global1.c), !vec2<bool>(true, var_1.c), !vec2<bool>(false, var_1.c)), true));
    let var_3 = Struct_4(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, global1.d.x, _wgslsmith_div_i32(-16368i, ~(-2147483647i))), u_input.c.zwx), select(min(u_input.c.x >> (firstLeadingBit(4294967295u) % 32u), firstLeadingBit(-global1.d.x)), _wgslsmith_sub_i32(10961i, -1i), global1.c));
    let var_4 = ~(abs(countOneBits(~vec4<u32>(global1.a.a, 102788u, var_1.a.a, u_input.e.x))) | _wgslsmith_mult_vec4_u32(~vec4<u32>(global1.b.a, 1u, u_input.e.x, 0u), ~vec4<u32>(u_input.e.x, var_1.b.a, var_1.a.a, var_1.b.a)));
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f - -512f), _wgslsmith_f_op_f32(sign(251f))))))), global1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = var_0.b.a;
    var var_2 = Struct_4(select(u_input.c.yyw, vec3<i32>(-_wgslsmith_mod_i32(global1.d.x, u_input.c.x), -max(-31192i, 7565i), u_input.d.x), !func_4(_wgslsmith_add_vec2_i32(u_input.a, u_input.c.yz), func_4(global1.d.yx, Struct_2(var_0.b, var_0.b, false, global1.d), Struct_3(-1000f, var_0.b)), func_1()).c), 1i);
    let var_3 = select(_wgslsmith_div_vec3_i32((_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, -1i), vec3<i32>(var_2.b, -1i, 71843i)) >> (~vec3<u32>(1u, global1.b.a, 2045u) % vec3<u32>(32u))) << (~(~vec3<u32>(0u, var_0.b.a, 62747u)) % vec3<u32>(32u)), u_input.d.wzw), global1.d, !global1.c);
    var var_4 = Struct_2(global1.b, func_1().b, any(select(select(select(vec2<bool>(global1.c, global1.c), vec2<bool>(true, global1.c), false), vec2<bool>(true, true), global1.c), vec2<bool>(!global1.c, false & global1.c), vec2<bool>(false, any(vec3<bool>(global1.c, true, global1.c))))), (reverseBits(select(u_input.c.wyx, u_input.c.yxy, false)) >> (u_input.e % vec3<u32>(32u))) ^ vec3<i32>(abs(var_3.x) | func_3(var_2.b, global1.c), func_3(-1i, global1.c & global1.c), func_4(vec2<i32>(36847i, -1i), func_4(vec2<i32>(var_2.a.x, -1i), Struct_2(var_0.b, Struct_1(u_input.e.x), global1.c, var_3), Struct_3(var_0.a, var_0.b)), Struct_3(-847f, var_0.b)).d.x));
    var_2 = Struct_4(var_4.d, _wgslsmith_div_i32(firstTrailingBit(max(var_3.x | -19003i, 1i)), abs(i32(-1i) * -1i)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, 9879i, vec3<u32>(60009u >> (~var_4.b.a % 32u), 24462u, _wgslsmith_mod_u32(~0u, u_input.e.x) >> (_wgslsmith_add_u32(var_0.b.a ^ u_input.e.x, u_input.e.x) % 32u)), _wgslsmith_sub_u32(37569u, _wgslsmith_add_u32(47910u, firstTrailingBit(var_4.a.a))), vec3<i32>(~var_3.x, _wgslsmith_div_i32(-(2147483647i ^ var_4.d.x), var_2.a.x), firstLeadingBit(~(-59413i))));
}

