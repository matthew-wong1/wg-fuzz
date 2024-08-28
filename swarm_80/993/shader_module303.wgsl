struct Struct_1 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-1642f, -135f, -533f), vec3<u32>(0u, 1u, 26382u), 1i, true, vec2<i32>(51993i, 51981i));

var<private> global2: array<vec3<i32>, 30>;

var<private> global3: array<vec2<u32>, 12> = array<vec2<u32>, 12>(vec2<u32>(0u, 0u), vec2<u32>(44787u, 1u), vec2<u32>(0u, 0u), vec2<u32>(12434u, 18612u), vec2<u32>(45987u, 0u), vec2<u32>(0u, 13190u), vec2<u32>(19737u, 58023u), vec2<u32>(0u, 1u), vec2<u32>(0u, 0u), vec2<u32>(0u, 19106u), vec2<u32>(55306u, 16135u), vec2<u32>(20193u, 4294967295u));

var<private> global4: array<u32, 28> = array<u32, 28>(0u, 55070u, 1u, 4294967295u, 39034u, 1u, 4294967295u, 0u, 0u, 104339u, 46554u, 0u, 66509u, 40825u, 61392u, 23499u, 34942u, 0u, 44473u, 40687u, 4294967295u, 4294967295u, 0u, 1u, 91605u, 29454u, 12752u, 21983u);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: vec2<u32>) -> bool {
    global0 = array<Struct_3, 2>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(2104f, global1.a.x), global1.a.x, _wgslsmith_f_op_f32(-global1.a.x)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-188f, _wgslsmith_f_op_f32(f32(-1f) * -1394f), -2822f)))), global1.b, arg_0.x, true, arg_0.zx);
    let var_1 = Struct_2(false, vec4<bool>(var_0.d | var_0.d, all(!vec2<bool>(false, var_0.d)) || true, var_0.d, _wgslsmith_f_op_f32(min(var_0.a.x, var_0.a.x)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1114f), 1000f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) + -332f) * _wgslsmith_f_op_f32(-global1.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -119f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a.x), _wgslsmith_f_op_f32(min(var_0.a.x, -1164f))))), -163f, var_0.a.x));
    global2 = array<vec3<i32>, 30>();
    var var_2 = Struct_2(select(false, !any(var_1.b), true) || false, var_1.b, _wgslsmith_f_op_vec4_f32(step(var_1.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(var_1.c, var_1.c, var_1.b.x))))))));
    return !(abs(~reverseBits(1u)) > max(1u, _wgslsmith_mod_u32(global1.b.x, ~arg_2.x)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(func_3(reverseBits(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -3847i, -1i, global1.c), vec4<i32>(-2147483647i, 58417i, u_input.d, 0i)))), min(-reverseBits(vec4<i32>(-2147483647i, global1.c, 23468i, global1.e.x)), vec4<i32>(min(u_input.d, global1.e.x), global1.e.x, abs(global1.e.x), _wgslsmith_dot_vec4_i32(vec4<i32>(global1.e.x, 2147483647i, -2147483647i, u_input.b.x), vec4<i32>(1i, -71096i, 41780i, global1.c)))), vec2<u32>(u_input.c, u_input.c)), !select(vec4<bool>(true, global1.e.x >= global1.e.x, global1.d, false), !(!vec4<bool>(global1.d, true, true, false)), select(vec4<bool>(global1.d, false, global1.d, true), vec4<bool>(true, true, global1.d, global1.d), !vec4<bool>(global1.d, true, global1.d, global1.d))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(global1.a.x, 272f), 162f, 506f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(134f, global1.a.x, 637f, 1134f) + vec4<f32>(global1.a.x, 990f, -417f, global1.a.x))) * vec4<f32>(_wgslsmith_f_op_f32(-968f - -132f), _wgslsmith_f_op_f32(f32(-1f) * -1915f), _wgslsmith_f_op_f32(round(global1.a.x)), global1.a.x)))));
    var var_1 = vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1870f), global1.a.x), _wgslsmith_f_op_f32(-global1.a.x), -174f);
    global2 = array<vec3<i32>, 30>();
    let var_2 = global1.c;
    var var_3 = Struct_2(true, var_0.b, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1639f) - _wgslsmith_f_op_f32(-556f - _wgslsmith_f_op_f32(var_1.x + -1280f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-107f + global1.a.x)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + 987f)), _wgslsmith_f_op_f32(-1000f * global1.a.x)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(var_3.c.x, -172f), _wgslsmith_div_f32(640f, _wgslsmith_f_op_f32(-120f * global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_1.x))))), vec3<u32>(1u, 1u, global1.b.x), global1.c, var_3.a, -(~firstTrailingBit(vec2<i32>(u_input.b.x, -1i)) | u_input.b.zx));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec2<i32>) -> vec3<f32> {
    var var_0 = ~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.c, abs(4294967295u)), 12u)];
    global0 = array<Struct_3, 2>();
    var var_1 = func_2();
    var var_2 = countOneBits(u_input.b.yy);
    return _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-154f, var_1.a.x, arg_1.x))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.a), vec3<f32>(265f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(step(166f, -2412f)))), vec3<bool>(false, false, global1.d)));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<bool>) -> Struct_4 {
    global2 = array<vec3<i32>, 30>();
    global3 = array<vec2<u32>, 12>();
    let var_0 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(arg_2.c.wwz)), Struct_2(!all(vec3<bool>(arg_1.d, global1.d, global1.d)), select(select(!vec4<bool>(arg_1.d, false, true, true), select(arg_2.b, vec4<bool>(false, false, global1.d, true), false), arg_2.a), arg_2.b, _wgslsmith_f_op_f32(-global1.a.x) <= -135f), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.c.x, arg_1.a.x, -476f, arg_1.a.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, 1000f, arg_1.a.x, global1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(437f, 1000f, global1.a.x, 2125f)))), Struct_2(false, arg_0.b, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.c.x, arg_2.c.x, arg_0.c.x, 699f)), arg_0.c)));
    var var_1 = var_0.b.b;
    let var_2 = var_0;
    return var_2;
}

fn func_5(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec4<i32>, arg_3: f32) -> Struct_3 {
    global0 = array<Struct_3, 2>();
    let var_0 = _wgslsmith_dot_vec4_u32(~select(abs(vec4<u32>(global1.b.x, 1u, global4[_wgslsmith_index_u32(4294967295u, 28u)], u_input.c)), ~vec4<u32>(u_input.c, 15766u, 4294967295u, 4294967295u), all(arg_1.b.b)), _wgslsmith_div_vec4_u32(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(1u, 50381u, 24806u, 1u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(37399u, u_input.c, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(42447u, 28u)], 28u)], global1.b.x), vec4<u32>(1u, 0u, 4294967295u, 9861u), vec4<u32>(u_input.c, 16366u, 0u, 1u))), ~vec4<u32>(u_input.c, 43589u, u_input.c, 37998u))) | (_wgslsmith_mult_u32(u_input.c, _wgslsmith_add_u32(44404u, u_input.c)) << (45099u % 32u));
    var var_1 = vec4<u32>(0u, min(~99001u & _wgslsmith_dot_vec3_u32(global1.b, vec3<u32>(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global1.b.x, 28u)], 28u)], u_input.c, 4294967295u)), 8273u & global1.b.x) << (~global4[_wgslsmith_index_u32(~abs(1u), 28u)] % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, _wgslsmith_sub_u32(u_input.c, 2764u), 70447u | global1.b.x), min(global1.b, firstLeadingBit(vec3<u32>(1u, var_0, 4294967295u)))), global1.b), global4[_wgslsmith_index_u32(select(var_0, (func_2().b.x >> (~0u % 32u)) ^ firstLeadingBit(~u_input.c), global1.c < -44294i), 28u)]);
    var var_2 = func_2();
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1.c.c.x, -2195f, arg_1.c.c.x), vec3<f32>(1000f, 1124f, arg_0.a.x))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.a.x, arg_3, arg_3) + var_2.a) * _wgslsmith_f_op_vec3_f32(-global1.a))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1877f, 489f, 1127f))))));
    return global0[_wgslsmith_index_u32(14913u, 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(4294967295u > global4[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.c >> (u_input.c % 32u), _wgslsmith_add_u32(global4[_wgslsmith_index_u32(2193u, 28u)], global1.b.x)), 28u)]);
    let var_1 = Struct_2(!global1.d, !select(select(vec4<bool>(false, false, global1.d, global1.d), select(vec4<bool>(false, global1.d, true, true), vec4<bool>(true, global1.d, false, true), vec4<bool>(false, global1.d, global1.d, global1.d)), select(vec4<bool>(false, true, global1.d, global1.d), vec4<bool>(true, true, global1.d, global1.d), false)), vec4<bool>(true, any(vec4<bool>(false, true, global1.d, true)), any(vec2<bool>(true, global1.d)), true), select(!vec4<bool>(false, global1.d, global1.d, false), vec4<bool>(true, false, true, global1.d), vec4<bool>(true, global1.d, false, true))), vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x - global1.a.x) * global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1063f), _wgslsmith_f_op_f32(-1000f * -819f))) + -521f), global1.a.x));
    let var_2 = func_5(func_4(Struct_2(true, var_1.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, var_1.c.x, 671f, -147f)))), Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(841f, global1.a.x, 1281f), _wgslsmith_f_op_vec3_f32(func_1(global1.b.x, vec2<bool>(global1.d, false), vec2<i32>(1i, -28058i)))), abs(vec3<u32>(global4[_wgslsmith_index_u32(0u, 28u)], u_input.c, 30098u)), global1.e.x, var_1.a, global1.e), Struct_2(all(!vec4<bool>(true, global1.d, true, false)), !vec4<bool>(var_1.b.x, var_1.b.x, false, false), vec4<f32>(-1335f, _wgslsmith_f_op_f32(-147f * var_1.c.x), _wgslsmith_f_op_f32(global1.a.x - global1.a.x), -1079f)), var_1.b.zz), func_4(var_1, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, 1924f, 2313f)) * vec3<f32>(global1.a.x, global1.a.x, var_1.c.x)), func_2().b, ~u_input.b.x, !(!global1.d), abs(vec2<i32>(2147483647i, u_input.d))), var_1, !var_1.b.zw), ~firstLeadingBit(vec4<i32>(global1.c, 23170i, global1.c, u_input.d)), _wgslsmith_f_op_f32(-func_4(Struct_2(true, var_1.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.a.x, -1000f, var_1.c.x, 469f), vec4<f32>(var_1.c.x, 967f, -564f, global1.a.x)))), Struct_1(vec3<f32>(var_1.c.x, 918f, -282f), _wgslsmith_div_vec3_u32(vec3<u32>(global4[_wgslsmith_index_u32(u_input.c, 28u)], 1u, 9823u), global1.b), u_input.a | 17850i, true, -vec2<i32>(-39761i, global1.c)), var_1, !select(var_1.b.wz, var_1.b.wy, true)).c.c.x));
    global0 = array<Struct_3, 2>();
    var var_3 = ~2147483647i;
    global4 = array<u32, 28>();
    var_0 = true;
    var var_4 = global2[_wgslsmith_index_u32(~(~(~4294967295u)), 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c);
}

