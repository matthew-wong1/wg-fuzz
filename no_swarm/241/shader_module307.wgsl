struct Struct_1 {
    a: i32,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1(arg_0: Struct_1) -> bool {
    return false;
}

fn func_3() -> i32 {
    return _wgslsmith_add_i32(-(~(-abs(2147483647i))), select(1i, min(firstTrailingBit(13631i), -27341i), true));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>, arg_3: u32) -> Struct_1 {
    var var_0 = false;
    var var_1 = Struct_2(Struct_1(countOneBits(i32(-1i) * -2147483647i), 1u, 1294f, 1u), arg_1, _wgslsmith_mult_i32(-func_3(), 36228i));
    var_1 = Struct_2(var_1.a, var_1.a.c, ~2242i);
    let var_2 = Struct_1(-var_1.c, ~3696u, var_1.b, var_1.a.d);
    var_0 = false;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(select(vec2<bool>(true, true || any(vec3<bool>(false, true, false))), vec2<bool>(true, false), !any(vec3<bool>(true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(287f)) + 2105f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(730f))))), vec2<bool>(!(!all(vec4<bool>(true, true, true, true))), func_1(Struct_1(-2147483647i, u_input.a.x, -589f, _wgslsmith_add_u32(u_input.a.x, 0u)))), 13794u);
    var var_1 = Struct_2(func_2(select(vec2<bool>(true, true), select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false), vec2<bool>(false, true)), vec2<bool>(true, true)), _wgslsmith_f_op_f32(-var_0.c), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(var_0.a > 2147483647i, any(vec2<bool>(true, true)))), 39351u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-439f + _wgslsmith_f_op_f32(exp2(var_0.c)))) - _wgslsmith_f_op_f32(trunc(806f))), -1i);
    var var_2 = -vec4<i32>(~(~(~var_1.c)), reverseBits(_wgslsmith_div_i32(var_1.a.a ^ -33728i, 0i)), _wgslsmith_mult_i32(var_1.c, 31637i) & -24533i, -46054i);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, var_0.c, var_0.c, -364f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 2195f, -1433f, -811f) - vec4<f32>(-175f, -820f, -1219f, var_0.c))))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(2903f, var_0.c, -1003f, var_1.a.c), vec4<f32>(var_1.a.c, var_1.b, var_0.c, 1131f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1.b, var_0.c, var_0.c, var_0.c), vec4<f32>(var_1.b, var_1.b, var_1.a.c, 1522f))))))));
    var var_4 = Struct_1(0i, reverseBits(max(0u, 22323u)), -1080f, var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(var_4.a, -35705i, var_1.a.a | -7104i, 1i), ~(-select(vec2<i32>(21988i, -1i), vec2<i32>(-2147483647i, -24443i), true) | abs(vec2<i32>(-2147483647i, var_1.a.a))));
}

