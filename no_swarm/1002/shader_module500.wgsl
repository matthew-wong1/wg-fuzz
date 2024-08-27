struct Struct_1 {
    a: i32,
    b: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(3131u, 31561u, 1u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    global0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.d) | arg_0.zzz, vec3<u32>(~14744u, u_input.a, _wgslsmith_mult_u32(0u, arg_2.a))), min(vec3<u32>(_wgslsmith_div_u32(arg_2.a, 4294967295u), reverseBits(arg_0.x), firstTrailingBit(arg_2.a)), ~reverseBits(vec3<u32>(global0.x, 4294967295u, 43255u))));
    let var_0 = all(select(select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), !any(vec2<bool>(true, true))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), true));
    let var_1 = Struct_4(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(984f, _wgslsmith_f_op_f32(-arg_3.b), true)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -267f), arg_2.b.b)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_2.c.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1))))))));
    var var_2 = Struct_5(arg_2);
    let var_3 = !(!vec4<bool>(false, !(var_0 && true), _wgslsmith_f_op_f32(floor(-992f)) >= arg_3.b, true));
    return var_0;
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_div_vec3_u32(~u_input.d, abs(~u_input.d));
    global0 = ~u_input.d;
    var var_0 = Struct_2(4294967295u, Struct_1(u_input.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-841f, _wgslsmith_f_op_f32(696f * 1000f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(117f)) + 2201f)))), Struct_1(u_input.b, -1033f));
    let var_1 = select(select(vec3<bool>(true, !all(vec2<bool>(true, false)), func_3(~vec4<u32>(1u, u_input.d.x, 0u, 71575u), var_0.b.b, Struct_2(global0.x, Struct_1(var_0.c.a, var_0.c.b), Struct_1(-10872i, var_0.c.b)), var_0.b)), !select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true)), true), !select(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), true), vec3<bool>(func_3(vec4<u32>(u_input.a, u_input.c, var_0.a, 25085u), var_0.b.b, Struct_2(0u, Struct_1(u_input.b, var_0.c.b), var_0.c), Struct_1(10333i, 1404f)), false, true), (var_0.a ^ 0u) == var_0.a), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false))), !select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), select(vec3<bool>(true, -1256f < var_0.b.b, true), select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), false), vec3<bool>(false, false, true), true), true)));
    var_0 = Struct_2(18269u, Struct_1(i32(-1i) * -1i, 3034f), var_0.c);
    return Struct_1(u_input.b, _wgslsmith_f_op_f32(sign(-1000f)));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> Struct_3 {
    var var_0 = firstLeadingBit(u_input.d);
    let var_1 = Struct_5(Struct_2(~(~4294967295u), func_2(), Struct_1(1i, arg_0.b)));
    var_0 = _wgslsmith_sub_vec3_u32(firstLeadingBit(u_input.d) & abs(firstTrailingBit(~u_input.d)), u_input.d);
    var var_2 = var_1;
    let var_3 = ~(-vec4<i32>(-3226i, -1i, arg_0.a, var_1.a.c.a));
    return Struct_3(true, Struct_2(global0.x, Struct_1(var_1.a.c.a, _wgslsmith_f_op_f32(-473f * arg_0.b)), var_1.a.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1676f))), Struct_2(~(~var_1.a.a) << (~min(u_input.a, 1u) % 32u), arg_0, func_2()));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec3<f32> {
    let var_0 = 0u;
    global0 = ~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(var_0, 4294967295u << (arg_1.b.a % 32u), firstLeadingBit(31699u)), ~vec3<u32>(0u, 0u, arg_3.x)));
    let var_1 = func_4(func_2(), vec3<i32>(1i, _wgslsmith_mod_i32(_wgslsmith_mult_i32(-2147483647i, u_input.b), 35081i | arg_1.b.b.a), arg_1.d.b.a) << (select(u_input.d, u_input.d, true) % vec3<u32>(32u)));
    global0 = u_input.d;
    var var_2 = select(vec3<bool>(any(select(select(vec3<bool>(var_1.a, var_1.a, true), vec3<bool>(false, var_1.a, false), false), !vec3<bool>(var_1.a, var_1.a, true), true)), var_1.a, true), select(!(!select(vec3<bool>(var_1.a, false, var_1.a), vec3<bool>(arg_1.a, true, true), var_1.a)), select(!(!vec3<bool>(var_1.a, var_1.a, arg_1.a)), !select(vec3<bool>(false, false, true), vec3<bool>(var_1.a, var_1.a, false), true), arg_1.a), arg_1.a), !select(vec3<bool>(all(vec2<bool>(arg_1.a, var_1.a)), var_1.a | true, true), !(!vec3<bool>(arg_1.a, arg_1.a, var_1.a)), false));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.d.c.b, 354f, -1344f), vec3<f32>(arg_1.d.c.b, var_1.d.c.b, -1292f), true))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.d.c.b, arg_1.c, 910f), vec3<f32>(-394f, 272f, 1816f), var_1.a)))))), select(!(!vec3<bool>(arg_1.a, var_1.a, var_1.a)), !select(vec3<bool>(false, true, true), vec3<bool>(true, false, arg_1.a), true), !select(vec3<bool>(var_1.a, true, var_2.x), vec3<bool>(true, true, var_1.a), var_1.a)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(419f, -439f, arg_1.d.b.b)), vec3<f32>(arg_1.d.b.b, var_1.b.c.b, -887f))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-2093f, _wgslsmith_div_f32(-771f, 1636f), _wgslsmith_f_op_f32(ceil(2182f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -908f, 779f)) * _wgslsmith_f_op_vec3_f32(func_1(vec4<i32>(u_input.b, 1i, 0i, -2626i), Struct_3(false, Struct_2(global0.x, Struct_1(u_input.b, 328f), Struct_1(u_input.b, -1032f)), -1477f, Struct_2(global0.x, Struct_1(1i, -474f), Struct_1(u_input.b, -2140f))), u_input.d.xx, vec2<u32>(global0.x, 0u))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1118f, 1507f)))));
    let var_1 = vec3<u32>(abs(17516u), reverseBits(global0.x), select(33149u, global0.x, true));
    let var_2 = Struct_4(-697f);
    var var_3 = func_4(Struct_1(u_input.b, -1000f), -vec3<i32>(min(u_input.b, u_input.b) >> (func_4(Struct_1(0i, 403f), vec3<i32>(u_input.b, -1i, u_input.b)).d.a % 32u), ~5199i, u_input.b));
    var var_4 = (var_3.d.a >> (~_wgslsmith_sub_u32(global0.x, var_3.b.a ^ 30457u) % 32u)) | var_1.x;
    var_3 = func_4(Struct_1(u_input.b, -1438f), vec3<i32>(max(u_input.b << (0u % 32u), -26592i), firstLeadingBit(59035i), _wgslsmith_sub_i32(~(var_3.b.c.a ^ 1i), var_3.b.c.a & -23817i)));
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec4<i32>(var_3.d.c.a, 22217i, -28745i, -49859i) << (vec4<u32>(73927u, var_3.d.a, var_1.x, 0u) % vec4<u32>(32u))) & _wgslsmith_add_vec4_i32(vec4<i32>(-30992i, u_input.b, -29768i, u_input.b) & ~vec4<i32>(u_input.b, u_input.b, -2147483647i, 1i), ~vec4<i32>(-68081i, u_input.b, 1i, u_input.b)), countOneBits(~_wgslsmith_mod_u32(max(38494u, var_3.b.a), ~4294967295u)), vec3<u32>(1u, 1u, ~0u));
}

