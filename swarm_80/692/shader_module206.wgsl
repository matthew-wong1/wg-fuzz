struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
    d: vec4<i32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: bool,
    c: vec3<u32>,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18> = array<i32, 18>(i32(-2147483648), 19919i, -45512i, 2147483647i, 20088i, 0i, -48225i, 2147483647i, 1i, i32(-2147483648), 1i, i32(-2147483648), 0i, -1i, i32(-2147483648), -52446i, 10341i, 0i);

var<private> global1: Struct_3;

var<private> global2: vec4<f32> = vec4<f32>(-1128f, -1000f, -878f, -432f);

var<private> global3: bool = true;

var<private> global4: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(vec4<bool>(false, false, true, false), true, vec3<u32>(1u, 1u, 80970u), vec2<u32>(4294967295u, 4294967295u), false), Struct_3(vec4<bool>(true, false, true, true), true, vec3<u32>(43473u, 11302u, 108766u), vec2<u32>(1u, 4294967295u), true), Struct_3(vec4<bool>(false, false, true, true), false, vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(4405u, 26839u), false), Struct_3(vec4<bool>(true, false, false, false), false, vec3<u32>(1u, 53629u, 42862u), vec2<u32>(102200u, 61593u), false), Struct_3(vec4<bool>(false, true, false, false), false, vec3<u32>(0u, 4294967295u, 72021u), vec2<u32>(72831u, 56404u), false), Struct_3(vec4<bool>(false, true, true, false), false, vec3<u32>(4294967295u, 1u, 4294967295u), vec2<u32>(1u, 4294967295u), true), Struct_3(vec4<bool>(true, true, false, false), true, vec3<u32>(20742u, 62872u, 4294967295u), vec2<u32>(4294967295u, 1u), true), Struct_3(vec4<bool>(false, false, false, false), false, vec3<u32>(0u, 23198u, 0u), vec2<u32>(0u, 1u), true), Struct_3(vec4<bool>(false, false, false, true), false, vec3<u32>(0u, 0u, 4294967295u), vec2<u32>(4294967295u, 44287u), false), Struct_3(vec4<bool>(true, false, true, true), false, vec3<u32>(1u, 1u, 0u), vec2<u32>(15161u, 4294967295u), true), Struct_3(vec4<bool>(false, true, true, true), true, vec3<u32>(50960u, 12415u, 1u), vec2<u32>(30418u, 33418u), true), Struct_3(vec4<bool>(false, false, true, true), true, vec3<u32>(4294967295u, 14801u, 26572u), vec2<u32>(115471u, 1u), true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3() -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global2.zy * vec2<f32>(_wgslsmith_f_op_f32(step(global2.x, global2.x)), -1844f)))));
    let var_1 = Struct_2(Struct_1(_wgslsmith_mod_vec4_i32(-(vec4<i32>(-31080i, 2147483647i, -1i, 58824i) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], u_input.b, global0[_wgslsmith_index_u32(u_input.c.x, 18u)], u_input.d.x)), max(vec4<i32>(global0[_wgslsmith_index_u32(global1.d.x, 18u)], global0[_wgslsmith_index_u32(global1.d.x, 18u)], u_input.d.x, -25730i) & vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], u_input.d.x, u_input.b, 0i), ~vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], u_input.a, 45436i, 2147483647i))), true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global2.x)))))), vec4<i32>(global0[_wgslsmith_index_u32(global1.d.x << (4294967295u % 32u), 18u)] ^ countOneBits(0i), -1i, global0[_wgslsmith_index_u32(u_input.c.x, 18u)], max(1i, global0[_wgslsmith_index_u32(0u, 18u)] & 2147483647i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global2.x, var_0.x)))), Struct_1(_wgslsmith_sub_vec4_i32(select(vec4<i32>(18869i, 69286i, 2147483647i, global0[_wgslsmith_index_u32(u_input.c.x, 18u)]), vec4<i32>(-14361i, -55267i, global0[_wgslsmith_index_u32(global1.c.x, 18u)], -2602i), false), select(vec4<i32>(2147483647i, u_input.b, global0[_wgslsmith_index_u32(10067u, 18u)], u_input.d.x), vec4<i32>(global0[_wgslsmith_index_u32(1u, 18u)], 44945i, 0i, global0[_wgslsmith_index_u32(32554u, 18u)]), true)) << (abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.c.x, global1.d.x, global1.d.x), u_input.c)) % vec4<u32>(32u)), global1.b, var_0.x, min(min(vec4<i32>(-2147483647i, -1i, global0[_wgslsmith_index_u32(global1.c.x, 18u)], 22134i), vec4<i32>(u_input.d.x, 2147483647i, global0[_wgslsmith_index_u32(1u, 18u)], 7120i)), min(vec4<i32>(u_input.a, 12558i, global0[_wgslsmith_index_u32(0u, 18u)], u_input.a), vec4<i32>(51842i, -13641i, 1i, global0[_wgslsmith_index_u32(0u, 18u)]))) | (_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, 28905i, u_input.b, u_input.a), vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], -1i, -9026i, 25167i)) >> (select(u_input.c, u_input.c, true) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(757f, global2.x, var_0.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(105f, -3055f, global2.x))))) * vec3<f32>(-1045f, global2.x, var_0.x))));
    var var_2 = Struct_2(Struct_1(vec4<i32>(-55299i, var_1.a.a.x, countOneBits(_wgslsmith_dot_vec2_i32(var_1.a.d.yw, vec2<i32>(u_input.d.x, var_1.a.a.x))), -10209i), !(!all(global1.a.yx)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)))), vec4<i32>(min(var_1.a.d.x, var_1.b.a.x) & 15975i, -(~(-1i)), global0[_wgslsmith_index_u32(69123u, 18u)], countOneBits(_wgslsmith_mult_i32(var_1.b.d.x, global0[_wgslsmith_index_u32(global1.c.x, 18u)]))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-242f, global2.x, var_1.b.e.x) * global2.xwz)), vec3<f32>(-685f, var_1.b.e.x, _wgslsmith_f_op_f32(min(1481f, -701f))))), Struct_1(var_1.b.a, true, _wgslsmith_f_op_f32(floor(global2.x)), ~(vec4<i32>(17014i, -13824i, 2147483647i, 1i) >> (~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x) % vec4<u32>(32u))), _wgslsmith_f_op_vec3_f32(global2.zww + vec3<f32>(681f, _wgslsmith_f_op_f32(step(480f, -1142f)), var_1.b.e.x))));
    let var_3 = 6973u;
    let var_4 = global1.d.x;
    return vec4<i32>(1i, _wgslsmith_div_i32(-1i, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, countOneBits(select(var_3, 1u, var_2.b.b))), 18u)]), ~_wgslsmith_sub_i32((257i ^ u_input.a) | (i32(-1i) * -5445i), -7074i), reverseBits(-3213i));
}

fn func_2(arg_0: Struct_3, arg_1: f32) -> u32 {
    let var_0 = global2.x;
    var var_1 = _wgslsmith_clamp_vec2_u32(~countOneBits(_wgslsmith_add_vec2_u32(~global1.c.xz, vec2<u32>(global1.c.x, global1.c.x))), vec2<u32>(reverseBits(_wgslsmith_dot_vec2_u32(arg_0.c.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(7571u, 88111u), u_input.c.xw))), 4294967295u), ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, global1.c.x & 0u), min(select(arg_0.d, vec2<u32>(1u, 78778u), arg_0.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.d.x, 2852u), vec2<u32>(global1.d.x, 0u), vec2<u32>(1239u, arg_0.c.x)))));
    var var_2 = 1i;
    var var_3 = Struct_1(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, 0i, 1i, u_input.b) << (u_input.c % vec4<u32>(32u)), vec4<i32>(-2147483647i, -31069i, 0i, global0[_wgslsmith_index_u32(var_1.x, 18u)])), -(~vec4<i32>(-1i, u_input.d.x, u_input.b, 8786i))), func_3()), (_wgslsmith_f_op_f32(floor(global2.x)) >= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(arg_1)), _wgslsmith_f_op_f32(abs(global2.x))))) && (firstTrailingBit(_wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(53756u, 18u)])) != (u_input.d.x | -22105i)), 1119f, _wgslsmith_mod_vec4_i32(abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, -34752i, u_input.a, global0[_wgslsmith_index_u32(0u, 18u)]), vec4<i32>(0i, 2147483647i, global0[_wgslsmith_index_u32(var_1.x, 18u)], -22917i))), vec4<i32>(global0[_wgslsmith_index_u32(0u, 18u)] >> (4294967295u % 32u), u_input.d.x, ~_wgslsmith_mod_i32(-1i, -41667i), u_input.b)), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global2.wxx, vec3<f32>(320f, -1449f, arg_1)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, global2.x, global2.x)) - _wgslsmith_f_op_vec3_f32(-global2.zyy))))));
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.e.x, arg_1, var_3.e.x, 1428f) + vec4<f32>(global2.x, -2018f, -109f, global2.x)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_1, -2189f, var_3.e.x, arg_1))), global1.b)) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1578f, global2.x, var_3.e.x, -1823f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -720f), 1000f, _wgslsmith_f_op_f32(-442f + 761f), -231f) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(720f, 359f, 1019f, 328f))))))))));
    return ~(3031u >> (~global1.c.x % 32u));
}

fn func_4(arg_0: i32, arg_1: f32) -> Struct_1 {
    global2 = vec4<f32>(_wgslsmith_f_op_f32(round(550f)), 637f, global2.x, arg_1);
    global4 = array<Struct_3, 12>();
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, arg_1, arg_1, 107f), vec4<f32>(984f, arg_1, arg_1, -1505f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global2.x, arg_1, 2070f))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(floor(-1460f))) - arg_1), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(207f + -1523f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-268f + 774f), _wgslsmith_f_op_f32(arg_1 - -433f), global1.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)))), _wgslsmith_f_op_f32(trunc(arg_1))));
    global4 = array<Struct_3, 12>();
    let var_0 = u_input.c.x;
    return Struct_1(vec4<i32>(_wgslsmith_div_i32(u_input.a, _wgslsmith_dot_vec4_i32(func_3(), vec4<i32>(71557i, -51653i, -2147483647i, global0[_wgslsmith_index_u32(4294967295u, 18u)]))), global0[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(131077u, 0u) & _wgslsmith_sub_u32(u_input.c.x, global1.c.x)), 18u)], -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, arg_0), u_input.d) | func_3().x), global1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1)), vec4<i32>(-1i) * -vec4<i32>(~1i, 2147483647i, -62213i & global0[_wgslsmith_index_u32(u_input.c.x, 18u)], -59129i), vec3<f32>(arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1184f))), 767f));
}

fn func_1() -> u32 {
    var var_0 = func_4(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~global1.d.x, ~global1.d.x, global1.d.x), 18u)], _wgslsmith_div_i32(1i, ~u_input.a), -10411i << (_wgslsmith_div_u32(u_input.c.x, 50605u) % 32u)) << ((u_input.c.x | min(func_2(global4[_wgslsmith_index_u32(u_input.c.x, 12u)], global2.x), u_input.c.x)) % 32u), _wgslsmith_f_op_f32(f32(-1f) * -237f));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.c, var_0.c, _wgslsmith_f_op_f32(global2.x + global2.x)), _wgslsmith_f_op_vec3_f32(max(var_0.e, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.e.x, var_0.e.x, global2.x))))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(626f, global2.x, var_0.c)) - vec3<f32>(-1799f, var_0.c, global2.x)))) + vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.x))), -1243f, -1383f));
    let var_2 = select(_wgslsmith_clamp_vec3_u32(~vec3<u32>(~47315u, 18766u, _wgslsmith_sub_u32(u_input.c.x, 5063u)), ~abs(~vec3<u32>(global1.d.x, u_input.c.x, 7072u)), vec3<u32>(max(firstTrailingBit(global1.c.x), _wgslsmith_add_u32(0u, 90218u)), _wgslsmith_add_u32(0u, u_input.c.x ^ 1u), u_input.c.x)), vec3<u32>(_wgslsmith_dot_vec2_u32(~_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c.x, global1.d.x), u_input.c.yw), ~(vec2<u32>(0u, 78686u) & vec2<u32>(global1.d.x, 2991u))), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, global1.d.x, global1.c.x, global1.d.x), u_input.c | vec4<u32>(global1.d.x, 18226u, u_input.c.x, u_input.c.x))), 4294967295u), 0u < global1.c.x);
    var_1 = vec3<f32>(_wgslsmith_f_op_f32(-global2.x), -2611f, 190f);
    let var_3 = i32(-1i) * -_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.d.x, 1u), vec3<u32>(4294967295u, 1u, 35181u)), 18u)] | -37859i, -27604i);
    return 18557u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(global1.c.x | (firstTrailingBit(~func_1()) ^ u_input.c.x), 12u)];
    var var_1 = Struct_1(~abs(vec4<i32>(min(u_input.a, global0[_wgslsmith_index_u32(24278u, 18u)]), -36832i, u_input.d.x, -1i)), any(var_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-997f * global2.x), -791f), -1205f))), countOneBits(~(-vec4<i32>(-15403i, u_input.b, global0[_wgslsmith_index_u32(var_0.c.x, 18u)], 23442i) >> (vec4<u32>(5788u, 46636u, u_input.c.x, var_0.d.x) % vec4<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(-1768f, -749f, -109f))) + _wgslsmith_f_op_vec3_f32(abs(global2.yzz))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1822f, 993f, 1375f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(2056f, global2.x, 1000f) - vec3<f32>(global2.x, global2.x, -1177f))))));
    var var_2 = var_1.d.wxz;
    global0 = array<i32, 18>();
    let var_3 = vec3<i32>(~(-110293i), 2951i, countOneBits(_wgslsmith_sub_i32(func_4(global0[_wgslsmith_index_u32(u_input.c.x, 18u)], var_1.c).d.x, _wgslsmith_dot_vec4_i32(var_1.a, var_1.d) | 6455i)));
    global3 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.e, global1.c.x);
}

