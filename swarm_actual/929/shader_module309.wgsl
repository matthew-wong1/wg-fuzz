struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: i32, arg_1: vec3<i32>, arg_2: vec4<i32>, arg_3: bool) -> bool {
    let var_0 = true;
    let var_1 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(653f * -549f), -595f)) + _wgslsmith_f_op_f32(-937f * 733f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -215f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2395f))) + _wgslsmith_f_op_f32(f32(-1f) * -1357f)), select(vec4<bool>(true, var_0, all(vec3<bool>(false, arg_3, var_0)), all(!vec4<bool>(false, true, true, arg_3))), vec4<bool>(arg_3 & all(vec4<bool>(false, var_0, false, false)), !(!var_0), _wgslsmith_mult_i32(arg_2.x, 30011i) <= (i32(-1i) * -4112i), all(select(vec3<bool>(false, arg_3, false), vec3<bool>(arg_3, false, true), false))), !select(!vec4<bool>(false, true, var_0, true), vec4<bool>(arg_3, var_0, arg_3, var_0), false)));
    let var_2 = arg_2.x << (~(~(~u_input.c.x) & _wgslsmith_dot_vec4_u32(vec4<u32>(20661u, u_input.c.x, u_input.c.x, 1u) << (vec4<u32>(61665u, 4294967295u, u_input.c.x, 0u) % vec4<u32>(32u)), vec4<u32>(88229u, 14978u, 114118u, u_input.c.x))) % 32u);
    let var_3 = arg_2.x;
    var var_4 = _wgslsmith_mod_vec2_u32(~(~u_input.c), vec2<u32>(u_input.c.x, 60970u >> (max(u_input.c.x, ~u_input.c.x) % 32u)));
    return false;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: vec2<bool>, arg_3: i32) -> f32 {
    var var_0 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1208f) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.x + -293f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-200f - _wgslsmith_f_op_f32(-arg_1.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)))), vec4<bool>(func_3(min(~(-74166i), -1i), _wgslsmith_mod_vec3_i32(-u_input.b.wyw, ~vec3<i32>(u_input.d, -2147483647i, arg_3)), vec4<i32>(-30573i, arg_3, 2147483647i, -22432i), !(u_input.c.x <= u_input.c.x)), false, true, arg_2.x));
    let var_1 = vec3<i32>(reverseBits(min(1i, firstLeadingBit(~u_input.a.x))), 75255i, arg_3 ^ 2147483647i);
    let var_2 = 62305u >= (~arg_0.x & _wgslsmith_sub_u32(5236u, min(0u, 1u)));
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_0.b, var_0.b), var_0.a)))), _wgslsmith_f_op_f32(arg_1.x - var_0.a.x), select(var_0.c, vec4<bool>(func_3(var_1.x ^ u_input.b.x, firstLeadingBit(vec3<i32>(var_1.x, -2147483647i, 0i)), -vec4<i32>(-1i, 28436i, 1i, u_input.a.x), !var_2), true, true, all(var_0.c.xyy)), _wgslsmith_f_op_f32(-240f * var_0.a.x) > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(519f - arg_1.x)))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(706f, -739f, -1106f, 560f))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, var_0.b, arg_1.x, 889f)))))));
    return -1119f;
}

fn func_1() -> bool {
    let var_0 = _wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(reverseBits(-u_input.b.x), 61484i, 0i, -64i));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1051f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(366f, -966f, false))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(1499f, -1544f), _wgslsmith_f_op_f32(1570f - -592f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(423f, -2002f)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(func_2(vec3<u32>(4294967295u, u_input.c.x, 87291u), vec2<f32>(932f, -246f), vec2<bool>(false, true), u_input.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(564f)) - -364f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2729f - 746f) * _wgslsmith_f_op_f32(f32(-1f) * -1617f)))), !select(vec4<bool>(true, false, true, all(vec2<bool>(true, true))), vec4<bool>(true, true, true, true), true));
    var var_2 = Struct_2(vec2<f32>(var_1.a.x, var_1.a.x), _wgslsmith_f_op_f32(-var_1.b), vec4<bool>(!var_1.c.x, any(select(var_1.c.xwy, vec3<bool>(var_1.c.x, false, false), select(vec3<bool>(true, false, false), var_1.c.xxx, var_1.c.zyy))), all(vec2<bool>(false || var_1.c.x, any(vec3<bool>(var_1.c.x, var_1.c.x, var_1.c.x)))), true));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, 1807f, -1000f) * vec3<f32>(-291f, var_1.a.x, -400f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_1.b, -783f)))) - -496f));
    let var_4 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1956f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.x) * _wgslsmith_f_op_f32(step(var_3.b, _wgslsmith_f_op_f32(-var_3.a.x))))), _wgslsmith_f_op_f32(-var_3.b), var_2.a.x, 1315f);
    return all(select(!var_2.c.ww, select(vec2<bool>(true, true), var_1.c.xz, !var_1.c.x), var_2.c.yw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<bool>(false, any(vec3<bool>(all(vec3<bool>(false, true, false)), func_1(), true)) & any(vec2<bool>(false, true)), true);
    var_0 = !(!vec3<bool>(all(select(vec3<bool>(true, true, var_0.x), vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, false, false))), var_0.x, any(var_0.zz)));
    var_0 = !(!(!(!select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, var_0.x), vec3<bool>(false, var_0.x, var_0.x)))));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-351f))) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1445f, -1369f))))), _wgslsmith_f_op_f32(-1552f + 109f), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(-1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-247f, -1062f, true))) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(1384f)))))));
    var_0 = select(!(!vec3<bool>(var_1.a.x != var_1.a.x, var_0.x, false)), !vec3<bool>(u_input.c.x < 50663u, true, true), !select(vec3<bool>(true, true, true), !(!vec3<bool>(var_0.x, true, false)), !(0u > u_input.c.x)));
    var_0 = vec3<bool>(var_0.x, true, all(!select(vec2<bool>(true, true), vec2<bool>(var_0.x, false), var_0.x)));
    var_1 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-2418f - _wgslsmith_f_op_f32(var_1.b + _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.c.x, u_input.c.x, 1u), vec2<f32>(var_1.b, -1068f), var_0.yy, u_input.b.x)), -1044f))));
    var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(var_1.a * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, -410f, -891f) - var_1.a) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(2607f, var_1.b, var_1.a.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1.a))))), _wgslsmith_f_op_f32(482f * _wgslsmith_div_f32(var_1.a.x, 1362f)) < _wgslsmith_div_f32(var_1.b, _wgslsmith_f_op_f32(-var_1.a.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b)) * 965f)) * -1305f));
    var var_2 = -_wgslsmith_add_vec3_i32(u_input.b.yxz, u_input.b.zyz) ^ (-select(u_input.b.xwz, u_input.b.xxx ^ vec3<i32>(u_input.a.x, 2147483647i, 25126i), var_0.x) >> (~vec3<u32>(max(20427u, u_input.c.x), ~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(9349u, u_input.c.x, 63794u, 37903u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_2.x);
}

