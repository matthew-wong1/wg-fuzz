struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<f32, 5>;

var<private> global2: vec3<i32> = vec3<i32>(0i, -1i, 2147483647i);

var<private> global3: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false));

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_sub_vec2_i32(max(global2.zy << (~(~u_input.d) % vec2<u32>(32u)), vec2<i32>(abs(countOneBits(global2.x)), 2147483647i)), vec2<i32>(u_input.c, u_input.b));
    global3 = array<Struct_1, 15>();
    let var_1 = firstTrailingBit(~vec4<i32>(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.c, u_input.c), vec4<i32>(0i, -29594i, 68443i, 2147483647i))), -max(var_0.x, -62768i), var_0.x, _wgslsmith_mod_i32(0i, var_0.x)));
    global0 = true;
    var var_2 = Struct_2(_wgslsmith_mod_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a, 0u), vec3<u32>(u_input.a, u_input.d.x, 0u)), 82653u, u_input.a), vec3<u32>(1u, u_input.d.x, _wgslsmith_div_u32(u_input.d.x & 4294967295u, u_input.a << (0u % 32u)))));
    let var_3 = global1[_wgslsmith_index_u32(~var_2.a.x | 4294967295u, 5u)];
    let x = u_input.a;
    s_output = StorageBuffer(global1[_wgslsmith_index_u32(var_2.a.x, 5u)]);
}

