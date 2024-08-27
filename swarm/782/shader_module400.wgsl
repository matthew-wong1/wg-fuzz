struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2 = Struct_2(Struct_1(29262i), vec4<i32>(20594i, 29278i, i32(-2147483648), -21061i), 21642i, -136f);

var<private> global2: array<f32, 26> = array<f32, 26>(192f, 549f, 1744f, 1143f, 1877f, 163f, 1490f, -1410f, -2240f, -309f, -1342f, -496f, -934f, -119f, -1350f, 195f, -847f, 608f, -284f, 1770f, -524f, 461f, 300f, -630f, -169f, -886f);

var<private> global3: Struct_1;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global1.a;
    var var_0 = Struct_2(global1.a, global1.b, u_input.c & -19036i, _wgslsmith_f_op_f32(min(797f, 1f)));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_add_vec2_u32(select(u_input.b >> (u_input.b % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(u_input.b.x, u_input.a)), true), _wgslsmith_mod_vec2_u32(~u_input.b, _wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 34412u), u_input.b))));
}

