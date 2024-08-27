struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: vec4<f32>,
    d: vec3<bool>,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec3<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8>;

var<private> global1: i32;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: f32) -> vec3<i32> {
    global0 = array<i32, 8>();
    var var_0 = !select(!vec4<bool>(-358f != arg_3, all(arg_2.d.zy), all(arg_0.c), !arg_0.c.x), !select(select(vec4<bool>(arg_2.d.x, arg_2.d.x, true, arg_0.c.x), vec4<bool>(false, arg_2.d.x, arg_0.c.x, true), vec4<bool>(false, false, arg_0.c.x, false)), select(vec4<bool>(arg_0.c.x, true, arg_2.e.c.x, false), vec4<bool>(arg_2.e.c.x, arg_2.e.c.x, arg_2.d.x, false), true), true), !(!select(vec4<bool>(true, true, false, arg_0.c.x), vec4<bool>(false, false, false, true), vec4<bool>(arg_2.d.x, arg_0.c.x, arg_0.c.x, false))));
    var var_1 = arg_2.e.c.xz;
    var_1 = select(arg_0.c.xx, vec2<bool>(firstLeadingBit(~36883u) <= _wgslsmith_mod_u32(arg_2.e.d.a.x | arg_0.d.a.x, 4294967295u), var_1.x), select(!(!select(vec2<bool>(arg_2.e.c.x, var_0.x), arg_2.e.c.xx, arg_2.e.c.yy)), arg_0.c.xy, !vec2<bool>(var_0.x, arg_0.c.x)));
    let var_2 = countOneBits(_wgslsmith_mod_i32(_wgslsmith_sub_i32(select(arg_0.a.x, 0i, true), -u_input.d), -_wgslsmith_sub_i32(arg_1.x, arg_2.e.a.x))) << (arg_2.e.b.a.x % 32u);
    return vec3<i32>(arg_1.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(countOneBits(arg_1.x), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(4294967295u, 8u)], global0[_wgslsmith_index_u32(arg_2.e.d.a.x, 8u)], -3437i)), _wgslsmith_add_vec2_i32(~select(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(arg_2.a, -15988i), var_0.yy), arg_0.a)), 0i);
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: Struct_2, arg_3: vec4<i32>) -> i32 {
    global1 = _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.a.x, reverseBits(_wgslsmith_sub_i32(_wgslsmith_sub_i32(arg_3.x, arg_3.x), -13095i | arg_2.a.x)), 1i), ~min(func_3(Struct_2(u_input.b.yy, arg_2.d, vec3<bool>(true, true, arg_0), Struct_1(vec3<u32>(arg_2.d.a.x, 1u, 2130u))), u_input.a.yz, Struct_3(arg_2.a.x, 811f, vec4<f32>(-149f, 615f, arg_1.x, 1324f), vec3<bool>(true, arg_2.c.x, false), Struct_2(u_input.a.yz, Struct_1(vec3<u32>(arg_2.d.a.x, arg_2.b.a.x, arg_2.d.a.x)), arg_2.c, arg_2.b)), -881f) >> (_wgslsmith_mod_vec3_u32(arg_2.b.a, vec3<u32>(arg_2.b.a.x, arg_2.d.a.x, arg_2.b.a.x)) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(-u_input.b.xzw, arg_3.xzw)));
    var var_0 = vec4<bool>(arg_2.c.x, any(select(select(!vec3<bool>(arg_2.c.x, arg_0, arg_0), arg_2.c, true), vec3<bool>(arg_0, !arg_2.c.x, true), true)), any(vec4<bool>(arg_0, true, arg_2.c.x, all(!arg_2.c))), any(!select(arg_2.c, arg_2.c, arg_2.c.x)) & any(!vec3<bool>(false, arg_2.c.x, true)));
    var_0 = select(!(!vec4<bool>(var_0.x, !arg_2.c.x, all(vec4<bool>(var_0.x, true, arg_0, var_0.x)), arg_0 & arg_2.c.x)), !(!vec4<bool>(var_0.x && true, true, true, false)), var_0.x);
    var var_1 = Struct_3(1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x))), _wgslsmith_f_op_f32(f32(-1f) * -1000f))) - arg_1.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-996f, arg_1.x, arg_1.x, -651f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(104f, arg_1.x, arg_1.x, -432f))))) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1022f, arg_1.x, -140f, _wgslsmith_div_f32(arg_1.x, -2298f))))), vec3<bool>(var_0.x, arg_0, !var_0.x), arg_2);
    var var_2 = var_1.e;
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(65322u, _wgslsmith_mult_u32(arg_2.b.a.x >> (var_1.e.d.a.x % 32u), ~countOneBits(~var_1.e.d.a.x))), 8u)];
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: u32, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(arg_0.c - _wgslsmith_f_op_vec4_f32(abs(arg_3.c)));
    var var_1 = arg_0.e;
    var var_2 = all(select(vec4<bool>(all(var_1.c), true, true, arg_0.d.x), vec4<bool>(var_1.c.x, true, true, true), vec4<bool>(arg_0.d.x | true, true, arg_3.d.x & var_1.c.x, any(vec4<bool>(arg_3.d.x, true, arg_0.d.x, true))))) || true;
    let var_3 = firstLeadingBit(3582u);
    var var_4 = vec4<f32>(1043f, _wgslsmith_f_op_f32(floor(-922f)), -663f, arg_3.b);
    return -1861f;
}

fn func_5(arg_0: f32, arg_1: vec4<u32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec3_i32(u_input.c, u_input.b.wwy);
    global1 = -global0[_wgslsmith_index_u32(arg_1.x, 8u)];
    global1 = -15348i;
    let var_1 = Struct_3(39224i, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -200f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-979f, _wgslsmith_f_op_f32(abs(arg_0)), _wgslsmith_f_op_f32(step(1239f, arg_0)), _wgslsmith_f_op_f32(round(arg_0))) * vec4<f32>(_wgslsmith_f_op_f32(-arg_0), 685f, arg_0, arg_0)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-410f, arg_0, 1725f, 910f))) - _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, arg_0, arg_0, 1311f) - vec4<f32>(arg_0, 1799f, arg_0, -800f)), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0, 449f, arg_0, arg_0), vec4<f32>(-1000f, -1590f, arg_0, arg_0)))))), !vec3<bool>(true, true, !(-1398f >= arg_0)), Struct_2(firstTrailingBit(vec2<i32>(var_0 >> (0u % 32u), -1i)), Struct_1(arg_1.xyz), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), false)), Struct_1(vec3<u32>(arg_1.x, arg_1.x, ~arg_1.x))));
    let var_2 = var_1.e.d;
    return u_input.d;
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global1 = func_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_3(func_2(false, vec2<f32>(arg_0.x, arg_0.x), Struct_2(u_input.c.yy, Struct_1(vec3<u32>(23509u, 4294967295u, 8161u)), vec3<bool>(false, false, false), Struct_1(vec3<u32>(4294967295u, 49123u, 32277u))), u_input.a), arg_0.x, vec4<f32>(-2551f, arg_0.x, -1861f, 544f), vec3<bool>(true, true, true), Struct_2(vec2<i32>(u_input.e.x, 2147483647i), Struct_1(vec3<u32>(1u, 60438u, 0u)), vec3<bool>(false, true, true), Struct_1(vec3<u32>(0u, 8055u, 4294967295u)))), 1000f, firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(104724u, 4294967295u, 0u, 4294967295u), vec4<u32>(0u, 35172u, 39446u, 1u))), Struct_3(select(global0[_wgslsmith_index_u32(4294967295u, 8u)], 1i, false), _wgslsmith_f_op_f32(arg_0.x + arg_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, 253f, arg_0.x, arg_0.x)), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), Struct_2(u_input.b.yz, Struct_1(vec3<u32>(0u, 0u, 21313u)), vec3<bool>(true, false, true), Struct_1(vec3<u32>(4294967295u, 1u, 8110u))))))), vec4<u32>(~0u, ~217u, ~_wgslsmith_dot_vec3_u32(~vec3<u32>(35846u, 4294967295u, 4294967295u), ~vec3<u32>(14319u, 64790u, 0u)), ~_wgslsmith_div_u32(4294967295u, 1u)));
    var var_0 = global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, 4294967295u, 16021u), max(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(13521u, 26949u, 40931u)))) >> (1u % 32u), 8u)];
    var var_1 = vec4<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(4755u, 5676u), max(5462u, 74376u), reverseBits(7104u)), ~vec3<u32>(1u, 4294967295u, 38228u)), _wgslsmith_mod_u32(_wgslsmith_sub_u32(~min(1u, 69580u), ~20171u), ~0u), abs(1u), ~4294967295u);
    var var_2 = Struct_3(_wgslsmith_clamp_i32(1i, u_input.e.x, 0i), _wgslsmith_f_op_f32(arg_0.x - arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-448f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(311f, arg_0.x, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(260f, arg_0.x, arg_0.x, -884f), vec4<f32>(arg_0.x, arg_0.x, -776f, -231f)))))), vec3<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false))), all(vec4<bool>(true, true, false, 2147483647i > global0[_wgslsmith_index_u32(20357u, 8u)])), select(any(vec4<bool>(true, true, true, true)), -30308i <= _wgslsmith_clamp_i32(u_input.d, global0[_wgslsmith_index_u32(4294967295u, 8u)], 2618i), any(vec2<bool>(true, true)))), Struct_2(vec2<i32>(u_input.d, ~_wgslsmith_mult_i32(6702i, 1i)), Struct_1(var_1.wyy), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), false)), Struct_1(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.x, 1u, var_1.x), var_1.wzz)))));
    var_1 = ~vec4<u32>(~_wgslsmith_mult_u32(var_2.e.d.a.x, max(var_1.x, var_1.x)), ~countOneBits(_wgslsmith_add_u32(4294967295u, var_2.e.d.a.x)), _wgslsmith_add_u32(var_1.x, 1u), reverseBits(~(var_2.e.d.a.x | var_2.e.b.a.x)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_2.b, _wgslsmith_f_op_f32(-arg_0.x), select(all(vec4<bool>(var_2.d.x, var_2.d.x, var_2.e.c.x, false)), !(var_2.e.c.x | true), countOneBits(-23758i) < u_input.b.x))));
}

fn func_6(arg_0: i32, arg_1: vec4<f32>, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    var var_0 = ~u_input.b;
    global1 = firstLeadingBit(arg_0);
    let var_1 = arg_2.a;
    global1 = ~func_3(Struct_2(~(-u_input.b.ww), arg_2.e.b, !vec3<bool>(false, false, arg_2.e.c.x), arg_2.e.d), reverseBits(-(var_0.xw | vec2<i32>(2147483647i, arg_3))), Struct_3(arg_0, _wgslsmith_f_op_f32(round(-1916f)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-arg_1))), vec3<bool>(all(arg_2.d.zx), all(arg_2.e.c), true), arg_2.e), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.x, arg_1.x, false)) * arg_1.x))).x;
    var var_2 = arg_2.e.c;
    return Struct_3(-1i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-573f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1008f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -936f) + arg_1.x), arg_2.c.x))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2328f, arg_1.x, arg_2.c.x, arg_1.x) - arg_1) - arg_1), vec4<f32>(1f, 1f, 1f, 1f))))), select(arg_2.d, vec3<bool>((1u >> (arg_2.e.b.a.x % 32u)) != (84760u ^ arg_2.e.b.a.x), false, !(true && var_2.x)), var_2.x), arg_2.e);
}

fn func_7(arg_0: Struct_3, arg_1: vec2<f32>) -> StorageBuffer {
    var var_0 = func_6(abs(firstTrailingBit(-min(global0[_wgslsmith_index_u32(arg_0.e.d.a.x, 8u)], 23887i))), _wgslsmith_f_op_vec4_f32(-arg_0.c), arg_0, ~u_input.a.x).e.b;
    var var_1 = _wgslsmith_div_vec2_u32(vec2<u32>(~(var_0.a.x | arg_0.e.b.a.x), ~_wgslsmith_dot_vec2_u32(var_0.a.yz, arg_0.e.d.a.zx)) ^ (vec2<u32>(~arg_0.e.b.a.x, _wgslsmith_clamp_u32(16332u, 0u, 74456u)) | vec2<u32>(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(72794u, var_0.a.x), var_0.a.yz))), vec2<u32>(arg_0.e.d.a.x, var_0.a.x));
    var var_2 = _wgslsmith_div_u32(~(~min(var_0.a.x, var_0.a.x)), ~_wgslsmith_add_u32(1u, ~firstLeadingBit(var_1.x)));
    var var_3 = _wgslsmith_div_vec4_i32(u_input.b, _wgslsmith_sub_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(vec4<i32>(~(-1i), _wgslsmith_sub_i32(arg_0.a, global0[_wgslsmith_index_u32(63721u, 8u)]), -1i >> (var_0.a.x % 32u), u_input.c.x), u_input.a)));
    global0 = array<i32, 8>();
    return StorageBuffer(-2147483647i, _wgslsmith_sub_vec4_u32(vec4<u32>(select(_wgslsmith_sub_u32(50577u, var_0.a.x), _wgslsmith_mod_u32(var_0.a.x, var_0.a.x), true), 52620u, ~0u, arg_0.e.d.a.x), ~(~reverseBits(vec4<u32>(1u, 57230u, 61381u, var_1.x)))), 29951u, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(17994u, var_1.x, 44856u, 1u), vec4<u32>(0u, arg_0.e.b.a.x, var_0.a.x, 4294967295u)) | firstTrailingBit(var_1.x)), ~(~(~var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_7(func_6(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(56637u, 8u)], i32(-1i) * -1i), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(714f, 1568f, 1000f, 1403f)))), vec4<f32>(_wgslsmith_f_op_f32(round(194f)), 950f, _wgslsmith_f_op_f32(func_1(vec2<f32>(-689f, -1006f))), _wgslsmith_f_op_f32(step(-681f, 301f))), false)), Struct_3(-global0[_wgslsmith_index_u32(max(1u, 0u), 8u)], _wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-234f, -729f, 335f, -300f) + vec4<f32>(-1658f, -952f, -718f, -248f))), select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false)), vec3<bool>(false, true, true), true), Struct_2(max(u_input.b.zw, vec2<i32>(-17894i, 2147483647i)), Struct_1(vec3<u32>(4294967295u, 13142u, 4294967295u)), vec3<bool>(true, false, false), Struct_1(vec3<u32>(1u, 1u, 1u)))), global0[_wgslsmith_index_u32(countOneBits(26916u), 8u)]), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-580f, 1462f)), vec2<f32>(-957f, _wgslsmith_f_op_f32(func_4(Struct_3(u_input.c.x, -452f, vec4<f32>(-1270f, -1939f, 1000f, 444f), vec3<bool>(false, true, true), Struct_2(vec2<i32>(16549i, 47484i), Struct_1(vec3<u32>(1u, 1u, 4294967295u)), vec3<bool>(false, true, false), Struct_1(vec3<u32>(48159u, 4294967295u, 73847u)))), -759f, 0u, Struct_3(u_input.a.x, -1000f, vec4<f32>(426f, 1000f, -1000f, 139f), vec3<bool>(true, false, false), Struct_2(u_input.c.zz, Struct_1(vec3<u32>(4363u, 24251u, 1u)), vec3<bool>(true, true, true), Struct_1(vec3<u32>(1u, 0u, 1u))))))), true)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(777f, 1293f), vec2<f32>(-687f, 506f), false)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1027f, 904f) - vec2<f32>(-796f, 199f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1510f, -463f))))));
}

