struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: vec3<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, true, true, true, false, false, true, true);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: f32, arg_2: Struct_1) -> vec3<f32> {
    let var_0 = Struct_2(arg_2);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(arg_0.a.b, _wgslsmith_f_op_f32(step(-1411f, arg_0.b.x)), 3124f, _wgslsmith_f_op_f32(round(-1037f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_0.c.b, arg_1, arg_0.c.b), vec4<f32>(598f, arg_0.c.b, arg_0.c.b, arg_1), vec4<bool>(var_0.a.a, global0[_wgslsmith_index_u32(1u, 8u)], arg_2.a, true))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.c.b, arg_1, arg_0.a.b, -395f)))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_1, arg_1, arg_0.a.b, arg_0.c.b))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, -495f, -1091f, arg_0.a.b) - vec4<f32>(-211f, -1000f, -1208f, arg_0.b.x))))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, arg_1, 138f, _wgslsmith_f_op_f32(max(arg_0.a.b, arg_1))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.b, arg_1, 1132f, -328f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1, arg_1, -1409f, 1000f))))))));
    global0 = array<bool, 8>();
    let var_2 = _wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, 0i), u_input.d.zz), u_input.d.yw, vec2<i32>(u_input.a, u_input.d.x) ^ ~select(vec2<i32>(u_input.d.x, u_input.a) | u_input.d.yz, max(vec2<i32>(0i, u_input.a), vec2<i32>(u_input.d.x, u_input.a)), any(vec3<bool>(arg_0.a.a.a, true, true))));
    var var_3 = vec3<bool>(true, select(true, any(select(select(vec2<bool>(false, true), vec2<bool>(arg_2.a, arg_2.a), true), vec2<bool>(arg_2.a, false), vec2<bool>(arg_0.a.a.a, true))), arg_2.a), global0[_wgslsmith_index_u32(21662u << (select(_wgslsmith_div_u32(4294967295u, ~1u), max(4294967295u, _wgslsmith_add_u32(4294967295u, 0u)), !var_0.a.a) % 32u), 8u)]);
    return var_1.yzy;
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: f32, arg_3: u32) -> u32 {
    global0 = array<bool, 8>();
    var var_0 = u_input.d.yx;
    let var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(floor(arg_2)) < _wgslsmith_f_op_f32(-1f), ~_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.b, 0u, 60913u), vec3<u32>(u_input.b, 64234u, 0u)), ~arg_0.a.b)));
    let var_2 = Struct_4(Struct_3(Struct_1(countOneBits(83718u) <= var_1.a.b, arg_0.a.b), arg_2), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-280f, -662f, arg_2)) - vec3<f32>(arg_2, arg_2, 293f)) + _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(Struct_1(global0[_wgslsmith_index_u32(u_input.b, 8u)], 0u), arg_2), vec3<f32>(arg_2, arg_2, 807f), Struct_3(var_1.a, 1031f)), _wgslsmith_f_op_f32(trunc(arg_2)), arg_0.a))), _wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(Struct_1(arg_1.x, var_1.a.b), -131f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, -633f, arg_2)), Struct_3(var_1.a, arg_2)), _wgslsmith_f_op_f32(1121f - 245f), Struct_1(true, 10938u))))), Struct_3(Struct_1(true, abs(u_input.c.x)), arg_2));
    global0 = array<bool, 8>();
    return 5489u;
}

fn func_1(arg_0: bool) -> bool {
    var var_0 = vec4<u32>(1u, 9548u, ~(~u_input.b) & _wgslsmith_mod_u32(u_input.e.x | 10656u, u_input.b), reverseBits(func_2(Struct_2(Struct_1(true, 190u)), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, false, false), false), 109f, _wgslsmith_clamp_u32(u_input.b, u_input.e.x, 0u)))) << (_wgslsmith_add_vec4_u32(~(select(vec4<u32>(u_input.b, u_input.c.x, u_input.b, 4294967295u), vec4<u32>(4294967295u, 1u, 0u, 2063u), global0[_wgslsmith_index_u32(u_input.b, 8u)]) | select(vec4<u32>(0u, u_input.e.x, u_input.e.x, u_input.e.x), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 12928u), vec4<bool>(true, false, true, arg_0))), max(~countOneBits(vec4<u32>(61966u, 86032u, u_input.b, 54197u)), vec4<u32>(_wgslsmith_add_u32(103947u, u_input.c.x), u_input.b, ~4294967295u, 1u))) % vec4<u32>(32u));
    global0 = array<bool, 8>();
    var var_1 = ~min(reverseBits(var_0.x), var_0.x) >> ((~(~4294967295u) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.c.x, _wgslsmith_sub_u32(20887u, var_0.x), 1u | var_0.x, u_input.c.x), firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(var_0.x, u_input.b, var_0.x, var_0.x), vec4<u32>(0u, 58225u, 0u, u_input.b))))) % 32u);
    let var_2 = Struct_2(Struct_1(true, _wgslsmith_mod_u32(var_0.x, abs(firstLeadingBit(u_input.e.x)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d.zw;
    var var_1 = select(!select(select(select(vec2<bool>(false, global0[_wgslsmith_index_u32(931u, 8u)]), vec2<bool>(true, true), global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), !vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 8u)], global0[_wgslsmith_index_u32(4294967295u, 8u)]), !vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 8u)])), !(!vec2<bool>(global0[_wgslsmith_index_u32(0u, 8u)], false)), select(!vec2<bool>(true, global0[_wgslsmith_index_u32(80406u, 8u)]), vec2<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 8u)]), func_1(global0[_wgslsmith_index_u32(u_input.e.x, 8u)]))), vec2<bool>(!global0[_wgslsmith_index_u32(min(u_input.c.x | 20216u, u_input.b), 8u)], _wgslsmith_add_u32(func_2(Struct_2(Struct_1(global0[_wgslsmith_index_u32(11147u, 8u)], 95998u)), vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 8u)], true), 408f, 1u), firstLeadingBit(6288u)) != _wgslsmith_div_u32(u_input.c.x, u_input.b)), select(!(!vec2<bool>(global0[_wgslsmith_index_u32(8831u, 8u)], true)), !(!(!vec2<bool>(global0[_wgslsmith_index_u32(35187u, 8u)], false))), vec2<bool>(false, true)));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2091f, _wgslsmith_f_op_f32(trunc(946f)), -571f, _wgslsmith_f_op_f32(min(468f, -1572f)))))));
    var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1052f, _wgslsmith_div_f32(var_2.x, var_2.x), _wgslsmith_f_op_f32(floor(var_2.x)), var_2.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(-1062f, var_2.x, var_2.x, -615f), vec4<f32>(1009f, 170f, var_2.x, 2738f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, -254f, var_2.x, var_2.x))), select(vec4<bool>(global0[_wgslsmith_index_u32(35694u, 8u)], false, false, false), vec4<bool>(global0[_wgslsmith_index_u32(u_input.b, 8u)], true, var_1.x, global0[_wgslsmith_index_u32(u_input.b, 8u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 8u)], var_1.x, global0[_wgslsmith_index_u32(0u, 8u)], var_1.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-365f, 688f, var_2.x, -333f)) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-881f, var_2.x, -1624f, 1159f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1829f, -930f, 276f, -1465f) - vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-363f, _wgslsmith_f_op_f32(-2467f * 874f), _wgslsmith_div_f32(-1329f, var_2.x), 527f) * vec4<f32>(-1080f, _wgslsmith_f_op_f32(-1686f - var_2.x), var_2.x, _wgslsmith_f_op_f32(1668f * var_2.x))))));
    var var_3 = Struct_1(func_1(!(_wgslsmith_f_op_f32(trunc(-1893f)) < _wgslsmith_f_op_f32(var_2.x - var_2.x))), ~((1u << (~u_input.c.x % 32u)) & u_input.c.x));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1336f, var_2.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -644f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(625f + var_2.x)))));
    var_0 = vec2<i32>(-1i) * -u_input.d.zw;
    let var_4 = select(u_input.e, vec3<u32>(var_3.b, u_input.e.x, var_3.b), !(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(Struct_3(Struct_1(var_1.x, u_input.b), -527f), var_2.xxy, Struct_3(Struct_1(var_1.x, 7454u), var_2.x)), 1000f, Struct_1(global0[_wgslsmith_index_u32(91440u, 8u)], 105600u))).x > 595f));
    var_0 = (u_input.d.zz & u_input.d.xx) | u_input.d.xy;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(vec4<u32>(var_4.x, u_input.c.x, _wgslsmith_dot_vec2_u32(~var_4.yy, vec2<u32>(u_input.c.x, 62686u)), ~abs(49119u)), vec4<u32>(u_input.c.x, _wgslsmith_sub_u32(u_input.e.x, 1u), var_4.x, _wgslsmith_clamp_u32(48261u, u_input.b, u_input.c.x)) << (min(vec4<u32>(0u, 37013u, 4294967295u, u_input.b), ~vec4<u32>(var_3.b, 71529u, u_input.b, u_input.e.x)) % vec4<u32>(32u))), -616f, reverseBits(u_input.d.zxx ^ vec3<i32>(var_0.x, u_input.a, var_0.x)) >> ((~vec3<u32>(var_3.b, var_3.b, 1u) & select(vec3<u32>(16181u, 7620u, 14851u), abs(var_4), 0i == var_0.x)) % vec3<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(abs(var_0.x), -47037i, _wgslsmith_add_i32(u_input.d.x, u_input.a), 0i | u_input.a), _wgslsmith_div_vec4_i32(~vec4<i32>(0i, 12441i, u_input.d.x, u_input.a), -vec4<i32>(0i, u_input.a, u_input.d.x, var_0.x))) << (vec4<u32>(func_2(Struct_2(Struct_1(var_1.x, u_input.e.x)), !vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.b, 8u)], var_1.x), _wgslsmith_f_op_f32(sign(var_2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 69066u, 1u), vec4<u32>(1u, var_4.x, 4294967295u, 4294967295u))), 0u, _wgslsmith_mod_u32(0u, ~u_input.c.x), min(_wgslsmith_dot_vec4_u32(vec4<u32>(var_3.b, var_4.x, 4294967295u, 1u), vec4<u32>(1u, 4294967295u, var_4.x, 27714u)), u_input.e.x ^ 0u)) % vec4<u32>(32u)));
}

