struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<u32>,
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

var<private> global0: array<vec2<i32>, 16> = array<vec2<i32>, 16>(vec2<i32>(23535i, 2147483647i), vec2<i32>(-8283i, -5591i), vec2<i32>(-1i, 17241i), vec2<i32>(-1i, -37322i), vec2<i32>(-18139i, 1i), vec2<i32>(-1i, -21131i), vec2<i32>(28735i, -1i), vec2<i32>(-43971i, i32(-2147483648)), vec2<i32>(7769i, 2147483647i), vec2<i32>(-53148i, 0i), vec2<i32>(2147483647i, 37698i), vec2<i32>(-42993i, 41266i), vec2<i32>(8230i, 2147483647i), vec2<i32>(2643i, 54663i), vec2<i32>(i32(-2147483648), -4476i), vec2<i32>(0i, 0i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: vec2<u32>) -> i32 {
    global0 = array<vec2<i32>, 16>();
    let var_0 = Struct_3(arg_0.b.a.x);
    var var_1 = Struct_1(vec3<i32>(max(0i, abs(u_input.b)), _wgslsmith_sub_i32(i32(-1i) * -u_input.b, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.a, u_input.b, arg_1.a), arg_0.b.a, arg_0.b.a), countOneBits(vec3<i32>(arg_1.a, arg_0.b.a.x, var_0.a)))), u_input.b));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2338f), -1865f, -2869f)))));
    let var_3 = Struct_4(vec4<u32>(12676u, abs(~(~33538u)), _wgslsmith_add_u32(arg_2.x, _wgslsmith_mult_u32(min(1u, u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<u32>(0u, u_input.a, 4294967295u, arg_2.x)))), u_input.a), arg_0, _wgslsmith_add_vec4_i32(~vec4<i32>(arg_1.a, 1i, 1i, 1i), -min(vec4<i32>(0i, 1i, -1i, u_input.b), vec4<i32>(0i, u_input.b, 11857i, var_0.a))) | _wgslsmith_add_vec4_i32(max(~vec4<i32>(u_input.b, 28958i, 856i, u_input.b), vec4<i32>(-1i, -1i, arg_1.a, -1i) >> (vec4<u32>(arg_2.x, 44393u, arg_2.x, u_input.a) % vec4<u32>(32u))), _wgslsmith_mult_vec4_i32(vec4<i32>(-987i, 1i, arg_1.a, arg_1.a) >> (vec4<u32>(u_input.d.x, 81880u, arg_2.x, 43032u) % vec4<u32>(32u)), abs(vec4<i32>(var_0.a, 0i, var_0.a, arg_1.a)))));
    return _wgslsmith_add_i32(select(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(arg_0.b.a, ~vec3<i32>(arg_1.a, u_input.b, var_3.c.x)), -(arg_0.b.a << (u_input.d % vec3<u32>(32u)))), _wgslsmith_sub_i32(~_wgslsmith_mult_i32(51183i, var_1.a.x), 2147483647i), !(!arg_0.c || true)), ~arg_1.a);
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4, arg_2: bool) -> i32 {
    let var_0 = min(func_3(arg_0, Struct_3(-45641i), vec2<u32>(1u, ~(arg_1.a.x >> (u_input.d.x % 32u)))), -firstLeadingBit(~46832i));
    var var_1 = reverseBits(0i);
    global0 = array<vec2<i32>, 16>();
    var_1 = -53353i;
    let var_2 = ~u_input.d.yz;
    return -18290i;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(~(u_input.c ^ u_input.a), 16u)];
    global0 = array<vec2<i32>, 16>();
    var_0 = vec2<i32>(-1i) * -vec2<i32>(1i, reverseBits(-63907i) & firstLeadingBit(u_input.b));
    let var_1 = !select(vec2<bool>(true, _wgslsmith_sub_u32(u_input.c, 36422u) != _wgslsmith_mult_u32(u_input.c, u_input.a)), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true))), any(vec3<bool>(true, true, true)));
    var var_2 = ~_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, var_0.x, 2147483647i) ^ vec3<i32>(-1i, 0i, -28386i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_0.x, var_0.x, 1i), vec3<i32>(var_0.x, -1i, -6902i))), -21675i, 2979i), vec3<i32>(func_2(Struct_2(vec3<bool>(true, false, var_1.x), Struct_1(vec3<i32>(1i, -2147483647i, u_input.b)), var_1.x), Struct_4(vec4<u32>(1u, 37224u, u_input.d.x, 1u), Struct_2(vec3<bool>(var_1.x, true, var_1.x), Struct_1(vec3<i32>(var_0.x, -1761i, var_0.x)), var_1.x), vec4<i32>(u_input.b, 0i, 5012i, -44538i)), var_1.x), _wgslsmith_div_i32(u_input.b, u_input.b), reverseBits(var_0.x)) << (_wgslsmith_mult_vec3_u32(min(u_input.d, u_input.d), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a, u_input.c, 48254u), vec3<u32>(1u, 2851u, 27014u))) % vec3<u32>(32u)));
    return Struct_1(_wgslsmith_add_vec3_i32(vec3<i32>(~u_input.b, ~(-14323i), func_3(Struct_2(vec3<bool>(var_1.x, var_1.x, false), Struct_1(vec3<i32>(-18080i, var_2.x, u_input.b)), false), Struct_3(var_2.x), vec2<u32>(u_input.c, 24538u))), vec3<i32>(~2147483647i, 1i, ~(-10728i))) | vec3<i32>(var_2.x, ~(-45867i) & -u_input.b, _wgslsmith_clamp_i32(u_input.b & var_0.x, -23047i, _wgslsmith_div_i32(67125i, -2147483647i))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(u_input.a, 63126u, true);
    var var_1 = 1107f;
    let var_2 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1284f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) - 1440f));
    var_1 = _wgslsmith_f_op_f32(max(291f, 356f));
    var var_3 = -select(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, -23793i, u_input.b, -2147483647i), vec4<i32>(var_2.a.x, u_input.b, -1i, 0i)), ~vec4<i32>(29133i, 43298i, 44589i, u_input.b)), abs(min(vec4<i32>(1i, 31614i, 6958i, var_2.a.x), vec4<i32>(var_2.a.x, u_input.b, 0i, 18288i)))), ~(-3219i), any(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(select(vec2<u32>(var_0, 1u) ^ countOneBits(vec2<u32>(4294967295u, 1u)), u_input.d.xz, true)));
}

