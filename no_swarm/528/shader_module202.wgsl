struct Struct_1 {
    a: i32,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_1;

var<private> global2: array<vec4<bool>, 21>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = select(global1.d.yy, vec2<bool>(any(global1.d.zyx) & true, all(global1.d.zww)), global1.d.zz);
    global1 = Struct_1(_wgslsmith_div_i32(141i, global1.a), 1045f, ~global0.x, select(global1.d, vec4<bool>(all(select(global1.d.yw, vec2<bool>(true, false), vec2<bool>(true, var_0.x))), !global1.d.x, true, var_0.x), true), _wgslsmith_mod_vec4_u32(arg_0, abs(~(~vec4<u32>(19820u, global1.e.x, 15842u, u_input.b)))));
    global2 = array<vec4<bool>, 21>();
    var var_1 = ~vec3<u32>(((1u >> (u_input.d.x % 32u)) & ~global1.e.x) ^ global1.e.x, abs(firstLeadingBit(4294967295u)), u_input.d.x);
    var_1 = ~(~u_input.d.xwx);
    return Struct_1(_wgslsmith_sub_i32(-global0.x, global0.x) << (abs((global1.e.x & arg_0.x) | u_input.b) % 32u), global1.b, 2147483647i, global1.d, countOneBits(firstLeadingBit(global1.e)));
}

fn func_3(arg_0: u32) -> Struct_1 {
    global0 = (select(vec3<i32>(global0.x >> (u_input.d.x % 32u), global1.c, u_input.c.x), _wgslsmith_add_vec3_i32(-vec3<i32>(0i, global0.x, 2147483647i), vec3<i32>(global1.c, global1.c, 14311i) >> (global1.e.xwz % vec3<u32>(32u))), global1.d.x) ^ vec3<i32>(_wgslsmith_add_i32(-14145i, -53918i), -44371i, global1.c)) ^ (~vec3<i32>(global0.x, -31906i, global0.x) | abs(min(-vec3<i32>(global1.c, 1i, -1i), select(vec3<i32>(-32937i, global1.a, -2977i), vec3<i32>(global1.a, global0.x, u_input.a), global1.d.x))));
    let var_0 = _wgslsmith_sub_vec4_i32(firstLeadingBit(firstTrailingBit(vec4<i32>(1i, 41465i, -u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 12547i, global1.a), vec4<i32>(u_input.a, -1i, u_input.a, 1i))))), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_mod_i32(max(-1i, 21821i), 1i), 1i), ~abs(_wgslsmith_sub_i32(global1.c, -11353i)), ~(-2147483647i & _wgslsmith_dot_vec4_i32(vec4<i32>(-13257i, global1.c, -2579i, -2147483647i), vec4<i32>(-54833i, global0.x, global0.x, global1.a))), -21856i));
    var var_1 = ~(~min(_wgslsmith_dot_vec3_i32(vec3<i32>(11431i, var_0.x, -2147483647i), vec3<i32>(1i, 31200i, 0i)), ~(-2147483647i)) >> (select(global1.e.x, 1u, all(func_1(u_input.d).d.wyy)) % 32u));
    let var_2 = global1.d.x;
    var var_3 = global1.d.x;
    return func_1(u_input.d);
}

fn func_2() -> vec4<u32> {
    let var_0 = func_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_div_u32(u_input.b, u_input.b), global1.e.x, ~(~57564u), ~_wgslsmith_mod_u32(u_input.d.x, 4294967295u)), ~vec4<u32>(global1.e.x, global1.e.x, 4294967295u, u_input.b), countOneBits(vec4<u32>(global1.e.x >> (839u % 32u), 16281u, global1.e.x, u_input.b ^ global1.e.x)))).b;
    global1 = func_3(4294967295u);
    global2 = array<vec4<bool>, 21>();
    global2 = array<vec4<bool>, 21>();
    var var_1 = 1u;
    return _wgslsmith_clamp_vec4_u32(global1.e, global1.e, func_3(firstLeadingBit(global1.e.x)).e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global1.e);
    global2 = array<vec4<bool>, 21>();
    let var_1 = firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec4_u32(global1.e, ~func_2()), ~var_0.e.x));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-404f * -1086f) - 522f), global1.b);
    global2 = array<vec4<bool>, 21>();
    let var_3 = min(var_0.e.x, 56639u) ^ ~16511u;
    var var_4 = Struct_1(var_0.c, 844f, 2147483647i, select(var_0.d, vec4<bool>(any(var_0.d.xzy), !func_3(1u).d.x, var_0.d.x, global1.d.x), var_0.d.x), var_0.e);
    let var_5 = var_0;
    global1 = var_5;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_mult_u32(max(var_5.e.x, 0u), ~39987u), var_0.e.x & var_4.e.x), _wgslsmith_sub_vec2_u32(vec2<u32>(abs(var_1.x), global1.e.x), ~vec2<u32>(var_3, 1u) | _wgslsmith_mult_vec2_u32(var_5.e.wz, vec2<u32>(20558u, 0u)))), firstTrailingBit(global0.x), ~vec3<i32>(var_5.c, _wgslsmith_clamp_i32(1i, -13958i, ~u_input.c.x), var_0.c), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_5.b) + global1.b))), var_4.b);
}

