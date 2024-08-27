struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 180f;

var<private> global1: Struct_1;

var<private> global2: u32 = 4294967295u;

var<private> global3: vec3<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
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

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: i32, arg_1: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1855f * global1.a))));
    global3 = vec3<bool>(global3.x, false, !any(!vec3<bool>(global3.x, global3.x, true)));
    global0 = var_0.a;
    var var_1 = !(!(!(!vec4<bool>(global3.x, global3.x, global3.x, global3.x))));
    var var_2 = Struct_1(820f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(388f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a))), true)) * _wgslsmith_f_op_f32(exp2(global1.a)));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: vec2<i32>) -> vec2<i32> {
    global3 = select(select(!vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, false, any(vec4<bool>(true, true, true, true))), vec3<bool>(all(select(vec4<bool>(true, global3.x, global3.x, global3.x), vec4<bool>(global3.x, global3.x, global3.x, true), vec4<bool>(true, global3.x, false, global3.x))), any(select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(true, true, global3.x), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(-arg_2) > _wgslsmith_f_op_f32(func_3(arg_3.x, u_input.b.x)))), select(vec3<bool>(global3.x, global3.x, false), vec3<bool>(any(vec2<bool>(true, true)), true, false), !all(vec4<bool>(global3.x, global3.x, true, true))), !global3.x);
    global1 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(2480f, _wgslsmith_f_op_f32(-504f + arg_2)), _wgslsmith_f_op_f32(select(arg_1, _wgslsmith_f_op_f32(exp2(arg_0.a)), !global3.x)))))));
    var var_0 = 0u;
    var var_1 = Struct_1(444f);
    global2 = 45120u;
    return min(_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(arg_3, arg_3), vec2<i32>(2147483647i, _wgslsmith_sub_i32(2147483647i, u_input.c))) << (~vec2<u32>(_wgslsmith_add_u32(0u, u_input.a), 1u) % vec2<u32>(32u)), arg_3);
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<f32>, arg_2: f32) -> Struct_1 {
    let var_0 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, 8696u, 2419u), vec3<u32>(u_input.a, u_input.a, u_input.a) | vec3<u32>(39790u, 18747u, 24591u), ~vec3<u32>(1u, 80251u, u_input.d)), select(~vec3<u32>(0u, 0u, 4294967295u), ~vec3<u32>(u_input.d, 1u, u_input.a), true)), ~(~vec3<u32>(u_input.a, u_input.b.x, u_input.b.x)), vec3<u32>(_wgslsmith_div_u32(18002u, max(20972u, u_input.b.x)), abs(_wgslsmith_sub_u32(27163u, 9055u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 99408u, 0u, 4294967295u), vec4<u32>(67429u, 0u, u_input.d, u_input.d))));
    let var_1 = 1u;
    global1 = Struct_1(_wgslsmith_f_op_f32(120f * arg_1.x));
    let var_2 = 1u;
    global3 = select(!vec3<bool>(all(!global3.zx), global3.x, false), vec3<bool>(true, _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.d, var_1), var_0.zz), select(var_0.yy, var_0.xx, false)) > ~var_0.x, !(!global3.x)), vec3<bool>(true, true, any(select(select(vec3<bool>(true, global3.x, global3.x), vec3<bool>(global3.x, false, false), global3.x), select(vec3<bool>(global3.x, true, global3.x), vec3<bool>(global3.x, false, global3.x), global3.x), any(vec4<bool>(global3.x, true, global3.x, global3.x))))));
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.a))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1544f, global1.a), _wgslsmith_div_f32(arg_2, arg_2))))))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: f32) -> Struct_1 {
    global2 = max(min(~_wgslsmith_mod_u32(4294967295u, arg_1) | 1u, reverseBits(2223u)), arg_0.x);
    return func_4(_wgslsmith_mod_vec2_i32(func_2(Struct_1(-756f), global1.a, global1.a, vec2<i32>(u_input.c, u_input.c)) ^ vec2<i32>(i32(-1i) * -1i, -2147483647i), abs(func_2(Struct_1(arg_2), _wgslsmith_f_op_f32(1307f * arg_2), global1.a, -vec2<i32>(-17077i, -1i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(833f, -852f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, 1083f))) * vec2<f32>(_wgslsmith_f_op_f32(1816f * global1.a), _wgslsmith_f_op_f32(-global1.a)))), _wgslsmith_f_op_f32(floor(arg_2)));
}

fn func_5(arg_0: vec4<f32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_mod_i32(~u_input.c, _wgslsmith_mult_i32(-54230i, 1i));
    global2 = ~(~(~_wgslsmith_clamp_u32(5222u, 26365u, u_input.d)) & ~(~0u));
    global0 = 1029f;
    global2 = u_input.b.x;
    let var_1 = func_4(~vec2<i32>(func_2(Struct_1(global1.a), arg_1.a, 1872f, vec2<i32>(2147483647i, u_input.c)).x & _wgslsmith_mult_i32(-18696i, u_input.c), u_input.c), _wgslsmith_f_op_vec2_f32(-arg_0.yx), _wgslsmith_f_op_f32(-arg_1.a));
    return func_1(abs(vec3<u32>(~0u, ~1u, _wgslsmith_div_u32(4294967295u, u_input.b.x))), 30871u & countOneBits(u_input.a), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, _wgslsmith_f_op_f32(select(global1.a, 1000f, true)), global1.a, _wgslsmith_f_op_f32(f32(-1f) * -3197f)) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, global1.a, global1.a, global1.a), vec4<f32>(-1000f, global1.a, 1919f, -1221f)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global1.a, -512f, -627f, global1.a))))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.a, 147f, 740f, -379f), vec4<f32>(1590f, -1571f, global1.a, -107f)))))), func_1(vec3<u32>(~u_input.d, _wgslsmith_div_u32(u_input.b.x, 4294967295u), 63842u) | (~vec3<u32>(u_input.a, u_input.d, 4294967295u) >> (vec3<u32>(u_input.a, u_input.a, u_input.b.x) % vec3<u32>(32u))), 27142u & _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 80488u), vec3<u32>(3275u, u_input.d, u_input.d)), ~vec3<u32>(4294967295u, u_input.d, u_input.a)), _wgslsmith_div_f32(1304f, global1.a)));
    let var_1 = u_input.b;
    global0 = 1000f;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-func_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a, global1.a, var_0.a, 523f) * vec4<f32>(334f, var_0.a, -1578f, global1.a))), func_5(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-332f, var_0.a, global1.a, global1.a), vec4<f32>(var_0.a, var_0.a, 987f, global1.a), global3.x)), func_4(vec2<i32>(u_input.c, u_input.c), vec2<f32>(global1.a, -523f), 1036f))).a));
    var_0 = func_1(min(vec3<u32>(_wgslsmith_div_u32(2605u & var_1.x, _wgslsmith_mult_u32(u_input.d, 1u)), 13947u, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 37790u, u_input.b.x), ~vec3<u32>(4294967295u, 28131u, 4294967295u))), ~vec3<u32>(4294967295u >> (var_1.x % 32u), ~7676u, ~1u)), ~firstTrailingBit(0u | firstLeadingBit(var_1.x)), 2537f);
    var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(866f + 474f) - 1054f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_2.a, var_0.a, var_2.a, _wgslsmith_div_f32(_wgslsmith_div_f32(-1114f, var_2.a), 371f)))), countOneBits(_wgslsmith_add_i32(-1i, 2147483647i)));
}

