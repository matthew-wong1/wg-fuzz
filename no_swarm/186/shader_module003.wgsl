struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
    c: u32,
    d: vec2<u32>,
    e: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 15>;

var<private> global1: array<i32, 15> = array<i32, 15>(36361i, 16748i, -69434i, 0i, 1i, 38429i, -1i, i32(-2147483648), 78382i, i32(-2147483648), -1i, -1i, 0i, 2147483647i, i32(-2147483648));

var<private> global2: Struct_5;

var<private> global3: array<vec4<f32>, 16>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec4<f32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(203f + _wgslsmith_f_op_f32(select(549f, -2094f, global2.a.b.x))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -315f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.b, -636f)), vec2<f32>(927f, 391f), !global2.a.a.a.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global2.a.a.b, 1000f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, 637f)), any(global2.a.c.yy)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-547f, global2.a.d.d)))))), vec4<i32>(~(select(0i, 2147483647i, global2.a.c.x) << (u_input.b.x % 32u)), reverseBits(u_input.a.x | -6172i) >> ((~u_input.b.x << (min(46522u, 4294967295u) % 32u)) % 32u), 1i, -2147483647i), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.b, global2.a.d.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.a.d, global2.a.d.d))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, -1636f), vec2<f32>(global2.a.a.d, 154f))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.a.d.b, -350f)))))))), global2.b);
}

