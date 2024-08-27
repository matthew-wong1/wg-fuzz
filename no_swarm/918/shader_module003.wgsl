struct Struct_1 {
    a: f32,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<i32>,
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

var<private> global0: array<Struct_2, 21>;

var<private> global1: u32 = 0u;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_3) -> vec3<f32> {
    let var_0 = arg_2.c.c;
    var var_1 = arg_2.c.b;
    var_1 = arg_2.c.b;
    var var_2 = select(vec2<bool>(~arg_0.x >= u_input.a.x, true), select(select(vec2<bool>(var_1.e, var_1.d), vec2<bool>(arg_1 > -30761i, true), select(select(vec2<bool>(var_1.e, true), vec2<bool>(arg_2.a.d, false), vec2<bool>(false, false)), vec2<bool>(var_0.e, var_1.e), vec2<bool>(true, true))), vec2<bool>((true | var_0.e) && var_1.d, all(select(vec4<bool>(false, true, var_0.d, false), vec4<bool>(false, var_0.d, true, arg_2.c.c.e), true))), vec2<bool>(select(true, 17397u == u_input.a.x, var_0.d), any(vec4<bool>(false, var_1.d, true, var_1.e)))), vec2<bool>(!arg_2.c.b.d, true));
    let var_3 = -23177i;
    return var_0.b;
}

fn func_2(arg_0: f32, arg_1: vec4<bool>, arg_2: Struct_3) -> bool {
    var var_0 = arg_2.c;
    var var_1 = i32(-1i) * -4903i;
    let var_2 = Struct_3(Struct_1(-1094f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~u_input.c.yx, _wgslsmith_add_i32(94919i, -45906i), Struct_3(arg_2.a, 742i, Struct_2(false, Struct_1(678f, vec3<f32>(var_0.b.a, -418f, arg_2.c.c.a), 12149u, true, true), Struct_1(995f, vec3<f32>(354f, 857f, 920f), arg_2.c.b.c, arg_1.x, arg_2.c.c.d)))))), ~4294967295u, all(vec4<bool>(any(arg_1.zwy), arg_1.x, !var_0.c.e, arg_1.x)), !(!(!arg_1.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-58619i, arg_2.b, -62427i, 2147483647i) >> (~u_input.a % vec4<u32>(32u)), u_input.d, vec4<i32>(-14604i, ~u_input.d.x, ~4973i, arg_2.b | 0i)), ~_wgslsmith_mod_vec4_i32(u_input.d, -u_input.d)), Struct_2(!(_wgslsmith_f_op_f32(arg_0 + arg_2.c.b.a) == -273f), arg_2.c.b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1395f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.b.x, -718f, -899f)), arg_2.a.c, true, arg_2.a.e)));
    let var_3 = vec4<bool>(true, all(arg_1.wyz), all(arg_1.yzz), any(!arg_1));
    global1 = ~_wgslsmith_sub_u32(arg_2.c.c.c, _wgslsmith_dot_vec3_u32(min(~u_input.a.zxz, vec3<u32>(var_0.b.c, var_0.b.c, 1u)), min(vec3<u32>(6879u, arg_2.a.c, var_0.c.c), firstTrailingBit(vec3<u32>(11195u, var_2.a.c, var_0.c.c)))));
    return true;
}

fn func_1() -> Struct_3 {
    let var_0 = all(!select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true)), select(func_2(1542f, vec4<bool>(true, true, false, false), Struct_3(Struct_1(-248f, vec3<f32>(1032f, -423f, 309f), 1u, true, false), 29182i, Struct_2(false, Struct_1(857f, vec3<f32>(1976f, 236f, -502f), 1u, true, true), Struct_1(-2653f, vec3<f32>(-1749f, 1667f, -2025f), u_input.b, true, false)))), all(vec3<bool>(false, true, true)), true)));
    var var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(-372f, 119f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(1646f + 1194f))) + _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(938f, 104f)) - vec2<f32>(-653f, -1898f))))));
    let var_2 = -668f;
    var var_3 = _wgslsmith_div_vec2_u32(u_input.c.zx << (u_input.a.yz % vec2<u32>(32u)), vec2<u32>(31639u, u_input.c.x));
    return Struct_3(Struct_1(var_2, vec3<f32>(214f, 558f, var_2), firstLeadingBit(u_input.a.x), !all(vec3<bool>(var_0, true, false)), any(select(vec4<bool>(false, false, false, var_0), vec4<bool>(var_0, true, var_0, true), vec4<bool>(var_0, var_0, false, false))) != (_wgslsmith_sub_i32(2147483647i, u_input.d.x) <= 1i)), u_input.d.x, global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(u_input.b, ~0u, max(u_input.b, 4294967295u)), ~select(var_3.x, abs(64042u), var_0)), 21u)]);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 21>();
    global1 = max(16911u, countOneBits(~u_input.c.x << (51160u % 32u)));
    var var_0 = func_1();
    var var_1 = true;
    let var_2 = abs(u_input.d.zzz);
    var var_3 = u_input.a;
    var var_4 = func_1().c.c;
    var var_5 = vec4<bool>(func_1().a.e || true, !any(vec2<bool>(!var_4.d, var_0.c.c.e)), true, true);
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().b ^ func_1().b);
}

