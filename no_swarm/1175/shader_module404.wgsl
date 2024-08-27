struct Struct_1 {
    a: vec4<u32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<u32>(67326u, 136428u, 6149u, 10751u), vec4<u32>(31923u, 1u, 30984u, 4294967295u)), Struct_1(vec4<u32>(96146u, 36020u, 58778u, 18525u), vec4<u32>(24225u, 22635u, 26368u, 17950u)), Struct_1(vec4<u32>(1u, 0u, 0u, 0u), vec4<u32>(34398u, 35274u, 41491u, 20274u)), Struct_1(vec4<u32>(14955u, 19057u, 55402u, 1895u), vec4<u32>(2619u, 0u, 57923u, 42114u)), Struct_1(vec4<u32>(14723u, 4294967295u, 1u, 1u), vec4<u32>(0u, 1u, 4294967295u, 1u)), Struct_1(vec4<u32>(0u, 20952u, 1u, 9887u), vec4<u32>(46913u, 62124u, 9131u, 16775u)), Struct_1(vec4<u32>(35940u, 0u, 4294967295u, 51673u), vec4<u32>(4294967295u, 4294967295u, 40099u, 91717u)));

var<private> global1: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global2: i32;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> u32 {
    let var_0 = abs(10055u);
    global2 = ~0i;
    var var_1 = arg_2.a.wy;
    let var_2 = _wgslsmith_clamp_i32(-u_input.d.x, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(max(u_input.a, u_input.d.x), -29743i), u_input.d.x >> (u_input.e % 32u)), _wgslsmith_mult_i32(0i, u_input.d.x));
    global1 = array<vec2<bool>, 25>();
    return (_wgslsmith_div_u32(select(_wgslsmith_clamp_u32(u_input.b, 0u, 58560u), _wgslsmith_add_u32(var_0, u_input.b), false), u_input.b >> (_wgslsmith_dot_vec2_u32(arg_2.a.yw, arg_2.a.yx) % 32u)) | _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0, 4294967295u), vec2<u32>(arg_2.b.x, u_input.e) >> (arg_2.a.zw % vec2<u32>(32u))), ~max(u_input.b, var_1.x))) << ((~abs(var_0) >> (_wgslsmith_dot_vec3_u32(arg_2.a.zww, ~arg_2.a.yww | (vec3<u32>(arg_2.a.x, 1u, var_0) | vec3<u32>(arg_2.a.x, var_1.x, arg_2.a.x))) % 32u)) % 32u);
}

fn func_2(arg_0: bool) -> u32 {
    let var_0 = _wgslsmith_mod_vec4_i32(reverseBits(~vec4<i32>(-u_input.c, u_input.c, u_input.a, u_input.c)), _wgslsmith_sub_vec4_i32(-(countOneBits(vec4<i32>(1i, 2905i, -3663i, u_input.a)) | _wgslsmith_mod_vec4_i32(vec4<i32>(-2955i, u_input.c, u_input.c, u_input.d.x), vec4<i32>(u_input.d.x, u_input.a, u_input.d.x, 0i))), ~(~vec4<i32>(-41801i, u_input.c, 17433i, u_input.a) | vec4<i32>(1i, u_input.a, u_input.d.x, -16585i))));
    let var_1 = _wgslsmith_f_op_f32(trunc(-292f));
    global2 = -773i;
    global1 = array<vec2<bool>, 25>();
    var var_2 = _wgslsmith_dot_vec4_u32(~vec4<u32>(_wgslsmith_mult_u32(func_3(1172f, -363f, Struct_1(vec4<u32>(14569u, u_input.b, u_input.b, 1u), vec4<u32>(0u, 0u, u_input.b, u_input.b))), 15636u), u_input.e, 35275u, u_input.b), _wgslsmith_mod_vec4_u32(~abs(select(vec4<u32>(38550u, u_input.e, 1u, u_input.e), vec4<u32>(53544u, u_input.e, 1u, 30611u), false)), _wgslsmith_div_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.e, 4294967295u, 7193u), vec4<u32>(0u, 4294967295u, 17230u, u_input.b), vec4<u32>(u_input.b, u_input.e, u_input.e, 0u))), _wgslsmith_add_vec4_u32(~vec4<u32>(1u, u_input.e, 4294967295u, 1u), vec4<u32>(64462u, u_input.b, u_input.e, u_input.e) << (vec4<u32>(u_input.e, u_input.b, 1u, 1u) % vec4<u32>(32u))))));
    return 4294967295u;
}

fn func_1(arg_0: u32) -> vec3<f32> {
    var var_0 = _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, ~(~(-37843i)), _wgslsmith_add_i32(u_input.d.x | ~(-2147483647i), -6791i), u_input.d.x), vec4<i32>(-15050i, _wgslsmith_add_i32(abs(0i), -1i) >> (func_2(true) % 32u), u_input.a, -221i), -_wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(u_input.a, u_input.c, u_input.d.x, 2147483647i)), -(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i) | vec4<i32>(u_input.a, u_input.c, u_input.a, u_input.c))));
    var_0 = vec4<i32>(-35095i, -36867i, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, u_input.d.x) << (func_3(362f, -346f, Struct_1(vec4<u32>(0u, u_input.e, 55609u, u_input.e), vec4<u32>(15254u, 16528u, arg_0, 1u))) % 32u), max(_wgslsmith_mult_i32(var_0.x, u_input.d.x), abs(u_input.a))) & (_wgslsmith_dot_vec3_i32(vec3<i32>(50873i, u_input.c, -103179i), var_0.zwz) & 39485i), 2147483647i);
    global0 = array<Struct_1, 7>();
    let var_1 = _wgslsmith_dot_vec3_u32(reverseBits(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.e, arg_0, u_input.b), ~vec3<u32>(37639u, arg_0, arg_0))), ~(~select(vec3<u32>(u_input.b, 0u, u_input.b), vec3<u32>(u_input.e, u_input.b, 0u), false) >> ((vec3<u32>(u_input.b, 0u, arg_0) | ~vec3<u32>(119732u, u_input.e, 4294967295u)) % vec3<u32>(32u))));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1377f, 1859f), vec2<f32>(470f, -1191f), true)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(635f, -508f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1267f, 277f))))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1294f))))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(1217f, -1000f) * vec2<f32>(315f, 208f)))))), (all(vec2<bool>(false, false)) == false) == (all(vec3<bool>(true, false, false)) && true)))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-133f - var_2.x)))), var_2.x, 222f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(0u))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x, -vec4<i32>(countOneBits(u_input.a) & (0i << (u_input.b % 32u)), -22061i, u_input.a ^ _wgslsmith_sub_i32(u_input.c, u_input.a), 0i), -vec3<i32>(-42426i, -1i, u_input.a & 0i));
}

