struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<f32>,
    d: vec4<i32>,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 4>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 5>;

var<private> global3: vec4<f32>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> f32 {
    var var_0 = !(!(!select(select(vec2<bool>(arg_1, false), vec2<bool>(true, false), vec2<bool>(arg_1, false)), !vec2<bool>(arg_1, arg_1), false)));
    var_0 = vec2<bool>(false, all(vec2<bool>(true, true)));
    global3 = _wgslsmith_f_op_vec4_f32(-arg_2.a.b);
    var var_1 = min(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, min(~0u, 0u)), ~arg_0.e), ~_wgslsmith_add_u32(~firstTrailingBit(u_input.b), 56809u));
    let var_2 = countOneBits(vec4<u32>(global1.d.e, arg_0.e, _wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(4294967295u, 4u)], vec4<u32>(56941u, global1.c.x, arg_0.e, arg_0.e)), _wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 69263u, 46764u, u_input.a), vec4<u32>(u_input.b, 14441u, global1.c.x, u_input.a)), ~26926u)) << ((_wgslsmith_sub_vec4_u32(vec4<u32>(27993u, 4294967295u, global1.a.e, 13584u) >> (vec4<u32>(17627u, 1u, 4294967295u, 129929u) % vec4<u32>(32u)), global0[_wgslsmith_index_u32(1u, 4u)]) >> (max(countOneBits(global0[_wgslsmith_index_u32(arg_0.e, 4u)]), vec4<u32>(92160u, global1.d.e, u_input.b, 0u)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    return _wgslsmith_f_op_f32(-global1.d.c.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = arg_1.b;
    global2 = array<Struct_3, 5>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstTrailingBit(arg_0.x), 0u, 4294967295u, ~(~4294967295u) & _wgslsmith_mod_u32(arg_0.x, 68797u & global1.a.e)), arg_0), 5u)];
    var var_2 = global1.a;
    global1 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_add_i32(abs(-19785i), var_1.c.d.x), 1i, global1.b, arg_1.d.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(var_2.a, arg_1.b, var_0.xwx, global1.a.a, 15552u), var_1.d, Struct_2(var_1.c, var_2.d.x, vec3<u32>(1u, arg_1.e, 4234u), global1.d))), _wgslsmith_f_op_f32(abs(417f)), _wgslsmith_f_op_f32(floor(arg_1.c.x)), _wgslsmith_f_op_f32(f32(-1f) * -1108f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.d.c.x, var_0.x, var_2.c.x)))), -vec4<i32>(arg_1.d.x, -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(19608i, global1.d.d.x), vec2<i32>(0i, var_1.a)), min(-2147483647i, arg_1.d.x)), firstLeadingBit(arg_0.x | (u_input.b << (64325u % 32u)))), countOneBits(_wgslsmith_add_i32(-min(-21111i, -32392i), ~global1.d.a.x)), global1.c | arg_0.xyz, Struct_1(~vec4<i32>(_wgslsmith_mod_i32(-3534i, -2147483647i), 1i, reverseBits(-23473i), -global1.b), var_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.xwz)) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1839f, -1000f, var_2.c.x)))), vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(0i, arg_1.a.x), ~var_2.a.x, _wgslsmith_div_i32(-134i, -2147483647i)), ~(-20959i), 1677i, _wgslsmith_sub_i32(5140i, abs(1i))), ~u_input.a >> (~(~var_2.e) % 32u)));
    return var_2.a;
}

fn func_4(arg_0: vec2<u32>, arg_1: f32, arg_2: Struct_2, arg_3: Struct_2) -> Struct_1 {
    let var_0 = true;
    let var_1 = arg_0.x;
    global2 = array<Struct_3, 5>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-532f, arg_2.a.b.x, 158f, 1836f)) * _wgslsmith_f_op_vec4_f32(-global1.d.b)) + _wgslsmith_f_op_vec4_f32(-arg_2.a.b)) - arg_2.a.b));
    global2 = array<Struct_3, 5>();
    return arg_3.d;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + global1.d.c.x) * global1.d.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(781f + global3.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.c.x))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x * 1000f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.x + 1511f) - _wgslsmith_div_f32(558f, -1000f)) - _wgslsmith_f_op_f32(global1.a.c.x + global1.d.c.x))));
    var var_1 = Struct_3(-4692i, global1.c.x | countOneBits(_wgslsmith_add_u32(~1u, 4294967295u << (u_input.a % 32u))), func_4(~_wgslsmith_mod_vec2_u32(~vec2<u32>(global1.c.x, 112779u), reverseBits(global1.c.yz)), 1000f, Struct_2(global1.a, ~(-36376i), global1.c, Struct_1(vec4<i32>(8421i, 5022i, 2147483647i, global1.a.a.x), vec4<f32>(var_0, -284f, global3.x, 436f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, global1.d.c.x, var_0)), func_2(vec4<u32>(global1.c.x, 36403u, 4294967295u, 4294967295u), global1.a), 1u)), Struct_2(global1.d, -2147483647i, global1.c, global1.a)), true);
    var var_2 = Struct_2(var_1.c, _wgslsmith_add_i32(global1.a.d.x, ~global1.b), ~vec3<u32>(var_1.c.e, _wgslsmith_dot_vec4_u32(global0[_wgslsmith_index_u32(u_input.b ^ 2525u, 4u)], vec4<u32>(global1.d.e, 9741u, global1.c.x, 29392u) << (vec4<u32>(u_input.b, 1u, 8207u, 4294967295u) % vec4<u32>(32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_1.b, u_input.b), _wgslsmith_mod_vec3_u32(global1.c, global1.c))), Struct_1(global1.d.d, vec4<f32>(_wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(min(global3.x, -1626f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1358f)) * -398f), -505f, var_0), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1231f, -825f, 124f), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-348f, var_1.c.b.x, 373f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(global3.zyy)) + _wgslsmith_f_op_vec3_f32(select(global3.xww, vec3<f32>(795f, 2374f, -1732f), vec3<bool>(true, var_1.d, false))))), global1.d.d, var_1.c.e));
    let var_3 = global1.d;
    return func_4(~vec2<u32>(~global1.c.x, firstLeadingBit(var_3.e)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -104f)) + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(634f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x))), any(vec2<bool>(true, global1.a.e != 42525u)))), Struct_2(Struct_1(select(vec4<i32>(global1.b, var_1.a, -2147483647i, var_3.a.x), abs(vec4<i32>(-2147483647i, 2147483647i, var_1.c.a.x, var_3.a.x)), select(vec4<bool>(false, false, true, var_1.d), vec4<bool>(false, true, false, var_1.d), vec4<bool>(true, true, var_1.d, var_1.d))), vec4<f32>(_wgslsmith_f_op_f32(115f + 1709f), -567f, _wgslsmith_f_op_f32(115f * 459f), func_4(global1.c.yz, global1.a.c.x, Struct_2(Struct_1(var_2.d.d, var_3.b, vec3<f32>(var_0, global1.d.c.x, -1000f), global1.a.d, u_input.b), 1i, vec3<u32>(4294967295u, u_input.a, 27080u), Struct_1(vec4<i32>(19212i, -2147483647i, var_1.a, -6712i), global1.a.b, vec3<f32>(var_2.a.c.x, 1626f, var_3.c.x), vec4<i32>(var_2.a.d.x, 1i, var_3.d.x, 2147483647i), 4294967295u)), Struct_2(var_1.c, var_2.b, global1.c, Struct_1(vec4<i32>(-1i, -2639i, -2147483647i, 18846i), vec4<f32>(global3.x, 612f, -427f, var_1.c.c.x), var_3.c, var_2.d.d, var_2.c.x))).b.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_1.c.c.x, global1.d.c.x, 1076f)))), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.a.d.x, 75701i, 0i, var_3.d.x) | var_3.a, vec4<i32>(global1.a.a.x, 2147483647i, 1i, var_1.c.a.x)), 22851u), ~_wgslsmith_dot_vec3_i32(vec3<i32>(var_3.a.x, 24849i, 1i), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, -2147483647i, var_1.a), vec3<i32>(1i, -2147483647i, var_2.d.d.x))), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(41697u, 1u), vec2<u32>(var_3.e, u_input.b)) << (1u % 32u), ~(~0u), 8550u), func_4(~select(var_2.c.yx, global1.c.zz, vec2<bool>(var_1.d, var_1.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(-var_1.c.b.x)), Struct_2(Struct_1(vec4<i32>(var_1.c.d.x, -38903i, -24362i, var_1.c.a.x), var_3.b, vec3<f32>(1299f, -1170f, global1.d.c.x), var_1.c.d, 4294967295u), _wgslsmith_sub_i32(global1.a.d.x, -36435i), var_2.c & global1.c, func_4(vec2<u32>(0u, u_input.b), 1571f, Struct_2(Struct_1(var_3.d, vec4<f32>(global1.d.b.x, var_3.b.x, -1105f, var_1.c.b.x), var_3.b.wyy, vec4<i32>(var_1.c.d.x, global1.d.a.x, global1.a.d.x, 28223i), var_3.e), -50218i, var_2.c, Struct_1(vec4<i32>(11482i, -10767i, var_2.b, 2147483647i), var_3.b, vec3<f32>(113f, var_1.c.b.x, var_3.c.x), vec4<i32>(10303i, -4510i, var_1.a, 2147483647i), global1.c.x)), Struct_2(Struct_1(vec4<i32>(var_3.d.x, 49838i, var_2.b, 0i), global1.a.b, global3.yxy, vec4<i32>(global1.b, -1i, var_2.d.d.x, var_3.a.x), var_1.b), -66701i, var_2.c, Struct_1(vec4<i32>(-2147483647i, 10474i, var_1.c.a.x, global1.b), vec4<f32>(1000f, global1.d.c.x, -602f, -508f), var_2.d.b.wzy, vec4<i32>(global1.d.a.x, 0i, -30365i, var_2.b), 65951u)))), Struct_2(func_4(var_2.c.yx, 630f, Struct_2(Struct_1(var_3.a, var_2.d.b, var_2.a.b.yxw, var_1.c.a, var_1.c.e), var_1.a, global1.c, global1.a), Struct_2(var_2.a, 5209i, vec3<u32>(var_3.e, 27821u, var_3.e), var_2.d)), -var_1.c.d.x, _wgslsmith_sub_vec3_u32(vec3<u32>(27162u, 50105u, 4294967295u), vec3<u32>(var_3.e, 1u, 4294967295u)), var_2.a))), Struct_2(Struct_1(global1.a.a, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_3.c.x, var_0, global3.x, var_2.d.b.x), var_2.d.b)), vec3<f32>(-1410f, _wgslsmith_div_f32(-324f, -1387f), _wgslsmith_div_f32(-893f, var_1.c.c.x)), vec4<i32>(var_3.d.x, ~26495i, var_2.a.a.x, 24554i), var_2.a.e), var_2.b, (select(var_2.c, vec3<u32>(4294967295u, var_2.c.x, var_2.a.e), var_1.d) >> (~global1.c % vec3<u32>(32u))) & vec3<u32>(u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_2.c.x, 1u, var_2.a.e), vec4<u32>(global1.c.x, global1.c.x, 0u, global1.c.x)), 4294967295u), func_4(max(vec2<u32>(var_3.e, global1.c.x), ~vec2<u32>(2156u, 1u)), global1.a.b.x, Struct_2(Struct_1(var_3.d, vec4<f32>(-547f, -504f, global1.d.c.x, var_3.b.x), global3.wzw, var_3.d, 62879u), ~(-7213i), vec3<u32>(var_2.c.x, var_1.c.e, var_2.c.x), global1.d), Struct_2(Struct_1(vec4<i32>(global1.d.d.x, -44818i, global1.d.d.x, var_2.d.d.x), vec4<f32>(-320f, 1107f, -952f, 1763f), vec3<f32>(611f, global3.x, 647f), var_1.c.a, var_3.e), _wgslsmith_dot_vec3_i32(vec3<i32>(global1.d.a.x, var_1.a, 10211i), var_3.d.zzz), vec3<u32>(var_3.e, var_2.c.x, u_input.b), Struct_1(vec4<i32>(global1.a.a.x, var_1.a, 1i, 2147483647i), vec4<f32>(var_2.d.c.x, 133f, global1.d.c.x, 628f), vec3<f32>(global3.x, -1540f, global3.x), vec4<i32>(-1393i, 16164i, 39485i, 27998i), 1u)))));
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: bool) -> u32 {
    let var_0 = -(_wgslsmith_mod_vec3_i32(global1.d.d.wwz, vec3<i32>(_wgslsmith_clamp_i32(global1.d.d.x, global1.a.a.x, arg_1.a), countOneBits(global1.d.d.x), global1.b)) | arg_1.c.d.yww);
    var var_1 = _wgslsmith_mod_u32(~global1.a.e, ~1u);
    let var_2 = ~(~_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.a, global1.b, 41434i), global1.d.d.yyz), ~1110i) ^ ~countOneBits(abs(arg_1.c.d.x)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(round(arg_1.c.b.x)), _wgslsmith_f_op_f32(global1.d.b.x * global1.a.b.x));
    let var_4 = !vec2<bool>(true, arg_1.d);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1.a.b.x > global1.a.c.x;
    global0 = array<vec4<u32>, 4>();
    var var_1 = vec4<u32>(u_input.a, _wgslsmith_sub_u32(0u << (1u % 32u), u_input.a), ~func_5(_wgslsmith_mult_vec3_u32(~vec3<u32>(0u, 4294967295u, u_input.b), global1.c), Struct_3(global1.b, global1.a.e, func_1(), true), !var_0), _wgslsmith_dot_vec2_u32(~(~(~vec2<u32>(19143u, global1.d.e))), _wgslsmith_sub_vec2_u32(global1.c.zz ^ _wgslsmith_mod_vec2_u32(vec2<u32>(24480u, global1.a.e), vec2<u32>(1u, u_input.b)), vec2<u32>(74800u, global1.d.e) | _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, global1.c.x), vec2<u32>(u_input.b, 4294967295u), global1.c.zy))));
    var var_2 = firstTrailingBit(_wgslsmith_mult_u32(~4294967295u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(50600u, global1.a.e)), vec2<u32>(32964u << (u_input.b % 32u), u_input.b))));
    var var_3 = vec4<bool>(true && (true && any(!vec2<bool>(true, var_0))), any(vec3<bool>(var_0, _wgslsmith_f_op_f32(-167f - global3.x) > _wgslsmith_f_op_f32(f32(-1f) * -314f), any(vec3<bool>(var_0, true, var_0)) || any(vec4<bool>(false, false, var_0, true)))), !((firstTrailingBit(-1i) < abs(global1.d.d.x)) || true), false);
    let var_4 = _wgslsmith_f_op_vec4_f32(global1.d.b + vec4<f32>(_wgslsmith_f_op_f32(global3.x * global3.x), 759f, global3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2013f, 858f)), _wgslsmith_f_op_f32(trunc(173f))))));
    var_3 = select(select(!(!(!vec4<bool>(var_0, var_3.x, true, true))), vec4<bool>(all(!vec3<bool>(var_3.x, true, false)), true, !var_0 | any(vec4<bool>(false, var_0, var_3.x, var_0)), true), select(select(vec4<bool>(var_3.x, false, var_0, false), !vec4<bool>(true, var_3.x, true, var_0), var_0), vec4<bool>(55105i != global1.b, all(vec4<bool>(false, var_0, var_0, false)), true, all(var_3.wwx)), var_3.x)), vec4<bool>(var_3.x, false || any(var_3.zyz), true, !(true || (true && var_0))), all(vec3<bool>(var_0, any(!vec3<bool>(false, var_3.x, true)), any(select(var_3.ww, vec2<bool>(var_3.x, var_0), vec2<bool>(var_3.x, false))))));
    var_3 = !vec4<bool>(all(select(vec4<bool>(false, true, false, false), !vec4<bool>(var_3.x, false, var_0, var_3.x), select(vec4<bool>(var_0, false, true, false), vec4<bool>(var_0, false, false, var_3.x), var_0))), all(vec2<bool>(true, var_3.x)), select(all(var_3.zyz), true, true), !(~var_1.x < 30647u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(func_2(vec4<u32>(u_input.a, 5178u, global1.c.x, var_1.x) >> (vec4<u32>(41452u, u_input.b, 1036u, 18093u) % vec4<u32>(32u)), global1.a).x ^ ~(-41372i & global1.a.a.x), ~_wgslsmith_add_i32(-19607i, global1.d.a.x)), var_1.x, firstLeadingBit(0i));
}

