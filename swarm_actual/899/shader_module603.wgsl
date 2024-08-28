struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20>;

var<private> global1: array<vec4<i32>, 27>;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(36822u, 1u, 10254u), 1i, 1i, vec2<u32>(4294967295u, 1u));

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1) -> u32 {
    let var_0 = Struct_2(-_wgslsmith_mod_vec4_i32(-_wgslsmith_div_vec4_i32(u_input.c, vec4<i32>(44385i, 43254i, 1i, -65931i)), global1[_wgslsmith_index_u32((arg_1.a.x | 1u) | firstLeadingBit(64921u), 27u)]), _wgslsmith_dot_vec3_i32(u_input.c.zzx, u_input.b.xzx), vec2<i32>(firstTrailingBit(global3.c), arg_1.c), all(!vec4<bool>(true, true, any(vec4<bool>(false, true, false, true)), all(vec3<bool>(true, false, false)))));
    global3 = Struct_1(_wgslsmith_clamp_vec3_u32(arg_1.a, global3.a, ~vec3<u32>(~30453u, countOneBits(37951u), ~0u)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(u_input.b, -(~u_input.c)), vec4<i32>(_wgslsmith_sub_i32(u_input.c.x, arg_1.c) | abs(-16758i), -arg_1.b, u_input.b.x, i32(-1i) * -u_input.a)), max(0i, firstTrailingBit(~(u_input.b.x >> (arg_1.a.x % 32u)))), vec2<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.a.x, 4294967295u) ^ global3.d.x, arg_1.d.x), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(arg_1.d.x, global3.d.x)), vec2<u32>(1u, 1u) | ~vec2<u32>(0u, arg_1.d.x))));
    var var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1.d.x, 4294967295u, 1u), (max(arg_1.a ^ vec3<u32>(4294967295u, 68300u, 5632u), arg_1.a) >> (arg_1.a % vec3<u32>(32u))) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(global3.d.x, global3.d.x, 1u), vec3<u32>(11292u, 0u, 35419u)));
    let var_2 = arg_1;
    var var_3 = _wgslsmith_mult_vec2_u32(var_1.zx, vec2<u32>(48230u, 4294967295u));
    return arg_1.a.x;
}

fn func_2() -> vec4<i32> {
    var var_0 = false;
    global0 = array<vec4<u32>, 20>();
    global3 = Struct_1(~vec3<u32>(global3.d.x, ~global3.d.x, global3.d.x >> (_wgslsmith_add_u32(43557u, global3.d.x) % 32u)), select(_wgslsmith_sub_i32(~(-7494i), _wgslsmith_div_i32(u_input.a, 1i)) >> (9507u % 32u), 2147483647i, !all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false)))), -_wgslsmith_mult_i32(u_input.a, _wgslsmith_clamp_i32(global3.b, -1935i, u_input.b.x)) << (global3.a.x % 32u), ~vec2<u32>(0u, abs(~0u)));
    global3 = Struct_1(vec3<u32>(1u, 6194u, 5726u) & ((abs(vec3<u32>(global3.d.x, global3.d.x, 25747u)) | vec3<u32>(29040u, 1133u, 0u)) >> (global3.a % vec3<u32>(32u))), _wgslsmith_mult_i32(~global3.b, ~u_input.b.x), _wgslsmith_sub_i32(_wgslsmith_mod_i32(_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.b.yy, u_input.b.xw), global3.c), _wgslsmith_mod_i32(0i, global3.c)), -min(min(61391i, u_input.a), -57585i << (global3.d.x % 32u))), vec2<u32>(func_3(vec4<f32>(210f, _wgslsmith_f_op_f32(trunc(1940f)), _wgslsmith_div_f32(387f, -663f), _wgslsmith_f_op_f32(f32(-1f) * -334f)), Struct_1(~global3.a, select(u_input.b.x, global3.c, true), -global3.c, ~global3.a.yz)), _wgslsmith_mult_u32(global3.a.x, ~abs(global3.a.x))));
    let var_1 = ~50603u;
    return vec4<i32>(abs(u_input.c.x), -global3.b, 24302i, global3.c);
}

fn func_1() -> Struct_1 {
    global2 = (~global3.d.x ^ global3.a.x) << (select(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(15942u, 64024u, global3.a.x) & vec3<u32>(46837u, global3.a.x, 27672u), firstLeadingBit(global3.a))), 29198u >> (max(global3.a.x, global3.d.x) % 32u), true | any(vec2<bool>(false, false))) % 32u);
    global0 = array<vec4<u32>, 20>();
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(649f, -805f), vec2<f32>(-132f, -965f))))) + vec2<f32>(_wgslsmith_f_op_f32(506f + 285f), _wgslsmith_f_op_f32(f32(-1f) * -625f))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1055f, 1269f), vec2<f32>(-510f, -1424f)) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1000f, 1546f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-153f, 461f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(895f, 787f) * vec2<f32>(521f, 655f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-947f, -855f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(387f, 2041f))))) * vec2<f32>(1f, 1f))));
    global0 = array<vec4<u32>, 20>();
    let var_1 = Struct_2(~(~func_2()), u_input.c.x, u_input.c.wx << (~abs(~vec2<u32>(global3.d.x, 27466u)) % vec2<u32>(32u)), true);
    return Struct_1(vec3<u32>(global3.d.x, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(4294967295u, 35200u, global3.d.x), global3.d.x), global3.d.x), _wgslsmith_mult_i32(-select(~u_input.c.x, -global3.c, var_1.d), u_input.a), u_input.b.x, _wgslsmith_add_vec2_u32(~firstTrailingBit(abs(vec2<u32>(0u, 1u))), vec2<u32>(global3.a.x, ~global3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(~(~(0u & firstTrailingBit(0u))), abs(global3.d.x), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(global0[_wgslsmith_index_u32(1u, 20u)], ~(global0[_wgslsmith_index_u32(17714u, 20u)] & vec4<u32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x))), global0[_wgslsmith_index_u32(1u, 20u)]));
    global3 = func_1();
    let var_1 = Struct_1(vec3<u32>(0u, var_0.x, ~25357u), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-u_input.b.wz, -(~vec2<i32>(3065i, global3.b))), _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-14033i, -26954i, -40016i), u_input.c.wwy), reverseBits(6821i)))), firstTrailingBit(max(select(global3.c, 1i, true), select(_wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(global3.d.x, 27u)], vec4<i32>(6549i, 6894i, -27034i, -46545i)), -global3.b, true))), abs(vec2<u32>(~(global3.a.x >> (0u % 32u)), countOneBits(1u))));
    global2 = ~(~1u);
    global3 = var_1;
    global3 = Struct_1(~abs(~(~global3.a)), ~(-(~global3.c)), 2147483647i, var_1.a.xy);
    var var_2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(var_2.a.x, 82708u), _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-300f, 645f, 880f, -2062f) + vec4<f32>(1000f, 527f, 582f, 1123f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(994f, -1652f, 978f, 1046f)))));
}

