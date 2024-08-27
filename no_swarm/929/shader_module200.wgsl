struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<bool>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec2<i32>,
    b: u32,
    c: f32,
    d: Struct_3,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<Struct_5, 17>;

var<private> global2: f32 = 582f;

var<private> global3: vec3<f32>;

var<private> global4: u32 = 7024u;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_vec2_i32(u_input.b.xz, vec2<i32>(firstTrailingBit((u_input.c.x ^ 0i) & (global0.x & 17845i)), global0.x));
    global1 = array<Struct_5, 17>();
    var var_0 = abs(u_input.a.xwx);
    global0 = u_input.d.yy;
    var_0 = u_input.a.wyy;
    let x = u_input.a;
    s_output = StorageBuffer(~global0.x, u_input.c, _wgslsmith_f_op_f32(-global3.x), vec4<u32>(1u, var_0.x ^ var_0.x, 4294967295u, firstTrailingBit(4294967295u)));
}

