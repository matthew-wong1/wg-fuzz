struct Struct_1 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> bool {
    let var_0 = vec3<f32>(-986f, _wgslsmith_f_op_f32(sign(-1000f)), -767f);
    let var_1 = Struct_1(any(vec2<bool>(true, true)), any(vec3<bool>(true, true, true)));
    var var_2 = var_1;
    var_2 = Struct_1(select((var_1.a && var_2.a) || true, true, _wgslsmith_mod_i32(reverseBits(17417i), 3598i) < u_input.c.x), var_1.b);
    var var_3 = !(!select(select(vec2<bool>(false, var_1.a), vec2<bool>(var_1.b, false), true), vec2<bool>(!var_2.b, any(vec3<bool>(var_2.a, false, var_2.a))), var_1.a));
    return !var_3.x;
}

fn func_2() -> Struct_1 {
    let var_0 = ~(-select(~vec2<i32>(u_input.b, u_input.b), ~u_input.c, u_input.c.x >= -54919i)) | u_input.c;
    let var_1 = Struct_1(any(!vec3<bool>(func_3(), all(vec4<bool>(true, false, true, true)), true)), all(!vec3<bool>(false, select(true, false, false), true)));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-272f, -293f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -945f) - -489f)) == _wgslsmith_f_op_f32(step(-759f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1279f * -307f))))), var_1.a);
    return var_2;
}

fn func_1(arg_0: vec3<u32>, arg_1: f32, arg_2: u32, arg_3: u32) -> Struct_1 {
    var var_0 = false;
    var var_1 = !select(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_mod_i32(u_input.b, 1i) == -u_input.c.x, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), false), true), true), !vec4<bool>(false, u_input.c.x > -2147483647i, true, true));
    var_0 = false;
    let var_2 = func_2();
    let var_3 = Struct_1(true, select(true, false, !var_2.a));
    return func_2();
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> StorageBuffer {
    let var_0 = arg_0;
    return StorageBuffer(~countOneBits(~u_input.c) << (vec2<u32>(u_input.e.x, arg_2) % vec2<u32>(32u)), -u_input.b, u_input.d.wzx, _wgslsmith_mult_vec4_i32((~vec4<i32>(-1i, u_input.c.x, u_input.b, u_input.c.x) & vec4<i32>(u_input.c.x, -42164i, 2147483647i, 1i)) >> (countOneBits(countOneBits(vec4<u32>(u_input.e.x, arg_2, arg_2, arg_2))) % vec4<u32>(32u)), vec4<i32>(2147483647i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 13116i, 3813i, -2147483647i), vec4<i32>(u_input.c.x, 2147483647i, 27371i, u_input.b)), min(~u_input.c.x, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.b) & vec4<i32>(58912i, u_input.c.x, 0i, u_input.c.x), vec4<i32>(u_input.b, 0i, -2147483647i, -2147483647i) >> (vec4<u32>(4294967295u, arg_2, arg_2, u_input.e.x) % vec4<u32>(32u))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1451f, -482f, 774f, -571f))))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-404f, 483f, -348f, 1221f), vec4<f32>(1f, 1f, 1f, 1f)))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-398f)) * _wgslsmith_f_op_f32(step(-566f, -811f))), 1000f, _wgslsmith_f_op_f32(527f * -669f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-422f)), _wgslsmith_div_f32(932f, -965f), arg_1)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(true, true, true));
    let x = u_input.a;
    s_output = func_4(func_1(vec3<u32>(~u_input.e.x, u_input.a, u_input.e.x), 1419f, ~u_input.d.x, countOneBits(u_input.e.x)), false, u_input.d.x);
}

