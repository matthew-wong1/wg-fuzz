struct Struct_1 {
    a: vec4<bool>,
    b: i32,
    c: bool,
    d: vec2<bool>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: i32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<u32>,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec3<i32> = vec3<i32>(-10317i, 2147483647i, -617i);

var<private> global2: u32 = 14138u;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: bool, arg_2: vec2<f32>) -> u32 {
    global0 = u_input.a;
    global1 = u_input.a.xxw;
    global0 = _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(abs(-_wgslsmith_clamp_vec4_i32(vec4<i32>(2147483647i, global1.x, global0.x, global1.x), vec4<i32>(0i, u_input.c.x, u_input.b.x, u_input.a.x), u_input.a)), vec4<i32>(u_input.c.x, abs(-25580i), -1i, global0.x)), _wgslsmith_add_vec4_i32(u_input.a, abs(~u_input.a) << (vec4<u32>(4294967295u, firstTrailingBit(u_input.d.x), min(25532u, 0u), 1u) % vec4<u32>(32u))));
    let var_0 = vec3<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.x, arg_2.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x)))) == 1567f, arg_1);
    global2 = u_input.e;
    return 55594u;
}

fn func_2() -> u32 {
    var var_0 = ~u_input.a.x;
    let var_1 = abs(vec3<u32>(~(~func_3(vec3<bool>(true, false, true), false, vec2<f32>(193f, 371f))), func_3(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), !all(vec4<bool>(true, false, true, false)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(132f, -735f)))), ~49077u));
    var var_2 = Struct_2(firstTrailingBit(1698i), u_input.a.zy);
    var var_3 = Struct_2(0i, u_input.b);
    let var_4 = Struct_1(vec4<bool>(0u != firstTrailingBit(var_1.x << (34571u % 32u)), _wgslsmith_f_op_f32(select(-107f, _wgslsmith_f_op_f32(2201f - 233f), select(true, false, true))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(605f - -2530f)), any(vec3<bool>(true, true, true)), !all(vec2<bool>(true, false))), var_3.b.x & ~u_input.b.x, true, vec2<bool>(true, true), vec3<u32>(~abs(1102u), ~select(_wgslsmith_div_u32(u_input.d.x, 3373u), ~u_input.d.x, true), 13361u));
    return var_4.e.x;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> f32 {
    global2 = func_2();
    var var_0 = global0.x;
    var var_1 = Struct_1(select(!vec4<bool>(true || arg_2.x, any(arg_2), arg_2.x, arg_2.x), !(!vec4<bool>(true, arg_2.x, true, false)), !any(vec4<bool>(true, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(max(abs(u_input.c), min(global1.yx, u_input.b)), global1.yz, global0.wy), -u_input.c), arg_2.x == all(!vec4<bool>(false, false, arg_2.x, true)), vec2<bool>(arg_0.x <= 1557f, true), ~_wgslsmith_div_vec3_u32(u_input.d.zyy, vec3<u32>(~0u, firstTrailingBit(0u), ~36753u)));
    let var_2 = Struct_2(global0.x ^ firstTrailingBit(1i), vec2<i32>(abs(~(-1i)), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -var_1.b, _wgslsmith_div_i32(var_1.b, var_1.b)), _wgslsmith_div_vec3_i32(u_input.a.yzw, abs(global0.yyz)))));
    global2 = u_input.d.x;
    return _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(sign(arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.a;
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-151f, 2505f, 894f), vec3<f32>(-241f, 525f, 1000f)) - vec3<f32>(-401f, 590f, -547f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-484f, 1539f, -362f), vec3<f32>(-385f, -317f, 701f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(564f, -404f, 1008f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-455f, 750f, 256f) - vec3<f32>(1995f, -543f, -804f))))) + vec3<f32>(-197f, _wgslsmith_f_op_f32(func_1(vec4<f32>(-2194f, -827f, -875f, -316f), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-908f, -521f, -2075f, -883f), vec4<f32>(2188f, 736f, -681f, 1000f), vec4<bool>(false, true, true, false))))), vec2<bool>(true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-1654f))))));
    global1 = ~_wgslsmith_add_vec3_i32(reverseBits(~vec3<i32>(18320i, global0.x, global1.x)), -_wgslsmith_mult_vec3_i32(vec3<i32>(-26747i, u_input.a.x, global1.x), vec3<i32>(2147483647i, -13035i, u_input.c.x))) & ~(~vec3<i32>(i32(-1i) * -49943i, firstTrailingBit(2147483647i), firstTrailingBit(0i)));
    var var_1 = vec2<bool>(true, all(vec3<bool>(false, false, true)));
    global2 = u_input.e;
    global1 = _wgslsmith_add_vec3_i32(u_input.a.xyy, vec3<i32>(-2147483647i, _wgslsmith_mod_i32(34980i, 1i), global0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d.x, vec3<i32>(firstTrailingBit(1i), 0i, global1.x), 36701u);
}

