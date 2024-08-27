struct Struct_1 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec2<bool>, 10>;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> vec3<u32> {
    var var_0 = 0i;
    var var_1 = Struct_1(select(abs(vec3<u32>(~62876u, arg_1.a.x, ~1u)), firstTrailingBit(arg_2.a), false));
    global0 = arg_0;
    var_0 = u_input.a;
    var var_2 = vec2<bool>(true & !any(!vec2<bool>(true, arg_0)), false);
    return max(~vec3<u32>(~64742u, ~arg_3.a.x, _wgslsmith_div_u32(var_1.a.x, arg_2.a.x)) & arg_3.a, select(vec3<u32>(var_1.a.x, 56641u, _wgslsmith_dot_vec3_u32(vec3<u32>(25583u, arg_3.a.x, 1u), _wgslsmith_clamp_vec3_u32(vec3<u32>(28173u, 4294967295u, arg_1.a.x), vec3<u32>(arg_3.a.x, arg_1.a.x, 4294967295u), vec3<u32>(var_1.a.x, var_1.a.x, 4294967295u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(~arg_3.a.x, ~arg_2.a.x, arg_3.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_3.a.x, arg_3.a.x), vec3<u32>(1u, 1u, arg_2.a.x))), select(vec3<bool>(all(vec2<bool>(var_2.x, false)), u_input.a >= -48598i, var_2.x), !vec3<bool>(arg_0, var_2.x, arg_0), arg_0)));
}

fn func_2() -> u32 {
    global1 = array<vec2<bool>, 10>();
    let var_0 = vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(~61810u, countOneBits(max(0u, 1u))), 109u), _wgslsmith_dot_vec2_u32(~reverseBits(vec2<u32>(1u, 22427u)), min(_wgslsmith_mult_vec2_u32(vec2<u32>(21569u, 43673u), vec2<u32>(1u, 92058u)), reverseBits(vec2<u32>(79542u, 1u)))) & 0u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, ~0u, ~1u), countOneBits(reverseBits(func_3(true, Struct_1(vec3<u32>(114617u, 1u, 66235u)), Struct_1(vec3<u32>(73880u, 0u, 4294967295u)), Struct_1(vec3<u32>(14619u, 15523u, 5849u)))))), 1u);
    var var_1 = Struct_1(abs(~(~select(vec3<u32>(137331u, var_0.x, 4294967295u), var_0.xwx, false))));
    var_1 = Struct_1(var_1.a);
    var var_2 = Struct_1(~select(~func_3(false, Struct_1(vec3<u32>(59332u, 95336u, 15487u)), Struct_1(var_1.a), Struct_1(var_1.a)), ~var_1.a, vec3<bool>(true, true, true)));
    return 22205u;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_div_f32(-360f, -705f))), 497f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1920f)) + _wgslsmith_div_f32(494f, -1150f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-173f, -1132f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(447f * 460f), _wgslsmith_div_f32(-1091f, -338f))))));
    let var_1 = ~vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(1293u, 12808u), vec2<u32>(1u, 42146u))), vec2<u32>(1u, func_2())), 4294967295u, firstTrailingBit(3766u), func_2());
    let var_2 = _wgslsmith_mult_vec2_u32(vec2<u32>(58943u, firstTrailingBit(~4294967295u)), ~vec2<u32>(_wgslsmith_div_u32(func_2(), ~var_1.x), 1u));
    let var_3 = Struct_1(_wgslsmith_clamp_vec3_u32(max(~(~var_1.xyx), var_1.yww), _wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_2.x >> (var_1.x % 32u), 1u), var_1.yxy), select(_wgslsmith_sub_vec3_u32(vec3<u32>(var_1.x, var_2.x, var_2.x) | var_1.xwy, ~var_1.xyw), max(var_1.zwx ^ vec3<u32>(var_2.x, var_1.x, 4294967295u), ~vec3<u32>(var_1.x, var_2.x, var_2.x)), true)));
    let var_4 = var_3;
    return Struct_1(~var_4.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f - 1316f)), -496f, all(!global1[_wgslsmith_index_u32(33694u, 10u)]))) - -199f)));
    var var_1 = func_1();
    return Struct_1(~vec3<u32>(~56249u, 25945u, 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 112846u & _wgslsmith_mod_u32(24672u, _wgslsmith_dot_vec2_u32(vec2<u32>(max(0u, 0u), 1u), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 1u), vec2<u32>(2372u, 80038u))));
    let var_1 = i32(-1i) * -1i;
    let var_2 = func_4(func_1(), Struct_1(~(~func_3(true, Struct_1(vec3<u32>(var_0, 1u, var_0)), Struct_1(vec3<u32>(var_0, 1920u, var_0)), Struct_1(vec3<u32>(var_0, var_0, 808u))))), func_1(), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-453f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1676f, -463f) * _wgslsmith_f_op_f32(-522f - -831f))))));
    let var_3 = _wgslsmith_add_vec2_i32(reverseBits(~min(vec2<i32>(u_input.c, var_1) << (var_2.a.zx % vec2<u32>(32u)), _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, 1i), vec2<i32>(-12479i, u_input.b)))), reverseBits(-(~(-vec2<i32>(-39356i, 2147483647i)))));
    var var_4 = _wgslsmith_f_op_f32(-1f);
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(185f * 709f)), _wgslsmith_div_f32(-408f, 1205f)))));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.a.x, 10539u, 57951u), vec3<u32>(1u, var_0, 1u)), _wgslsmith_mult_vec3_u32(var_2.a, vec3<u32>(var_2.a.x, var_2.a.x, 0u)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1232f + 166f))), -609f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-180f + 1109f)))));
}

