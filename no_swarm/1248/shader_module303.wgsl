struct Struct_1 {
    a: vec4<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<bool>,
    c: vec3<u32>,
    d: bool,
}

struct Struct_5 {
    a: Struct_2,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = false;

var<private> global2: vec3<u32>;

var<private> global3: array<vec3<u32>, 25> = array<vec3<u32>, 25>(vec3<u32>(49572u, 4294967295u, 4294967295u), vec3<u32>(25887u, 0u, 21311u), vec3<u32>(0u, 43047u, 52076u), vec3<u32>(33396u, 95235u, 4294967295u), vec3<u32>(11215u, 79336u, 4294967295u), vec3<u32>(1u, 0u, 1u), vec3<u32>(26242u, 1u, 1u), vec3<u32>(81819u, 4294967295u, 49246u), vec3<u32>(73835u, 28325u, 4294967295u), vec3<u32>(48601u, 33864u, 4189u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4443u, 70077u, 1u), vec3<u32>(4294967295u, 0u, 1u), vec3<u32>(4294967295u, 1u, 1u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(0u, 29768u, 1u), vec3<u32>(53934u, 28289u, 0u), vec3<u32>(4294967295u, 4294967295u, 88916u), vec3<u32>(0u, 1u, 6910u), vec3<u32>(0u, 4294967295u, 29131u), vec3<u32>(0u, 94443u, 4294967295u), vec3<u32>(31144u, 1u, 0u), vec3<u32>(1u, 5301u, 59816u), vec3<u32>(0u, 4294967295u, 7600u), vec3<u32>(0u, 49138u, 1700u));

var<private> global4: vec3<i32> = vec3<i32>(52851i, 6482i, 22410i);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: u32) -> vec2<i32> {
    global3 = array<vec3<u32>, 25>();
    let var_0 = any(!vec3<bool>(select(true, global4.x < u_input.a, true), true, !any(vec4<bool>(false, false, false, true))));
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(global4.x, -16128i, global4.x), vec3<i32>(u_input.a, i32(-1i) * -_wgslsmith_sub_i32(23i, 32201i), global4.x));
    let var_2 = firstTrailingBit(select(max(~0u | ~u_input.e.x, 13218u), min(u_input.d, global2.x), true));
    let var_3 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(1229f, -1000f, 1000f, -142f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1859f, -1140f, 391f, 1081f) - vec4<f32>(-542f, 1090f, 521f, 170f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(-1000f, -741f), _wgslsmith_f_op_f32(abs(-1226f)), _wgslsmith_f_op_f32(round(690f)), _wgslsmith_f_op_f32(f32(-1f) * -1421f)) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(187f, 297f, -1126f, -2113f) + vec4<f32>(403f, -648f, -1000f, -1000f)), _wgslsmith_div_vec4_f32(vec4<f32>(516f, -115f, 329f, 670f), vec4<f32>(-1276f, 639f, -560f, -880f)), any(vec4<bool>(var_0, false, var_0, var_0)))))));
    return select(global4.xy, global4.zx, !(!select(!vec2<bool>(var_0, var_0), !vec2<bool>(true, var_0), var_0)));
}

fn func_2(arg_0: Struct_3, arg_1: f32, arg_2: f32) -> bool {
    var var_0 = u_input.a;
    global0 = global4.zx;
    global1 = !(global2.x == firstTrailingBit(u_input.c));
    let var_1 = global0.x;
    global0 = -(vec2<i32>(-1i) * -func_3(~u_input.c));
    return arg_0.b.x;
}

fn func_4(arg_0: vec3<bool>) -> u32 {
    let var_0 = 0u;
    var var_1 = Struct_2(vec2<i32>(-1i) * -_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-30110i, global0.x), vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(vec2<i32>(global4.x, 0i))), Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1015f, 770f, -277f, 503f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1073f, 645f, -787f, 252f))))), -2147483647i);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_1.b.a.x + -1083f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1.b.a.x, 209f)))))), !arg_0.zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.b.a.zz, var_1.b.a.zw, arg_0.yy)) * vec2<f32>(var_1.b.a.x, var_1.b.a.x)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1395f, var_1.b.a.x))), var_1.b.a.yy))));
    var var_3 = var_1.b.a.xyz;
    let var_4 = Struct_2(~countOneBits(reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(global4.x, var_1.c), vec2<i32>(-9305i, -1i)))), var_1.b, _wgslsmith_clamp_i32(global0.x, -12090i, u_input.a));
    return _wgslsmith_dot_vec4_u32(u_input.e << ((u_input.e >> (~(~u_input.b) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(global2.x, global2.x), ~global2.x, ~1u, u_input.b.x), ~(~u_input.b), ~u_input.e) & u_input.b);
}

fn func_1(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<i32>) -> f32 {
    global4 = arg_2;
    var var_0 = countOneBits(func_4(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false)), func_2(Struct_3(-1593f, vec2<bool>(true, false), arg_1.yx), arg_1.x, 1639f)))) >> (_wgslsmith_dot_vec2_u32(select(vec2<u32>(arg_0 << (arg_0 % 32u), 0u), abs(_wgslsmith_add_vec2_u32(vec2<u32>(global2.x, 0u), u_input.b.wz)), all(vec2<bool>(true, true))), global2.zy) % 32u);
    let var_1 = !(!vec2<bool>(!any(vec3<bool>(false, true, true)), true));
    var var_2 = u_input.a;
    global1 = false;
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)) * _wgslsmith_f_op_f32(min(100f, _wgslsmith_f_op_f32(-arg_1.x))))), -586f));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global3[_wgslsmith_index_u32(1u, 25u)];
    global0 = vec2<i32>(50047i, (i32(-1i) * -global4.x) & ~((i32(-1i) * -12890i) >> (~u_input.c % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(448f, -739f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1030f)), _wgslsmith_f_op_f32(func_1(4294967295u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-838f, -1000f, 190f, -339f))), -vec3<i32>(-18225i, -1i, u_input.a)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1321f, -1162f, _wgslsmith_f_op_f32(floor(-487f)), _wgslsmith_f_op_f32(sign(-962f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-306f)))))), 165i);
}

