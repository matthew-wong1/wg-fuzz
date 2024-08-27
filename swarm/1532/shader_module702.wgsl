struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 18> = array<bool, 18>(false, false, true, true, true, true, true, true, false, true, true, true, true, false, true, true, false, true);

var<private> global2: vec2<i32> = vec2<i32>(0i, -1i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2() -> bool {
    let var_0 = Struct_2(Struct_1(global0.a, vec4<bool>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0.c.x, abs(0u)), 18u)], _wgslsmith_div_i32(0i, global2.x) >= ~54758i, all(!global0.b.xx), global0.a.x), global0.c));
    global2 = u_input.e.xx;
    var var_1 = var_0.a;
    var_1 = var_0.a;
    var var_2 = Struct_1(var_1.b, vec4<bool>(global0.b.x && false, true, false, true), ~select(firstLeadingBit(countOneBits(vec4<u32>(26129u, global0.c.x, 44973u, var_1.c.x))), _wgslsmith_mult_vec4_u32(abs(vec4<u32>(0u, 1u, 0u, 4294967295u)), var_0.a.c), !(!var_0.a.a)));
    return !var_0.a.b.x;
}

fn func_3(arg_0: bool) -> Struct_1 {
    var var_0 = Struct_1(!(!global0.a), !vec4<bool>(true, arg_0, !(global0.b.x | global0.b.x), false), u_input.c);
    var_0 = Struct_1(global0.b, global0.b, vec4<u32>(33344u, 1u, abs(abs(0u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global0.c.x, var_0.c.x), vec2<u32>(var_0.c.x, 1u)) % 32u), (var_0.c.x << (_wgslsmith_mult_u32(u_input.a.x, var_0.c.x) % 32u)) | 2857u));
    var var_1 = min(~min(var_0.c, vec4<u32>(var_0.c.x, var_0.c.x, 1u, 1u)), ~(~u_input.c));
    return Struct_1(!vec4<bool>(arg_0, any(!global0.b.xyy), !all(vec4<bool>(global0.a.x, true, var_0.a.x, global1[_wgslsmith_index_u32(u_input.b, 18u)])), all(vec4<bool>(arg_0, var_0.a.x, var_0.a.x, true))), !vec4<bool>(true, true, all(select(global0.b.wz, vec2<bool>(arg_0, var_0.b.x), arg_0)), false), _wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mult_vec4_u32(~vec4<u32>(79697u, global0.c.x, 0u, var_0.c.x), min(vec4<u32>(28826u, u_input.c.x, var_0.c.x, 12929u), u_input.c))), abs(~var_0.c << (vec4<u32>(4294967295u, u_input.a.x, 87899u, 0u) % vec4<u32>(32u)))));
}

fn func_1() -> u32 {
    global0 = func_3(func_2());
    global2 = vec2<i32>(-2147483647i, ~(~(-select(global2.x, -1i, global0.a.x))));
    let var_0 = vec2<u32>(u_input.c.x, _wgslsmith_dot_vec4_u32(global0.c, ~vec4<u32>(14686u, 1u, global0.c.x, global0.c.x)) | _wgslsmith_clamp_u32(4294967295u, func_3(true).c.x, 4294967295u));
    let var_1 = Struct_2(Struct_1(vec4<bool>(!global1[_wgslsmith_index_u32(49498u >> (0u % 32u), 18u)], !any(vec2<bool>(false, global1[_wgslsmith_index_u32(global0.c.x, 18u)])), global1[_wgslsmith_index_u32(firstTrailingBit(14098u), 18u)], false), global0.a, ~(~_wgslsmith_mod_vec4_u32(global0.c, vec4<u32>(66454u, global0.c.x, 25868u, var_0.x)))));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(i32(-1i) * -13113i, select(-global2.x, global2.x, false)), _wgslsmith_add_i32(47446i, _wgslsmith_dot_vec4_i32(-u_input.e, vec4<i32>(36586i, global2.x, -1i, -35654i))), -1i), vec3<i32>(min(-u_input.d, abs(1i)), global2.x, u_input.d) & max(vec3<i32>(20479i << (0u % 32u), ~u_input.d, u_input.e.x), vec3<i32>(abs(36525i), _wgslsmith_dot_vec4_i32(u_input.e, u_input.e), global2.x)));
    return 0u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<bool, 18>();
    let var_0 = 243f;
    let x = u_input.a;
    s_output = StorageBuffer(37648u, vec3<u32>(~firstLeadingBit(~1u), _wgslsmith_mod_u32(select(_wgslsmith_mod_u32(u_input.a.x, u_input.b), 1u, !global0.b.x), func_1()), 1u), vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.e.yyx, vec3<i32>(u_input.d, 0i, 0i)), vec3<i32>(-36002i, global2.x, global2.x)), reverseBits(firstTrailingBit(u_input.e.x)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.e.x, u_input.d), -21199i, 0i), _wgslsmith_clamp_i32(global2.x, -u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.e.zzw, vec3<i32>(25570i, -17115i, u_input.e.x)))) << (firstLeadingBit(~(~u_input.c)) % vec4<u32>(32u)), _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(-var_0));
}

