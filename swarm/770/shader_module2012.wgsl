struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

var<private> global2: Struct_3 = Struct_3(2147483647i, Struct_1(true, vec3<f32>(-715f, 357f, -1221f), 25146u, -572f));

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_dot_vec2_i32(select(min(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.e.x, u_input.a), vec2<i32>(28879i, u_input.a)), u_input.d), firstLeadingBit(firstLeadingBit(u_input.e.yw)), vec2<bool>(true, global2.b.a)), ~(vec2<i32>(u_input.a << (0u % 32u), abs(u_input.a)) | select(vec2<i32>(u_input.a, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, u_input.a), vec2<i32>(-27795i, u_input.e.x), u_input.e.wx), vec2<bool>(true, true))));
    let var_1 = 4415u;
    var var_2 = Struct_2(!(!(!(!vec4<bool>(global0.a, global2.b.a, global0.a, true)))));
    var_2 = Struct_2(var_2.a);
    var var_3 = true;
    return false;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = select(select(vec3<bool>(!func_3(-512f), false, true), select(vec3<bool>(global2.b.a, global0.a, false), select(!vec3<bool>(arg_0, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(global0.a, global0.a, true), vec3<bool>(global0.a, global0.a, arg_0), !global2.b.a)), select(select(vec3<bool>(true, global0.a, false), select(vec3<bool>(true, global0.a, true), vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, false)), !vec3<bool>(false, global0.a, true)), select(!vec3<bool>(global0.a, global0.a, global0.a), select(vec3<bool>(global0.a, false, global2.b.a), vec3<bool>(false, global0.a, false), global0.a), select(vec3<bool>(false, global2.b.a, false), vec3<bool>(global2.b.a, true, true), arg_0)), !(global2.b.d <= -2118f))), select(!select(!vec3<bool>(global2.b.a, arg_0, true), !vec3<bool>(global2.b.a, global2.b.a, true), select(vec3<bool>(false, global2.b.a, global0.a), vec3<bool>(true, arg_0, global2.b.a), vec3<bool>(true, global0.a, true))), select(select(!vec3<bool>(global2.b.a, global0.a, true), select(vec3<bool>(false, false, true), vec3<bool>(false, arg_0, true), global2.b.a), select(vec3<bool>(global0.a, arg_0, false), vec3<bool>(arg_0, false, global0.a), global2.b.a)), select(vec3<bool>(false, false, global0.a), select(vec3<bool>(arg_0, true, global0.a), vec3<bool>(true, arg_0, global2.b.a), false), vec3<bool>(false, global0.a, arg_0)), vec3<bool>(global0.a, any(vec2<bool>(arg_0, global2.b.a)), global2.b.a)), !select(vec3<bool>(true, true, false), select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(false, global2.b.a, false), vec3<bool>(global0.a, true, false)), true & global2.b.a)), global2.b.a);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-285f, global1.x), global1.x)), global1.x, _wgslsmith_f_op_f32(global2.b.d * _wgslsmith_f_op_f32(global0.d + _wgslsmith_f_op_f32(global1.x + -1362f)))) - global0.b);
    let var_2 = Struct_3(_wgslsmith_sub_i32(countOneBits(1i), 16374i), global2.b);
    var_0 = vec3<bool>(false, global0.a, false);
    return _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, global0.d) - -1352f)))), _wgslsmith_f_op_f32(-1537f * var_2.b.d), !(!any(select(var_0.zx, vec2<bool>(false, true), vec2<bool>(global0.a, true))))));
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    let var_0 = 13250u;
    let var_1 = arg_2.b.b.x;
    var var_2 = global0.a;
    var var_3 = vec2<u32>(global2.b.c, abs(arg_2.b.c));
    let var_4 = arg_2;
    return arg_1;
}

fn func_1(arg_0: Struct_2) -> f32 {
    let var_0 = Struct_2(vec4<bool>(any(!arg_0.a), ~min(global2.a, -1i) != 26206i, all(arg_0.a.zx), !(1000f == global0.b.x)));
    global0 = func_4(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(all(vec4<bool>(false, global2.b.a, false, global2.b.a)))), _wgslsmith_f_op_f32(min(-2440f, _wgslsmith_f_op_f32(-global2.b.d))))), global2.b, Struct_3(43960i, Struct_1(var_0.a.x, vec3<f32>(_wgslsmith_f_op_f32(trunc(-411f)), _wgslsmith_f_op_f32(floor(global1.x)), _wgslsmith_f_op_f32(-1702f + global0.b.x)), _wgslsmith_mult_u32(global0.c, 22282u) | global2.b.c, _wgslsmith_f_op_f32(-934f * -968f))));
    let var_1 = Struct_3(37719i, global2.b);
    var var_2 = countOneBits(~((vec3<u32>(var_1.b.c, 4294967295u, 0u) & vec3<u32>(12745u, global0.c, var_1.b.c)) & countOneBits(~vec3<u32>(63834u, 31662u, 16905u))));
    var var_3 = false;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1274f * global0.d), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-520f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1151f, global1.x)) + -918f)))), _wgslsmith_f_op_f32(func_1(Struct_2(vec4<bool>(global0.a, global2.b.a | global2.b.a, !global0.a, false || global0.a)))), _wgslsmith_f_op_f32(global0.b.x * 1000f));
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(140f, global2.b.b.x, global2.b.b.x)) - _wgslsmith_f_op_vec3_f32(global0.b * vec3<f32>(global2.b.d, var_0.x, global1.x))), vec3<f32>(779f, _wgslsmith_f_op_f32(select(global1.x, global1.x, true)), -1060f), global2.b.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.b - vec3<f32>(2503f, -173f, 919f)) - _wgslsmith_f_op_vec3_f32(trunc(var_0.wyz)))) - vec3<f32>(502f, -157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-487f)))))));
    let var_1 = Struct_2(!(!select(!vec4<bool>(false, global2.b.a, global2.b.a, global2.b.a), !vec4<bool>(global0.a, global2.b.a, global2.b.a, false), vec4<bool>(true, global2.b.a, global0.a, false))));
    let var_2 = 2147483647i;
    global2 = Struct_3(-19707i | (max(_wgslsmith_add_i32(-2147483647i, var_2), u_input.a) | firstLeadingBit(_wgslsmith_mod_i32(global2.a, global2.a))), func_4(global2.b.d, global2.b, Struct_3(-32933i, Struct_1(true, global2.b.b, global2.b.c, _wgslsmith_f_op_f32(abs(1601f))))));
    let var_3 = -17764i;
    let var_4 = ~(~vec4<u32>(_wgslsmith_clamp_u32(29933u, u_input.c, 0u), 1u, _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.b.x, global0.c), 10943u), firstTrailingBit(u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(2204f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.d - global2.b.d) - _wgslsmith_f_op_f32(934f + global0.d)))))), _wgslsmith_div_vec3_i32(vec3<i32>(~(~(-2645i)), -2147483647i, var_2), abs(_wgslsmith_add_vec3_i32(vec3<i32>(var_2, -2147483647i, global2.a), _wgslsmith_clamp_vec3_i32(vec3<i32>(56536i, global2.a, global2.a), vec3<i32>(var_3, 4857i, global2.a), u_input.e.yxy)))), global2.a);
}

