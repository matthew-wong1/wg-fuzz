struct Struct_1 {
    a: vec4<f32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<bool>,
    c: vec4<f32>,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3() -> vec4<bool> {
    let var_0 = vec3<u32>(26875u, (~firstLeadingBit(4294967295u) << (select(~1u, _wgslsmith_add_u32(1u, 1u), true) % 32u)) ^ _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), max(~vec4<u32>(4294967295u, 20504u, 52779u, 0u), ~vec4<u32>(1u, 0u, 61021u, 39876u))), abs(~select(23481u, 21796u, false)) >> (73523u % 32u));
    let var_1 = Struct_2(vec4<i32>(firstTrailingBit(1i), u_input.a.x, 1i, u_input.a.x), Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-127f, -176f, -1672f, -536f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1569f, -723f, -1000f, -106f)))))), vec2<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true)))), abs(_wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.x, 4294967295u), var_0.x)), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(538f, 1664f, -1092f, -1069f), vec4<f32>(351f, -557f, -1515f, -1000f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-163f, 290f, 295f, -663f)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1846f, -1000f, -543f) * vec4<f32>(1397f, -663f, -726f, -296f)), vec4<f32>(-561f, -1000f, -530f, 885f)))), vec2<bool>(true, true)), Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-933f, 291f, -1000f, 1957f))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(858f, -1261f, -779f, 132f), vec4<f32>(-176f, -286f, -1000f, 1236f), true)))))), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(select(true, true, false), true))));
    let var_2 = !vec3<bool>(true, !all(vec3<bool>(true, true, true)), true);
    let var_3 = ~vec2<i32>(_wgslsmith_div_i32(reverseBits(_wgslsmith_add_i32(var_1.a.x, var_1.a.x)), _wgslsmith_sub_i32(firstTrailingBit(var_1.a.x), 1i ^ var_1.a.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, ~(-42192i)), vec2<i32>(u_input.a.x, u_input.a.x)));
    let var_4 = true;
    return select(vec4<bool>(all(select(var_2, var_2, true)), select(true, true, true) & all(vec4<bool>(var_1.d.b.x, var_1.e.b.x, var_2.x, false)), !var_4, any(!select(var_1.e.b, var_2.xz, true))), !(!vec4<bool>(true, 77782u > var_1.c, false, var_4)), var_0.x >= 13909u);
}

fn func_2(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: i32) -> vec3<bool> {
    let var_0 = arg_0.x;
    let var_1 = select(vec4<bool>(true, true, arg_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(var_0, arg_0.x))) < _wgslsmith_div_f32(460f, _wgslsmith_f_op_f32(select(-660f, -497f, arg_1.x)))), !select(!func_3(), func_3(), all(select(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, true)))), !arg_1.x);
    var var_2 = ~select(~vec3<u32>(1u, 1u, 1u), ~(~vec3<u32>(31511u, 33230u, 26910u)), arg_1.x);
    var_2 = vec3<u32>(firstLeadingBit(var_2.x) | countOneBits(var_2.x), 8246u, select(1u & var_2.x, min(var_2.x ^ 0u, 1u), all(!var_1)));
    var_2 = _wgslsmith_mod_vec3_u32(~(~vec3<u32>(firstLeadingBit(var_2.x), abs(var_2.x), var_2.x)), countOneBits(~(~vec3<u32>(var_2.x, 4398u, var_2.x))));
    return var_1.wwx;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: i32) -> vec4<f32> {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, -411f))), !func_2(_wgslsmith_f_op_vec2_f32(-arg_1.a.xz), !(!vec3<bool>(arg_2, true, arg_2)), arg_3 & _wgslsmith_mult_i32(78182i, arg_3)), arg_1.a, _wgslsmith_dot_vec4_i32(~(-(vec4<i32>(arg_3, 0i, arg_3, -10240i) >> (vec4<u32>(7722u, arg_0, arg_0, 0u) % vec4<u32>(32u)))), -abs(_wgslsmith_div_vec4_i32(vec4<i32>(-38651i, -2147483647i, -46458i, 0i), vec4<i32>(37754i, u_input.a.x, u_input.a.x, -31744i)))));
    var var_1 = all(func_3());
    let var_2 = all(var_0.b.yz);
    var var_3 = Struct_2(vec4<i32>(-1i) * -(-vec4<i32>(-2147483647i, var_0.d, 9047i, arg_3) | select(vec4<i32>(arg_3, arg_3, 0i, 2147483647i), vec4<i32>(u_input.a.x, 0i, arg_3, -1306i), vec4<bool>(var_0.b.x, var_0.b.x, false, false))), Struct_1(arg_1.a, !(!select(var_0.b.zy, arg_1.b, var_0.b.x))), arg_0, arg_1, arg_1);
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_3.b.a.x)));
    return vec4<f32>(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.a.x))), 1f, arg_1.a.x, 725f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_1(23077u, Struct_1(vec4<f32>(752f, -629f, -385f, -2745f), vec2<bool>(false, true)), true, countOneBits(-42454i))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2508f, -1000f, 729f, 193f))), vec4<bool>(true, true, true, true))), vec4<f32>(1f, 1f, 1f, 1f)), !vec2<bool>(true, -1i >= u_input.a.x));
    var var_1 = -9416i;
    var_1 = _wgslsmith_mult_i32(~(u_input.a.x ^ -_wgslsmith_clamp_i32(u_input.a.x, 25099i, u_input.a.x)), ~firstTrailingBit(u_input.a.x << (77071u % 32u)) & (u_input.a.x & -1i));
    var_1 = u_input.a.x;
    var var_2 = !func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(var_0.a.x, var_0.a.x)), _wgslsmith_f_op_f32(trunc(var_0.a.x)))), select(vec3<bool>(var_0.b.x, var_0.b.x && var_0.b.x, true), func_2(vec2<f32>(var_0.a.x, 991f), !vec3<bool>(var_0.b.x, true, var_0.b.x), _wgslsmith_add_i32(13292i, -2147483647i)), select(func_2(var_0.a.yz, vec3<bool>(var_0.b.x, true, false), -10657i), !vec3<bool>(var_0.b.x, false, false), !vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x))), countOneBits(~(~(-1i))));
    let x = u_input.a;
    s_output = StorageBuffer(1362f);
}

