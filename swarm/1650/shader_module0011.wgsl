struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<f32>,
    b: u32,
    c: Struct_3,
    d: u32,
    e: u32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_4, 6>;

var<private> global2: Struct_2;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-12667i, 2147483647i, -43149i, -1i), vec3<i32>(i32(-2147483648), 2147483647i, 24496i), -640f, 18694u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>) -> u32 {
    global2 = Struct_2(Struct_1(select(global2.a.a, _wgslsmith_add_vec4_i32(global2.e.a, abs(global2.e.a)), true), vec3<i32>(-(1i ^ global2.a.a.x), ~reverseBits(global3.a.x), global3.a.x >> (global2.a.d % 32u)), -521f, global3.d), select(!global2.b, !global2.b, vec2<bool>(!(global2.e.d > global3.d), !arg_1.x)), _wgslsmith_dot_vec4_i32(global2.a.a, -_wgslsmith_div_vec4_i32(vec4<i32>(21841i, u_input.c.x, 2147483647i, global0.x), vec4<i32>(7120i, 2147483647i, global3.a.x, global3.a.x)) | (global2.a.a ^ _wgslsmith_mult_vec4_i32(vec4<i32>(global0.x, global2.a.b.x, -35196i, 0i), global3.a))), abs(~global2.d ^ vec3<u32>(_wgslsmith_mod_u32(7918u, 1u), global2.a.d, ~5173u)), global2.e);
    let var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.a.c, 670f, 1620f, -415f)), _wgslsmith_div_vec4_f32(vec4<f32>(global2.e.c, global2.e.c, global2.a.c, global3.c), vec4<f32>(global2.e.c, -1000f, 1000f, 327f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-371f, -1151f, global2.a.c, 1406f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(global3.c, global3.c, -1061f, -400f), vec4<f32>(-1075f, global2.a.c, 266f, global3.c)), _wgslsmith_div_vec4_f32(vec4<f32>(global3.c, global3.c, global3.c, 571f), vec4<f32>(-2051f, global2.a.c, 722f, 341f)), any(vec4<bool>(arg_0.x, arg_0.x, global2.b.x, global2.b.x))))))), global3.d, Struct_3(min(global3.b.x << (50251u % 32u), (global2.c << (global2.a.d % 32u)) & ~(-2147483647i)), Struct_2(global2.e, vec2<bool>(global2.b.x, !arg_1.x), -2147483647i | global3.b.x, _wgslsmith_clamp_vec3_u32(vec3<u32>(global3.d, 0u, 0u), global2.d >> (global2.d % vec3<u32>(32u)), global2.d), Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 85630i, 1i, 2147483647i), vec4<i32>(global2.e.a.x, 59791i, -2147483647i, -2147483647i)), vec3<i32>(-2147483647i, 47155i, global3.b.x), global3.c, 5229u)), 1109f, Struct_2(Struct_1(global2.a.a, vec3<i32>(u_input.c.x, global0.x, global2.a.b.x) << (vec3<u32>(global3.d, global3.d, 28268u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(global3.c)), global3.d), !(!vec2<bool>(true, arg_1.x)), 0i, _wgslsmith_mult_vec3_u32(global2.d, vec3<u32>(0u, 14916u, global3.d)) & vec3<u32>(89634u, global2.d.x, global2.a.d), Struct_1(global3.a, vec3<i32>(global2.c, global3.b.x, -1i), _wgslsmith_f_op_f32(-global3.c), 22028u << (1u % 32u)))), global2.d.x, global2.a.d);
    let var_1 = !vec2<bool>(all(vec4<bool>(arg_0.x, !arg_0.x, var_0.c.c != -357f, !global2.b.x)), global2.b.x);
    global1 = array<Struct_4, 6>();
    let var_2 = _wgslsmith_div_i32(global3.b.x, _wgslsmith_mod_i32(~u_input.c.x, 1i));
    return ~var_0.c.d.d.x;
}

fn func_2() -> Struct_3 {
    let var_0 = all(select(vec3<bool>(global2.b.x, global2.b.x != true, !(false & global2.b.x)), vec3<bool>(false, global2.b.x || false, _wgslsmith_add_u32(global3.d, global3.d) > func_3(vec3<bool>(global2.b.x, global2.b.x, global2.b.x), vec2<bool>(false, true))), select(false, global0.x >= (u_input.c.x >> (50586u % 32u)), global2.b.x)));
    return Struct_3(~(-1i), Struct_2(Struct_1(abs(vec4<i32>(-1i, 19598i, 15493i, global0.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, -1i, 1i), -global2.a.a.yxx), global3.c, 9183u), !global2.b, global2.a.a.x, global2.d, global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1690f + 204f), _wgslsmith_f_op_f32(select(-1000f, global2.e.c, var_0)))))), Struct_2(global2.a, !(!(!global2.b)), u_input.c.x, vec3<u32>(global3.d, reverseBits(25833u), 4865u) >> (vec3<u32>(global2.d.x, global3.d, ~global3.d) % vec3<u32>(32u)), global2.e));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: i32) -> Struct_1 {
    var var_0 = vec3<bool>(arg_0.c.d.b.x, global2.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.b.e.c)) == _wgslsmith_f_op_f32(sign(global2.e.c)));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.d.a.c * arg_1.a.x))))) * vec2<f32>(arg_0.a.x, _wgslsmith_f_op_f32(trunc(-802f))));
    global2 = func_2().b;
    global1 = array<Struct_4, 6>();
    let var_2 = Struct_1(global2.a.a, global2.e.a.xwy, arg_1.a.x, global3.d);
    return Struct_1(vec4<i32>(~_wgslsmith_sub_i32(-1i, -arg_0.c.b.e.b.x), _wgslsmith_mult_i32(max(-global0.x, u_input.c.x ^ global0.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(global3.b.x, 2147483647i), ~vec2<i32>(global3.b.x, 26851i))), u_input.a, _wgslsmith_sub_i32(u_input.b, i32(-1i) * -20551i)), var_2.a.ywx, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c + global2.e.c)), ~_wgslsmith_add_u32(~(~61153u), ~global2.a.d << (global2.e.d % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    global2 = Struct_2(arg_0, vec2<bool>(global3.c == -1264f, global2.b.x), -global3.a.x, _wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(select(vec3<u32>(26476u, global2.a.d, 0u), firstTrailingBit(vec3<u32>(global3.d, global3.d, global3.d)), true), vec3<u32>(1u, global2.d.x, 47359u ^ global2.a.d)), ~(global2.d >> (~vec3<u32>(global3.d, arg_0.d, 0u) % vec3<u32>(32u)))), arg_0);
    var var_0 = vec3<u32>(~(~(~0u)), _wgslsmith_mult_u32(func_2().b.a.d, 4294967295u << (_wgslsmith_div_u32(0u, global3.d) % 32u)) << (1u % 32u), ~0u);
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(-73185i, global2.a.b.x, global2.e.b.x, 27275i), global2.a.a), global3.a), func_2().d.a.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-903f - _wgslsmith_f_op_f32(-global3.c))), ~func_4(global1[_wgslsmith_index_u32(var_0.x, 6u)], Struct_4(vec4<f32>(global2.a.c, arg_0.c, 189f, global3.c), 32983u, Struct_3(0i, Struct_2(Struct_1(global3.a, global3.b, -1215f, 19028u), vec2<bool>(global2.b.x, global2.b.x), global0.x, global2.d, Struct_1(global2.e.a, global2.e.b, arg_0.c, global3.d)), arg_0.c, Struct_2(arg_0, global2.b, 0i, vec3<u32>(arg_0.d, 31865u, arg_0.d), Struct_1(vec4<i32>(global2.a.b.x, u_input.a, global3.b.x, global3.b.x), global2.e.b, global3.c, global2.d.x))), 0u, global2.d.x), 18485i).d >> (global3.d % 32u)), select(!(!select(global2.b, vec2<bool>(global2.b.x, global2.b.x), true)), global2.b, all(select(vec4<bool>(global2.b.x, true, false, global2.b.x), vec4<bool>(global2.b.x, false, global2.b.x, global2.b.x), vec4<bool>(false, global2.b.x, false, true)))), arg_0.b.x, select(_wgslsmith_mult_vec3_u32(min(global2.d, vec3<u32>(1u, global3.d, arg_0.d)), firstLeadingBit(vec3<u32>(0u, 35644u, var_0.x))) >> (~abs(global2.d) % vec3<u32>(32u)), countOneBits(select(global2.d | global2.d, ~global2.d, select(vec3<bool>(global2.b.x, true, global2.b.x), vec3<bool>(true, global2.b.x, false), vec3<bool>(global2.b.x, true, global2.b.x)))), select(!select(vec3<bool>(true, global2.b.x, false), vec3<bool>(global2.b.x, global2.b.x, true), vec3<bool>(global2.b.x, global2.b.x, true)), !select(vec3<bool>(false, global2.b.x, true), vec3<bool>(global2.b.x, true, global2.b.x), vec3<bool>(false, global2.b.x, true)), select(select(vec3<bool>(false, global2.b.x, false), vec3<bool>(global2.b.x, global2.b.x, global2.b.x), vec3<bool>(global2.b.x, false, true)), select(vec3<bool>(global2.b.x, false, global2.b.x), vec3<bool>(global2.b.x, global2.b.x, global2.b.x), vec3<bool>(false, false, true)), global2.b.x))), arg_0);
    var_0 = var_1.d;
    let var_2 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c, arg_0.c, 354f, 212f) * vec4<f32>(global3.c, 425f, 1916f, -1346f)) + vec4<f32>(global3.c, -2144f, global3.c, 159f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c, 1218f, global2.e.c, -964f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.e.c, 265f, 2069f, 503f), vec4<f32>(global3.c, -1427f, -1402f, var_1.a.c))))), vec4<f32>(func_2().c, _wgslsmith_f_op_f32(-func_2().d.e.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.e.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.e.c)) * _wgslsmith_f_op_f32(max(1935f, -1287f))))), _wgslsmith_sub_u32(min(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, 3050u, var_0.x, global3.d)), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.d, 1u, global3.d, 4294967295u), vec4<u32>(0u, arg_0.d, 0u, global3.d))), var_0.x), 1u), func_2(), _wgslsmith_div_u32(_wgslsmith_div_u32(0u, ~1u), ~func_2().b.e.d), ~(~(~63782u)));
    return Struct_2(Struct_1(-firstLeadingBit(-vec4<i32>(1i, global2.c, global2.e.b.x, -12144i)), _wgslsmith_div_vec3_i32(-_wgslsmith_mod_vec3_i32(vec3<i32>(0i, u_input.c.x, arg_1.x), global3.b), vec3<i32>(min(var_1.a.b.x, -36141i), global2.a.a.x & u_input.c.x, _wgslsmith_mult_i32(arg_1.x, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.c)), ~var_1.e.d), var_1.b, arg_1.x, vec3<u32>(66540u, select(global3.d, 1u, false), ~reverseBits(34990u)) & min(~var_1.d, vec3<u32>(1u, firstLeadingBit(4294967295u), _wgslsmith_add_u32(global3.d, arg_0.d))), Struct_1(reverseBits(vec4<i32>(-9836i, 13621i, arg_1.x, arg_1.x) ^ vec4<i32>(global3.a.x, var_1.e.a.x, -20835i, 2147483647i)) >> (~abs(vec4<u32>(0u, var_2.e, arg_0.d, arg_0.d)) % vec4<u32>(32u)), func_4(var_2, var_2, global3.b.x).b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2.a.x * var_1.a.c), var_1.e.c)), var_1.d.x));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_1) -> Struct_2 {
    return func_5(func_4(Struct_4(vec4<f32>(arg_0.x, arg_1.c, -2222f, _wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))), global2.d.x, func_2(), _wgslsmith_dot_vec3_u32(vec3<u32>(global3.d, 1u, 1u) | global2.d, ~vec3<u32>(77266u, arg_1.d, 1u)), reverseBits(global3.d) | arg_1.d), global1[_wgslsmith_index_u32(firstTrailingBit(~arg_1.d >> (global3.d % 32u)), 6u)], firstTrailingBit(u_input.a)), abs(_wgslsmith_sub_vec4_i32(~(~vec4<i32>(global0.x, 1i, u_input.c.x, global0.x)), vec4<i32>(-1i, 58723i, -56631i, ~global2.c))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(global2.e.c + _wgslsmith_f_op_f32(-1000f - global3.c)), _wgslsmith_div_f32(-303f, _wgslsmith_f_op_f32(global3.c - -1000f)), -269f))), Struct_1(global3.a, -_wgslsmith_add_vec3_i32(vec3<i32>(global3.a.x, global3.a.x, global0.x), global3.a.xww), global3.c, ~min(1u, global2.e.d)));
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(global2.a.c, global2.e.c)), global2.e.c, _wgslsmith_f_op_f32(abs(global2.e.c))))));
    global1 = array<Struct_4, 6>();
    var var_1 = false;
    global3 = Struct_1(_wgslsmith_mod_vec4_i32(global3.a, select(select(global3.a, vec4<i32>(6093i, 20841i, 0i, global0.x), vec4<bool>(global2.b.x, false, false, global2.b.x)), _wgslsmith_sub_vec4_i32(global2.a.a, global2.a.a), 84855u < global3.d) & vec4<i32>(global3.a.x | 21409i, global2.a.b.x, ~1i, 1i)), ~vec3<i32>(-1i << (global3.d % 32u), 12556i, 32653i), global2.e.c, func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(global3.d), 28437u), 6u)], Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, 1000f, -1073f, 578f), vec4<f32>(-1288f, global3.c, global3.c, global3.c))))), global3.d, func_2(), ~_wgslsmith_mod_u32(0u, 4294967295u), func_5(global2.a, vec4<i32>(-1i, 0i, 1i, global3.a.x)).e.d), -17148i).d);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.a.c))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, -1030f), func_1(vec3<f32>(-146f, global2.e.c, -1978f), Struct_1(global3.a, vec3<i32>(global3.a.x, 2657i, u_input.a), 1388f, 404u)).a.c)))));
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(1736i, func_2().a, func_4(global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global3.d, global2.a.d), 6u)], Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(725f, 172f, 315f, global3.c)), ~global2.a.d, func_2(), ~1u, ~1u), select(~u_input.b, func_2().d.a.a.x, func_5(global2.a, global2.e.a).b.x)).a.x), vec3<i32>(-1i, global0.x, func_2().d.a.b.x));
    var_3 = u_input.c.x;
    global3 = Struct_1(~countOneBits(-vec4<i32>(1i, 1i, global2.c, 36376i)), global2.e.a.xyw, -1963f, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(abs(_wgslsmith_mult_u32(_wgslsmith_sub_u32(global3.d, global3.d), 23495u)), _wgslsmith_div_u32(abs(global2.a.d), 29512u), func_2().d.e.d, _wgslsmith_mod_u32(global2.e.d, 0u)), global2.d.zx, vec2<u32>(global2.e.d, 1u), _wgslsmith_f_op_f32(-107f + _wgslsmith_f_op_f32(-var_0.x)), global3.c);
}

