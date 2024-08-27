struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: f32,
    d: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: f32,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 15>;

var<private> global1: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false));

var<private> global2: array<vec2<i32>, 18>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> bool {
    let var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, arg_2.a)), vec2<f32>(-858f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-604f))))));
    let var_1 = vec2<bool>(((~arg_1 < ~4294967295u) && true) | false, true);
    let var_2 = _wgslsmith_mod_vec2_i32(reverseBits(reverseBits(max(vec2<i32>(u_input.c.x, u_input.b.x), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), vec2<i32>(u_input.b.x, 23494i))))), vec2<i32>(u_input.c.x, u_input.c.x));
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.a))))), ~vec2<i32>(u_input.c.x, -1i));
    let var_4 = Struct_2(all(!(!(!var_1))), _wgslsmith_sub_u32(_wgslsmith_div_u32(arg_1 >> (select(4294967295u, u_input.d.x, true) % 32u), 1u), ~arg_1), -348f, -1i);
    return true | var_1.x;
}

fn func_2(arg_0: f32, arg_1: Struct_3) -> Struct_3 {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.d.x, 12739u), ~(_wgslsmith_clamp_vec3_u32(select(vec3<u32>(1u, 44061u, 0u), u_input.d.yzw, true), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 0u, 20965u), u_input.d.xzz), ~vec3<u32>(u_input.e, 4294967295u, u_input.d.x)) << (((u_input.d.zzw << (vec3<u32>(1u, u_input.e, 53196u) % vec3<u32>(32u))) >> (vec3<u32>(13160u, u_input.e, u_input.e) % vec3<u32>(32u))) % vec3<u32>(32u)))), 15u)];
    var var_1 = !any(vec4<bool>(true, u_input.b.x <= 39144i, func_3(global0[_wgslsmith_index_u32(var_0.b, 15u)], ~u_input.e, Struct_4(arg_0, var_0.b)), true));
    var_0 = Struct_4(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1931f))), _wgslsmith_f_op_f32(step(-199f, 383f)))), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_div_f32(-915f, arg_1.c), _wgslsmith_f_op_f32(-var_0.a)), 1292f, !(var_0.a == arg_1.a.x))), !(max(0u, 1u) == ~var_0.b))), ~abs(var_0.b));
    let var_2 = Struct_4(-1040f, ~u_input.d.x);
    var var_3 = _wgslsmith_div_vec2_u32(abs(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.d.wx, u_input.d.xy), ~u_input.d.xw)), firstTrailingBit(u_input.d.zz) | ~(~firstTrailingBit(u_input.d.ww)));
    return arg_1;
}

fn func_4(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: Struct_3, arg_3: Struct_2) -> f32 {
    global2 = array<vec2<i32>, 18>();
    global1 = array<vec3<bool>, 3>();
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-1320f * arg_3.c), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~(u_input.d.xww | u_input.d.yzz), ~vec3<u32>(u_input.a, 13053u, arg_0.x)), ~abs(~u_input.d.zww)));
    var var_1 = global0[_wgslsmith_index_u32(1u, 15u)];
    var_0 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(316f, -1121f)))))), _wgslsmith_mod_u32(~(~_wgslsmith_mod_u32(var_1.b, 0u)), _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(13283u, var_0.b, 66939u), vec3<u32>(arg_0.x, 24785u, arg_3.b), vec3<u32>(arg_0.x, 4294967295u, var_1.b)) ^ min(u_input.d.yxx, u_input.d.xwy), u_input.d.zxy)));
    return var_1.a;
}

fn func_1() -> Struct_3 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_mult_vec2_u32(~vec2<u32>(u_input.d.x, 9099u), ~vec2<u32>(u_input.a, u_input.e)), vec2<u32>(1u, u_input.a), func_2(-440f, Struct_3(vec2<f32>(-1015f, -1204f), vec2<f32>(1436f, 609f), 2003f)), Struct_2(any(vec4<bool>(false, true, false, true)), _wgslsmith_dot_vec2_u32(u_input.d.zy, u_input.d.zy), -708f, -2147483647i))), -1352f)));
    var var_1 = select(!select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), vec4<bool>(true, false, true, select(true, false, true)), true), select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(false, true, func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.d.x), 15u)], u_input.d.x, global0[_wgslsmith_index_u32(21628u, 15u)]), u_input.c.x > ~u_input.c.x), true), vec4<bool>(any(!global1[_wgslsmith_index_u32(u_input.e, 3u)]) || (u_input.d.x == max(u_input.a, 57573u)), any(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true)))), select(func_3(global0[_wgslsmith_index_u32(~21183u, 15u)], ~u_input.e, Struct_4(var_0.x, 0u)), true, true), func_3(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(u_input.d, u_input.d), vec4<u32>(17969u, u_input.e, u_input.a, u_input.e)), 15u)], ~reverseBits(4294967295u), Struct_4(_wgslsmith_f_op_f32(-var_0.x), ~u_input.e))));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-817f * -577f), var_0.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(select(-123f, _wgslsmith_f_op_f32(var_0.x * var_0.x), true)), var_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(225f, -226f), _wgslsmith_f_op_f32(f32(-1f) * -1073f)) - vec2<f32>(-406f, -1000f)))), _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(-var_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global1 = array<vec3<bool>, 3>();
    let var_1 = func_1();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.c, 249f) - vec2<f32>(-557f, 1000f)), var_1.a, any(vec3<bool>(var_0, var_0, var_0)))))), reverseBits(_wgslsmith_mod_vec2_i32(u_input.b.xx, -reverseBits(vec2<i32>(u_input.b.x, u_input.b.x)))));
    global0 = array<Struct_4, 15>();
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~max(firstLeadingBit(vec2<u32>(21906u, 32434u)), u_input.d.yy)), _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_f_op_f32(-var_1.b.x)), countOneBits(17874u & firstTrailingBit(1u)), min(~u_input.d.yxz, min(u_input.d.zwy, firstTrailingBit(select(u_input.d.zzy, vec3<u32>(0u, 20666u, 27169u), true)))));
}

