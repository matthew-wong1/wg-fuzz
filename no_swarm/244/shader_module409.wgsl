struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: vec2<bool>,
    d: f32,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: vec3<u32>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<f32> = vec3<f32>(1435f, -197f, -813f);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: f32, arg_3: vec4<bool>) -> i32 {
    let var_0 = select(!select(!(!arg_3.zxy), select(select(vec3<bool>(false, false, true), arg_3.zxw, arg_3.x), vec3<bool>(true, arg_3.x, arg_3.x), false & arg_3.x), !any(vec2<bool>(arg_3.x, arg_3.x))), arg_3.www, arg_3.yzx);
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-945f, _wgslsmith_f_op_f32(exp2(arg_2)), -1290f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(720f, global0.x, 676f))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(827f, _wgslsmith_f_op_f32(floor(-500f)), _wgslsmith_div_f32(-1000f, 342f)))))), vec3<bool>(true, !(true == arg_3.x), var_0.x)));
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - 614f) * _wgslsmith_f_op_f32(719f * arg_2)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_1.x)) * _wgslsmith_f_op_f32(sign(arg_1.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(868f))))), vec3<f32>(global1.x, global0.x, 639f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, -1807f, arg_2) * vec3<f32>(global1.x, 219f, global0.x)) + _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.x, arg_1.x, 2357f))))))), arg_3.xxw));
    var var_1 = Struct_3(u_input.b, Struct_2(Struct_1(u_input.a.zyz, vec3<i32>(1i, u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -2147483647i), arg_0.yw)), -vec4<i32>(32591i, -2147483647i, u_input.b.x, -21807i), select(false, true, var_0.x || var_0.x), _wgslsmith_f_op_f32(step(arg_1.x, global0.x))), Struct_1(_wgslsmith_mult_vec3_u32(firstLeadingBit(u_input.a.zyy), ~u_input.a.yzy), -arg_0.ywx >> (reverseBits(vec3<u32>(u_input.a.x, u_input.a.x, 0u)) % vec3<u32>(32u)), ~vec4<i32>(34413i, u_input.b.x, -1i, u_input.b.x), all(vec4<bool>(var_0.x, true, false, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-516f)))), abs(_wgslsmith_add_i32(2147483647i, arg_0.x)), Struct_1(u_input.a.xyz, countOneBits(select(arg_0.ywy, arg_0.xwz, vec3<bool>(false, arg_3.x, arg_3.x))), _wgslsmith_mult_vec4_i32(min(vec4<i32>(1i, u_input.b.x, arg_0.x, arg_0.x), arg_0), select(vec4<i32>(arg_0.x, arg_0.x, u_input.b.x, -60940i), arg_0, var_0.x)), select(arg_3.x, false, false) && (global0.x == arg_2), arg_1.x), Struct_1(_wgslsmith_div_vec3_u32(u_input.a.yyy, u_input.a.xzy) & u_input.a.www, abs(vec3<i32>(84109i, arg_0.x, u_input.b.x)) >> (~vec3<u32>(u_input.a.x, 30016u, u_input.a.x) % vec3<u32>(32u)), -firstTrailingBit(vec4<i32>(u_input.b.x, arg_0.x, arg_0.x, 1i)), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), arg_3.yx, 831f);
    let var_2 = !arg_3;
    return -11329i;
}

fn func_2() -> f32 {
    global0 = vec3<f32>(1424f, 1f, _wgslsmith_f_op_f32(global0.x - global1.x));
    let var_0 = _wgslsmith_f_op_vec2_f32(-global1.xz);
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(515f, global1.x, -1102f), vec3<f32>(538f, 1340f, -1131f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1194f, global0.x, 525f)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1193f, -1351f, -725f) * vec3<f32>(-1109f, global1.x, 2159f))))), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_add_i32(0i, u_input.b.x), 2147483647i), u_input.b.x, ~firstTrailingBit(u_input.b.x), min(_wgslsmith_dot_vec3_i32(u_input.b >> (vec3<u32>(23216u, 20013u, u_input.a.x) % vec3<u32>(32u)), u_input.b), func_3(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i), var_0, global0.x, vec4<bool>(false, false, false, false)) >> (_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(u_input.a.x, 25809u, u_input.a.x, 90861u)) % 32u))), select(vec4<bool>(all(vec3<bool>(false, true, false)), false, (-860f == var_0.x) & false, false), vec4<bool>(true, true, true, true), vec4<bool>(all(vec4<bool>(false, false, true, true)) | false, true, false, select(0u, 4294967295u, false) >= ~u_input.a.x)), u_input.a.xx);
    global1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, _wgslsmith_f_op_f32(-global1.x), global1.x));
    global1 = _wgslsmith_f_op_vec3_f32(trunc(var_1.a));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(sign(-1154f)))))) - global0.x);
}

fn func_1() -> f32 {
    var var_0 = u_input.a.x;
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(419f, global1.x, global1.x))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.x, global0.x)), -245f), _wgslsmith_f_op_f32(global0.x + global1.x), -870f) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, -603f, -506f))))));
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-194f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-647f - global0.x), 295f)))), _wgslsmith_f_op_f32(func_2()), global1.x);
    var_0 = _wgslsmith_mod_u32(0u, 9464u);
    global1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-367f, _wgslsmith_f_op_f32(f32(-1f) * -545f), _wgslsmith_f_op_f32(-1916f + _wgslsmith_f_op_f32(-931f - 578f))), vec3<f32>(_wgslsmith_f_op_f32(sign(-835f)), _wgslsmith_f_op_f32(904f + _wgslsmith_f_op_f32(f32(-1f) * -541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -951f)))));
    return _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x - 559f)))))), _wgslsmith_div_f32(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -677f)), global0.x) != global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<f32>(_wgslsmith_f_op_f32(select(global1.x, _wgslsmith_f_op_f32(func_1()), true)), global0.x, global0.x);
    var var_0 = _wgslsmith_clamp_u32(28372u, u_input.a.x & u_input.a.x, (select(~u_input.a.x, _wgslsmith_sub_u32(46950u, 1u), false) << ((21829u ^ u_input.a.x) % 32u)) ^ 4294967295u);
    var var_1 = abs(firstLeadingBit(vec3<u32>(~(~1u), abs(13329u), ~6598u)));
    let var_2 = !select(!any(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true)), u_input.b.x == 1i, true);
    var var_3 = vec2<u32>((4294967295u >> (_wgslsmith_sub_u32(7683u, var_1.x) % 32u)) >> (14478u % 32u), u_input.a.x);
    var_0 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer((u_input.b.yx ^ u_input.b.zy) << (vec2<u32>(var_1.x, var_3.x ^ _wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(12974u, 21798u, 4294967295u, var_3.x))) % vec2<u32>(32u)), -2147483647i, ~vec4<u32>(~23956u, select(_wgslsmith_div_u32(30211u, u_input.a.x), ~46689u, any(vec3<bool>(true, false, var_2))), 17753u, u_input.a.x), u_input.b.yy);
}

