struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<u32, 9> = array<u32, 9>(0u, 85695u, 34984u, 1u, 0u, 4425u, 1u, 38990u, 41813u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: u32, arg_1: bool) -> vec3<bool> {
    let var_0 = _wgslsmith_sub_vec3_i32(u_input.a.xxz | u_input.a.ywy, ~vec3<i32>(_wgslsmith_sub_i32(abs(22019i), global0.a.x), 17157i, ~abs(global0.a.x)));
    global0 = Struct_2(countOneBits(min(-vec2<i32>(-27191i, var_0.x), _wgslsmith_sub_vec2_i32(vec2<i32>(-41748i, var_0.x), vec2<i32>(global0.a.x, 0i)))), global0.b, global0.c);
    let var_1 = vec4<bool>(any(select(select(vec3<bool>(false, arg_1, true), !vec3<bool>(false, arg_1, false), arg_1), vec3<bool>(true | arg_1, true, true), all(select(vec4<bool>(global0.c.e, global0.c.e, global0.c.e, arg_1), vec4<bool>(false, false, global0.c.e, true), arg_1)))), !global0.c.e, true, global0.c.b >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(1263f * global0.c.b)), global0.c.b));
    global1 = array<u32, 9>();
    var var_2 = ~(~4294967295u);
    return select(vec3<bool>(global0.c.e, !(!arg_1), true), select(!select(!var_1.xyw, var_1.wxy, !var_1.zwz), select(select(!var_1.xyw, select(var_1.zxz, var_1.yyw, false), var_1.wxy), var_1.ywy, vec3<bool>(all(var_1.xwx), arg_1, !arg_1)), var_1.xyw), arg_1);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(vec2<i32>(global0.c.d.x, 27183i), global0.b, Struct_1(select(vec3<i32>(45696i, u_input.c.x >> (23926u % 32u), abs(31589i)), -(~global0.c.d.wxy), select(select(vec3<bool>(false, false, global0.c.e), vec3<bool>(true, true, false), vec3<bool>(true, false, global0.c.e)), func_3(global0.c.c, global0.c.e), !global0.c.e)), -1418f, _wgslsmith_dot_vec2_u32(max(min(vec2<u32>(global0.b.x, u_input.b), vec2<u32>(36086u, 61153u)), vec2<u32>(u_input.b, 73011u)), global0.b.zx), u_input.a, !global0.c.e));
    global1 = array<u32, 9>();
    var var_0 = Struct_1(-global0.c.d.xxx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-2066f)) - -1393f) + global0.c.b), ~12825u, ~u_input.a, true);
    let var_1 = !(!select(select(func_3(global1[_wgslsmith_index_u32(u_input.b, 9u)], true), select(vec3<bool>(false, false, global0.c.e), vec3<bool>(false, var_0.e, true), false), false), !(!vec3<bool>(var_0.e, global0.c.e, global0.c.e)), true));
    global1 = array<u32, 9>();
    return Struct_2(global0.a, vec4<u32>(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 9u)], 9u)] >> (global1[_wgslsmith_index_u32(1u, 9u)] % 32u), 1u ^ global1[_wgslsmith_index_u32(global0.b.x, 9u)]), abs(4294967295u), ~(12107u >> (global1[_wgslsmith_index_u32(global0.c.c, 9u)] % 32u)), 1u) << ((~(global0.b | vec4<u32>(var_0.c, u_input.b, u_input.b, 1u)) << (~global0.b % vec4<u32>(32u))) % vec4<u32>(32u)), Struct_1(vec3<i32>(~var_0.d.x, -var_0.d.x, _wgslsmith_mult_i32(var_0.d.x, var_0.d.x) | 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1076f * -1517f), _wgslsmith_f_op_f32(ceil(-1000f))))), 1u, global0.c.d, any(select(select(vec4<bool>(true, true, var_1.x, var_0.e), vec4<bool>(var_0.e, true, true, global0.c.e), var_0.e), vec4<bool>(var_1.x, true, true, var_1.x), any(var_1)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<i32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = 1u;
    let var_2 = Struct_3(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b, arg_1.c.b, arg_1.c.b)))))), firstTrailingBit(u_input.b));
    var var_3 = _wgslsmith_sub_i32(arg_3.x, (_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a.x, arg_0.c.d.x, var_2.a.a.x, var_2.a.a.x), arg_1.c.d), var_0.c.d) >> (_wgslsmith_dot_vec3_u32(select(vec3<u32>(arg_1.c.c, u_input.b, arg_1.b.x), vec3<u32>(18046u, arg_1.c.c, 6807u), vec3<bool>(global0.c.e, true, var_2.a.c.e)), arg_1.b.ywz) % 32u)) | -1i);
    var var_4 = false;
    return func_2().c;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: Struct_1, arg_3: Struct_3) -> vec2<i32> {
    global0 = Struct_2(arg_2.a.xx, countOneBits(vec4<u32>(arg_0.c.c, _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 9u)], 9u)], global1[_wgslsmith_index_u32(1u, 9u)]), arg_3.a.b), ~vec4<u32>(4294967295u, 1u, 75164u, arg_2.c)), _wgslsmith_div_u32(4294967295u, 63173u), 41547u)), func_4(Struct_2(global0.a, vec4<u32>(global0.c.c, ~23539u, ~u_input.b, ~arg_2.c), Struct_1(~global0.c.d.xyx, -1457f, 4294967295u, func_2().c.d, true)), Struct_2(arg_3.a.a & -arg_0.c.d.yw, (vec4<u32>(global1[_wgslsmith_index_u32(93768u, 9u)], arg_0.c.c, 42808u, arg_3.a.c.c) >> (arg_3.a.b % vec4<u32>(32u))) << (firstLeadingBit(arg_0.b) % vec4<u32>(32u)), func_4(arg_3.a, func_2(), global0.a, -arg_2.d)), _wgslsmith_div_vec2_i32(arg_2.d.zw, arg_0.a), vec4<i32>(abs(abs(-812i)), select(func_2().c.d.x, ~6459i, arg_0.c.e), ~(-42978i), -4400i)));
    let var_0 = arg_2.c;
    let var_1 = !vec3<bool>(arg_3.a.c.e, true | !arg_3.a.c.e, true);
    global0 = arg_0;
    var var_2 = true;
    return abs(vec2<i32>(~1i >> (_wgslsmith_div_u32(_wgslsmith_mult_u32(1u, global0.b.x), arg_2.c) % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(2147483647i, -20596i, -26910i, 1i), ~arg_3.a.c.d)));
}

fn func_1(arg_0: vec3<bool>) -> u32 {
    var var_0 = Struct_1(vec3<i32>(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -12846i, global0.a.x, 2147483647i) ^ global0.c.d, select(vec4<i32>(48839i, global0.a.x, global0.c.d.x, -1i), global0.c.d, true))), 1i, u_input.c.x & 5195i), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1031f), global0.c.b)), select(abs(global1[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global0.b.x, global0.b.x), 9u)]), global1[_wgslsmith_index_u32(global0.c.c, 9u)], true), global0.c.d, !(true | arg_0.x));
    global0 = Struct_2(func_5(Struct_2(_wgslsmith_mod_vec2_i32(-var_0.a.xx, -var_0.a.yy), ~(~global0.b), func_4(func_2(), Struct_2(vec2<i32>(var_0.d.x, 9070i), global0.b, global0.c), var_0.a.xz, ~u_input.a)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-893f, var_0.b, -1000f))))), func_4(Struct_2(global0.c.a.yz | var_0.d.yy, ~vec4<u32>(32816u, global0.b.x, global0.b.x, global0.b.x), Struct_1(vec3<i32>(u_input.c.x, var_0.a.x, var_0.a.x), 962f, 4294967295u, u_input.a, var_0.e)), Struct_2(vec2<i32>(u_input.c.x, global0.c.d.x), abs(global0.b), func_4(Struct_2(vec2<i32>(-1i, var_0.d.x), vec4<u32>(11440u, 0u, 28791u, u_input.b), global0.c), Struct_2(vec2<i32>(0i, global0.c.a.x), global0.b, Struct_1(var_0.a, var_0.b, u_input.b, vec4<i32>(u_input.c.x, -2147483647i, -31209i, u_input.c.x), arg_0.x)), vec2<i32>(u_input.c.x, u_input.a.x), vec4<i32>(u_input.c.x, -10436i, 2147483647i, 2147483647i))), reverseBits(_wgslsmith_mod_vec2_i32(var_0.d.xx, u_input.c)), vec4<i32>(u_input.c.x >> (12540u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, 2147483647i, 3571i), u_input.a.zyw), func_4(Struct_2(u_input.c, global0.b, global0.c), Struct_2(vec2<i32>(u_input.c.x, 1i), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 4294967295u, 264u, var_0.c), Struct_1(vec3<i32>(-2147483647i, global0.a.x, global0.c.a.x), global0.c.b, 1u, vec4<i32>(0i, 2147483647i, u_input.a.x, u_input.c.x), arg_0.x)), vec2<i32>(-21956i, -1i), global0.c.d).d.x, -var_0.a.x)), Struct_3(func_2(), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-254f, global0.c.b, -866f), vec3<f32>(global0.c.b, var_0.b, var_0.b), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, var_0.b)))), _wgslsmith_dot_vec4_u32(max(global0.b, global0.b), global0.b))), abs(vec4<u32>(_wgslsmith_sub_u32(global0.b.x << (1u % 32u), min(55795u, 80218u)), firstLeadingBit(8441u) >> ((global1[_wgslsmith_index_u32(25976u, 9u)] ^ 4294967295u) % 32u), ~var_0.c, global0.b.x)), func_4(func_2(), Struct_2(var_0.a.zx | reverseBits(u_input.a.zw), global0.b, Struct_1(var_0.d.wxw, -233f, 0u, -u_input.a, all(vec3<bool>(global0.c.e, true, global0.c.e)))), _wgslsmith_add_vec2_i32(var_0.a.xz, _wgslsmith_add_vec2_i32(-vec2<i32>(0i, u_input.a.x), u_input.c)), firstTrailingBit(countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(35415i, -67915i, 1i, var_0.a.x), var_0.d)))));
    var var_1 = firstLeadingBit(global0.b.yx);
    global1 = array<u32, 9>();
    var var_2 = Struct_3(Struct_2(~countOneBits(var_0.d.wz), global0.b, global0.c), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b, 337f, -1598f), vec3<f32>(global0.c.b, global0.c.b, global0.c.b)))))), 19372u);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(abs(global1[_wgslsmith_index_u32(min(~max(u_input.b, 21272u), 63563u), 9u)]));
    let var_1 = _wgslsmith_mult_vec2_i32(reverseBits(~vec2<i32>(u_input.c.x & u_input.a.x, abs(53263i))), ~firstLeadingBit(min(vec2<i32>(u_input.a.x, 49249i), u_input.a.xx)));
    var var_2 = global0.b.yyz;
    global0 = Struct_2(global0.c.d.xx, min(vec4<u32>(_wgslsmith_dot_vec3_u32(global0.b.yyz, vec3<u32>(global0.b.x, 12418u, 73831u)), u_input.b, global0.b.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~0u, 9u)], 9u)]), vec4<u32>(_wgslsmith_div_u32(var_2.x, global1[_wgslsmith_index_u32(46196u, 9u)]), 94138u, global0.c.c, ~5810u)) | ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.x, global1[_wgslsmith_index_u32(global0.b.x, 9u)]), vec2<u32>(0u, u_input.b)), func_1(vec3<bool>(global0.c.e, false, global0.c.e)), ~global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(var_2.x, 9u)] & var_2.x), func_2().c);
    var var_3 = select(!vec4<bool>(!global0.c.e, true, !(!global0.c.e), global0.c.e), vec4<bool>(global0.c.e, true, global0.c.e, true), vec4<bool>(!(!(u_input.a.x >= -1i)), ~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(49662u, 9u)], 9u)] <= func_2().b.x, !all(select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, global0.c.e, global0.c.e), false)), func_2().c.e));
    let var_4 = Struct_3(func_2(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.c.b, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global0.c.b)), _wgslsmith_f_op_f32(281f * 1146f), var_3.x)), 1278f)), ~global1[_wgslsmith_index_u32(0u, 9u)]);
    let var_5 = _wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(firstTrailingBit(vec3<u32>(~4294967295u, abs(1u), func_2().b.x)), ~(~_wgslsmith_div_vec3_u32(var_4.a.b.xyz, global0.b.xyz))), var_4.a.b.yzw);
    global1 = array<u32, 9>();
    let x = u_input.a;
    s_output = StorageBuffer(func_4(var_4.a, var_4.a, vec2<i32>(max(-1i, 1i), func_5(Struct_2(u_input.c, global0.b, var_4.a.c), vec3<f32>(var_4.b.x, -1000f, global0.c.b), var_4.a.c, var_4).x << (~39054u % 32u)), select(global0.c.d, u_input.a, select(!vec4<bool>(false, var_3.x, global0.c.e, var_3.x), vec4<bool>(var_4.a.c.e, false, var_4.a.c.e, var_4.a.c.e), false))).a, _wgslsmith_add_i32((_wgslsmith_mult_i32(var_4.a.c.d.x, global0.a.x) << (max(var_5.x, 33561u) % 32u)) >> (global0.c.c % 32u), ~var_4.a.a.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-947f * _wgslsmith_f_op_f32(-global0.c.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -197f)))))));
}

