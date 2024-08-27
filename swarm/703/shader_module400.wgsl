struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 1>;

var<private> global1: Struct_2 = Struct_2(Struct_1(vec4<u32>(1u, 0u, 4357u, 0u), -45674i, vec4<i32>(-1977i, -18966i, 0i, -13520i), vec3<f32>(-701f, 584f, 1465f), 4294967295u), 4294967295u);

var<private> global2: bool = true;

var<private> global3: vec3<f32>;

var<private> global4: Struct_1 = Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 28566u), -1i, vec4<i32>(35942i, 1i, 24156i, 16368i), vec3<f32>(357f, 471f, -1385f), 1u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<u32> {
    global2 = true;
    global1 = Struct_2(global1.a, 1u);
    var var_0 = global0[_wgslsmith_index_u32(0u, 1u)];
    global2 = all(select(vec3<bool>(false, true, all(vec2<bool>(false, true))), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), true), select(false, true, 10407i > u_input.a))) & true;
    var var_1 = _wgslsmith_f_op_f32(select(global4.d.x, global3.x, false));
    return global4.a;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_1((global4.a << (vec4<u32>(u_input.b.x, 0u, ~19913u, _wgslsmith_div_u32(u_input.e, arg_0.e)) % vec4<u32>(32u))) >> (_wgslsmith_clamp_vec4_u32(global4.a, firstLeadingBit(func_3()), _wgslsmith_mult_vec4_u32(vec4<u32>(48417u, arg_1.a.a.x, 35319u, u_input.b.x) << (vec4<u32>(37328u, 30809u, 29752u, 0u) % vec4<u32>(32u)), global4.a)) % vec4<u32>(32u)), global4.c.x | arg_0.c.x, _wgslsmith_mult_vec4_i32(~abs(vec4<i32>(arg_0.b, 9295i, 25842i, -2147483647i)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(-arg_0.c, vec4<i32>(-12317i, -2147483647i, arg_1.a.c.x, -18440i)), (vec4<i32>(25032i, -31218i, 0i, -1i) ^ global1.a.c) ^ vec4<i32>(38041i, global4.c.x, 30247i, global4.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global4.d - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1702f, -826f, arg_0.d.x) * vec3<f32>(arg_1.a.d.x, 242f, arg_1.a.d.x)) + vec3<f32>(arg_2.x, -396f, 687f))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-349f, global1.a.d.x, arg_1.a.d.x))))))), func_3().x);
    global3 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.d.x, arg_0.d.x, arg_2.x)) - var_0.d)))));
    global2 = u_input.a <= var_0.c.x;
    global2 = !(true || any(vec4<bool>(true, true, any(vec2<bool>(true, true)), true)));
    let var_1 = vec3<i32>(u_input.a, var_0.c.x, i32(-1i) * -(global4.c.x ^ (arg_1.a.b | -32568i)));
    return arg_1;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> Struct_1 {
    global4 = func_2(func_2(arg_2.a, arg_2, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(global1.a.d.x, global3.x, -1000f, 1059f), vec4<f32>(global3.x, global1.a.d.x, 1000f, -176f)) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global0[_wgslsmith_index_u32(global4.a.x, 1u)], -2038f, global3.x, -824f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(512f, global4.d.x, global1.a.d.x, arg_0)))))).a, func_2(Struct_1(global1.a.a, select(-1241i, 52427i, true) & -32523i, global4.c, _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, global3.x, arg_0), vec3<f32>(1167f, 1332f, 283f)), ~(~global1.b)), Struct_2(Struct_1(global1.a.a, -1i & arg_2.a.b, vec4<i32>(arg_2.a.b, -62992i, u_input.a, global4.b), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-473f, -257f, -654f), global1.a.d)), arg_2.b), abs(1u)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a.d.x, arg_2.a.d.x, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.d.x, arg_0, arg_2.a.d.x, 516f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1137f, -200f, arg_0, arg_2.a.d.x))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_2.a.d.x, _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_div_f32(arg_2.a.d.x, 1674f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.e, 1u)] + -1622f)))))).a;
    var var_0 = func_2(func_2(Struct_1(vec4<u32>(4294967295u, global1.b, 32675u, u_input.d) & (global4.a ^ global4.a), ~_wgslsmith_add_i32(u_input.a, 0i), ~vec4<i32>(u_input.a, 23954i, -21404i, global1.a.c.x), global4.d, u_input.e), func_2(func_2(Struct_1(vec4<u32>(22884u, 40306u, 23791u, 86244u), 15699i, vec4<i32>(u_input.a, 2147483647i, global1.a.c.x, global1.a.b), global4.d, arg_2.a.a.x), arg_2, vec4<f32>(global4.d.x, 216f, -1920f, global1.a.d.x)).a, Struct_2(func_2(Struct_1(global4.a, global4.c.x, arg_2.a.c, vec3<f32>(global4.d.x, global1.a.d.x, global4.d.x), global4.a.x), Struct_2(global1.a, arg_2.a.e), vec4<f32>(global4.d.x, -1078f, 223f, 681f)).a, 79476u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global4.d.x, 389f, global3.x, 161f))) - _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_0, global3.x, -1117f, global0[_wgslsmith_index_u32(0u, 1u)]))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - _wgslsmith_f_op_f32(-1570f * -1204f)), -391f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1585f - -1254f)))).a, func_2(global1.a, Struct_2(Struct_1(~vec4<u32>(92544u, global1.b, global4.e, global4.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_2.a.b, global4.c.x, global1.a.c.x), vec4<i32>(-16000i, -30728i, arg_2.a.c.x, -15376i)), -vec4<i32>(-25721i, -47035i, u_input.a, -14816i), vec3<f32>(global3.x, 879f, global3.x), u_input.c), global4.e), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2064f, -168f, -608f, global0[_wgslsmith_index_u32(global4.e, 1u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2.a.d.x, 1721f, arg_0))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global4.d.x, arg_0, global4.d.x, -1089f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(global1.b, 1u)], arg_2.a.d.x, -343f, 1048f))))), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(631f - -729f), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-832f)) + -1129f), global4.d.x, _wgslsmith_f_op_f32(step(287f, _wgslsmith_f_op_f32(global4.d.x * -1257f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(165f, -246f, global4.d.x, global1.a.d.x) + vec4<f32>(global4.d.x, 676f, -993f, -334f)))))).a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.d.x, _wgslsmith_f_op_f32(1768f * 266f))) * -1053f);
    var var_2 = ~arg_2.a.a.zxz;
    let var_3 = select(!vec3<bool>(all(select(vec2<bool>(true, arg_1.x), vec2<bool>(true, arg_1.x), arg_1.x)), true, all(!arg_1.zx)), select(select(!select(vec3<bool>(true, false, arg_1.x), vec3<bool>(arg_1.x, true, true), vec3<bool>(false, true, arg_1.x)), !vec3<bool>(arg_1.x, arg_1.x, arg_1.x), arg_1), vec3<bool>(true, var_0.c.x == func_2(Struct_1(vec4<u32>(arg_2.b, global4.e, 34581u, 13688u), global4.b, global4.c, var_0.d, 0u), arg_2, vec4<f32>(-1909f, -615f, -691f, var_0.d.x)).a.c.x, !arg_1.x), true), arg_1.x);
    return func_2(Struct_1(var_0.a, -2147483647i, _wgslsmith_mult_vec4_i32(reverseBits(vec4<i32>(u_input.a, -2147483647i, arg_2.a.b, 40299i)), vec4<i32>(-1i) * -var_0.c), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-281f * global3.x), -1000f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 1u)], arg_2.a.d.x, true))))), max(var_0.a.x, 23910u)), func_2(Struct_1(vec4<u32>(1u, u_input.d, var_0.e, global1.b) | ~vec4<u32>(4516u, 54661u, 6394u, u_input.b.x), func_2(Struct_1(vec4<u32>(4294967295u, global1.a.e, global1.b, 4294967295u), global4.b, var_0.c, global4.d, 0u), arg_2, vec4<f32>(global3.x, 677f, 1004f, global4.d.x)).a.c.x << (56053u % 32u), vec4<i32>(min(global1.a.b, 1i), select(u_input.a, 21005i, var_3.x), _wgslsmith_add_i32(-1i, 2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2686i, 1i, u_input.a), global4.c.xyz)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global1.a.d, var_0.d) * _wgslsmith_f_op_vec3_f32(-global4.d)), global1.a.e), Struct_2(Struct_1(~var_0.a, ~(-1i), func_2(Struct_1(vec4<u32>(global1.a.a.x, u_input.b.x, 1u, arg_2.a.e), 0i, global4.c, vec3<f32>(global3.x, arg_2.a.d.x, 1186f), arg_2.a.a.x), arg_2, vec4<f32>(var_0.d.x, arg_2.a.d.x, global1.a.d.x, -689f)).a.c, vec3<f32>(global0[_wgslsmith_index_u32(var_2.x, 1u)], -368f, -1547f), ~var_0.a.x), 1u), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.d.x, 860f, global4.d.x, global0[_wgslsmith_index_u32(0u, 1u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(229f, -1344f, -1404f, arg_0))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0[_wgslsmith_index_u32(38402u, 1u)], 1000f, 1000f, global3.x))))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -297f), _wgslsmith_f_op_f32(f32(-1f) * -2166f), 1f, _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(arg_2.a.a.x, 1u)] + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1580f * -552f))))).a;
}

fn func_1(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> vec4<u32> {
    global4 = global1.a;
    let var_0 = ~reverseBits(~(~0u) >> (0u % 32u));
    global1 = Struct_2(func_4(global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~u_input.c, 19527u), 1u)], vec3<bool>(true, all(vec2<bool>(true, true)), arg_2), func_2(Struct_1(vec4<u32>(1u, global1.b, 28890u, global4.a.x), u_input.a ^ global1.a.b, ~vec4<i32>(arg_0.a.c.x, 1i, 0i, arg_0.a.c.x), _wgslsmith_f_op_vec3_f32(-arg_0.a.d), 0u), arg_0, arg_1)), 86784u);
    global2 = arg_2;
    let var_1 = Struct_1(global1.a.a ^ vec4<u32>(global1.b, _wgslsmith_add_u32(global4.e, firstLeadingBit(global4.e)), func_3().x >> (~14321u % 32u), 27811u), u_input.a, global1.a.c & ~global1.a.c, vec3<f32>(_wgslsmith_div_f32(858f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global3.x)))), global0[_wgslsmith_index_u32(~1u, 1u)], -405f), ~47851u & (min(global4.a.x, ~u_input.c) ^ 1u));
    return vec4<u32>(select(~30103u << (0u % 32u), ~(~61213u), (global0[_wgslsmith_index_u32(global1.a.e, 1u)] == 1f) || any(vec3<bool>(true, arg_2, arg_2))), var_0, _wgslsmith_add_u32(func_4(1125f, vec3<bool>(true, false, arg_2), arg_0).a.x >> (_wgslsmith_dot_vec2_u32(func_3().yw, vec2<u32>(arg_0.a.a.x, u_input.b.x)) % 32u), reverseBits(select(reverseBits(var_1.a.x), 9017u, var_0 <= arg_0.b))), 4294967295u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(func_1(Struct_2(Struct_1(vec4<u32>(u_input.c, 42647u, 0u, global1.b), 1i, global4.c, global1.a.d, 1u), global1.a.e), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global1.a.d.x, global0[_wgslsmith_index_u32(global4.e, 1u)], global1.a.d.x) + vec4<f32>(-390f, -1303f, 1300f, global3.x)), any(vec4<bool>(true, true, true, false))), ~_wgslsmith_sub_vec4_u32(global1.a.a, global4.a)) << (u_input.e % 32u), ~(~(~27157u)));
    let var_1 = Struct_1((~global1.a.a & vec4<u32>(_wgslsmith_mult_u32(global4.e, 83116u), firstLeadingBit(26351u), global1.b, 1u)) ^ vec4<u32>(~(~global1.b), func_2(func_4(1223f, vec3<bool>(true, false, true), Struct_2(Struct_1(vec4<u32>(4706u, 4294967295u, 4294967295u, 37985u), 2147483647i, global1.a.c, global4.d, 1u), 45258u)), func_2(Struct_1(vec4<u32>(global1.b, 59935u, global4.e, 7417u), -2147483647i, vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec3<f32>(1344f, global4.d.x, global0[_wgslsmith_index_u32(global4.e, 1u)]), 19282u), Struct_2(global1.a, global4.e), vec4<f32>(global3.x, global0[_wgslsmith_index_u32(u_input.e, 1u)], 1143f, global0[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global1.a.d.x, global1.a.d.x, global4.d.x))).b, ~_wgslsmith_mod_u32(global4.a.x, 4294967295u), global4.e), ~(~(-firstTrailingBit(-1i))), global4.c, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.x, global1.a.d.x, global3.x), vec3<f32>(global3.x, -471f, global1.a.d.x))))))), ~u_input.d);
    let var_2 = global1.a.d;
    let var_3 = Struct_1(vec4<u32>(_wgslsmith_mult_u32(global1.a.e, _wgslsmith_dot_vec3_u32(var_1.a.xwx, ~vec3<u32>(global1.b, 89406u, global4.a.x))), ~0u, _wgslsmith_clamp_u32(~(~4294967295u), u_input.c | min(global1.b, var_1.a.x), _wgslsmith_mod_u32(u_input.e | 22562u, ~global1.b)), func_4(_wgslsmith_f_op_f32(global1.a.d.x + -1249f), vec3<bool>(true, true, true), Struct_2(Struct_1(vec4<u32>(u_input.d, 36499u, 1u, global4.a.x), 0i, vec4<i32>(u_input.a, global1.a.b, 35297i, 2147483647i), var_1.d, 19072u), 16824u)).a.x << (69539u % 32u)), global4.b, _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(-1i, 22877i, u_input.a, 1i)), global1.a.c), var_1.c), global4.d, var_1.a.x);
    var var_4 = !select(vec4<bool>(_wgslsmith_f_op_f32(438f * global4.d.x) > _wgslsmith_f_op_f32(trunc(563f)), true, all(vec4<bool>(true, false, true, true)) && true, (global0[_wgslsmith_index_u32(12449u, 1u)] < 1000f) | false), !vec4<bool>(true, var_3.b > global1.a.b, all(vec4<bool>(true, true, true, false)), true), true);
    var_0 = ~90251u;
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_2(Struct_1(vec4<u32>(global1.b, var_3.e, 42539u, 10145u), 0i, global4.c, global1.a.d, var_1.a.x), Struct_2(global1.a, global1.a.a.x), vec4<f32>(global4.d.x, var_3.d.x, global3.x, var_1.d.x)).a.d.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-func_4(621f, var_4.zyw, Struct_2(var_3, 10243u)).d.x) * global0[_wgslsmith_index_u32(~4294967295u, 1u)])) + global0[_wgslsmith_index_u32(25348u, 1u)]);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1627f, var_3.d.x, 184f) - global1.a.d)) + _wgslsmith_div_vec3_f32(var_3.d, vec3<f32>(672f, _wgslsmith_f_op_f32(sign(global4.d.x)), -154f))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(0u, global1.a.e), reverseBits(var_3.e)), var_1.a.x, 4294967295u, max(~0u, _wgslsmith_mod_u32(17602u, global4.a.x))) << (var_1.a % vec4<u32>(32u)), vec4<i32>(~func_4(-875f, !vec3<bool>(var_4.x, var_4.x, false), func_2(Struct_1(vec4<u32>(34691u, 65787u, 1u, 0u), 4036i, var_1.c, global1.a.d, 74737u), Struct_2(Struct_1(var_3.a, 1i, var_1.c, var_1.d, 22732u), u_input.e), vec4<f32>(352f, var_2.x, -1000f, global3.x))).b, countOneBits(var_3.b), -1i, func_2(func_4(_wgslsmith_f_op_f32(-1547f + global4.d.x), var_4.wxz, Struct_2(var_1, 11914u)), func_2(func_4(global4.d.x, var_4.zzx, Struct_2(Struct_1(vec4<u32>(u_input.d, var_1.a.x, 0u, global4.a.x), u_input.a, var_1.c, vec3<f32>(1093f, 379f, -1352f), 9402u), 0u)), Struct_2(var_3, 4294967295u), vec4<f32>(-392f, global0[_wgslsmith_index_u32(u_input.d, 1u)], -282f, var_1.d.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-375f, global3.x, global3.x, global4.d.x))))).a.c.x), var_3.e << ((_wgslsmith_sub_u32(~4294967295u, 0u) | _wgslsmith_mod_u32(u_input.c, global1.a.a.x)) % 32u), ~global1.a.c.ywy);
}

