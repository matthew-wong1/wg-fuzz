struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 31>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = vec3<i32>(abs(-u_input.a) ^ 12255i, ~u_input.a, ~max(_wgslsmith_clamp_i32(firstTrailingBit(5663i), -1i, _wgslsmith_clamp_i32(u_input.a, 218i, 2147483647i)), -_wgslsmith_dot_vec3_i32(vec3<i32>(42463i, u_input.a, 0i), vec3<i32>(1i, 34040i, 0i))));
    let var_1 = 18262i;
    var_0 = u_input.c.xzz;
    let var_2 = _wgslsmith_div_i32(select(countOneBits(52536i), firstTrailingBit(~reverseBits(var_1)), !(_wgslsmith_sub_u32(50114u, 0u) <= abs(u_input.b.x))), _wgslsmith_sub_i32(~firstLeadingBit(var_0.x) >> (firstLeadingBit(max(arg_0, 0u)) % 32u), 1i));
    var var_3 = !vec4<bool>(true || any(vec3<bool>(true, false, false)), false, _wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 48071u, u_input.b.x, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, 24681u, 0u, 4294967295u), vec4<u32>(u_input.b.x, 34629u, 0u, 4294967295u), vec4<u32>(91532u, 45256u, u_input.b.x, 0u))) == _wgslsmith_clamp_u32(abs(1837u), select(1u, u_input.b.x, false), u_input.b.x), firstLeadingBit(15531u) != select(_wgslsmith_div_u32(u_input.b.x, 71942u), _wgslsmith_div_u32(0u, u_input.b.x), true));
    return var_3.zxy;
}

fn func_2(arg_0: u32, arg_1: Struct_3, arg_2: vec4<bool>) -> f32 {
    let var_0 = u_input.b.x;
    let var_1 = select(!vec4<bool>(true, arg_2.x | false, arg_2.x, !any(vec4<bool>(arg_1.b.a.x, false, arg_1.c.a.x, arg_1.b.a.x))), vec4<bool>(!(!arg_1.b.a.x), true, (arg_1.b.a.x || true) || false, !any(vec2<bool>(arg_1.c.a.x, false))), any(select(select(func_3(var_0, vec4<f32>(-1095f, 1405f, -2285f, -406f), vec3<f32>(-401f, 993f, 330f)), !vec3<bool>(arg_2.x, arg_1.b.a.x, arg_1.b.a.x), true), !select(vec3<bool>(true, arg_1.b.a.x, arg_2.x), vec3<bool>(arg_2.x, true, false), arg_1.c.a.x), arg_1.c.a)));
    let var_2 = var_1.yw;
    global0 = array<vec2<f32>, 31>();
    let var_3 = arg_1;
    return -1389f;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: Struct_2) -> vec4<bool> {
    let var_0 = u_input.b.x;
    global0 = array<vec2<f32>, 31>();
    let var_1 = u_input.a;
    global0 = array<vec2<f32>, 31>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(21238u, Struct_3(0u, arg_2, arg_2), select(select(select(vec4<bool>(true, true, arg_2.a.x, arg_2.a.x), vec4<bool>(false, arg_2.a.x, arg_2.a.x, arg_2.a.x), true), !vec4<bool>(arg_2.a.x, true, arg_2.a.x, arg_2.a.x), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(arg_2.a.x, arg_2.a.x, true, arg_2.a.x), false), select(vec4<bool>(arg_2.a.x, true, true, arg_2.a.x), vec4<bool>(arg_2.a.x, true, arg_2.a.x, true), arg_2.a.x), select(vec4<bool>(arg_2.a.x, false, arg_2.a.x, false), vec4<bool>(arg_2.a.x, false, true, false), vec4<bool>(false, false, true, arg_2.a.x))), true))));
    return vec4<bool>(!select(true, true, !any(vec4<bool>(true, arg_2.a.x, arg_2.a.x, arg_2.a.x))), (59738u & ~(u_input.b.x | u_input.b.x)) == var_0, _wgslsmith_f_op_f32(f32(-1f) * -856f) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-678f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(var_0, Struct_3(var_0, arg_2, arg_2), vec4<bool>(arg_2.a.x, arg_2.a.x, true, true))))), !(!arg_2.a.x));
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_3 {
    global0 = array<vec2<f32>, 31>();
    var var_0 = u_input.a;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1290f) - -1871f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-481f)), _wgslsmith_f_op_f32(step(1009f, 1143f)))) + 1000f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -504f) + -1188f)))));
    global0 = array<vec2<f32>, 31>();
    var var_2 = select(select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false)), select(vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, any(vec2<bool>(true, false)), var_1 != 342f, false), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), func_4(_wgslsmith_div_f32(822f, _wgslsmith_f_op_f32(func_2(4294967295u, Struct_3(960u, Struct_2(vec3<bool>(true, true, false)), Struct_2(vec3<bool>(true, true, true))), vec4<bool>(false, true, false, true)))), -min(u_input.c.yx, u_input.c.wz), Struct_2(vec3<bool>(true, true, true)))), !func_4(_wgslsmith_f_op_f32(f32(-1f) * -103f), max(~vec2<i32>(1i, u_input.a), -u_input.c.yz), Struct_2(vec3<bool>(true, true, true))), true);
    return Struct_3(~u_input.b.x, Struct_2(!(!(!vec3<bool>(var_2.x, var_2.x, var_2.x)))), Struct_2(var_2.yxw));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.c.x, -30345i);
    let var_1 = var_0.c.a.x;
    var var_2 = u_input.c.wx;
    var var_3 = u_input.b;
    var var_4 = Struct_1(78922u, firstTrailingBit(min(-(0i & var_2.x), _wgslsmith_dot_vec2_i32(~u_input.c.yx, u_input.c.wy))));
    let var_5 = abs(-28591i);
    let var_6 = Struct_3(1404u, func_1(var_4.b, 1i).b, Struct_2(func_3(u_input.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -538f, 479f, 528f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -334f, -1000f, 342f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1901f, 267f, -873f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(435f, -2331f, 1803f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_3.ww, reverseBits(vec2<u32>(u_input.b.x, var_6.a))), func_1(_wgslsmith_dot_vec3_i32(u_input.c.xxz, u_input.c.zyx), -var_4.b).a), _wgslsmith_sub_u32(func_1(1i, 1i).a, firstTrailingBit(0u)), func_1(2147483647i, ~var_2.x | var_5).a), -select(_wgslsmith_div_vec2_i32(u_input.c.ww, u_input.c.xy), countOneBits(select(u_input.c.wx, vec2<i32>(u_input.a, -52527i), var_6.c.a.yx)), var_6.c.a.x), -abs(u_input.c.xz) >> (~select(_wgslsmith_div_vec2_u32(vec2<u32>(9987u, 9433u), var_3.xz), vec2<u32>(var_6.a, 1u), select(var_6.b.a.x, false, true)) % vec2<u32>(32u)), _wgslsmith_sub_u32(var_4.a, u_input.b.x));
}

