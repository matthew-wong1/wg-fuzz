struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: bool,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> bool {
    let var_0 = ~(-1i);
    let var_1 = !(arg_0.b.a & !(!arg_0.b.b.x));
    let var_2 = max(vec2<u32>(u_input.c, (1u | (37107u | u_input.c)) >> (~select(0u, 1u, false) % 32u)), vec2<u32>(u_input.c, u_input.c) << (u_input.b.yz % vec2<u32>(32u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.c, 2387f, 837f, arg_0.b.c) + vec4<f32>(arg_0.b.c, -2498f, arg_0.b.c, 307f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-678f, -558f, arg_0.a.c, arg_0.a.c))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(154f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.b.c, -565f)) - arg_0.b.c), _wgslsmith_f_op_f32(_wgslsmith_div_f32(369f, arg_0.a.c) + -338f))));
    var_3 = vec4<f32>(_wgslsmith_f_op_f32(var_3.x * arg_0.b.c), var_3.x, _wgslsmith_f_op_f32(-627f + _wgslsmith_f_op_f32(-var_3.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_3.x)) * _wgslsmith_f_op_f32(exp2(var_3.x))))))));
    return arg_0.b.a;
}

fn func_2(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: u32) -> i32 {
    let var_0 = arg_1.d;
    var var_1 = 29517u;
    var_1 = countOneBits(~(~31204u));
    let var_2 = Struct_3(Struct_1(!func_3(Struct_3(arg_0.c, arg_0.c), Struct_2(arg_0.e.www)), select(vec2<bool>(var_0, arg_0.c.a && arg_1.d), vec2<bool>(true, !arg_2.x), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.c)), !(!arg_2.x)), arg_0.c);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1510f, arg_1.c, true))))))));
    return -904i;
}

fn func_1() -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(ceil(-226f));
    var var_1 = _wgslsmith_add_vec3_i32(u_input.d, abs(vec3<i32>(func_2(Struct_5(0u, 1u, Struct_1(true, vec2<bool>(true, true), 581f, true), vec2<u32>(4783u, 53692u), vec4<i32>(1i, 1i, u_input.d.x, 11140i)), Struct_1(false, vec2<bool>(true, true), 1199f, true), vec3<bool>(false, false, true), u_input.b.x), _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), firstLeadingBit(-34913i)) | vec3<i32>(_wgslsmith_mod_i32(-1i, u_input.a), abs(u_input.d.x), -15533i)));
    var_1 = ~vec3<i32>(_wgslsmith_mod_i32(-2147483647i, ~u_input.a), -24454i, -1i);
    var var_2 = Struct_4(!any(vec4<bool>(true, true, true, true)), Struct_2(abs(vec3<i32>(-u_input.a, ~(-2147483647i), 0i))), all(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2934f)));
    var var_3 = Struct_5(25307u, u_input.b.x, Struct_1(var_2.c, vec2<bool>(var_2.c, var_2.c), 903f, true), ~vec2<u32>(u_input.c, 32041u), -select(_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.b.a.x, u_input.d.x, -1i, 2147483647i) << (vec4<u32>(u_input.b.x, u_input.c, 4294967295u, u_input.c) % vec4<u32>(32u)), vec4<i32>(var_1.x, var_1.x, var_2.b.a.x, u_input.a)), -_wgslsmith_add_vec4_i32(vec4<i32>(var_2.b.a.x, u_input.d.x, var_1.x, u_input.a), vec4<i32>(2147483647i, 54098i, var_1.x, var_1.x)), var_2.a));
    return Struct_4(var_2.c, Struct_2(_wgslsmith_sub_vec3_i32(u_input.d, max(u_input.d, var_2.b.a))), any(var_3.c.b), _wgslsmith_f_op_f32(var_3.c.c - -434f));
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_4) -> bool {
    let var_0 = -6741i;
    var var_1 = arg_2.b;
    var var_2 = u_input.b;
    let var_3 = abs(arg_2.b.a.x);
    var_1 = arg_2.b;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(func_4(vec4<bool>(false, true, true, any(vec2<bool>(true, false))), -446f, func_1()), func_1().b, !any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)) || func_3(Struct_3(Struct_1(true, vec2<bool>(true, false), -1293f, true), Struct_1(false, vec2<bool>(false, false), 173f, true)), Struct_2(-vec3<i32>(-1i, u_input.a, u_input.d.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1821f, -586f)) - _wgslsmith_f_op_f32(abs(-354f)))))));
    var_0 = func_1();
    var var_1 = Struct_1(!var_0.a, select(vec2<bool>(var_0.a, any(vec4<bool>(var_0.c, false, var_0.c, var_0.a)) == (var_0.d >= -1583f)), !vec2<bool>(func_3(Struct_3(Struct_1(var_0.c, vec2<bool>(var_0.c, var_0.a), var_0.d, var_0.c), Struct_1(false, vec2<bool>(var_0.a, var_0.a), var_0.d, true)), Struct_2(var_0.b.a)), true), !select(vec2<bool>(false, var_0.c), vec2<bool>(false, var_0.c), vec2<bool>(true, var_0.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d)) + -181f), true | var_0.a);
    var_1 = Struct_1(all(select(select(select(vec2<bool>(true, var_1.b.x), var_1.b, vec2<bool>(var_0.a, false)), !vec2<bool>(var_0.c, var_1.a), var_1.b.x), vec2<bool>(func_3(Struct_3(Struct_1(false, vec2<bool>(var_0.c, true), 1000f, var_0.c), Struct_1(var_1.a, var_1.b, var_1.c, var_1.d)), var_0.b), all(vec3<bool>(var_0.a, true, false))), var_1.b)), select(select(var_1.b, select(select(var_1.b, vec2<bool>(var_0.a, false), vec2<bool>(var_1.b.x, var_1.d)), var_1.b, var_1.b), !vec2<bool>(false, var_1.d)), select(vec2<bool>(var_0.c, select(var_0.a, var_0.c, var_1.a)), var_1.b, select(vec2<bool>(var_0.c, var_0.c), !var_1.b, !var_1.b)), select(var_1.b, select(var_1.b, !vec2<bool>(var_1.d, true), var_0.c), !(!var_1.b))), var_1.c, var_1.d);
    let var_2 = func_1().b;
    let var_3 = vec2<bool>(true, 0u > (u_input.b.x | u_input.c));
    var var_4 = firstTrailingBit(vec4<u32>(16221u, abs(~u_input.b.x), u_input.c, ~4294967295u) << (~vec4<u32>(u_input.b.x, _wgslsmith_div_u32(4383u, 27858u), 0u, ~78895u) % vec4<u32>(32u)));
    var_1 = Struct_1(var_0.c, select(select(!vec2<bool>(var_3.x, var_1.a), vec2<bool>(true | var_3.x, func_4(vec4<bool>(var_3.x, var_3.x, var_1.b.x, false), var_1.c, Struct_4(true, var_0.b, false, 1509f))), var_0.c), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), var_1.b)), !vec2<bool>(var_0.a && false, any(vec3<bool>(false, true, false)))), 334f, 0u >= ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(-35194i));
}

