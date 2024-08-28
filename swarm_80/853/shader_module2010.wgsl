struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<bool>(true, true, false));

var<private> global1: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = u_input.c.x;
    let var_1 = u_input.a & 32169u;
    var var_2 = Struct_1(vec3<bool>(true || global1.x, global0.a.x, true));
    global0 = Struct_1(vec3<bool>(!any(vec3<bool>(global0.a.x, false, global1.x)) & !all(vec2<bool>(false, false)), all(select(global0.a.zz, vec2<bool>(true, true), select(global1.x, true, arg_0.a.x))), false));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1260f + _wgslsmith_f_op_f32(395f * _wgslsmith_f_op_f32(floor(1280f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -762f)) * 1000f))));
    return false | var_2.a.x;
}

fn func_2() -> vec4<i32> {
    global1 = select(global0.a.xx, global0.a.yx, true);
    let var_0 = Struct_1(vec3<bool>(false, _wgslsmith_add_i32(-u_input.c.x, _wgslsmith_sub_i32(2147483647i, u_input.c.x)) == u_input.c.x, any(!global0.a)));
    let var_1 = 219f;
    let var_2 = all(vec3<bool>(true, func_3(var_0), true));
    var var_3 = var_0;
    return firstLeadingBit(_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(14487i, u_input.c.x, u_input.c.x, u_input.c.x)), vec4<i32>(-1i, 13648i, -2147483647i, _wgslsmith_sub_i32(1i, 81533i)), ~vec4<i32>(u_input.c.x, -1i, 18103i, u_input.c.x))) >> (~vec4<u32>(abs(20660u), u_input.b.x, 43056u, countOneBits(u_input.b.x) >> (~u_input.b.x % 32u)) % vec4<u32>(32u));
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: bool) -> Struct_1 {
    global1 = select(select(vec2<bool>(true, true), !vec2<bool>(global1.x && false, global0.a.x), any(select(vec4<bool>(false, true, true, true), !vec4<bool>(arg_2, true, arg_2, arg_1.x), true))), arg_1.xx, true);
    let var_0 = Struct_1(select(global0.a, select(vec3<bool>(arg_1.x, arg_2, global1.x), !vec3<bool>(global1.x, arg_2, global1.x), false || (arg_0 < 1i)), !vec3<bool>(u_input.c.x >= arg_0, false || global0.a.x, !arg_2)));
    let var_1 = 147f;
    global0 = var_0;
    var var_2 = max(~u_input.a, _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(~23448u, 31312u, ~26643u, _wgslsmith_mult_u32(24504u, 16355u)), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.b.x, 5967u, u_input.b.x))), ~((vec4<u32>(4294967295u, 1u, u_input.a, 3598u) << (vec4<u32>(4294967295u, 0u, 39907u, u_input.b.x) % vec4<u32>(32u))) & vec4<u32>(u_input.b.x, 34843u, 9297u, 921u))));
    return Struct_1(select(select(vec3<bool>(!global0.a.x, arg_1.x, !global1.x), vec3<bool>(true, false, var_0.a.x), !select(vec3<bool>(var_0.a.x, true, true), vec3<bool>(false, true, global0.a.x), global0.a)), select(var_0.a, vec3<bool>(arg_2, true, true), all(select(vec2<bool>(false, arg_2), vec2<bool>(arg_2, true), arg_2))), var_0.a));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<u32>(~(~(~arg_1.x)), ~(~u_input.b.x));
    global1 = !select(arg_0.ww, select(vec2<bool>(global1.x, arg_0.x), vec2<bool>(global0.a.x, false), true), global1.x);
    let var_1 = arg_1.x;
    let var_2 = min(~(~vec2<u32>(74844u, _wgslsmith_clamp_u32(u_input.b.x, var_1, 25621u))), ~(~vec2<u32>(arg_1.x, 114099u)));
    var var_3 = u_input.c.x;
    return func_4(_wgslsmith_dot_vec4_i32(func_2() | _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 0i, u_input.c.x, u_input.c.x), vec4<i32>(u_input.c.x, 1i, 55965i, 7397i), vec4<i32>(u_input.c.x, u_input.c.x, -2147483647i, 21947i)), vec4<i32>(41627i, u_input.c.x, -1i, u_input.c.x)), abs(select(vec4<i32>(53420i, -15098i, -8607i, 0i), -vec4<i32>(32942i, 0i, 0i, u_input.c.x), !arg_0.x))), !(!(!arg_0.yzw)), global0.a.x);
}

fn func_5(arg_0: i32, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = vec2<u32>(~u_input.b.x, _wgslsmith_sub_u32(0u, ~(~u_input.a & _wgslsmith_add_u32(u_input.a, u_input.b.x))));
    global0 = func_1(vec4<bool>(countOneBits(u_input.b.x >> (u_input.a % 32u)) > ~_wgslsmith_clamp_u32(u_input.b.x, var_0.x, 5930u), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(839f + arg_1.x))) == 475f, !arg_3.a.x, all(vec4<bool>(true, true, false, true))), ~firstLeadingBit(select(vec4<u32>(1u, 0u, u_input.a, 10071u), vec4<u32>(42u, var_0.x, var_0.x, 6851u), arg_2)) ^ vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, var_0.x), ~u_input.b), var_0.x, 23755u, 4294967295u));
    let var_1 = ~abs(vec4<u32>(~6882u, u_input.a, 0u, var_0.x)) | (select(~select(vec4<u32>(var_0.x, 24960u, 1u, 6696u), vec4<u32>(17087u, 0u, u_input.a, u_input.b.x), vec4<bool>(true, arg_3.a.x, global0.a.x, true)), vec4<u32>(abs(48802u), firstLeadingBit(42791u), select(u_input.b.x, u_input.a, true), _wgslsmith_add_u32(u_input.a, 1131u)), vec4<bool>(global1.x && false, true, arg_2, true)) >> (~vec4<u32>(u_input.a, _wgslsmith_dot_vec2_u32(u_input.b, vec2<u32>(var_0.x, 1u)), var_0.x & var_0.x, 1u) % vec4<u32>(32u)));
    global0 = func_4(func_2().x, vec3<bool>(!(!(true | arg_3.a.x)), all(vec2<bool>(false, all(vec4<bool>(true, true, true, false)))), arg_2), true);
    let var_2 = arg_3;
    return StorageBuffer(~(-func_2().x) & arg_0, _wgslsmith_clamp_u32(var_1.x, max(_wgslsmith_add_u32(_wgslsmith_add_u32(u_input.b.x, u_input.b.x), var_1.x << (u_input.a % 32u)), (u_input.a | u_input.a) & 14831u), ~_wgslsmith_div_u32(u_input.a, 4294967295u)), vec3<u32>(_wgslsmith_div_u32(78019u, 4294967295u), ~(~(~var_1.x)), 4294967295u), arg_1, reverseBits(_wgslsmith_div_u32(firstTrailingBit(34302u), u_input.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global0.a);
    var var_1 = vec2<bool>(_wgslsmith_dot_vec2_i32(-u_input.c & vec2<i32>(2147483647i, u_input.c.x), vec2<i32>(min(-2147483647i, 8797i), ~1i)) < (~(-u_input.c.x) >> (~(~1u) % 32u)), true);
    var var_2 = global0.a.x;
    var var_3 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = func_5(max(7293i, reverseBits(u_input.c.x | u_input.c.x) & 2147483647i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-2487f, 1877f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(754f, 440f), vec2<f32>(-658f, 863f), false)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(512f, 3172f))))), var_3.a.x, func_1(!vec4<bool>(true, true, var_1.x, !global1.x), (abs(vec4<u32>(1u, u_input.a, u_input.b.x, 82795u)) & select(vec4<u32>(4294967295u, 4294967295u, 72963u, 3440u), vec4<u32>(u_input.b.x, 0u, 69928u, 4294967295u), var_3.a.x)) | vec4<u32>(u_input.b.x, countOneBits(u_input.b.x), ~4294967295u, _wgslsmith_mod_u32(u_input.a, 27132u))));
}

