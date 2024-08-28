struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 9>;

var<private> global1: vec3<i32> = vec3<i32>(-1i, -15156i, 1i);

var<private> global2: vec4<f32> = vec4<f32>(220f, 655f, 783f, -270f);

var<private> global3: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_4) -> f32 {
    global0 = array<Struct_3, 9>();
    global0 = array<Struct_3, 9>();
    global3 = !vec2<bool>(false, all(vec4<bool>(true, false, arg_2, true)) | all(vec3<bool>(true, false, arg_2)));
    var var_0 = arg_3;
    var var_1 = Struct_1(~vec3<u32>(1u, _wgslsmith_add_u32(~var_0.b.a.x, 4294967295u), _wgslsmith_div_u32(arg_1.x, arg_1.x << (var_0.b.c % 32u))), _wgslsmith_div_vec4_f32(vec4<f32>(-669f, 347f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -112f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(304f, 1684f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(331f, -1073f, _wgslsmith_div_f32(arg_3.b.d.x, arg_3.b.d.x), 1000f) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, var_0.a, arg_3.b.d.x, 163f) + vec4<f32>(821f, global2.x, global2.x, -1000f)), _wgslsmith_f_op_vec4_f32(arg_3.b.b * var_0.b.b)))), u_input.a >> (arg_3.b.c % 32u), var_0.b.b.zx);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - _wgslsmith_f_op_f32(ceil(439f))));
}

fn func_4(arg_0: Struct_3, arg_1: f32, arg_2: vec3<f32>) -> vec2<bool> {
    var var_0 = ~(min(_wgslsmith_sub_u32(u_input.a ^ arg_0.c, ~arg_0.d.c), _wgslsmith_add_u32(max(arg_0.d.c, u_input.a), arg_0.d.c)) << (0u % 32u));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(arg_0.d.d.x * _wgslsmith_f_op_f32(sign(754f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(312f)), arg_1)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_2.x)))))), arg_0.d, _wgslsmith_div_vec3_i32(u_input.b.zxx, u_input.b.wzz));
    let var_2 = var_1.b;
    global1 = var_1.c;
    var var_3 = Struct_3(!vec3<bool>(all(vec4<bool>(global3.x, arg_0.b, arg_0.a.x, true)), false, any(arg_0.a)), global3.x && !select(true, arg_0.b || false, arg_0.a.x), var_2.c, Struct_1(_wgslsmith_mod_vec3_u32(arg_0.d.a, ~min(var_2.a, arg_0.d.a)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.b.b), vec4<f32>(arg_0.d.b.x, 443f, 1000f, var_2.d.x)), var_2.b)), 1u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(1731f - var_1.a), -442f))));
    return var_3.a.yz;
}

fn func_2(arg_0: vec3<f32>) -> vec2<bool> {
    var var_0 = !global3.x;
    var var_1 = Struct_4(global2.x, Struct_1(vec3<u32>(min(u_input.a >> (2766u % 32u), u_input.a), u_input.a, ~_wgslsmith_sub_u32(u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -100f, global2.x, global2.x)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.x, arg_0.x, global2.x, -846f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(354f, arg_0.x, -746f, -2287f), vec4<f32>(global2.x, arg_0.x, -383f, -228f), global3.x))))), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, u_input.a, u_input.a), vec3<u32>(13738u, u_input.a, 38759u))) | (min(u_input.a, u_input.a) << (u_input.a % 32u)), _wgslsmith_f_op_vec2_f32(exp2(arg_0.yx))), reverseBits(u_input.b.zww));
    global3 = !(!func_4(Struct_3(!vec3<bool>(true, false, global3.x), any(vec4<bool>(global3.x, global3.x, true, false)), firstTrailingBit(0u), Struct_1(vec3<u32>(u_input.a, u_input.a, 4294967295u), vec4<f32>(arg_0.x, -721f, 354f, 531f), 9840u, vec2<f32>(1002f, 3614f))), var_1.b.d.x, vec3<f32>(var_1.a, _wgslsmith_f_op_f32(func_3(u_input.b.yw, vec2<u32>(37696u, var_1.b.c), global3.x, Struct_4(-889f, Struct_1(vec3<u32>(27440u, var_1.b.a.x, var_1.b.c), var_1.b.b, 10014u, arg_0.zx), vec3<i32>(u_input.b.x, -31344i, global1.x)))), arg_0.x)));
    let var_2 = ~var_1.b.a.xz;
    global2 = var_1.b.b;
    return vec2<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -1601f)), 961f)) > arg_0.x, false);
}

fn func_1(arg_0: u32, arg_1: Struct_3) -> vec2<bool> {
    global3 = !(!select(select(arg_1.a.yz, arg_1.a.zx, !arg_1.a.xy), vec2<bool>(true != global3.x, arg_1.a.x), func_2(_wgslsmith_f_op_vec3_f32(select(arg_1.d.b.yww, vec3<f32>(225f, 1000f, -1170f), vec3<bool>(global3.x, false, true))))));
    let var_0 = arg_1.d.a;
    global0 = array<Struct_3, 9>();
    var var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(reverseBits(~global1.x), -17271i), -1i) << (~1u % 32u);
    let var_2 = _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(u_input.c & (vec2<i32>(-1i) * -vec2<i32>(u_input.b.x, u_input.b.x)), vec2<i32>(min(-1i ^ global1.x, -u_input.c.x), -13938i)), vec2<i32>(-1i, global1.x));
    return arg_1.a.yz;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec2<bool>(true, global3.x);
    let var_0 = global2.zx;
    global3 = func_1(u_input.a ^ select(u_input.a, abs(u_input.a << (u_input.a % 32u)), true), global0[_wgslsmith_index_u32(25795u, 9u)]);
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.x * 372f), _wgslsmith_div_f32(1154f, var_0.x), var_0.x, _wgslsmith_f_op_f32(global2.x + -1250f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, global2.x, global2.x, -191f)))))), _wgslsmith_sub_i32(reverseBits(global1.x ^ ~0i), reverseBits(global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-270f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.x)) * 1658f)))), abs(vec4<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 45887u, 56178u) << (vec4<u32>(4294967295u, u_input.a, u_input.a, 88379u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), ~vec2<u32>(14456u, 7788u)), countOneBits(_wgslsmith_add_u32(u_input.a, u_input.a)))));
}

