struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: bool,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(1i, 46548u, false, vec2<i32>(-1i, 23678i));

var<private> global1: array<Struct_1, 11>;

var<private> global2: Struct_2;

var<private> global3: array<bool, 18>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32, arg_3: u32) -> vec4<bool> {
    let var_0 = arg_1;
    var var_1 = vec2<bool>(global2.c, global0.c);
    global2 = Struct_2(-28752i, min(u_input.a, 0u), any(!(!select(vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(global0.c, global2.c), vec2<bool>(global3[_wgslsmith_index_u32(arg_3, 18u)], true)))), global2.d);
    var var_2 = -(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_0.c, 2147483647i) & vec2<i32>(global2.a, 0i), -global0.d), ~(global0.d.x << (90497u % 32u)), ~(-23667i), _wgslsmith_sub_i32(~55855i, _wgslsmith_dot_vec2_i32(global2.d, vec2<i32>(arg_0.c, 2147483647i)))) ^ (-_wgslsmith_sub_vec4_i32(vec4<i32>(global0.d.x, 30816i, global2.d.x, global0.a), vec4<i32>(-12484i, 16419i, -1i, var_0.x)) & ~reverseBits(vec4<i32>(-60444i, -2147483647i, -1i, 11508i))));
    global1 = array<Struct_1, 11>();
    return !select(!vec4<bool>(true, true, global3[_wgslsmith_index_u32(abs(1u), 18u)], any(vec2<bool>(global2.c, global2.c))), !(!vec4<bool>(true, false, false, global2.c)), !select(select(vec4<bool>(true, global3[_wgslsmith_index_u32(59001u, 18u)], var_1.x, global2.c), vec4<bool>(true, global3[_wgslsmith_index_u32(30236u, 18u)], false, var_1.x), vec4<bool>(true, false, global2.c, true)), !vec4<bool>(true, var_1.x, global0.c, false), vec4<bool>(true, global3[_wgslsmith_index_u32(global2.b, 18u)], true, true)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: bool) -> u32 {
    global1 = array<Struct_1, 11>();
    let var_0 = arg_2;
    let var_1 = global2.a;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -652f);
    var var_3 = vec2<u32>(arg_0.x, _wgslsmith_clamp_u32(~1458u | (_wgslsmith_mod_u32(global2.b, u_input.d.x) & _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.x, 1u, u_input.c), u_input.d.wzw)), 65335u, ~_wgslsmith_clamp_u32(reverseBits(arg_0.x), _wgslsmith_dot_vec4_u32(vec4<u32>(46637u, arg_0.x, global2.b, 4294967295u), vec4<u32>(u_input.b.x, global2.b, 4491u, 0u)), global2.b >> (0u % 32u))));
    return ~(var_3.x << (4294967295u % 32u));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = func_4(_wgslsmith_add_vec2_u32(u_input.b, countOneBits(u_input.b)), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), -359f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, -2300f)), _wgslsmith_sub_i32(~(i32(-1i) * -2147483647i), arg_0.a), -311f), any(select(!func_3(Struct_1(-1288f, -1177f, global2.a, arg_1.x), vec3<i32>(global0.a, global2.d.x, -35656i), arg_1.x, global2.b), !select(vec4<bool>(true, true, arg_0.c, false), vec4<bool>(global2.c, true, true, arg_0.c), vec4<bool>(global3[_wgslsmith_index_u32(u_input.a, 18u)], global0.c, arg_0.c, global3[_wgslsmith_index_u32(4294967295u, 18u)])), false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_1.x)))), 1f, arg_1.x, _wgslsmith_f_op_f32(select(773f, -321f, true))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1704f, _wgslsmith_f_op_f32(f32(-1f) * -766f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 555f)))), any(select(vec2<bool>(true, true), select(vec2<bool>(global3[_wgslsmith_index_u32(arg_0.b, 18u)], arg_0.c), vec2<bool>(true, true), vec2<bool>(global2.c, global0.c)), select(vec2<bool>(false, false), vec2<bool>(global2.c, global2.c), vec2<bool>(true, arg_0.c)))))), arg_1.x, arg_0.d.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(arg_1.x, 675f))))));
    let var_3 = u_input.d.xxz | _wgslsmith_sub_vec3_u32(~vec3<u32>(reverseBits(global2.b), global0.b, _wgslsmith_mult_u32(global2.b, global0.b)), ~vec3<u32>(u_input.a << (1u % 32u), global0.b | global2.b, global2.b));
    let var_4 = global1[_wgslsmith_index_u32(~arg_0.b, 11u)];
    return Struct_2(-2147483647i, arg_0.b, false, vec2<i32>(-1i) * -global2.d);
}

fn func_1(arg_0: vec3<f32>) -> u32 {
    var var_0 = func_2(Struct_2(_wgslsmith_add_i32(abs(~global2.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, -1i, 1i) >> (vec3<u32>(u_input.c, 10149u, 36438u) % vec3<u32>(32u)), ~vec3<i32>(global2.a, global0.a, -2147483647i))), _wgslsmith_div_u32(min(8208u, ~1u), ~_wgslsmith_dot_vec3_u32(u_input.d.zyz, vec3<u32>(global0.b, global2.b, 18366u))), true, vec2<i32>(-1i, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, 330f, arg_0.x, -1600f), vec4<f32>(arg_0.x, -432f, arg_0.x, -1002f))))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1042f, 921f, -1433f, -1132f), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)))))));
    global0 = Struct_2(_wgslsmith_clamp_i32(var_0.a, 0i, _wgslsmith_mult_i32(-35299i, global2.d.x)), global2.b, func_2(Struct_2(abs(global2.d.x), min(1u, u_input.c) ^ var_0.b, var_0.c, vec2<i32>(countOneBits(0i), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.d.x, var_0.d.x, -1i), vec3<i32>(global2.a, global0.a, 2147483647i)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(arg_0.x, 944f, 315f, arg_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(739f, arg_0.x, 638f, arg_0.x) - vec4<f32>(-745f, arg_0.x, 3392f, 1389f))))).c, ~(-(~var_0.d)));
    var var_1 = !vec4<bool>(any(vec4<bool>(global2.c || true, any(vec2<bool>(true, false)), arg_0.x != arg_0.x, func_3(global1[_wgslsmith_index_u32(1u, 11u)], vec3<i32>(1i, -549i, global0.d.x), arg_0.x, u_input.a).x)), all(func_3(global1[_wgslsmith_index_u32(~34366u, 11u)], firstLeadingBit(vec3<i32>(2147483647i, 2147483647i, global2.a)), -840f, ~4294967295u)), true, true);
    global3 = array<bool, 18>();
    var_0 = func_2(func_2(Struct_2(reverseBits(global0.a), u_input.c, false, _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(global2.d, global2.d), select(var_0.d, vec2<i32>(global0.d.x, 0i), vec2<bool>(global2.c, var_1.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -1000f, arg_0.x, -744f) - vec4<f32>(-285f, -1108f, -179f, -386f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-999f, arg_0.x, 2526f, 300f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))), arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1088f + _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), _wgslsmith_f_op_f32(280f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(469f)), arg_0.x))));
    return _wgslsmith_dot_vec2_u32(u_input.d.zw, _wgslsmith_clamp_vec2_u32(abs(~vec2<u32>(1510u, global0.b) & ~u_input.d.yw), vec2<u32>(global2.b, var_0.b), u_input.d.xw));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(-countOneBits(-1i), ~reverseBits(_wgslsmith_mult_u32(1u >> (global0.b % 32u), 0u)), (_wgslsmith_mod_u32(func_1(vec3<f32>(-885f, 576f, 106f)), 4294967295u) >> ((u_input.d.x >> ((global0.b & u_input.a) % 32u)) % 32u)) <= abs(global2.b), global0.d);
    global3 = array<bool, 18>();
    global2 = Struct_2(global2.a, ~_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global0.b, u_input.d.x, 116453u), ~u_input.d.zxw, u_input.d.ywy | vec3<u32>(10930u, 75092u, 31558u)), ~countOneBits(u_input.d.wzz)), true, -global0.d);
    let var_0 = -571f;
    global1 = array<Struct_1, 11>();
    global3 = array<bool, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec3<u32>(1u, ~4294967295u, 1u), vec3<u32>(~64182u, 36u | global2.b, 38949u), vec3<bool>(true, !global3[_wgslsmith_index_u32(global0.b, 18u)], global2.c)), vec4<i32>(-_wgslsmith_mod_i32(firstLeadingBit(2147483647i), 2147483647i), 42415i, i32(-1i) * -countOneBits(-5428i), 0i), _wgslsmith_f_op_f32(floor(-505f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0, var_0) + _wgslsmith_f_op_vec2_f32(vec2<f32>(857f, var_0) + vec2<f32>(-464f, var_0))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 401f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, 1238f))))))), global2.d);
}

