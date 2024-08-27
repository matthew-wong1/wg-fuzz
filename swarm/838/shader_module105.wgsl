struct Struct_1 {
    a: vec2<bool>,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec2<bool>(false, true), 26812i), Struct_1(vec2<bool>(true, false), -13330i), Struct_1(vec2<bool>(false, true), -1i), Struct_1(vec2<bool>(false, false), 23799i), Struct_1(vec2<bool>(false, true), -34318i), Struct_1(vec2<bool>(true, true), i32(-2147483648)), Struct_1(vec2<bool>(false, false), -1i), Struct_1(vec2<bool>(false, false), i32(-2147483648)));

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 25> = array<Struct_1, 25>(Struct_1(vec2<bool>(false, false), 1i), Struct_1(vec2<bool>(true, true), 1i), Struct_1(vec2<bool>(false, true), 62639i), Struct_1(vec2<bool>(true, true), 2147483647i), Struct_1(vec2<bool>(false, false), 0i), Struct_1(vec2<bool>(false, false), 0i), Struct_1(vec2<bool>(true, false), 1i), Struct_1(vec2<bool>(false, true), -13146i), Struct_1(vec2<bool>(false, true), 37612i), Struct_1(vec2<bool>(true, false), -51245i), Struct_1(vec2<bool>(false, true), -41990i), Struct_1(vec2<bool>(false, false), -3810i), Struct_1(vec2<bool>(true, false), -13441i), Struct_1(vec2<bool>(false, false), 18562i), Struct_1(vec2<bool>(false, true), -873i), Struct_1(vec2<bool>(false, false), -429i), Struct_1(vec2<bool>(true, true), i32(-2147483648)), Struct_1(vec2<bool>(false, false), -1i), Struct_1(vec2<bool>(false, true), -72522i), Struct_1(vec2<bool>(false, true), 2147483647i), Struct_1(vec2<bool>(true, false), 308i), Struct_1(vec2<bool>(true, true), -1i), Struct_1(vec2<bool>(true, false), -27001i), Struct_1(vec2<bool>(false, true), -11291i), Struct_1(vec2<bool>(false, true), 0i));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> u32 {
    var var_0 = abs(_wgslsmith_add_vec3_i32(u_input.e.www, _wgslsmith_mult_vec3_i32(-u_input.e.zyw, u_input.e.xyx)));
    var var_1 = Struct_1(vec2<bool>(true, u_input.c > u_input.a.x), -(i32(-1i) * -4513i));
    var var_2 = Struct_1(!var_1.a, min(var_1.b, ~var_1.b));
    global0 = array<Struct_1, 8>();
    var var_3 = !var_1.a.x;
    return firstLeadingBit(countOneBits(~(~(~755u))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> i32 {
    var var_0 = ~_wgslsmith_add_u32(4294967295u, firstTrailingBit(u_input.b.x));
    let var_1 = ~u_input.d.x;
    let var_2 = select(vec2<bool>(arg_1.a.x, global1.a.x), select(vec2<bool>(arg_0.a.x, any(select(vec4<bool>(arg_1.a.x, arg_0.a.x, global1.a.x, arg_1.a.x), vec4<bool>(arg_1.a.x, arg_0.a.x, arg_1.a.x, arg_0.a.x), true))), select(vec2<bool>(arg_0.a.x, true), global1.a, true && all(vec2<bool>(true, global1.a.x))), arg_0.b <= global1.b), -679f >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_2.x)) * 2750f), ~u_input.a.x == ~u_input.c)));
    global0 = array<Struct_1, 8>();
    let var_3 = arg_1;
    return arg_0.b << (func_2() % 32u);
}

fn func_3(arg_0: vec3<i32>) -> u32 {
    global2 = array<Struct_1, 25>();
    global1 = Struct_1(vec2<bool>(global1.a.x, true), u_input.e.x);
    let var_0 = _wgslsmith_add_i32(0i, arg_0.x);
    var var_1 = -726f;
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -334f))));
    return ~(96430u & _wgslsmith_add_u32(~u_input.c, _wgslsmith_dot_vec3_u32(u_input.b.xwy, ~vec3<u32>(4294967295u, 26442u, 4294967295u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 25>();
    var var_0 = _wgslsmith_dot_vec2_i32(vec2<i32>(-max(1i, -75617i >> (u_input.d.x % 32u)), -min(select(global1.b, global1.b, false), func_1(global2[_wgslsmith_index_u32(1u, 25u)], Struct_1(vec2<bool>(false, true), global1.b), vec2<f32>(2397f, -1126f)))), ~vec2<i32>(-31019i, global1.b));
    let var_1 = ~func_3(max(_wgslsmith_div_vec3_i32(u_input.e.yyx, u_input.e.yww), u_input.e.xwz >> (vec3<u32>(u_input.a.x, u_input.a.x, 74308u) % vec3<u32>(32u))) ^ firstLeadingBit(countOneBits(vec3<i32>(global1.b, -2147483647i, 33156i))));
    let var_2 = u_input.e.zx;
    let var_3 = vec3<i32>(_wgslsmith_sub_i32(-19577i, i32(-1i) * -global1.b), -firstLeadingBit(-501i), ~u_input.e.x) & u_input.e.ywx;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b.yx, u_input.b.xx), u_input.a.zx, vec2<u32>(u_input.a.x, var_1))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(-1675f, -1562f, 1037f), vec3<f32>(852f, 450f, 687f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-936f, -2165f, -1014f)), select(vec3<bool>(true, global1.a.x, global1.a.x), vec3<bool>(global1.a.x, global1.a.x, global1.a.x), vec3<bool>(false, global1.a.x, false))))), vec3<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-454f, 110f) * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1195f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-583f, 1000f, 1125f) + vec3<f32>(-1741f, 1547f, 731f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(501f, -2101f, 538f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-516f, -1000f, 1305f) + vec3<f32>(586f, -1000f, -316f)))))), -2147483647i, 1u);
}

