struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 12> = array<vec3<i32>, 12>(vec3<i32>(-7211i, 1i, 51803i), vec3<i32>(0i, -16428i, i32(-2147483648)), vec3<i32>(-1i, -15633i, 1i), vec3<i32>(i32(-2147483648), 8217i, 1954i), vec3<i32>(1i, 0i, 6013i), vec3<i32>(316i, -5382i, 2147483647i), vec3<i32>(i32(-2147483648), 2147483647i, 1i), vec3<i32>(-14981i, 1i, 34112i), vec3<i32>(1i, 17948i, 1i), vec3<i32>(15302i, i32(-2147483648), 2147483647i), vec3<i32>(-85599i, 53842i, i32(-2147483648)), vec3<i32>(44459i, 0i, -8442i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: i32, arg_3: Struct_2) -> vec2<f32> {
    global0 = array<vec3<i32>, 12>();
    let var_0 = _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_3.d.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.d.x + _wgslsmith_f_op_f32(f32(-1f) * -250f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0)) + _wgslsmith_f_op_f32(min(arg_0, 841f))))));
    return vec2<f32>(806f, 1000f);
}

fn func_2() -> u32 {
    let var_0 = Struct_4(global0[_wgslsmith_index_u32(0u, 12u)]);
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -103f)))));
    global0 = array<vec3<i32>, 12>();
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-964f, 323f) - _wgslsmith_f_op_vec2_f32(func_3(-1233f, 1u, var_0.a.x, Struct_2(u_input.a.x, Struct_1(4294967295u, 0u, u_input.c), vec4<i32>(-2260i, var_0.a.x, -24568i, u_input.c), vec3<f32>(-1191f, 202f, -134f))))) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1451f, 625f))))))) - _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(927f))), _wgslsmith_div_f32(-682f, _wgslsmith_f_op_f32(trunc(-706f)))))));
    var var_3 = ~4294967295u;
    return _wgslsmith_div_u32(max(abs(u_input.a.x), u_input.b.x), abs(3993u));
}

fn func_1() -> vec3<f32> {
    var var_0 = vec3<u32>(~u_input.b.x, abs(_wgslsmith_div_u32(4294967295u, 35422u)), func_2());
    let var_1 = _wgslsmith_mod_i32(u_input.c, 12616i);
    global0 = array<vec3<i32>, 12>();
    global0 = array<vec3<i32>, 12>();
    var var_2 = Struct_5(firstTrailingBit(1u), true, Struct_3(~(abs(vec3<i32>(var_1, 11522i, 1920i)) & select(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], vec3<i32>(var_1, u_input.c, -2147483647i), false)), vec2<i32>(~min(u_input.c, u_input.c), 58051i), Struct_1(1u, 45893u, -var_1)), Struct_1(23086u, abs(_wgslsmith_div_u32(17773u, ~9746u)), u_input.c));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1605f, -132f, 482f) * vec3<f32>(266f, -641f, 975f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1329f, -169f, -1015f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-767f, -551f, 277f)))), vec3<f32>(-652f, _wgslsmith_f_op_f32(ceil(-310f)), _wgslsmith_f_op_f32(1179f + -494f)))), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(22741u, 71974u, 0u), firstTrailingBit(u_input.a));
    let var_1 = Struct_1(37924u, _wgslsmith_dot_vec3_u32(~u_input.a | _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, 42113u), min(u_input.a, u_input.a), u_input.a), min(u_input.a, ~u_input.a)), u_input.c | u_input.c);
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-121f, -1358f, 504f), vec3<f32>(715f, -858f, -1003f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-257f, 206f, 642f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(225f, -299f, 1000f) * _wgslsmith_f_op_vec3_f32(func_1()))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -872f), _wgslsmith_f_op_f32(1000f - -187f), _wgslsmith_f_op_f32(abs(-304f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-1782f, -263f, 524f), vec3<f32>(-1279f, -1135f, 466f)), vec3<f32>(-1510f, 302f, -266f)))))));
    var var_3 = ~u_input.a.zy;
    var var_4 = vec4<i32>(firstLeadingBit(2147483647i | select(var_1.c, u_input.c, true)), ~(-39105i), -6734i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c, abs(u_input.c), var_1.c, -2147483647i), ~(~vec4<i32>(2147483647i, var_1.c, 2147483647i, 1i) & vec4<i32>(17494i, 84379i, var_1.c, var_1.c))));
    var_2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(100f, 2938f, 862f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, var_2.x, -109f)))))), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -466f), -439f), any(vec2<bool>(true, true)))), vec3<f32>(var_2.x, -1000f, var_2.x), !vec3<bool>(select(true, true, false), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true))), true == (var_3.x == 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.xx);
}

