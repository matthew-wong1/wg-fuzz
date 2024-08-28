struct Struct_1 {
    a: u32,
    b: i32,
    c: vec2<u32>,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: f32,
    c: f32,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32> = vec4<f32>(-1000f, -782f, 1119f, -890f);

var<private> global1: vec4<f32> = vec4<f32>(2149f, -218f, -2295f, 514f);

var<private> global2: array<Struct_5, 6> = array<Struct_5, 6>(Struct_5(Struct_1(55912u, 2147483647i, vec2<u32>(1u, 4294967295u), true, false), vec4<i32>(0i, -1i, i32(-2147483648), 0i), Struct_2(false), -163f, 1929f), Struct_5(Struct_1(3909u, 1i, vec2<u32>(0u, 22317u), false, true), vec4<i32>(-24612i, -21483i, -937i, 14408i), Struct_2(false), 479f, -1000f), Struct_5(Struct_1(0u, -1i, vec2<u32>(0u, 24207u), false, false), vec4<i32>(-7413i, 44754i, i32(-2147483648), -1i), Struct_2(true), -232f, 726f), Struct_5(Struct_1(43173u, i32(-2147483648), vec2<u32>(4683u, 81604u), false, false), vec4<i32>(-13069i, 0i, 16787i, i32(-2147483648)), Struct_2(false), 1490f, 191f), Struct_5(Struct_1(4294967295u, -42169i, vec2<u32>(754u, 1u), false, false), vec4<i32>(2147483647i, -20490i, 0i, -10350i), Struct_2(false), 1060f, 845f), Struct_5(Struct_1(0u, i32(-2147483648), vec2<u32>(1u, 45262u), true, true), vec4<i32>(40975i, 9479i, -1i, 5794i), Struct_2(false), -1204f, -916f));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = countOneBits(vec4<i32>(12004i, u_input.a.x, select(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c, u_input.a.x, -11100i), vec3<i32>(u_input.a.x, -26276i, 1i)), true) >> (_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 10359u), vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)) % 32u), _wgslsmith_dot_vec2_i32((u_input.a ^ u_input.a) << (~u_input.b % vec2<u32>(32u)), ~vec2<i32>(u_input.c, 22816i))));
    let var_1 = true;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), global0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(-global0.x)), _wgslsmith_f_op_f32(247f + _wgslsmith_f_op_f32(global0.x * -1624f)))), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global1.x)), -305f)))), _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x * global1.x), -1545f))));
    global1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global0.x, global0.x, global1.x, -417f), vec4<f32>(569f, 1000f, 2184f, global0.x))) - _wgslsmith_f_op_vec4_f32(var_2 + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, 2298f, global1.x) - var_2))) * vec4<f32>(_wgslsmith_f_op_f32(trunc(-1527f)), var_2.x, global0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, var_2.x))))));
    var var_3 = -_wgslsmith_div_vec3_i32(var_0.xyx, vec3<i32>(-u_input.a.x, u_input.a.x, u_input.a.x));
    var var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1539f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_sub_vec3_u32(~(~vec3<u32>(u_input.b.x, 44267u, u_input.b.x)), _wgslsmith_sub_vec3_u32(vec3<u32>(65598u, u_input.b.x, 0u) | vec3<u32>(4294967295u, 0u, u_input.b.x), select(vec3<u32>(u_input.b.x, 0u, 1u), vec3<u32>(1u, u_input.b.x, 51076u), vec3<bool>(true, var_1, var_1)))), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x ^ 29261u, u_input.b.x, 9468u), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(83657u, 48618u, u_input.b.x), vec3<u32>(u_input.b.x, 16938u, u_input.b.x)), vec3<u32>(13357u, u_input.b.x, 1u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), ~(~vec3<u32>(12780u, 1697u, 0u)))), firstLeadingBit(~(~vec3<u32>(1u, u_input.b.x, 0u) & countOneBits(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)))), abs(21972u), var_0.wyw, ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.b.x, 0u, 85398u, 0u)), min(vec4<u32>(u_input.b.x, 39633u, u_input.b.x, 7924u), select(vec4<u32>(29665u, u_input.b.x, u_input.b.x, 858u), vec4<u32>(59536u, 27596u, u_input.b.x, 0u), vec4<bool>(var_1, var_1, var_1, true)))));
}

