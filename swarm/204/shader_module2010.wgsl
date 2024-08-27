struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_4,
    c: Struct_4,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 16> = array<i32, 16>(-1i, -1i, -44352i, 68524i, 17581i, -783i, 1i, -1i, 1i, 2147483647i, 1i, i32(-2147483648), 1i, 61986i, 0i, 0i);

var<private> global1: vec3<f32>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 0u, 2092u), vec4<i32>(0i, -55393i, -1i, 3724i), vec4<bool>(true, true, true, true));

var<private> global3: vec4<f32> = vec4<f32>(-1065f, 1801f, 183f, 741f);

var<private> global4: i32 = 84385i;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec4<u32>) -> u32 {
    global0 = array<i32, 16>();
    global4 = ~(~2147483647i);
    let var_0 = Struct_1(vec3<u32>(17495u, abs(~arg_0.x), global2.a.x), -_wgslsmith_sub_vec4_i32(global2.b << ((vec4<u32>(15208u, 93008u, 82234u, 22431u) | vec4<u32>(u_input.b, 4294967295u, 1u, arg_0.x)) % vec4<u32>(32u)), global2.b), select(vec4<bool>(any(select(global2.c.zy, global2.c.ww, vec2<bool>(false, global2.c.x))), any(!vec3<bool>(global2.c.x, global2.c.x, true)), any(vec4<bool>(global2.c.x, false, true, global2.c.x)), global2.c.x), global2.c, !(u_input.e.x != min(-23171i, global2.b.x))));
    var var_1 = global2.b.x;
    let var_2 = min(_wgslsmith_mult_u32(0u, u_input.d), ~countOneBits(1u));
    return select(_wgslsmith_dot_vec2_u32(~max(arg_0.wz, vec2<u32>(var_0.a.x, 14372u)), ~countOneBits(countOneBits(arg_0.xw))), u_input.a, !(true | all(vec4<bool>(false, var_0.c.x, global2.c.x, var_0.c.x))) | !all(select(vec2<bool>(true, true), vec2<bool>(global2.c.x, true), false)));
}

fn func_2(arg_0: f32) -> bool {
    var var_0 = Struct_5(min(vec3<u32>(~u_input.b, u_input.d >> (func_3(vec4<u32>(9832u, 82552u, global2.a.x, 38710u)) % 32u), u_input.d), global2.a), Struct_4(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -837f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.x - -747f)) + -316f), 0u & firstTrailingBit(abs(64342u)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, 2204u, 409u), vec3<u32>(1u, global2.a.x, 902u)) <= 0u, (1u ^ u_input.a) ^ (25304u >> (1u % 32u))), Struct_4(true || global2.c.x, -270f, firstLeadingBit(~(~10796u)), global2.c.x, 24461u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, global2.a.x) & vec3<u32>(57168u, global2.a.x, 1u), global2.a) % 32u)), _wgslsmith_div_u32(~u_input.b, reverseBits(~(u_input.a | global2.a.x))));
    return global2.c.x;
}

fn func_1() -> Struct_4 {
    let var_0 = Struct_1(vec3<u32>(u_input.b, ~(~u_input.a), _wgslsmith_mult_u32(59509u, ~global2.a.x)), vec4<i32>(-1i, -28830i, -19777i, global0[_wgslsmith_index_u32(~countOneBits(~global2.a.x), 16u)]), !(!(!global2.c)));
    global3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(224f, -694f, -648f, 723f)) * vec4<f32>(global3.x, 2203f, global1.x, global3.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(global3.x, -537f), global3.x, _wgslsmith_f_op_f32(global1.x * 292f), global1.x))), select(vec4<bool>(false, false, global2.c.x, false), vec4<bool>(true, global2.c.x, false, global2.c.x), func_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-global3.x)))))));
    var var_1 = max(vec4<i32>(-global0[_wgslsmith_index_u32(20037u, 16u)], _wgslsmith_dot_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(2888u, 16u)], 48644i), min(u_input.c, vec2<i32>(var_0.b.x, 0i))), 1i, _wgslsmith_mult_i32(1i, global0[_wgslsmith_index_u32(4294967295u, 16u)])) | ~reverseBits(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b.x, u_input.e.x, global2.b.x, 0i), vec4<i32>(1i, u_input.e.x, -55392i, -12566i))), var_0.b);
    var var_2 = Struct_3(Struct_2(global3.xxy, var_0, all(select(vec2<bool>(false, global2.c.x), vec2<bool>(global2.c.x, false), global2.c.yy)) | any(global2.c.ww)));
    let var_3 = global2.a.yz;
    return Struct_4(!var_2.a.b.c.x, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1058f + -1530f) * _wgslsmith_f_op_f32(trunc(504f))) - global1.x))), u_input.d, global2.c.x, _wgslsmith_mult_u32(var_3.x, var_3.x | (39012u | ~var_0.a.x)));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4) -> Struct_3 {
    let var_0 = ~reverseBits(36943u);
    global3 = vec4<f32>(_wgslsmith_f_op_f32(global1.x + arg_1.b), global3.x, 1210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -394f) + -191f));
    let var_1 = -1i;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(abs(-723f)), _wgslsmith_f_op_f32(ceil(-1628f)), _wgslsmith_div_f32(227f, -618f)))), Struct_1(global2.a, firstLeadingBit(_wgslsmith_clamp_vec4_i32(global2.b, global2.b ^ vec4<i32>(var_1, var_1, -26871i, var_1), -global2.b)), select(!select(vec4<bool>(arg_1.d, true, arg_1.a, true), global2.c, vec4<bool>(true, true, global2.c.x, arg_1.d)), global2.c, func_2(_wgslsmith_f_op_f32(arg_0.x - -248f)))), countOneBits(~u_input.a) >= _wgslsmith_mod_u32(func_1().e, 45146u));
    let var_3 = ~(~(var_2.b.a.zx ^ _wgslsmith_mult_vec2_u32(countOneBits(vec2<u32>(0u, 68432u)), var_2.b.a.yy)));
    return Struct_3(Struct_2(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 656f, _wgslsmith_f_op_f32(-var_2.a.x)), var_2.a), var_2.b, true));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = -27652i;
    let var_0 = func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_div_f32(global1.x, -336f), -627f)))), func_1());
    var var_1 = _wgslsmith_mod_vec2_u32(firstTrailingBit(~vec2<u32>(~1u, ~0u)), vec2<u32>(global2.a.x, _wgslsmith_mod_u32(reverseBits(func_3(vec4<u32>(0u, global2.a.x, 28113u, 0u))), ~var_0.a.b.a.x >> (var_0.a.b.a.x % 32u))));
    var var_2 = var_0.a;
    let var_3 = !select(select(var_0.a.b.c.yxw, select(global2.c.yzx, select(vec3<bool>(false, var_0.a.b.c.x, var_2.c), var_2.b.c.wzy, false), !global2.c.yzz), !var_2.c), func_4(global1.yx, func_1()).a.b.c.wzz, any(var_2.b.c));
    let x = u_input.a;
    s_output = StorageBuffer(min(~vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a.b.a.x, 1u), global2.a.zz), countOneBits(0u)), ~max(vec2<u32>(var_0.a.b.a.x, 30487u) >> (vec2<u32>(4239u, 1u) % vec2<u32>(32u)), ~vec2<u32>(var_1.x, var_0.a.b.a.x))), ~2147483647i, global2.b.yzz, 1393u, global2.b.x >> (countOneBits(~4294967295u) % 32u));
}

