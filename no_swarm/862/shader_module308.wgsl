struct Struct_1 {
    a: i32,
    b: i32,
    c: bool,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: u32,
    d: u32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(-40442i, 0i, true, vec4<i32>(-34406i, 2147483647i, 12618i, 44160i), vec3<i32>(0i, 0i, i32(-2147483648))), Struct_1(i32(-2147483648), -29153i, false, vec4<i32>(0i, -1i, 1i, -5125i), vec3<i32>(-1i, -1i, 2147483647i)), Struct_1(-24861i, -74259i, false, vec4<i32>(4635i, 2147483647i, i32(-2147483648), 18007i), vec3<i32>(-1i, -1i, 29831i)), Struct_1(44751i, 4735i, false, vec4<i32>(i32(-2147483648), 2147483647i, 3301i, -26447i), vec3<i32>(56657i, 1i, 1i)), Struct_1(0i, 39359i, true, vec4<i32>(-1i, -11279i, -13907i, 36541i), vec3<i32>(58183i, i32(-2147483648), 11794i)), Struct_1(1i, 0i, false, vec4<i32>(-8481i, 864i, 0i, -1i), vec3<i32>(-32002i, 79809i, -37883i)), Struct_1(25739i, 31920i, false, vec4<i32>(0i, 1i, 1i, 32i), vec3<i32>(-49340i, 28853i, -11605i)), Struct_1(45582i, 26195i, false, vec4<i32>(15897i, -15240i, 0i, -34706i), vec3<i32>(-49285i, 25014i, 19064i)), Struct_1(-1i, 1i, false, vec4<i32>(i32(-2147483648), 1i, -6890i, -34842i), vec3<i32>(16541i, i32(-2147483648), 1i)), Struct_1(-11398i, 1i, true, vec4<i32>(-1i, -15459i, 1054i, 1i), vec3<i32>(1i, i32(-2147483648), 31744i)), Struct_1(15238i, 2147483647i, true, vec4<i32>(27265i, 2147483647i, 2147483647i, 0i), vec3<i32>(-3454i, 20017i, -1i)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: u32, arg_1: f32) -> bool {
    global0 = array<Struct_1, 11>();
    let var_0 = Struct_2(Struct_1(u_input.a.x, u_input.a.x, true, vec4<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), _wgslsmith_mod_i32(countOneBits(u_input.a.x), u_input.a.x), ~(-36826i), -17953i), _wgslsmith_mod_vec3_i32(vec3<i32>(abs(u_input.a.x), 43167i, 1i), _wgslsmith_sub_vec3_i32(-vec3<i32>(-45317i, -18102i, u_input.a.x), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - arg_1) - _wgslsmith_f_op_f32(-213f * -256f)), arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-909f + 205f)), _wgslsmith_div_f32(970f, -580f)))));
    var var_1 = Struct_3(1u, _wgslsmith_f_op_vec3_f32(var_0.b.wzx + var_0.b.zyy));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b)), _wgslsmith_f_op_vec4_f32(-var_0.b)) - vec4<f32>(_wgslsmith_f_op_f32(-999f - arg_1), _wgslsmith_f_op_f32(-var_1.b.x), 370f, _wgslsmith_f_op_f32(-var_0.b.x)))));
    var_1 = Struct_3(4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b.ywy + vec3<f32>(-883f, var_1.b.x, 305f)), vec3<f32>(-132f, var_0.b.x, var_2.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, 1601f, -1000f), vec3<f32>(var_0.b.x, -241f, var_2.x))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(311f, var_2.x, 452f))), all(select(vec4<bool>(false, var_0.a.c, var_0.a.c, var_0.a.c), vec4<bool>(false, false, var_0.a.c, var_0.a.c), vec4<bool>(true, false, var_0.a.c, false))))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1174f + 529f)), var_1.b.x)));
    return var_0.a.c;
}

fn func_2(arg_0: i32) -> vec3<i32> {
    var var_0 = firstTrailingBit(vec2<i32>(-_wgslsmith_sub_i32(min(arg_0, arg_0), 1i), -43403i));
    var var_1 = vec2<i32>(0i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_add_i32(var_0.x, u_input.a.x), -arg_0, var_0.x, -1i), max(-vec4<i32>(u_input.a.x, arg_0, arg_0, var_0.x), -vec4<i32>(5311i, u_input.a.x, 2147483647i, 0i))));
    var var_2 = func_3(u_input.b, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(716f, -169f))));
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    return vec3<i32>(arg_0, 0i, var_0.x);
}

fn func_1(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_4) -> vec3<i32> {
    global0 = array<Struct_1, 11>();
    global0 = array<Struct_1, 11>();
    let var_0 = u_input.e >> (u_input.e % vec3<u32>(32u));
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(min(_wgslsmith_div_vec3_i32(vec3<i32>(0i, u_input.a.x, arg_0) ^ vec3<i32>(arg_0, 30994i, 2147483647i), func_2(u_input.a.x)), (vec3<i32>(-2147483647i, u_input.a.x, arg_1.x) & vec3<i32>(2147483647i, u_input.a.x, arg_0)) ^ vec3<i32>(-3899i, arg_1.x, -27922i)), min(-(~vec3<i32>(arg_0, arg_0, 2329i)), ~(~vec3<i32>(u_input.a.x, 1i, arg_0)))), -(~select(-vec3<i32>(2147483647i, 2147483647i, -1i), vec3<i32>(0i, 20399i, -2147483647i), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true))));
    var var_2 = Struct_4(0u, 600f, _wgslsmith_div_u32(~(~var_0.x), arg_2.e.a), reverseBits(~max(~var_0.x, ~u_input.c.x)), Struct_3(u_input.d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_2.e.b.x, -554f, 1978f), arg_2.e.b), arg_2.e.b))));
    return abs(vec3<i32>(-38706i, 1i, _wgslsmith_add_i32(2147483647i, ~_wgslsmith_mult_i32(-45522i, var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(u_input.a.x, 35172i | _wgslsmith_sub_i32(_wgslsmith_mult_i32(1i, -24378i), -abs(u_input.a.x)), ~u_input.c.x == 1u, ~(select(vec4<i32>(-1i, u_input.a.x, 2147483647i, 27396i), -vec4<i32>(78530i, u_input.a.x, 36294i, u_input.a.x), true) & (~vec4<i32>(1i, -7538i, 0i, -10737i) & (vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) >> (vec4<u32>(u_input.c.x, u_input.b, 16620u, 52874u) % vec4<u32>(32u))))), (~func_1(1i, u_input.a, Struct_4(u_input.b, 1781f, u_input.c.x, 0u, Struct_3(u_input.c.x, vec3<f32>(1248f, -264f, 1000f)))) ^ select(~vec3<i32>(32878i, 2147483647i, 2147483647i), -vec3<i32>(u_input.a.x, 1i, -6129i), select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false))) | -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -39861i, 16759i), vec3<i32>(u_input.a.x, u_input.a.x, 1i) >> (u_input.e % vec3<u32>(32u)), max(vec3<i32>(30151i, -1i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x))));
    global0 = array<Struct_1, 11>();
    var var_1 = func_1(24687i, u_input.a, Struct_4(firstLeadingBit(~(u_input.c.x & u_input.b)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1276f * -638f) - _wgslsmith_f_op_f32(abs(-190f))))), u_input.c.x << (_wgslsmith_div_u32(reverseBits(0u), 4294967295u ^ u_input.b) % 32u), 1u, Struct_3(~_wgslsmith_mod_u32(4294967295u, 22102u), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1133f), 642f, 229f))));
    global0 = array<Struct_1, 11>();
    let var_2 = u_input.e;
    global0 = array<Struct_1, 11>();
    var_1 = func_2(_wgslsmith_mult_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(u_input.a.x, 1i, ~1i), (43236i & var_1.x) >> (1u % 32u)), var_0.e.x));
    let var_3 = Struct_4(var_2.x, _wgslsmith_div_f32(-268f, 479f), _wgslsmith_mult_u32(15836u, 1u), ~(~(u_input.c.x | var_2.x)) ^ u_input.e.x, Struct_3(53633u ^ ~_wgslsmith_sub_u32(var_2.x, 4294967295u), vec3<f32>(-616f, -279f, -2059f)));
    global0 = array<Struct_1, 11>();
    let x = u_input.a;
    s_output = StorageBuffer(35716u, vec4<i32>(-1518i, var_0.a, u_input.a.x, var_1.x), var_3.e.b);
}

