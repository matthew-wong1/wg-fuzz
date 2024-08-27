struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_1(arg_0: i32, arg_1: vec3<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(-arg_1.yx);
    return true;
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(325f, -1637f), vec2<f32>(406f, 333f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(117f, -1174f))), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true))))))))));
    var var_1 = _wgslsmith_clamp_vec3_i32(~_wgslsmith_clamp_vec3_i32(~u_input.b, min(-vec3<i32>(-39724i, -29672i, u_input.c), u_input.b & u_input.b), u_input.b), reverseBits(vec3<i32>(-1i) * -vec3<i32>(-20700i, u_input.b.x, -2147483647i)), u_input.b >> (vec3<u32>(_wgslsmith_div_u32(~u_input.a, 4294967295u), u_input.a, u_input.d.x) % vec3<u32>(32u)));
    var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b.x, -1i, -43185i), u_input.b);
    let var_2 = all(!select(vec3<bool>(true, false, any(vec4<bool>(true, false, false, false))), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(true, false, false))));
    var_1 = firstTrailingBit(~u_input.b);
    return select(vec4<bool>(true, false, false, !(false & var_2)), vec4<bool>(func_1(0i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1149f, 1884f)))), any(!vec2<bool>(var_2, var_2)), true, var_2), true);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(true, true, Struct_1(!func_3()));
    var var_1 = var_0.a;
    let var_2 = var_0.c.a.wz;
    var_1 = !(!any(var_2));
    var_1 = !(!(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -501f) - 1000f) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1286f)))));
    return Struct_1(!(!var_0.c.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!any(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)) | true, func_1(_wgslsmith_add_i32(abs(7664i << (u_input.d.x % 32u)), abs(u_input.c) ^ (-2147483647i | u_input.b.x)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1786f, -1415f, 1000f), vec3<f32>(-876f, -1025f, 1091f))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(1021f, 1143f, 1263f)))))), func_2());
    var var_1 = Struct_2(all(vec4<bool>(!all(vec4<bool>(true, var_0.b, true, var_0.b)), var_0.b, !(!var_0.b), !select(true, var_0.a, var_0.b))), true, func_2());
    let var_2 = u_input.b.x ^ -1893i;
    var_1 = var_0;
    var var_3 = var_0;
    var_1 = var_0;
    var_1 = var_0;
    let var_4 = vec3<f32>(-230f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-526f - _wgslsmith_f_op_f32(max(-158f, 583f))), _wgslsmith_f_op_f32(f32(-1f) * -354f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1107f), -261f))));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(_wgslsmith_mod_i32(-1i, ~u_input.b.x)), u_input.d.x, _wgslsmith_f_op_f32(-var_4.x), u_input.c);
}

