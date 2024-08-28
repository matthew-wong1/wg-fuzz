struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<f32>,
    c: Struct_3,
    d: vec4<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

var<private> global1: array<f32, 5> = array<f32, 5>(-312f, -2732f, -1039f, 498f, -568f);

var<private> global2: Struct_5;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = Struct_4(Struct_1(global2.e.b.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global2.e.c.zz, vec2<f32>(global2.e.c.x, -693f), true)), _wgslsmith_f_op_vec2_f32(min(global2.e.b, global2.e.c.xw)))), global2.e.c, ~(abs(86730u) | u_input.a), vec3<u32>(42404u, ~0u >> (1u % 32u), _wgslsmith_mult_u32(~37831u, select(20194u, global2.e.d, true)))), select(abs(firstLeadingBit(vec3<u32>(31229u, 0u, global2.d.x))), ~max(_wgslsmith_mult_vec3_u32(global2.e.e, vec3<u32>(global2.e.e.x, 0u, 67212u)), global2.e.e), vec3<bool>(true, true, true)), Struct_1(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(global2.e.e, ~global2.e.e), 5u)], _wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.e.e.x, 8u)], 5u)]))), global2.b.yy, _wgslsmith_f_op_vec4_f32(-global2.e.c), _wgslsmith_div_u32(4294967295u, reverseBits(42156u)) ^ ~u_input.a, ~reverseBits(vec3<u32>(0u, global2.e.e.x, 57344u)) ^ ~(~global2.e.e)), global2.e, global2.e);
    global1 = array<f32, 5>();
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global2.e.c.x, 1274f), _wgslsmith_f_op_f32(global2.b.x + -1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a))));
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    return -1000f;
}

fn func_2(arg_0: f32) -> Struct_5 {
    global0 = array<u32, 8>();
    global1 = array<f32, 5>();
    return Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec2<i32>(global2.c.b.x, max(-1i, global2.c.b.x)))))), vec3<f32>(542f, -1582f, -219f), Struct_3(min(_wgslsmith_div_vec2_u32(vec2<u32>(12768u, 21678u), _wgslsmith_div_vec2_u32(global2.d.wz, global2.c.a)), ~(~vec2<u32>(1u, 48742u))), vec2<i32>(-2147483647i, -min(global2.c.b.x, -7440i)), vec2<i32>(~(-1i) ^ global2.c.b.x, ~1i ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -32985i, global2.c.b.x), vec3<i32>(global2.c.b.x, -6361i, -9563i)))), max(~vec4<u32>(~27426u, 4294967295u, 32602u, 0u << (global2.c.a.x % 32u)), _wgslsmith_clamp_vec4_u32(global2.d, ~(~global2.d), vec4<u32>(_wgslsmith_mult_u32(20015u, 51653u), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 8u)], 8u)], _wgslsmith_mod_u32(u_input.a, u_input.a), u_input.a))), global2.e);
}

fn func_1(arg_0: vec4<bool>, arg_1: u32) -> bool {
    var var_0 = 42943u;
    let var_1 = global2.c;
    var var_2 = global2.e;
    var var_3 = 32261u;
    global2 = func_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.a, _wgslsmith_f_op_f32(f32(-1f) * -1561f))));
    return ~countOneBits(var_1.a.x) < 17837u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<f32, 5>();
    let var_0 = vec3<bool>(!all(vec2<bool>(true, false)), func_1(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), false), countOneBits(global2.c.a.x & global2.e.e.x) ^ global2.c.a.x), global2.c.c.x <= ~global2.c.b.x);
    var var_1 = Struct_4(global2.e, (vec3<u32>(~3974u, _wgslsmith_mult_u32(u_input.a, 54079u), max(u_input.a, 4294967295u)) >> (global2.e.e % vec3<u32>(32u))) & global2.d.wyw, Struct_1(_wgslsmith_f_op_f32(global2.e.a - -698f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(global2.b.xz)), _wgslsmith_f_op_vec2_f32(global2.b.zz * _wgslsmith_f_op_vec2_f32(-global2.e.c.zx)), select(var_0.xx, select(vec2<bool>(var_0.x, false), var_0.yy, vec2<bool>(var_0.x, var_0.x)), var_0.xy))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-120f, _wgslsmith_f_op_f32(max(778f, global1[_wgslsmith_index_u32(1u, 5u)])), -1000f, _wgslsmith_f_op_f32(-global2.e.b.x))), global0[_wgslsmith_index_u32(~(~0u), 8u)], _wgslsmith_sub_vec3_u32(firstTrailingBit(~vec3<u32>(1u, 1u, 0u)), countOneBits(vec3<u32>(global0[_wgslsmith_index_u32(u_input.a, 8u)], u_input.a, u_input.a)))), global2.e, Struct_1(_wgslsmith_f_op_f32(-global2.b.x), _wgslsmith_f_op_vec2_f32(min(global2.e.c.yw, global2.b.zz)), vec4<f32>(_wgslsmith_f_op_f32(ceil(global2.a)), global1[_wgslsmith_index_u32(1u, 5u)], _wgslsmith_f_op_f32(ceil(-422f)), -1000f), u_input.a, ~(~global2.d.yzw) >> (select(~vec3<u32>(1u, 121775u, u_input.a), max(global2.d.wxy, vec3<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 1u, 74386u)), vec3<bool>(var_0.x, true, true)) % vec3<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.d.c.x, global2.a, -2322f, var_1.c.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.b.x, global2.e.b.x, -527f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.a, global1[_wgslsmith_index_u32(0u, 5u)], 419f, global1[_wgslsmith_index_u32(4294967295u, 5u)]) + vec4<f32>(var_1.d.a, -1613f, -1799f, 1051f)), vec4<f32>(-321f, global2.b.x, 1042f, global1[_wgslsmith_index_u32(0u, 5u)]))), _wgslsmith_div_vec4_f32(var_1.c.c, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.e.c.x, global2.e.a, global2.e.c.x, global1[_wgslsmith_index_u32(1u, 5u)]) - vec4<f32>(1000f, 852f, 456f, var_1.e.b.x))))), vec4<bool>(global2.c.b.x != (global2.c.b.x ^ -29239i), !any(vec3<bool>(var_0.x, var_0.x, true)), var_0.x, false))), 46500u, _wgslsmith_sub_vec4_u32(~vec4<u32>(~global2.d.x, ~0u, _wgslsmith_add_u32(0u, 2295u), max(4294967295u, global0[_wgslsmith_index_u32(66115u, 8u)])), vec4<u32>(u_input.a, u_input.a, 1u, ~func_2(-144f).d.x)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(79202u << (0u % 32u), global2.d.x), ~var_1.a.e.xy), global2.e.e.x), _wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(abs(var_1.e.e.x) | func_2(-685f).e.d, 5u)], global2.e.b.x)));
}

