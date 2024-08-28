struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: i32,
    d: f32,
    e: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<i32>,
    c: u32,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 1141f;

var<private> global1: array<vec4<i32>, 21> = array<vec4<i32>, 21>(vec4<i32>(12033i, 2147483647i, 28037i, 3751i), vec4<i32>(1i, -1i, 1i, 0i), vec4<i32>(2147483647i, -1i, -16532i, -16535i), vec4<i32>(-15757i, 9592i, -4262i, i32(-2147483648)), vec4<i32>(21486i, -17566i, 54468i, 0i), vec4<i32>(1i, -60938i, -1i, -19056i), vec4<i32>(25401i, 0i, 1i, 1i), vec4<i32>(2147483647i, -1i, -14325i, i32(-2147483648)), vec4<i32>(0i, -38275i, 1i, -28180i), vec4<i32>(2147483647i, 35604i, 52147i, 51967i), vec4<i32>(7224i, -1i, 1i, 34614i), vec4<i32>(31121i, -38273i, i32(-2147483648), -1i), vec4<i32>(-37329i, 1i, -49087i, 43340i), vec4<i32>(13635i, i32(-2147483648), 33101i, 15248i), vec4<i32>(8387i, 0i, 1i, 1i), vec4<i32>(-61298i, 1i, i32(-2147483648), 31004i), vec4<i32>(-1i, 0i, -1i, i32(-2147483648)), vec4<i32>(-59786i, -25300i, -3800i, -21793i), vec4<i32>(48192i, -1i, 35677i, -4870i), vec4<i32>(0i, -1i, 17025i, 0i), vec4<i32>(-1i, 17458i, 2147483647i, -1i));

var<private> global2: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<u32>(46125u, 33615u), vec2<u32>(6457u, 93243u)), Struct_1(vec2<u32>(217u, 62365u), vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(1u, 27954u), vec2<u32>(0u, 15299u)), Struct_1(vec2<u32>(1u, 0u), vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(4294967295u, 144659u), vec2<u32>(1447u, 0u)), Struct_1(vec2<u32>(1u, 53923u), vec2<u32>(19677u, 49031u)), Struct_1(vec2<u32>(0u, 69672u), vec2<u32>(4294967295u, 22077u)), Struct_1(vec2<u32>(12432u, 4294967295u), vec2<u32>(0u, 48457u)), Struct_1(vec2<u32>(5587u, 5910u), vec2<u32>(15429u, 1u)), Struct_1(vec2<u32>(4294967295u, 66089u), vec2<u32>(25358u, 49294u)), Struct_1(vec2<u32>(12987u, 65577u), vec2<u32>(1u, 0u)), Struct_1(vec2<u32>(1u, 59515u), vec2<u32>(0u, 0u)), Struct_1(vec2<u32>(20596u, 51419u), vec2<u32>(4294967295u, 4294967295u)), Struct_1(vec2<u32>(0u, 5063u), vec2<u32>(6540u, 48104u)), Struct_1(vec2<u32>(1u, 26259u), vec2<u32>(1u, 8183u)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(4935u, 25150u)), Struct_1(vec2<u32>(78892u, 1u), vec2<u32>(0u, 7412u)), Struct_1(vec2<u32>(47190u, 1u), vec2<u32>(33467u, 22087u)), Struct_1(vec2<u32>(13338u, 4294967295u), vec2<u32>(4294967295u, 0u)), Struct_1(vec2<u32>(0u, 25601u), vec2<u32>(4294967295u, 2421u)));

var<private> global3: Struct_4 = Struct_4(Struct_2(Struct_1(vec2<u32>(10692u, 1u), vec2<u32>(11114u, 1100u))), vec3<i32>(47740i, -1i, -1i), 4294967295u, Struct_3(vec4<i32>(3751i, -939i, -21776i, 66965i), Struct_1(vec2<u32>(1u, 23993u), vec2<u32>(0u, 0u)), 20873i, -346f, -1904i), true);

var<private> global4: Struct_1;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: bool, arg_3: Struct_5) -> vec2<f32> {
    let var_0 = Struct_4(global3.a, ~vec3<i32>(arg_3.a.a.x, arg_3.a.a.x, u_input.b), _wgslsmith_mult_u32(~(countOneBits(global4.a.x) << (58458u % 32u)), 46419u), Struct_3(firstTrailingBit(vec4<i32>(25352i ^ u_input.d, ~arg_3.a.e, ~arg_3.a.e, arg_3.a.c)), Struct_1(max(~arg_3.a.b.a, ~arg_3.a.b.a), vec2<u32>(~0u, ~global3.c)), abs(0i), 695f, ~42647i), (all(!vec3<bool>(arg_0.x, true, false)) != !select(false, global3.e, false)) != false);
    let var_1 = !(arg_2 & true);
    global4 = Struct_1(var_0.a.a.a, abs(~var_0.d.b.b));
    var var_2 = true;
    global1 = array<vec4<i32>, 21>();
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-153f + arg_3.a.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.d)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.a.d * var_0.d.d) - _wgslsmith_f_op_f32(-1441f - -710f)) + arg_3.b)));
}

fn func_4(arg_0: vec2<f32>) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-401f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1734f * _wgslsmith_f_op_f32(round(global3.d.d)))), -2336f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(arg_0.x)), -440f, -340f)));
    global3 = Struct_4(global3.a, global3.d.a.zzx, max(global3.d.b.b.x, min(firstTrailingBit(global4.b.x) << (~global4.b.x % 32u), _wgslsmith_mod_u32(min(global4.b.x, 20282u), select(42977u, global3.d.b.a.x, global3.e)))), Struct_3(global1[_wgslsmith_index_u32(~38449u, 21u)], Struct_1(vec2<u32>(82036u, ~global3.a.a.b.x), vec2<u32>(~global3.d.b.b.x, _wgslsmith_div_u32(global3.c, global3.d.b.a.x))), ~(~27415i), _wgslsmith_div_f32(-616f, arg_0.x), ~u_input.d), global3.e);
    let var_1 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(_wgslsmith_clamp_u32(global4.a.x, global4.a.x, 58957u), 28153u << (global4.a.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.c, global3.a.a.a.x, global3.d.b.b.x), vec3<u32>(0u, global3.a.a.b.x, 5826u))), _wgslsmith_div_vec3_u32(~countOneBits(vec3<u32>(global4.b.x, global4.b.x, 4294967295u)), abs(~vec3<u32>(1u, global3.d.b.b.x, 1239u)))), ~(_wgslsmith_mod_vec3_u32(vec3<u32>(global4.b.x, global4.a.x, global4.a.x) >> (vec3<u32>(global4.a.x, global3.c, global4.a.x) % vec3<u32>(32u)), vec3<u32>(global4.b.x, global3.a.a.a.x, 0u)) << (vec3<u32>(_wgslsmith_sub_u32(1u, 0u), countOneBits(4294967295u), global3.d.b.a.x) % vec3<u32>(32u))));
    var var_2 = vec4<i32>(u_input.b, global3.b.x, 1i, u_input.c);
    var var_3 = Struct_5(Struct_3(_wgslsmith_sub_vec4_i32(global1[_wgslsmith_index_u32(_wgslsmith_add_u32(reverseBits(global3.c), 0u), 21u)], select(global1[_wgslsmith_index_u32(global3.d.b.b.x, 21u)] ^ vec4<i32>(var_2.x, -1i, 1i, u_input.d), global1[_wgslsmith_index_u32(1u, 21u)], select(vec4<bool>(global3.e, global3.e, global3.e, global3.e), vec4<bool>(global3.e, false, global3.e, true), global3.e))), Struct_1(~max(var_1.xy, vec2<u32>(1u, 58306u)), global3.a.a.b ^ max(vec2<u32>(54181u, global3.a.a.a.x), vec2<u32>(0u, global4.a.x))), _wgslsmith_div_i32(1i, -2147483647i), -344f, ~_wgslsmith_div_i32(-2147483647i, ~(-54740i))), _wgslsmith_f_op_f32(select(global3.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2194f + arg_0.x) + var_0.x) * 330f), select(false, !global3.e, any(vec2<bool>(true, true))))));
    return vec2<bool>(!global3.e, true);
}

fn func_2() -> Struct_5 {
    var var_0 = all(select(vec4<bool>(global3.e | false, false, global3.d.d > -476f, global3.e), !select(vec4<bool>(global3.e, false, true, global3.e), !vec4<bool>(false, true, global3.e, global3.e), global3.e), any(func_4(_wgslsmith_f_op_vec2_f32(func_3(vec3<bool>(true, false, true), global3.e, global3.e, Struct_5(global3.d, 1000f)))))));
    let var_1 = !(!select(vec4<bool>(!global3.e, global3.e, global3.e, global3.e == true), !vec4<bool>(global3.e, true, false, true), all(!vec4<bool>(global3.e, false, global3.e, global3.e))));
    let var_2 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.d.d, global3.d.d)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1227f, 1000f) + vec2<f32>(global3.d.d, global3.d.d)) - _wgslsmith_div_vec2_f32(vec2<f32>(-1358f, global3.d.d), vec2<f32>(global3.d.d, 839f)))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(279f, -2173f))), global3.e)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1147f - global3.d.d), _wgslsmith_f_op_f32(global3.d.d + global3.d.d)) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.d, global3.d.d) - vec2<f32>(-1000f, -189f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global3.d.d, -859f), vec2<f32>(2087f, 1404f)) + _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-925f, 1093f), vec2<f32>(976f, -1691f)))) + vec2<f32>(_wgslsmith_f_op_f32(-global3.d.d), global3.d.d)))));
    global3 = Struct_4(Struct_2(Struct_1(~_wgslsmith_add_vec2_u32(vec2<u32>(global4.a.x, 10853u), global3.a.a.a), ~(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(48524u, global4.b.x) % vec2<u32>(32u))))), -vec3<i32>(u_input.a.x, ~_wgslsmith_mult_i32(global3.d.e, global3.d.e), 38489i), select(global4.a.x, ~global3.d.b.b.x << ((47067u ^ global3.c) % 32u), any(select(var_1, var_1, global3.e))) ^ (global3.a.a.b.x << (1u % 32u)), global3.d, !(!select(all(var_1.yyw), true, -9368i < global3.b.x)));
    let var_3 = -1316f;
    return Struct_5(global3.d, -459f);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_5) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1235f, 196f, -447f, arg_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_0.x, -112f, arg_1.b, 730f))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1666f, -1353f, -1560f, 706f))))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(-137f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.x + 199f), 1f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.b)), arg_1.a.d)), _wgslsmith_f_op_f32(-arg_0.x))), select(!select(vec4<bool>(global3.e, global3.e, false, false), vec4<bool>(false, global3.e, global3.e, global3.e), select(vec4<bool>(false, global3.e, true, global3.e), vec4<bool>(false, false, global3.e, global3.e), global3.e)), select(!select(vec4<bool>(global3.e, global3.e, false, global3.e), vec4<bool>(global3.e, global3.e, false, true), vec4<bool>(global3.e, false, global3.e, global3.e)), select(vec4<bool>(true, false, global3.e, global3.e), !vec4<bool>(true, global3.e, true, true), !vec4<bool>(global3.e, false, true, global3.e)), true), true)));
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1000f))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(global3.d.d, 1650f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-func_2().a.d), _wgslsmith_f_op_f32(-arg_1.a.d))) + arg_0);
    let var_2 = vec3<u32>(4294967295u, global3.d.b.a.x, firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_mod_u32(global3.d.b.b.x, 58908u)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), global3.a.a.b, arg_1.a.b.b))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0 - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 278f, 1742f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0) * vec3<f32>(-767f, 1164f, -484f)))));
    let var_4 = _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(abs(0i), arg_1.a.c, countOneBits(~arg_1.a.a.x)), -global3.b >> (var_2 % vec3<u32>(32u))), select(_wgslsmith_mod_vec3_i32(max(_wgslsmith_div_vec3_i32(vec3<i32>(arg_1.a.a.x, global3.b.x, -51396i), vec3<i32>(arg_1.a.c, arg_1.a.c, 1i)), u_input.a), -u_input.a), ~arg_1.a.a.zzy, select(!vec3<bool>(true, global3.e, global3.e), !vec3<bool>(global3.e, global3.e, global3.e), select(true, false, any(vec3<bool>(global3.e, global3.e, global3.e))))));
    return global3.d.b;
}

fn func_1(arg_0: u32) -> f32 {
    global3 = Struct_4(Struct_2(func_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.d.d, -1133f, global3.d.d)))), func_2())), global3.b, 4294967295u, func_2().a, global3.e);
    global4 = Struct_1(vec2<u32>(~_wgslsmith_clamp_u32(20168u, ~arg_0, ~0u), ~select(3093u, ~global3.c, global3.e)), _wgslsmith_mult_vec2_u32(~(~(vec2<u32>(arg_0, 11278u) ^ vec2<u32>(arg_0, global3.d.b.a.x))), global4.b));
    global3 = Struct_4(global3.a, _wgslsmith_sub_vec3_i32(u_input.a, -(max(u_input.a, vec3<i32>(global3.d.c, global3.d.c, u_input.d)) | countOneBits(vec3<i32>(-19037i, u_input.d, 16783i)))), arg_0, global3.d, any(vec3<bool>(true, true, !(0u != global3.c))));
    let var_0 = -142f;
    global4 = global2[_wgslsmith_index_u32(firstLeadingBit(arg_0 << (~(4294967295u & firstTrailingBit(4294967295u)) % 32u)), 20u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -521f), func_2().b));
}

fn func_6(arg_0: bool, arg_1: vec2<f32>) -> StorageBuffer {
    global1 = array<vec4<i32>, 21>();
    global0 = 1000f;
    global2 = array<Struct_1, 20>();
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1.x)) * -1421f);
    var var_0 = global4.a.x;
    return StorageBuffer(vec4<u32>(~global3.a.a.a.x, func_2().a.b.a.x, _wgslsmith_div_u32(reverseBits(105465u), ~0u), (1u ^ global4.a.x) | ~(global4.b.x >> (4294967295u % 32u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(655f * arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), global3.d.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * arg_1.x) * arg_1.x))), -1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(-2147483647i ^ select(-select(-1i, -39505i, global3.e), global3.d.c, false));
    global2 = array<Struct_1, 20>();
    let var_1 = ~vec2<u32>(~_wgslsmith_mod_u32(global3.c, 4294967295u), ~_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(global4.a.x, global4.a.x, 4294967295u, global3.d.b.b.x), vec4<u32>(4294967295u, 4294967295u, 3769u, global3.a.a.a.x)), max(vec4<u32>(29814u, global4.b.x, 4294967295u, 71814u), vec4<u32>(0u, 4294967295u, global4.a.x, 47697u))));
    global1 = array<vec4<i32>, 21>();
    var var_2 = global3.d.d;
    let x = u_input.a;
    s_output = func_6(global3.e, vec2<f32>(_wgslsmith_f_op_f32(func_1(0u)), _wgslsmith_div_f32(1538f, _wgslsmith_div_f32(_wgslsmith_div_f32(-1467f, global3.d.d), _wgslsmith_f_op_f32(max(-302f, global3.d.d))))));
}

