struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<f32>,
    c: i32,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_1,
    b: f32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_3, arg_3: vec2<i32>) -> i32 {
    let var_0 = arg_1.a.c;
    let var_1 = Struct_4(Struct_3(_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(arg_2.a, arg_2.a), ~(vec4<u32>(arg_1.a.b, global0.a.b, 3664u, 0u) >> (vec4<u32>(1u, 3379u, 77541u, 0u) % vec4<u32>(32u)))), global0.a, Struct_1(arg_2.e.a, arg_1.a.b, all(!vec4<bool>(global0.a.d.x, arg_1.a.d.x, false, true)), vec4<bool>(false, true, arg_1.a.a > global0.b, true)), !select(vec4<bool>(true, global0.a.d.x, var_0, arg_1.a.c), arg_2.d, arg_2.b.d), arg_1.a), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global0.b, arg_1.b))) + vec2<f32>(-1000f, global0.b)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_1.a.a, global0.b))))))), max(_wgslsmith_mod_i32(-arg_3.x, 9161i), arg_3.x), Struct_2(arg_1.a, arg_1.a), Struct_2(global0.a, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_2.b.a))), _wgslsmith_mult_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.a.b, arg_2.b.b), vec3<u32>(arg_2.e.b, arg_2.a.x, 4294967295u))), all(global0.a.d.zxz), !(!arg_1.a.d))));
    var var_2 = -(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(-arg_0.x, ~var_1.c, var_1.c, 2147483647i)) | -u_input.b);
    var_2 = ~min(_wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.c | arg_0.x, -var_1.c, _wgslsmith_sub_i32(-2147483647i, 1i), 0i)), vec4<i32>(_wgslsmith_sub_i32(arg_0.x, abs(-22847i)), var_2.x, _wgslsmith_mult_i32(var_2.x, 1i), u_input.b.x));
    let var_3 = Struct_3(~abs(_wgslsmith_mod_vec4_u32(arg_2.a, arg_2.a) >> (~vec4<u32>(55495u, arg_1.a.b, 26052u, var_1.e.b.b) % vec4<u32>(32u))), Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(298f, _wgslsmith_f_op_f32(-global0.b))))), arg_2.e.b, true, select(arg_2.c.d, vec4<bool>(var_0, true, var_1.e.a.b != arg_1.c, !arg_1.a.d.x), true)), global0.a, select(vec4<bool>(false, all(!global0.a.d), any(select(var_1.a.c.d, vec4<bool>(true, true, arg_1.a.c, global0.a.d.x), arg_1.a.d)), any(select(var_1.e.b.d.yx, vec2<bool>(false, true), vec2<bool>(true, false)))), vec4<bool>(global0.a.d.x, var_1.d.b.c, var_1.d.a.d.x, arg_1.a.d.x), !(!select(arg_1.a.d, vec4<bool>(false, var_1.a.c.c, arg_1.a.d.x, var_1.a.d.x), false))), global0.a);
    return _wgslsmith_mod_i32(firstTrailingBit(-1i), var_1.c);
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> u32 {
    global0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(abs(-1363f)), _wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(arg_2.a.zy, arg_0.a.yx)), vec2<u32>(arg_0.b.b, arg_0.e.b)), arg_0.e.c, !arg_0.e.d), 578f, 0u);
    let var_0 = Struct_3(~(~min(vec4<u32>(86642u, global0.c, global0.a.b, global0.a.b) | arg_2.a, ~arg_2.a)), arg_0.c, arg_0.b, vec4<bool>(true, false, false, true), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.c.a)) * 505f), _wgslsmith_mod_u32(0u, 14617u), any(arg_0.c.d.wx), vec4<bool>(arg_2.b.d.x, true & arg_2.e.d.x, true, !(arg_0.e.b != global0.c))));
    global0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(arg_0.e.a))))), var_0.a.x ^ (4294967295u | arg_2.b.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-1000f, global0.b)), -554f) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-701f + 1723f) + 534f), select(var_0.d, vec4<bool>(any(vec4<bool>(var_0.c.c, var_0.b.c, true, var_0.b.d.x)), true, var_0.c.c || false, true), vec4<bool>(true, true, any(vec2<bool>(false, true)), arg_2.e.c))), arg_2.e.a, global0.a.b);
    global0 = Struct_5(arg_0.c, _wgslsmith_f_op_f32(arg_2.c.a + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.c.a) + _wgslsmith_f_op_f32(-var_0.e.a)) * arg_0.e.a)), arg_2.e.b);
    let var_1 = Struct_5(arg_2.b, _wgslsmith_f_op_f32(select(global0.a.a, arg_2.c.a, _wgslsmith_dot_vec3_u32(arg_0.a.xzy, ~vec3<u32>(98258u, 70570u, 0u)) < 68086u)), _wgslsmith_clamp_u32(0u, 66419u, arg_0.e.b));
    return var_1.c;
}

fn func_2() -> f32 {
    global0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(548f, global0.a.a)))), func_4(Struct_3(vec4<u32>(19079u, 5826u, global0.c, global0.c), Struct_1(1119f, global0.a.b, global0.a.c, vec4<bool>(true, true, global0.a.c, true)), global0.a, !global0.a.d, Struct_1(global0.a.a, global0.a.b, global0.a.d.x, vec4<bool>(false, global0.a.c, global0.a.c, global0.a.d.x))), all(vec4<bool>(true, true, true, true)), Struct_3(vec4<u32>(18165u, global0.c, global0.c, 0u) ^ vec4<u32>(49596u, 122512u, 31826u, global0.c), Struct_1(-237f, global0.c, true, global0.a.d), global0.a, !vec4<bool>(global0.a.d.x, true, global0.a.d.x, true), global0.a), func_3(_wgslsmith_div_vec3_i32(u_input.b.wzy, vec3<i32>(-1568i, 12220i, u_input.a.x)), Struct_5(Struct_1(global0.b, 0u, global0.a.d.x, global0.a.d), 336f, 4294967295u), Struct_3(vec4<u32>(15784u, global0.a.b, 69u, global0.c), global0.a, Struct_1(global0.b, global0.c, global0.a.d.x, vec4<bool>(global0.a.c, false, global0.a.d.x, global0.a.c)), vec4<bool>(global0.a.c, true, false, global0.a.d.x), Struct_1(-1207f, 4294967295u, true, vec4<bool>(global0.a.c, global0.a.c, true, global0.a.c))), select(vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(u_input.c, u_input.c), global0.a.d.yy))), any(select(vec4<bool>(false, true, global0.a.d.x, false), vec4<bool>(true, true, false, false), global0.a.d)) || true, !global0.a.d), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)), global0.a.a, true || (_wgslsmith_f_op_f32(round(global0.b)) <= _wgslsmith_f_op_f32(-global0.b)))), _wgslsmith_sub_u32(~abs(global0.a.b), 2090u));
    var var_0 = Struct_3(~_wgslsmith_add_vec4_u32(min(vec4<u32>(27216u, global0.a.b, 39695u, global0.a.b) >> (vec4<u32>(7367u, global0.a.b, global0.c, global0.a.b) % vec4<u32>(32u)), abs(vec4<u32>(0u, 5331u, global0.a.b, global0.a.b))), vec4<u32>(max(global0.a.b, 4294967295u), global0.c >> (global0.c % 32u), 1u, 33154u)), global0.a, global0.a, global0.a.d, Struct_1(-1359f, firstTrailingBit(~global0.a.b), true, select(select(select(global0.a.d, global0.a.d, vec4<bool>(true, false, global0.a.d.x, true)), !vec4<bool>(global0.a.d.x, global0.a.d.x, false, global0.a.d.x), global0.a.d.x), vec4<bool>(all(global0.a.d.zxz), all(vec2<bool>(global0.a.d.x, global0.a.d.x)), false, all(global0.a.d.yx)), select(select(vec4<bool>(global0.a.c, global0.a.d.x, global0.a.d.x, true), vec4<bool>(global0.a.c, false, true, global0.a.d.x), vec4<bool>(global0.a.c, false, false, global0.a.d.x)), select(vec4<bool>(true, global0.a.d.x, true, global0.a.d.x), global0.a.d, true), select(global0.a.c, global0.a.c, true)))));
    var_0 = Struct_3(~var_0.a, global0.a, Struct_1(global0.a.a, _wgslsmith_div_u32(var_0.b.b, func_4(Struct_3(vec4<u32>(var_0.b.b, 0u, 1u, 4294967295u), var_0.b, var_0.c, vec4<bool>(false, false, global0.a.d.x, false), var_0.c), select(true, false, false), Struct_3(var_0.a, global0.a, global0.a, vec4<bool>(var_0.c.d.x, false, false, var_0.b.c), Struct_1(var_0.e.a, 1u, false, var_0.d)), _wgslsmith_dot_vec4_i32(vec4<i32>(-39564i, 2147483647i, u_input.b.x, u_input.c), u_input.b))), 1740u < _wgslsmith_mod_u32(firstTrailingBit(var_0.c.b), firstLeadingBit(4294967295u)), select(vec4<bool>(4294967295u >= var_0.e.b, !global0.a.d.x, !var_0.c.d.x, global0.a.c | var_0.e.c), global0.a.d, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, 2169i, u_input.c), u_input.b) < 0i)), global0.a.d, var_0.c);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -101f))), vec2<f32>(1089f, _wgslsmith_div_f32(-1000f, 1085f))), vec2<f32>(var_0.c.a, var_0.c.a), global0.a.d.xx));
    let var_2 = vec3<bool>(var_0.b.d.x, var_0.b.d.x, global0.a.c);
    return global0.b;
}

fn func_1(arg_0: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(func_2());
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1324f)))), _wgslsmith_f_op_f32(-769f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) + _wgslsmith_f_op_f32(f32(-1f) * -439f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(var_1 - var_1))), vec2<f32>(-439f, _wgslsmith_f_op_f32(-var_0)))), vec2<f32>(-803f, var_1.x)));
    let var_3 = global0.a;
    var var_4 = ~(~_wgslsmith_add_vec3_u32(~firstLeadingBit(vec3<u32>(0u, 1u, 4294967295u)), select(vec3<u32>(1u, 57840u, 0u), vec3<u32>(66297u, 55538u, 4294967295u), vec3<bool>(true, true, global0.a.c)) ^ ~vec3<u32>(arg_0, global0.a.b, var_3.b)));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false | any(global0.a.d);
    global0 = Struct_5(func_1(_wgslsmith_sub_u32(global0.c, abs(~4294967295u))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-917f)), _wgslsmith_f_op_f32(global0.a.a - _wgslsmith_f_op_f32(-global0.a.a))), global0.b)), global0.a.b);
    let var_1 = vec2<i32>(2147483647i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), abs(vec2<i32>(1i, u_input.a.x)))), -13565i >> (_wgslsmith_sub_u32(global0.a.b, 64808u) % 32u)));
    global0 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -388f), -1764f) * _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-2312f, 2230f)))), global0.a.b, global0.a.d.x, select(vec4<bool>(!global0.a.c, !global0.a.d.x, global0.a.d.x, global0.a.c), !global0.a.d, global0.a.d)), global0.a.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(max(vec3<u32>(0u, 0u, global0.a.b), vec3<u32>(4294967295u, 125493u, global0.c)) & vec3<u32>(4294967295u, global0.c, 58301u), select(vec3<u32>(0u, 6437u, 1u), vec3<u32>(1u, global0.c, global0.c), vec3<bool>(var_0, var_0, global0.a.c)) >> (~vec3<u32>(1u, global0.c, 1u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_add_u32(21419u, _wgslsmith_mod_u32(global0.c, 0u)), 1u, global0.a.b)));
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(4866u, 88686u, 22949u), reverseBits(vec3<u32>(4576u, global0.c, 4294967295u))), ~(~vec3<u32>(72815u, global0.c, global0.c))), 0u), vec2<u32>(~(~0u), 0u));
    var var_3 = firstTrailingBit(_wgslsmith_div_vec3_u32(~(~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.x, 57792u, var_2.x), vec3<u32>(global0.a.b, 0u, 4294967295u), vec3<u32>(var_2.x, var_2.x, var_2.x))), ~(~reverseBits(vec3<u32>(global0.c, var_2.x, global0.a.b)))));
    let var_4 = Struct_2(global0.a, global0.a);
    var_3 = abs(firstTrailingBit(~vec3<u32>(_wgslsmith_mult_u32(0u, 0u), firstTrailingBit(var_4.a.b), 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global0.a.a, global0.a.a, -1206f), _wgslsmith_f_op_vec3_f32(vec3<f32>(754f, 977f, var_4.a.a) + vec3<f32>(global0.a.a, 205f, 865f))))), -reverseBits(~var_1.x ^ -u_input.c), -u_input.c);
}

