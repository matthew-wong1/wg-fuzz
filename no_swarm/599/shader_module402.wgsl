struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: array<Struct_2, 16>;

var<private> global3: array<vec4<i32>, 13>;

var<private> global4: Struct_2;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    global3 = array<vec4<i32>, 13>();
    global3 = array<vec4<i32>, 13>();
    global0 = Struct_3(Struct_2(countOneBits(~vec4<u32>(arg_1.x, 0u, 64172u, arg_1.x)) ^ vec4<u32>(~100547u, 26791u, 0u | arg_2.a.x, _wgslsmith_add_u32(global0.a.a.x, global4.a.x)), -1i), global0.b, _wgslsmith_mod_vec3_i32(vec3<i32>(~(arg_2.b >> (arg_1.x % 32u)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(global4.b, global0.c.x, u_input.a.x), global0.d.zxw), u_input.a.x), global0.c), ~((global3[_wgslsmith_index_u32(global0.a.a.x, 13u)] & _wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, global4.b, u_input.a.x, 1i), global3[_wgslsmith_index_u32(global0.a.a.x, 13u)])) >> (~firstLeadingBit(vec4<u32>(97574u, 41307u, global0.a.a.x, global4.a.x)) % vec4<u32>(32u))));
    global0 = Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(arg_1, global0.a.a), 16u)], arg_3, _wgslsmith_sub_vec3_i32(abs(global0.c & vec3<i32>(global4.b, arg_0, global4.b)) >> (select(~vec3<u32>(global0.a.a.x, 73672u, arg_1.x), vec3<u32>(global4.a.x, arg_2.a.x, 58685u), !vec3<bool>(false, false, global0.b.a)) % vec3<u32>(32u)), global0.d.wwy), ~(~vec4<i32>(~u_input.a.x, -37811i, max(2147483647i, arg_0), _wgslsmith_dot_vec3_i32(global0.c, global0.c))));
    return 13781u;
}

fn func_2(arg_0: f32, arg_1: vec3<bool>) -> Struct_3 {
    global0 = Struct_3(global0.a, global0.b, ~reverseBits(~min(global0.c, vec3<i32>(12460i, 0i, 10310i))), vec4<i32>(~firstLeadingBit(1i), i32(-1i) * -11070i, _wgslsmith_mod_i32(_wgslsmith_mod_i32(global4.b, 0i) << (~global0.a.a.x % 32u), -49795i), global4.b));
    let var_0 = min(u_input.a, -_wgslsmith_div_vec2_i32(global0.c.yx, global0.d.zy));
    global4 = Struct_2(vec4<u32>(~firstLeadingBit(~1u), func_3(global4.b, vec4<u32>(~1u, 44739u, 1u, 4294967295u & global0.a.a.x), global0.a, Struct_1(true, _wgslsmith_f_op_vec3_f32(exp2(global0.b.b)), global0.b.c)), ~global0.a.a.x, abs(1u)), u_input.a.x ^ global0.c.x);
    var var_1 = vec2<bool>(true | (arg_1.x | true), true);
    let var_2 = 1292f;
    return Struct_3(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(~vec2<u32>(11814u, global4.a.x), ~vec2<u32>(48701u, 58273u)), 45855u), 16u)], Struct_1(var_1.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.b.x, -1153f, 761f)))), vec3<f32>(_wgslsmith_f_op_f32(-1000f * var_2), _wgslsmith_f_op_f32(trunc(global0.b.b.x)), _wgslsmith_f_op_f32(global0.b.b.x - -919f))), true), global0.c, global3[_wgslsmith_index_u32(0u & min(~global4.a.x, _wgslsmith_mod_u32(107692u, global4.a.x)), 13u)] | ~_wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, global4.b, 0i, global0.a.b) ^ vec4<i32>(var_0.x, -78949i, u_input.a.x, var_0.x), vec4<i32>(global0.a.b, -1i, var_0.x, -49132i), select(global0.d, global3[_wgslsmith_index_u32(37614u, 13u)], vec4<bool>(global0.b.a, var_1.x, false, true))));
}

fn func_1(arg_0: vec2<u32>, arg_1: f32, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = !(!any(vec4<bool>(global0.b.a, global0.b.a, global0.b.c, global0.b.c)));
    global3 = array<vec4<i32>, 13>();
    var var_1 = _wgslsmith_f_op_f32(-arg_2);
    global0 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -1423f), vec3<bool>(false | ((11567u | arg_0.x) < _wgslsmith_div_u32(global0.a.a.x, global4.a.x)), any(!vec4<bool>(false, false, true, global0.b.a)), true));
    var var_2 = arg_3.b;
    return func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-466f))), _wgslsmith_f_op_f32(global0.b.b.x * _wgslsmith_div_f32(1084f, _wgslsmith_f_op_f32(floor(720f)))))), select(vec3<bool>(!(arg_0.x <= 4294967295u), true, true), vec3<bool>(global0.b.c, true, all(vec2<bool>(false, global0.b.c)) & all(vec3<bool>(global0.b.a, false, global0.b.c))), !vec3<bool>(true, !global0.b.c, true)));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: Struct_1) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = Struct_3(global0.a, Struct_1(arg_2.c, arg_1.b.b, true), -firstLeadingBit(vec3<i32>(26324i, select(u_input.a.x, -2711i, arg_1.b.c), global4.b)), var_0.d);
    let var_2 = func_2(_wgslsmith_div_f32(985f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.b.b.x)))), vec3<bool>(!(!any(vec4<bool>(arg_2.a, false, false, var_0.b.c))), true, var_0.b.a));
    let var_3 = countOneBits(~global0.a.a.zz) ^ vec2<u32>(~_wgslsmith_sub_u32(var_1.a.a.x, var_0.a.a.x) | var_0.a.a.x, var_2.a.a.x);
    return Struct_2(arg_1.a.a, 0i);
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: vec3<bool>) -> u32 {
    let var_0 = !global0.b.a;
    let var_1 = func_2(_wgslsmith_f_op_f32(-186f * arg_2.b.b.x), vec3<bool>(false, false, _wgslsmith_f_op_f32(exp2(arg_1.b.b.x)) <= -964f)).b;
    var var_2 = global0.b.b.x;
    var var_3 = global0.b;
    var var_4 = true;
    return _wgslsmith_mult_u32(46427u, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mult_u32(reverseBits(~(1u << (global4.a.x % 32u))), func_5(func_4(abs(~vec3<u32>(global0.a.a.x, global4.a.x, 44528u)), func_1(global0.a.a.xy, -651f, -280f, global2[_wgslsmith_index_u32(0u, 16u)]), global0.b), Struct_3(Struct_2(firstLeadingBit(vec4<u32>(8715u, global0.a.a.x, global4.a.x, 1u)), u_input.a.x >> (global4.a.x % 32u)), Struct_1(true, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(317f, 644f, global0.b.b.x), global0.b.b, true)), func_1(global4.a.xw, global0.b.b.x, global0.b.b.x, global2[_wgslsmith_index_u32(global4.a.x, 16u)]).b.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, u_input.a.x, -2147483647i) | vec3<i32>(14092i, global4.b, -1i), global0.c, global0.c), abs(vec4<i32>(global4.b, global4.b, 0i, 1i))), Struct_3(global0.a, global0.b, ~vec3<i32>(u_input.a.x, 10691i, global4.b) ^ global0.c, -func_1(global4.a.yx, global0.b.b.x, -1014f, global2[_wgslsmith_index_u32(1u, 16u)]).d), !(!(!vec3<bool>(false, global0.b.a, global0.b.c)))));
    let var_1 = vec4<i32>(-firstTrailingBit(~func_4(vec3<u32>(22226u, var_0, 13669u), Struct_3(global2[_wgslsmith_index_u32(4294967295u, 16u)], Struct_1(true, global0.b.b, global0.b.c), global0.c, global3[_wgslsmith_index_u32(20563u, 13u)]), Struct_1(global0.b.a, vec3<f32>(-105f, -220f, -1012f), true)).b), ~(~_wgslsmith_mod_i32(abs(-1i), 19564i)), func_4(func_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -780f))), select(select(vec3<bool>(false, global0.b.c, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), !vec3<bool>(global0.b.c, false, false), global0.b.a)).a.a.xxy, Struct_3(global0.a, Struct_1(global0.b.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.b.b.x, 1425f, global0.b.b.x) + global0.b.b), global0.b.c), global0.c, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(var_0, global4.a.x), 13u)] << (min(global4.a, global4.a) % vec4<u32>(32u))), func_2(_wgslsmith_f_op_f32(-global0.b.b.x), select(vec3<bool>(global0.b.a, global0.b.a, false), !vec3<bool>(false, true, global0.b.a), vec3<bool>(global0.b.c, true, true))).b).b, -52568i);
    var var_2 = global0.b.b;
    let var_3 = -_wgslsmith_add_vec3_i32(global0.c, -(~var_1.zww)) >> (func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(func_1(vec2<u32>(global4.a.x, 0u), -281f, -1138f, global2[_wgslsmith_index_u32(global0.a.a.x, 16u)]).b.b.x))), select(!vec3<bool>(false, true, global0.b.c), vec3<bool>(global4.a.x >= var_0, global0.b.c, global0.b.a | false), vec3<bool>(all(vec4<bool>(global0.b.a, true, global0.b.a, global0.b.a)), all(vec4<bool>(global0.b.c, false, false, false)), !global0.b.a))).a.a.yzz % vec3<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(global0.a.a.x, ~_wgslsmith_div_vec3_u32(func_2(713f, select(vec3<bool>(global0.b.a, global0.b.c, global0.b.a), vec3<bool>(true, global0.b.c, global0.b.a), vec3<bool>(false, false, true))).a.a.ywz, abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0, 27849u, global0.a.a.x), global0.a.a.yyz))), _wgslsmith_mod_vec4_u32(vec4<u32>(func_5(global0.a, Struct_3(global0.a, Struct_1(global0.b.a, global0.b.b, false), global0.c, vec4<i32>(-54802i, var_1.x, 38983i, -2171i)), Struct_3(Struct_2(vec4<u32>(56998u, 74130u, global0.a.a.x, 4294967295u), global4.b), Struct_1(global0.b.a, vec3<f32>(global0.b.b.x, 611f, -1935f), false), var_1.zwz, vec4<i32>(-7121i, 49144i, -1i, global0.a.b)), vec3<bool>(global0.b.c, global0.b.a, true)), select(1110u, 26227u, true), ~var_0, 4294967295u), _wgslsmith_mod_vec4_u32(global4.a, ~vec4<u32>(var_0, 4294967295u, 50911u, global4.a.x))) >> (global4.a % vec4<u32>(32u)), ~76836u);
}

