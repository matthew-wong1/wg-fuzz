struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<bool>,
    d: vec3<f32>,
    e: vec3<u32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_4, 3>;

var<private> global2: array<vec4<u32>, 18>;

var<private> global3: array<u32, 12>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<f32>) -> f32 {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)], 12u)], 12u)], countOneBits(~20644u), 1u), ~(~(~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(35082u, 12u)], 12u)], 69447u, global3[_wgslsmith_index_u32(1u, 12u)])))), 3u)];
    let var_1 = _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a.a.x, abs(-48322i), ~2147483647i, ~0i), vec4<i32>(select(_wgslsmith_mult_i32(arg_0.b.a.x, 2147483647i), countOneBits(_wgslsmith_mod_i32(arg_0.a.a.x, 2147483647i)), !(arg_3.x < 305f)), 0i << ((global3[_wgslsmith_index_u32(select(global3[_wgslsmith_index_u32(4294967295u, 12u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(44251u, 12u)], 12u)], arg_2), 12u)] & ~20020u) % 32u), _wgslsmith_mult_i32(firstLeadingBit(u_input.a.x), ~u_input.a.x >> (5808u % 32u)), arg_0.b.a.x));
    let var_2 = Struct_2(Struct_1(vec2<i32>((2147483647i & u_input.a.x) | abs(var_1.x), 1i)), arg_0.a, vec2<bool>(arg_0.c.x, !(!any(arg_0.c))));
    var var_3 = global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~firstTrailingBit(0u), 12u)], 12u)];
    let var_4 = select(u_input.a.x, 1733i, !any(vec4<bool>(true, true, any(vec4<bool>(false, arg_0.c.x, arg_0.c.x, arg_2)), true)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-691f * arg_1.x))));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<bool>, arg_2: vec4<i32>) -> Struct_3 {
    global2 = array<vec4<u32>, 18>();
    global1 = array<Struct_4, 3>();
    global1 = array<Struct_4, 3>();
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(arg_2.xy), Struct_1(u_input.a), select(vec2<bool>(arg_1.x, true), vec2<bool>(arg_1.x, arg_1.x), vec2<bool>(arg_1.x, false))), vec2<f32>(_wgslsmith_div_f32(1520f, -1148f), _wgslsmith_f_op_f32(f32(-1f) * -459f)), !any(arg_1.yy), vec2<f32>(-508f, _wgslsmith_f_op_f32(f32(-1f) * -459f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-106f, _wgslsmith_f_op_f32(min(2018f, -2234f))))))), 314f);
    global2 = array<vec4<u32>, 18>();
    return Struct_3(Struct_1(-vec2<i32>(i32(-1i) * -10051i, ~(-47302i))), min(-(-vec3<i32>(arg_2.x, -54857i, -42764i) | -vec3<i32>(1i, u_input.a.x, arg_0.x)), min(min(abs(vec3<i32>(arg_2.x, 2147483647i, u_input.a.x)), vec3<i32>(-16388i, u_input.a.x, arg_2.x)), vec3<i32>(max(arg_0.x, arg_2.x), -71942i, -1i))), vec3<bool>(false, !arg_1.x, all(vec3<bool>(false, arg_1.x, false)) || any(arg_1.xy)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-747f, 412f, var_0.x))))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, var_0.x, var_0.x) * vec3<f32>(var_0.x, 599f, -1113f)) * vec3<f32>(var_0.x, -150f, -919f))))), abs(_wgslsmith_mod_vec3_u32(abs(_wgslsmith_mult_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(25588u, 12u)], 0u, 1276u), vec3<u32>(0u, 24934u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 12u)]))), select(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(42795u, 12u)], 12u)], 9525u, 0u), vec3<u32>(global3[_wgslsmith_index_u32(30854u, 12u)], 9991u, 8491u), vec3<bool>(arg_1.x, arg_1.x, arg_1.x)))));
}

fn func_1(arg_0: f32, arg_1: vec4<bool>, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    let var_0 = ~vec4<i32>(-1097i, -2147483647i, u_input.a.x, arg_3.a.x);
    global1 = array<Struct_4, 3>();
    var var_1 = func_2(countOneBits(abs(-vec2<i32>(30834i, arg_3.a.x))), !select(arg_1.xyy, select(arg_1.xzy, arg_1.wxw, true), all(vec2<bool>(true, arg_2))), firstTrailingBit(var_0));
    global0 = reverseBits(min(func_2(~vec2<i32>(var_0.x, 4566i) >> (var_1.e.yy % vec2<u32>(32u)), vec3<bool>(false, true, true), abs(_wgslsmith_mod_vec4_i32(vec4<i32>(-4241i, 2147483647i, u_input.a.x, -2147483647i), vec4<i32>(59912i, -27222i, 53215i, arg_3.a.x)))).e.x, 1u));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(-var_1.d.x));
    return Struct_2(Struct_1(func_2(func_2(vec2<i32>(-1i, var_1.b.x), vec3<bool>(true, true, true), countOneBits(vec4<i32>(arg_3.a.x, arg_3.a.x, -55789i, -1190i))).b.yz, vec3<bool>(true, all(var_1.c.yz), arg_1.x || false), vec4<i32>(arg_3.a.x, -1916i, var_1.b.x, 2147483647i ^ var_0.x)).b.zx), var_1.a, vec2<bool>(!arg_2, var_1.c.x));
}

fn func_4(arg_0: Struct_2, arg_1: vec3<u32>, arg_2: vec2<bool>) -> vec2<bool> {
    var var_0 = func_1(1000f, !(!(!(!vec4<bool>(false, arg_0.c.x, true, false)))), any(!(!vec3<bool>(false, true, arg_2.x))), arg_0.a);
    var var_1 = -941f;
    var_1 = _wgslsmith_f_op_f32(1052f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1756f, 1208f)))));
    global2 = array<vec4<u32>, 18>();
    global3 = array<u32, 12>();
    return func_1(-1000f, !vec4<bool>(!all(arg_0.c), var_0.c.x, true, (true != arg_0.c.x) | true), true, arg_0.b).c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)];
    var var_0 = true;
    var_0 = all(select(select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(true, true)), select(vec2<bool>(true, all(vec4<bool>(false, false, true, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), true), func_4(func_1(-540f, vec4<bool>(true, false, false, false), false, Struct_1(vec2<i32>(u_input.a.x, u_input.a.x))), ~vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 12u)], 12u)], 8438u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 12u)], 12u)], 12u)], 12u)]), vec2<bool>(false, true))), ~0i < u_input.a.x));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1628f, -242f)))))), 802f, -1106f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1634f * 1940f) - -354f))));
    global2 = array<vec4<u32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(var_1.x, var_1.x)), -873f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-561f, var_1.x))))));
}

