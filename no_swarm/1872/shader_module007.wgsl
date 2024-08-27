struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(123f, 138f, -361f);

var<private> global1: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(50513u, 1u, 101205u, 0u), vec4<u32>(16998u, 74586u, 36699u, 4294967295u), vec4<u32>(40912u, 5182u, 56828u, 1u), vec4<u32>(90440u, 4294967295u, 69981u, 6543u), vec4<u32>(17979u, 0u, 12678u, 46295u), vec4<u32>(0u, 4294967295u, 68418u, 4348u), vec4<u32>(73842u, 1u, 11433u, 26036u), vec4<u32>(0u, 71455u, 4432u, 1u), vec4<u32>(48149u, 4294967295u, 1u, 0u));

var<private> global2: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec4<bool>(true, false, false, true), 4294967295u, -22582i, false), Struct_1(vec4<bool>(false, true, false, true), 82850u, 46844i, true), Struct_1(vec4<bool>(true, true, true, true), 4294967295u, 0i, false), Struct_1(vec4<bool>(true, true, false, true), 1u, 0i, false), Struct_1(vec4<bool>(true, true, true, false), 1u, 42879i, false), Struct_1(vec4<bool>(true, true, true, false), 1u, -1i, false), Struct_1(vec4<bool>(false, false, true, true), 0u, i32(-2147483648), false), Struct_1(vec4<bool>(true, true, true, false), 27116u, 1i, false));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 1000f, global0.x), vec3<f32>(global0.x, 539f, -1800f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1737f, 1241f, global0.x) * vec3<f32>(1000f, global0.x, 1951f)), select(arg_1.d, true, arg_0))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 298f, global0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x))))))));
    let var_1 = _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-563f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.x, 1198f, arg_0)) * _wgslsmith_f_op_f32(trunc(global0.x))))));
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-327f, 489f, var_1))))), var_0);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>) -> Struct_4 {
    global2 = array<Struct_1, 8>();
    var var_0 = vec4<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1815f * global0.x) + 538f), global0.x, global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_0.zxx - var_0.ywz), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(true, global2[_wgslsmith_index_u32(~arg_1.x, 8u)], 1u))), select(!all(vec3<bool>(false, true, false)), true, true))) + _wgslsmith_f_op_vec3_f32(-var_0.yzz));
    let var_1 = vec2<i32>(2147483647i << (abs(arg_0) % 32u), -20596i);
    var var_2 = Struct_4(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, u_input.d, 1u) << (vec3<u32>(arg_1.x, arg_0, 4294967295u) % vec3<u32>(32u))), ~(select(vec3<u32>(u_input.d, 20967u, arg_0), vec3<u32>(u_input.c.x, arg_1.x, 4294967295u), true) >> (reverseBits(vec3<u32>(u_input.d, arg_1.x, arg_1.x)) % vec3<u32>(32u)))));
    return Struct_4(~_wgslsmith_dot_vec2_u32(arg_1 >> (~vec2<u32>(4294967295u, u_input.c.x) % vec2<u32>(32u)), vec2<u32>(abs(arg_1.x), 2828u)));
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    global2 = array<Struct_1, 8>();
    let var_0 = Struct_4(1u);
    global2 = array<Struct_1, 8>();
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(arg_0.a, 1u, 1u, arg_0.a), select(max(vec4<u32>(var_0.a, u_input.c.x, arg_0.a, arg_0.a), vec4<u32>(18841u, var_0.a, 45004u, u_input.c.x)), _wgslsmith_add_vec4_u32(global1[_wgslsmith_index_u32(var_0.a, 9u)], vec4<u32>(164u, 4294967295u, 4294967295u, 1u)), select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false)))) << (_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(var_0.a, 9u)]) ^ global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(1u, u_input.d), 9u)], max(global1[_wgslsmith_index_u32(~var_0.a, 9u)], vec4<u32>(arg_0.a, 42291u, 4294967295u, arg_0.a)), global1[_wgslsmith_index_u32(u_input.d, 9u)] & select(global1[_wgslsmith_index_u32(u_input.c.x, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], true)) % vec4<u32>(32u)), firstLeadingBit(vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, 4294967295u, 12616u, u_input.d), vec4<u32>(arg_0.a, u_input.d, 5415u, 4294967295u)), ~u_input.c.x & var_0.a, _wgslsmith_div_u32(~67260u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 50246u, 4294967295u), vec3<u32>(var_0.a, arg_0.a, 4294967295u))), ~17042u ^ var_0.a))), 8u)];
    var var_2 = vec4<i32>(~arg_2, _wgslsmith_dot_vec3_i32(vec3<i32>(min(60873i, arg_2), var_1.c ^ var_1.c, u_input.b), vec3<i32>(select(u_input.b, u_input.a, true), i32(-1i) * -12099i, _wgslsmith_sub_i32(-66646i, var_1.c))), -1i, u_input.a) ^ -_wgslsmith_mod_vec4_i32(vec4<i32>(-17247i, -1i, ~(-22456i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 66692i, arg_2, var_1.c), vec4<i32>(30117i, 1i, var_1.c, u_input.a))), vec4<i32>(var_1.c, firstLeadingBit(var_1.c), min(12602i, var_1.c), -4607i));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(func_2(18639u, u_input.c).a, var_1.b, _wgslsmith_sub_u32(10304u, 1u)), select(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(38613u, 1u, var_1.b)), max(vec3<u32>(var_0.a, var_0.a, 57096u), vec3<u32>(2357u, u_input.c.x, 12018u)), true), !all(var_1.a.zyy)), _wgslsmith_sub_vec3_u32(~(vec3<u32>(1u, 4294967295u, arg_0.a) << (vec3<u32>(4294967295u, var_0.a, arg_0.a) % vec3<u32>(32u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(arg_0.a, var_1.b, 1u), firstTrailingBit(vec3<u32>(7754u, u_input.c.x, u_input.d))))), (~min(vec3<u32>(4294967295u, var_1.b, 1u), vec3<u32>(1u, 1075u, 4294967295u)) | (vec3<u32>(13204u, var_1.b, 54688u) | _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, u_input.d), vec3<u32>(36356u, 1993u, 1u)))) >> (min(~select(vec3<u32>(var_0.a, 76475u, 1u), vec3<u32>(u_input.c.x, var_1.b, u_input.d), vec3<bool>(var_1.a.x, true, var_1.d)), vec3<u32>(u_input.d, arg_0.a, u_input.c.x) >> (_wgslsmith_mod_vec3_u32(vec3<u32>(27241u, 63692u, var_1.b), vec3<u32>(72799u, 44078u, var_1.b)) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_5(arg_0: Struct_4, arg_1: i32) -> Struct_1 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1011f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-global0.x)))), -1000f);
    let var_1 = _wgslsmith_dot_vec3_i32(-(vec3<i32>(u_input.b, 40941i, -25642i) | ~u_input.e), firstTrailingBit(-u_input.e)) ^ -u_input.e.x;
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0));
    global1 = array<vec4<u32>, 9>();
    var var_2 = u_input.c;
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(6733u, ~_wgslsmith_div_u32(arg_0.a, _wgslsmith_sub_u32(0u, arg_0.a) | u_input.d)), 8u)];
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> bool {
    global1 = array<vec4<u32>, 9>();
    let var_0 = func_5(Struct_4(func_4(func_2(select(u_input.c.x, 51123u, arg_0), ~vec2<u32>(4294967295u, 4294967295u)), arg_1.yzz, _wgslsmith_div_i32(2147483647i, 1i))), 2147483647i);
    global2 = array<Struct_1, 8>();
    let var_1 = vec4<i32>(_wgslsmith_mult_i32(~(~(var_0.c << (var_0.b % 32u))), var_0.c), ~9422i, _wgslsmith_clamp_i32(var_0.c, countOneBits(var_0.c), ~u_input.e.x ^ (u_input.e.x ^ 0i)) ^ (abs(u_input.b) & ~(~var_0.c)), max(~1i, u_input.a));
    var var_2 = u_input.d;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 9>();
    let var_0 = Struct_1(!vec4<bool>(true, true, true, !func_1(false, vec4<f32>(global0.x, global0.x, global0.x, -440f))), _wgslsmith_mult_u32(min(_wgslsmith_add_u32(~24597u, _wgslsmith_sub_u32(u_input.d, 54689u)), 4294967295u), countOneBits(u_input.c.x)), ~(~(-1i)), true | !select(true, true, true));
    global2 = array<Struct_1, 8>();
    global1 = array<vec4<u32>, 9>();
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(340f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, global0.x, true))), _wgslsmith_f_op_f32(1f - global0.x)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(753f, 1f, global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(954f, -2515f, global0.x) - vec3<f32>(465f, -957f, global0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -396f, global0.x) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -269f, -412f)))), !vec3<bool>(false, var_0.d, true))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.xx, vec2<f32>(428f, global0.x), select(vec2<bool>(var_0.d, false), vec2<bool>(false, false), var_0.a.wx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(global0.xx)) - _wgslsmith_f_op_vec2_f32(max(global0.yy, global0.xx))))), var_0.b >> (6192u % 32u), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(477f, _wgslsmith_f_op_f32(-global0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-277f))))), 1095f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x - 957f), global0.x)), i32(-1i) * -(var_0.c & 1i), global0.x);
}

