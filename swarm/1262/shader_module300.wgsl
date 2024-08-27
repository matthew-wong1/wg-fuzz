struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 3> = array<vec2<i32>, 3>(vec2<i32>(1i, 2147483647i), vec2<i32>(2839i, 72618i), vec2<i32>(16686i, 28681i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(-2226f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -236f)))), 1f >= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1568f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1840f + 332f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(758f + 974f)))) - _wgslsmith_f_op_f32(f32(-1f) * -1615f)), 473f);
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(395f + var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -641f), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-300f, 2788f))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-1027f - 644f), -333f) + vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), var_0.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -376f), -1380f, -812f))) - _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0.x + var_0.x), _wgslsmith_f_op_f32(var_0.x - var_0.x), -522f) + _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 1000f, 1839f), vec3<f32>(-178f, 283f, -2031f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1116f, 1626f) - vec3<f32>(var_0.x, var_0.x, 121f))))))));
    var var_1 = vec3<bool>(!(true | all(vec2<bool>(false, true))), true, !select(true, true, -366f != var_0.x));
    global0 = array<vec2<i32>, 3>();
    let var_2 = vec3<bool>(~(~min(u_input.a.x, u_input.a.x)) < u_input.a.x, ~1u == u_input.a.x, var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-select(u_input.c.zzz, -vec3<i32>(u_input.b.x, u_input.b.x, -1i), vec3<bool>(var_1.x, false, var_2.x))), min(vec3<i32>(u_input.b.x, 2147483647i, u_input.c.x) >> (min(u_input.a, vec3<u32>(u_input.a.x, 4294967295u, 0u)) % vec3<u32>(32u)), u_input.c.zwx << ((vec3<u32>(u_input.a.x, 0u, 24362u) & u_input.a) % vec3<u32>(32u))) ^ reverseBits(abs(u_input.c.ywx)), u_input.a.x);
}

