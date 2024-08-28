struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<bool>,
    c: bool,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: vec3<u32>,
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

var<private> global0: i32 = 1i;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    global0 = ~_wgslsmith_mod_i32(_wgslsmith_div_i32(-min(0i, u_input.a.x), firstLeadingBit(u_input.a.x)), u_input.a.x);
    var var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-796f, 296f) * vec2<f32>(536f, 1289f))))), vec4<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), false)), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, 1i, -2147483647i), vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x) >> (u_input.c % vec3<u32>(32u))) < ~u_input.a.x, (all(vec2<bool>(true, false)) | true) | true, ~(-1i) >= abs(_wgslsmith_dot_vec2_i32(vec2<i32>(17381i, u_input.a.x), u_input.a.yx))), !select(any(vec3<bool>(false, true, false)), true, true || all(vec3<bool>(false, false, true))), Struct_2(u_input.b.x));
    var var_1 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_mod_i32(2147483647i, 6241i), ~2147483647i, 20924i, ~(-2147483647i))), firstLeadingBit(~vec4<i32>(-44671i, u_input.a.x, 42209i, 2147483647i)) | ~u_input.a), _wgslsmith_clamp_i32(((u_input.a.x >> (u_input.b.x % 32u)) ^ u_input.a.x) ^ _wgslsmith_mult_i32(_wgslsmith_clamp_i32(u_input.a.x, 3371i, 2147483647i), 4069i), u_input.a.x, -_wgslsmith_mult_i32(_wgslsmith_div_i32(45381i, 58169i), u_input.a.x)));
    let var_2 = var_0.a.x;
    var_0 = Struct_3(var_0.a, !var_0.b, true, Struct_2(_wgslsmith_clamp_u32(u_input.b.x | u_input.b.x, firstTrailingBit(u_input.c.x), var_0.d.a) | _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, var_0.d.a, var_0.d.a, 9525u), vec4<u32>(1u, var_0.d.a, 4294967295u, u_input.b.x)), ~vec4<u32>(u_input.c.x, 4294967295u, 47317u, 4294967295u))));
    return -(max(u_input.a.x, 1i) | ~(-(~u_input.a.x)));
}

fn func_2(arg_0: f32, arg_1: vec2<f32>, arg_2: vec2<u32>) -> vec3<f32> {
    global0 = -_wgslsmith_clamp_i32(select(u_input.a.x, func_3(), true), u_input.a.x, _wgslsmith_add_i32(i32(-1i) * -65379i, u_input.a.x));
    global0 = u_input.a.x;
    var var_0 = Struct_4(Struct_1(747f), Struct_2(firstTrailingBit(countOneBits(firstLeadingBit(38956u)))), 4294967295u);
    let var_1 = vec2<i32>(~u_input.a.x, abs(-u_input.a.x));
    let var_2 = select(!vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, false), vec4<bool>(720f != _wgslsmith_f_op_f32(exp2(arg_1.x)), true | (_wgslsmith_f_op_f32(trunc(1518f)) >= arg_1.x), true, true), true);
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(362f, arg_1.x)) - _wgslsmith_f_op_f32(f32(-1f) * -786f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -798f) - arg_1.x), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.x - var_0.a.a), _wgslsmith_f_op_f32(floor(arg_1.x)), var_2.x == false)))));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_1, arg_3: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec3_f32(func_2(-1408f, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-arg_1.a), _wgslsmith_f_op_vec2_f32(round(arg_1.a)))), u_input.b.zx));
    var var_1 = arg_1.c;
    var_1 = select(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-943f + -1000f) + _wgslsmith_f_op_f32(729f + arg_1.a.x)) * 573f) < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(var_0.x - -1000f)))), false);
    var var_2 = arg_0;
    var_1 = -1704f < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.a.x))) * var_0.x)));
    return Struct_4(Struct_1(_wgslsmith_f_op_f32(-arg_2.a)), Struct_2(~(~1u)), arg_1.d.a);
}

fn func_4(arg_0: Struct_4) -> u32 {
    var var_0 = min(arg_0.c, u_input.c.x);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.a.a)), -1134f))), select(vec4<bool>(true, true, any(vec4<bool>(false, true, false, false)) | any(vec2<bool>(false, true)), true), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), true), true), false | any(vec4<bool>(true, true, true, true))), arg_0.a.a == arg_0.a.a, arg_0.b);
    var_1 = Struct_3(vec2<f32>(arg_0.a.a, -267f), vec4<bool>(true, var_1.b.x, !any(vec3<bool>(true, true, true)), false), var_1.c, func_1(_wgslsmith_div_i32(~u_input.a.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.ww), -u_input.a.x, u_input.a.x)), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.a, arg_0.a.a) - var_1.a), select(var_1.b, select(vec4<bool>(false, var_1.c, false, true), var_1.b, var_1.b), true), select(!var_1.b.x, true, var_1.b.x), Struct_2(19982u << (0u % 32u))), func_1(~_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 0i), vec2<i32>(u_input.a.x, u_input.a.x)), Struct_3(vec2<f32>(var_1.a.x, arg_0.a.a), select(var_1.b, var_1.b, var_1.c), true, func_1(-75441i, Struct_3(vec2<f32>(arg_0.a.a, var_1.a.x), var_1.b, var_1.c, var_1.d), arg_0.a, u_input.b.x).b), arg_0.a, 1u).a, var_1.d.a).b);
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_4(func_1(-1i, Struct_3(vec2<f32>(1f, 1f), vec4<bool>(true, true, true, true), true, Struct_2(4294967295u)), Struct_1(_wgslsmith_f_op_f32(trunc(-818f))), 4061u));
    var var_1 = true;
    global0 = (i32(-1i) * -u_input.a.x) & -u_input.a.x;
    global0 = -2147483647i;
    let var_2 = -1i;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(trunc(-1721f)), -1000f))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec3_f32(func_2(1203f, vec2<f32>(-1454f, 261f), max(u_input.c.yy, vec2<u32>(u_input.c.x, 644u)))).zz))));
    var var_4 = !(!select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, false), true), select(false, true, false)), any(vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x);
}

