struct Struct_1 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
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

var<private> global0: array<Struct_4, 25> = array<Struct_4, 25>(Struct_4(Struct_2(Struct_1(vec3<u32>(69034u, 8181u, 1993u), 1i), 510f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(31377u, 4294967295u, 16444u), 0i), 1529f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 10375u, 4294967295u), -5990i), 275f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 61723u, 1u), -1i), -2336f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(4006u, 4294967295u, 23147u), -29838i), 715f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 129609u, 14515u), 26847i), 866f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 97275u, 42075u), -1i), 124f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(17495u, 53303u, 12322u), -1i), -1282f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(0u, 5107u, 18266u), i32(-2147483648)), -993f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 1u, 1u), 0i), 1000f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 65832u, 0u), 0i), -141f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 4090u, 66891u), -15363i), -722f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(17507u, 0u, 2755u), -9477i), -128f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 4294967295u, 1u), -49555i), 511f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 35980u, 36562u), 1i), -146f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(22044u, 0u, 48577u), 10044i), -1744f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 1u, 41644u), 77138i), 609f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(21932u, 37611u, 55043u), -1i), 829f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 1u, 1u), -4829i), 214f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 21599u, 28422u), -11902i), 1439f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(75644u, 1u, 0u), 0i), 1794f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 41453u), 34979i), -499f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(147003u, 38117u, 62364u), -1i), 1000f), false), Struct_4(Struct_2(Struct_1(vec3<u32>(1u, 1u, 0u), -17348i), -355f), true), Struct_4(Struct_2(Struct_1(vec3<u32>(4294967295u, 4294967295u, 1u), 1i), -814f), true));

var<private> global1: bool = false;

var<private> global2: array<vec4<bool>, 15>;

var<private> global3: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(0u, 0u), vec2<u32>(1u, 92u), vec2<u32>(0u, 61420u), vec2<u32>(17213u, 36690u), vec2<u32>(51111u, 35498u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<u32>(44252u, 7886u), vec2<u32>(82004u, 53776u), vec2<u32>(4294967295u, 4294967295u));

var<private> global4: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>) -> u32 {
    global0 = array<Struct_4, 25>();
    global2 = array<vec4<bool>, 15>();
    let var_0 = 1377f;
    var var_1 = -564f;
    let var_2 = vec4<f32>(-843f, _wgslsmith_f_op_f32(ceil(var_0)), var_0, _wgslsmith_f_op_f32(max(-2146f, -456f)));
    return u_input.a;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_add_vec2_u32(~(~(~vec2<u32>(u_input.a, u_input.a))), vec2<u32>(4294967295u, 4294967295u | func_3(vec2<f32>(-1000f, 944f))));
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(u_input.a), 24328u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.x, var_0.x, u_input.a, var_0.x), vec4<u32>(8590u, 26654u, 22188u, 4294967295u) << (vec4<u32>(var_0.x, var_0.x, var_0.x, u_input.a) % vec4<u32>(32u)))), min(vec3<u32>(max(8888u, var_0.x), var_0.x, abs(0u)), reverseBits(vec3<u32>(1u, 23535u, 0u)) ^ (vec3<u32>(0u, u_input.a, 0u) | vec3<u32>(var_0.x, 0u, u_input.a)))), ~abs(~_wgslsmith_div_i32(-1i, -43133i)));
    global2 = array<vec4<bool>, 15>();
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(min(-538f, _wgslsmith_f_op_f32(-954f * 442f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(1859f)))))));
    var_1 = Struct_1(var_1.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(var_1.b, -3208i)) & (_wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.b, 1i), vec2<i32>(var_1.b, var_1.b), vec2<i32>(1i, var_1.b)) << (vec2<u32>(var_1.a.x, u_input.a) % vec2<u32>(32u))), -vec2<i32>(-23205i, -2147483647i) >> (~(var_1.a.xx >> (global3[_wgslsmith_index_u32(u_input.a, 10u)] % vec2<u32>(32u))) % vec2<u32>(32u))));
    return Struct_3(-1000f, select(select(vec3<bool>(all(vec3<bool>(true, true, true)), true, true), select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), vec3<bool>(true, true, true), any(vec4<bool>(false, true, true, true))), !(_wgslsmith_f_op_f32(1426f * var_2.x) < _wgslsmith_f_op_f32(var_2.x - var_2.x))), 1i & var_1.b);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32, arg_3: vec2<i32>) -> vec3<u32> {
    global3 = array<vec2<u32>, 10>();
    let var_0 = arg_0.a;
    var var_1 = vec4<u32>(u_input.a, abs(0u), arg_1.a.a.a.x, _wgslsmith_mult_u32(u_input.a, 68598u));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -268f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))) - _wgslsmith_f_op_f32(-var_0)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(840f - arg_1.a.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.a)) - 104f), 0i >= select(7195i, arg_3.x, arg_1.b))), 1024f));
    var var_3 = arg_1;
    return vec3<u32>(var_1.x, ~(~abs(48856u)), ~u_input.a);
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec2<f32>) -> vec3<f32> {
    let var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-1i, i32(-1i) * -39617i), vec2<i32>(arg_2.a.b, -59330i)) << (arg_1.a.xx % vec2<u32>(32u)), _wgslsmith_clamp_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-43955i, arg_2.a.b), vec2<i32>(-8479i, 111i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2467i, -1i), vec2<i32>(arg_1.b, arg_2.a.b), vec2<i32>(-2837i, 16381i))) >> ((vec2<u32>(67695u, 1u) | min(arg_0.yz, arg_2.a.a.zy)) % vec2<u32>(32u)), countOneBits(min(~vec2<i32>(arg_1.b, 15780i), vec2<i32>(arg_1.b, arg_1.b))), (vec2<i32>(arg_2.a.b, 20735i) ^ vec2<i32>(arg_2.a.b, arg_2.a.b)) << (_wgslsmith_add_vec2_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 71683u, 4294967295u, arg_0.x), vec4<u32>(28190u, arg_2.a.a.x, 53004u, arg_0.x)), 10u)], ~arg_0.yy) % vec2<u32>(32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_3 * arg_3), _wgslsmith_f_op_vec2_f32(vec2<f32>(2186f, arg_2.b) + arg_3)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_3.x, arg_3.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.b, -301f), arg_3)))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a, func_3(var_1)), 25u)];
    var var_3 = Struct_3(_wgslsmith_f_op_f32(max(397f, -1103f)), vec3<bool>(true, select(false, arg_1.b <= -2147483647i, true), !select(!var_2.b, true, true)), _wgslsmith_mult_i32(max(0i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -13560i), vec2<i32>(-37455i, -15588i)) | var_2.a.a.b), 4847i));
    global0 = array<Struct_4, 25>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -269f, 489f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(727f, 371f, 583f), vec3<f32>(967f, -1534f, 1036f))))) + vec3<f32>(-521f, _wgslsmith_f_op_f32(-495f + -1038f), -1743f)));
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_5(~func_4(func_2(), global0[_wgslsmith_index_u32(~(~27023u), 25u)], _wgslsmith_sub_i32(2147483647i, _wgslsmith_clamp_i32(204i, arg_2.x, arg_2.x)), abs(arg_2.ww)), Struct_1(~vec3<u32>(min(u_input.a, u_input.a), 27164u, 3790u >> (u_input.a % 32u)), ~arg_2.x), Struct_2(Struct_1(countOneBits(func_4(Struct_3(arg_0.x, arg_3.xzz, 8495i), global0[_wgslsmith_index_u32(u_input.a, 25u)], -6216i, arg_2.xz)), _wgslsmith_clamp_i32(-arg_2.x, arg_2.x, ~arg_2.x)), arg_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, arg_0.x))));
    global2 = array<vec4<bool>, 15>();
    var var_1 = Struct_2(Struct_1(abs(max(~vec3<u32>(u_input.a, u_input.a, 429u), max(vec3<u32>(32483u, u_input.a, 26072u), vec3<u32>(4742u, 74184u, u_input.a)))), countOneBits(~1i)), arg_0.x);
    let var_2 = vec3<i32>(arg_2.x, _wgslsmith_mod_i32(-43715i, 1i), arg_2.x);
    global3 = array<vec2<u32>, 10>();
    return Struct_2(Struct_1(min(vec3<u32>(54306u, reverseBits(0u), ~10154u), vec3<u32>(reverseBits(1u), var_1.a.a.x, var_1.a.a.x | var_1.a.a.x)), var_2.x), arg_0.x);
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec3<f32>, arg_3: u32) -> Struct_2 {
    global4 = u_input.a;
    let var_0 = Struct_2(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_5(arg_1.a.a, arg_1.a, func_1(arg_2, true, vec4<i32>(1i, 0i, arg_1.a.b, arg_1.a.b), vec4<bool>(true, false, arg_0.x, false)), vec2<f32>(arg_2.x, arg_2.x))).x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b - arg_2.x), -1642f)) + arg_1.b));
    let var_1 = Struct_3(func_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) + _wgslsmith_f_op_f32(trunc(var_0.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-922f + 1610f)), _wgslsmith_f_op_f32(ceil(440f))), var_0.a.b != arg_1.a.b, firstTrailingBit(vec4<i32>(max(5045i, 39785i), -var_0.a.b, 1i, _wgslsmith_sub_i32(arg_1.a.b, arg_1.a.b))), !vec4<bool>(!arg_0.x, var_0.a.b != var_0.a.b, select(arg_0.x, false, true), false)).b, arg_0.xwx, 1i);
    return Struct_2(arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_6(global2[_wgslsmith_index_u32(854u, 15u)], func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(vec3<f32>(1425f, -219f, 322f), vec3<f32>(314f, 220f, -782f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-710f, -660f, -535f)))), select(true, true, true), vec4<i32>(-2147483647i, 47870i, -6562i, _wgslsmith_mod_i32(13761i, 1i)), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), any(vec2<bool>(false, false)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(480f, -512f, -1176f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(597f, -774f, -1264f), vec3<f32>(2002f, -329f, 117f))))), abs(u_input.a)), all(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), vec4<u32>(u_input.a, u_input.a, u_input.a, 1u)) < (1u & u_input.a), false)));
    var var_1 = Struct_2(func_6(global2[_wgslsmith_index_u32(func_4(func_2(), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_0.a.a.a.x, ~25448u), 25u)], 5326i, _wgslsmith_clamp_vec2_i32(vec2<i32>(var_0.a.a.b, -2147483647i), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.a.a.b, var_0.a.a.b), vec2<i32>(29570i, var_0.a.a.b)), vec2<i32>(-3129i, var_0.a.a.b))).x, 15u)], func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, 949f, 2663f))), func_2().b.x, _wgslsmith_mult_vec4_i32(vec4<i32>(var_0.a.a.b, var_0.a.a.b, 1i, 16182i), ~vec4<i32>(var_0.a.a.b, -1606i, var_0.a.a.b, var_0.a.a.b)), select(!global2[_wgslsmith_index_u32(4294967295u, 15u)], global2[_wgslsmith_index_u32(abs(u_input.a), 15u)], global2[_wgslsmith_index_u32(~u_input.a, 15u)])), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(547f, -1868f, var_0.a.b)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(318f, 1107f, 1170f), vec3<f32>(1000f, var_0.a.b, 184f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-576f, -984f, var_0.a.b))))), max(func_1(vec3<f32>(1737f, -551f, var_0.a.b), var_0.b, vec4<i32>(var_0.a.a.b, var_0.a.a.b, var_0.a.a.b, var_0.a.a.b), vec4<bool>(true, var_0.b, var_0.b, true)).a.a.x, func_6(vec4<bool>(true, var_0.b, var_0.b, var_0.b), func_6(vec4<bool>(var_0.b, var_0.b, false, false), Struct_2(var_0.a.a, 437f), vec3<f32>(-1514f, var_0.a.b, var_0.a.b), var_0.a.a.a.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.b, 1000f, 943f) * vec3<f32>(-581f, 1833f, -872f)), 39369u).a.a.x)).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a.b))))));
    global4 = 9662u;
    var var_2 = _wgslsmith_f_op_f32(ceil(741f));
    global0 = array<Struct_4, 25>();
    var var_3 = func_2();
    let var_4 = abs(var_3.c);
    var var_5 = -867f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1567f, var_3.a, var_1.b, var_0.a.b)))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(245f, var_3.a, var_0.a.b, var_1.b)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.b, var_0.a.b, var_3.a, 1714f), vec4<f32>(435f, 1697f, var_1.b, -212f))))), max(vec3<u32>(0u, _wgslsmith_sub_u32(51917u, abs(var_0.a.a.a.x)), u_input.a), ~vec3<u32>(var_1.a.a.x, var_0.a.a.a.x, ~0u)), select(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, 0u, 54027u), vec4<u32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x, 4294967295u)), 0u), countOneBits(_wgslsmith_add_u32(56247u, var_1.a.a.x)), ~var_0.a.a.a.x, _wgslsmith_dot_vec3_u32(var_0.a.a.a, ~var_0.a.a.a)), max(vec4<u32>(countOneBits(u_input.a), var_0.a.a.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(54931u, 4294967295u), vec2<u32>(var_1.a.a.x, var_1.a.a.x)), ~u_input.a), vec4<u32>(abs(var_1.a.a.x), _wgslsmith_sub_u32(9773u, u_input.a), 0u, 0u)), !(!select(vec4<bool>(false, var_0.b, var_0.b, var_0.b), vec4<bool>(var_0.b, false, var_3.b.x, true), vec4<bool>(var_0.b, false, var_3.b.x, var_0.b)))), _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, min(u_input.a, 4294967295u >> (1u % 32u))), 76844u));
}

