struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1208f, -276f, -294f), Struct_1(vec4<f32>(577f, 1129f, 472f, -386f), -1172f, false, vec2<i32>(43206i, 0i)), -497f);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_1) -> bool {
    let var_0 = true;
    var var_1 = max(_wgslsmith_mult_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a.x), 0u, u_input.d.x), vec3<u32>(19845u >> (0u % 32u), 6691u, ~u_input.c.x) ^ ~(~vec3<u32>(u_input.c.x, 1483u, 1u))), u_input.c.wwx);
    let var_2 = !select(!vec4<bool>(true, arg_0.a.x == 1898f, true, 1u == var_1.x), vec4<bool>(global0.b.c, !var_0, true, arg_0.b.c), _wgslsmith_f_op_f32(global0.a.x - 445f) > _wgslsmith_f_op_f32(-644f + _wgslsmith_f_op_f32(137f * -838f)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(min(global0.b.a.zwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1000f, 1031f, -566f)))) * vec3<f32>(_wgslsmith_f_op_f32(arg_3.b - -1270f), _wgslsmith_f_op_f32(round(2189f)), _wgslsmith_f_op_f32(max(arg_3.a.x, -1797f)))))), arg_2.b, -609f);
    var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(var_3.b.a.yzz - arg_3.a.yyw), _wgslsmith_div_vec3_f32(arg_3.a.yxx, arg_0.b.a.yxy))), var_3.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_3.b))))) - 264f));
    return false && any(!(!select(var_2, var_2, vec4<bool>(var_2.x, false, true, arg_3.c))));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = global0.a.zx;
    let var_1 = !(!select(!vec4<bool>(global0.b.c, true, true, false), arg_1.c, arg_1.c.x));
    var var_2 = firstTrailingBit((u_input.c.yyx & vec3<u32>(4294967295u, max(1300u, arg_0), arg_0)) | u_input.d.wxy);
    return vec2<i32>(~_wgslsmith_mod_i32(firstTrailingBit(global0.b.d.x), abs(firstLeadingBit(u_input.b.x))), ~25941i);
}

fn func_2() -> u32 {
    let var_0 = func_4(~firstLeadingBit(4294967295u & ~u_input.d.x), Struct_3(vec3<bool>(!any(vec3<bool>(true, false, false)), false, func_3(Struct_2(global0.b.a.yyw, global0.b, -766f), vec2<bool>(false, global0.b.c), Struct_2(global0.a, global0.b, -656f), global0.b)), u_input.c ^ ~(~vec4<u32>(u_input.d.x, u_input.c.x, u_input.c.x, 0u)), vec4<bool>(false, true, true, global0.b.c)));
    var var_1 = Struct_4(countOneBits(vec2<i32>(43634i, global0.b.d.x ^ 1i)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.x, 725f, -207f), global0.b.a.wyy, vec3<bool>(global0.b.c, global0.b.c, true))))) - _wgslsmith_f_op_vec3_f32(-global0.b.a.xxy)) * _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-814f, global0.c)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.b.b))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1467f * 2144f)))), vec3<f32>(-649f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))));
    var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.a + global0.b.a.xzx));
    var var_3 = select(vec2<bool>(any(vec3<bool>(func_3(Struct_2(global0.b.a.zyy, Struct_1(global0.b.a, -1119f, global0.b.c, vec2<i32>(var_0.x, var_1.a.x)), -434f), vec2<bool>(false, global0.b.c), Struct_2(vec3<f32>(-338f, -693f, 272f), Struct_1(global0.b.a, 482f, true, u_input.b.xw), 358f), Struct_1(vec4<f32>(global0.c, global0.c, 207f, var_2.x), -1651f, true, u_input.b.zy)), global0.b.c, global0.c < 623f)), false || !all(vec3<bool>(global0.b.c, false, global0.b.c))), vec2<bool>(true, global0.b.c), select(!(!select(vec2<bool>(global0.b.c, global0.b.c), vec2<bool>(global0.b.c, true), global0.b.c)), vec2<bool>(false, (true || global0.b.c) == (var_0.x != u_input.b.x)), (global0.b.c & global0.b.c) & !(!global0.b.c)));
    return ~1u;
}

fn func_5(arg_0: u32, arg_1: u32) -> Struct_2 {
    let var_0 = Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-1753f, global0.b.b)), global0.a.x)), _wgslsmith_f_op_f32(abs(558f)), _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.a.x)))), global0.b.b, all(select(select(select(vec2<bool>(false, global0.b.c), vec2<bool>(global0.b.c, global0.b.c), vec2<bool>(global0.b.c, true)), vec2<bool>(global0.b.c, true), !vec2<bool>(global0.b.c, global0.b.c)), !select(vec2<bool>(global0.b.c, false), vec2<bool>(global0.b.c, false), vec2<bool>(false, global0.b.c)), false)), max(min(global0.b.d, vec2<i32>(-3854i, -61344i)) & ~(u_input.b.zx >> (vec2<u32>(arg_0, 1u) % vec2<u32>(32u))), -vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.wy, u_input.b.yw), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, -16156i), vec2<i32>(-2147483647i, global0.b.d.x)))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a.yxy), global0.b, -1000f);
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, -935f, 152f)) + vec3<f32>(var_1.c, global0.a.x, var_0.a.x)) * vec3<f32>(_wgslsmith_f_op_f32(-2037f - -974f), _wgslsmith_f_op_f32(f32(-1f) * -873f), global0.c))));
    var var_3 = -808f;
    var var_4 = vec2<f32>(var_2.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_2.x - global0.c))));
    return Struct_2(vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.b), 708f)), global0.b.a.x, -333f), Struct_1(vec4<f32>(-1000f, _wgslsmith_f_op_f32(-global0.b.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_4.x))), _wgslsmith_div_f32(var_4.x, var_4.x)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.x))))), false, max(vec2<i32>(-2147483647i, global0.b.d.x) | _wgslsmith_mod_vec2_i32(vec2<i32>(-2147483647i, 27942i), var_0.d), global0.b.d)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-603f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-157f, 1663f)))))) * -435f));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> vec2<f32> {
    global0 = func_5(~func_2(), _wgslsmith_mod_u32(reverseBits(5547u), u_input.d.x >> (53556u % 32u)));
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.c, arg_1.a.x, _wgslsmith_f_op_f32(round(-844f)), arg_1.c))), arg_1.c, arg_0.x, u_input.b.xx);
    var var_1 = vec4<u32>(abs(select(_wgslsmith_mult_u32(52012u, u_input.c.x), firstTrailingBit(u_input.c.x), all(arg_0.xz))), ~_wgslsmith_mult_u32(1u, u_input.c.x), abs(_wgslsmith_mod_u32(4294967295u << (u_input.a.x % 32u), 69508u)), firstLeadingBit(func_2())) << (u_input.d % vec4<u32>(32u));
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(abs(~_wgslsmith_sub_u32(u_input.c.x, 1u)), 1u, u_input.d.x >> (34299u % 32u)), ~var_1.xwy);
    let var_3 = -1i;
    return vec2<f32>(989f, 478f);
}

fn func_6(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    var var_0 = Struct_2(arg_1.a, Struct_1(vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(-1612f - _wgslsmith_f_op_f32(-arg_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.a.x))), -598f), _wgslsmith_f_op_f32(-global0.c), !(_wgslsmith_f_op_f32(sign(global0.b.b)) == _wgslsmith_div_f32(global0.c, -1561f)), global0.b.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.a.x * arg_1.a.x) * arg_1.a.x));
    var var_1 = false;
    var var_2 = Struct_3(select(select(select(select(vec3<bool>(true, var_0.b.c, global0.b.c), vec3<bool>(var_0.b.c, true, true), global0.b.c), vec3<bool>(true, arg_1.b.c, false), u_input.c.x != u_input.a.x), select(vec3<bool>(var_0.b.c, arg_2, true), select(vec3<bool>(false, false, arg_1.b.c), vec3<bool>(true, true, global0.b.c), vec3<bool>(true, false, arg_2)), !vec3<bool>(arg_1.b.c, true, true)), true), select(select(vec3<bool>(global0.b.c, false, true), select(vec3<bool>(arg_1.b.c, true, global0.b.c), vec3<bool>(true, global0.b.c, false), true), var_0.b.c), select(!vec3<bool>(false, global0.b.c, true), select(vec3<bool>(false, arg_1.b.c, global0.b.c), vec3<bool>(var_0.b.c, true, false), vec3<bool>(false, true, false)), var_0.b.c), select(select(vec3<bool>(false, global0.b.c, global0.b.c), vec3<bool>(arg_1.b.c, global0.b.c, false), false), vec3<bool>(arg_1.b.c, arg_2, global0.b.c), func_3(arg_1, vec2<bool>(arg_1.b.c, true), arg_1, Struct_1(var_0.b.a, arg_0.x, true, vec2<i32>(global0.b.d.x, arg_1.b.d.x))))), vec3<bool>(global0.c >= func_5(1u, 132649u).b.a.x, true, func_5(1u, u_input.a.x).b.c)), vec4<u32>(_wgslsmith_div_u32(~u_input.d.x, 0u), 0u, u_input.a.x, firstLeadingBit(~u_input.c.x << (~u_input.c.x % 32u))), select(vec4<bool>(true, 46550i == ~global0.b.d.x, !var_0.b.c | any(vec4<bool>(true, false, false, true)), all(select(vec2<bool>(arg_1.b.c, var_0.b.c), vec2<bool>(arg_1.b.c, true), vec2<bool>(false, true)))), select(!vec4<bool>(arg_1.b.c, arg_2, arg_2, arg_1.b.c), !vec4<bool>(false, var_0.b.c, arg_1.b.c, false), select(vec4<bool>(arg_2, global0.b.c, arg_1.b.c, var_0.b.c), !vec4<bool>(false, false, arg_1.b.c, false), !vec4<bool>(false, global0.b.c, var_0.b.c, arg_1.b.c))), func_4(_wgslsmith_add_u32(25065u, 1u), Struct_3(vec3<bool>(arg_1.b.c, global0.b.c, true), u_input.c, vec4<bool>(false, global0.b.c, arg_1.b.c, arg_2))).x >= -_wgslsmith_dot_vec4_i32(vec4<i32>(35631i, 28767i, u_input.b.x, -7330i), vec4<i32>(var_0.b.d.x, -2147483647i, global0.b.d.x, global0.b.d.x))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(sign(-440f)), _wgslsmith_f_op_f32(abs(global0.b.a.x)), _wgslsmith_div_f32(-1237f, -709f)), arg_1.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(857f - _wgslsmith_f_op_f32(100f + arg_1.c)))), any(vec2<bool>(func_5(78956u, u_input.d.x).b.c, true)), -(~vec2<i32>(1i | global0.b.d.x, var_0.b.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -global0.b.d.x;
    var var_1 = global0.b;
    global0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1862f), _wgslsmith_f_op_f32(step(-440f, _wgslsmith_f_op_f32(685f * _wgslsmith_f_op_f32(global0.c + var_1.a.x)))), _wgslsmith_div_f32(global0.a.x, -696f)), func_6(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(var_1.a.yw, vec2<f32>(-254f, 1148f)), _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, global0.b.c, var_1.c, var_1.c), Struct_2(global0.a, global0.b, -525f))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a.yw, vec2<f32>(622f, var_1.a.x)))), func_5(4294967295u, ~(~4294967295u)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.a.x))) <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(2633f * 1264f), -113f)), -767f);
    var_0 = func_4(75855u, Struct_3(vec3<bool>(!(!var_1.c), global0.b.c, !(!var_1.c)), ~u_input.c, !vec4<bool>(true, any(vec2<bool>(false, var_1.c)), false, var_1.c | global0.b.c))).x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.b, var_1.a.x, global0.a.x), var_1.a.wyx))), func_6(vec2<f32>(var_1.b, var_1.b), Struct_2(var_1.a.xxy, global0.b, 1275f), true).a.yyx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global0.b.a.x, global0.a.x, global0.b.b)))) + vec3<f32>(var_1.b, _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, global0.b.c, var_1.c, false), Struct_2(global0.b.a.zyx, global0.b, 101f))).x))));
}

