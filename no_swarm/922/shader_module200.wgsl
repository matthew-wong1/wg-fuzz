struct Struct_1 {
    a: u32,
    b: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<bool>) -> bool {
    let var_0 = false;
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1658f))) + _wgslsmith_div_f32(-1515f, _wgslsmith_f_op_f32(select(-518f, -133f, true)))))));
    let var_3 = select(arg_0.xx, select(vec2<bool>(arg_0.x, var_0), select(vec2<bool>(true, true), !select(var_1.xx, vec2<bool>(true, var_0), true), vec2<bool>(arg_0.x, false)), var_1.zx), ~firstTrailingBit(17766i) < _wgslsmith_dot_vec2_i32(firstTrailingBit(vec2<i32>(u_input.a, u_input.a) >> (u_input.b.yy % vec2<u32>(32u))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, u_input.a, 33685i), vec4<i32>(70026i, 0i, u_input.a, u_input.a)), ~u_input.a)));
    var_1 = !arg_0;
    return arg_0.x;
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(any(vec4<bool>(func_3(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), true)), any(vec4<bool>(true, false, false, true)) == (u_input.a >= u_input.a), any(vec3<bool>(true, true, true)), all(select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true))))), Struct_1(firstLeadingBit(~u_input.b.x), _wgslsmith_mult_vec3_i32(abs(~vec3<i32>(u_input.a, u_input.a, 1i)), ~vec3<i32>(u_input.a, -3285i, 2147483647i))));
    var var_1 = Struct_3(abs(_wgslsmith_div_vec3_u32(u_input.b.wxx, _wgslsmith_add_vec3_u32(~vec3<u32>(27582u, 43336u, 1u), u_input.b.yzy))));
    var_1 = Struct_3(countOneBits(vec3<u32>(reverseBits(1u), ~max(0u, 4294967295u), abs(4294967295u))));
    var_1 = Struct_3(vec3<u32>(abs(min(4294967295u, select(var_0.b.a, 1u, false))), ~min(var_0.b.a ^ u_input.b.x, var_1.a.x), 4294967295u));
    var_1 = Struct_3(abs(max(~var_1.a, vec3<u32>(u_input.b.x, var_0.b.a, 3405u)) & ~(vec3<u32>(0u, var_0.b.a, var_1.a.x) ^ vec3<u32>(u_input.b.x, var_0.b.a, u_input.b.x))));
    return var_0;
}

fn func_4(arg_0: u32, arg_1: Struct_2) -> Struct_1 {
    let var_0 = ~u_input.b.x;
    let var_1 = u_input.a;
    let var_2 = 706f;
    let var_3 = arg_1.b.b;
    var var_4 = arg_1.b.b.x;
    return Struct_1(u_input.b.x, var_3);
}

fn func_1(arg_0: vec2<u32>, arg_1: i32) -> f32 {
    var var_0 = Struct_2(false, func_4(~select(~u_input.b.x, ~7325u, false), func_2()));
    var_0 = Struct_2(!((func_3(vec3<bool>(var_0.a, true, var_0.a)) & var_0.a) || ((var_0.b.a >> (1u % 32u)) >= _wgslsmith_clamp_u32(arg_0.x, 4294967295u, arg_0.x))), Struct_1(~u_input.b.x, var_0.b.b));
    var_0 = func_2();
    var var_1 = Struct_2(var_0.a, Struct_1(5763u, _wgslsmith_add_vec3_i32(-(vec3<i32>(arg_1, -16865i, u_input.a) ^ var_0.b.b), vec3<i32>(-31504i, ~30236i, u_input.a ^ var_0.b.b.x))));
    var var_2 = vec2<bool>(var_1.a, !(!(!var_0.a)));
    return _wgslsmith_f_op_f32(-990f - -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    var var_1 = !vec2<bool>(any(vec3<bool>(true, true, true)), any(vec4<bool>(any(vec4<bool>(true, false, false, true)), true, true, all(vec3<bool>(false, false, true)))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-373f + 1712f) - -244f)))), _wgslsmith_f_op_f32(-1103f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b.x, 1u), 3782i)) * 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1099f))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, _wgslsmith_add_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_mult_u32(var_0 ^ u_input.b.x, u_input.b.x), 0u, 1u, var_0)), -2147483647i >> (0u % 32u));
}

