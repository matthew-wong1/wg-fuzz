struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 19>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec3<u32> {
    var var_0 = Struct_1(49542i, vec3<bool>(true, true, true), ~_wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.d.x, 4294967295u), _wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), vec3<u32>(u_input.d.x, u_input.b, u_input.d.x), vec3<u32>(u_input.d.x, u_input.d.x, 67196u))) ^ vec3<u32>(4294967295u, u_input.b, ~96605u));
    var_0 = Struct_1(_wgslsmith_dot_vec2_i32(u_input.a.xw, u_input.c.zy), select(vec3<bool>(true, all(var_0.b), var_0.b.x), vec3<bool>(all(select(vec2<bool>(var_0.b.x, var_0.b.x), var_0.b.yx, false)), true, false && (var_0.b.x == true)), any(!var_0.b)), _wgslsmith_mod_vec3_u32(var_0.c, _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, _wgslsmith_add_u32(1u, u_input.d.x), 50439u), select(abs(var_0.c), _wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.x, u_input.d.x, u_input.b), var_0.c), !var_0.b.x))));
    let var_1 = vec3<i32>(-(u_input.c.x << (0u % 32u)), countOneBits(u_input.e.x), -abs(~(~var_0.a)));
    var var_2 = Struct_1(-(~u_input.a.x >> (1u % 32u)), select(select(vec3<bool>(var_0.b.x, !var_0.b.x, !var_0.b.x), select(select(var_0.b, vec3<bool>(var_0.b.x, true, var_0.b.x), vec3<bool>(var_0.b.x, true, var_0.b.x)), select(vec3<bool>(true, true, var_0.b.x), var_0.b, false), select(vec3<bool>(true, var_0.b.x, var_0.b.x), var_0.b, var_0.b)), !var_0.b), !select(select(var_0.b, vec3<bool>(var_0.b.x, var_0.b.x, false), vec3<bool>(var_0.b.x, false, var_0.b.x)), var_0.b, true), select(vec3<bool>(false == var_0.b.x, var_0.b.x, all(vec3<bool>(var_0.b.x, true, var_0.b.x))), select(select(var_0.b, var_0.b, var_0.b), vec3<bool>(var_0.b.x, false, true), true), ~u_input.a.x > var_0.a)), ~vec3<u32>(1u, firstLeadingBit(4294967295u), 0u) | firstTrailingBit(vec3<u32>(min(32256u, 1u), ~0u, 1u)));
    let var_3 = Struct_1(~107589i, !var_2.b, ~(~_wgslsmith_mod_vec3_u32(vec3<u32>(16115u, u_input.d.x, 907u), _wgslsmith_div_vec3_u32(var_0.c, vec3<u32>(var_0.c.x, 0u, 4294967295u)))));
    return _wgslsmith_clamp_vec3_u32(vec3<u32>(~79614u, u_input.b, _wgslsmith_clamp_u32(55829u, ~var_2.c.x, u_input.b)), countOneBits(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_2.c.x << (var_3.c.x % 32u), 3638u, 0u), _wgslsmith_add_vec3_u32(~var_0.c, ~vec3<u32>(var_2.c.x, 27673u, u_input.d.x)), ~countOneBits(var_3.c))), abs(vec3<u32>(4294967295u, 48091u, 41646u)));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(firstTrailingBit(-2147483647i), select(select(vec3<bool>(any(vec2<bool>(true, false)), true, false), vec3<bool>(true, true, all(vec4<bool>(true, true, false, true))), false), vec3<bool>(true, true, true), true), func_3());
    let var_1 = ~max(var_0.c, _wgslsmith_mod_vec3_u32(var_0.c, abs(vec3<u32>(var_0.c.x, var_0.c.x, 32211u))) & vec3<u32>(~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 4294967295u), u_input.d), _wgslsmith_sub_u32(1u, u_input.d.x)));
    var var_2 = Struct_1(1i | ~max(var_0.a, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, -10109i, u_input.e.x), u_input.a.yxy)), vec3<bool>(!(!any(vec3<bool>(false, var_0.b.x, var_0.b.x))), ~_wgslsmith_div_i32(u_input.e.x, var_0.a) < u_input.c.x, !any(vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.b.x))), vec3<u32>(4294967295u, var_1.x, var_0.c.x));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(round(446f)), -1000f)));
    let var_4 = Struct_1(_wgslsmith_add_i32(7921i, ~(2147483647i >> (_wgslsmith_mult_u32(var_2.c.x, var_2.c.x) % 32u))), var_2.b, ~vec3<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, u_input.b, var_1.x, var_0.c.x), vec4<u32>(4294967295u, u_input.b, 9367u, 0u)), reverseBits(max(u_input.d.x, var_2.c.x)), var_2.c.x));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(296f + 264f) - 116f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.x) * 476f), 732f))) + -1555f);
}

fn func_1(arg_0: vec4<i32>, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(334f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-735f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(f32(-1f) * -834f));
    var var_1 = _wgslsmith_f_op_vec3_f32(-var_0.zxz);
    var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2035f, 2002f, var_1.x, 394f)))))))));
    var_1 = vec3<f32>(-1622f, _wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(func_2()));
    var var_2 = arg_2;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: vec4<bool>) -> vec3<u32> {
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    let var_0 = select(vec3<u32>(arg_2, _wgslsmith_mult_u32(~u_input.b, ~(~arg_0.c.x)), ~func_1(max(u_input.a, u_input.e), _wgslsmith_add_i32(u_input.e.x, 0i), arg_0).c.x), abs(~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.c.x, arg_0.c.x, 4294967295u), ~vec3<u32>(arg_2, 4294967295u, u_input.b))), any(select(!(!arg_3), arg_3, true)));
    return _wgslsmith_mod_vec3_u32(var_0, vec3<u32>(u_input.b | _wgslsmith_add_u32(1u, firstTrailingBit(arg_0.c.x)), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2, 4294967295u, 0u), arg_1.c), vec3<u32>(1u, arg_1.c.x, u_input.d.x)), ~(firstTrailingBit(118583u) ^ 0u)));
}

fn func_5(arg_0: Struct_1) -> f32 {
    let var_0 = firstTrailingBit(u_input.b ^ 0u);
    let var_1 = vec3<bool>(arg_0.b.x, true, arg_0.b.x);
    var var_2 = 478f;
    let var_3 = select(!vec4<bool>(!(!arg_0.b.x), all(!var_1.yx), all(vec2<bool>(arg_0.b.x, arg_0.b.x)), true), vec4<bool>(any(vec4<bool>(false, u_input.a.x <= -2147483647i, any(vec4<bool>(var_1.x, var_1.x, false, false)), true)), true, !arg_0.b.x, true), !(19624i == u_input.a.x));
    let var_4 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(-216f)), -2118f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(func_5(Struct_1(_wgslsmith_div_i32(i32(-1i) * -5168i, abs(-1i)), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), true == all(vec2<bool>(false, true))), select(func_4(Struct_1(u_input.c.x, vec3<bool>(false, false, true), vec3<u32>(u_input.b, u_input.d.x, 50971u)), func_1(u_input.a, -10603i, Struct_1(-34541i, vec3<bool>(false, true, false), vec3<u32>(u_input.b, 4294967295u, 71423u))), _wgslsmith_mod_u32(1u, 77010u), vec4<bool>(true, true, true, true)), firstTrailingBit(countOneBits(vec3<u32>(4294967295u, u_input.b, 1u))), func_1(-vec4<i32>(u_input.c.x, -26190i, u_input.e.x, -58437i), firstLeadingBit(-10417i), Struct_1(-2147483647i, vec3<bool>(true, true, false), vec3<u32>(u_input.d.x, u_input.b, u_input.d.x))).b.x))));
    let var_1 = true;
    global0 = array<vec3<f32>, 19>();
    global0 = array<vec3<f32>, 19>();
    let var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), _wgslsmith_div_i32(-3228i, u_input.a.x), max(0i, -2147483647i), ~u_input.e.x), u_input.a), u_input.e.x), u_input.c.yy);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<i32>(1i, i32(-1i) * -14030i, -3717i, 0i));
}

