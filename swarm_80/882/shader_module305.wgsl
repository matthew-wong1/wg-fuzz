struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 415f;

var<private> global1: vec4<bool>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_1(arg_0: Struct_1, arg_1: bool) -> f32 {
    let var_0 = vec4<bool>(global1.x, !all(!select(global1.xx, vec2<bool>(true, arg_0.d), vec2<bool>(false, arg_0.d))), true, all(global1.wy));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1182f, -1455f, arg_0.b) - vec3<f32>(500f, -164f, -2113f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-117f, 791f, -1530f))), vec3<f32>(-379f, _wgslsmith_div_f32(arg_0.b, -1014f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f - 1334f))))));
    var var_2 = -1i;
    global1 = vec4<bool>(true, true, !((!arg_1 & arg_1) | any(vec3<bool>(true, true, true))), var_0.x);
    var var_3 = arg_0;
    return var_1.x;
}

fn func_3() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-394f, -643f, _wgslsmith_f_op_f32(round(523f)), _wgslsmith_f_op_f32(734f * 1433f)))) + vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-482f * 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1222f)), -688f) * _wgslsmith_f_op_f32(ceil(-764f))), 1735f, _wgslsmith_f_op_f32(f32(-1f) * -207f)));
    global1 = select(!vec4<bool>(true, !global1.x | global1.x, var_0.x != var_0.x, global1.x), !vec4<bool>(!(!global1.x), (u_input.a & u_input.b) < u_input.a, select(global1.x, !global1.x, global1.x), all(select(global1.xy, global1.zy, false))), !(!vec4<bool>(true, all(vec2<bool>(true, false)), true, false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(var_0, var_0, vec4<bool>(false, global1.x, global1.x, global1.x))), var_0)))) + vec4<f32>(_wgslsmith_f_op_f32(floor(var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 790f)) * var_0.x), _wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -418f)));
    var var_2 = abs(_wgslsmith_mult_vec2_i32(~(~(vec2<i32>(-1i, u_input.b) ^ vec2<i32>(14220i, 2147483647i))), _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(25651i, u_input.a) >> (vec2<u32>(u_input.c.x, 84203u) % vec2<u32>(32u)), firstTrailingBit(vec2<i32>(-13788i, u_input.b))), vec2<i32>(2147483647i, u_input.a))));
    var var_3 = var_1.x;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1000f - _wgslsmith_div_f32(var_1.x, -1000f)), var_0.x));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32, arg_3: vec2<i32>) -> f32 {
    let var_0 = reverseBits(u_input.b >> (~abs(6578u) % 32u));
    var var_1 = _wgslsmith_f_op_f32(step(671f, arg_0.b));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -906f)));
    global1 = vec4<bool>(arg_1, all(vec2<bool>(false, arg_0.d)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(arg_0.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(263f, arg_0.b))))) == _wgslsmith_f_op_f32(-arg_0.b), true);
    global0 = _wgslsmith_f_op_f32(-arg_0.b);
    return _wgslsmith_f_op_f32(round(1f));
}

fn func_2(arg_0: vec2<i32>) -> vec2<f32> {
    var var_0 = !global1.yyx;
    global0 = _wgslsmith_f_op_f32(f32(-1f) * -229f);
    global0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1026f, -1631f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1184f * -1673f))))), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(18588i, -1i, 38016i, arg_0.x), vec4<i32>(u_input.b, u_input.a, 2147483647i, 55994i)) & countOneBits(vec4<i32>(-48690i, u_input.a, u_input.b, 2147483647i)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), ~19284u, all(vec3<bool>(var_0.x, global1.x, global1.x)) || var_0.x), all(vec4<bool>(!global1.x, !global1.x, var_0.x, true && global1.x)), ~_wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 4294967295u), 1u), countOneBits(vec2<i32>(arg_0.x, arg_0.x))))));
    let var_1 = !all(!(!(!vec3<bool>(false, global1.x, false))));
    let var_2 = true;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1206f, _wgslsmith_f_op_f32(130f - -1464f))) - _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1946f, -382f))))))), vec2<f32>(247f, -264f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1243f - -858f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-167f)))) + vec2<f32>(289f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-766f, _wgslsmith_f_op_f32(func_1(Struct_1(vec4<i32>(u_input.a, -17297i, -2147483647i, u_input.b), -678f, 27702u, global1.x), true))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(~(firstTrailingBit(vec2<i32>(-1i, u_input.a)) ^ (vec2<i32>(u_input.b, 75255i) & vec2<i32>(u_input.a, -16645i))))));
    let var_1 = _wgslsmith_dot_vec4_u32(select(reverseBits(vec4<u32>(36155u, 1u, 1u, u_input.c.x)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 51965u, 4294967295u), u_input.c) % vec4<u32>(32u)), countOneBits(vec4<u32>(67502u, u_input.d, 37375u, u_input.c.x) << (vec4<u32>(4294967295u, 13806u, 8924u, 1u) % vec4<u32>(32u))), !select(select(vec4<bool>(global1.x, false, global1.x, false), vec4<bool>(global1.x, false, true, true), global1.x), select(vec4<bool>(false, global1.x, false, false), vec4<bool>(global1.x, false, false, global1.x), vec4<bool>(global1.x, false, true, false)), !vec4<bool>(global1.x, global1.x, global1.x, global1.x))), firstTrailingBit(u_input.c));
    let var_2 = Struct_1(reverseBits(~(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.a, 1i, u_input.b), vec4<i32>(u_input.a, 1i, u_input.a, u_input.b)))), _wgslsmith_f_op_f32(-var_0.x), select(1u, 0u, select(global1.x, false, false)) >> (_wgslsmith_mod_u32(var_1, ~(~24210u)) % 32u), global1.x);
    global1 = !vec4<bool>(true, var_2.c != var_2.c, true, _wgslsmith_f_op_f32(floor(196f)) == var_2.b);
    var var_3 = var_2.c;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i);
}

