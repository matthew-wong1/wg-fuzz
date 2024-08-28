struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<f32>,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 7> = array<u32, 7>(4294967295u, 0u, 5835u, 39510u, 1u, 4294967295u, 16230u);

var<private> global1: u32 = 0u;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<f32>(-1000f, 1905f, -1796f, -917f), 29158i, 0u, -1i), false, vec3<f32>(-171f, 708f, -1000f), -301f);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: i32, arg_3: Struct_2) -> i32 {
    global2 = arg_3;
    var var_0 = vec4<bool>(true, arg_3.b || arg_3.b, arg_3.b, arg_3.b);
    global1 = ~arg_0.a.a.c;
    global2 = arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(floor(-2379f));
    return -1i;
}

fn func_4(arg_0: f32, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) + 541f), 1149f);
    global0 = array<u32, 7>();
    let var_1 = arg_3.a;
    var var_2 = Struct_2(global2.a, global2.b | (_wgslsmith_f_op_f32(-var_0.x) > _wgslsmith_f_op_f32(164f * _wgslsmith_f_op_f32(-147f + 1586f))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(global2.a.a.wyz + global2.c))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-109f, -235f, 548f) + var_1.xzz) * global2.a.a.wxw)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_3.a.x - 462f), _wgslsmith_f_op_f32(-2549f + arg_3.a.x)))))));
    let var_3 = var_2.a.c;
    return _wgslsmith_add_vec4_u32(firstLeadingBit(vec4<u32>(1u, 4294967295u, 1u, max(4294967295u, arg_3.c))), max(vec4<u32>(~global2.a.c, reverseBits(u_input.a.x), 9000u, u_input.a.x | 70539u), ~min(vec4<u32>(4294967295u, 0u, global2.a.c, u_input.a.x), vec4<u32>(9641u, var_2.a.c, 4294967295u, var_2.a.c)))) << (vec4<u32>(3281u, ~_wgslsmith_sub_u32(global2.a.c, 74569u) >> (u_input.a.x % 32u), 1u, 22957u) % vec4<u32>(32u));
}

fn func_2(arg_0: vec4<f32>) -> vec4<u32> {
    global0 = array<u32, 7>();
    global1 = 28007u | u_input.a.x;
    global2 = Struct_2(global2.a, global2.b, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.a.a.x, -1000f, arg_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.c) * global2.c)) + vec3<f32>(1516f, -817f, -814f)), _wgslsmith_f_op_f32(-arg_0.x));
    var var_0 = global2.a;
    var var_1 = true | !global2.b;
    return max(_wgslsmith_div_vec4_u32(firstLeadingBit(~vec4<u32>(global2.a.c, global0[_wgslsmith_index_u32(6936u, 7u)], u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.a.c, 7u)], 7u)])), abs(abs(vec4<u32>(u_input.a.x, global2.a.c, 4037u, 12755u))) >> (_wgslsmith_mod_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 7u)], global2.a.c, u_input.a.x, global0[_wgslsmith_index_u32(global2.a.c, 7u)]), ~vec4<u32>(21724u, global2.a.c, 810u, 25954u)) % vec4<u32>(32u))), func_4(global2.d, func_3(Struct_3(Struct_2(Struct_1(vec4<f32>(858f, -1008f, global2.a.a.x, -1000f), -1i, 1u, var_0.d), global2.b, arg_0.xzy, global2.c.x), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.x, var_0.a.x, -163f, var_0.a.x), global2.a.a)), global2.a.b), abs(_wgslsmith_clamp_i32(global2.a.b, global2.a.d, var_0.b)), var_0.b, Struct_2(Struct_1(vec4<f32>(var_0.a.x, 317f, arg_0.x, global2.d), global2.a.d, 58953u, 0i), true, vec3<f32>(arg_0.x, -1421f, 875f), _wgslsmith_f_op_f32(-global2.a.a.x))), select(select(vec4<bool>(global2.b, global2.b, true, false), vec4<bool>(true, true, true, global2.b), !vec4<bool>(global2.b, true, global2.b, false)), select(!vec4<bool>(true, global2.b, global2.b, global2.b), vec4<bool>(false, true, global2.b, false), !global2.b), !(!vec4<bool>(global2.b, true, false, true))), global2.a));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_u32(abs(select(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_1.x, 12599u, arg_1.x, global2.a.c), arg_1), max(vec4<u32>(10317u, 0u, 1u, global2.a.c), arg_1), select(vec4<bool>(global2.b, true, global2.b, global2.b), !vec4<bool>(global2.b, global2.b, global2.b, true), vec4<bool>(true, global2.b, true, true)))), countOneBits(arg_1));
    let var_1 = !select(vec3<bool>(global2.b, true, ~15040u >= _wgslsmith_div_u32(var_0.x, 4294967295u)), select(!(!vec3<bool>(global2.b, false, global2.b)), !vec3<bool>(false, global2.b, global2.b), all(!vec4<bool>(global2.b, global2.b, global2.b, true))), vec3<bool>(!all(vec2<bool>(global2.b, global2.b)), !global2.b, _wgslsmith_clamp_i32(-30995i, global2.a.d, -2147483647i) >= _wgslsmith_clamp_i32(arg_0.x, arg_0.x, -7983i)));
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(global2.a.a * global2.a.a), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-61782i, arg_2.b, -67714i), arg_2.d) | _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.x, -2147483647i), vec2<i32>(31404i, arg_0.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.d, -18412i), arg_0.zy)), ~global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(1772u, _wgslsmith_sub_u32(23752u, 0u)), 7u)], -_wgslsmith_clamp_i32(0i, global2.a.d, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.x, -1i, global2.a.d, arg_2.d), vec4<i32>(arg_2.d, 2147483647i, -1i, 0i)))), true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(global2.c + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-792f, arg_2.a.x, global2.c.x)))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-690f, arg_2.a.x)) * -1462f));
    global2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2.a.a)), global2.a.a)), -_wgslsmith_add_i32(_wgslsmith_div_i32(-1i, arg_2.b), _wgslsmith_add_i32(arg_2.d, arg_2.b)), var_0.x, i32(-1i) * -(~35803i)), all(!select(select(var_1, vec3<bool>(global2.b, global2.b, var_1.x), vec3<bool>(var_1.x, true, global2.b)), select(var_1, var_1, false), vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(239f)) * 1541f), _wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1304f), _wgslsmith_f_op_f32(2031f - -1246f))) * global2.a.a.wyx), _wgslsmith_f_op_f32(step(-372f, -1403f)));
    let var_2 = vec2<u32>(~0u, 1u);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global2.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -807f), -583f, _wgslsmith_f_op_f32(arg_2.a.x + 1781f))), _wgslsmith_div_i32(1i, countOneBits(arg_2.b)), ~_wgslsmith_add_u32(abs(arg_2.c), 76577u), arg_0.x), true, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-775f, -1080f, -427f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a.x, arg_2.a.x, global2.c.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.a.x, 183f, 286f)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1206f, _wgslsmith_f_op_f32(global2.d - _wgslsmith_f_op_f32(global2.d * arg_2.a.x)))));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-global2.a.a.zy);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.d) + func_5((-vec3<i32>(0i, 10018i, -47103i) ^ -vec3<i32>(0i, arg_1.c, -24430i)) & abs(max(vec3<i32>(arg_0.a.b, 0i, 14306i), vec3<i32>(0i, arg_0.a.b, -3515i))), vec4<u32>(max(1u, arg_1.a.a.c | 0u), 24002u, _wgslsmith_dot_vec3_u32(~vec3<u32>(global2.a.c, arg_1.a.a.c, global0[_wgslsmith_index_u32(1u, 7u)]), vec3<u32>(540u, 1u, 35389u)), global2.a.c), Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a.a), _wgslsmith_sub_i32(-2147483647i, arg_1.a.a.b) >> (1u % 32u), 19082u, 15296i)).c.x);
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global2.d, global2.d, arg_1.a.b)))))) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(740f, arg_0.c.x), _wgslsmith_f_op_f32(max(-882f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    let var_2 = 1u;
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(abs(_wgslsmith_sub_i32(-9114i, arg_0.a.d)), i32(-1i) * -32993i, func_5(vec3<i32>(0i, ~1i, -arg_0.a.b), firstLeadingBit(~vec4<u32>(var_2, u_input.a.x, u_input.a.x, 56368u)), func_5(vec3<i32>(arg_1.a.a.b, -7021i, 2147483647i) & vec3<i32>(18099i, arg_0.a.b, 2147483647i), ~vec4<u32>(1u, 2270u, global0[_wgslsmith_index_u32(0u, 7u)], u_input.a.x), func_5(vec3<i32>(arg_1.c, 6828i, global2.a.d), vec4<u32>(global0[_wgslsmith_index_u32(69862u, 7u)], global2.a.c, 27664u, 14527u), Struct_1(global2.a.a, arg_0.a.b, 1u, global2.a.d)).a).a).a.b), ~vec3<i32>(min(~global2.a.d, -arg_1.a.a.b), -(24331i | global2.a.b), abs(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.d, 2147483647i, arg_0.a.b), vec3<i32>(arg_0.a.b, arg_1.a.a.b, arg_1.a.a.b)))));
    return func_5(min(~vec3<i32>(1i, -1425i, i32(-1i) * -2147483647i), -var_3), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(global0[_wgslsmith_index_u32(func_4(arg_0.a.a.x, var_3.x, vec4<bool>(arg_0.b, arg_1.a.b, false, true), arg_1.a.a).x, 7u)], reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9759u, 7u)], 7u)]), u_input.a.x, 101212u)), ~vec4<u32>(~u_input.a.x, 24798u, func_4(-202f, arg_0.a.d, vec4<bool>(arg_0.b, false, false, false), global2.a).x, ~u_input.a.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a.a.a) + vec4<f32>(var_0.x, _wgslsmith_f_op_f32(min(-1258f, 1000f)), _wgslsmith_f_op_f32(arg_0.a.a.x + -810f), global2.c.x)), func_3(Struct_3(arg_0, _wgslsmith_f_op_vec4_f32(-global2.a.a), _wgslsmith_add_i32(var_3.x, 2147483647i)), -1i, _wgslsmith_sub_i32(_wgslsmith_mult_i32(var_3.x, var_3.x), countOneBits(arg_0.a.b)), Struct_2(func_5(var_3, vec4<u32>(global0[_wgslsmith_index_u32(1u, 7u)], 1u, global2.a.c, global0[_wgslsmith_index_u32(17812u, 7u)]), Struct_1(arg_1.a.a.a, 15400i, u_input.a.x, var_3.x)).a, arg_1.b.x > 575f, global2.a.a.zzz, 1452f)), _wgslsmith_dot_vec3_u32(abs(select(vec3<u32>(u_input.a.x, 4294967295u, var_2), vec3<u32>(u_input.a.x, 1u, global0[_wgslsmith_index_u32(arg_1.a.a.c, 7u)]), false)), ~select(vec3<u32>(4294967295u, 6384u, 60663u), vec3<u32>(global2.a.c, 39860u, 14605u), global2.b)), -8891i)).a;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    global0 = array<u32, 7>();
    let var_0 = func_6(func_5(~(-(~vec3<i32>(-4118i, arg_0.a.b, arg_0.a.d))), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_3.x, _wgslsmith_add_u32(arg_2.c, global2.a.c), arg_0.a.c, reverseBits(global2.a.c)), func_2(arg_0.a.a), vec4<u32>(arg_2.c, 10791u, u_input.a.x | 4294967295u, 52523u)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(trunc(212f)), _wgslsmith_f_op_f32(abs(global2.d)), _wgslsmith_f_op_f32(arg_0.d - -446f), -1410f), ~1i, ~global0[_wgslsmith_index_u32(arg_3.x, 7u)] >> (~arg_0.a.c % 32u), -2147483647i)), Struct_3(Struct_2(func_5(vec3<i32>(global2.a.d, 2147483647i, -1i) << (vec3<u32>(global2.a.c, global2.a.c, u_input.a.x) % vec3<u32>(32u)), vec4<u32>(u_input.a.x, arg_0.a.c, 45614u, arg_2.c), Struct_1(vec4<f32>(global2.d, 549f, arg_2.a.x, arg_2.a.x), -2147483647i, global2.a.c, -1320i)).a, global2.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.a.x, arg_2.a.x, -1554f) * vec3<f32>(893f, arg_0.a.a.x, 1062f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-2289f * arg_0.c.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_2.a.x, 259f, arg_0.c.x, 591f), global2.a.a, false)) + arg_0.a.a), global2.a.a), -arg_2.b));
    var var_1 = Struct_3(func_5(_wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(0i, arg_2.d, var_0.b), select(vec3<i32>(global2.a.b, 0i, arg_0.a.d), vec3<i32>(arg_2.d, 7607i, global2.a.d), true)), ~(~vec3<i32>(0i, -53174i, global2.a.d))), _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), abs(vec4<u32>(0u, 4294967295u, arg_0.a.c, 11387u))), vec4<u32>(var_0.c << (4294967295u % 32u), 59416u, ~arg_2.c, arg_3.x >> (global0[_wgslsmith_index_u32(arg_2.c, 7u)] % 32u))), func_5(vec3<i32>(_wgslsmith_div_i32(80485i, 2147483647i), -17496i, ~var_0.d), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(33623u, 7u)], 7u)], arg_2.c, 1u, global2.a.c) >> (~vec4<u32>(1u, u_input.a.x, var_0.c, 4294967295u) % vec4<u32>(32u)), var_0).a), _wgslsmith_div_vec4_f32(global2.a.a, vec4<f32>(_wgslsmith_f_op_f32(-arg_2.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_0.a.a.x)), 188f, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(f32(-1f) * -1377f)))), arg_0.a.d);
    var var_2 = var_1.a.b;
    let var_3 = 0i;
    return func_5(vec3<i32>(21094i, _wgslsmith_mod_i32(0i, 23646i), arg_2.d), vec4<u32>(_wgslsmith_add_u32(arg_2.c ^ (global0[_wgslsmith_index_u32(35698u, 7u)] >> (global2.a.c % 32u)), arg_3.x), ~0u, 35880u, var_1.a.a.c), global2.a);
}

fn func_7(arg_0: Struct_2, arg_1: vec3<i32>) -> bool {
    var var_0 = ~(~(~_wgslsmith_add_vec4_u32(vec4<u32>(0u, 1u, 20469u, 19604u), vec4<u32>(u_input.a.x, 1u, 0u, u_input.a.x))));
    var_0 = _wgslsmith_div_vec4_u32(abs(countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(62802u, var_0.x, 4294967295u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(global2.a.c, 7u)], 354u, arg_0.a.c, u_input.a.x)))), ~vec4<u32>(func_4(-364f, -7620i, vec4<bool>(false, true, true, arg_0.b), global2.a).x | func_1(Struct_2(global2.a, false, arg_0.c, -1991f), vec2<bool>(true, global2.b), Struct_1(global2.a.a, 0i, 81301u, arg_1.x), var_0.xz).a.c, 4294967295u, abs(_wgslsmith_div_u32(var_0.x, global0[_wgslsmith_index_u32(1714u, 7u)])), ~arg_0.a.c));
    let var_1 = func_5(vec3<i32>(1i, global2.a.b, global2.a.b), func_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(arg_0.a.a.x)), arg_0.d, global2.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(705f * arg_0.d) + _wgslsmith_f_op_f32(-global2.d)))), func_1(func_5(~arg_1, ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.c, 52094u, u_input.a.x, arg_0.a.c), vec4<u32>(59545u, global2.a.c, arg_0.a.c, 0u)), arg_0.a), !(!select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, arg_0.b), false)), func_1(arg_0, vec2<bool>(true, global2.b), global2.a, var_0.zw).a, ~u_input.a).a);
    var_0 = func_2(func_1(arg_0, vec2<bool>(true, true), arg_0.a, abs(_wgslsmith_mod_vec2_u32(var_0.zx, ~var_0.yx))).a.a);
    var_0 = ~vec4<u32>(var_0.x, ~50075u, 6576u, var_1.a.c);
    return all(select(vec2<bool>(true, true), vec2<bool>(true, true), min(11342i, arg_0.a.d) > ~(-2147483647i))) | true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b;
    global1 = global0[_wgslsmith_index_u32(u_input.a.x, 7u)];
    global2 = Struct_2(global2.a, !(!func_7(func_1(Struct_2(global2.a, global2.b, global2.c, global2.c.x), vec2<bool>(false, global2.b), global2.a, vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global2.a.c, 7u)])), vec3<i32>(global2.a.d, -1i, global2.a.b))), vec3<f32>(global2.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(global2.a.a.x)), _wgslsmith_f_op_f32(ceil(924f))))), _wgslsmith_f_op_f32(func_6(Struct_2(Struct_1(global2.a.a, 1i, 28876u, 21638i), global2.b, global2.c, -771f), Struct_3(Struct_2(Struct_1(global2.a.a, global2.a.d, u_input.a.x, global2.a.d), global2.b, vec3<f32>(700f, global2.d, global2.d), 954f), global2.a.a, global2.a.b)).a.x * func_1(func_1(Struct_2(Struct_1(vec4<f32>(global2.d, global2.d, global2.c.x, -1027f), -18409i, 4294967295u, 1i), global2.b, vec3<f32>(1000f, 1000f, -939f), global2.a.a.x), vec2<bool>(false, false), global2.a, vec2<u32>(5230u, 1u)), !vec2<bool>(global2.b, false), global2.a, u_input.a >> (vec2<u32>(4294967295u, global2.a.c) % vec2<u32>(32u))).a.a.x)), _wgslsmith_f_op_f32(-global2.c.x));
    var var_1 = !vec4<bool>(false, global2.b, all(vec3<bool>(true & global2.b, true && global2.b, global2.c.x >= global2.d)), true);
    var var_2 = ~firstTrailingBit(max(_wgslsmith_div_vec4_u32(func_2(global2.a.a), abs(vec4<u32>(1909u, global2.a.c, u_input.a.x, 0u))), ~func_2(global2.a.a)));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.www, _wgslsmith_f_op_f32(-global2.d));
}

