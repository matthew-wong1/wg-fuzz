struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<f32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -37317i;

var<private> global1: vec4<bool>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> i32 {
    global0 = _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(i32(-1i) * -12646i, _wgslsmith_sub_i32(u_input.b.x, 1i)), -2147483647i), -1i, u_input.b.x);
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(411f, 820f))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1818f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(-337f, 969f) * vec2<f32>(110f, 1469f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(1215f, -730f), vec2<f32>(421f, -2060f)))))))), -vec4<i32>(-71915i, max(u_input.a.x, u_input.a.x), _wgslsmith_clamp_i32(-1i, u_input.b.x, -23284i), -42798i) >> (vec4<u32>(_wgslsmith_mod_u32(select(u_input.c.x, 22555u, false), 4294967295u), 10727u, _wgslsmith_dot_vec2_u32(vec2<u32>(17924u, 45942u), ~vec2<u32>(44365u, u_input.c.x)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(26256u, u_input.c.x, u_input.c.x, u_input.c.x), u_input.c)) % vec4<u32>(32u)), select(select(global1.yy, global1.wy, global1.x), global1.zz, vec2<bool>(false, global1.x)));
    return ~reverseBits(52585i);
}

fn func_2(arg_0: bool, arg_1: vec4<bool>) -> Struct_1 {
    global0 = _wgslsmith_mult_i32(0i, -1i);
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f)))), vec2<f32>(1f, 1f), _wgslsmith_add_vec4_i32(vec4<i32>(-18384i, func_3(), -(u_input.b.x ^ -2147483647i), firstLeadingBit(u_input.a.x)), vec4<i32>(47907i, u_input.b.x << (66848u % 32u), abs(16017i), -10981i) >> (~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 67123u) % vec4<u32>(32u))), select(!(!vec2<bool>(false, global1.x)), select(vec2<bool>(false, false), select(!vec2<bool>(global1.x, global1.x), arg_1.xx, select(arg_1.wy, vec2<bool>(true, global1.x), global1.zy)), !(arg_1.x | false)), any(!arg_1.wy)));
    var var_1 = arg_1;
    var var_2 = arg_1;
    var_2 = select(arg_1, !arg_1, vec4<bool>(var_0.d.x, true, !any(vec2<bool>(false, true)), true));
    return Struct_1(var_0.a, var_0.b, select(-var_0.c, ~vec4<i32>(var_0.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-6895i, 29062i), u_input.a.yz), u_input.a.x ^ 0i, -u_input.b.x), vec4<bool>(false, select(false, true, var_0.c.x > u_input.a.x), all(select(global1.yzw, vec3<bool>(var_0.d.x, global1.x, false), false)), all(vec4<bool>(arg_1.x, false, false, var_0.d.x)))), select(var_0.d, arg_1.xy, false | (any(arg_1) | (true & arg_1.x))));
}

fn func_1(arg_0: i32, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = func_2(u_input.a.x >= 29811i, !vec4<bool>(select(true, !arg_1.x, all(global1.zzz)), all(vec4<bool>(true, false, false, arg_1.x)) & false, true, arg_1.x));
    let var_1 = select(true, arg_1.x, arg_1.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-920f - var_0.b.x), _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x + var_0.a))), !(_wgslsmith_f_op_f32(-var_0.b.x) <= _wgslsmith_f_op_f32(-212f * -724f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(func_2(true, vec4<bool>(false, var_1, var_1, true)).b, _wgslsmith_f_op_vec2_f32(var_0.b - var_0.b)) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_0.b.x, 277f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 1115f))), var_0.b)), vec4<i32>(arg_0, arg_0, -max(arg_0, -2147483647i), 1i), vec2<bool>(true, abs(_wgslsmith_add_i32(var_0.c.x, 2147483647i)) >= 59985i));
    let var_3 = true;
    var var_4 = func_2(true, vec4<bool>(2147483647i <= _wgslsmith_dot_vec2_i32(func_2(false, vec4<bool>(false, true, false, true)).c.zx, _wgslsmith_div_vec2_i32(u_input.b.xx, u_input.a.zx)), !func_2(true, vec4<bool>(true, arg_1.x, arg_1.x, var_1)).d.x | select(u_input.c.x >= u_input.c.x, !var_0.d.x, var_2.d.x && var_2.d.x), true, (u_input.c.x <= 26688u) | true));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1) -> vec2<f32> {
    global1 = vec4<bool>(false, all(!func_2(arg_2.d.x, !vec4<bool>(arg_2.d.x, arg_0.d.x, false, true)).d), (min(~u_input.a.x, func_2(global1.x, vec4<bool>(true, false, global1.x, true)).c.x) & -1i) < _wgslsmith_sub_i32(arg_0.c.x, u_input.b.x), arg_2.d.x);
    var var_0 = func_2(global1.x, !vec4<bool>(any(global1.wyy), any(!global1.yy), all(select(vec4<bool>(arg_0.d.x, true, true, arg_0.d.x), vec4<bool>(arg_0.d.x, arg_0.d.x, arg_2.d.x, arg_2.d.x), true)), select(false, true, arg_0.d.x)));
    global1 = select(vec4<bool>(var_0.d.x, select(var_0.d.x, all(!global1.xwx), true), arg_2.d.x, global1.x), vec4<bool>(func_2(true, !select(vec4<bool>(false, true, var_0.d.x, arg_2.d.x), vec4<bool>(arg_0.d.x, var_0.d.x, true, var_0.d.x), vec4<bool>(false, var_0.d.x, arg_2.d.x, arg_0.d.x))).d.x, !all(select(vec3<bool>(arg_2.d.x, var_0.d.x, true), global1.xxz, global1.xxw)), all(vec2<bool>(true, true)) | func_2(any(vec2<bool>(false, false)), !vec4<bool>(arg_2.d.x, false, arg_0.d.x, global1.x)).d.x, true), !(var_0.d.x & (_wgslsmith_f_op_f32(-345f + arg_1) <= 2564f)));
    var_0 = func_2(false, select(vec4<bool>(true, true, arg_0.d.x, !arg_2.d.x), vec4<bool>(global1.x, false, !(var_0.b.x < arg_1), true), true));
    let var_1 = global1.x;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.yw;
    var var_1 = Struct_1(-1308f, _wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(floor(-281f))), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2085f, -138f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -718f) + vec2<f32>(1093f, -584f)))), _wgslsmith_div_vec4_i32(min(vec4<i32>(53029i, -14364i, -2147483647i, u_input.a.x), vec4<i32>(u_input.b.x, -13852i, -38890i, u_input.b.x)), abs(vec4<i32>(-10388i, -2147483647i, -2147483647i, -1i))), vec2<bool>(select(true, false, global1.x), true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -2862f), _wgslsmith_f_op_f32(f32(-1f) * -116f))))), func_1(-2147483647i, global1.yz))), vec4<i32>(select(-reverseBits(u_input.b.x), ~(~32313i), !(false & global1.x)), ~_wgslsmith_clamp_i32(func_1(-1617i, global1.xz).c.x, ~11801i, _wgslsmith_mod_i32(-25549i, -1i)), _wgslsmith_clamp_i32(u_input.a.x, 7666i, i32(-1i) * -2147483647i) | -38067i, -_wgslsmith_dot_vec2_i32(u_input.a.zx >> (u_input.c.wz % vec2<u32>(32u)), -vec2<i32>(u_input.b.x, -32520i))), vec2<bool>(select(4294967295u > _wgslsmith_dot_vec3_u32(u_input.c.wxx, vec3<u32>(4294967295u, 0u, 4294967295u)), func_1(u_input.a.x ^ u_input.b.x, vec2<bool>(global1.x, global1.x)).d.x, func_1(min(u_input.b.x, u_input.b.x), !global1.zy).d.x), !(all(vec4<bool>(global1.x, global1.x, global1.x, false)) | true)));
    let var_2 = func_2(var_1.d.x, vec4<bool>(true, global1.x, select(all(select(vec2<bool>(false, false), var_1.d, true)), true, any(func_1(var_1.c.x, global1.ww).d)), !((var_1.a <= -859f) | all(global1.yxx))));
    global0 = ~var_2.c.x;
    var_0 = _wgslsmith_mod_vec2_u32(u_input.c.wy, u_input.c.wy);
    var var_3 = _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c.x, 1u), ~vec2<u32>(70344u, 42665u << (var_0.x % 32u))), _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(54275u, ~26633u, 4294967295u & var_0.x, firstTrailingBit(~u_input.c.x))), u_input.c.x | ~(u_input.c.x | 0u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(var_1.b.x)), 0i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a), -1727f, var_2.a)), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(var_1.c.wyz, u_input.a), -vec3<i32>(0i, 17401i, ~(-58292i)), var_2.c.wwx), 23466i);
}

