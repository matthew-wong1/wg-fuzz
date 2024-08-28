struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>) -> vec2<u32> {
    var var_0 = -391f;
    var var_1 = _wgslsmith_mod_i32(~(~(-13180i)), -2147483647i);
    return vec2<u32>(1u, 22198u);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(!vec2<bool>(all(vec4<bool>(false, true, true, false)) || true, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), !vec3<bool>(all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), true)), false, 1u >= ~u_input.c), _wgslsmith_mod_vec2_u32(firstTrailingBit(~u_input.a.zx) >> (firstLeadingBit(u_input.a.xw) % vec2<u32>(32u)), firstLeadingBit(func_3(vec4<i32>(0i, 8366i, 2147483647i, -10146i)))), all(vec4<bool>(true, true, select(false, true, false) & true, all(select(vec2<bool>(true, true), vec2<bool>(true, true), false)))));
    var var_1 = !select(!vec3<bool>(var_0.d, !var_0.b.x, true), vec3<bool>(all(select(var_0.b, var_0.b, var_0.a.x)), true, !any(vec2<bool>(true, var_0.d))), any(select(!vec4<bool>(true, var_0.b.x, false, true), vec4<bool>(true, false, false, var_0.a.x), !vec4<bool>(true, true, var_0.a.x, var_0.a.x))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -865f)));
    var_1 = var_0.b;
    var_1 = select(select(select(select(select(vec3<bool>(var_0.a.x, true, true), vec3<bool>(true, var_1.x, var_0.b.x), var_0.b), vec3<bool>(var_0.b.x, var_0.a.x, true), !var_1.x), select(var_0.b, var_0.b, !var_0.b), select(select(var_0.b, var_0.b, vec3<bool>(var_0.d, var_0.b.x, var_1.x)), select(vec3<bool>(true, false, var_0.d), vec3<bool>(var_1.x, var_1.x, true), var_0.b), vec3<bool>(false, var_0.d, var_1.x))), var_0.b, var_0.b), var_0.b, all(select(!select(vec4<bool>(false, var_0.b.x, var_1.x, false), vec4<bool>(false, var_0.a.x, true, false), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), select(select(vec4<bool>(false, false, var_1.x, var_1.x), vec4<bool>(var_1.x, false, var_0.d, var_1.x), vec4<bool>(true, var_1.x, true, var_1.x)), !vec4<bool>(false, var_0.a.x, var_0.a.x, true), !vec4<bool>(var_0.a.x, var_1.x, false, false)), true)));
    return 0i;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec2<u32>) -> f32 {
    var var_0 = countOneBits(-1i);
    var_0 = 2147483647i;
    let var_1 = 20440u;
    let var_2 = ~firstTrailingBit(arg_0.zz);
    var var_3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(38349i, 1i), -abs(select(0i, 3581i, false))) & ~_wgslsmith_add_i32(1i, _wgslsmith_add_i32(0i, func_2()));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_1.x, -249f), -1237f))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(2519f, -851f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(-378f, 1297f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-815f, _wgslsmith_f_op_f32(sign(1000f)))) * _wgslsmith_div_f32(-1297f, -1046f))), vec3<u32>(abs(_wgslsmith_mod_u32(45948u, 4294967295u) & u_input.b), 0u << (1u % 32u), 1u), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -498f))), _wgslsmith_f_op_f32(-381f - _wgslsmith_f_op_f32(func_1(vec4<u32>(~1u, 4294967295u, 115827u, _wgslsmith_sub_u32(u_input.b, u_input.c)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2138f, 1634f))), _wgslsmith_div_vec2_u32(u_input.a.xw, vec2<u32>(4294967295u, u_input.a.x)) | (u_input.a.xx ^ vec2<u32>(0u, u_input.a.x))))));
}

