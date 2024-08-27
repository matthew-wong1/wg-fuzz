struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<f32>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_5 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-3395i, -3825i);

var<private> global1: vec4<u32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2() -> Struct_5 {
    var var_0 = -u_input.c.yxy;
    let var_1 = Struct_4((~vec4<u32>(32372u, global1.x, global1.x, u_input.b) << (min(select(vec4<u32>(u_input.d, global1.x, global1.x, global1.x), vec4<u32>(global1.x, 115216u, u_input.b, global1.x), vec4<bool>(true, true, true, true)), abs(vec4<u32>(u_input.d, global1.x, u_input.d, u_input.b))) % vec4<u32>(32u))) ^ _wgslsmith_div_vec4_u32(~vec4<u32>(global1.x, 24179u, 1u, global1.x) | vec4<u32>(4294967295u, u_input.d, global1.x, 65501u), _wgslsmith_mod_vec4_u32(countOneBits(vec4<u32>(17222u, u_input.b, 2538u, 19560u)), vec4<u32>(global1.x, global1.x, global1.x, u_input.b) | vec4<u32>(u_input.b, 14142u, global1.x, global1.x))), abs(~(global1.x << (u_input.d % 32u))) >= _wgslsmith_mult_u32(_wgslsmith_clamp_u32(36993u, _wgslsmith_add_u32(u_input.d, 1u), ~global1.x), 64045u));
    var var_2 = u_input.b;
    var var_3 = var_1;
    let var_4 = ~abs(_wgslsmith_mult_u32(var_3.a.x | 1u, ~(~0u)));
    return Struct_5(66426u, ~(~global1.zw));
}

fn func_3(arg_0: Struct_5, arg_1: f32, arg_2: vec3<i32>) -> u32 {
    let var_0 = arg_0;
    let var_1 = min(arg_2.yz, vec2<i32>(~arg_2.x, abs(-u_input.c.x) | _wgslsmith_div_i32(-u_input.c.x, arg_2.x)));
    global1 = ~_wgslsmith_clamp_vec4_u32(select(abs(vec4<u32>(arg_0.b.x, 0u, u_input.d, arg_0.b.x)), _wgslsmith_div_vec4_u32(~vec4<u32>(var_0.b.x, arg_0.b.x, 35830u, arg_0.a), vec4<u32>(43209u, var_0.b.x, arg_0.a, 4294967295u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true)), any(vec2<bool>(false, true)))), ~min(vec4<u32>(0u, arg_0.b.x, arg_0.a, 29949u), _wgslsmith_clamp_vec4_u32(vec4<u32>(0u, global1.x, 4294967295u, 1u), vec4<u32>(86477u, 4294967295u, var_0.a, arg_0.b.x), vec4<u32>(var_0.b.x, 4294967295u, 4294967295u, 12296u))), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.b.x, 4294967295u, u_input.b, var_0.a), vec4<u32>(1u, arg_0.a, global1.x, global1.x)), select(vec4<u32>(42782u, global1.x, 0u, 53583u), vec4<u32>(0u, 1u, arg_0.b.x, 0u), false)), _wgslsmith_mod_vec4_u32(vec4<u32>(96930u, 4294967295u, 4294967295u, var_0.b.x), vec4<u32>(63323u, global1.x, 1u, var_0.a))));
    global0 = ~_wgslsmith_sub_vec2_i32(vec2<i32>(global0.x, u_input.c.x), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(-44563i, arg_2.x), var_1.x), -vec2<i32>(global0.x, var_1.x)));
    global0 = ~u_input.c.zw;
    return ~1u;
}

fn func_1(arg_0: u32, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    global1 = vec4<u32>(global1.x, _wgslsmith_clamp_u32(firstTrailingBit(~1212u), u_input.b, _wgslsmith_div_u32(arg_3, func_3(func_2(), _wgslsmith_f_op_f32(-1000f - 477f), arg_1 | u_input.c.wzx))), select(~1u, _wgslsmith_div_u32(8224u, arg_3), !((u_input.d >= 0u) | (true || arg_2.x))), ~(4294967295u | _wgslsmith_add_u32(35884u, ~u_input.b)));
    let var_0 = Struct_3(~_wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.x, arg_0, global1.x, 1u), vec4<u32>(84020u, 58432u, 32528u, 32552u)), ~vec4<u32>(u_input.d, 11689u, arg_3, arg_0)) ^ (vec4<u32>(~arg_3, ~26111u, ~arg_0, _wgslsmith_dot_vec3_u32(global1.wwz, vec3<u32>(457u, 0u, 0u))) | ~select(vec4<u32>(27630u, arg_0, 27636u, 4294967295u), vec4<u32>(9366u, 53844u, arg_0, arg_3), arg_2)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(161f, 1160f, -642f) + vec3<f32>(-524f, -1148f, -334f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(187f, -1000f, 415f))))), select(select(vec3<bool>(true, !arg_2.x, true), arg_2.yyy, !arg_2.yxy), !arg_2.yzw, arg_2.x), Struct_1(arg_2));
    var var_1 = !var_0.d.a.x;
    global0 = max(~firstLeadingBit(-vec2<i32>(u_input.c.x, arg_1.x)), max(vec2<i32>(1i, global0.x), select(abs(vec2<i32>(0i, 2147483647i)), -vec2<i32>(u_input.c.x, -4772i), select(arg_2.xw, vec2<bool>(false, true), false)))) >> (~(~var_0.a.zz) % vec2<u32>(32u));
    var var_2 = vec2<u32>(select((1u & ~global1.x) & (u_input.d & ~arg_3), ~u_input.d, !(!all(vec3<bool>(var_0.c.x, var_0.d.a.x, arg_2.x)))), global1.x);
    return Struct_1(arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(17391u, u_input.c.zzz, !vec4<bool>(true, !(u_input.d >= 22209u), false, !any(vec2<bool>(false, false))), u_input.b);
    let var_1 = select(_wgslsmith_sub_vec3_u32(~(global1.wxw << (~global1.zxy % vec3<u32>(32u))), global1.wyz & vec3<u32>(4294967295u << (global1.x % 32u), _wgslsmith_dot_vec3_u32(global1.zyw, global1.zzy), ~global1.x)), max(countOneBits(~vec3<u32>(global1.x, global1.x, 0u)), vec3<u32>(~reverseBits(0u), ~global1.x & global1.x, u_input.d)), select(!var_0.a.wwy, !var_0.a.xww, func_1(100428u, -vec3<i32>(global0.x, -75547i, global0.x), select(vec4<bool>(var_0.a.x, true, false, false), vec4<bool>(var_0.a.x, var_0.a.x, true, false), false), global1.x).a.x | all(select(vec2<bool>(var_0.a.x, false), var_0.a.xz, var_0.a.zw))));
    var var_2 = vec3<u32>(global1.x, _wgslsmith_div_u32(10847u, ~u_input.d | var_1.x) ^ _wgslsmith_dot_vec2_u32(min(var_1.yy, global1.yy & var_1.zz), vec2<u32>(~0u, 30796u)), var_1.x);
    let var_3 = ~39215u;
    let var_4 = Struct_1(!var_0.a);
    let var_5 = func_2();
    var var_6 = var_4.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(0i);
}

