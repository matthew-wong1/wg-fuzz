struct Struct_1 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 100503u;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(4294967295u, 33945u, 36353u, 0u), vec4<u32>(51259u, 52207u, 8268u, 17090u), vec4<u32>(20871u, 10956u, 1u, 70143u), vec4<u32>(1u, 1u, 15269u, 1u), vec4<u32>(52427u, 4294967295u, 1u, 66839u), vec4<u32>(49879u, 1u, 53618u, 4294967295u), vec4<u32>(0u, 38921u, 0u, 12712u));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_clamp_u32(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_dot_vec2_u32(select(vec2<u32>(0u, 0u), u_input.b.yz, vec2<bool>(true, global1.x)), u_input.b.xx ^ vec2<u32>(20503u, u_input.c)), u_input.c), u_input.c), 4294967295u, ~(reverseBits(~u_input.c) | 1u));
    var var_0 = Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2067f - -103f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-179f, -489f)))))), _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, -1i, 0i) ^ (countOneBits(vec3<i32>(u_input.a.x, 1i, 2147483647i)) & u_input.a), u_input.a));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_0.a, _wgslsmith_f_op_f32(step(429f, var_0.a))))), vec2<f32>(111f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-454f)))))));
    var var_2 = select(0u, ~select(_wgslsmith_mult_u32(u_input.c, u_input.b.x), ~u_input.c, all(vec2<bool>(global1.x, false))), global1.x) << (_wgslsmith_dot_vec3_u32(u_input.b, ~_wgslsmith_mult_vec3_u32(~u_input.b, u_input.b | vec3<u32>(u_input.c, u_input.c, 1u))) % 32u);
    global0 = u_input.b.x;
    return var_0.b.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-1258f * _wgslsmith_f_op_f32(round(443f))), -firstLeadingBit(~u_input.a)), 33361i, ~((vec3<i32>(-1i) * -u_input.a) & vec3<i32>(_wgslsmith_mod_i32(-1i, 12340i), u_input.a.x, -4390i)));
    global2 = array<vec4<u32>, 7>();
    let var_1 = Struct_3(Struct_1(150f, var_0.a.b), _wgslsmith_div_i32(-3691i, 2147483647i), min(vec3<i32>(u_input.a.x, -(u_input.a.x & u_input.a.x), u_input.a.x), vec3<i32>(-1i) * -u_input.a));
    var var_2 = reverseBits(var_0.c.x);
    var var_3 = var_0.a;
    return Struct_1(-1922f, _wgslsmith_mod_vec3_i32(var_3.b >> (~vec3<u32>(u_input.c, 4294967295u, 11425u) % vec3<u32>(32u)), vec3<i32>(func_3(), var_0.a.b.x, u_input.a.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(-203f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -321f))) != _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.a) - _wgslsmith_f_op_f32(f32(-1f) * -551f))) - arg_1.a.a);
    let var_1 = any(vec4<bool>(any(!(!vec3<bool>(true, global1.x, global1.x))), 1u >= reverseBits(u_input.c), global1.x, any(vec3<bool>(true, true, !global1.x))));
    var_0 = arg_0.a >= _wgslsmith_f_op_f32(878f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1188f)) - arg_0.a));
    var var_2 = func_2(u_input.b);
    var var_3 = 0i;
    return Struct_3(Struct_1(-453f, abs(_wgslsmith_sub_vec3_i32(vec3<i32>(12070i, u_input.a.x, 2147483647i), vec3<i32>(var_2.b.x, u_input.a.x, arg_0.b.x))) << (~vec3<u32>(16381u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), -arg_0.b.x, select(-arg_0.b | vec3<i32>(1i, u_input.a.x, 0i), _wgslsmith_div_vec3_i32(-arg_1.a.b, vec3<i32>(-33899i, arg_1.a.b.x, var_2.b.x)), false) | func_2(u_input.b).b);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2(~vec3<u32>(~4294967295u, u_input.b.x, _wgslsmith_mult_u32(54981u, u_input.c))), Struct_2(func_2(select(u_input.b, vec3<u32>(u_input.c, 15084u, 1u), vec3<bool>(global1.x, true, false)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_0.a.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-483f)) + _wgslsmith_f_op_f32(step(var_0.a.a, var_0.a.a))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.a.a), _wgslsmith_f_op_f32(f32(-1f) * -325f))), 467f, 620f)));
    let var_2 = Struct_3(var_0.a, ~u_input.a.x, _wgslsmith_div_vec3_i32(u_input.a, u_input.a));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.a)) + 1572f));
    global0 = u_input.c;
    return func_4(func_4(func_4(var_0.a, Struct_2(Struct_1(var_1.x, u_input.a))).a, Struct_2(func_4(func_2(vec3<u32>(1u, 1740u, u_input.c)), Struct_2(var_2.a)).a)).a, Struct_2(var_0.a)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(u_input.a.x != firstLeadingBit(~select(-1i, 40461i, false)), true, global1.x);
    var var_0 = Struct_2(func_1());
    let var_1 = func_4(func_1(), Struct_2(Struct_1(var_0.a.a, var_0.a.b))).a;
    var var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(select(-var_0.a.b.xx, _wgslsmith_mod_vec2_i32(var_1.b.xx, vec2<i32>(-2147483647i, 10244i)), false), reverseBits(vec2<i32>(var_0.a.b.x, u_input.a.x))), vec2<i32>(~2147483647i, func_1().b.x & 2147483647i), _wgslsmith_add_vec2_i32(reverseBits(var_1.b.xz), _wgslsmith_mult_vec2_i32(var_1.b.yz, u_input.a.zy))) ^ min(~vec2<i32>(i32(-1i) * -2147483647i, 0i), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a.b.yy, firstLeadingBit(u_input.a.xy)), func_2(abs(u_input.b)).b.xz));
    var var_3 = ~_wgslsmith_mult_vec3_i32(vec3<i32>(0i, countOneBits(select(3052i, u_input.a.x, true)), _wgslsmith_clamp_i32(-1i, -2147483647i, u_input.a.x)), vec3<i32>(func_3(), abs(-var_1.b.x), _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_0.a.b.x, u_input.a.x, -36098i), select(vec4<i32>(1i, 0i, var_1.b.x, var_0.a.b.x), vec4<i32>(-6154i, var_0.a.b.x, 2147483647i, -2147483647i), global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(441f, var_1.a, var_0.a.a)), vec3<f32>(189f, -1148f, 214f)))), 4294967295u, ~vec3<u32>(u_input.c, u_input.c ^ 4294967295u, 1u) >> ((_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b.x, 1u), u_input.b), ~vec3<u32>(57427u, 0u, 0u)) & _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, u_input.b.x, 32913u), vec3<u32>(31959u, 28151u, u_input.c)), abs(u_input.b), u_input.b)) % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(452f - _wgslsmith_f_op_f32(f32(-1f) * -868f))), u_input.b.x);
}

