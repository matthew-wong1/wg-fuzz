struct Struct_1 {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<vec2<bool>, 18>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: Struct_2, arg_1: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-arg_0.c);
    var var_1 = Struct_2(arg_0.a, Struct_1(vec2<i32>(u_input.a.x | 2289i, 1i) >> (arg_0.b.b.xz % vec2<u32>(32u)), vec3<u32>(arg_0.b.b.x, ~arg_0.b.b.x, ~arg_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c + arg_0.c) + -1000f)) + _wgslsmith_f_op_f32(-arg_0.c)));
    let var_2 = Struct_2(var_1.a, Struct_1(u_input.a, ~(~(var_1.b.b | vec3<u32>(4294967295u, 0u, 4294967295u)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    global1 = array<vec2<bool>, 18>();
    var var_3 = min(_wgslsmith_mult_vec2_i32(arg_0.b.a, var_2.b.a), var_2.b.a);
    return var_2.b;
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    let var_0 = Struct_1(vec2<i32>(1i, arg_2.a.x), arg_1);
    var var_1 = arg_3.b;
    var var_2 = reverseBits(var_0.a);
    var var_3 = select(3258i >> (func_2(Struct_2(countOneBits(arg_3.a), Struct_1(vec2<i32>(-43216i, var_1.a.x), var_1.b), arg_3.c), _wgslsmith_sub_i32(-23014i, global0.x | arg_0)).b.x % 32u), var_1.a.x, true);
    let var_4 = func_2(arg_3, var_0.a.x);
    return arg_3;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_2) -> Struct_1 {
    var var_0 = arg_1.c;
    var var_1 = ~(~(_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(arg_2.a.wz, arg_0.b.b.xz), arg_1.b.b.x) & firstTrailingBit(16199u)));
    let var_2 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.c, arg_0.c, 777f, 315f) - vec4<f32>(-1286f, arg_2.c, arg_0.c, arg_2.c))), vec4<f32>(_wgslsmith_div_f32(1000f, 1000f), _wgslsmith_f_op_f32(round(arg_1.c)), 793f, func_3(2147483647i, vec3<u32>(arg_1.a.x, arg_0.a.x, arg_1.a.x), arg_1.b, arg_2).c)) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c, arg_1.c, 817f, 657f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.c, -1109f, 415f, -924f), vec4<f32>(913f, arg_0.c, -2084f, arg_0.c), false))))))));
    var var_3 = arg_1.b;
    let var_4 = var_2.wyz;
    return arg_1.b;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec3<i32> {
    let var_0 = select(!(!select(select(vec4<bool>(arg_0, arg_0, true, arg_0), vec4<bool>(arg_0, false, arg_0, false), vec4<bool>(false, false, false, arg_0)), !vec4<bool>(true, true, arg_0, arg_0), !arg_0)), select(!(!(!vec4<bool>(arg_0, arg_0, arg_0, false))), !select(vec4<bool>(arg_0, false, false, true), !vec4<bool>(false, arg_0, arg_0, arg_0), !vec4<bool>(false, false, arg_0, false)), arg_0 == (_wgslsmith_mod_u32(arg_2.b.x, arg_2.b.x) >= _wgslsmith_mult_u32(65752u, 50983u))), select(!(!select(vec4<bool>(true, arg_0, arg_0, arg_0), vec4<bool>(true, false, arg_0, arg_0), arg_0)), vec4<bool>(all(vec4<bool>(false, true, arg_0, arg_0)) || arg_0, all(vec3<bool>(arg_0, arg_0, arg_0)), !(!arg_0), !(!arg_0)), arg_0));
    global0 = ~u_input.a;
    var var_1 = func_3(-(~(i32(-1i) * -arg_2.a.x)), vec3<u32>(0u, arg_2.b.x, firstLeadingBit(4294967295u)), Struct_1(u_input.a, ~(func_2(Struct_2(vec4<u32>(0u, arg_2.b.x, arg_2.b.x, arg_2.b.x), Struct_1(arg_2.a, vec3<u32>(40152u, arg_2.b.x, 67254u)), -1551f), global0.x).b | func_4(Struct_2(vec4<u32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, 26953u), Struct_1(vec2<i32>(1i, -1i), arg_2.b), arg_1), Struct_2(vec4<u32>(0u, 55715u, 4294967295u, 11520u), arg_2, arg_1), Struct_2(vec4<u32>(arg_2.b.x, 0u, 107545u, 0u), Struct_1(arg_2.a, arg_2.b), arg_1)).b)), Struct_2(_wgslsmith_sub_vec4_u32(~(vec4<u32>(27061u, arg_2.b.x, arg_2.b.x, 4294967295u) & vec4<u32>(arg_2.b.x, 1u, 4294967295u, 100u)), firstTrailingBit(~vec4<u32>(arg_2.b.x, arg_2.b.x, 1u, 4294967295u))), Struct_1(abs(arg_2.a), vec3<u32>(4294967295u, 27359u, arg_2.b.x << (arg_2.b.x % 32u))), _wgslsmith_f_op_f32(arg_1 - arg_1))).b.b;
    let var_2 = u_input.a;
    var var_3 = ~vec2<i32>(-2147483647i, -1i);
    return -min(vec3<i32>(var_3.x, 2147483647i, 2147483647i << (~arg_2.b.x % 32u)), abs(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(37228i, 7863i, global0.x), vec3<i32>(-59630i, var_2.x, u_input.a.x)), vec3<i32>(u_input.a.x, 27286i, -26002i))));
}

fn func_6(arg_0: u32, arg_1: vec4<bool>, arg_2: vec2<i32>, arg_3: vec3<i32>) -> Struct_2 {
    global0 = -func_4(Struct_2(~firstLeadingBit(vec4<u32>(12265u, arg_0, 2882u, arg_0)), Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.x, 35482i), arg_3.xz), ~vec3<u32>(arg_0, 0u, arg_0)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -247f)))), func_3(firstTrailingBit(0i), countOneBits(~vec3<u32>(arg_0, 39056u, arg_0)), func_2(Struct_2(vec4<u32>(arg_0, 2761u, 10171u, arg_0), Struct_1(arg_3.yz, vec3<u32>(arg_0, arg_0, 1u)), -1029f), select(arg_3.x, -2147483647i, true)), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(2076u, arg_0, 1u, 60545u), vec4<u32>(0u, arg_0, arg_0, 64068u)), func_3(arg_3.x, vec3<u32>(4294967295u, arg_0, arg_0), Struct_1(arg_2, vec3<u32>(76243u, 81722u, arg_0)), Struct_2(vec4<u32>(0u, 4294967295u, 1u, arg_0), Struct_1(vec2<i32>(global0.x, arg_3.x), vec3<u32>(4294967295u, arg_0, arg_0)), 1506f)).b, _wgslsmith_f_op_f32(round(-458f)))), Struct_2(firstTrailingBit(vec4<u32>(arg_0, 4294967295u, arg_0, arg_0)), Struct_1(abs(arg_3.yy), vec3<u32>(arg_0, 86732u, 392u) >> (vec3<u32>(0u, arg_0, 37615u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-1021f + -748f))).a;
    var var_0 = !global1[_wgslsmith_index_u32(~(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0, 875u), ~vec2<u32>(arg_0, 2829u)) ^ arg_0), 18u)];
    var var_1 = func_4(func_3(-19981i, vec3<u32>(func_2(func_3(-52352i, vec3<u32>(arg_0, arg_0, 4294967295u), Struct_1(vec2<i32>(global0.x, arg_2.x), vec3<u32>(2366u, arg_0, arg_0)), Struct_2(vec4<u32>(4294967295u, arg_0, arg_0, arg_0), Struct_1(u_input.a, vec3<u32>(24285u, arg_0, 89086u)), 1404f)), -2147483647i).b.x, _wgslsmith_clamp_u32(arg_0, 14355u, arg_0) ^ 10308u, arg_0), Struct_1(vec2<i32>(_wgslsmith_div_i32(-30833i, 52417i), _wgslsmith_clamp_i32(2147483647i, u_input.b, u_input.b)), ~min(vec3<u32>(55159u, arg_0, arg_0), vec3<u32>(10904u, 0u, arg_0))), Struct_2(vec4<u32>(22126u, 0u, ~4294967295u, func_3(-2147483647i, vec3<u32>(16584u, arg_0, arg_0), Struct_1(vec2<i32>(1i, global0.x), vec3<u32>(0u, 4294967295u, arg_0)), Struct_2(vec4<u32>(arg_0, arg_0, arg_0, 1u), Struct_1(vec2<i32>(u_input.b, -5166i), vec3<u32>(arg_0, 72157u, arg_0)), 1202f)).b.b.x), Struct_1(_wgslsmith_sub_vec2_i32(u_input.a, arg_2), vec3<u32>(arg_0, 1u, arg_0)), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1594f, -746f), _wgslsmith_f_op_f32(max(-394f, -659f)))))), func_3(~_wgslsmith_mod_i32(u_input.b, ~global0.x), vec3<u32>(arg_0 << (~4294967295u % 32u), 1u, 4294967295u), Struct_1(func_2(Struct_2(vec4<u32>(arg_0, 1u, 0u, 4294967295u), Struct_1(vec2<i32>(2147483647i, 9709i), vec3<u32>(arg_0, 0u, arg_0)), 444f), global0.x & -7814i).a, ~(vec3<u32>(15186u, 63866u, arg_0) & vec3<u32>(12917u, 0u, 1u))), Struct_2(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0, 92873u, arg_0, 10344u), vec4<u32>(arg_0, 41392u, arg_0, 1u))), Struct_1(func_3(-19549i, vec3<u32>(arg_0, 2579u, arg_0), Struct_1(arg_3.zy, vec3<u32>(arg_0, 1u, arg_0)), Struct_2(vec4<u32>(4294967295u, 4294967295u, arg_0, 0u), Struct_1(arg_3.yy, vec3<u32>(arg_0, arg_0, 1u)), -735f)).b.a, reverseBits(vec3<u32>(arg_0, 7673u, arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_div_f32(-254f, 659f)))), func_3(min(arg_2.x, arg_3.x), abs(vec3<u32>(arg_0, 50628u, 1u) | (vec3<u32>(1u, 21386u, arg_0) ^ vec3<u32>(arg_0, arg_0, arg_0))), Struct_1(-u_input.a << (~vec2<u32>(arg_0, 9243u) % vec2<u32>(32u)), vec3<u32>(~1u, ~0u, ~arg_0)), func_3(global0.x, vec3<u32>(1u, func_3(arg_2.x, vec3<u32>(arg_0, arg_0, 49583u), Struct_1(vec2<i32>(global0.x, arg_2.x), vec3<u32>(0u, arg_0, 0u)), Struct_2(vec4<u32>(1u, 4294967295u, arg_0, 35234u), Struct_1(vec2<i32>(global0.x, 2147483647i), vec3<u32>(0u, arg_0, arg_0)), 948f)).b.b.x, _wgslsmith_add_u32(arg_0, arg_0)), func_2(func_3(26700i, vec3<u32>(arg_0, 10948u, arg_0), Struct_1(vec2<i32>(global0.x, arg_2.x), vec3<u32>(2486u, arg_0, arg_0)), Struct_2(vec4<u32>(109110u, arg_0, arg_0, arg_0), Struct_1(u_input.a, vec3<u32>(103716u, 50041u, 10119u)), 912f)), ~arg_3.x), func_3(22532i ^ u_input.b, ~vec3<u32>(arg_0, 1u, 1u), func_4(Struct_2(vec4<u32>(0u, arg_0, 1u, arg_0), Struct_1(vec2<i32>(arg_2.x, 3455i), vec3<u32>(arg_0, arg_0, arg_0)), 1796f), Struct_2(vec4<u32>(4294967295u, arg_0, 52486u, 1u), Struct_1(vec2<i32>(1164i, global0.x), vec3<u32>(arg_0, 40121u, arg_0)), -979f), Struct_2(vec4<u32>(48792u, 101843u, arg_0, 4294967295u), Struct_1(arg_2, vec3<u32>(4294967295u, arg_0, 1u)), 273f)), func_3(1i, vec3<u32>(arg_0, arg_0, 40741u), Struct_1(vec2<i32>(2147483647i, -2147483647i), vec3<u32>(arg_0, 28191u, arg_0)), Struct_2(vec4<u32>(4294967295u, arg_0, arg_0, arg_0), Struct_1(arg_2, vec3<u32>(1u, 75669u, 0u)), 970f))))));
    let var_2 = 586f;
    var var_3 = vec4<bool>(any(select(select(select(global1[_wgslsmith_index_u32(arg_0, 18u)], global1[_wgslsmith_index_u32(97433u, 18u)], false), select(global1[_wgslsmith_index_u32(arg_0, 18u)], global1[_wgslsmith_index_u32(var_1.b.x, 18u)], arg_1.ww), var_0.x || var_0.x), arg_1.zy, true)), true, false, false);
    return Struct_2(countOneBits(vec4<u32>(~var_1.b.x, arg_0, ~arg_0 >> (14139u % 32u), reverseBits(15252u))), func_3(25416i, vec3<u32>(1u, 0u, ~var_1.b.x), Struct_1(max(-vec2<i32>(arg_3.x, -11855i), arg_3.yx), ~var_1.b), Struct_2(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0, var_1.b.x, var_1.b.x, 67392u), vec4<u32>(var_1.b.x, 0u, var_1.b.x, arg_0)) | ~vec4<u32>(arg_0, 1u, 4294967295u, 200u), Struct_1(vec2<i32>(-70904i, u_input.b), var_1.b & var_1.b), -394f)).b, _wgslsmith_f_op_f32(var_2 + var_2));
}

fn func_1() -> Struct_1 {
    let var_0 = firstTrailingBit(376u);
    let var_1 = func_6(abs(~var_0), select(vec4<bool>(true, true, true, true), !vec4<bool>(select(false, false, false), all(global1[_wgslsmith_index_u32(1u, 18u)]), true, true), all(global1[_wgslsmith_index_u32(var_0 >> (1u % 32u), 18u)])), vec2<i32>(28914i, u_input.b), func_5(all(select(vec2<bool>(true, true), global1[_wgslsmith_index_u32(~var_0, 18u)], true)), -1000f, func_4(func_3(global0.x | global0.x, vec3<u32>(var_0, 79550u, 24762u), func_2(Struct_2(vec4<u32>(var_0, var_0, 25466u, 22703u), Struct_1(vec2<i32>(global0.x, 0i), vec3<u32>(4294967295u, 36249u, 0u)), -683f), u_input.a.x), Struct_2(vec4<u32>(32219u, 39590u, var_0, 0u), Struct_1(u_input.a, vec3<u32>(9887u, 83769u, var_0)), 1000f)), func_3(global0.x, vec3<u32>(var_0, 61332u, 13777u), func_2(Struct_2(vec4<u32>(var_0, 98014u, 11147u, var_0), Struct_1(u_input.a, vec3<u32>(var_0, var_0, 43627u)), -954f), global0.x), Struct_2(vec4<u32>(71628u, 30323u, var_0, 15862u), Struct_1(u_input.a, vec3<u32>(23053u, 4294967295u, 16355u)), 213f)), func_3(_wgslsmith_mod_i32(global0.x, 1i), reverseBits(vec3<u32>(61179u, 1u, 1u)), Struct_1(vec2<i32>(u_input.a.x, global0.x), vec3<u32>(46922u, var_0, var_0)), Struct_2(vec4<u32>(0u, 0u, var_0, var_0), Struct_1(vec2<i32>(global0.x, 35458i), vec3<u32>(var_0, var_0, 47208u)), 515f)))));
    let var_2 = func_6(~var_0 | ~1u, select(select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)), all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), false))), select(select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false)), var_1.c < -362f), vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(false, false, false)), any(vec4<bool>(false, false, false, false)), any(vec3<bool>(true, true, true)), 43617u != var_1.b.b.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(select(vec2<bool>(true, false), global1[_wgslsmith_index_u32(4294967295u, 18u)], vec2<bool>(false, true))))), ~func_6(~func_2(var_1, -2147483647i).b.x, vec4<bool>(true, true, true, true), _wgslsmith_div_vec2_i32(var_1.b.a, func_2(var_1, var_1.b.a.x).a), _wgslsmith_clamp_vec3_i32(vec3<i32>(13655i, u_input.b, u_input.b), -vec3<i32>(6052i, global0.x, 2780i), vec3<i32>(u_input.b, -33801i, -47147i))).b.a, select(abs(-vec3<i32>(global0.x, u_input.a.x, -1i)), vec3<i32>(func_3(global0.x, var_1.b.b ^ var_1.a.yww, func_4(var_1, var_1, Struct_2(var_1.a, var_1.b, var_1.c)), var_1).b.a.x, 1i, -2147483647i), select(vec3<bool>(true, true, true), vec3<bool>(all(global1[_wgslsmith_index_u32(0u, 18u)]), true, false), true))).b;
    var var_3 = true;
    var_3 = true && !(!all(select(global1[_wgslsmith_index_u32(var_2.b.x, 18u)], global1[_wgslsmith_index_u32(1u, 18u)], true)));
    return func_4(Struct_2(vec4<u32>(0u, var_1.a.x, 1u, var_1.a.x), Struct_1(-var_1.b.a & abs(u_input.a), vec3<u32>(var_0, var_2.b.x, 4294967295u) & vec3<u32>(26902u, var_2.b.x, var_1.b.b.x)), -1788f), var_1, Struct_2(vec4<u32>(abs(func_6(var_2.b.x, vec4<bool>(true, true, true, false), vec2<i32>(var_2.a.x, 101529i), vec3<i32>(2147483647i, 0i, 0i)).b.b.x), ~(~4294967295u), var_0, _wgslsmith_div_u32(var_0, 4294967295u)), Struct_1(~vec2<i32>(var_1.b.a.x, 1i), vec3<u32>(var_2.b.x, ~var_2.b.x, ~var_1.b.b.x)), _wgslsmith_f_op_f32(floor(-979f))));
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    let var_0 = _wgslsmith_add_vec3_i32(reverseBits((vec3<i32>(14427i, arg_0.a.x, 1i) ^ vec3<i32>(2147483647i, global0.x, -31392i)) >> (_wgslsmith_mod_vec3_u32(arg_1.b, arg_0.b) % vec3<u32>(32u))) << (reverseBits(~arg_1.b | arg_1.b) % vec3<u32>(32u)), ~vec3<i32>(~(-6708i), arg_0.a.x, 0i));
    var var_1 = func_3(~(~(u_input.b << (4294967295u % 32u))), vec3<u32>(~min(_wgslsmith_mod_u32(arg_1.b.x, arg_0.b.x), arg_1.b.x), arg_0.b.x, ~arg_1.b.x), arg_0, Struct_2(vec4<u32>(35794u, 67455u, _wgslsmith_div_u32(~arg_1.b.x, ~arg_1.b.x), 17000u), func_6(arg_1.b.x, vec4<bool>(true, false, arg_1.b.x > 43291u, true), arg_1.a, _wgslsmith_div_vec3_i32(var_0, -vec3<i32>(global0.x, 2147483647i, arg_1.a.x))).b, arg_2.x)).b;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(f32(-1f) * -196f)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 18>();
    global1 = array<vec2<bool>, 18>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-526f, -1569f, false)))))) * _wgslsmith_f_op_f32(-911f * _wgslsmith_f_op_f32(func_7(func_1(), Struct_1(vec2<i32>(u_input.b, 1i), vec3<u32>(4294967295u, 1u, 25594u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, -183f) - vec2<f32>(493f, 429f)))))));
    var var_1 = func_6(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(~38892u, select(4294967295u, 4294967295u, false)), min(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(38074u, 0u)), select(0u, 4294967295u, false))), select(select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), true), select(select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, false, false, false), all(global1[_wgslsmith_index_u32(0u, 18u)])), vec4<bool>(true, true, true, true)), vec4<bool>(true, 1i <= _wgslsmith_dot_vec3_i32(vec3<i32>(-9491i, 1i, global0.x), vec3<i32>(global0.x, 0i, 2691i)), all(vec3<bool>(true, true, true)), true), false), ~(~u_input.a), select(abs(vec3<i32>(_wgslsmith_clamp_i32(global0.x, u_input.a.x, u_input.b), global0.x, u_input.b)), vec3<i32>(-1i) * -_wgslsmith_div_vec3_i32(vec3<i32>(global0.x, -1i, global0.x), vec3<i32>(u_input.b, 2147483647i, global0.x)), true));
    var var_2 = 31482i;
    let x = u_input.a;
    s_output = StorageBuffer(func_3(~1i, _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(var_1.a.x, 0u, var_1.b.b.x), ~var_1.b.b), vec3<u32>(_wgslsmith_add_u32(0u, 0u), 34008u, 4294967295u)), func_6(select(_wgslsmith_sub_u32(4294967295u, 102646u), min(var_1.b.b.x, var_1.a.x), all(vec3<bool>(false, true, false))), vec4<bool>(all(vec4<bool>(false, false, true, false)), true, true, true), u_input.a, ~(~vec3<i32>(-1893i, -39012i, 72066i))).b, Struct_2(abs(select(vec4<u32>(var_1.a.x, 0u, var_1.a.x, 0u), vec4<u32>(1u, var_1.a.x, var_1.b.b.x, var_1.b.b.x), vec4<bool>(false, false, false, true))), Struct_1(vec2<i32>(0i, -2147483647i), vec3<u32>(var_1.b.b.x, 4294967295u, var_1.b.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))).c, min(var_1.b.b.xz, ~vec2<u32>(_wgslsmith_dot_vec3_u32(var_1.a.yzw, vec3<u32>(var_1.b.b.x, var_1.b.b.x, var_1.b.b.x)), 0u)));
}

