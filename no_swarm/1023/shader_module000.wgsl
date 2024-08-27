struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<f32>,
    d: f32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: u32,
    c: Struct_2,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
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

var<private> global0: i32 = 2147483647i;

var<private> global1: Struct_1 = Struct_1(-50934i, true, vec4<f32>(-414f, -897f, 232f, 295f), -376f, vec3<bool>(false, false, false));

var<private> global2: array<Struct_3, 13>;

var<private> global3: vec2<f32>;

var<private> global4: vec4<i32> = vec4<i32>(1i, i32(-2147483648), -13843i, 1i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec3<u32>, arg_2: Struct_4, arg_3: u32) -> u32 {
    global0 = _wgslsmith_dot_vec2_i32(abs(max(vec2<i32>(77074i, global4.x), vec2<i32>(52950i, ~(-1i)))), select(abs(vec2<i32>(31467i, -1i)), (~vec2<i32>(u_input.c, 0i) << (abs(arg_1.yy) % vec2<u32>(32u))) << (~(~vec2<u32>(1u, arg_2.b)) % vec2<u32>(32u)), select(!vec2<bool>(global1.e.x, false), arg_2.a.yx, select(vec2<bool>(true, true), vec2<bool>(true, false), arg_2.a.yx))));
    var var_0 = _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(33107u, 97960u, 0u), 27920u), vec2<u32>(_wgslsmith_mult_u32(~0u, arg_3), u_input.d));
    let var_1 = -2147483647i;
    var var_2 = global3.x;
    global0 = i32(-1i) * -2147483647i;
    return firstLeadingBit(countOneBits(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 49481u, 4294967295u), vec3<u32>(4294967295u, 5556u, 32527u))) | 4294967295u);
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_3(firstLeadingBit(vec3<u32>(4294967295u, _wgslsmith_div_u32(70763u, func_3(global1.d, vec3<u32>(4294967295u, u_input.a, u_input.d), Struct_4(global1.e, 14666u, Struct_2(global4.xy), global4.x), 37380u)), 4710u)));
    global4 = -_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(max(vec4<i32>(global4.x, global4.x, global4.x, -2613i) ^ vec4<i32>(global4.x, u_input.c, -7255i, -11624i), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, global1.a, 18917i, -29518i), vec4<i32>(u_input.c, u_input.c, global1.a, global4.x), vec4<i32>(global4.x, global1.a, global1.a, global4.x))), vec4<i32>(max(-1i, 1i), global4.x ^ 2147483647i, global4.x, -5258i), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.a, global4.x, global4.x, global4.x), ~vec4<i32>(u_input.c, u_input.c, global1.a, 5524i))), -(_wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, global4.x, u_input.c, 4182i), vec4<i32>(1i, 1i, 1i, 18441i)) & _wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 26715i, 2147483647i, global4.x), vec4<i32>(global1.a, 2147483647i, -2147483647i, global1.a), vec4<i32>(global4.x, 15529i, 2147483647i, global1.a))));
    let var_1 = global1.c;
    global3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -392f), global1.c.x)));
    let var_2 = var_0.a;
    return vec4<i32>(~global4.x, _wgslsmith_add_i32(global1.a, u_input.c), u_input.c, max(global4.x, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(global1.a, 1i, u_input.c, global1.a)), vec4<i32>(select(2147483647i, u_input.c, global1.e.x), _wgslsmith_div_i32(global4.x, -9665i), u_input.c ^ u_input.c, -10784i))));
}

fn func_4(arg_0: f32, arg_1: vec4<i32>) -> Struct_1 {
    global2 = array<Struct_3, 13>();
    global1 = Struct_1(u_input.c, true, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global3.x + global1.d), _wgslsmith_f_op_f32(-152f - arg_0), _wgslsmith_f_op_f32(ceil(-1358f)), _wgslsmith_f_op_f32(step(arg_0, 158f))) + _wgslsmith_f_op_vec4_f32(round(global1.c))))), -1000f, vec3<bool>(all(global1.e), select(!global1.e.x, true, true), true));
    var var_0 = 502f;
    global2 = array<Struct_3, 13>();
    global1 = Struct_1(u_input.c ^ abs((global4.x << (u_input.a % 32u)) | ~1i), any(!select(vec4<bool>(true, global1.e.x, global1.b, global1.e.x), !vec4<bool>(global1.e.x, false, global1.b, true), false == global1.b)), vec4<f32>(-120f, arg_0, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1431f))), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global1.c.x, 410f, global1.b | false)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(505f * -749f) + global3.x)), select(global1.e, global1.e, !(!global1.e.x && (global1.b != global1.b))));
    return Struct_1(firstLeadingBit(0i), !all(!select(global1.e, vec3<bool>(global1.b, true, true), global1.e)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.c + vec4<f32>(1585f, global3.x, global1.d, arg_0))) + global1.c), vec4<f32>(global1.c.x, -221f, _wgslsmith_f_op_f32(-277f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 1512f))), 762f, !(!(!(!global1.e))));
}

fn func_1(arg_0: vec3<i32>, arg_1: vec4<u32>) -> Struct_1 {
    global1 = func_4(global3.x, func_2());
    let var_0 = global1.c;
    global0 = global4.x;
    let var_1 = Struct_3(arg_1.wwx);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.x, global1.d)))))));
    return func_4(func_4(var_0.x, vec4<i32>(1i, 1i, global4.x, ~global4.x >> (4294967295u % 32u))).d, firstLeadingBit(_wgslsmith_div_vec4_i32(max(-vec4<i32>(0i, -1i, arg_0.x, -49396i), _wgslsmith_add_vec4_i32(vec4<i32>(-6359i, 1i, 2147483647i, global1.a), vec4<i32>(-6730i, 1i, u_input.c, 0i))), vec4<i32>(u_input.c, arg_0.x, -2147483647i, global4.x) ^ ~vec4<i32>(global1.a, arg_0.x, u_input.c, arg_0.x))));
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_2) -> Struct_3 {
    global4 = vec4<i32>(global4.x, _wgslsmith_dot_vec3_i32(-vec3<i32>(arg_2.a, 0i, 0i), (global4.wwy & vec3<i32>(-16996i, 64740i, global4.x)) & vec3<i32>(arg_3.a.x, u_input.c, arg_2.a)), global1.a, ~arg_3.a.x << (~(~0u) % 32u)) & vec4<i32>(~(-39302i), 86030i, _wgslsmith_sub_i32(-arg_2.a, u_input.c), 0i);
    let var_0 = vec2<f32>(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global3.x), 255f)), ~_wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -1i, u_input.c, global1.a), vec4<i32>(0i, 5529i, 0i, global1.a))).c.x, 126f);
    global2 = array<Struct_3, 13>();
    return global2[_wgslsmith_index_u32(arg_0.x, 13u)];
}

fn func_6(arg_0: Struct_3) -> Struct_4 {
    var var_0 = func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x + _wgslsmith_f_op_f32(min(global3.x, 750f)))))), max(select(select(vec4<i32>(-75587i, 26642i, u_input.c, -19246i) | vec4<i32>(0i, global1.a, 33083i, 20215i), -vec4<i32>(2147483647i, global4.x, global4.x, global4.x), select(vec4<bool>(true, global1.b, false, global1.e.x), vec4<bool>(false, true, global1.e.x, false), global1.b)), ~abs(vec4<i32>(global1.a, 49835i, global1.a, 1i)), false), abs(vec4<i32>(u_input.c, 2147483647i, 0i, _wgslsmith_clamp_i32(global4.x, u_input.c, 2147483647i))))).e.x;
    global4 = min(~vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(52159i, 0i, global1.a), global4.yyz), func_1(vec3<i32>(-30133i, 2147483647i, -18828i), vec4<u32>(42251u, 4294967295u, 17991u, 31993u)).a, _wgslsmith_add_i32(global4.x, u_input.c), countOneBits(u_input.c)) ^ (vec4<i32>(func_4(-1000f, vec4<i32>(global1.a, 2147483647i, global4.x, global4.x)).a, func_4(-293f, vec4<i32>(0i, global4.x, u_input.c, global4.x)).a, u_input.c, countOneBits(2147483647i)) >> (vec4<u32>(~61548u, arg_0.a.x, arg_0.a.x >> (56091u % 32u), ~arg_0.a.x) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(abs(reverseBits(vec4<i32>(global1.a, 2147483647i, global1.a, 1i))), ~(vec4<i32>(global4.x, 0i, -2147483647i, global1.a) ^ vec4<i32>(u_input.c, global4.x, u_input.c, global4.x))));
    global3 = global1.c.zy;
    var_0 = true;
    let var_1 = !vec2<bool>(all(!select(vec4<bool>(global1.b, false, global1.b, true), vec4<bool>(global1.e.x, true, global1.b, global1.e.x), vec4<bool>(true, true, true, global1.b))), !(!global1.b));
    return Struct_4(select(select(!global1.e, select(vec3<bool>(false, global1.e.x, true), !global1.e, !global1.e), var_1.x), vec3<bool>(false, false, all(var_1) | global1.b), vec3<bool>(global1.e.x, global1.e.x, global1.e.x)), 67144u, Struct_2(abs(vec2<i32>(-global4.x, reverseBits(0i)))), 1i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(vec3<u32>(~u_input.d & _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.b, 17670u), vec3<u32>(u_input.b, u_input.b, 77051u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, u_input.d), u_input.b, 1u), 16268u), vec2<u32>(4294967295u, u_input.b), func_1(-global4.wzz | vec3<i32>(u_input.c, 7579i, global1.a), vec4<u32>(u_input.d, reverseBits(0u), _wgslsmith_mult_u32(26811u, 1u), select(0u, u_input.a, false))), Struct_2(-(vec2<i32>(-2147483647i, global4.x) | global4.yx))));
    let var_1 = true;
    let var_2 = !select(vec4<bool>(true, !(u_input.c <= 2147483647i), true, (var_0.b > var_0.b) || (var_0.c.a.x < -1i)), !(!(!vec4<bool>(var_1, true, true, var_0.a.x))), select(!select(vec4<bool>(false, true, true, true), vec4<bool>(var_1, var_0.a.x, var_1, var_0.a.x), vec4<bool>(var_1, global1.e.x, false, false)), !(!vec4<bool>(global1.e.x, false, global1.e.x, false)), !func_4(1013f, vec4<i32>(var_0.d, global4.x, -33141i, -11071i)).b));
    var var_3 = 2147483647i;
    var var_4 = func_5(~(~firstLeadingBit(vec3<u32>(57297u, var_0.b, var_0.b)) | vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(22262u, 57918u), vec2<u32>(var_0.b, 0u)), u_input.b, ~var_0.b)), _wgslsmith_add_vec2_u32(vec2<u32>(~46212u, select(31219u, var_0.b, false)), vec2<u32>(~(~u_input.d), ~u_input.d)), Struct_1(global1.a, var_1, _wgslsmith_f_op_vec4_f32(global1.c - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global1.c), global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(global1.d * 139f))), vec3<bool>(!var_0.a.x, false, var_2.x)), func_6(Struct_3(~vec3<u32>(4294967295u, 1u, 104929u))).c);
    let var_5 = Struct_2(var_0.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(-8460i);
}

