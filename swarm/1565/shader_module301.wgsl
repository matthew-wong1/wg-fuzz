struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<bool>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: u32,
    d: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_3) -> vec2<bool> {
    var var_0 = arg_0;
    let var_1 = all(select(select(!select(vec3<bool>(true, true, arg_1.a), arg_2.a, arg_1.a), select(arg_2.a, !arg_3.a, true), (u_input.d == u_input.b.x) | false), !(!vec3<bool>(false, false, arg_2.a.x)), select(select(select(vec3<bool>(arg_3.a.x, arg_2.a.x, arg_3.a.x), vec3<bool>(arg_1.a, false, var_0.a), vec3<bool>(arg_3.a.x, arg_0.a, arg_3.a.x)), !vec3<bool>(arg_3.a.x, var_0.a, arg_1.a), !vec3<bool>(arg_1.a, false, true)), vec3<bool>(all(vec3<bool>(arg_1.a, var_0.a, arg_1.a)), true, any(vec4<bool>(false, false, arg_2.a.x, false))), vec3<bool>(any(vec4<bool>(arg_3.a.x, arg_3.a.x, true, false)), arg_0.a, any(vec2<bool>(true, arg_2.a.x))))));
    var_0 = arg_1;
    var_0 = Struct_2(any(select(select(select(vec4<bool>(arg_0.a, var_1, true, false), vec4<bool>(true, arg_1.a, false, arg_1.a), vec4<bool>(arg_0.a, true, true, true)), select(vec4<bool>(arg_2.a.x, false, arg_3.a.x, false), vec4<bool>(true, true, var_1, var_1), vec4<bool>(var_1, false, false, arg_2.a.x)), vec4<bool>(false, arg_0.a, false, true)), vec4<bool>(select(var_0.a, var_1, false), !var_1, 27769i > u_input.a.x, any(vec4<bool>(arg_1.a, true, arg_3.a.x, true))), all(vec4<bool>(arg_3.a.x, arg_2.a.x, false, true)))));
    var_0 = Struct_2(arg_1.a);
    return select(arg_3.a.zx, vec2<bool>(var_1, true), vec2<bool>(any(!vec2<bool>(arg_2.a.x, arg_3.a.x)), -(~11963i) < firstTrailingBit(-1i)));
}

fn func_2(arg_0: bool, arg_1: vec2<f32>, arg_2: bool, arg_3: vec2<u32>) -> vec2<bool> {
    var var_0 = u_input.b;
    var_0 = _wgslsmith_mult_vec4_i32(u_input.b, u_input.b);
    return select(select(select(vec2<bool>(select(true, true, false), arg_2 && arg_0), select(vec2<bool>(true, arg_0), func_3(Struct_2(arg_2), Struct_2(false), Struct_3(vec3<bool>(arg_2, arg_2, arg_0)), Struct_3(vec3<bool>(true, arg_0, false))), arg_0 != true), true), !vec2<bool>(arg_2, arg_0), vec2<bool>(arg_2, 36716i <= -u_input.b.x)), select(func_3(Struct_2(false && arg_2), Struct_2(arg_0), Struct_3(select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(arg_2, arg_0, arg_0), arg_0)), Struct_3(select(vec3<bool>(arg_2, arg_2, true), vec3<bool>(false, arg_0, arg_0), vec3<bool>(false, arg_2, arg_2)))), vec2<bool>(!any(vec2<bool>(true, true)), true || arg_0), !(!any(vec4<bool>(true, arg_2, arg_2, false)))), !(min(var_0.x, 0i) >= ~(-2147483647i)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.yy)) + arg_0.xz) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(-arg_0.x), arg_0.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.x, arg_0.x) * vec2<f32>(arg_0.x, -392f)))))));
    let var_1 = select(func_2(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(-1000f, arg_0.x)), 1649f)), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), ~abs(vec2<u32>(0u, 47443u) | vec2<u32>(u_input.c, 18885u))), vec2<bool>(u_input.d == (-u_input.a.x << (_wgslsmith_mod_u32(u_input.c, u_input.c) % 32u)), false), false & any(vec3<bool>(true, true, true)));
    let var_2 = arg_0;
    let var_3 = arg_0;
    return Struct_3(!(!select(select(vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x)), vec3<bool>(var_1.x, var_1.x, false), select(vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(false, false, false), var_1.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false && (~u_input.d == u_input.a.x);
    var var_1 = Struct_3(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, var_0, var_0), vec3<bool>(var_0, var_0, true), vec3<bool>(true, var_0, true)), !vec3<bool>(var_0, var_0, var_0))));
    var_1 = func_1(vec3<f32>(-461f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-937f - 660f) * _wgslsmith_f_op_f32(trunc(478f))))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(233f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(129f, -504f) + _wgslsmith_f_op_f32(-1000f * -962f)), _wgslsmith_f_op_f32(round(-130f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(-1308f)))), -1716f)), 1048f);
    var var_3 = Struct_1(vec3<f32>(321f, -217f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-1110f, _wgslsmith_f_op_f32(var_2.x - -509f), var_0)), -516f))));
    let x = u_input.a;
    s_output = StorageBuffer(-u_input.b.yz >> (vec2<u32>(abs(u_input.c), _wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(0u, 1u, 0u)), _wgslsmith_mod_vec3_u32(vec3<u32>(30877u, u_input.c, u_input.c), vec3<u32>(48388u, 12926u, u_input.c)))) % vec2<u32>(32u)));
}

