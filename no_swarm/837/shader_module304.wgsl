struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-14303i, 2147483647i);

var<private> global1: array<vec4<bool>, 30>;

var<private> global2: bool;

var<private> global3: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b.zz;
    global3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1667f)) - _wgslsmith_f_op_f32(trunc(989f)));
    var var_0 = Struct_3(Struct_2(vec2<u32>(1u, ~abs(1u))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-613f)) - 224f)), 924f, true)));
    var var_1 = Struct_2(max(~vec2<u32>(var_0.a.a.x, 4294967295u), var_0.a.a));
    var var_2 = false;
    global1 = array<vec4<bool>, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_0.b + 173f), 1i, vec4<f32>(-543f, var_0.b, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b)) + _wgslsmith_f_op_f32(min(var_0.b, var_0.b)))), -vec2<i32>(reverseBits(global0.x), 2147483647i), firstLeadingBit(abs(abs(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.x, var_0.a.a.x, var_1.a.x, 1u), vec4<u32>(var_1.a.x, 10219u, var_1.a.x, var_0.a.a.x))))));
}

