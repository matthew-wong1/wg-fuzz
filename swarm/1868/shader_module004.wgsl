struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = select(vec2<bool>(true, true), vec2<bool>(all(!arg_2.c.a.xx), arg_1.a.x), arg_1.a.yx);
    var var_1 = _wgslsmith_mult_u32(~(~(~arg_2.c.b.x)) << (1u % 32u), firstTrailingBit(arg_2.e));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_1.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1789f), _wgslsmith_f_op_f32(-arg_1.c.x))))), _wgslsmith_f_op_f32(max(-1558f, arg_1.c.x))));
    var_0 = select(vec2<bool>(!any(select(vec4<bool>(arg_2.c.a.x, false, arg_1.a.x, var_0.x), vec4<bool>(arg_0, arg_0, var_0.x, arg_2.c.a.x), vec4<bool>(true, var_0.x, true, var_0.x))), !select(select(true, false, true), false, true)), vec2<bool>(false, true), !var_0.x);
    var_1 = _wgslsmith_mult_u32(u_input.a, u_input.a);
    return !vec3<bool>(true, false, arg_2.c.a.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_1) -> Struct_2 {
    let var_0 = vec4<bool>((any(vec4<bool>(true, true, true, true)) & true) == true, !(true && !all(vec2<bool>(false, false))), false, true);
    var var_1 = false;
    var var_2 = var_0.x;
    var var_3 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * 1366f))), Struct_1(1i), Struct_2(func_3(all(var_0.yzy) | (u_input.a == 22784u), Struct_2(!vec3<bool>(false, var_0.x, false), ~vec3<u32>(35107u, 7498u, u_input.a), vec2<f32>(821f, 455f)), Struct_3(_wgslsmith_div_f32(-467f, 754f), Struct_1(arg_2.a), Struct_2(var_0.zwx, vec3<u32>(1u, 36348u, arg_1), vec2<f32>(827f, 155f)), Struct_1(11160i), 39956u), Struct_1(-24914i)), _wgslsmith_add_vec3_u32(abs(vec3<u32>(arg_1, 31566u, u_input.a)), vec3<u32>(arg_1, 25553u >> (u_input.a % 32u), ~4294967295u)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(830f + -555f)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(881f - -352f)))), Struct_1(~_wgslsmith_div_i32(firstLeadingBit(arg_2.a), arg_2.a)), _wgslsmith_sub_u32(~1u, reverseBits(arg_1)));
    var var_4 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -925f), -1217f, true))))), Struct_1(_wgslsmith_mult_i32(33524i, 6925i)), var_3.c, Struct_1(0i), _wgslsmith_sub_u32(abs(var_3.c.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(var_3.c.b, vec3<u32>(u_input.a, u_input.a, 21925u)), var_3.c.b) & var_3.c.b.x));
    return Struct_2(vec3<bool>((arg_1 & ~u_input.a) > ~(4294967295u >> (1u % 32u)), true, var_0.x), ~var_3.c.b >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1, 77045u, 17889u), var_3.c.b, ~var_3.c.b) % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(ceil(var_4.c.c.x)), var_3.a));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool) -> Struct_3 {
    let var_0 = !vec4<bool>(any(arg_0.a) || (_wgslsmith_f_op_f32(select(905f, arg_0.c.x, true)) <= _wgslsmith_f_op_f32(f32(-1f) * -464f)), arg_2, (u_input.a & min(11243u, 41639u)) == 70700u, arg_2);
    var var_1 = func_2(~_wgslsmith_mult_vec2_i32(~countOneBits(vec2<i32>(35812i, 1i)), ~vec2<i32>(0i, 0i)), 4294967295u, Struct_1(~1i)).a.zz;
    var var_2 = _wgslsmith_mult_u32(0u, 18778u);
    let var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.c.x, arg_0.c.x, arg_0.c.x, -1147f))))) + vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(1433f)))), _wgslsmith_div_f32(arg_0.c.x, -472f), -379f, arg_0.c.x))));
    var var_4 = func_2(vec2<i32>(~(~_wgslsmith_sub_i32(2147483647i, 1i)), 2147483647i), 123068u, Struct_1(min(~max(19457i, -65956i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(23485i, 0i, 2147483647i))))).a.x;
    return Struct_3(-850f, Struct_1(9410i), arg_0, Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-9063i, 1i, 2147483647i), vec3<i32>(-37276i, 0i, 1i))), vec2<i32>(1i, 1i))), ~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.b.x, 16712u), ~arg_0.b.yz) | reverseBits(1u)));
}

fn func_1() -> bool {
    let var_0 = func_4(func_2(-vec2<i32>(_wgslsmith_div_i32(-36347i, 22038i), i32(-1i) * -58957i), ~(_wgslsmith_div_u32(4294967295u, u_input.a) & u_input.a), Struct_1(2147483647i)), true, any(!(!select(vec2<bool>(true, false), vec2<bool>(false, true), false))));
    let var_1 = ~vec4<u32>(~select(0u >> (var_0.e % 32u), 8001u, !var_0.c.a.x), func_2(firstTrailingBit(~vec2<i32>(var_0.d.a, -2147483647i)), firstTrailingBit(var_0.e << (16019u % 32u)), Struct_1(var_0.b.a << (0u % 32u))).b.x, countOneBits(u_input.a), min(~1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(0u, var_0.c.b.x), ~var_0.c.b.yz)));
    let var_2 = _wgslsmith_mult_vec2_u32(select(~(func_4(Struct_2(var_0.c.a, vec3<u32>(var_1.x, 1u, 20886u), vec2<f32>(var_0.a, -1000f)), false, false).c.b.zz | (vec2<u32>(var_1.x, 0u) << (vec2<u32>(var_1.x, 68106u) % vec2<u32>(32u)))), abs(~(var_1.yz << (vec2<u32>(30498u, u_input.a) % vec2<u32>(32u)))), true), ~_wgslsmith_sub_vec2_u32(var_0.c.b.xy, vec2<u32>(61558u, ~var_0.c.b.x)));
    let var_3 = (min(-(~var_0.d.a), reverseBits(var_0.d.a)) << (countOneBits(_wgslsmith_mod_u32(11691u, var_1.x & var_1.x)) % 32u)) >= -_wgslsmith_sub_i32(_wgslsmith_clamp_i32(var_0.b.a, abs(-2147483647i), -1i), select(-1i, firstLeadingBit(var_0.b.a), var_0.b.a != var_0.d.a));
    let var_4 = var_0.c;
    return all(func_3(!(_wgslsmith_dot_vec3_u32(var_1.xzy, var_1.yyy) == reverseBits(var_0.e)), Struct_2(!func_2(vec2<i32>(var_0.d.a, -29152i), var_4.b.x, Struct_1(var_0.d.a)).a, vec3<u32>(func_4(var_4, true, var_4.a.x).e, _wgslsmith_mult_u32(37475u, 0u), 11367u), func_2(countOneBits(vec2<i32>(2147483647i, var_0.d.a)), var_2.x ^ 17110u, func_4(var_0.c, false, false).b).c), Struct_3(682f, func_4(var_0.c, var_0.d.a == var_0.b.a, var_0.c.a.x).b, var_0.c, var_0.d, var_0.e), func_4(func_4(Struct_2(vec3<bool>(true, var_0.c.a.x, var_0.c.a.x), vec3<u32>(4294967295u, 0u, 39544u), var_0.c.c), true && var_4.a.x, true).c, true, !(!var_3)).d).xy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(-1i);
    var var_1 = _wgslsmith_mod_i32(1i, var_0.a >> (~(~u_input.a) % 32u)) & firstTrailingBit(~6122i);
    var var_2 = Struct_2(select(vec3<bool>(!all(vec2<bool>(true, false)), false, any(vec2<bool>(true, true))), vec3<bool>(select(all(vec4<bool>(true, true, false, false)), true, func_1()), true, true != all(vec2<bool>(true, true))), vec3<bool>(true, true, true)), firstLeadingBit(vec3<u32>(~u_input.a, 23101u, ~reverseBits(u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(284f, 788f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(962f, -759f) + vec2<f32>(747f, 2033f))))));
    var var_3 = var_0;
    let var_4 = abs(0u);
    var_2 = Struct_2(var_2.a, var_2.b, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(var_2.c + vec2<f32>(836f, var_2.c.x)))));
    let var_5 = !vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -1093f) >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.c.x), _wgslsmith_f_op_f32(-1107f + var_2.c.x)), func_2(vec2<i32>(16524i, 1i), u_input.a | 18871u, func_4(Struct_2(var_2.a, var_2.b, vec2<f32>(var_2.c.x, var_2.c.x)), false, var_2.a.x).b).c.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(511f)) - _wgslsmith_f_op_f32(-var_2.c.x)), var_2.a.x, var_2.a.x);
    var_1 = var_3.a;
    var var_6 = select(var_0.a, _wgslsmith_sub_i32(-17150i, _wgslsmith_div_i32(_wgslsmith_add_i32(var_0.a, -49770i), 22812i)), var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(~var_3.a);
}

