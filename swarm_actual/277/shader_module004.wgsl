struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(24142i, -14498i);

var<private> global1: Struct_1;

var<private> global2: array<vec2<f32>, 7>;

var<private> global3: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(5274u, 0u, 0u), vec3<u32>(17966u, 9043u, 4294967295u), vec3<u32>(88443u, 0u, 1u), vec3<u32>(1u, 22346u, 77869u), vec3<u32>(4294967295u, 46547u, 76664u), vec3<u32>(29128u, 0u, 1u), vec3<u32>(1u, 6032u, 101148u), vec3<u32>(4294967295u, 27832u, 1u), vec3<u32>(43692u, 29570u, 1u), vec3<u32>(3866u, 0u, 1u), vec3<u32>(69644u, 25349u, 0u), vec3<u32>(27084u, 0u, 42471u), vec3<u32>(29803u, 1u, 42079u), vec3<u32>(51320u, 6573u, 18559u), vec3<u32>(0u, 63920u, 2715u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(29022u, 125423u, 0u), vec3<u32>(31285u, 25626u, 27487u), vec3<u32>(75344u, 1u, 0u), vec3<u32>(0u, 443u, 0u));

var<private> global4: vec4<i32> = vec4<i32>(-14822i, -71708i, 20343i, 0i);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c;
    var var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, 20069u, 0u, global1.c) & abs(vec4<u32>(global1.c, 20804u, 96596u, 1u)), _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, global1.c, 22848u, 4294967295u) ^ vec4<u32>(global1.c, global1.c, u_input.c.x, 4294967295u), vec4<u32>(27641u, 1u, u_input.d, 4294967295u) << (vec4<u32>(u_input.c.x, 22560u, 41833u, u_input.d) % vec4<u32>(32u)))), abs(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.d, global1.c), 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(0u, u_input.c.x), 1u), _wgslsmith_mult_vec2_u32(countOneBits(u_input.c.zx), vec2<u32>(23041u, u_input.d)))) ^ u_input.c;
    global1 = Struct_1((reverseBits(2147483647i) == _wgslsmith_add_i32(-u_input.b, global0.x)) | false, vec3<u32>(30417u, 7239u, _wgslsmith_mult_u32(u_input.c.x, u_input.d)), global1.c);
    let var_2 = vec4<u32>(58116u, u_input.c.x, ~36217u, 25356u);
    global0 = ~vec2<i32>(u_input.a.x, ~select(1656i, _wgslsmith_mult_i32(u_input.b, global0.x), global1.a));
    var_1 = firstLeadingBit(var_2.xwx);
    global2 = array<vec2<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(global1.b), (u_input.a.wxz | vec3<i32>(19987i, u_input.b, -2147483647i)) & vec3<i32>(0i, u_input.a.x, select(_wgslsmith_div_i32(0i, u_input.a.x), 2147483647i, true)), _wgslsmith_clamp_i32(-2147483647i, firstLeadingBit(47351i), global4.x));
}

