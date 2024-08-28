struct Struct_1 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_5, arg_1: i32) -> vec4<i32> {
    var var_0 = arg_1;
    var var_1 = arg_0.a;
    var var_2 = _wgslsmith_mod_u32(4294967295u, ~arg_0.b.x);
    let var_3 = min(6370i, abs(arg_1));
    let var_4 = select(select(select(vec4<bool>(u_input.a.x == 0u, false, true, false), vec4<bool>(true, true, false, true), false), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), false)), select(vec4<bool>(all(vec2<bool>(false, false)) | true, any(vec2<bool>(false, true)), true, select(true, all(vec2<bool>(false, false)), true)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, true), true), vec4<bool>(true, true, true, false)), !(!select(false, true, true))), select(!select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false)), vec4<bool>(all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true))), all(vec2<bool>(true, true)) | true, true, true), !select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true), all(vec3<bool>(true, true, false)))));
    return vec4<i32>(~var_3, ~_wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_1, reverseBits(0i)), -2147483647i, -1i), -1i, arg_1);
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_4(false, Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-295i | arg_1.x, 27640i, 1338i, abs(7936i)), func_3(Struct_5(429f, vec4<u32>(var_0, 1u, 3346u, 4294967295u), u_input.a.zz, arg_0), -1i), -vec4<i32>(24611i, -1940i, 1i, -40126i) & (vec4<i32>(arg_1.x, arg_1.x, 2236i, arg_1.x) & vec4<i32>(-28667i, 60360i, 1i, -2147483647i))), vec4<bool>(true, true, _wgslsmith_f_op_f32(select(-1107f, -140f, true)) >= _wgslsmith_f_op_f32(495f - 1075f), true)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(509f, 2280f)))), -769f) - 1f));
    var_1 = Struct_4(any(var_1.b.b.wwy), var_1.b);
    return var_2;
}

fn func_1() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -682f)), 450f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f)))));
    let var_1 = vec3<f32>(945f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -437f) - _wgslsmith_f_op_f32(-var_0))) + _wgslsmith_f_op_f32(round(-329f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(func_2(u_input.a.x, vec3<i32>(-30568i, -21074i, -6039i))))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0, -999f)) - var_0)))));
    var var_2 = ~(~vec2<u32>(_wgslsmith_sub_u32(max(u_input.a.x, u_input.a.x), ~73337u), select(~1u, ~1u, any(vec4<bool>(true, true, false, false)))));
    var var_3 = abs(select(u_input.a, abs(u_input.a >> (~vec3<u32>(4294967295u, 94277u, u_input.a.x) % vec3<u32>(32u))), vec3<bool>(true, true, true)));
    let var_4 = Struct_5(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1029f), _wgslsmith_f_op_f32(1127f * var_0))))), vec4<u32>(var_3.x, select(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), var_3.x & 4294967295u, all(vec4<bool>(true, true, false, true))) >> (~21763u % 32u), u_input.a.x, firstLeadingBit(~u_input.a.x & ~u_input.a.x)), vec2<u32>(0u, 1u >> (u_input.a.x % 32u)), var_2.x);
    return Struct_4(false, Struct_1(vec4<i32>(19701i, 2147483647i, -1i, abs(-20607i)) >> (firstLeadingBit(~var_4.b) % vec4<u32>(32u)), vec4<bool>(all(vec2<bool>(false, false)), select(any(vec4<bool>(false, true, true, true)), true, var_4.c.x > 4294967295u), any(vec3<bool>(true, true, true)), true)));
}

fn func_4(arg_0: bool, arg_1: Struct_4) -> vec2<f32> {
    let var_0 = _wgslsmith_sub_vec3_i32(arg_1.b.a.wzx, min(~_wgslsmith_mult_vec3_i32(-arg_1.b.a.zwz, ~arg_1.b.a.xzw), arg_1.b.a.wzy));
    var var_1 = true;
    var_1 = arg_0;
    var_1 = arg_1.b.b.x;
    let var_2 = Struct_3(4294967295u, Struct_2(vec3<f32>(1865f, _wgslsmith_f_op_f32(351f * _wgslsmith_f_op_f32(f32(-1f) * -951f)), _wgslsmith_f_op_f32(f32(-1f) * -685f)), _wgslsmith_div_i32(~(~arg_1.b.a.x), 1i)), Struct_2(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2112f, -131f, 741f))), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_1.b.a.yz, arg_1.b.a.xx), _wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(var_0.x, 31019i)), arg_1.b.a.zz))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(round(-185f)), _wgslsmith_div_f32(var_2.c.a.x, 108f)) * _wgslsmith_div_vec2_f32(vec2<f32>(var_2.b.a.x, 1246f), _wgslsmith_f_op_vec2_f32(vec2<f32>(291f, -298f) - var_2.b.a.zz)))), vec2<f32>(570f, 1234f), all(func_1().b.b.ywz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1f, 1f))), _wgslsmith_f_op_vec2_f32(func_4(true, func_1()))));
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(_wgslsmith_f_op_f32(round(var_0.x)) <= _wgslsmith_f_op_f32(144f - var_0.x), all(func_1().b.b)));
    var var_2 = Struct_1(vec4<i32>(-11282i, 1i, -_wgslsmith_dot_vec4_i32(~vec4<i32>(1i, 41370i, -61733i, 1i), vec4<i32>(1i, 1i, 1i, 1i)), -2147483647i), select(vec4<bool>(true, var_1.x, true, 1u <= ~u_input.a.x), select(!func_1().b.b, select(select(vec4<bool>(var_1.x, var_1.x, false, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x), false), !vec4<bool>(false, var_1.x, var_1.x, var_1.x), vec4<bool>(true, var_1.x, true, false)), !(!vec4<bool>(true, true, false, var_1.x))), !vec4<bool>(all(vec2<bool>(var_1.x, false)), var_1.x, var_1.x, var_1.x)));
    let var_3 = Struct_2(vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x))), 1i);
    var var_4 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(vec4<u32>(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), u_input.a.x, select(20781u, 4294967295u, var_2.b.x), 4294967295u), ~vec4<u32>(35782u, u_input.a.x, u_input.a.x, 4294967295u) & ~vec4<u32>(3280u, 16400u, u_input.a.x, u_input.a.x), var_1.x), (~var_2.a.zz & var_2.a.yw) & _wgslsmith_sub_vec2_i32(func_1().b.a.wy, var_2.a.yy));
}

