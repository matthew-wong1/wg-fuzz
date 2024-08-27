struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<i32>,
    e: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 7> = array<bool, 7>(true, true, false, true, true, false, false);

var<private> global1: vec4<bool>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2) -> vec3<f32> {
    global0 = array<bool, 7>();
    global0 = array<bool, 7>();
    var var_0 = arg_0;
    global0 = array<bool, 7>();
    var var_1 = 1u;
    return _wgslsmith_f_op_vec3_f32(-arg_0.c.a);
}

fn func_2(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<bool>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(arg_1.b.a, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_div_f32(1000f, arg_0.b.x), _wgslsmith_f_op_f32(sign(arg_0.b.x)), _wgslsmith_f_op_f32(-arg_1.c.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(Struct_2(arg_1.b, Struct_1(arg_1.b.a, vec3<u32>(1u, u_input.a.x, 21766u), vec2<i32>(0i, u_input.d), vec4<i32>(arg_1.d.x, u_input.d, -10800i, arg_1.c.d.x), arg_1.b.e), Struct_1(vec3<f32>(arg_0.b.x, arg_1.c.a.x, arg_0.b.x), vec3<u32>(u_input.a.x, arg_1.b.e.x, u_input.a.x), vec2<i32>(u_input.e.x, arg_0.a), arg_1.b.d, vec3<u32>(arg_1.b.e.x, u_input.b.x, 4435u)), u_input.e.yx, u_input.d))))))) * arg_0.b);
}

fn func_1() -> Struct_3 {
    var var_0 = u_input.a;
    var var_1 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-608f, -1151f, -1000f)), _wgslsmith_f_op_vec3_f32(func_2(Struct_3(-2147483647i, vec3<f32>(-101f, -496f, 1341f)), Struct_2(Struct_1(vec3<f32>(-1000f, -2126f, -1837f), u_input.b, vec2<i32>(-16787i, u_input.c), vec4<i32>(-6170i, u_input.e.x, u_input.d, 22681i), vec3<u32>(var_0.x, var_0.x, 34841u)), Struct_1(vec3<f32>(-1046f, -144f, 1358f), vec3<u32>(51743u, 4294967295u, 4294967295u), vec2<i32>(1i, u_input.e.x), vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.e.x), vec3<u32>(4294967295u, 61228u, 4294967295u)), Struct_1(vec3<f32>(740f, -553f, 159f), u_input.a.yxy, u_input.e.zy, vec4<i32>(2147483647i, u_input.d, u_input.d, -2147483647i), vec3<u32>(62724u, 4294967295u, 1u)), u_input.e.zx, 0i), vec4<bool>(global1.x, false, true, true))), vec3<bool>(global1.x, global1.x, global1.x))), vec3<f32>(_wgslsmith_f_op_f32(-645f + -347f), -855f, 712f)), var_0.yyz | _wgslsmith_div_vec3_u32(u_input.b, ~vec3<u32>(0u, 87233u, 18676u)), vec2<i32>(1i, _wgslsmith_add_i32(-u_input.c, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(28074i, u_input.c, u_input.d)))), max(vec4<i32>(i32(-1i) * -2147483647i, -31720i, _wgslsmith_sub_i32(u_input.d, u_input.e.x), u_input.d), abs(~vec4<i32>(u_input.e.x, u_input.d, -24619i, 43773i))), vec3<u32>(~1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.x, 1u, var_0.x), var_0.yzw), ~var_0.x) | (vec3<u32>(u_input.b.x, 49636u, var_0.x) & vec3<u32>(2431u, u_input.a.x, u_input.b.x))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(636f, 611f, 676f))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1067f, 207f, 214f))))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -537f, 165f) * vec3<f32>(1000f, -505f, -667f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(886f, -852f, -283f))))), ~var_0.wxy, vec2<i32>(_wgslsmith_add_i32(-u_input.c, u_input.c | 6180i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.e.yy, vec2<i32>(28844i, u_input.c)), vec2<i32>(u_input.d, u_input.d))), _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(max(vec4<i32>(u_input.d, u_input.d, u_input.c, u_input.d), vec4<i32>(1i, u_input.c, 2592i, 64723i)), vec4<i32>(u_input.e.x, u_input.c, 24632i, 1i)), ~(-vec4<i32>(1i, 29474i, 5279i, u_input.d))), var_0.zxz), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1477f, -1441f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1599f)), -954f), ~(_wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, 0u, var_0.x), var_0.wzw) << (vec3<u32>(4294967295u, 3417u, 1u) % vec3<u32>(32u))), ~_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, -2147483647i), u_input.e.xy), vec2<i32>(u_input.e.x, 63823i)), ~select(vec4<i32>(u_input.e.x, u_input.c, u_input.d, 1i) & vec4<i32>(47252i, 1i, u_input.e.x, -1i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.e.x, u_input.e.x, u_input.d, -32325i), vec4<i32>(u_input.e.x, 32496i, 5430i, -39270i)), !global0[_wgslsmith_index_u32(0u, 7u)]), firstLeadingBit(select(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, var_0.x, 4294967295u), vec3<u32>(var_0.x, 4294967295u, u_input.a.x)), var_0.yyy, all(vec4<bool>(false, global1.x, false, false))))), reverseBits(vec2<i32>(u_input.c, u_input.d)), _wgslsmith_sub_i32(~25142i, u_input.d << (2619u % 32u)));
    var_0 = _wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(4294967295u, 4294967295u, ~_wgslsmith_dot_vec3_u32(vec3<u32>(25098u, u_input.b.x, u_input.a.x), var_0.yyz), select(_wgslsmith_sub_u32(38594u, 3197u), 60004u, global0[_wgslsmith_index_u32(0u, 7u)]))), abs(~(abs(vec4<u32>(var_1.c.e.x, u_input.a.x, 25762u, 1u)) >> (~vec4<u32>(var_0.x, var_0.x, u_input.a.x, var_1.c.e.x) % vec4<u32>(32u)))));
    var var_2 = global0[_wgslsmith_index_u32(4294967295u, 7u)];
    let var_3 = Struct_2(Struct_1(vec3<f32>(812f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(720f)) + -267f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(690f)) - _wgslsmith_f_op_f32(-285f * var_1.a.a.x))), abs(~(vec3<u32>(u_input.a.x, 63805u, u_input.a.x) & vec3<u32>(u_input.a.x, 0u, 19902u))), u_input.e.zy, vec4<i32>(u_input.c | ~var_1.d.x, -countOneBits(u_input.d), 0i, _wgslsmith_add_i32(1i, 36819i)), _wgslsmith_mod_vec3_u32(var_0.wyx, (vec3<u32>(35395u, 1u, var_0.x) ^ var_0.yxw) >> (select(u_input.b, vec3<u32>(u_input.b.x, 0u, u_input.b.x), global0[_wgslsmith_index_u32(u_input.a.x, 7u)]) % vec3<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec3_f32(var_1.a.a * vec3<f32>(_wgslsmith_f_op_f32(-var_1.c.a.x), 223f, _wgslsmith_f_op_f32(max(var_1.b.a.x, var_1.a.a.x)))), _wgslsmith_div_vec3_u32(var_1.c.e, reverseBits(~vec3<u32>(var_0.x, 52541u, u_input.b.x))), var_1.d, vec4<i32>(reverseBits(abs(var_1.c.c.x)), 0i, 0i, abs(abs(15690i))), ~vec3<u32>(~1u, 1u, var_1.a.b.x)), Struct_1(_wgslsmith_div_vec3_f32(var_1.b.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.b.a.x, var_1.b.a.x, var_1.c.a.x) * vec3<f32>(729f, -1201f, 1259f)))), ~vec3<u32>(_wgslsmith_sub_u32(67406u, u_input.b.x), ~1u, ~1u), var_1.a.c ^ vec2<i32>(-u_input.e.x, ~1i), var_1.b.d, _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, _wgslsmith_mult_u32(39696u, u_input.a.x)), ~(~vec3<u32>(21738u, var_0.x, u_input.b.x)))), var_1.b.c, ~_wgslsmith_div_i32(firstLeadingBit(u_input.d), _wgslsmith_mult_i32(abs(-14340i), u_input.e.x)));
    return Struct_3(reverseBits(var_3.c.d.x) | -58279i, var_1.b.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec2<u32>(~(~(~u_input.b.x)), _wgslsmith_dot_vec2_u32(~max(vec2<u32>(15727u, 47u), vec2<u32>(1u, 62300u)), max(u_input.a.zx, ~vec2<u32>(u_input.a.x, u_input.b.x))));
    var var_1 = u_input.e.x ^ abs(-select(u_input.c | 8330i, max(0i, u_input.d), true));
    var var_2 = 37912u;
    var_2 = ~(~0u);
    let var_3 = func_1();
    global1 = vec4<bool>(global0[_wgslsmith_index_u32(~max(var_0.x, var_0.x), 7u)], var_3.b.x <= -1000f, true, all(select(!select(global1.zx, vec2<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global1.x), global1.zx), vec2<bool>(false, global1.x), !select(vec2<bool>(true, true), global1.zx, global1.x))));
    var var_4 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-940f, 1252f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_3.b.x))), -1076f) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b.x, -1000f, var_3.b.x, -1000f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-820f, -483f, 496f, var_3.b.x))) + vec4<f32>(_wgslsmith_f_op_f32(-var_3.b.x), -1318f, _wgslsmith_f_op_f32(var_3.b.x * var_3.b.x), _wgslsmith_f_op_f32(floor(var_3.b.x)))))));
    var var_5 = (~vec4<u32>(16770u, 1u, u_input.a.x, var_0.x) & _wgslsmith_clamp_vec4_u32(u_input.a, _wgslsmith_mult_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(20909u, u_input.b.x, 81120u, var_0.x)), vec4<u32>(4294967295u, u_input.a.x, 1u, var_0.x)), u_input.a)) & u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.x, _wgslsmith_f_op_f32(-1000f - var_3.b.x), ~_wgslsmith_div_vec4_u32(vec4<u32>(var_5.x, 1u, 32567u, var_5.x), min(~u_input.a, vec4<u32>(var_5.x, 62032u, u_input.a.x, var_5.x))), _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(var_5.x, 37767u, var_0.x, 0u))), ~_wgslsmith_mod_vec4_u32(u_input.a, vec4<u32>(1u, 4294967295u, 69306u, 1u)) & u_input.a));
}

