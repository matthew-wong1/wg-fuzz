struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: i32,
    e: f32,
}

struct Struct_5 {
    a: u32,
    b: Struct_3,
    c: u32,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<u32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 26> = array<i32, 26>(20219i, 0i, 0i, 30603i, i32(-2147483648), 2147483647i, 2147483647i, 0i, i32(-2147483648), i32(-2147483648), -12224i, i32(-2147483648), 10766i, 0i, 32915i, 1i, -8776i, 14846i, 1i, 18176i, -3625i, 0i, 87320i, 0i, 2147483647i, -91716i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<i32>, arg_2: vec2<bool>) -> vec2<u32> {
    global0 = Struct_4(vec4<bool>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global0.e, global0.e)))) >= -1017f, true, false, !arg_0.x), global0.b, global0.c, 1i, -505f);
    global1 = array<i32, 26>();
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(261f)), -849f)))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global0.e)), _wgslsmith_f_op_f32(round(global0.e)))), global0.e)));
    var var_1 = Struct_1(u_input.c.wwx);
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, 1139f))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e, global0.e), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.e, -482f)), arg_0.yy)))))));
    return ~_wgslsmith_mult_vec2_u32(select(reverseBits(vec2<u32>(0u, u_input.b)), vec2<u32>(abs(1u), 0u), arg_0.x), vec2<u32>(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.a), vec3<u32>(u_input.a, 0u, 8993u))) >> (abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 1u))) % vec2<u32>(32u)));
}

fn func_2() -> vec3<f32> {
    var var_0 = Struct_5(2583u << (~_wgslsmith_dot_vec2_u32(func_3(vec3<bool>(true, global0.b.a, global0.b.a), u_input.c.wxx, global0.a.xy), vec2<u32>(51887u, 1u)) % 32u), Struct_3(select(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global0.c.a.x, global0.c.a.x, -34975i, u_input.c.x), vec4<i32>(global0.d, -10668i, global1[_wgslsmith_index_u32(4294967295u, 26u)], u_input.c.x)), u_input.c ^ vec4<i32>(global1[_wgslsmith_index_u32(5905u, 26u)], global1[_wgslsmith_index_u32(3236u, 26u)], 34767i, global0.d)), u_input.c, !(!global0.a)), _wgslsmith_f_op_f32(step(global0.e, -1915f)), global0.d), 1u, _wgslsmith_f_op_f32(exp2(global0.e)));
    let var_1 = vec4<u32>(_wgslsmith_mult_u32(u_input.b | var_0.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 1u, u_input.a), vec3<u32>(13939u, 0u, 4294967295u), vec3<u32>(0u, 7605u, var_0.a)), vec3<u32>(17019u, var_0.a, var_0.c)), ~vec3<u32>(var_0.c, u_input.b, u_input.a))), ~(~u_input.b), abs(u_input.a), ~(~u_input.a & max(26629u, 0u)));
    var var_2 = Struct_5(0u, Struct_3(countOneBits(-u_input.c | _wgslsmith_mult_vec4_i32(u_input.c, u_input.c)), _wgslsmith_f_op_f32(var_0.d * 1000f), u_input.c.x), ~select(var_0.a, ~34708u, true), -1209f);
    let var_3 = var_2.b;
    let var_4 = 4294967295u;
    return vec3<f32>(var_0.d, global0.e, 1873f);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_2 {
    global1 = array<i32, 26>();
    global1 = array<i32, 26>();
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2());
    var var_1 = 4294967295u;
    let var_2 = !(!(!(!global0.a.ywz)));
    return arg_1;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_3 {
    global0 = Struct_4(vec4<bool>(all(global0.a.xz), false, arg_1.a & ((2031u << (arg_0 % 32u)) > ~u_input.b), !(firstTrailingBit(5660i) != global0.c.a.x)), arg_1, global0.c, global0.c.a.x, _wgslsmith_div_f32(global0.e, 1379f));
    let var_0 = _wgslsmith_dot_vec2_i32(-min(_wgslsmith_add_vec2_i32(u_input.c.wy << (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), -vec2<i32>(u_input.c.x, u_input.c.x)), vec2<i32>(u_input.c.x, -58026i)), vec2<i32>(-84673i, _wgslsmith_mult_i32(global0.d, global0.c.a.x)));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-global1[_wgslsmith_index_u32(u_input.b, 26u)], -23721i) << ((~abs(vec2<u32>(u_input.b, 12457u)) >> (vec2<u32>(u_input.a, 41742u | u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u)), select(global0.c.a.zx, vec2<i32>(-1i << (arg_0 % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(u_input.c.xwx, u_input.c.zww), u_input.c.zyx)), global0.a.wx));
    var var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-958f, global0.e)) * _wgslsmith_div_vec2_f32(vec2<f32>(-1017f, global0.e), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.e, -370f) + vec2<f32>(global0.e, global0.e))))))));
    var var_3 = global0.a.x;
    return Struct_3(u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.e)))) + global0.e))), ~_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_add_i32(countOneBits(0i), abs(global0.c.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(!(!(!select(global0.a.zxz, vec3<bool>(global0.b.a, global0.b.a, global0.a.x), vec3<bool>(false, false, global0.a.x)))), !(!select(!global0.a.zxz, global0.a.wxw, all(global0.a))), !any(global0.a));
    let var_1 = func_4(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 0u, 13641u), vec4<u32>(u_input.b, u_input.a, 1u, 32762u)))), func_1(global0.c, global0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-930f, 1000f, 937f, global0.e)))));
    var var_2 = !select(select(vec3<bool>(select(var_0.x, false, false), all(vec2<bool>(var_0.x, true)), 229f == var_1.b), !select(global0.a.zyx, vec3<bool>(false, var_0.x, false), global0.a.xwy), !vec3<bool>(var_0.x, var_0.x, global0.a.x)), vec3<bool>(select(true, true, var_1.b < -774f), any(var_0.yy), any(global0.a)), select(vec3<bool>(!var_0.x, !var_0.x, true), select(global0.a.xwz, select(vec3<bool>(global0.a.x, false, false), global0.a.yyy, true), !global0.a.zxy), global0.a.x));
    var var_3 = global0.c;
    global0 = Struct_4(!select(vec4<bool>(!var_2.x, true, all(vec2<bool>(true, false)), !var_0.x), vec4<bool>(true, var_0.x, true, select(false, global0.b.a, global0.a.x)), global0.b.a), Struct_2(!global0.a.x || var_0.x), Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(var_3.a, u_input.c.xxz), vec3<i32>(-13514i, var_1.c, 0i)) << (_wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.a, 77352u, u_input.b), vec3<u32>(15223u, 0u, u_input.b) << (vec3<u32>(1u, u_input.b, u_input.b) % vec3<u32>(32u)), firstLeadingBit(vec3<u32>(54151u, 13840u, u_input.a))) % vec3<u32>(32u))), var_3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1154f)))) + -795f));
    global1 = array<i32, 26>();
    let var_4 = abs(vec3<u32>(_wgslsmith_mod_u32(min(~46601u, u_input.a & u_input.b), 1u), u_input.a, countOneBits(1u)));
    var_3 = Struct_1(var_1.a.zxz);
    var var_5 = vec3<u32>(_wgslsmith_sub_u32(0u, ~_wgslsmith_clamp_u32(4294967295u, var_4.x, var_4.x >> (5459u % 32u))), u_input.a, 0u);
    let x = u_input.a;
    s_output = StorageBuffer(global0.e, var_1.c, ~reverseBits(vec4<u32>(_wgslsmith_sub_u32(4294967295u, 1u), u_input.b, var_5.x, var_5.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(995f))))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-134f, global0.e, 638f))));
}

