struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: u32,
    d: vec3<i32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: bool,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 11> = array<vec3<bool>, 11>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true));

var<private> global1: array<vec3<i32>, 24>;

var<private> global2: array<vec4<i32>, 4> = array<vec4<i32>, 4>(vec4<i32>(-1i, -1i, 1i, -1i), vec4<i32>(9987i, 0i, -23687i, 2147483647i), vec4<i32>(2147483647i, -3218i, 19941i, -1i), vec4<i32>(0i, 1i, 17663i, 36992i));

var<private> global3: vec3<i32>;

var<private> global4: vec4<f32> = vec4<f32>(-827f, -783f, 329f, -1088f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: f32) -> u32 {
    let var_0 = countOneBits(firstLeadingBit(_wgslsmith_add_vec2_i32(arg_2.a, abs(select(arg_2.a, vec2<i32>(27571i, global3.x), vec2<bool>(arg_1.x, false))))));
    var var_1 = _wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2.c.x, arg_2.c.x, 4294967295u, arg_2.c.x), vec4<u32>(arg_2.c.x, 16944u, arg_2.c.x, 14726u), arg_1.x), vec4<u32>(42007u, 120604u, 29558u, arg_2.c.x)), arg_2.c.x), ~(~0u >> (arg_2.c.x % 32u))), ~_wgslsmith_add_vec2_u32(arg_2.c.zx, vec2<u32>(4294967295u, arg_2.c.x)));
    let var_2 = Struct_3(~(~var_1.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.c.x, arg_2.c.x, 75374u, arg_2.c.x), vec4<u32>(0u, 22615u, var_1.x, var_1.x)) % 32u)) >> (abs(select(arg_2.c.x, 3027u, false) | ~4294967295u) % 32u), arg_1.x, _wgslsmith_mod_u32(~(~(~arg_2.c.x)), ~1u));
    global1 = array<vec3<i32>, 24>();
    return var_2.c;
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec2<f32>) -> i32 {
    var var_0 = global3.x;
    let var_1 = vec2<bool>(6333i > _wgslsmith_add_i32(global3.x, 1i), all(!vec2<bool>(all(vec2<bool>(false, false)), any(vec4<bool>(true, true, false, false)))));
    global0 = array<vec3<bool>, 11>();
    let var_2 = _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(-829f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)))), arg_2.x, arg_0, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_f_op_f32(round(-1607f))))), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4.x, arg_0)) + arg_2.x), 374f), _wgslsmith_f_op_f32(f32(-1f) * -1846f), 309f, arg_0)));
    global2 = array<vec4<i32>, 4>();
    return u_input.b;
}

fn func_2() -> vec4<bool> {
    global3 = vec3<i32>(-(~(~global3.x)), global3.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.b, u_input.b), _wgslsmith_sub_i32(global3.x, _wgslsmith_mod_i32(func_3(584f, global4.x, global4.zw), -90067i))));
    global1 = array<vec3<i32>, 24>();
    let var_0 = vec3<bool>(!(_wgslsmith_f_op_f32(-global4.x) != -248f), true, true);
    global1 = array<vec3<i32>, 24>();
    global0 = array<vec3<bool>, 11>();
    return !(!select(!(!vec4<bool>(false, var_0.x, var_0.x, false)), select(!vec4<bool>(false, false, var_0.x, var_0.x), select(vec4<bool>(true, var_0.x, var_0.x, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)), !vec4<bool>(var_0.x, false, true, var_0.x)), global4.x == global4.x));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: bool, arg_3: vec4<f32>) -> vec3<bool> {
    var var_0 = !(false || select(arg_0.x | arg_0.x, arg_2, select(arg_0.x, arg_1.b, arg_0.x))) && (4294967295u >= reverseBits(arg_1.a));
    global1 = array<vec3<i32>, 24>();
    global4 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-arg_3)))));
    var var_1 = true;
    let var_2 = Struct_3(~_wgslsmith_add_u32(36144u, 48671u), select(false, (countOneBits(arg_1.c) >= min(arg_1.a, 0u)) | arg_0.x, arg_2), _wgslsmith_sub_u32(firstTrailingBit(~0u), 1u));
    return arg_0.wxx;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> vec3<i32> {
    var var_0 = Struct_2(arg_1.d.yx, -1065f, vec3<u32>(arg_1.c, 25064u, select(select(~42677u, 0u, true), 1u, all(select(arg_1.e, vec3<bool>(arg_1.a.x, true, arg_0.e.x), vec3<bool>(true, arg_0.a.x, true))))), global4.x);
    var var_1 = vec4<u32>(arg_0.c, _wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_0.c.yz >> (vec2<u32>(arg_1.c, 4294967295u) % vec2<u32>(32u)), var_0.c.yz), select(var_0.c.xx, vec2<u32>(arg_0.c, 23944u), vec2<bool>(arg_1.a.x, false))), abs(~1u), 0u) << (_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(30889u, ~1u, ~63209u, ~1u)), vec4<u32>(select(countOneBits(34163u), arg_1.c >> (1u % 32u), true), ~0u, abs(arg_0.c), 0u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.c, arg_1.c, 4294967295u, arg_0.c) >> (vec4<u32>(arg_0.c, 47345u, var_0.c.x, arg_0.c) % vec4<u32>(32u)), vec4<u32>(var_0.c.x, 68542u, 0u, 0u))) % vec4<u32>(32u));
    let var_2 = false;
    var_0 = Struct_2(vec2<i32>(_wgslsmith_dot_vec3_i32(abs(arg_1.d & vec3<i32>(-4115i, arg_1.b.x, arg_0.d.x)), -min(vec3<i32>(-2147483647i, arg_2.x, arg_0.d.x), arg_1.d)), -_wgslsmith_sub_i32(-global3.x, ~(-26179i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.x, -1052f))))), max(var_0.c, firstTrailingBit(_wgslsmith_mult_vec3_u32(var_1.zxz, vec3<u32>(var_0.c.x, arg_1.c, arg_1.c) | vec3<u32>(arg_1.c, arg_1.c, arg_1.c)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1015f, -915f))), global4.x)));
    global0 = array<vec3<bool>, 11>();
    return vec3<i32>(select(~global3.x, global3.x, true) << (countOneBits(var_1.x & arg_0.c) % 32u), var_0.a.x, max(func_3(global4.x, -2137f, vec2<f32>(1745f, -920f)), -34781i) >> (arg_1.c % 32u)) ^ arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0u;
    let var_1 = func_1(vec2<bool>(all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true))), (_wgslsmith_div_i32(u_input.b, u_input.b) != _wgslsmith_add_i32(16126i, u_input.a)) & true), vec2<bool>(true, all(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true))), Struct_2(global3.xz, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1312f + _wgslsmith_f_op_f32(global4.x - -1359f)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstLeadingBit(0u), ~1u, ~4294967295u), vec3<u32>(1u, 1u, 1u), select(vec3<u32>(59025u, 47000u, 13953u), min(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<u32>(13647u, 35425u, 1u)), select(global0[_wgslsmith_index_u32(0u, 11u)], vec3<bool>(false, true, true), false))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(262f, _wgslsmith_f_op_f32(-global4.x)))), 1764f);
    global1 = array<vec3<i32>, 24>();
    global0 = array<vec3<bool>, 11>();
    global0 = array<vec3<bool>, 11>();
    global3 = func_5(Struct_1(select(func_4(func_2(), Struct_3(var_1, false, 4294967295u), false, _wgslsmith_f_op_vec4_f32(vec4<f32>(-1180f, -1237f, 1280f, global4.x) + vec4<f32>(1298f, -275f, global4.x, -199f))), global0[_wgslsmith_index_u32(var_1 >> (min(1u, var_1) % 32u), 11u)], func_2().zyw), firstLeadingBit(vec2<i32>(firstTrailingBit(global3.x), -u_input.a)), _wgslsmith_add_u32(~4294967295u, 1u) ^ var_1, -global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, 4482u), vec2<u32>(58209u, 24388u)), 24u)], select(global0[_wgslsmith_index_u32(min(90479u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1, var_1, var_1, 99295u), vec4<u32>(var_1, 0u, 0u, 16483u))), 11u)], select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !global0[_wgslsmith_index_u32(0u, 11u)]), all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), true)))), Struct_1(vec3<bool>(any(vec2<bool>(true, true)), any(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), true)), var_1 <= _wgslsmith_div_u32(var_1, 21044u)), vec2<i32>(~countOneBits(global3.x), -_wgslsmith_add_i32(-2147483647i, global3.x)), ~29674u, countOneBits(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(global1[_wgslsmith_index_u32(var_1, 24u)], global1[_wgslsmith_index_u32(4294967295u, 24u)]), -global1[_wgslsmith_index_u32(var_1, 24u)])), func_4(vec4<bool>(select(true, true, true), true, var_1 <= var_1, false), Struct_3(var_1, true, var_1 << (var_1 % 32u)), func_4(vec4<bool>(true, true, true, true), Struct_3(var_1, true, 0u), true, _wgslsmith_div_vec4_f32(vec4<f32>(global4.x, global4.x, 241f, global4.x), vec4<f32>(global4.x, 1379f, 345f, global4.x))).x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, 2067f, 1055f, global4.x) * vec4<f32>(1000f, global4.x, global4.x, global4.x)), vec4<f32>(1148f, 1000f, global4.x, -866f)))), _wgslsmith_add_vec4_i32(-global2[_wgslsmith_index_u32(min(var_1, _wgslsmith_clamp_u32(var_1, var_1, var_1)), 4u)], _wgslsmith_mult_vec4_i32(global2[_wgslsmith_index_u32(4294967295u, 4u)], global2[_wgslsmith_index_u32(95198u, 4u)])));
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(0u, 24u)]);
}

