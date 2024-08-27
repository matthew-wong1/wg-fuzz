struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_5 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 6>;

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: array<Struct_3, 24>;

var<private> global3: f32;

var<private> global4: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(969f), Struct_3(-1983f), Struct_3(-1422f), Struct_3(506f), Struct_3(161f), Struct_3(310f), Struct_3(1977f), Struct_3(-1415f), Struct_3(-1780f), Struct_3(-250f), Struct_3(345f), Struct_3(-580f), Struct_3(-470f), Struct_3(-549f), Struct_3(-908f), Struct_3(1001f), Struct_3(972f), Struct_3(1119f), Struct_3(198f), Struct_3(-1522f), Struct_3(1000f), Struct_3(-340f), Struct_3(432f), Struct_3(1235f), Struct_3(127f), Struct_3(-1078f), Struct_3(-1206f), Struct_3(379f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<i32>) -> vec3<i32> {
    let var_0 = ~_wgslsmith_clamp_vec4_i32(vec4<i32>(min(u_input.b, -arg_0.x), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -58799i) << (vec2<u32>(1u, u_input.c) % vec2<u32>(32u)), arg_0.yz), abs(2147483647i), ~(-1i)), -max(vec4<i32>(41653i, u_input.a, arg_0.x, -9097i), vec4<i32>(arg_0.x, -1i, 1i, u_input.b)), select(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 33002i, -42830i), vec4<i32>(arg_0.x, arg_0.x, 39820i, 2147483647i)), vec4<i32>(arg_0.x << (u_input.c % 32u), -1i, firstTrailingBit(arg_0.x), u_input.b), any(select(vec3<bool>(global1.x, global1.x, false), vec3<bool>(true, false, global1.x), true))));
    global0 = array<vec4<f32>, 6>();
    let var_1 = -max(1i, ~(-2147483647i));
    return _wgslsmith_add_vec3_i32(reverseBits(vec3<i32>(reverseBits(-4091i), abs(var_0.x) ^ _wgslsmith_mod_i32(u_input.b, u_input.a), min(36732i, u_input.a) << ((u_input.c & u_input.c) % 32u))), vec3<i32>(_wgslsmith_add_i32(-_wgslsmith_mult_i32(var_1, arg_0.x), _wgslsmith_add_i32(var_1 ^ arg_0.x, 76047i)), 1i, 2147483647i));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> i32 {
    var var_0 = -1i;
    global3 = -455f;
    let var_1 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(arg_0.yy, vec2<i32>(arg_0.x, arg_0.x)), arg_0.xy), -2993i, i32(-1i) * -min(max(12835i, 0i), arg_0.x | arg_0.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1077f * _wgslsmith_f_op_f32(-248f + 432f)) + _wgslsmith_f_op_f32(f32(-1f) * -797f))));
    var var_3 = true;
    return _wgslsmith_mod_i32(countOneBits(u_input.a), _wgslsmith_clamp_i32(var_1, ~var_1, ~(-1i)));
}

fn func_2(arg_0: f32) -> u32 {
    let var_0 = func_4(func_3(-min(vec3<i32>(10394i, 30152i, 1i), vec3<i32>(-6149i, 1636i, u_input.a))), Struct_2(true), Struct_1(~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 16504i, 1i, u_input.b), vec4<i32>(-9694i, u_input.b, u_input.b, 42564i) >> (vec4<u32>(u_input.c, u_input.c, 0u, 7747u) % vec4<u32>(32u))))) <= 1i;
    global2 = array<Struct_3, 24>();
    let var_1 = global4[_wgslsmith_index_u32(~(~u_input.c << (1u % 32u)), 28u)];
    let var_2 = max(countOneBits(reverseBits(firstTrailingBit(~vec2<u32>(45174u, 33443u)))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.c, 34266u), abs(u_input.c), ~u_input.c), abs(reverseBits(vec3<u32>(u_input.c, u_input.c, u_input.c)))), u_input.c));
    var var_3 = var_0;
    return ~(firstLeadingBit(u_input.c) & ~39109u);
}

fn func_1() -> Struct_4 {
    global0 = array<vec4<f32>, 6>();
    global1 = !vec3<bool>(-u_input.b <= _wgslsmith_dot_vec3_i32(select(vec3<i32>(-10042i, 0i, 43635i), vec3<i32>(u_input.a, -26296i, u_input.b), vec3<bool>(global1.x, true, true)), vec3<i32>(-7987i, u_input.a, u_input.a) << (vec3<u32>(4294967295u, 0u, 3209u) % vec3<u32>(32u))), true, true);
    var var_0 = global1.zz;
    let var_1 = Struct_5(vec4<u32>(~min(4294967295u, 4294967295u), _wgslsmith_mult_u32(reverseBits(1u), 0u), 6186u << (func_2(802f) % 32u), ~(~52640u)) & ~reverseBits(~vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c)), var_0.x);
    var var_2 = Struct_4(u_input.c, Struct_1(u_input.b, u_input.a & -11696i), vec2<bool>(all(select(!vec4<bool>(var_1.b, false, true, global1.x), vec4<bool>(true, var_0.x, true, false), select(vec4<bool>(true, true, true, global1.x), vec4<bool>(false, true, true, var_0.x), var_0.x))), false));
    return Struct_4(var_2.a, Struct_1(_wgslsmith_div_i32(-32072i, -2147483647i), u_input.b >> (0u % 32u)), !global1.zy);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    var var_1 = -1864f;
    let var_2 = var_0;
    global2 = array<Struct_3, 24>();
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2211f))));
    global0 = array<vec4<f32>, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(9353i, firstTrailingBit(~max(var_0.b.a, -21725i))), func_3(vec3<i32>(abs(34742i), -(var_0.b.a & u_input.a), select(-19719i, -22876i, global1.x) & -1i)).yz, _wgslsmith_clamp_i32(2147483647i, ~var_0.b.b, ~1i));
}

