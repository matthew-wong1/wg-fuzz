struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = vec2<i32>(32477i, global0.a.b) >> (u_input.d.yz % vec2<u32>(32u));
    let var_1 = Struct_3(global0.a, Struct_1(u_input.c, firstLeadingBit(firstTrailingBit(0i)), ~(-67523i), vec2<i32>(2147483647i, var_0.x), select(arg_0.e, global0.a.e, vec4<bool>(arg_0.e.x, false, true, true))), 1000f, max(-global0.d | countOneBits(global0.d ^ vec3<i32>(var_0.x, 46199i, 2147483647i)), vec3<i32>(i32(-1i) * -16115i, abs(-7860i), global0.d.x)), 4294967295u);
    var var_2 = u_input.d.xw;
    let var_3 = Struct_4(~(~_wgslsmith_mod_vec4_i32(abs(vec4<i32>(var_1.a.a, var_0.x, -32720i, var_1.b.c)), vec4<i32>(-39772i, arg_0.b, -3894i, var_1.b.b) & vec4<i32>(var_0.x, var_0.x, -5976i, var_0.x))), _wgslsmith_add_i32(-2147483647i, -1i & _wgslsmith_clamp_i32(~arg_0.c, 27540i, var_1.a.b >> (var_1.e % 32u))), var_1.a.e.x);
    var var_4 = -2100i;
    return arg_0;
}

fn func_3(arg_0: Struct_1) -> i32 {
    global0 = Struct_3(func_2(global0.a), func_2(Struct_1(-1i, 42953i, i32(-1i) * -2147483647i, vec2<i32>(-1i) * -u_input.a, !vec4<bool>(arg_0.e.x, global0.b.e.x, global0.b.e.x, false))), global0.c, vec3<i32>(~arg_0.a, max(-1i, _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.b, 2147483647i, 1i), vec3<i32>(u_input.c, -2147483647i, 0i)), -vec3<i32>(16457i, arg_0.b, -2376i))), global0.b.c), 4294967295u);
    var var_0 = select(arg_0.e.yxx, global0.b.e.xzw, vec3<bool>(select(global0.c >= _wgslsmith_f_op_f32(step(-1204f, global0.c)), all(vec2<bool>(arg_0.e.x, true)), global0.b.e.x), !global0.b.e.x, arg_0.e.x));
    var var_1 = Struct_2(select(func_2(Struct_1(u_input.b, -42035i ^ global0.a.a, arg_0.d.x, vec2<i32>(arg_0.d.x, arg_0.b), !arg_0.e)).e.yz, !vec2<bool>(!global0.b.e.x, !global0.b.e.x), func_2(arg_0).e.x), any(func_2(arg_0).e.zyx), 1u, 49411u, func_2(func_2(Struct_1(_wgslsmith_sub_i32(39594i, 2147483647i), 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.d.x, -14217i), vec2<i32>(u_input.a.x, arg_0.d.x)), vec2<i32>(u_input.a.x, 3768i), vec4<bool>(global0.a.e.x, true, var_0.x, true)))));
    var var_2 = Struct_4(abs(firstTrailingBit(~vec4<i32>(-1i, 58905i, 1i, 3037i))), _wgslsmith_sub_i32(-2147483647i, -26233i), select(u_input.b >= var_1.e.c, any(select(var_0.zy, vec2<bool>(true, var_1.a.x), vec2<bool>(false, var_0.x))) & !global0.a.e.x, all(vec3<bool>(true, true && var_1.e.e.x, var_0.x & global0.a.e.x))));
    var var_3 = Struct_4(vec4<i32>(var_2.b, -15322i, reverseBits(-abs(arg_0.d.x)), _wgslsmith_clamp_i32(-17710i, _wgslsmith_mod_i32(-2147483647i, var_1.e.b), 19365i)), i32(-1i) * -1i, (!var_1.e.e.x | (u_input.d.x == _wgslsmith_sub_u32(global0.e, var_1.d))) || all(!(!vec2<bool>(var_1.b, var_2.c))));
    return 1i >> (_wgslsmith_div_u32(~global0.e, 4294967295u) % 32u);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_3 {
    var var_0 = u_input.d;
    global0 = arg_1;
    global0 = Struct_3(func_2(arg_1.a), func_2(arg_1.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.c - 732f) * global0.c)), global0.c, !(!all(arg_1.b.e.xw)))), _wgslsmith_mod_vec3_i32(vec3<i32>(434i, 0i, 0i), _wgslsmith_clamp_vec3_i32(-(vec3<i32>(global0.a.d.x, global0.d.x, arg_1.d.x) & arg_1.d), vec3<i32>(u_input.c, select(u_input.c, -36632i, arg_0.x), u_input.a.x), min(global0.d, _wgslsmith_mod_vec3_i32(vec3<i32>(global0.b.d.x, global0.a.b, arg_1.b.d.x), arg_1.d)))), ~(~(~_wgslsmith_mod_u32(var_0.x, global0.e))));
    var var_1 = -2147483647i;
    var var_2 = Struct_1(global0.a.b, ~min(firstLeadingBit(_wgslsmith_mod_i32(-16874i, global0.d.x)), _wgslsmith_mod_i32(abs(global0.b.c), arg_1.b.d.x)), -1i, global0.b.d & u_input.a, !global0.a.e);
    return arg_1;
}

fn func_1() -> Struct_2 {
    global0 = func_4(global0.b.e.ywx, Struct_3(func_2(Struct_1(_wgslsmith_div_i32(global0.d.x, 0i), firstLeadingBit(1i), u_input.a.x, global0.d.xx, select(vec4<bool>(global0.a.e.x, global0.b.e.x, false, false), vec4<bool>(global0.a.e.x, true, true, global0.a.e.x), vec4<bool>(global0.a.e.x, false, global0.a.e.x, true)))), func_2(func_2(global0.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.c, -2359f) + -838f), vec3<i32>(2037i, min(global0.d.x, func_3(global0.a)), global0.b.b), 1u));
    let var_0 = 4294967295u;
    let var_1 = global0.a.e.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1781f, -1304f)))))));
    let var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(1480f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1031f - -1542f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(global0.c, -1038f))))) - 1018f)));
    return Struct_2(vec2<bool>(true, _wgslsmith_f_op_f32(global0.c * -485f) < _wgslsmith_f_op_f32(sign(1000f))), any(vec3<bool>(false, true, false)), 35593u, var_0, func_4(func_4(vec3<bool>(true, true, 2147483647i > global0.a.b), func_4(vec3<bool>(false, true, true), func_4(global0.a.e.yxx, Struct_3(Struct_1(global0.d.x, -1i, 1i, vec2<i32>(global0.b.d.x, global0.b.a), vec4<bool>(false, true, global0.b.e.x, false)), global0.a, global0.c, vec3<i32>(-8735i, 36549i, global0.b.c), 0u)))).b.e.xxy, func_4(!select(vec3<bool>(false, global0.b.e.x, global0.b.e.x), vec3<bool>(false, global0.a.e.x, global0.b.e.x), global0.a.e.yyx), func_4(global0.b.e.zxz, func_4(vec3<bool>(true, global0.b.e.x, true), Struct_3(global0.b, Struct_1(global0.a.d.x, global0.d.x, u_input.c, vec2<i32>(global0.b.d.x, global0.d.x), vec4<bool>(global0.a.e.x, false, global0.b.e.x, false)), global0.c, vec3<i32>(global0.b.a, u_input.c, global0.d.x), global0.e))))).a);
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> Struct_3 {
    global0 = arg_3;
    var var_0 = arg_3.b;
    var_0 = Struct_1(1i, arg_0.e.b >> (arg_2.c % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(-10956i, -2377i, global0.d.x, arg_0.e.d.x), ~select(vec4<i32>(26043i, arg_2.e.c, u_input.c, arg_2.e.c), vec4<i32>(var_0.d.x, global0.b.b, u_input.a.x, arg_3.b.c), global0.a.e)) >> (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~u_input.d, abs(u_input.d)), ~_wgslsmith_dot_vec3_u32(u_input.d.wxz, u_input.d.zyz)) % 32u), var_0.d, global0.b.e);
    let var_1 = Struct_2(func_2(func_4(vec3<bool>(!arg_0.b, arg_3.b.e.x || arg_2.b, arg_0.a.x), arg_3).b).e.yw, func_4(vec3<bool>(all(vec2<bool>(false, true)), true, abs(u_input.d.x) == arg_1), func_4(!select(arg_3.a.e.wxy, vec3<bool>(false, global0.b.e.x, true), true), arg_3)).b.e.x, global0.e ^ select(u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_sub_u32(4294967295u, arg_0.d), min(12876u, u_input.d.x)), any(!arg_3.a.e)), arg_1, func_2(func_1().e));
    let var_2 = u_input.c;
    return Struct_3(Struct_1(-func_4(vec3<bool>(false, arg_3.b.e.x, true), func_4(vec3<bool>(arg_2.e.e.x, arg_2.e.e.x, false), arg_3)).a.d.x, global0.a.c, -1i, func_1().e.d, !vec4<bool>(false, any(arg_0.e.e.wxw), true, all(vec4<bool>(arg_2.b, global0.b.e.x, false, arg_2.b)))), func_2(func_1().e), arg_3.c, _wgslsmith_sub_vec3_i32(-(global0.d << (u_input.d.wxx % vec3<u32>(32u))) >> ((max(u_input.d.wwz, u_input.d.yxx) ^ vec3<u32>(36325u, arg_1, var_1.d)) % vec3<u32>(32u)), vec3<i32>(arg_3.d.x, func_4(!var_0.e.yxy, arg_3).d.x, reverseBits(33921i))), ~(~(func_1().c >> (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c + 710f));
    global0 = func_5(func_1(), _wgslsmith_div_u32(global0.e, _wgslsmith_mult_u32(_wgslsmith_add_u32(func_1().d, 1u), abs(u_input.d.x))), Struct_2(select(select(select(global0.a.e.yz, vec2<bool>(global0.b.e.x, global0.b.e.x), true), global0.b.e.zw, false), global0.a.e.yy, false), global0.a.e.x && (!global0.b.e.x & true), 6085u, abs(u_input.d.x), global0.b), Struct_3(global0.a, Struct_1(~0i, select(select(u_input.b, global0.d.x, global0.a.e.x), _wgslsmith_add_i32(global0.d.x, global0.a.c), !global0.a.e.x), global0.a.a, _wgslsmith_clamp_vec2_i32(u_input.a, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, global0.d.x), vec2<i32>(-1i, -2147483647i)), -u_input.a), vec4<bool>(!global0.b.e.x, true, func_1().b, all(global0.a.e))), _wgslsmith_f_op_f32(694f + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1270f * global0.c), global0.c))), ~vec3<i32>(_wgslsmith_mult_i32(-1i, global0.d.x), u_input.c, _wgslsmith_mod_i32(-68402i, u_input.c)), ~28976u));
    global0 = Struct_3(global0.b, Struct_1(-1i, _wgslsmith_div_i32(_wgslsmith_mod_i32(global0.a.d.x, func_3(Struct_1(u_input.b, global0.b.c, global0.a.c, vec2<i32>(global0.a.c, global0.d.x), vec4<bool>(global0.a.e.x, global0.a.e.x, false, true)))), ~_wgslsmith_mod_i32(-49825i, global0.d.x)), ~10524i << (u_input.d.x % 32u), (_wgslsmith_sub_vec2_i32(global0.b.d, global0.a.d) << (~vec2<u32>(global0.e, 39514u) % vec2<u32>(32u))) | ~(-global0.a.d), global0.a.e), -1377f, reverseBits(global0.d), _wgslsmith_mult_u32(global0.e, 1u));
    var var_1 = (reverseBits(max(vec4<i32>(global0.b.d.x, 1835i, global0.a.c, u_input.b) & vec4<i32>(0i, 57190i, global0.a.d.x, global0.d.x), abs(vec4<i32>(2147483647i, 2147483647i, u_input.b, -20903i)))) & (-select(vec4<i32>(u_input.a.x, 2147483647i, global0.d.x, global0.a.d.x), vec4<i32>(-1i, -14052i, -7380i, global0.a.d.x), global0.a.e.x) >> (select(firstTrailingBit(u_input.d), u_input.d, false) % vec4<u32>(32u)))) ^ abs(-((vec4<i32>(1i, 2147483647i, -72147i, 1i) & vec4<i32>(u_input.a.x, u_input.c, -1i, -1208i)) | ~vec4<i32>(2147483647i, global0.a.a, u_input.a.x, global0.d.x)));
    var_1 = _wgslsmith_mult_vec4_i32(firstTrailingBit(~vec4<i32>(firstLeadingBit(var_1.x), i32(-1i) * -53105i, global0.a.d.x, ~0i)), reverseBits(countOneBits(abs(vec4<i32>(u_input.c, 1i, u_input.c, u_input.b)))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, 1008f, 0i, _wgslsmith_sub_vec3_i32(var_1.wxx, vec3<i32>(var_1.x, _wgslsmith_mult_i32(-14613i, func_1().e.d.x), _wgslsmith_div_i32(22094i, -1i) << (u_input.d.x % 32u))), max(-(~(var_1.x << (u_input.d.x % 32u))), global0.d.x));
}

