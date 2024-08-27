struct Struct_1 {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: bool,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(11034u, 4294967295u, vec3<u32>(1u, 0u, 0u), vec4<i32>(68487i, 1i, -4021i, 22605i), vec2<u32>(0u, 0u)), Struct_1(1u, 73185u, vec3<u32>(1u, 4294967295u, 0u), vec4<i32>(2147483647i, -52448i, -52075i, i32(-2147483648)), vec2<u32>(34468u, 1u)), Struct_1(15277u, 54992u, vec3<u32>(19644u, 1u, 6832u), vec4<i32>(1i, 2147483647i, 38696i, 9224i), vec2<u32>(0u, 37613u)));

var<private> global2: array<Struct_2, 22>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> u32 {
    let var_0 = Struct_3(Struct_1(~52334u << (global0.a.c.x % 32u), _wgslsmith_add_u32(global0.b, 13785u), firstLeadingBit(vec3<u32>(global0.a.c.x, global0.b, 7374u) >> (_wgslsmith_add_vec3_u32(vec3<u32>(11018u, global0.b, global0.a.e.x), vec3<u32>(global0.b, global0.a.a, 103732u)) % vec3<u32>(32u))), select(vec4<i32>(u_input.a ^ -22230i, _wgslsmith_dot_vec3_i32(global0.a.d.zxz, global0.a.d.zxz), countOneBits(24502i), ~0i), vec4<i32>(min(global0.a.d.x, 3528i), ~2147483647i, global0.a.d.x, _wgslsmith_div_i32(0i, u_input.a)), true), _wgslsmith_clamp_vec2_u32(~select(vec2<u32>(global0.b, 50420u), global0.a.e, vec2<bool>(true, true)), ~global0.a.c.xz, vec2<u32>(global0.b, global0.b))), ~global0.a.d.x);
    var var_1 = Struct_4(Struct_1(~(~global0.b << (var_0.a.b % 32u)), 4294967295u, ~global0.a.c, var_0.a.d, global0.a.e), 1u, Struct_3(Struct_1(4294967295u, countOneBits(1u >> (global0.a.a % 32u)), global0.a.c, select(vec4<i32>(global0.a.d.x, global0.a.d.x, -2147483647i, -2147483647i) & global0.a.d, global0.a.d >> (vec4<u32>(global0.a.b, 0u, 406u, 43881u) % vec4<u32>(32u)), all(vec3<bool>(false, false, true))), abs(var_0.a.c.xx)), 2147483647i));
    global1 = array<Struct_1, 3>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1596f, -154f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-719f, -450f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(901f, 404f)) * _wgslsmith_f_op_f32(sign(-869f)))), 801f);
    var var_3 = min(abs(_wgslsmith_clamp_i32(~var_0.b, _wgslsmith_clamp_i32(-u_input.a, -global0.a.d.x, var_0.a.d.x ^ var_1.a.d.x), _wgslsmith_sub_i32(max(var_0.b, -2147483647i), _wgslsmith_mod_i32(var_1.c.a.d.x, 36446i)))), -1i);
    return _wgslsmith_sub_u32(var_0.a.a, var_0.a.b);
}

fn func_2() -> Struct_2 {
    global0 = Struct_2(Struct_1(_wgslsmith_mod_u32(max(_wgslsmith_dot_vec2_u32(global0.a.c.xx, global0.a.c.yx), global0.b), 75959u >> (_wgslsmith_mod_u32(42320u, global0.a.a) % 32u)), _wgslsmith_sub_u32(global0.b >> (41225u % 32u), 27088u), vec3<u32>(_wgslsmith_mult_u32(global0.a.a, ~46195u), ~global0.a.a, global0.b), -select(vec4<i32>(17076i, global0.a.d.x, global0.a.d.x, global0.a.d.x), vec4<i32>(u_input.a, global0.a.d.x, -1i, u_input.a), vec4<bool>(true, true, true, true)), vec2<u32>(1u, global0.a.a)), ~global0.a.a);
    var var_0 = _wgslsmith_mod_u32(57631u, 4294967295u) >> (func_3() % 32u);
    var var_1 = Struct_3(Struct_1(firstLeadingBit(global0.a.c.x), min(1u, global0.a.b), global0.a.c, global0.a.d, _wgslsmith_sub_vec2_u32(global0.a.c.zx, abs(select(global0.a.e, global0.a.e, false)))), ~(-_wgslsmith_mult_i32(~u_input.a, abs(-24392i))));
    var_1 = Struct_3(global0.a, var_1.b);
    var var_2 = Struct_3(global0.a, -1i);
    return Struct_2(Struct_1(var_1.a.e.x, select(~var_2.a.a, var_2.a.b, false), global0.a.c, var_2.a.d, vec2<u32>(~4294967295u, ~min(global0.a.e.x, var_1.a.b))), ~1u);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> StorageBuffer {
    global0 = func_2();
    let var_0 = func_2();
    var var_1 = ~vec3<i32>(var_0.a.d.x, _wgslsmith_div_i32(-(~(-2147483647i)), _wgslsmith_mod_i32(~18550i, var_0.a.d.x)), u_input.a);
    let var_2 = _wgslsmith_f_op_f32(abs(arg_1.x));
    let var_3 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-arg_1.x))))));
    return StorageBuffer(_wgslsmith_add_i32(-(i32(-1i) * -u_input.a), firstLeadingBit(var_0.a.d.x)), ~5049u, vec4<u32>(global0.a.a, ~_wgslsmith_sub_u32(var_0.a.a, 0u), global0.b, ~max(var_0.b, var_0.b)) << (vec4<u32>(1u, 4294967295u, 1085u, ~25695u) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-875f + -242f);
    var var_1 = (_wgslsmith_mult_i32(global0.a.d.x, reverseBits(1i)) > 20692i) != (true | all(vec2<bool>(true, true)));
    let var_2 = -global0.a.d.x;
    global2 = array<Struct_2, 22>();
    global1 = array<Struct_1, 3>();
    let x = u_input.a;
    s_output = func_1(any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1123f, var_0, var_0)))))));
}

