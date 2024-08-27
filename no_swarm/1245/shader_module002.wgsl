struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<Struct_1, 25>;

var<private> global2: bool;

var<private> global3: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<f32> {
    var var_0 = 1f;
    global1 = array<Struct_1, 25>();
    global3 = array<vec3<bool>, 24>();
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-215f, -123f), vec2<f32>(825f, 1810f), true)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1152f, 728f) - vec2<f32>(-124f, -794f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-398f, -441f))), global0.xw))), vec2<f32>(1f, -200f));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-618f))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2, var_2, 476f) * vec3<f32>(var_1.x, var_2, 414f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, 1000f, var_2))), vec3<f32>(_wgslsmith_f_op_f32(sign(1256f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2234f + -2269f) + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2604f, -114f, -259f))) - _wgslsmith_div_vec3_f32(vec3<f32>(var_2, -1000f, -2058f), vec3<f32>(1507f, var_2, var_2))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, -172f, var_1.x))))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: u32) -> Struct_1 {
    global0 = vec4<bool>(true, _wgslsmith_f_op_f32(1844f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(900f, -208f), _wgslsmith_div_f32(-908f, -482f)))) > _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(646f)), 155f))), false, false);
    var var_0 = firstLeadingBit(1i >> (u_input.a % 32u));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-183f, -901f, 124f) - _wgslsmith_f_op_vec3_f32(func_3()))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-205f, 1313f, 1011f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1548f, -1676f, 184f) + vec3<f32>(1142f, 246f, -758f)))), any(vec4<bool>(global0.x | true, arg_1, true, true)))), vec4<u32>(arg_0, ~(~(~arg_2)), _wgslsmith_dot_vec4_u32(vec4<u32>(53982u, arg_0, u_input.a, reverseBits(75405u)), select(firstTrailingBit(vec4<u32>(62805u, 39126u, 5463u, 0u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 29449u, 26266u), vec4<u32>(86271u, 1u, 4294967295u, 4294967295u), vec4<u32>(0u, u_input.a, arg_0, u_input.a)), !vec4<bool>(global0.x, global0.x, global0.x, arg_1))), max(~reverseBits(arg_0), select(~108390u, 0u, true))), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(~(-1i), firstTrailingBit(-11135i)), -_wgslsmith_clamp_i32(-24707i, -1i, 17652i)), ~countOneBits(~vec2<i32>(1i, 11023i))));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_1.a * vec3<f32>(var_1.a.x, var_1.a.x, 1448f))))), var_1.b, ~max(vec2<i32>(~var_1.c.x, _wgslsmith_mult_i32(2147483647i, var_1.c.x)), vec2<i32>(-var_1.c.x, 1i)));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1179f)))))));
    return var_2;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec3<bool>) -> bool {
    let var_0 = func_2(1u, arg_0, min(max(49756u, ~u_input.a << (~14001u % 32u)), ~(firstLeadingBit(49767u) ^ ~arg_1.b.x)));
    let var_1 = arg_3.x;
    let var_2 = arg_1.b.x;
    global2 = global0.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0.a.x)) - _wgslsmith_f_op_f32(min(394f, var_0.a.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-673f)))), _wgslsmith_f_op_f32(-599f + -218f), _wgslsmith_f_op_f32(max(arg_1.a.x, -192f))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(817f, -1495f, var_0.a.x, var_0.a.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.a.x, arg_1.a.x, var_0.a.x, var_0.a.x)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a.x, 112f, -1552f, 950f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a.x, arg_1.a.x, 637f, -494f)))))))));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_1, 25>();
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(719f)), 341f, 1000f)))), vec4<u32>(1u, ~countOneBits(~u_input.a), ~(~u_input.a), select(~(~u_input.a), (u_input.a >> (33414u % 32u)) | ~24368u, all(vec2<bool>(true, true)))), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-22823i, 2147483647i), select(vec2<i32>(74226i, 1i), vec2<i32>(-45915i, 2147483647i), global0.zw)), select(abs(vec2<i32>(2147483647i, -3432i)), ~vec2<i32>(9360i, -2147483647i), global0.x)), _wgslsmith_mod_vec2_i32(-vec2<i32>(-23222i, -2147483647i) >> (countOneBits(vec2<u32>(u_input.a, 0u)) % vec2<u32>(32u)), ~(~vec2<i32>(4455i, -2147483647i)))));
    let var_1 = select(select(vec2<bool>(global0.x, func_1(!global0.x, global1[_wgslsmith_index_u32(firstTrailingBit(var_0.b.x), 25u)], _wgslsmith_mod_u32(4294967295u, u_input.a), vec3<bool>(global0.x, global0.x, true))), select(global0.xx, select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), true), select(vec2<bool>(false, false), global0.zx, global0.wy), vec2<bool>(global0.x, true)), global0.wy), true), select(select(global0.yx, select(global0.yy, select(global0.yz, vec2<bool>(false, false), global0.x), false), global0.x), select(select(global0.zz, vec2<bool>(true, global0.x), vec2<bool>(true, global0.x)), vec2<bool>(global0.x, var_0.b.x != var_0.b.x), vec2<bool>(global0.x, u_input.a >= u_input.a)), select(select(select(vec2<bool>(false, global0.x), global0.xw, global0.yw), global0.xx, true || global0.x), !vec2<bool>(true, global0.x), false)), global0.x);
    global0 = !(!select(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, global0.x, var_1.x), vec4<bool>(false, global0.x, var_1.x, var_1.x)), vec4<bool>(global0.x, !var_1.x, true, !global0.x), select(vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(var_1.x, global0.x, var_1.x, global0.x), false)));
    let var_2 = var_0.a.x;
    var var_3 = var_0.b.x;
    var var_4 = global3[_wgslsmith_index_u32(var_0.b.x, 24u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-371f))), _wgslsmith_div_f32(428f, 975f)))));
}

