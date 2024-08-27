struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: Struct_5, arg_1: vec3<f32>) -> bool {
    return true;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: vec2<u32>, arg_3: Struct_5) -> Struct_5 {
    var var_0 = ~u_input.b;
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(388f)))));
    var var_2 = ~abs(-46496i);
    let var_3 = Struct_3(27133u);
    let var_4 = 14633u;
    return arg_3;
}

fn func_1(arg_0: Struct_5, arg_1: Struct_5) -> Struct_1 {
    var var_0 = arg_0;
    var_0 = func_3(vec4<bool>(func_2(Struct_5(var_0.a), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(f32(-1f) * -1795f), -3431f)), true, 2147483647i != (i32(-1i) * -u_input.e), !all(vec2<bool>(arg_1.a, arg_0.a))), Struct_3(~u_input.b.x & _wgslsmith_mult_u32(u_input.b.x ^ u_input.a.x, 4294967295u & u_input.b.x)), firstLeadingBit(~vec2<u32>(4294967295u, u_input.b.x) >> (u_input.a.zy % vec2<u32>(32u))) >> (u_input.a.zy % vec2<u32>(32u)), Struct_5(!any(vec3<bool>(false, true, var_0.a)) | true));
    let var_1 = Struct_3(_wgslsmith_div_u32(~u_input.b.x, u_input.a.x | _wgslsmith_add_u32(33059u, _wgslsmith_div_u32(0u, 3899u))));
    var var_2 = func_2(arg_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-1413f * -765f), -683f, -261f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -154f), _wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(f32(-1f) * -783f)), !(!vec3<bool>(arg_1.a, false, arg_0.a)))) * vec3<f32>(_wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(-332f - 764f)), _wgslsmith_f_op_f32(f32(-1f) * -532f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1211f))))));
    let var_3 = -19517i;
    return Struct_1(691f, ~_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.zy, u_input.b.xw), min(0u, 42669u), 1u, ~1u), u_input.b));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> u32 {
    let var_0 = arg_2;
    let var_1 = 9961u;
    let var_2 = Struct_4(Struct_3(arg_1.b), Struct_2(func_1(func_3(vec4<bool>(true, true, true, true), Struct_3(0u), ~vec2<u32>(arg_1.b, arg_1.b), Struct_5(true)), func_3(vec4<bool>(false, true, false, true), Struct_3(0u), vec2<u32>(0u, var_1), Struct_5(false))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0.a, arg_1.a))), ~_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(arg_0.b, 1u))), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, var_0), abs(vec2<i32>(-2147483647i, arg_2))), (vec2<i32>(arg_2, var_0) & vec2<i32>(-1i, arg_2)) >> (abs(vec2<u32>(63128u, var_1)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(1657f, arg_1.a), vec2<f32>(-1497f, arg_0.a))))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.a)), _wgslsmith_f_op_f32(round(-2271f))), vec2<f32>(arg_0.a, -121f)))));
    var var_3 = var_2.b;
    var var_4 = var_2.b;
    return ~(~32954u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var_0 = true;
    var_0 = !(!(~(~u_input.b.x) != func_4(func_1(Struct_5(true), Struct_5(true)), func_1(Struct_5(true), Struct_5(false)), _wgslsmith_mod_i32(u_input.c, -1i))));
    var var_1 = Struct_4(Struct_3(u_input.a.x), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-1965f, 366f))), u_input.a.x), func_1(func_3(select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false)), Struct_3(26443u), ~vec2<u32>(u_input.b.x, 116232u), Struct_5(false)), func_3(vec4<bool>(true, true, true, true), Struct_3(24990u), min(u_input.a.xx, u_input.a.zx), Struct_5(true))), ~abs(vec2<i32>(-2147483647i, u_input.c) & vec2<i32>(-2147483647i, -1i)), _wgslsmith_f_op_f32(f32(-1f) * -329f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(411f - -122f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1325f + -1211f) * _wgslsmith_f_op_f32(f32(-1f) * -178f))))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.c.x), ~1u);
    let var_3 = !select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), true), vec3<bool>(true, all(vec4<bool>(false, true, false, true)), true), vec3<bool>(true, false, u_input.c >= u_input.e)), vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)))));
    var var_4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.b.d, 1f, _wgslsmith_f_op_f32(f32(-1f) * -851f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(f32(-1f) * -109f)))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(338f, var_2.a, var_1.b.d, var_2.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.b.a, 1454f, 1355f, var_1.b.a.a)), true)), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-710f, -474f, var_1.c.x, -1000f), vec4<f32>(814f, var_1.c.x, var_2.a, var_1.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a, 370f, var_1.c.x, var_2.a) - vec4<f32>(var_1.b.d, 616f, -518f, var_2.a))))))));
    let x = u_input.a;
    s_output = StorageBuffer(-281f, _wgslsmith_mult_vec4_i32(-_wgslsmith_mult_vec4_i32(vec4<i32>(58633i, 1i, var_1.b.c.x, -37331i), vec4<i32>(-2147483647i, 2147483647i, u_input.c, u_input.e)), -vec4<i32>(-2147483647i, u_input.c, u_input.c, var_1.b.c.x)) << (reverseBits(~u_input.b) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(var_1.b.a.b, var_2.b), ~u_input.a.xx), ~(~u_input.b.x)), ~firstTrailingBit(var_1.b.b.b), 1u, 27158u), ~(~(~1u)));
}

