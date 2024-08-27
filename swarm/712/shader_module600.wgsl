struct Struct_1 {
    a: vec3<i32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32>;

var<private> global1: u32;

var<private> global2: array<vec4<i32>, 12>;

var<private> global3: vec4<bool>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3() -> bool {
    var var_0 = u_input.d.yw;
    var var_1 = Struct_1(vec3<i32>(-45402i, reverseBits(min(71999i, 2147483647i)), _wgslsmith_div_i32(_wgslsmith_mod_i32(1i, 32645i), reverseBits(37133i))) | (u_input.d.zyz | vec3<i32>(_wgslsmith_div_i32(var_0.x, var_0.x), _wgslsmith_sub_i32(35674i, u_input.d.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-37576i, var_0.x), vec2<i32>(64731i, var_0.x)))), var_0.x);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1049f)), -1609f)))), -1348f, _wgslsmith_f_op_f32(f32(-1f) * -663f), 1f);
    let var_3 = u_input.b;
    var var_4 = all(global3.xxy);
    return true && any(!vec4<bool>(true, global3.x, global3.x & global3.x, global3.x));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: bool, arg_3: vec3<bool>) -> f32 {
    var var_0 = func_3();
    global3 = select(vec4<bool>(true, true, global3.x, true), !select(select(!vec4<bool>(true, arg_2, arg_2, false), !vec4<bool>(true, arg_3.x, true, arg_2), arg_2 == arg_3.x), !(!vec4<bool>(true, true, arg_2, arg_3.x)), any(!vec4<bool>(true, arg_2, arg_3.x, arg_3.x))), true);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -699f))));
    var_1 = -341f;
    global3 = select(!vec4<bool>(false, arg_3.x, true, arg_2), !select(!(!vec4<bool>(true, false, arg_2, true)), select(!vec4<bool>(arg_3.x, true, arg_2, true), !vec4<bool>(arg_3.x, arg_3.x, true, true), select(vec4<bool>(false, true, arg_3.x, true), vec4<bool>(true, true, arg_3.x, true), vec4<bool>(false, false, global3.x, true))), select(!vec4<bool>(true, arg_2, true, false), vec4<bool>(arg_2, true, global3.x, arg_3.x), !arg_2)), vec4<bool>(!any(arg_3.xx), true, all(vec4<bool>(true, global3.x, true, all(vec4<bool>(true, arg_2, false, true)))), true));
    return _wgslsmith_div_f32(667f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(662f, -174f))))))));
}

fn func_1(arg_0: u32, arg_1: i32) -> Struct_1 {
    global1 = 4294967295u;
    global3 = vec4<bool>(any(select(vec2<bool>(all(vec4<bool>(global3.x, false, false, false)), false), !select(global3.zz, vec2<bool>(true, true), global3.wz), select(!global3.wz, select(global3.xx, global3.zw, global3.wz), !global3.x))), true, false, any(vec4<bool>(true, global3.x || !global3.x, global3.x, global3.x)));
    global1 = arg_0;
    var var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.b, u_input.d.yw, true, vec3<bool>(global3.x, global3.x, false))), _wgslsmith_f_op_f32(-116f * 124f)) - _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-1526f, 121f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-251f, _wgslsmith_f_op_f32(step(-963f, 1153f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1630f + -949f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -175f), 1519f)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-203f, 337f, -452f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(410f, 573f, -774f)), global3.wwy))))));
    global0 = array<vec4<f32>, 32>();
    return Struct_1(_wgslsmith_div_vec3_i32(vec3<i32>(-18036i, 4246i, arg_1), u_input.d.ywx) | vec3<i32>(countOneBits(0i), _wgslsmith_mult_i32(u_input.c, abs(-36483i)), _wgslsmith_clamp_i32(_wgslsmith_clamp_i32(2147483647i, -2147483647i, u_input.d.x), u_input.c, _wgslsmith_div_i32(0i, 1i))), u_input.c);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 32>();
    let var_0 = vec2<u32>(~abs(u_input.a), _wgslsmith_mod_u32(~(~u_input.a), _wgslsmith_mult_u32(u_input.a, abs(_wgslsmith_dot_vec2_u32(u_input.b.zy, u_input.b.xx)))));
    let var_1 = func_1(u_input.b.x, -_wgslsmith_sub_i32(~u_input.c, u_input.d.x << (4294967295u % 32u)));
    var var_2 = func_1(~_wgslsmith_add_u32(~0u, u_input.a), _wgslsmith_sub_i32(firstTrailingBit(i32(-1i) * -u_input.d.x), var_1.a.x));
    global0 = array<vec4<f32>, 32>();
    var var_3 = func_1(48286u, -(_wgslsmith_clamp_i32(var_1.a.x >> (u_input.a % 32u), countOneBits(var_2.b), -44550i) >> (~(var_0.x ^ 8180u) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(min(~(~min(var_3.b, -19881i)), countOneBits(-16250i)), vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(var_2.a.x), var_2.a.x), _wgslsmith_sub_i32(firstTrailingBit(-52665i), 0i), -21193i) ^ ~(var_1.a >> (u_input.b % vec3<u32>(32u))), select(0i, countOneBits(0i), func_3()));
}

