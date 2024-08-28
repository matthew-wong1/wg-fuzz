struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec2<f32>) -> i32 {
    return -2147483647i;
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(f32(-1f) * -1153f);
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -663f));
    let var_1 = Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(431f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(927f, 116f)))), _wgslsmith_f_op_f32(step(477f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(693f, -883f, true)))))), ~(~82955u), -1715f);
    return _wgslsmith_f_op_f32(f32(-1f) * -1000f);
}

fn func_1() -> vec3<bool> {
    let var_0 = vec2<i32>(_wgslsmith_mod_i32(~_wgslsmith_div_i32(-44i, -1i), max(2147483647i, -1i)), _wgslsmith_add_i32(reverseBits(-1i), -_wgslsmith_mod_i32(18452i, -1i))) & -vec2<i32>(-22201i | func_2(vec4<f32>(749f, -327f, 480f, 823f), vec2<f32>(194f, 858f)), abs(-3013i));
    let var_1 = 9235i;
    let var_2 = vec3<bool>(true, all(select(vec2<bool>(true, var_0.x >= -1i), vec2<bool>(true, true), all(vec4<bool>(true, true, true, true)))), any(vec4<bool>(true, true, true, true)));
    var var_3 = vec3<i32>(~var_0.x >> (~u_input.b % 32u), _wgslsmith_div_i32(var_1, countOneBits(var_1)), -14812i);
    var_3 = ~vec3<i32>(var_3.x, -14494i, var_1 >> (~firstTrailingBit(2782u) % 32u));
    return vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(~1u)) - _wgslsmith_f_op_f32(f32(-1f) * -119f)) == 311f, var_2.x, !var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(func_1(), !(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), any(vec2<bool>(all(vec2<bool>(false, true)), false)));
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(511f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(750f, -658f)) - 1f), -1051f, -1949f))));
    var var_2 = Struct_4(select(!(!(!vec4<bool>(var_0.x, var_0.x, true, var_0.x))), vec4<bool>(~0u != u_input.a, all(!vec4<bool>(var_0.x, var_0.x, var_0.x, true)), !func_1().x, var_0.x), true));
    var var_3 = Struct_2(var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(~abs(u_input.b), ~(4294967295u | u_input.b)), select(max(vec2<u32>(36834u, u_input.a) << (vec2<u32>(27180u, 0u) % vec2<u32>(32u)), vec2<u32>(0u, u_input.a)), ~(~vec2<u32>(26017u, 4294967295u)), vec2<bool>(false, var_2.a.x))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_1.yxx), u_input.b, vec2<i32>(1i, 1i), ~abs(4294967295u), vec2<u32>(firstTrailingBit(var_3.b), 23488u));
}

