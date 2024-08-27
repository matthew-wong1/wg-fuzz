struct Struct_1 {
    a: bool,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 13>;

var<private> global1: Struct_5;

var<private> global2: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global3: Struct_4;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>, arg_2: i32, arg_3: Struct_2) -> u32 {
    var var_0 = vec2<bool>(any(select(vec3<bool>(true, false, !global3.a), vec3<bool>(arg_3.e.a, arg_3.e.a, false), vec3<bool>(true || global1.a.e.a, true, any(vec3<bool>(true, true, global3.a))))), global1.a.e.a & !all(select(vec3<bool>(false, true, false), vec3<bool>(global1.d.e.a, false, global1.d.e.a), global3.a)));
    var_0 = !select(!(!(!vec2<bool>(arg_3.e.a, false))), select(vec2<bool>(true, true), !(!vec2<bool>(true, arg_3.e.a)), select(arg_3.c.x >= 2147483647i, true, !arg_3.e.a)), true);
    global2 = vec2<u32>(select(countOneBits(1u), 4294967295u, true), ~19212u);
    let var_1 = countOneBits(vec3<i32>(reverseBits(arg_2), global0[_wgslsmith_index_u32(max(_wgslsmith_mult_u32(33494u, ~4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(11675u, 81637u, global3.b, global1.c.b) >> (vec4<u32>(32132u, 1u, global1.d.e.b, global2.x) % vec4<u32>(32u)), abs(vec4<u32>(global3.b, global3.b, 68543u, arg_3.b)))), 13u)], 1i));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(1482f - _wgslsmith_f_op_f32(sign(global1.a.a.x))), arg_3.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(global1.d.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f)), _wgslsmith_f_op_f32(select(-1006f, -2010f, false)), true)))), _wgslsmith_f_op_f32(max(-1843f, -1149f)));
    return 34868u;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32, arg_2: bool, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = ~vec2<i32>(countOneBits(-28813i), global1.d.c.x | 0i);
    let var_1 = -_wgslsmith_dot_vec2_i32(reverseBits(~reverseBits(vec2<i32>(global1.a.e.d.x, global1.a.c.x))), global1.d.e.d);
    let var_2 = vec4<u32>(_wgslsmith_mod_u32(global3.b, _wgslsmith_mult_u32(global3.b, ~_wgslsmith_sub_u32(global3.b, 80939u))), func_3(global1.d.d, arg_3.yy, global0[_wgslsmith_index_u32(~global3.b, 13u)], Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1639f, arg_1, 1381f) + _wgslsmith_f_op_vec4_f32(-global1.c.a)), ~global2.x, -global1.c.c, vec4<i32>(-29377i, ~global0[_wgslsmith_index_u32(global2.x, 13u)], 0i, -2147483647i ^ global1.c.c.x), global1.d.e)), abs(_wgslsmith_clamp_u32(global3.b, global2.x, global3.b) << (global2.x % 32u)) | global2.x, _wgslsmith_dot_vec4_u32(vec4<u32>(22991u, min(global2.x, _wgslsmith_dot_vec2_u32(arg_3.zz, arg_3.yx)), ~(global2.x << (1u % 32u)), min(~54356u, global1.a.b)), reverseBits(vec4<u32>(arg_3.x, global2.x, global2.x, 1u) >> (vec4<u32>(arg_3.x, 0u, 0u, global1.a.b) % vec4<u32>(32u)))));
    let var_3 = select(select(max(global1.a.c, global1.a.d), ~(~vec4<i32>(var_1, var_1, u_input.a, var_0.x)) >> (_wgslsmith_sub_vec4_u32(var_2, _wgslsmith_div_vec4_u32(vec4<u32>(100264u, global3.b, 1u, global1.d.e.c), vec4<u32>(0u, 23209u, global1.a.e.c, 0u))) % vec4<u32>(32u)), global3.a), vec4<i32>(var_0.x, ~reverseBits(6373i << (0u % 32u)), var_1, _wgslsmith_dot_vec4_i32(-select(global1.c.c, vec4<i32>(-71943i, -1i, var_0.x, 24152i), vec4<bool>(arg_2, false, true, false)), global1.d.c)), global1.c.e.a);
    var var_4 = global1.a;
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, 611f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_4.a.x))), _wgslsmith_div_f32(-587f, 268f), _wgslsmith_f_op_f32(f32(-1f) * -3139f), 487f), global1.a.e.b, abs(vec4<i32>(abs(_wgslsmith_mod_i32(var_0.x, global1.a.d.x)), ~global1.a.e.d.x, -35911i, var_1)), max(select(_wgslsmith_add_vec4_i32(~vec4<i32>(var_4.d.x, 1i, u_input.a, -47076i), select(vec4<i32>(var_1, 31013i, var_3.x, var_1), global1.d.d, vec4<bool>(var_4.e.a, arg_2, true, arg_2))), vec4<i32>(min(var_4.c.x, 0i), ~45905i, global0[_wgslsmith_index_u32(var_4.e.b, 13u)], 2147483647i), all(vec2<bool>(true, true))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_3.x, var_3.x), var_1, _wgslsmith_add_i32(1i, global0[_wgslsmith_index_u32(arg_3.x, 13u)]), 1i), _wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 17362i, 2147483647i, -20052i), vec4<i32>(global1.d.c.x, -1i, var_3.x, -2147483647i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, -16326i, global0[_wgslsmith_index_u32(3955u, 13u)], global1.a.e.d.x), vec4<i32>(var_1, global0[_wgslsmith_index_u32(4294967295u, 13u)], -18040i, global0[_wgslsmith_index_u32(4294967295u, 13u)]), vec4<i32>(-27806i, -1i, 65069i, -11675i))))), var_4.e);
}

fn func_4(arg_0: Struct_5) -> Struct_2 {
    var var_0 = -firstLeadingBit(-1i);
    var var_1 = Struct_3(func_2(_wgslsmith_f_op_vec3_f32(-arg_0.a.a.zwz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.d.a.x)))), false, vec3<u32>(4294967295u & global1.d.e.b, global2.x, 16933u & select(global2.x, arg_0.d.b, arg_0.c.e.a))).e, arg_0.d, global1.a.c.wwz, func_2(_wgslsmith_f_op_vec3_f32(arg_0.a.a.zzz * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-289f, arg_0.d.a.x, arg_0.c.a.x) * arg_0.d.a.zxx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, global1.d.a.x, -1442f))))), 527f, true, _wgslsmith_div_vec3_u32(~vec3<u32>(global2.x, global1.d.e.b, global1.c.b), ~(~vec3<u32>(arg_0.d.e.b, 59373u, 29957u)))));
    let var_2 = Struct_3(Struct_1(any(vec4<bool>(false, true, true, true)), var_1.b.e.b, global3.b, -var_1.b.d.yx), Struct_2(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.a.x, 737f, var_1.d.a.x, -717f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.a.a.x, 411f, var_1.d.a.x, -1000f) + var_1.b.a)))), arg_0.a.e.b, vec4<i32>(global0[_wgslsmith_index_u32(~1u, 13u)], 1i, global1.a.c.x, -6057i), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 29566i, -10265i, var_1.c.x), vec4<i32>(var_1.a.d.x, arg_0.c.c.x, global1.d.c.x, -2147483647i)), abs(-13247i), 1i), _wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(global1.c.b, 13u)], -16030i, global1.d.e.d.x, u_input.a), -vec4<i32>(arg_0.d.c.x, 2147483647i, -2147483647i, var_1.c.x))), arg_0.c.e), _wgslsmith_clamp_vec3_i32(-_wgslsmith_div_vec3_i32(select(vec3<i32>(28506i, 1i, -2147483647i), arg_0.d.d.zxw, vec3<bool>(true, var_1.d.e.a, true)), min(vec3<i32>(-2147483647i, -11200i, 2147483647i), vec3<i32>(arg_0.a.c.x, 2147483647i, 38424i))), _wgslsmith_sub_vec3_i32(var_1.c, arg_0.d.c.ywy), -_wgslsmith_mult_vec3_i32(arg_0.a.d.yzy >> (vec3<u32>(71u, 48884u, 4905u) % vec3<u32>(32u)), global1.a.c.zyx)), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(629f, global1.b, global1.a.a.x, -828f)))), global1.c.b, _wgslsmith_clamp_vec4_i32(global1.a.c & _wgslsmith_mod_vec4_i32(var_1.b.c, global1.c.d), _wgslsmith_sub_vec4_i32(min(global1.c.c, global1.c.c), vec4<i32>(-1i, -19318i, global0[_wgslsmith_index_u32(global2.x, 13u)], global1.a.c.x)), vec4<i32>(-1i) * -vec4<i32>(-32046i, -1553i, u_input.a, var_1.b.d.x)), func_2(vec3<f32>(_wgslsmith_f_op_f32(select(var_1.d.a.x, 1109f, false)), func_2(vec3<f32>(-1066f, var_1.b.a.x, arg_0.c.a.x), arg_0.a.a.x, false, vec3<u32>(arg_0.a.b, 4396u, 4294967295u)).a.x, global1.c.a.x), _wgslsmith_div_f32(global1.d.a.x, global1.c.a.x), true, ~vec3<u32>(0u, 47289u, global3.b)).c, func_2(vec3<f32>(arg_0.b, _wgslsmith_f_op_f32(round(1990f)), _wgslsmith_f_op_f32(step(var_1.d.a.x, 1521f))), _wgslsmith_f_op_f32(f32(-1f) * -463f), arg_0.a.e.a, max(vec3<u32>(var_1.b.e.b, 0u, global1.c.e.b) >> (vec3<u32>(arg_0.c.e.b, 29614u, 22445u) % vec3<u32>(32u)), vec3<u32>(global3.b, var_1.b.e.c, global1.d.e.b) & vec3<u32>(1u, global3.b, 42258u))).e));
    global3 = Struct_4(any(select(vec2<bool>(var_2.a.a, !var_1.b.e.a), select(vec2<bool>(true, var_1.d.e.a), !vec2<bool>(true, var_2.a.a), true), false)), ~(~(~_wgslsmith_sub_u32(0u, global1.c.e.b))));
    var var_3 = func_2(var_2.d.a.xyw, -348f, any(select(!select(vec2<bool>(false, false), vec2<bool>(global3.a, false), vec2<bool>(arg_0.d.e.a, arg_0.a.e.a)), !select(vec2<bool>(global3.a, global1.c.e.a), vec2<bool>(true, arg_0.a.e.a), global3.a), vec2<bool>(var_2.a.a, var_1.a.a | global1.c.e.a))), select(vec3<u32>(4294967295u, global1.c.e.c, _wgslsmith_add_u32(~global2.x, ~0u)), vec3<u32>(abs(global3.b), 1u, ~_wgslsmith_mult_u32(var_1.b.b, 1u)), vec3<bool>(global3.a, !arg_0.d.e.a | (global3.a | arg_0.d.e.a), arg_0.d.e.a))).e;
    return func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(var_2.d.a.zxy, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.d.a.zzw - vec3<f32>(var_2.d.a.x, -389f, -771f)) - vec3<f32>(global1.c.a.x, -1000f, 416f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.a.x + func_2(var_2.d.a.zzx, _wgslsmith_f_op_f32(sign(arg_0.c.a.x)), all(vec2<bool>(false, var_2.b.e.a)), select(vec3<u32>(10913u, global2.x, 1u), vec3<u32>(global1.a.b, global1.c.e.c, global2.x), var_2.a.a)).a.x)), all(vec3<bool>(true, any(!vec4<bool>(false, true, true, global1.d.e.a)), func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(1051f, 803f, var_2.d.a.x) - global1.d.a.zxy), arg_0.b, all(vec2<bool>(var_2.d.e.a, false)), firstLeadingBit(vec3<u32>(1u, 18808u, var_3.b))).e.a)), vec3<u32>(~(~var_2.a.c) ^ ~(~24943u), 4294967295u << (global3.b % 32u), ~(_wgslsmith_clamp_u32(var_1.a.b, var_1.d.b, 4294967295u) << (min(arg_0.d.b, 6332u) % 32u))));
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    var var_0 = select(!vec3<bool>(!(arg_0.a.x <= 1370f), arg_0.e.a, global1.a.e.a), !select(vec3<bool>(true, true, true), vec3<bool>(arg_0.e.a, any(vec4<bool>(global1.c.e.a, true, false, false)), global3.a), vec3<bool>(false, !arg_0.e.a, u_input.a > -1i)), select(select(select(select(vec3<bool>(arg_0.e.a, true, arg_0.e.a), vec3<bool>(false, arg_0.e.a, false), true), !vec3<bool>(false, global3.a, arg_0.e.a), vec3<bool>(false, false, arg_0.e.a)), !select(vec3<bool>(true, arg_0.e.a, false), vec3<bool>(global1.c.e.a, true, true), false), !vec3<bool>(true, arg_0.e.a, global1.d.e.a)), select(select(select(vec3<bool>(arg_0.e.a, global3.a, false), vec3<bool>(global3.a, global3.a, true), global1.a.e.a), vec3<bool>(true, global3.a, true), true), !select(vec3<bool>(global3.a, arg_0.e.a, arg_0.e.a), vec3<bool>(true, false, global3.a), true), func_4(Struct_5(Struct_2(vec4<f32>(global1.d.a.x, 104f, arg_0.a.x, arg_0.a.x), arg_0.e.b, vec4<i32>(global0[_wgslsmith_index_u32(1u, 13u)], global1.a.c.x, 0i, arg_0.d.x), vec4<i32>(-2147483647i, u_input.a, 2147483647i, -2147483647i), arg_0.e), arg_0.a.x, arg_0, Struct_2(global1.d.a, global3.b, vec4<i32>(global1.d.d.x, 8864i, global1.a.e.d.x, u_input.a), global1.a.d, arg_0.e))).e.a), select(any(!vec4<bool>(arg_0.e.a, false, false, true)), global3.a, 2147483647i <= (u_input.a << (arg_0.e.c % 32u)))));
    var var_1 = Struct_1(global3.a, ~max(~1u, _wgslsmith_div_u32(_wgslsmith_mult_u32(1u, arg_0.e.c), 1u)), abs(1u), vec2<i32>(global1.c.c.x ^ -(~global0[_wgslsmith_index_u32(19970u, 13u)]), u_input.a));
    var var_2 = _wgslsmith_mult_vec2_u32(~_wgslsmith_mod_vec2_u32(firstLeadingBit(vec2<u32>(18616u, global3.b) & vec2<u32>(global2.x, global1.c.b)), vec2<u32>(7921u, 58833u)), vec2<u32>(0u, _wgslsmith_mult_u32(abs(_wgslsmith_mult_u32(global1.a.e.b, 0u)), _wgslsmith_add_u32(max(72090u, 0u), global2.x >> (66607u % 32u)))));
    var var_3 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_0.a.x))) - _wgslsmith_f_op_f32(max(-2023f, _wgslsmith_f_op_f32(-global1.c.a.x)))) < 1000f, _wgslsmith_dot_vec4_u32(abs(~(~vec4<u32>(var_2.x, 1u, 26889u, arg_0.b))), ~vec4<u32>(min(56335u, global3.b), global1.d.b, var_2.x & var_2.x, 36351u)));
    let var_4 = Struct_4(!all(var_0.zy), ~global3.b);
    return func_2(arg_0.a.yzz, global1.b, true, ~select(vec3<u32>(max(0u, var_3.b), 48975u, max(1u, 82656u)), vec3<u32>(_wgslsmith_div_u32(global3.b, 92514u), _wgslsmith_mult_u32(10884u, var_1.c), ~13726u), select(vec3<bool>(arg_0.e.a, true, global1.a.e.a), !vec3<bool>(true, global1.a.e.a, false), arg_0.e.a)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: f32, arg_3: vec2<f32>) -> Struct_5 {
    global1 = Struct_5(func_5(func_4(Struct_5(global1.a, -532f, Struct_2(vec4<f32>(arg_3.x, arg_3.x, arg_1.d.a.x, arg_1.d.a.x), 0u, vec4<i32>(2147483647i, u_input.a, -7907i, -20896i), vec4<i32>(46735i, 47995i, global1.c.e.d.x, global1.c.c.x), Struct_1(global1.d.e.a, 26650u, 19321u, arg_0.d)), func_2(vec3<f32>(-853f, -1535f, arg_1.b.a.x), arg_1.d.a.x, false, vec3<u32>(9958u, arg_1.a.b, 66536u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) - _wgslsmith_f_op_f32(sign(global1.c.a.x)))), func_5(func_5(Struct_2(_wgslsmith_f_op_vec4_f32(max(global1.d.a, vec4<f32>(-179f, global1.b, 1587f, arg_2))), ~33661u, _wgslsmith_sub_vec4_i32(arg_1.b.d, vec4<i32>(2147483647i, -37846i, -54903i, 1i)), -vec4<i32>(arg_1.d.e.d.x, 14590i, 0i, 2147483647i), Struct_1(true, global2.x, 36297u, global1.c.c.zx)))), global1.d);
    global1 = Struct_5(func_2(global1.a.a.wzw, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1.d.a.x + _wgslsmith_f_op_f32(select(arg_3.x, 427f, global1.c.e.a))))), !((arg_1.a.b ^ global1.d.b) <= global1.a.b), countOneBits(vec3<u32>(84386u, 8742u & global1.c.e.c, ~arg_0.b))), arg_2, func_2(global1.c.a.xwx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.a.x) * -331f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(574f)), 450f))), func_4(Struct_5(global1.a, _wgslsmith_f_op_f32(2007f * 843f), Struct_2(vec4<f32>(arg_3.x, global1.a.a.x, -516f, arg_3.x), arg_0.b, vec4<i32>(2147483647i, 1i, -2147483647i, 1i), arg_1.d.d, Struct_1(arg_1.b.e.a, global2.x, 0u, vec2<i32>(0i, arg_0.d.x))), global1.d)).e.a, abs(_wgslsmith_div_vec3_u32(vec3<u32>(39989u, arg_1.d.e.c, global3.b), vec3<u32>(4294967295u, arg_1.b.b, 4294967295u) >> (vec3<u32>(1u, 68759u, global1.d.b) % vec3<u32>(32u))))), func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.d.a), 0u, vec4<i32>(arg_1.a.d.x, global1.a.e.d.x, 0i, arg_0.d.x >> (arg_0.b % 32u)), countOneBits(~vec4<i32>(global1.c.d.x, -36587i, -48194i, -1i)), func_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global1.a.a.x, arg_2, arg_3.x))), -557f, true, vec3<u32>(1u, 28792u, 54209u) >> (vec3<u32>(global2.x, 4294967295u, arg_1.d.b) % vec3<u32>(32u))).e)));
    global2 = max(~(~vec2<u32>(~global1.c.b, arg_1.b.e.b)), min(vec2<u32>(arg_1.d.b, 1u), ~select(~vec2<u32>(1u, global2.x), vec2<u32>(1u, global1.a.b), !global1.c.e.a)));
    var var_0 = !(!(!(!(!vec3<bool>(global3.a, global3.a, false)))));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2 + -1528f)));
    return Struct_5(func_2(vec3<f32>(_wgslsmith_f_op_f32(floor(arg_3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-361f, 297f)) - _wgslsmith_f_op_f32(step(-514f, var_1))), func_2(_wgslsmith_f_op_vec3_f32(-global1.d.a.xzy), _wgslsmith_f_op_f32(trunc(arg_3.x)), true, min(vec3<u32>(arg_1.b.e.c, 29105u, 19229u), vec3<u32>(35358u, global2.x, 57913u))).a.x), _wgslsmith_f_op_f32(arg_2 + _wgslsmith_f_op_f32(2100f + arg_3.x)), global3.a, firstLeadingBit(select(select(vec3<u32>(arg_0.b, arg_0.b, global3.b), vec3<u32>(arg_0.c, arg_1.d.b, global2.x), vec3<bool>(var_0.x, arg_0.a, arg_1.b.e.a)), vec3<u32>(1u, arg_0.c, global3.b), vec3<bool>(false, arg_1.a.a, arg_1.b.e.a)))), arg_2, Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1281f, arg_3.x, 1520f, -337f) - _wgslsmith_f_op_vec4_f32(-global1.a.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, arg_3.x, global1.c.a.x, 940f)) * global1.c.a)), ~global2.x, _wgslsmith_add_vec4_i32(vec4<i32>(~(-2147483647i), global1.a.c.x, _wgslsmith_div_i32(0i, -1i), ~arg_0.d.x), ~(-arg_1.b.c)), global1.a.d, global1.a.e), func_4(Struct_5(func_5(global1.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.a.x - 860f) + _wgslsmith_f_op_f32(-2216f * 411f)), arg_1.d, Struct_2(vec4<f32>(1831f, -1000f, 617f, -277f), 762u, arg_1.b.c, vec4<i32>(arg_1.a.d.x, arg_1.b.c.x, global0[_wgslsmith_index_u32(global3.b, 13u)], -1i), func_4(Struct_5(Struct_2(global1.c.a, arg_0.c, global1.a.c, arg_1.d.d, Struct_1(var_0.x, arg_0.b, arg_1.a.c, vec2<i32>(global1.c.d.x, arg_1.a.d.x))), 1000f, arg_1.b, arg_1.d)).e))));
}

fn func_6(arg_0: Struct_5) -> Struct_1 {
    let var_0 = Struct_2(global1.c.a, _wgslsmith_mod_u32(global1.a.b, 49894u), -_wgslsmith_mod_vec4_i32(global1.d.d, abs(_wgslsmith_clamp_vec4_i32(arg_0.c.c, global1.a.d, global1.d.d))), ~(-(~vec4<i32>(18231i, global1.c.e.d.x, u_input.a, 40472i))), global1.c.e);
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-(~arg_0.d.d.wzw), vec3<i32>(-1i) * -var_0.d.wxx), _wgslsmith_mod_i32(1i, _wgslsmith_mult_i32(arg_0.a.e.d.x, global1.c.c.x)) << (global3.b % 32u)), var_0.c.x);
    var var_2 = func_4(arg_0).e;
    let var_3 = 0u;
    global3 = Struct_4(_wgslsmith_add_u32(func_3(_wgslsmith_add_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(var_3, 13u)], var_2.d.x, -1i, u_input.a), global1.a.d), _wgslsmith_div_vec2_u32(vec2<u32>(2510u, 0u), vec2<u32>(global1.c.b, var_3)), 2147483647i, arg_0.a), var_2.c) != global1.c.e.c, func_3(global1.a.d, countOneBits(vec2<u32>(2093u, var_0.b)) >> (~vec2<u32>(global3.b, var_2.b) % vec2<u32>(32u)), _wgslsmith_add_i32(func_5(Struct_2(arg_0.a.a, global2.x, vec4<i32>(global1.c.c.x, var_0.c.x, 1i, u_input.a), var_0.d, Struct_1(true, 4294967295u, global1.a.e.b, var_2.d))).e.d.x, ~2147483647i), Struct_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(229f, 1000f, 606f, 969f) - arg_0.c.a), countOneBits(34707u), var_0.d >> (vec4<u32>(global1.a.b, 22737u, var_0.b, global1.c.e.b) % vec4<u32>(32u)), var_0.c & vec4<i32>(0i, global1.d.e.d.x, -10413i, global1.d.d.x), var_0.e)) >> (~77888u % 32u));
    return Struct_1(any(select(vec4<bool>(true, true, true, arg_0.a.e.a == true), !(!vec4<bool>(false, false, arg_0.d.e.a, true)), true)), 4294967295u, global1.a.b, _wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(-vec2<i32>(global1.c.e.d.x, -2147483647i), vec2<i32>(-13217i, arg_0.a.d.x) & abs(var_2.d)), ~var_2.d << (~vec2<u32>(global2.x, global2.x) % vec2<u32>(32u))));
}

fn func_7(arg_0: vec4<u32>, arg_1: Struct_2, arg_2: vec2<bool>, arg_3: Struct_2) -> Struct_2 {
    let var_0 = 49956i | ((~_wgslsmith_mod_i32(-2147483647i, global0[_wgslsmith_index_u32(arg_0.x, 13u)]) & global0[_wgslsmith_index_u32(global3.b, 13u)]) | firstTrailingBit(arg_3.d.x));
    global1 = Struct_5(global1.c, _wgslsmith_f_op_f32(arg_3.a.x * _wgslsmith_f_op_f32(f32(-1f) * -1555f)), Struct_2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.a.x, -227f, global1.b, global1.a.a.x) + arg_1.a)))), 34874u, _wgslsmith_mult_vec4_i32(vec4<i32>(-1815i, 19407i, 1i, 1i), arg_3.d), countOneBits(abs(_wgslsmith_add_vec4_i32(arg_3.d, vec4<i32>(arg_3.d.x, global0[_wgslsmith_index_u32(1u, 13u)], arg_1.e.d.x, u_input.a)))), arg_1.e), Struct_2(_wgslsmith_f_op_vec4_f32(-func_2(vec3<f32>(-1403f, 1396f, global1.c.a.x), arg_1.a.x, false && arg_1.e.a, ~arg_0.wzy).a), 0u, _wgslsmith_sub_vec4_i32(~abs(vec4<i32>(1i, arg_3.d.x, arg_3.d.x, arg_3.d.x)), vec4<i32>(u_input.a, countOneBits(-25621i), _wgslsmith_add_i32(arg_1.c.x, -71799i), abs(arg_3.d.x))), firstLeadingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global1.d.d.x, 33149i, 2147483647i, arg_1.e.d.x), arg_1.c | vec4<i32>(var_0, global0[_wgslsmith_index_u32(arg_1.b, 13u)], -2147483647i, -1i), abs(global1.a.d))), func_1(Struct_1(arg_2.x & true, global3.b >> (global1.d.b % 32u), ~61881u, -arg_3.d.yw), Struct_3(Struct_1(false, 46357u, arg_3.e.c, global1.c.c.zx), Struct_2(arg_3.a, 0u, vec4<i32>(u_input.a, var_0, u_input.a, arg_3.c.x), vec4<i32>(arg_1.e.d.x, -19267i, 1i, u_input.a), Struct_1(false, 1u, 15488u, arg_1.e.d)), vec3<i32>(var_0, var_0, arg_1.d.x), Struct_2(arg_3.a, arg_0.x, vec4<i32>(arg_1.c.x, arg_3.e.d.x, -9222i, 38730i), vec4<i32>(arg_1.e.d.x, var_0, -2147483647i, global1.a.e.d.x), global1.a.e)), -394f, func_5(arg_3).a.yw).c.e));
    global1 = Struct_5(global1.d, global1.c.a.x, arg_1, func_1(Struct_1(any(vec4<bool>(global1.a.e.a, false, true, arg_1.e.a)), func_1(func_5(arg_3).e, Struct_3(Struct_1(true, 4294967295u, 4294967295u, vec2<i32>(u_input.a, -1i)), Struct_2(vec4<f32>(515f, arg_1.a.x, arg_1.a.x, -1473f), 19552u, global1.a.d, vec4<i32>(1i, 2147483647i, 8005i, u_input.a), Struct_1(arg_1.e.a, global1.c.e.b, arg_3.b, arg_1.c.zx)), vec3<i32>(var_0, arg_1.c.x, 1841i), arg_3), -154f, _wgslsmith_f_op_vec2_f32(exp2(global1.a.a.wy))).c.e.b, arg_3.b, vec2<i32>(func_6(Struct_5(arg_3, global1.d.a.x, arg_1, Struct_2(vec4<f32>(arg_3.a.x, 809f, -1000f, arg_1.a.x), 28850u, global1.d.d, vec4<i32>(2147483647i, arg_3.e.d.x, 81324i, global0[_wgslsmith_index_u32(arg_3.b, 13u)]), Struct_1(false, arg_1.e.b, arg_1.e.c, vec2<i32>(u_input.a, arg_1.d.x))))).d.x, 12688i)), Struct_3(Struct_1(false, _wgslsmith_mult_u32(global1.c.b, 1u), ~global1.c.b, vec2<i32>(-2147483647i, global1.d.c.x) >> (arg_0.wy % vec2<u32>(32u))), func_5(Struct_2(vec4<f32>(-1000f, 113f, 899f, -427f), 23926u, arg_3.d, global1.a.d, arg_3.e)), arg_3.d.zwx, Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.a), ~4294967295u, -vec4<i32>(83619i, var_0, 84070i, 1i), ~global1.c.d, global1.c.e)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1676f, global1.b) * arg_1.a.x) * arg_1.a.x), _wgslsmith_f_op_vec2_f32(arg_1.a.xw + func_5(Struct_2(vec4<f32>(1000f, global1.d.a.x, arg_3.a.x, 2098f), 10229u, arg_3.d, global1.a.d, Struct_1(global3.a, arg_0.x, arg_0.x, global1.a.c.zz))).a.zw)).d);
    global3 = Struct_4(arg_1.e.a, arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1031f))));
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(max(553f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f + arg_1.a.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b + _wgslsmith_f_op_f32(arg_3.a.x - arg_3.a.x))), -607f, func_5(arg_1).a.x), 26769u >> (~(~abs(arg_3.e.b)) % 32u), vec4<i32>(global1.c.d.x, func_4(Struct_5(arg_1, _wgslsmith_f_op_f32(-global1.b), Struct_2(vec4<f32>(137f, global1.d.a.x, -253f, -201f), global3.b, vec4<i32>(u_input.a, 20995i, 1i, global1.d.d.x), vec4<i32>(21467i, u_input.a, -82501i, arg_1.e.d.x), arg_1.e), Struct_2(arg_3.a, 69802u, arg_3.d, vec4<i32>(global1.d.e.d.x, var_0, 2147483647i, 30995i), Struct_1(arg_3.e.a, arg_1.e.c, arg_3.e.c, arg_3.c.wx)))).c.x, arg_3.d.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i >> (arg_0.x % 32u), _wgslsmith_clamp_i32(u_input.a, -2147483647i, u_input.a), _wgslsmith_clamp_i32(-2147483647i, arg_1.c.x, arg_1.d.x)), -12248i)), vec4<i32>(~_wgslsmith_mult_i32(abs(arg_1.c.x), arg_1.e.d.x), -(_wgslsmith_add_i32(arg_3.e.d.x, arg_3.c.x) << (1u % 32u)), -_wgslsmith_mod_i32(arg_3.d.x, 1i) ^ _wgslsmith_div_i32(2147483647i, 46560i), 1i), global1.d.e);
}

fn func_8(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>) -> Struct_4 {
    global2 = vec2<u32>(~94149u & global1.a.b, global1.d.b);
    var var_0 = Struct_4(func_6(func_1(func_2(arg_1.a.xxw, -195f, all(vec2<bool>(arg_0, arg_1.e.a)), firstTrailingBit(vec3<u32>(global1.c.b, 0u, global1.d.b))).e, Struct_3(arg_1.e, func_4(Struct_5(global1.c, -1135f, global1.d, Struct_2(global1.c.a, global1.d.b, vec4<i32>(u_input.a, 0i, global0[_wgslsmith_index_u32(0u, 13u)], global0[_wgslsmith_index_u32(global1.d.e.b, 13u)]), arg_1.d, Struct_1(global1.c.e.a, 46899u, 4294967295u, vec2<i32>(101621i, -1i))))), _wgslsmith_sub_vec3_i32(global1.c.c.zyz, global1.a.c.xwx), global1.d), arg_1.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-929f, arg_1.a.x) * arg_1.a.wy)))).a, global2.x);
    global2 = ~vec2<u32>(global3.b, 0u);
    global2 = ~(vec2<u32>(arg_1.e.c, global1.d.b) ^ vec2<u32>(var_0.b, global2.x));
    global1 = func_1(global1.a.e, Struct_3(func_4(Struct_5(Struct_2(vec4<f32>(arg_1.a.x, -1000f, arg_1.a.x, -275f), global3.b, global1.a.c, global1.c.d, global1.c.e), -1000f, func_4(Struct_5(Struct_2(vec4<f32>(-1162f, arg_1.a.x, 1260f, -168f), 1u, vec4<i32>(-1i, 5826i, global1.d.c.x, 1i), vec4<i32>(0i, global1.a.e.d.x, 14546i, 21847i), global1.c.e), 1360f, global1.a, Struct_2(vec4<f32>(-1230f, -935f, -341f, -1712f), global2.x, global1.a.d, global1.a.d, Struct_1(global1.a.e.a, 12869u, 23168u, global1.c.c.wy)))), func_5(Struct_2(vec4<f32>(global1.a.a.x, arg_1.a.x, global1.d.a.x, 654f), arg_1.b, vec4<i32>(0i, global1.c.e.d.x, -36105i, 31681i), global1.a.d, Struct_1(false, 0u, 61475u, vec2<i32>(-46872i, u_input.a)))))).e, global1.a, -_wgslsmith_add_vec3_i32(vec3<i32>(19998i, 12375i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(var_0.b, 13u)], 1i, -2147483647i), arg_1.d.xyz)), func_5(Struct_2(_wgslsmith_f_op_vec4_f32(-arg_1.a), ~15529u, ~global1.d.d, vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(global3.b, 13u)], global0[_wgslsmith_index_u32(31135u, 13u)], global1.d.c.x), arg_1.e))), arg_1.a.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a.yz)));
    return Struct_4(all(arg_2.xz), firstLeadingBit(0u & ~arg_1.e.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 13>();
    var var_0 = func_8(true, func_7(firstLeadingBit(~vec4<u32>(29531u, global2.x, global1.c.e.c, 42008u)), Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global1.b), -550f, -351f, -1027f), ~1u, _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, global1.c.e.d.x, -1i, global0[_wgslsmith_index_u32(global1.a.b, 13u)]), vec4<i32>(u_input.a, global1.a.e.d.x, 24526i, global0[_wgslsmith_index_u32(0u, 13u)])), vec4<i32>(global1.a.e.d.x, 17930i, global1.c.e.d.x, -15418i)), select(vec4<i32>(u_input.a, global1.d.e.d.x, global0[_wgslsmith_index_u32(11720u, 13u)], -42009i), vec4<i32>(u_input.a, 2147483647i, -23528i, global1.c.c.x), global1.c.e.a), func_6(func_1(Struct_1(global3.a, 15501u, global3.b, vec2<i32>(global1.d.c.x, global0[_wgslsmith_index_u32(14395u, 13u)])), Struct_3(Struct_1(true, 0u, global3.b, vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 13u)], u_input.a)), global1.c, global1.d.c.yzy, Struct_2(vec4<f32>(global1.d.a.x, global1.c.a.x, global1.c.a.x, 220f), 34920u, global1.d.c, vec4<i32>(-1144i, -13846i, global0[_wgslsmith_index_u32(4294967295u, 13u)], -2147483647i), global1.c.e)), -534f, vec2<f32>(global1.a.a.x, global1.d.a.x)))), vec2<bool>(!any(vec3<bool>(global1.c.e.a, true, global3.a)), firstTrailingBit(global2.x) < 0u), func_2(global1.d.a.wyx, _wgslsmith_f_op_f32(650f + _wgslsmith_f_op_f32(select(global1.c.a.x, -275f, true))), global1.d.e.a, _wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(1u, 36810u, 1u)), max(vec3<u32>(66903u, global3.b, 89589u), vec3<u32>(global1.d.e.c, 1u, global1.c.b))))), !(!(!(!vec3<bool>(global1.c.e.a, true, global1.d.e.a)))));
    global3 = func_8(global1.c.c.x == -50065i, func_5(func_1(func_5(func_4(Struct_5(global1.d, 323f, Struct_2(vec4<f32>(-174f, -566f, -615f, global1.b), global2.x, vec4<i32>(u_input.a, 1i, -2147483647i, -25375i), vec4<i32>(global1.c.c.x, -2147483647i, 1i, u_input.a), Struct_1(global1.a.e.a, 29262u, global1.d.e.c, vec2<i32>(-66550i, -1i))), global1.d))).e, Struct_3(Struct_1(false, 9098u, global1.a.b, vec2<i32>(u_input.a, 0i)), global1.a, global1.c.d.yxz, global1.c), _wgslsmith_f_op_f32(round(global1.d.a.x)), vec2<f32>(-503f, -279f)).d), select(vec3<bool>(func_8(global1.c.e.a, func_2(global1.c.a.yyw, 676f, false, vec3<u32>(11505u, var_0.b, 4294967295u)), !vec3<bool>(false, global3.a, false)).a, false, false), !select(!vec3<bool>(false, var_0.a, var_0.a), select(vec3<bool>(true, false, global1.d.e.a), vec3<bool>(true, false, global3.a), var_0.a), var_0.a), vec3<bool>(global3.a && false, func_4(Struct_5(global1.d, global1.d.a.x, Struct_2(global1.a.a, var_0.b, global1.c.c, vec4<i32>(global1.d.e.d.x, -24763i, 4131i, 2147483647i), Struct_1(true, 1u, global1.c.e.b, global1.d.d.wx)), global1.c)).e.a && true, false)));
    let var_1 = Struct_1((~_wgslsmith_add_u32(global1.c.e.b, 17949u) >= ~(~32779u)) == (!global3.a && true), abs(var_0.b), 46716u, _wgslsmith_mod_vec2_i32(global1.c.e.d ^ select(vec2<i32>(global1.c.e.d.x, 20638i), abs(vec2<i32>(global1.d.d.x, global1.a.e.d.x)), vec2<bool>(true, true)), global1.d.c.yw));
    global0 = array<i32, 13>();
    let x = u_input.a;
    s_output = StorageBuffer(-global1.c.e.d.x, abs(firstLeadingBit(~(~vec3<u32>(global3.b, global3.b, 4294967295u)))), var_1.d, reverseBits(0u));
}

