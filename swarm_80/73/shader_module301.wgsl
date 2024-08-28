struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: i32,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
    c: i32,
    d: u32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_1() -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(428f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1204f), _wgslsmith_f_op_f32(f32(-1f) * -2316f))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<f32>, arg_2: Struct_2) -> i32 {
    let var_0 = -abs(vec2<i32>(0i, -u_input.b.x));
    let var_1 = Struct_2(arg_2.c, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c.a - arg_2.b.a) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.c.a * vec3<f32>(-492f, arg_2.c.a.x, arg_2.a.a.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1147f, arg_2.a.a.x, arg_2.a.a.x) - vec3<f32>(arg_2.b.a.x, arg_2.a.a.x, arg_2.c.a.x)))), _wgslsmith_add_i32(-16707i, 0i), min(~(-u_input.b), -vec3<i32>(-19780i, u_input.b.x, 1i)), all(arg_0)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2.b.a)), ~(i32(-1i) * -2147483647i), countOneBits(vec3<i32>(arg_2.c.c.x, 0i, var_0.x << (u_input.d.x % 32u))), all(select(vec2<bool>(arg_2.c.d, arg_0.x), arg_0.yz, arg_2.c.d))), var_0.x, arg_0.zx);
    let var_2 = Struct_4(select(vec4<bool>(any(!arg_0.yy), false, arg_0.x, any(vec2<bool>(false, false))), !(!(!vec4<bool>(var_1.a.d, true, false, arg_2.b.d))), select(vec4<bool>(any(vec2<bool>(arg_2.e.x, var_1.b.d)), false, true, any(vec4<bool>(false, arg_0.x, var_1.e.x, arg_2.b.d))), !(!vec4<bool>(true, true, arg_2.b.d, false)), !select(vec4<bool>(false, arg_0.x, false, false), vec4<bool>(arg_2.e.x, false, var_1.c.d, false), var_1.e.x))));
    let var_3 = arg_2.c.a;
    let var_4 = var_1.b;
    return _wgslsmith_add_i32(_wgslsmith_sub_i32(var_4.c.x, arg_2.a.c.x), firstTrailingBit(0i));
}

fn func_2() -> bool {
    let var_0 = !select(vec2<bool>(false, _wgslsmith_dot_vec3_i32(vec3<i32>(-31199i, u_input.b.x, 0i), u_input.b) >= -22159i), vec2<bool>(all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false)), true), select(false, !all(vec4<bool>(false, false, false, false)), false));
    let var_1 = (vec4<i32>(-2147483647i, 1i, u_input.b.x, u_input.b.x) | ~(vec4<i32>(-1i) * -vec4<i32>(53251i, -4169i, 0i, 2147483647i))) ^ vec4<i32>(min(_wgslsmith_div_i32(-5558i, 1i), func_3(vec3<bool>(var_0.x, var_0.x, true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-895f, -713f)), Struct_2(Struct_1(vec3<f32>(-157f, 2200f, -335f), u_input.b.x, vec3<i32>(2147483647i, u_input.b.x, 29128i), var_0.x), Struct_1(vec3<f32>(-310f, -644f, 913f), u_input.b.x, vec3<i32>(-36956i, u_input.b.x, -39008i), false), Struct_1(vec3<f32>(1552f, 692f, -2026f), u_input.b.x, u_input.b, true), -1i, var_0))), u_input.b.x, func_3(vec3<bool>(true, false, false), _wgslsmith_f_op_vec2_f32(-vec2<f32>(945f, 1000f)), Struct_2(Struct_1(vec3<f32>(-1834f, -1953f, 1270f), u_input.b.x, vec3<i32>(u_input.b.x, -17678i, 33046i), true), Struct_1(vec3<f32>(581f, -1000f, 1032f), u_input.b.x, vec3<i32>(13694i, 1i, u_input.b.x), var_0.x), Struct_1(vec3<f32>(-211f, -854f, -329f), u_input.b.x, vec3<i32>(1i, 33571i, 61810i), var_0.x), u_input.b.x, var_0)) ^ -57533i, func_3(vec3<bool>(false, u_input.d.x < u_input.a.x, !var_0.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(873f, -1000f)), Struct_2(Struct_1(vec3<f32>(-725f, 544f, -1000f), 2147483647i, u_input.b, false), Struct_1(vec3<f32>(-537f, 1000f, 308f), 34641i, vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), var_0.x), Struct_1(vec3<f32>(-193f, -1368f, 588f), u_input.b.x, u_input.b, var_0.x), u_input.b.x, select(vec2<bool>(true, var_0.x), var_0, true))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-433f, 487f, 222f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-484f, 579f, 1000f)) - vec3<f32>(-1000f, 520f, -1060f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1090f, -1000f, -192f))) * vec3<f32>(1f, 1f, 1f))))), firstLeadingBit(1i), var_1.xzw, var_0.x);
    let var_3 = (i32(-1i) * -53537i) >> (1u % 32u);
    var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_2.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(665f, -1622f, -268f)))), abs(-49664i), vec3<i32>(var_1.x, var_1.x, max((var_2.b << (1u % 32u)) & firstTrailingBit(6218i), min(countOneBits(var_2.b), _wgslsmith_mult_i32(21696i, 0i)))), true);
    return var_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-1769f + -548f), 662f) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(func_1()))))))));
    var var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)));
    let var_3 = Struct_4(select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), true), vec4<bool>(true, func_2(), any(vec4<bool>(false, false, true, false)), true), !func_2()), select(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, all(vec4<bool>(false, false, false, true)), true, all(vec2<bool>(false, true))), all(vec2<bool>(true, true))), all(select(vec2<bool>(false, true), vec2<bool>(true, true), true))));
    var var_4 = u_input.d.x;
    let var_5 = _wgslsmith_f_op_f32(var_2 - 749f);
    let var_6 = _wgslsmith_mult_vec4_u32(u_input.d, u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(var_6.xx, var_5, u_input.b.x, _wgslsmith_mult_vec3_i32(u_input.b, u_input.b));
}

