struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<u32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec3<bool>, 6> = array<vec3<bool>, 6>(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

var<private> global2: array<vec2<i32>, 4> = array<vec2<i32>, 4>(vec2<i32>(-40117i, -4852i), vec2<i32>(-5926i, 0i), vec2<i32>(1i, 1i), vec2<i32>(0i, 2147483647i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: i32, arg_1: u32, arg_2: Struct_4) -> i32 {
    var var_0 = 4294967295u;
    var var_1 = firstLeadingBit(2147483647i);
    let var_2 = all(!vec4<bool>(false, true, (1i << (1u % 32u)) > _wgslsmith_dot_vec2_i32(u_input.e.zx, global2[_wgslsmith_index_u32(arg_2.a, 4u)]), all(vec2<bool>(true, true))));
    global0 = 0i;
    global1 = array<vec3<bool>, 6>();
    return min(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(arg_2.b, -select(u_input.e.xx, vec2<i32>(arg_0, arg_2.b.x), var_2)), -(firstTrailingBit(55874i) & ~arg_2.b.x)), -_wgslsmith_mod_i32(u_input.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_2.b.x, u_input.e.x, arg_2.b.x), vec4<i32>(u_input.e.x, -1i, -18056i, arg_0)) & -1i));
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(1i, !any(vec3<bool>(true, true, true)) & true, u_input.a.wz, 25956u, abs(0u));
    global2 = array<vec2<i32>, 4>();
    let var_1 = var_0;
    return _wgslsmith_div_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_0.a, var_0.a, 36646i, var_0.a), reverseBits(vec4<i32>(abs(-79562i), countOneBits(0i), i32(-1i) * -8857i, ~var_1.a))) << (select(u_input.a, reverseBits(u_input.a), !select(vec4<bool>(var_0.b, true, var_1.b, false), vec4<bool>(var_1.b, false, var_0.b, var_0.b), var_1.b)) % vec4<u32>(32u));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    global0 = u_input.b;
    global2 = array<vec2<i32>, 4>();
    global0 = _wgslsmith_mod_i32(func_2(_wgslsmith_clamp_i32(-26612i, 38552i, i32(-1i) * -u_input.e.x), 75637u, Struct_4(0u, -select(vec2<i32>(u_input.e.x, -2147483647i), vec2<i32>(u_input.b, u_input.e.x), vec2<bool>(true, true)))), _wgslsmith_div_i32(16948i, _wgslsmith_dot_vec4_i32((u_input.e ^ u_input.e) & func_3(), ~u_input.e)));
    var var_0 = !select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), true), vec2<bool>(true, true), all(vec4<bool>(false, false, true, true))), select(vec2<bool>(true, true), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), false), all(global1[_wgslsmith_index_u32(min(u_input.a.x >> (19491u % 32u), 1u), 6u)]));
    let var_1 = var_0.x;
    return StorageBuffer(~_wgslsmith_div_vec3_u32(abs(vec3<u32>(1u, 15376u, 31528u)) & reverseBits(vec3<u32>(0u, 91920u, arg_0)), (u_input.a.wxy | vec3<u32>(arg_0, arg_0, u_input.d)) >> (vec3<u32>(7329u, 45616u, 1u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(step(1f, -2031f)), u_input.a.wx, 1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, _wgslsmith_div_u32(u_input.d, u_input.d), ~u_input.a.x, firstTrailingBit(100029u)) | (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 51663u, u_input.a.x, 1u), vec4<u32>(u_input.c, 18763u, u_input.a.x, 0u)) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 1u, u_input.c, u_input.c), vec4<u32>(u_input.c, 112725u, 1u, u_input.d))), vec4<u32>(u_input.c ^ u_input.c, u_input.a.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 0u, 0u), u_input.a) << (u_input.d % 32u), u_input.a.x | 1u)) >= (_wgslsmith_sub_u32(4294967295u, u_input.a.x) << ((_wgslsmith_clamp_u32(u_input.c << (7746u % 32u), 81260u, u_input.d) | _wgslsmith_add_u32(u_input.d, _wgslsmith_mod_u32(6893u, u_input.c))) % 32u));
    global1 = array<vec3<bool>, 6>();
    let x = u_input.a;
    s_output = func_1(13641u);
}

