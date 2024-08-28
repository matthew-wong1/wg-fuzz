struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: Struct_2 = Struct_2(vec3<bool>(false, true, true), Struct_1(68u, vec2<i32>(2147483647i, 31627i), 1280f, vec4<f32>(-630f, 761f, -1528f, -288f)), vec4<bool>(false, true, false, true), Struct_1(47065u, vec2<i32>(-18354i, 2147483647i), 2057f, vec4<f32>(930f, -1195f, 421f, 844f)));

var<private> global2: bool = true;

var<private> global3: vec2<f32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3) -> bool {
    global2 = arg_0.x;
    let var_0 = Struct_4(~vec2<i32>(_wgslsmith_dot_vec2_i32(global1.d.b, _wgslsmith_div_vec2_i32(arg_1.a.b, global1.b.b)), select(0i, -1i, true)));
    let var_1 = global0.a.d.xyy;
    let var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(248f, 489f, true))), -1000f)), vec3<f32>(-926f, 1846f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global3.x)) * _wgslsmith_f_op_f32(f32(-1f) * -741f)), global3.x)), (_wgslsmith_dot_vec2_i32(global0.a.b, global0.a.b & arg_1.a.b) << (abs(arg_1.a.a) % 32u)) == ~firstLeadingBit(abs(arg_1.a.b.x))));
    global1 = Struct_2(!vec3<bool>(all(!vec3<bool>(global1.c.x, false, true)), (arg_0.x && false) | all(global1.c), arg_0.x && any(arg_0)), Struct_1(~(global1.b.a & _wgslsmith_add_u32(arg_1.a.a, 1u)), firstTrailingBit(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_1.b.x, var_0.a.x), reverseBits(-24770i))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec4_f32(global1.b.d + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2195f, -1649f, var_2.x, arg_1.a.d.x) + vec4<f32>(1048f, -470f, arg_1.a.c, 1775f))))), select(select(global1.c, vec4<bool>(!arg_0.x, global1.d.a < 33354u, false, global1.a.x), global1.c), vec4<bool>(!(true && global1.a.x), true, arg_0.x, all(global1.c.yz)), global1.c), Struct_1(_wgslsmith_dot_vec2_u32(min(vec2<u32>(88390u, global0.a.a), vec2<u32>(40259u, 0u)) >> (min(u_input.b, vec2<u32>(u_input.b.x, arg_1.a.a)) % vec2<u32>(32u)), u_input.b), vec2<i32>(arg_1.b.x, 0i), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, -1000f) + _wgslsmith_f_op_f32(-797f * -1166f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(267f - global3.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(min(568f, var_2.x)), -847f, -430f, var_2.x)))));
    return false;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec2<f32> {
    let var_0 = global0.b;
    let var_1 = abs(vec4<u32>(9220u, 14337u, arg_0.b.a, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, arg_0.b.a)), 128946u))) | reverseBits(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(13772u, arg_3.a, 1u, 64507u), vec4<u32>(arg_1.a, arg_2, 9680u, 4294967295u), vec4<u32>(arg_2, 91830u, 0u, 5751u))));
    var var_2 = 46883i;
    let var_3 = vec4<u32>(global1.b.a, 1u, ~4294967295u, _wgslsmith_mod_u32(~arg_1.a >> (66986u % 32u), firstTrailingBit(firstTrailingBit(0u))));
    let var_4 = select(-21793i ^ (_wgslsmith_mod_i32(arg_3.b.x, var_0.x) & countOneBits(59271i)), -global0.a.b.x, true) << (17551u % 32u);
    return _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(1648f, global1.b.c), _wgslsmith_div_f32(-212f, global1.b.c))))), _wgslsmith_f_op_vec2_f32(-arg_3.d.ww)));
}

fn func_2() -> vec2<i32> {
    global3 = global1.b.d.xz;
    global3 = _wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec3<bool>(!(!global1.a.x), any(!global1.a), func_3(vec3<bool>(global1.a.x, global1.a.x, true), Struct_3(Struct_1(global0.a.a, vec2<i32>(2147483647i, -51043i), 2071f, vec4<f32>(-1984f, global0.a.c, -1634f, global1.b.d.x)), vec3<i32>(u_input.a, 8802i, global1.b.b.x)))), Struct_1(_wgslsmith_add_u32(763u, ~u_input.b.x), -vec2<i32>(-5023i, u_input.a), 1304f, _wgslsmith_f_op_vec4_f32(-global1.d.d)), !select(!vec4<bool>(false, true, true, global1.c.x), select(vec4<bool>(global1.a.x, true, global1.c.x, global1.c.x), global1.c, false), global1.c), Struct_1(_wgslsmith_mod_u32(~57605u, _wgslsmith_mult_u32(75362u, 47939u)), vec2<i32>(global0.b.x, -1i) << (countOneBits(vec2<u32>(u_input.b.x, 55614u)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) - global0.a.d.x), global0.a.d)), Struct_1(_wgslsmith_clamp_u32(global1.d.a, _wgslsmith_dot_vec2_u32(u_input.b, ~u_input.b), ~_wgslsmith_add_u32(4294967295u, u_input.b.x)), global0.a.b & vec2<i32>(-1i, ~(-1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.c + 209f) - global1.d.d.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -388f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(-899f, global1.d.c), _wgslsmith_f_op_f32(-global3.x), -728f, _wgslsmith_f_op_f32(round(-642f))))), ~_wgslsmith_mult_u32(2977u | global1.d.a, 32944u), Struct_1(u_input.b.x, firstLeadingBit(vec2<i32>(global0.b.x, 27792i) >> (~u_input.b % vec2<u32>(32u))), global1.d.c, vec4<f32>(-767f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(122f + -932f)), _wgslsmith_f_op_f32(-global1.d.d.x), _wgslsmith_f_op_f32(abs(global0.a.d.x))))));
    var var_0 = u_input.b.x;
    global2 = select(false, true, global1.a.x);
    var var_1 = Struct_3(Struct_1(countOneBits(select(1u, 0u, !global1.a.x)), ~_wgslsmith_mult_vec2_i32(global1.b.b, global1.d.b), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))), global1.d.c)), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.x + global3.x), _wgslsmith_f_op_f32(abs(global0.a.d.x))), -1809f, global1.d.d.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.a.c, 747f))))), countOneBits(vec3<i32>(-2147483647i << (min(global0.a.a, global1.b.a) % 32u), ~2147483647i, _wgslsmith_dot_vec2_i32(~vec2<i32>(global0.a.b.x, 2147483647i), _wgslsmith_add_vec2_i32(global1.b.b, vec2<i32>(-10979i, 12762i))))));
    return select(global0.a.b, vec2<i32>(reverseBits(select(_wgslsmith_sub_i32(u_input.a, global1.b.b.x), 0i << (global0.a.a % 32u), select(global1.a.x, true, global1.c.x))), u_input.a), !global1.c.wz);
}

fn func_5(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    global3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.a.d.zy + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1641f, global0.a.d.x) - global0.a.d.wx) + _wgslsmith_f_op_vec2_f32(-global1.d.d.xz)) + _wgslsmith_f_op_vec2_f32(step(global1.b.d.zz, _wgslsmith_f_op_vec2_f32(-global1.b.d.yz))))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(229f, 774f)), global0.a.d.xx)), _wgslsmith_div_vec2_f32(vec2<f32>(global3.x, -1107f), _wgslsmith_f_op_vec2_f32(-global1.d.d.yw))));
    return arg_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    let var_0 = func_5(4294967295u, vec4<u32>(1u, 82153u, global0.a.a, ~arg_0.b.a), Struct_4(firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.b.b.x, global0.b.x) & global1.b.b, func_2()))), _wgslsmith_div_i32(~_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(global0.b, vec3<i32>(0i, -2147483647i, -2557i)), _wgslsmith_sub_vec3_i32(global0.b, vec3<i32>(-29418i, -21141i, 2147483647i))), ~(-_wgslsmith_mod_i32(arg_0.b.b.x, -51143i))));
    global2 = !func_3(arg_1, Struct_3(global0.a, (vec3<i32>(0i, 7660i, -27553i) ^ vec3<i32>(global0.a.b.x, 10644i, global1.b.b.x)) << (~vec3<u32>(global0.a.a, global1.d.a, arg_0.d.a) % vec3<u32>(32u))));
    let var_1 = !global1.c;
    let var_2 = func_5(arg_0.b.a, ~vec4<u32>(587u, 25999u, arg_0.b.a, 19511u), Struct_4(_wgslsmith_mod_vec2_i32(~(-var_0.a), func_5(~global0.a.a, select(vec4<u32>(4294967295u, 4294967295u, arg_0.b.a, global1.d.a), vec4<u32>(0u, 4294967295u, 4294967295u, arg_0.b.a), var_1), var_0, _wgslsmith_add_i32(-72910i, global0.a.b.x)).a)), -1i);
    return arg_0.b.a << (~_wgslsmith_mult_u32(global0.a.a, 4294967295u >> (_wgslsmith_add_u32(arg_0.b.a, 0u) % 32u)) % 32u);
}

fn func_6(arg_0: vec4<i32>, arg_1: u32, arg_2: Struct_1) -> u32 {
    var var_0 = select(!global1.c.wzz, !vec3<bool>(true, true, global1.a.x), true);
    let var_1 = u_input.b.x;
    global2 = !(!all(var_0.yx)) & !(!((-1i != u_input.a) != global1.a.x));
    global0 = Struct_3(arg_2, -_wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global0.b.x, -2147483647i), vec3<i32>(u_input.a, arg_0.x, -2262i)), min(vec3<i32>(-42812i, 1i, 0i), arg_0.xyy ^ global0.b)));
    let var_2 = Struct_1(1u, vec2<i32>(-6951i, -45570i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-110f + _wgslsmith_f_op_f32(-global3.x)) * _wgslsmith_f_op_f32(-global1.b.c))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec3<bool>(var_0.x, global1.c.x, true), Struct_1(30627u, global1.d.b, global0.a.d.x, vec4<f32>(global0.a.d.x, global1.d.d.x, 888f, -511f)), vec4<bool>(global1.c.x, false, false, true), Struct_1(1u, arg_0.xy, 951f, vec4<f32>(global3.x, arg_2.d.x, -303f, -1000f))), Struct_1(arg_1, arg_2.b, 235f, global0.a.d), 1u, arg_2)).x * _wgslsmith_div_f32(-2453f, _wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(arg_2.c))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.x))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a.c, arg_2.d.x)) + _wgslsmith_f_op_f32(floor(global0.a.c)))), _wgslsmith_f_op_f32(f32(-1f) * -866f)));
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<u32>(global0.a.a, func_6(select(firstLeadingBit(vec4<i32>(17619i, u_input.a, 0i, global0.a.b.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(global0.a.b.x, 44392i, u_input.a, -15570i), vec4<i32>(u_input.a, 19668i, u_input.a, 13455i), vec4<i32>(global0.a.b.x, 1i, -23515i, global0.b.x)), false & global1.a.x) ^ vec4<i32>(u_input.a, -global0.b.x, _wgslsmith_sub_i32(global0.b.x, 2147483647i), _wgslsmith_div_i32(u_input.a, -8703i)), ~(func_1(Struct_2(vec3<bool>(true, true, false), global0.a, global1.c, global1.b), global1.a) & abs(1u)), global1.b));
    global2 = true;
    let var_1 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_2(vec3<bool>(global1.a.x, true, global1.a.x), global0.a, global1.c, global0.a), Struct_1(0u, global0.b.xz, 1000f, vec4<f32>(global3.x, -437f, -518f, -400f)), u_input.b.x, global0.a)), vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.b.c)), 1038f))), global0.a.d.zz, global1.c.x));
    global0 = Struct_3(Struct_1(~(abs(global1.b.a) | (u_input.b.x ^ global0.a.a)), _wgslsmith_clamp_vec2_i32(countOneBits(global1.d.b), global1.b.b, ~global1.b.b) ^ vec2<i32>(~u_input.a, global1.b.b.x >> (17631u % 32u)), _wgslsmith_f_op_f32(abs(378f)), global0.a.d), global0.b);
    global0 = Struct_3(Struct_1(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31172u, global0.a.a, 1u), _wgslsmith_add_vec4_u32(vec4<u32>(global1.d.a, 54745u, 20726u, var_0.x) ^ vec4<u32>(u_input.b.x, 1u, 251u, 1u), ~vec4<u32>(17867u, global0.a.a, u_input.b.x, global1.d.a))), ~vec2<i32>(_wgslsmith_div_i32(global1.b.b.x, global0.a.b.x), 69334i), -1928f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(311f, 371f), 1000f, _wgslsmith_f_op_f32(-408f * -609f), 1f))), -(global0.b & abs(_wgslsmith_clamp_vec3_i32(global0.b, global0.b, vec3<i32>(global0.b.x, global0.b.x, global0.a.b.x)))));
    var var_2 = global0.a;
    let var_3 = Struct_1(4294967295u, abs(firstTrailingBit(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.b.b.x, -20163i), abs(global0.a.b)))), 580f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(var_2.d)), var_2.d), _wgslsmith_div_vec4_f32(global1.b.d, vec4<f32>(var_2.d.x, var_1.x, -966f, 982f)))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(var_2.d, vec4<f32>(var_1.x, 520f, -785f, var_2.c))))), vec4<f32>(-174f, global1.b.d.x, -365f, _wgslsmith_f_op_f32(-var_1.x)))));
    var var_4 = var_3.b.x;
    var var_5 = var_3.d.wwz;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~(~(~var_0.x)), 3942u, ~(_wgslsmith_clamp_u32(0u, var_2.a, 28936u) ^ ~global0.a.a), global0.a.a), func_2().x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_div_i32(23910i, 4121i), -2147483647i, var_2.b.x) >> (~_wgslsmith_div_u32(var_0.x, var_0.x) % 32u), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-31058i, global0.a.b.x, global1.d.b.x), -vec3<i32>(-53267i, -1i, global0.b.x)))), global1.d.b.x, global0.a.b);
}

