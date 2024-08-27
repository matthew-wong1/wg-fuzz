struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<f32>,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<Struct_1, 18> = array<Struct_1, 18>(Struct_1(true, vec3<f32>(1576f, 784f, 1000f), vec3<bool>(true, false, false), -249f, i32(-2147483648)), Struct_1(true, vec3<f32>(-1000f, 1000f, 1834f), vec3<bool>(false, true, true), 426f, -37148i), Struct_1(false, vec3<f32>(255f, 314f, -130f), vec3<bool>(true, true, true), 705f, i32(-2147483648)), Struct_1(false, vec3<f32>(282f, -460f, 1103f), vec3<bool>(false, false, false), 1020f, 4212i), Struct_1(true, vec3<f32>(-1186f, -980f, -1000f), vec3<bool>(true, true, true), 306f, 212i), Struct_1(false, vec3<f32>(590f, -772f, 536f), vec3<bool>(true, true, true), 154f, 2147483647i), Struct_1(false, vec3<f32>(1783f, -633f, -636f), vec3<bool>(false, true, true), 315f, -19660i), Struct_1(false, vec3<f32>(1433f, -324f, 557f), vec3<bool>(false, false, false), 1209f, 29819i), Struct_1(true, vec3<f32>(519f, 1759f, -1198f), vec3<bool>(true, false, true), -2338f, -1i), Struct_1(false, vec3<f32>(703f, 638f, -1754f), vec3<bool>(false, false, false), 1725f, 55819i), Struct_1(false, vec3<f32>(1000f, -294f, -2208f), vec3<bool>(false, true, false), -1477f, -47111i), Struct_1(true, vec3<f32>(-1395f, -1500f, -851f), vec3<bool>(false, false, false), 654f, -8090i), Struct_1(false, vec3<f32>(1516f, 120f, -2344f), vec3<bool>(true, false, true), 193f, i32(-2147483648)), Struct_1(true, vec3<f32>(-2155f, 1000f, 1000f), vec3<bool>(true, false, false), -200f, 0i), Struct_1(true, vec3<f32>(-329f, -679f, 752f), vec3<bool>(false, true, true), 1000f, 31131i), Struct_1(true, vec3<f32>(-320f, 670f, 1702f), vec3<bool>(true, false, false), -408f, i32(-2147483648)), Struct_1(false, vec3<f32>(-545f, 662f, 210f), vec3<bool>(true, false, true), 1855f, -1i), Struct_1(false, vec3<f32>(1051f, -234f, 122f), vec3<bool>(false, true, true), -1347f, 13846i));

var<private> global2: array<f32, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: bool) -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(13624u, 18u)];
    global1 = array<Struct_1, 18>();
    var var_1 = i32(-1i) * -_wgslsmith_dot_vec2_i32(min(_wgslsmith_div_vec2_i32(u_input.a.yz, vec2<i32>(16269i, u_input.a.x)), vec2<i32>(var_0.e, u_input.a.x) >> (u_input.d.xw % vec2<u32>(32u))), -_wgslsmith_sub_vec2_i32(u_input.a.zy, u_input.a.wz));
    return -abs(countOneBits(_wgslsmith_div_i32(u_input.a.x, -u_input.a.x)));
}

fn func_2(arg_0: vec2<i32>) -> vec2<bool> {
    global1 = array<Struct_1, 18>();
    var var_0 = Struct_2(global1[_wgslsmith_index_u32(u_input.b.x, 18u)], func_3(1040f, true));
    let var_1 = vec3<bool>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(13380i, 0i), vec2<i32>(-1668i, var_0.a.e)) >= firstTrailingBit(arg_0.x), all(!vec2<bool>(true, var_0.a.c.x)), true) || false, var_0.a.c.x | !any(!var_0.a.c), var_0.a.c.x);
    var var_2 = i32(-1i) * -1i;
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.x, global0.x));
    return vec2<bool>(any(!(!vec3<bool>(true, var_1.x, true))), var_0.a.a);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = func_2(abs(~u_input.a.ww));
    var var_1 = Struct_1(false, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1328f, -542f, 277f), vec3<f32>(-186f, -1000f, 736f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1390f, -448f, -557f) + vec3<f32>(global2[_wgslsmith_index_u32(8997u, 26u)], -1300f, global2[_wgslsmith_index_u32(11038u, 26u)]))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_div_vec3_f32(global0.xzw, vec3<f32>(-191f, -243f, 1237f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(u_input.d.x, 26u)], -1014f, -1000f) - global0.yxw))) + vec3<f32>(1377f, 199f, 538f))), !(!(!(!vec3<bool>(var_0.x, var_0.x, false)))), _wgslsmith_f_op_f32(-global0.x), -21626i);
    var var_2 = Struct_3(!vec4<bool>(var_1.a, true, _wgslsmith_f_op_f32(1441f * global0.x) != _wgslsmith_f_op_f32(min(841f, 1569f)), any(select(vec4<bool>(true, true, var_1.c.x, var_0.x), vec4<bool>(false, false, false, var_0.x), true))), vec4<bool>(u_input.a.x < var_1.e, false, true, all(var_1.c)), _wgslsmith_f_op_vec3_f32(global0.zzw - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-967f, global0.x, var_1.b.x), vec3<f32>(-183f, global0.x, var_1.b.x)), vec3<f32>(global2[_wgslsmith_index_u32(20407u, 26u)], var_1.d, -1000f))) - _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, var_1.b.x, -288f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-553f, -1032f, -770f) - var_1.b)))), global1[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(_wgslsmith_div_u32(1u, ~27075u), 0u)), 18u)], global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(u_input.d.xyy, ~vec3<u32>(0u, u_input.d.x, 13749u)), 18u)]);
    var_1 = global1[_wgslsmith_index_u32(abs(countOneBits(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, 10762u, 4294967295u, arg_0), max(u_input.e, u_input.e)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(62142u, 1u), vec2<u32>(u_input.d.x, arg_0))))), 18u)];
    let var_3 = Struct_2(Struct_1(_wgslsmith_clamp_i32(var_2.d.e, select(var_1.e, var_2.d.e, var_2.e.a), _wgslsmith_div_i32(1i, var_2.d.e)) < var_2.d.e, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 26u)], -1402f, var_2.c.x)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d, 1003f, -540f) + vec3<f32>(697f, -1000f, var_2.c.x)))), !var_1.c, _wgslsmith_f_op_f32(floor(-1832f)), -firstLeadingBit(var_1.e)), var_1.e);
    return _wgslsmith_mult_i32(var_3.b, firstLeadingBit(var_2.d.e));
}

fn func_4(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<i32>) -> Struct_3 {
    global1 = array<Struct_1, 18>();
    return Struct_3(vec4<bool>(all(vec2<bool>(true, true)), false, true, true), select(vec4<bool>(true, true, true, func_2(vec2<i32>(u_input.a.x, -2147483647i) & arg_0.zy).x), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false))), vec4<bool>(_wgslsmith_div_u32(u_input.d.x, u_input.b.x) == ~0u, func_2(select(vec2<i32>(9567i, arg_2.x), arg_2.zz, true)).x, any(vec3<bool>(false, true, true)), true || (global2[_wgslsmith_index_u32(32040u, 26u)] != 363f))), global0.zyy, Struct_1(all(func_2(min(u_input.a.xw, arg_0.xx))), global0.xxx, !(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), -1993f, -arg_0.x), Struct_1(false, global0.zxx, vec3<bool>(true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), false)), u_input.c == min(1u, 60162u)), _wgslsmith_f_op_f32(floor(global0.x)), u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-_wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) ^ vec3<i32>(u_input.a.x, 18000i, u_input.a.x)), max(-vec3<i32>(2147483647i, u_input.a.x, -1i), max(u_input.a.yww, vec3<i32>(u_input.a.x, -37825i, u_input.a.x)))), _wgslsmith_f_op_f32(min(-1106f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(1042f)), -983f)))), vec3<i32>(func_1(~61175u), u_input.a.x, -u_input.a.x >> ((firstTrailingBit(86726u) << (_wgslsmith_div_u32(u_input.d.x, 0u) % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(4882u, u_input.a.wx, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2[_wgslsmith_index_u32(~(~0u), 26u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(u_input.b.x, 26u)])) * global2[_wgslsmith_index_u32(~u_input.e.x, 26u)]), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(max(u_input.b.x, u_input.c), 26u)] + _wgslsmith_f_op_f32(f32(-1f) * -809f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), u_input.a | _wgslsmith_add_vec4_i32(u_input.a, vec4<i32>(func_3(586f, var_0.d.a), 12245i, 2147483647i, -10577i)));
}

