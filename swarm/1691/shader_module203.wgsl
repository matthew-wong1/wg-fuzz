struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 19> = array<u32, 19>(0u, 43520u, 53379u, 4294967295u, 0u, 44850u, 4294967295u, 0u, 4294967295u, 4145u, 0u, 89766u, 1040u, 0u, 76900u, 95148u, 4294967295u, 1u, 89830u);

var<private> global1: vec3<u32> = vec3<u32>(37731u, 4294967295u, 1u);

var<private> global2: Struct_2;

var<private> global3: array<Struct_1, 25>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = ~_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(37134u, 4294967295u | global0[_wgslsmith_index_u32(45294u, 19u)], ~global1.x), ~_wgslsmith_sub_vec3_u32(vec3<u32>(5792u, global0[_wgslsmith_index_u32(0u, 19u)], 24377u), vec3<u32>(global1.x, global1.x, global0[_wgslsmith_index_u32(global1.x, 19u)]))), countOneBits(firstTrailingBit(min(vec3<u32>(global1.x, global0[_wgslsmith_index_u32(1u, 19u)], 4294967295u), vec3<u32>(1u, global1.x, u_input.a)))), select(vec3<u32>(_wgslsmith_mod_u32(global1.x, u_input.e), 0u, max(global0[_wgslsmith_index_u32(61141u, 19u)], 13020u)), vec3<u32>(global1.x, 0u, global1.x) | _wgslsmith_mod_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 19u)], 4294967295u, 4294967295u), vec3<u32>(global1.x, 0u, global1.x)), arg_0.e || true));
    let var_0 = -reverseBits(u_input.b);
    let var_1 = ~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-var_0, firstTrailingBit(-2147483647i), 1i), firstLeadingBit(vec3<i32>(-2147483647i, -28009i, var_0))), max(vec3<i32>(var_0, var_0, 2147483647i), vec3<i32>(var_0, 1i, _wgslsmith_mod_i32(arg_0.a.a.x, -1i))));
    global0 = array<u32, 19>();
    let var_2 = global1.x;
    return min(min(1u, ~48392u), global1.x);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_1(vec2<i32>(_wgslsmith_mult_i32(u_input.b, firstLeadingBit(-global2.a.a.x)), _wgslsmith_sub_i32(firstLeadingBit(~0i), _wgslsmith_mod_i32(arg_1.x, ~global2.d.a.x))));
    let var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(~u_input.a, 66145u, u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(12342u, global0[_wgslsmith_index_u32(1u, 19u)], 1u), vec3<u32>(global0[_wgslsmith_index_u32(4294967295u, 19u)], 30605u, u_input.a))) & firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(1u, 19u)], 4294967295u), global0[_wgslsmith_index_u32(u_input.a, 19u)], func_3(Struct_2(global2.c, false, Struct_1(arg_0.yy), Struct_1(vec2<i32>(global2.a.a.x, u_input.b)), global2.b)), max(0u, 25379u))), _wgslsmith_add_vec4_u32(vec4<u32>(select(select(global1.x, 1u, global2.b), _wgslsmith_dot_vec2_u32(vec2<u32>(global1.x, 1u), global1.zy), true), 10695u >> (1u % 32u), ~1u, global0[_wgslsmith_index_u32(reverseBits(min(u_input.a, 0u)), 19u)]), ~vec4<u32>(~u_input.a, ~48561u, 25675u, global1.x)), ~_wgslsmith_div_vec4_u32(~countOneBits(vec4<u32>(27505u, 18739u, global1.x, 0u)), abs(min(vec4<u32>(u_input.a, u_input.d, 44186u, 1u), vec4<u32>(60936u, 20451u, global0[_wgslsmith_index_u32(0u, 19u)], 51717u)))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2146f + _wgslsmith_f_op_f32(f32(-1f) * -354f)));
    var var_3 = -(~((i32(-1i) * -arg_2.a.x) ^ _wgslsmith_clamp_i32(11749i, -u_input.b, _wgslsmith_dot_vec2_i32(var_0.a, vec2<i32>(var_0.a.x, arg_0.x)))));
    let var_4 = _wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, 0u ^ _wgslsmith_div_u32(select(global0[_wgslsmith_index_u32(1u, 19u)], global1.x, global2.b), ~4294967295u)), _wgslsmith_div_vec2_u32(~abs(countOneBits(vec2<u32>(global1.x, 32649u))), ~global1.zz), _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(global1.yz & global1.zx, abs(global1.zz)), global1.xx));
    return false;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_1 {
    return arg_2.a;
}

fn func_1(arg_0: f32) -> i32 {
    global3 = array<Struct_1, 25>();
    let var_0 = global2.a.a;
    var var_1 = Struct_2(func_4(vec3<bool>(func_2(select(vec4<i32>(33909i, var_0.x, global2.c.a.x, -1i), u_input.c, vec4<bool>(global2.e, global2.e, global2.b, false)), vec3<i32>(-1i, 0i, 32250i), global3[_wgslsmith_index_u32(u_input.e, 25u)]), _wgslsmith_dot_vec2_i32(global2.a.a, vec2<i32>(var_0.x, u_input.c.x)) < 0i, true | (global2.b | false)), Struct_1(_wgslsmith_add_vec2_i32(global2.c.a, ~u_input.c.zx)), Struct_2(Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.x, -1i), vec2<i32>(1i, global2.d.a.x))), true, global3[_wgslsmith_index_u32(1u & global0[_wgslsmith_index_u32(max(3608u, global0[_wgslsmith_index_u32(33581u, 19u)]), 19u)], 25u)], Struct_1(~vec2<i32>(var_0.x, u_input.b)), false), vec3<bool>(global2.e, false, false)), select(!global2.b, !global2.e, true), func_4(select(select(select(vec3<bool>(global2.b, true, global2.e), vec3<bool>(true, global2.b, false), false), !vec3<bool>(global2.b, global2.e, true), true), vec3<bool>(true | global2.e, any(vec4<bool>(global2.e, true, global2.e, true)), all(vec3<bool>(true, global2.b, global2.e))), global2.e), global2.a, Struct_2(func_4(vec3<bool>(true, true, global2.e), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(101455u, global1.x), 25u)], Struct_2(global3[_wgslsmith_index_u32(global1.x, 25u)], global2.b, Struct_1(vec2<i32>(-1i, global2.c.a.x)), Struct_1(vec2<i32>(global2.a.a.x, var_0.x)), global2.e), select(vec3<bool>(true, global2.e, global2.b), vec3<bool>(global2.e, false, false), vec3<bool>(false, global2.b, false))), select(true, false, global2.b), func_4(vec3<bool>(false, global2.b, global2.e), Struct_1(u_input.c.zx), Struct_2(Struct_1(u_input.c.wz), false, global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(767u, 19u)], 25u)], global3[_wgslsmith_index_u32(0u, 25u)], global2.e), vec3<bool>(true, global2.e, global2.b)), Struct_1(max(vec2<i32>(-1i, 0i), global2.c.a)), !global2.e), select(select(!vec3<bool>(global2.b, false, false), vec3<bool>(false, true, false), vec3<bool>(global2.b, global2.e, true)), select(select(vec3<bool>(false, global2.e, global2.e), vec3<bool>(global2.e, global2.b, true), vec3<bool>(false, global2.b, global2.b)), vec3<bool>(global2.e, global2.b, true), vec3<bool>(global2.e, true, false)), !select(vec3<bool>(global2.e, true, false), vec3<bool>(false, global2.b, global2.e), vec3<bool>(false, global2.e, true)))), Struct_1(vec2<i32>(1i ^ _wgslsmith_clamp_i32(31373i, u_input.c.x, 2147483647i), _wgslsmith_dot_vec2_i32(global2.c.a << (global1.xy % vec2<u32>(32u)), global2.c.a))), global2.b);
    let var_2 = true;
    var_1 = Struct_2(Struct_1(-(~firstLeadingBit(global2.a.a))), var_2, global2.d, global3[_wgslsmith_index_u32(~firstLeadingBit(0u), 25u)], any(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(global2.b, false, var_1.e, var_2), true), select(vec4<bool>(true, true, global2.e, var_2), vec4<bool>(var_1.e, var_2, false, global2.e), false)), vec4<bool>(var_1.b, false, !var_1.e, global2.e), any(select(vec2<bool>(var_1.b, false), vec2<bool>(var_2, false), true)))));
    return ~(~2147483647i);
}

fn func_5(arg_0: vec2<f32>, arg_1: i32) -> vec3<u32> {
    var var_0 = Struct_1(reverseBits(-vec2<i32>(countOneBits(0i), _wgslsmith_div_i32(-1i, arg_1))));
    let var_1 = _wgslsmith_mult_vec4_u32(~vec4<u32>(~(~global0[_wgslsmith_index_u32(u_input.a, 19u)]), global1.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.d, 19u)], u_input.a), 19u)] >> (_wgslsmith_sub_u32(global1.x, global1.x) % 32u), ~global1.x), ~select(select(reverseBits(vec4<u32>(global0[_wgslsmith_index_u32(23156u, 19u)], global0[_wgslsmith_index_u32(u_input.d, 19u)], 50454u, 32051u)), _wgslsmith_div_vec4_u32(vec4<u32>(5749u, 0u, global1.x, global1.x), vec4<u32>(u_input.a, global0[_wgslsmith_index_u32(4294967295u, 19u)], global1.x, 106841u)), select(vec4<bool>(false, global2.e, true, false), vec4<bool>(false, global2.e, true, true), true)), vec4<u32>(~14878u, global1.x, func_3(Struct_2(global2.a, false, Struct_1(u_input.c.wx), global2.d, global2.e)), global1.x), !any(vec2<bool>(false, true))));
    let var_2 = Struct_2(global2.a, (((u_input.a >> (0u % 32u)) <= global1.x) || global2.b) || (global2.e & global2.b), func_4(select(vec3<bool>(true, !global2.e, all(vec3<bool>(false, global2.e, global2.e))), select(vec3<bool>(global2.b, global2.e, false), select(vec3<bool>(global2.b, global2.e, global2.e), vec3<bool>(true, global2.e, global2.e), global2.b), func_2(u_input.c, u_input.c.xyy, global2.a)), global2.b), func_4(!vec3<bool>(global2.e, true, true), func_4(!vec3<bool>(global2.e, global2.b, global2.b), global2.c, Struct_2(global3[_wgslsmith_index_u32(global1.x, 25u)], global2.b, global2.a, Struct_1(var_0.a), false), vec3<bool>(false, global2.e, global2.b)), Struct_2(Struct_1(vec2<i32>(0i, arg_1)), !global2.b, global3[_wgslsmith_index_u32(~18077u, 25u)], func_4(vec3<bool>(global2.b, global2.b, global2.b), Struct_1(global2.d.a), Struct_2(global2.a, false, global2.c, global3[_wgslsmith_index_u32(u_input.a, 25u)], false), vec3<bool>(true, false, global2.b)), u_input.c.x == 7539i), vec3<bool>(any(vec4<bool>(global2.b, global2.b, global2.e, false)), true, select(true, global2.b, true))), Struct_2(global3[_wgslsmith_index_u32(0u, 25u)], global2.b, Struct_1(vec2<i32>(var_0.a.x, -2147483647i) >> (vec2<u32>(28560u, 13044u) % vec2<u32>(32u))), global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, global0[_wgslsmith_index_u32(39681u, 19u)], 26290u, 48750u), vec4<u32>(0u, 4607u, global1.x, global0[_wgslsmith_index_u32(56812u, 19u)])), 25u)], any(select(vec3<bool>(false, global2.b, global2.b), vec3<bool>(false, true, global2.b), global2.b))), vec3<bool>(any(select(vec4<bool>(false, false, global2.b, true), vec4<bool>(global2.b, global2.e, true, global2.e), vec4<bool>(true, global2.b, false, false))), false, !any(vec2<bool>(false, global2.b)))), global3[_wgslsmith_index_u32(~reverseBits(1u), 25u)], any(!vec4<bool>(true, global2.e, !global2.b, global2.b)));
    global1 = var_1.xzy;
    var var_3 = global2.a;
    return vec3<u32>(5506u, var_1.x, 60186u) & _wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(47800u, 0u, 3134u)) >> (countOneBits(vec3<u32>(var_1.x, global1.x, global1.x)) % vec3<u32>(32u)), vec3<u32>(global0[_wgslsmith_index_u32(min(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global1.x, var_1.x), var_1.zxy), ~var_1.x), 19u)], u_input.d, 42120u | global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.c.wwy;
    let var_1 = firstLeadingBit(_wgslsmith_div_u32(10844u, ~(~u_input.e)) >> (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global1.x, u_input.e)), select(global1.yy, _wgslsmith_mult_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(1u, 19u)], 4294967295u), vec2<u32>(global1.x, 2340u)), false)) % 32u));
    let var_2 = vec2<u32>(0u, _wgslsmith_mult_u32(abs(var_1), _wgslsmith_div_u32(_wgslsmith_add_u32(26814u, 1u), var_1)));
    var var_3 = global1.x;
    let var_4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-330f, -1000f, 1089f, 541f) * vec4<f32>(1f, 1f, 1f, 1f)), vec4<f32>(_wgslsmith_f_op_f32(-219f + -1323f), _wgslsmith_f_op_f32(-2011f * 560f), _wgslsmith_f_op_f32(365f * 754f), _wgslsmith_f_op_f32(select(-709f, 349f, global2.e))), all(vec3<bool>(global2.b, false, true))))));
    global1 = min(_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.x, firstLeadingBit(15147u), var_1), func_5(vec2<f32>(var_4.x, -316f), func_1(var_4.x))) ^ (~vec3<u32>(var_1, global0[_wgslsmith_index_u32(var_1, 19u)], global0[_wgslsmith_index_u32(var_2.x, 19u)]) << (~abs(vec3<u32>(var_2.x, var_2.x, u_input.e)) % vec3<u32>(32u))), vec3<u32>(~_wgslsmith_div_u32(_wgslsmith_add_u32(var_1, 57202u), 0u), 4294967295u, 1u));
    var var_5 = Struct_1(global2.a.a);
    let var_6 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(var_4.zyz, vec3<f32>(var_4.x, var_4.x, var_4.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-102f, 690f, 712f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.x, -893f, var_4.x), var_4.wyy, vec3<bool>(false, false, false))))) * vec3<f32>(var_4.x, 127f, _wgslsmith_div_f32(var_4.x, var_4.x)))));
    var var_7 = _wgslsmith_dot_vec3_u32(abs(_wgslsmith_div_vec3_u32(vec3<u32>(var_1, 1u, var_2.x), max(vec3<u32>(35294u, 4294967295u, global0[_wgslsmith_index_u32(1u, 19u)]), vec3<u32>(20582u, global1.x, 4294967295u)))), ~func_5(_wgslsmith_f_op_vec2_f32(-var_4.wy), var_5.a.x)) << (min(abs(65462u), _wgslsmith_mult_u32(~_wgslsmith_div_u32(global0[_wgslsmith_index_u32(var_2.x, 19u)], 28866u), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, var_1 & 18310u), 19u)])) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(-var_4.x), -1000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4.yx * var_4.xw) - vec2<f32>(-1083f, var_6.x)))), vec4<i32>(var_5.a.x, -(~(-var_0.x)), ~0i, firstLeadingBit(~u_input.c.x)), _wgslsmith_sub_i32(-u_input.c.x << (firstTrailingBit(1u) % 32u), 9169i), _wgslsmith_sub_u32(var_1 >> (global0[_wgslsmith_index_u32(~(~1u), 19u)] % 32u), var_1), ~min(_wgslsmith_mult_vec2_u32(vec2<u32>(47435u, var_1), var_2), ~(~vec2<u32>(0u, 1u))));
}

