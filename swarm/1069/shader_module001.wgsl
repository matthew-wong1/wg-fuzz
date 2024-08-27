struct Struct_1 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: bool,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: i32,
    d: Struct_3,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1498f, -304f, 326f);

var<private> global1: vec2<f32>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_3 {
    return Struct_3(Struct_2(Struct_1(-select(u_input.e.yy, u_input.e.zz, vec2<bool>(false, true)), -vec4<i32>(1i, 1i, 1i, 1i), ~(vec2<u32>(arg_1, u_input.b) & vec2<u32>(arg_1, 35788u)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.b, arg_1)) <= ~0u, vec3<f32>(_wgslsmith_f_op_f32(global1.x * global0.x), global1.x, 1977f)), arg_1 == 0u), firstTrailingBit(0u), Struct_1(vec2<i32>(-2147483647i, arg_0), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -1i, arg_0, 0i), abs(vec4<i32>(0i, 1i, -17048i, u_input.a) & vec4<i32>(arg_0, -2147483647i, 2147483647i, arg_0))), firstLeadingBit(~(vec2<u32>(arg_1, u_input.b) ^ vec2<u32>(arg_1, 34063u))), false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, global1.x, -1564f)))) + vec3<f32>(-1744f, _wgslsmith_div_f32(-1000f, 189f), _wgslsmith_f_op_f32(f32(-1f) * -1875f)))), 0i);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> Struct_2 {
    let var_0 = vec3<bool>(!((_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a.a.c.x, 32462u, 7693u, arg_0.a.a.c.x), vec4<u32>(arg_0.a.a.c.x, arg_1.a.a.c.x, 60190u, 13541u)) == 13388u) & (~4294967295u >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 80435u, 13488u), vec3<u32>(arg_1.b, arg_1.c.c.x, 2980u)))), arg_1.c.d, true);
    global0 = vec3<f32>(121f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(arg_0.c.e.x)), arg_1.a.a.e.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global0.x)), -863f))));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a.a.e.x)), _wgslsmith_f_op_f32(global0.x - 1000f), arg_2)));
    global0 = vec3<f32>(arg_2, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -795f)) * 2943f), global1.x);
    let var_1 = func_2(u_input.c, max(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a.c.x, 0u), vec2<u32>(arg_1.a.a.c.x, 85310u)) << (_wgslsmith_div_u32(_wgslsmith_mult_u32(4400u, u_input.b), 6563u) % 32u), ~u_input.b)).a.a;
    return arg_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3) -> u32 {
    var var_0 = func_2(~(-(~select(u_input.c, -36374i, arg_0.a.d))), 0u);
    let var_1 = vec2<f32>(global0.x, var_0.c.e.x);
    global0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-759f, _wgslsmith_f_op_f32(select(arg_1.a.a.e.x, 995f, false))), arg_1.c.e.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), global1.x) + _wgslsmith_f_op_vec3_f32(var_0.c.e * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.a.e)))));
    let var_2 = Struct_4(countOneBits((0u | ~arg_1.a.a.c.x) ^ 42129u), var_0.c, max(0i, firstTrailingBit(_wgslsmith_mod_i32(19128i & arg_1.d, ~(-12704i)))), arg_1, arg_1);
    let var_3 = var_2.e.c.e.x;
    return _wgslsmith_mod_u32(~0u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(u_input.b, 42416u), var_2.e.b & arg_1.c.c.x), _wgslsmith_mod_vec2_u32(~arg_0.a.c, vec2<u32>(109101u, 41168u))), var_0.a.a.c.x | 3412u));
}

fn func_1(arg_0: u32, arg_1: vec4<i32>, arg_2: vec3<i32>, arg_3: Struct_2) -> bool {
    var var_0 = vec4<bool>(false, false, arg_3.a.d & true, !(!all(vec4<bool>(true, true, arg_3.a.d, arg_3.b))));
    var var_1 = global0.x;
    let var_2 = vec2<i32>(_wgslsmith_div_i32(-u_input.d, arg_1.x), ~arg_1.x);
    let var_3 = vec2<f32>(arg_3.a.e.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_3.a.e.x))));
    var var_4 = func_4(func_3(Struct_3(Struct_2(arg_3.a, arg_0 <= 1u), u_input.b & _wgslsmith_clamp_u32(arg_0, 1u, arg_3.a.c.x), Struct_1(u_input.e.zx, -vec4<i32>(u_input.d, arg_1.x, -10249i, 0i), vec2<u32>(897u, arg_3.a.c.x), true, vec3<f32>(var_3.x, -2029f, global1.x)), arg_3.a.a.x), func_2(reverseBits(arg_2.x), abs(arg_0)), func_2(54298i, ~arg_0).c.e.x), Struct_3(func_2(func_2(-1i, arg_3.a.c.x).a.a.a.x, ~min(24564u, arg_3.a.c.x)).a, 1u, Struct_1(_wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, arg_1.x), vec2<i32>(15995i, -37149i)), _wgslsmith_sub_vec4_i32(arg_1, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_2.x, 1i, u_input.e.x, 4968i), vec4<i32>(arg_1.x, -3406i, arg_1.x, arg_1.x), arg_1)), select(arg_3.a.c, arg_3.a.c, var_0.yz), false, vec3<f32>(func_3(Struct_3(Struct_2(Struct_1(vec2<i32>(arg_2.x, 83463i), arg_1, arg_3.a.c, arg_3.a.d, vec3<f32>(765f, global1.x, global0.x)), var_0.x), 4294967295u, arg_3.a, 16581i), Struct_3(arg_3, u_input.b, arg_3.a, var_2.x), -504f).a.e.x, var_3.x, global1.x)), var_2.x >> (arg_3.a.c.x % 32u)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 118f;
    var var_1 = select(true, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * -314f)))) < _wgslsmith_f_op_f32(select(2372f, _wgslsmith_f_op_f32(-2485f - global1.x), true)), all(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false))) && all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(true, true, true, true), u_input.c == u_input.d)));
    var_1 = !(select(any(vec3<bool>(false, false, true)), u_input.b != u_input.b, func_1(4294967295u, vec4<i32>(u_input.a, u_input.d, -2147483647i, -2147483647i), u_input.e, Struct_2(Struct_1(vec2<i32>(-42347i, u_input.d), vec4<i32>(2147483647i, -1i, u_input.a, u_input.c), vec2<u32>(u_input.b, 28775u), false, vec3<f32>(-257f, global0.x, global0.x)), false))) || true);
    let var_2 = countOneBits((vec3<u32>(select(34066u, 7620u, true), u_input.b, ~4294967295u) << (vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(26463u, u_input.b), vec2<u32>(1u, 39045u)), u_input.b | u_input.b, min(u_input.b, u_input.b)) % vec3<u32>(32u))) << (vec3<u32>(firstTrailingBit(min(0u, 37797u)), u_input.b, u_input.b) % vec3<u32>(32u)));
    let var_3 = ~u_input.c;
    let var_4 = global0.x;
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1611f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_5), u_input.e.zy, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -507f, global0.x) - vec3<f32>(-967f, 877f, global1.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(-122f, global0.x, 1726f), vec3<f32>(global1.x, var_5, var_5))))), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-1087f * global0.x));
}

