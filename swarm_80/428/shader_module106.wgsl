struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<bool>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: Struct_1,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec4<bool>, 25> = array<vec4<bool>, 25>(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false));

var<private> global2: array<Struct_2, 29>;

var<private> global3: array<vec3<i32>, 6>;

var<private> global4: i32 = -29823i;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 29>();
    let var_0 = _wgslsmith_div_vec4_u32(~select(reverseBits(reverseBits(vec4<u32>(4294967295u, u_input.a, u_input.a, 1u))), _wgslsmith_div_vec4_u32(~vec4<u32>(58991u, u_input.a, u_input.a, 4294967295u), reverseBits(vec4<u32>(0u, 0u, 0u, 0u))), select(!global0.e.c, global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, u_input.a), 25u)], false)), ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(28809u, 30781u, 1u, 4294967295u), abs(vec4<u32>(u_input.a, 4294967295u, u_input.a, u_input.a))), ~vec4<u32>(1u, 4294967295u, 861u, u_input.a) | _wgslsmith_clamp_vec4_u32(vec4<u32>(37269u, 1u, 4294967295u, u_input.a), vec4<u32>(0u, 86488u, u_input.a, u_input.a), vec4<u32>(1u, u_input.a, u_input.a, u_input.a))));
    global3 = array<vec3<i32>, 6>();
    var var_1 = ~(~(~(~(~18313u))));
    var var_2 = vec2<bool>(global0.a < _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(global0.c.d.xz, vec2<i32>(u_input.b, global0.a)) | _wgslsmith_clamp_i32(u_input.b, 1i, 2147483647i), 709i), !global0.e.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(u_input.a, ~6228u, u_input.a, _wgslsmith_mod_u32(_wgslsmith_div_u32(88339u, var_0.x), 25067u)), 2147483647i, 39717u, firstTrailingBit(_wgslsmith_sub_u32(_wgslsmith_mod_u32(4294967295u, _wgslsmith_mult_u32(var_0.x, var_0.x)), 1u)));
}

