struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: bool, arg_3: Struct_2) -> bool {
    var var_0 = _wgslsmith_mult_u32(~_wgslsmith_add_u32(arg_3.c << ((arg_1.c ^ arg_1.c) % 32u), 0u << (~4294967295u % 32u)), 0u);
    let var_1 = vec3<i32>(_wgslsmith_mod_i32(1i, -(~9500i & select(arg_1.a.x, u_input.a.x, arg_3.d.x))), 0i, u_input.a.x);
    var var_2 = arg_1.d.zyx;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.b.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(532f + -353f), arg_0))), arg_0)), 1454f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -438f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -838f), -1796f) + arg_3.b.a.x));
    var_0 = _wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, firstTrailingBit(arg_3.c)), ~0u), arg_3.c);
    return 27662u >= arg_1.c;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: vec2<u32>, arg_3: vec2<u32>) -> vec4<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-500f, arg_0.a.x, false)) - _wgslsmith_f_op_f32(-arg_0.a.x)), _wgslsmith_f_op_f32(min(arg_0.a.x, _wgslsmith_f_op_f32(floor(-374f))))), vec3<f32>(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(1038f, -557f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-204f, 418f)), 1000f))));
    let var_1 = vec2<bool>(!func_3(var_0.a.x, Struct_2(vec3<i32>(u_input.a.x, 2147483647i, 18321i), arg_0, 68667u << (0u % 32u), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false))), true, Struct_2(_wgslsmith_mult_vec3_i32(u_input.a.zzy, vec3<i32>(-2147483647i, -41390i, -24883i)), arg_0, u_input.b, vec4<bool>(false, true, true, true))), !(!(_wgslsmith_f_op_f32(arg_0.a.x + -576f) >= arg_0.a.x)));
    let var_2 = Struct_2(_wgslsmith_mod_vec3_i32(select(select(vec3<i32>(-2147483647i, u_input.a.x, -35947i), u_input.a.xyw, vec3<bool>(true, var_1.x, var_1.x)) | _wgslsmith_div_vec3_i32(u_input.a.yzz, u_input.a.zzz), reverseBits(u_input.a.xyy) >> (firstTrailingBit(vec3<u32>(arg_3.x, 0u, arg_2.x)) % vec3<u32>(32u)), var_1.x), arg_1), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(118f, -414f, arg_0.a.x) + arg_0.a)))), ~108866u, select(!(!(!vec4<bool>(true, false, var_1.x, var_1.x))), vec4<bool>(false, true, any(!var_1), true), false));
    let var_3 = ~1u;
    var var_4 = select(var_2.d.xzy, select(vec3<bool>(!(var_1.x || true), var_2.d.x, select(true, select(true, var_2.d.x, false), true)), !select(select(vec3<bool>(var_1.x, false, true), vec3<bool>(false, true, var_1.x), true), !var_2.d.xzy, select(var_2.d.ywz, vec3<bool>(true, var_2.d.x, false), var_1.x)), true), vec3<bool>(all(vec4<bool>(true, !var_2.d.x, false, var_1.x && var_2.d.x)), true, any(vec4<bool>(var_1.x, true, true, true))));
    return select(select(select(vec4<bool>(all(vec4<bool>(var_4.x, false, false, var_4.x)), true, var_2.c != var_2.c, var_2.d.x), vec4<bool>(var_1.x, all(var_2.d.wxy), var_2.d.x, var_1.x | false), var_2.d), select(vec4<bool>(!var_1.x, true, all(vec4<bool>(var_4.x, var_1.x, var_2.d.x, false)), select(var_4.x, var_2.d.x, var_2.d.x)), !vec4<bool>(false, var_2.d.x, false, false), select(var_2.d, !vec4<bool>(var_4.x, var_4.x, var_2.d.x, var_4.x), !var_2.d)), vec4<bool>(!var_1.x, var_1.x, !(var_1.x && false), var_1.x)), var_2.d, _wgslsmith_div_i32(_wgslsmith_sub_i32(34102i, ~49441i), var_2.a.x) == countOneBits(u_input.a.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> vec2<bool> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(arg_0, vec2<f32>(arg_0.x, arg_0.x))))));
    var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.a.yz - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, var_0.x)), vec2<f32>(-473f, 651f))) - vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(341f * arg_3.b.a.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-181f, arg_0.x)), 913f)))));
    var_0 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(arg_1.b.a.zz)))))));
    var var_1 = Struct_1(arg_3.b.a);
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1094f, var_0.x, arg_0.x, arg_1.b.a.x), vec4<f32>(var_1.a.x, var_1.a.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_3.d.x, false, arg_1.d.x))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3.b.a.x, -215f, arg_0.x, var_1.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1704f, 179f, arg_3.b.a.x, -523f)))))));
    return !(!(!(!(!vec2<bool>(arg_1.d.x, true)))));
}

fn func_1(arg_0: vec3<i32>) -> f32 {
    var var_0 = vec4<bool>(true | (true & (select(false, false, false) != true)), ~40940u <= select(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(0u, 4350u)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(1u, u_input.b), ~4294967295u), _wgslsmith_div_u32(0u, 78318u) < _wgslsmith_clamp_u32(16003u, 73834u, 0u)), (_wgslsmith_sub_u32(u_input.b, ~0u) ^ _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, u_input.b), reverseBits(vec2<u32>(u_input.b, 0u)))) > ~(26802u ^ u_input.b), !all(vec3<bool>(true, true, true)));
    let var_1 = !select(var_0.wy, func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-381f, -781f) - vec2<f32>(-518f, 1000f))), Struct_2(_wgslsmith_add_vec3_i32(u_input.a.www, arg_0), Struct_1(vec3<f32>(-1070f, 1321f, 466f)), 1u, func_2(Struct_1(vec3<f32>(444f, 379f, 1000f)), vec3<i32>(arg_0.x, 2147483647i, 1i), vec2<u32>(u_input.b, u_input.b), vec2<u32>(0u, 35795u))), -arg_0.x >> (firstTrailingBit(13021u) % 32u), Struct_2(_wgslsmith_sub_vec3_i32(u_input.a.xyz, u_input.a.wxy), Struct_1(vec3<f32>(289f, -1000f, -664f)), u_input.b & 4294967295u, func_2(Struct_1(vec3<f32>(1000f, -187f, 897f)), vec3<i32>(0i, u_input.a.x, 1159i), vec2<u32>(u_input.b, 0u), vec2<u32>(11801u, 61559u)))), true);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -936f);
    var_0 = !vec4<bool>(any(func_2(Struct_1(vec3<f32>(-2515f, -965f, -1657f)), vec3<i32>(7675i, arg_0.x, 28361i), _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, u_input.b), vec2<u32>(7306u, 25195u)), vec2<u32>(u_input.b, 1u)).wxz), var_1.x, !(!all(vec3<bool>(var_0.x, var_1.x, var_0.x))), var_0.x);
    var_0 = vec4<bool>(any(!var_1), var_0.x, false, true);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-290f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(u_input.a.yzz))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -863f) - _wgslsmith_f_op_f32(296f - 1000f)) - _wgslsmith_f_op_f32(trunc(1447f))), 790f));
    let x = u_input.a;
    s_output = StorageBuffer(abs(4294967295u), ~vec2<u32>(~1u, 1u), var_1.x);
}

