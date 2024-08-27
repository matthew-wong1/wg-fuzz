struct Struct_1 {
    a: u32,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(i32(-2147483648), 1i), vec2<i32>(-26909i, i32(-2147483648)));

var<private> global1: array<Struct_1, 2>;

var<private> global2: vec2<u32> = vec2<u32>(10373u, 1u);

var<private> global3: f32;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = vec2<u32>(global2.x, select(~(~global2.x), global2.x, true)) | vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(firstTrailingBit(4294967295u), _wgslsmith_add_u32(global2.x, 1816u)), global2.x), 4294967295u);
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(21629u, 1570u), 2u)];
    var_0 = Struct_1(var_0.a, _wgslsmith_sub_i32(u_input.a.x, min(17847i, ~(-36105i))) << (_wgslsmith_dot_vec4_u32(vec4<u32>(global2.x, firstLeadingBit(var_0.c), _wgslsmith_div_u32(4294967295u, 94648u), _wgslsmith_mod_u32(global2.x, global2.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(4294967295u, 0u, 5840u, var_0.a), ~vec4<u32>(global2.x, var_0.a, 1u, var_0.c))) % 32u), 8893u);
    global0 = array<vec2<i32>, 2>();
    global1 = array<Struct_1, 2>();
    global2 = ~vec2<u32>(_wgslsmith_sub_u32(global2.x, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, var_0.c), vec2<u32>(0u, 8966u)), var_0.a & 0u)), min(var_0.c, global2.x) << (global2.x % 32u));
    global2 = _wgslsmith_div_vec2_u32(~(~vec2<u32>(1u & var_0.a, _wgslsmith_mod_u32(1u, 35494u))), ((~vec2<u32>(34033u, 1u) & _wgslsmith_div_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(global2.x, global2.x))) << (~vec2<u32>(var_0.a, var_0.c) % vec2<u32>(32u))) ^ vec2<u32>(global2.x, _wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(global2.x, var_0.c, var_0.a))));
    global1 = array<Struct_1, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~_wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, 9273u), vec3<u32>(var_0.c, 4294967295u, 44664u)), vec3<u32>(36993u, var_0.a, var_0.a)), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 0u, _wgslsmith_div_u32(global2.x, global2.x)), vec3<u32>(var_0.c, _wgslsmith_dot_vec2_u32(vec2<u32>(global2.x, 4294967295u), vec2<u32>(var_0.c, 35634u)), _wgslsmith_mult_u32(global2.x, global2.x)))), vec2<f32>(1f, 1f));
}

