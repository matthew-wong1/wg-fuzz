struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 23>;

var<private> global1: array<vec3<u32>, 9>;

var<private> global2: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec3<f32>(109f, -500f, -299f), 1298u, true, vec2<u32>(4294967295u, 0u)), Struct_1(vec3<f32>(-1603f, 1188f, 2332f), 4294967295u, false, vec2<u32>(0u, 39442u)), Struct_1(vec3<f32>(-101f, -143f, -426f), 22843u, true, vec2<u32>(11798u, 0u)), Struct_1(vec3<f32>(-1791f, -1000f, -929f), 4294967295u, false, vec2<u32>(1u, 91832u)), Struct_1(vec3<f32>(583f, 3521f, -315f), 11857u, true, vec2<u32>(48040u, 26607u)), Struct_1(vec3<f32>(-532f, 1017f, -1366f), 4294967295u, false, vec2<u32>(0u, 12658u)), Struct_1(vec3<f32>(611f, -306f, -151f), 49968u, false, vec2<u32>(1u, 21275u)), Struct_1(vec3<f32>(1564f, -907f, 810f), 1u, false, vec2<u32>(47684u, 13887u)), Struct_1(vec3<f32>(705f, -1385f, -655f), 77147u, false, vec2<u32>(32544u, 41029u)), Struct_1(vec3<f32>(-589f, 807f, -1000f), 49357u, false, vec2<u32>(4938u, 0u)), Struct_1(vec3<f32>(162f, -493f, -1000f), 1u, true, vec2<u32>(8681u, 3108u)), Struct_1(vec3<f32>(117f, 875f, 497f), 32732u, true, vec2<u32>(16888u, 4294967295u)), Struct_1(vec3<f32>(-533f, 1203f, 405f), 25014u, false, vec2<u32>(40551u, 28914u)), Struct_1(vec3<f32>(1588f, 1000f, -207f), 43646u, false, vec2<u32>(0u, 0u)), Struct_1(vec3<f32>(-208f, 1038f, -1126f), 0u, false, vec2<u32>(13896u, 47099u)), Struct_1(vec3<f32>(-1475f, 1229f, -1759f), 25934u, false, vec2<u32>(12909u, 4074u)), Struct_1(vec3<f32>(-212f, 1237f, -1166f), 4053u, true, vec2<u32>(1u, 4294967295u)), Struct_1(vec3<f32>(790f, 2224f, -1764f), 1u, true, vec2<u32>(1u, 42784u)), Struct_1(vec3<f32>(-469f, 501f, 1321f), 33142u, false, vec2<u32>(34082u, 21775u)), Struct_1(vec3<f32>(-646f, 1097f, -318f), 1u, false, vec2<u32>(4294967295u, 0u)), Struct_1(vec3<f32>(-205f, 1190f, 1148f), 47334u, false, vec2<u32>(33347u, 49533u)));

var<private> global3: array<i32, 26> = array<i32, 26>(2147483647i, -5104i, 0i, 1i, i32(-2147483648), -3027i, -1i, 1i, 2147483647i, -1i, 2147483647i, 2147483647i, 0i, -1i, 2147483647i, i32(-2147483648), -13390i, 0i, 2147483647i, 14578i, 2147483647i, -27117i, 1i, 0i, 1i, 2147483647i);

var<private> global4: vec4<f32> = vec4<f32>(585f, 1025f, -763f, 995f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2() -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(countOneBits(u_input.a.x), abs(u_input.a.x)) << ((_wgslsmith_mod_u32(1u, u_input.a.x) ^ (u_input.a.x >> (u_input.a.x % 32u))) % 32u), u_input.a.x | ~(u_input.a.x | 53626u)) ^ u_input.a.x, 21u)];
    let var_1 = 0u;
    var var_2 = global2[_wgslsmith_index_u32(~1u, 21u)];
    global0 = array<f32, 23>();
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_2.a.x))), global0[_wgslsmith_index_u32(u_input.a.x, 23u)]);
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> Struct_1 {
    global4 = vec4<f32>(_wgslsmith_f_op_f32(max(global4.x, _wgslsmith_f_op_f32(abs(-1000f)))), _wgslsmith_f_op_f32(func_2()), arg_1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -623f) + _wgslsmith_div_f32(-584f, global4.x)), _wgslsmith_f_op_f32(global4.x * -1241f))));
    var var_0 = -vec3<i32>(-35440i, -3186i, -2147483647i);
    global1 = array<vec3<u32>, 9>();
    global1 = array<vec3<u32>, 9>();
    let var_1 = arg_1.x;
    return global2[_wgslsmith_index_u32(~0u, 21u)];
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    global1 = array<vec3<u32>, 9>();
    global4 = vec4<f32>(-347f, 1f, 1012f, -492f);
    let var_0 = Struct_1(vec3<f32>(2152f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-510f, arg_0.a.x) + _wgslsmith_f_op_f32(arg_3.a.x + arg_3.a.x)), arg_2.a.x, any(vec3<bool>(true, true, true)))), arg_1.a.x), 1u, !(arg_1.c | true), arg_2.d);
    global2 = array<Struct_1, 21>();
    global2 = array<Struct_1, 21>();
    return _wgslsmith_f_op_f32(f32(-1f) * -135f);
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: bool, arg_3: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global4.x, 1127f) - global4.zwy))), u_input.a.x, _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.a.x, 23u)])))))) > arg_0, select(_wgslsmith_mult_vec2_u32(u_input.a.yy, ~(~vec2<u32>(u_input.a.x, 34130u))), ~u_input.a.yy | ~(~vec2<u32>(0u, u_input.a.x)), false));
    global0 = array<f32, 23>();
    global3 = array<i32, 26>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(step(func_1(1i, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-var_0.a)))).a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a) * global4.xww))), _wgslsmith_dot_vec3_u32(~u_input.a, vec3<u32>(_wgslsmith_dot_vec3_u32(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], vec3<u32>(var_0.d.x, var_0.b, u_input.a.x)), _wgslsmith_div_u32(var_0.d.x, var_0.d.x), 33557u)) >> (~(~4294967295u) % 32u), !(var_0.c || all(!vec4<bool>(arg_2, true, true, var_0.c))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(~u_input.a.x, 1u), var_0.d));
    var var_2 = 2147483647i;
    return vec2<bool>(true, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -_wgslsmith_add_vec3_i32(max(~vec3<i32>(u_input.b, -2554i, 0i), countOneBits(vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 26u)], u_input.b, -1i))), -_wgslsmith_mod_vec3_i32(vec3<i32>(global3[_wgslsmith_index_u32(u_input.a.x, 26u)], global3[_wgslsmith_index_u32(6525u, 26u)], 2147483647i) & vec3<i32>(global3[_wgslsmith_index_u32(7305u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)], u_input.b), vec3<i32>(u_input.b, global3[_wgslsmith_index_u32(4294967295u, 26u)], u_input.b)));
    global1 = array<vec3<u32>, 9>();
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(global4.wzx, _wgslsmith_f_op_vec3_f32(-global4.wwx)), global4.zzw, false)))), _wgslsmith_sub_u32(~reverseBits(_wgslsmith_mod_u32(1u, u_input.a.x)), ~select(_wgslsmith_mult_u32(28969u, u_input.a.x), u_input.a.x | 39103u, true)), true, ~vec2<u32>((u_input.a.x >> (u_input.a.x % 32u)) & ~25206u, u_input.a.x));
    let var_2 = select(!vec2<bool>(true, !all(vec3<bool>(var_1.c, false, var_1.c))), select(!vec2<bool>(true, 2147483647i <= global3[_wgslsmith_index_u32(var_1.b, 26u)]), vec2<bool>(!(!var_1.c), false || !var_1.c), all(vec3<bool>(var_1.c, var_1.c, var_1.c)) || var_1.c), func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(243f * global4.x) - -2609f)), _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.a.x, 321f, global4.x), vec3<f32>(-401f, var_1.a.x, 1000f))), var_1.b, var_1.c, var_1.d), var_1, func_1(-u_input.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(366f, -187f, var_1.a.x)))), Struct_1(_wgslsmith_f_op_vec3_f32(-global4.wyx), u_input.a.x, !var_1.c, _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(13668u, var_1.d.x))))), var_1.c, vec2<i32>(4404i, abs(u_input.b))));
    let var_3 = false;
    let var_4 = !select(!vec4<bool>(!var_3, true, var_2.x, true), vec4<bool>(var_3, all(vec2<bool>(var_1.c, true)), true, func_4(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a.x, 23u)] * 390f), func_1(0i, vec3<f32>(global0[_wgslsmith_index_u32(13108u, 23u)], global4.x, global0[_wgslsmith_index_u32(u_input.a.x, 23u)])).a.x, var_1.c, var_0.zx).x), false);
    var var_5 = var_1;
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(global4.x)), -1944f, _wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(min(global4.x, global0[_wgslsmith_index_u32(7535u, 23u)]))), _wgslsmith_f_op_f32(452f - var_1.a.x))));
    var_5 = Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a)) * global4.zzw)), 5703u, var_2.x, max(var_5.d, ~(~vec2<u32>(1u, var_1.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~global1[_wgslsmith_index_u32(~var_5.b, 9u)], vec2<u32>(~min(_wgslsmith_mod_u32(u_input.a.x, 1u), var_5.d.x), 1u));
}

