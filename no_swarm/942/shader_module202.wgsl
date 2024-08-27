struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct Struct_5 {
    a: i32,
    b: i32,
    c: bool,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec2<i32>, arg_1: u32) -> vec3<i32> {
    let var_0 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, true, select(true, true, true))), vec4<bool>(any(vec2<bool>(all(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, false)))), true, false, false), false);
    var var_1 = Struct_1(1447f, var_0);
    var_1 = Struct_1(var_1.a, vec4<bool>(!(~u_input.a.x < (arg_1 << (arg_1 % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a * var_1.a) - var_1.a) == _wgslsmith_f_op_f32(_wgslsmith_div_f32(-130f, -131f) + var_1.a), all(vec2<bool>(!var_1.b.x, false)), all(var_0.xzx)));
    var var_2 = Struct_1(var_1.a, select(vec4<bool>(all(select(var_1.b.xyw, vec3<bool>(true, var_0.x, true), true)), arg_1 >= 31804u, var_0.x, var_0.x), select(select(vec4<bool>(var_0.x, false, var_0.x, var_1.b.x), var_1.b, true), select(!vec4<bool>(true, var_0.x, true, false), var_1.b, !var_1.b.x), any(vec2<bool>(var_0.x, var_0.x))), vec4<bool>(true, false, true, true)));
    var var_3 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(517f, -348f))), _wgslsmith_div_vec2_f32(vec2<f32>(895f, 580f), vec2<f32>(var_2.a, 424f)), !var_2.b.xz))))));
    return vec3<i32>(countOneBits(arg_0.x), 1i, ~arg_0.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: i32) -> vec4<bool> {
    var var_0 = vec2<i32>(arg_2, arg_2);
    var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(func_3(vec2<i32>(0i, -1i), 34069u) & arg_0, arg_0, arg_0 << (vec3<u32>(42676u, 0u, 1u) % vec3<u32>(32u))), (vec3<i32>(var_0.x, u_input.b, 994i) ^ _wgslsmith_div_vec3_i32(vec3<i32>(-36971i, -2147483647i, 0i), arg_0)) & vec3<i32>(1i, 21570i, arg_2)), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32((vec2<i32>(2147483647i, 3782i) >> (vec2<u32>(u_input.a.x, 92078u) % vec2<u32>(32u))) | _wgslsmith_div_vec2_i32(vec2<i32>(-11623i, u_input.c.x), vec2<i32>(-2147483647i, arg_2)), min(_wgslsmith_clamp_vec2_i32(vec2<i32>(-14042i, 2147483647i), vec2<i32>(var_0.x, -1i), u_input.c), firstTrailingBit(vec2<i32>(arg_2, arg_2)))), ~arg_0.x));
    let var_1 = _wgslsmith_add_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(abs(arg_2), arg_0.x >> (36066u % 32u)) >> (u_input.a.x % 32u), arg_0.x), abs(_wgslsmith_div_vec2_i32(abs(arg_0.xy), vec2<i32>(arg_2, 16155i))) | arg_0.zx);
    var var_2 = 57239u;
    var_2 = ~(~u_input.a.x);
    return select(!(!vec4<bool>(true, true, any(vec2<bool>(false, true)), true)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true))), !select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), true), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)), vec4<bool>(any(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false))), (-1395f < arg_1.x) & (u_input.a.x != u_input.a.x), all(vec4<bool>(true, true, true, true)), false)), vec4<bool>(true, any(vec4<bool>(true, false, true, arg_0.x <= var_0.x)), all(vec3<bool>(u_input.a.x >= u_input.a.x, true, true)), false));
}

fn func_1(arg_0: vec2<f32>) -> Struct_4 {
    let var_0 = Struct_1(2293f, !func_2(vec3<i32>(1i, u_input.c.x, 47983i) >> (countOneBits(u_input.a.ywy) % vec3<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + -1000f), _wgslsmith_f_op_f32(round(-1334f)), arg_0.x), countOneBits(-6745i)));
    var var_1 = ~(~u_input.b);
    return Struct_4(func_2(abs(~(-vec3<i32>(u_input.c.x, 2147483647i, 0i))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, var_0.a, 498f), vec3<f32>(-275f, arg_0.x, 533f), false)))), vec3<f32>(_wgslsmith_f_op_f32(sign(arg_0.x)), var_0.a, _wgslsmith_f_op_f32(floor(2296f)))), 1i).xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1000f, -434f), vec2<f32>(639f, 204f))))) - _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(1651f, -1226f), vec2<f32>(-1018f, 1397f))))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-180f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(176f * -343f), _wgslsmith_f_op_f32(min(380f, -1226f))), _wgslsmith_f_op_f32(-384f - _wgslsmith_f_op_f32(748f - 1188f)), -1150f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1048f, -182f, -429f, -615f))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-445f, -3020f, -1023f, 177f)))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1387f) * -940f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1346f - -496f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(346f + -1189f))))), _wgslsmith_f_op_f32(-111f * _wgslsmith_f_op_f32(ceil(714f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(315f + -782f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(-1541f)), -110f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.x + -158f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(var_1.x)))))), 41715u, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-693f + var_1.x)))), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(618f, -1125f, false)))))), ~(~abs(vec2<i32>(24817i, u_input.c.x))), -1470f);
}

