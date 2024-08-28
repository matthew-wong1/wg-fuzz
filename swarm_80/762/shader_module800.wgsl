struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: f32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: bool,
    c: bool,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 29>;

var<private> global1: array<i32, 18> = array<i32, 18>(2147483647i, -43486i, 1i, 40059i, -6605i, 1i, 1i, -2100i, 1i, -1589i, -1i, 37340i, -28416i, -12444i, 2147483647i, -43067i, -33211i, -19001i);

var<private> global2: u32;

var<private> global3: u32 = 0u;

var<private> global4: Struct_3 = Struct_3(Struct_1(1412f), 4294967295u);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global4.a.a)) * global4.a.a), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(max(0u, global4.b), global4.b & 4829u), 1u), _wgslsmith_clamp_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, 78523u), vec2<u32>(global4.b, 1u))), _wgslsmith_add_vec2_u32(~vec2<u32>(29772u, 23715u), ~vec2<u32>(u_input.d, u_input.d)), vec2<u32>(_wgslsmith_div_u32(u_input.a, 0u), global4.b))));
}

