struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(30962i, 1i);

var<private> global1: array<vec2<f32>, 17>;

var<private> global2: array<Struct_4, 18> = array<Struct_4, 18>(Struct_4(19384i), Struct_4(-837i), Struct_4(-30927i), Struct_4(-1i), Struct_4(-1i), Struct_4(901i), Struct_4(2147483647i), Struct_4(0i), Struct_4(-11843i), Struct_4(-15091i), Struct_4(6086i), Struct_4(0i), Struct_4(-1i), Struct_4(0i), Struct_4(-1i), Struct_4(22381i), Struct_4(1307i), Struct_4(1i));

var<private> global3: array<vec4<i32>, 10>;

var<private> global4: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(47035u, 24270u, 1840u, 0u), vec4<u32>(0u, 1u, 25026u, 0u), vec4<u32>(40151u, 43280u, 14871u, 28286u), vec4<u32>(19340u, 1u, 1u, 4294967295u), vec4<u32>(4038u, 47407u, 12002u, 40168u), vec4<u32>(0u, 26428u, 4294967295u, 21441u), vec4<u32>(4294967295u, 89172u, 60952u, 0u), vec4<u32>(47235u, 21294u, 34519u, 37199u), vec4<u32>(20081u, 82175u, 0u, 1u), vec4<u32>(0u, 13211u, 54544u, 0u), vec4<u32>(41713u, 1u, 43138u, 4294967295u), vec4<u32>(0u, 0u, 1u, 0u), vec4<u32>(17769u, 0u, 4294967295u, 1u), vec4<u32>(0u, 30381u, 9802u, 1u), vec4<u32>(1797u, 1u, 1u, 22368u));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec2<i32> {
    global1 = array<vec2<f32>, 17>();
    let var_0 = 15754u <= ~_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.a, u_input.a << (vec2<u32>(14775u, 1u) % vec2<u32>(32u))), reverseBits(vec2<u32>(18390u, u_input.a.x)));
    return ~(~select(vec2<i32>(global0.x, -39584i), vec2<i32>(-2147483647i, -1i), false) & abs(vec2<i32>(arg_0.a, global0.x))) | min(vec2<i32>(-13098i, arg_0.a), select(reverseBits(vec2<i32>(global0.x, 1i)), _wgslsmith_mult_vec2_i32(vec2<i32>(global0.x, arg_0.a), vec2<i32>(-2147483647i, -1i)), select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), false)) & vec2<i32>(_wgslsmith_mod_i32(-67791i, -1i), ~global0.x));
}

fn func_2(arg_0: f32, arg_1: vec4<f32>) -> bool {
    let var_0 = select(true, false, false);
    global0 = min(_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(-2147483647i, global0.x))) >> (u_input.a % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(func_3(Struct_4(12863i)), _wgslsmith_sub_vec2_i32(-vec2<i32>(global0.x, global0.x), vec2<i32>(19370i, global0.x))), -_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(global0.x, global0.x), vec2<i32>(1i, -17268i)), vec2<i32>(global0.x, global0.x))), ~vec2<i32>(_wgslsmith_dot_vec3_i32(-vec3<i32>(global0.x, global0.x, 15361i), abs(vec3<i32>(18966i, global0.x, -1i))), ~(global0.x ^ 0i)));
    var var_1 = vec2<i32>(i32(-1i) * -68552i, i32(-1i) * -1i);
    var var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -655f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-150f * arg_1.x))))));
    global4 = array<vec4<u32>, 15>();
    return all(vec2<bool>(any(!(!vec3<bool>(true, false, var_0))), true));
}

fn func_1() -> bool {
    var var_0 = select(vec3<bool>(true, false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), select(vec3<bool>(true, _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, u_input.a.x), vec3<u32>(4294967295u, 1516u, 0u)) <= (u_input.a.x >> (u_input.a.x % 32u)), !func_2(3841f, vec4<f32>(236f, 282f, 326f, -471f))), select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), false), vec3<bool>(true, true, func_2(-259f, vec4<f32>(-894f, 290f, -226f, -1501f))), false), vec3<bool>(all(vec3<bool>(true, true, true)), true, all(vec4<bool>(true, true, true, true)))), vec3<bool>(true, false, true));
    var_0 = vec3<bool>(all(select(select(!vec4<bool>(var_0.x, false, var_0.x, true), select(vec4<bool>(false, var_0.x, true, var_0.x), vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false)), select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, var_0.x, true), true)), vec4<bool>(false, true, var_0.x && var_0.x, var_0.x), var_0.x)), 1u > (u_input.a.x & u_input.a.x), all(select(!vec4<bool>(true, var_0.x, var_0.x, var_0.x), !vec4<bool>(true, true, false, var_0.x), var_0.x)));
    return !(!var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_4, 18>();
    let var_0 = select(vec3<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true)))), true, true), vec3<bool>(false, true, true), vec3<bool>(func_1(), all(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)))), true));
    var var_1 = min(_wgslsmith_sub_vec3_u32(reverseBits(vec3<u32>(countOneBits(31743u), 4294967295u, _wgslsmith_dot_vec4_u32(global4[_wgslsmith_index_u32(u_input.a.x, 15u)], vec4<u32>(u_input.a.x, 44822u, u_input.a.x, 4294967295u)))), ~max(vec3<u32>(21728u, 20672u, u_input.a.x), ~vec3<u32>(4294967295u, 8238u, u_input.a.x))), ~vec3<u32>(4294967295u, u_input.a.x << (u_input.a.x % 32u), u_input.a.x));
    let var_2 = _wgslsmith_dot_vec4_i32(-firstLeadingBit(-_wgslsmith_mod_vec4_i32(global3[_wgslsmith_index_u32(var_1.x, 10u)], global3[_wgslsmith_index_u32(4294967295u, 10u)])), global3[_wgslsmith_index_u32(~var_1.x, 10u)]);
    var var_3 = Struct_1(var_1.x, true, vec2<bool>(!(!var_0.x), !(false & var_0.x)), var_0.x);
    let var_4 = Struct_4(~global0.x);
    var var_5 = _wgslsmith_mod_vec4_i32(vec4<i32>(-_wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, 2147483647i, var_4.a, global0.x) & global3[_wgslsmith_index_u32(4294967295u, 10u)], global3[_wgslsmith_index_u32(var_1.x, 10u)]), -global0.x, _wgslsmith_sub_i32(func_3(var_4).x, -33877i ^ (0i | var_2)), -var_2), vec4<i32>(0i, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2, var_2, var_2), vec3<i32>(global0.x, -2147483647i, global0.x)), ~_wgslsmith_mod_i32(global0.x, -2115i)), (i32(-1i) * -49543i) >> (~4294967295u % 32u), 19544i));
    var_3 = Struct_1(var_3.a, var_3.b && false, select(!var_0.xz, select(select(select(var_3.c, vec2<bool>(false, var_3.c.x), var_3.c), !var_0.yz, select(var_3.c, vec2<bool>(true, false), vec2<bool>(var_3.c.x, var_0.x))), var_0.zy, !(!var_3.c)), select(vec2<bool>(true, var_3.c.x), vec2<bool>(true, !var_0.x), var_3.c)), !var_3.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, global0.x, var_2, vec4<f32>(-241f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, 1379f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(-1116f))))), 913f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-503f)))))));
}

