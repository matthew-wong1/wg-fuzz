struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<f32>,
    d: vec3<bool>,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    var var_0 = global0.x;
    var var_1 = 1u;
    global0 = vec2<u32>(~firstLeadingBit(52752u), 9967u);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1068f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -391f) - _wgslsmith_f_op_f32(ceil(-1000f)))))) >= 851f;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(i32(-1i) * -6990i, _wgslsmith_mult_i32(2147483647i, -1i), 2336i, firstTrailingBit(-1i)), firstTrailingBit(-min(vec4<i32>(-1i, -1i, -21685i, 24517i), vec4<i32>(-2147483647i, 21013i, 1i, 4247i))) << (vec4<u32>(4294967295u, u_input.b.x, global0.x, u_input.a.x) % vec4<u32>(32u)));
    let var_2 = 1i;
    var var_3 = vec2<u32>(101751u, global0.x);
    let var_4 = min(abs(min(var_1, var_1)), ~(-_wgslsmith_mod_vec4_i32(var_1 >> (vec4<u32>(global0.x, global0.x, 1u, 0u) % vec4<u32>(32u)), ~var_1)));
    return Struct_1(u_input.a.x, vec4<bool>(var_0, func_3() != !var_0, false, any(vec2<bool>(any(vec3<bool>(true, true, false)), true))), vec2<f32>(_wgslsmith_f_op_f32(max(-1805f, 1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(f32(-1f) * -914f)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-2404f, -1021f)))))), vec3<bool>(all(!vec3<bool>(var_0, var_0, var_0)), var_0, true | all(vec2<bool>(true, false))), !(!(!select(vec3<bool>(var_0, true, var_0), vec3<bool>(var_0, false, false), vec3<bool>(var_0, var_0, false)))));
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = func_2();
    var_0 = Struct_1(1u, !arg_0.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_0.c.x + arg_0.c.x), _wgslsmith_f_op_f32(-arg_0.c.x))), _wgslsmith_div_f32(arg_0.c.x, var_0.c.x))), func_2().b.xzy, select(!var_0.e, select(func_2().e, !arg_0.e, true), arg_0.d));
    var var_1 = _wgslsmith_div_f32(-1691f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.c.x, 591f, true)) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.c.x)))), arg_0.c.x));
    var_0 = Struct_1(1u, vec4<bool>(countOneBits(u_input.b.x ^ u_input.a.x) >= ~func_2().a, !arg_0.b.x, true == func_3(), arg_0.e.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.c))), vec2<f32>(var_0.c.x, _wgslsmith_f_op_f32(abs(1129f))))) + vec2<f32>(arg_0.c.x, 1117f)), !(!var_0.e), select(vec3<bool>(func_2().e.x, all(vec4<bool>(true, false, true, true)), false), !(!var_0.d), vec3<bool>(true, false, !var_0.d.x)));
    var_1 = var_0.c.x;
    return -2147483647i;
}

fn func_1(arg_0: f32, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = u_input.a & _wgslsmith_sub_vec2_u32(~arg_1 & arg_1, arg_1);
    var var_0 = -2147483647i;
    var var_1 = ~abs(vec4<i32>(1i, 1i, 1i, 1i) ^ select(vec4<i32>(-1i, -62014i, 62094i, 0i), -vec4<i32>(7244i, -45479i, 1i, -13381i), !arg_3.b));
    var_0 = func_4(func_2());
    var_0 = reverseBits(_wgslsmith_mod_i32(var_1.x, ~39199i) ^ 40253i);
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> f32 {
    global0 = ~_wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_1.a, u_input.b.x), ~(~vec2<u32>(u_input.a.x, 41606u))), u_input.b.xx);
    let var_0 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(func_1(227f, vec2<u32>(u_input.a.x, global0.x), Struct_1(23039u, vec4<bool>(false, false, true, true), vec2<f32>(651f, -1645f), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), Struct_1(4294967295u, vec4<bool>(true, false, true, true), vec2<f32>(-1611f, 1767f), vec3<bool>(true, true, false), vec3<bool>(false, false, true))), func_2(), -1893f))), _wgslsmith_f_op_f32(-371f * _wgslsmith_f_op_f32(-func_1(2647f, u_input.b.xy, Struct_1(u_input.a.x, vec4<bool>(true, true, true, true), vec2<f32>(1227f, 223f), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), Struct_1(global0.x, vec4<bool>(true, false, true, true), vec2<f32>(1031f, -1000f), vec3<bool>(false, false, true), vec3<bool>(true, true, false))).c.x))));
    let x = u_input.a;
    s_output = StorageBuffer(-countOneBits(~reverseBits(vec2<i32>(15838i, 63334i))));
}

