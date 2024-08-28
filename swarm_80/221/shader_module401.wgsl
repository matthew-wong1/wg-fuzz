struct Struct_1 {
    a: f32,
    b: bool,
    c: bool,
    d: vec3<i32>,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 2147483647i, -34438i, -1i);

var<private> global1: array<i32, 31> = array<i32, 31>(i32(-2147483648), i32(-2147483648), 2147483647i, 0i, -10789i, 43855i, -38940i, i32(-2147483648), -15644i, 2147483647i, i32(-2147483648), -1i, -1i, 36345i, 40509i, 1i, 5857i, 20669i, 32750i, 5017i, i32(-2147483648), -7754i, i32(-2147483648), 0i, i32(-2147483648), 15087i, 1i, -10091i, -14529i, 0i, -21172i);

var<private> global2: array<u32, 29> = array<u32, 29>(4294967295u, 0u, 0u, 3100u, 24809u, 39311u, 10381u, 1u, 70563u, 4831u, 11867u, 0u, 57637u, 64929u, 13739u, 4294967295u, 14324u, 0u, 318u, 1481u, 0u, 101907u, 59194u, 1u, 1u, 5357u, 2349u, 1u, 1255u);

var<private> global3: Struct_2 = Struct_2(12510i, -1i, 40352u, Struct_1(-766f, true, false, vec3<i32>(-1i, 0i, 34306i), 8089u));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(786f, arg_0), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global3.d.a, 1728f), vec2<f32>(-377f, -550f), global3.d.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.d.a, -183f) * vec2<f32>(arg_0, global3.d.a)))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1645f, -2059f) + vec2<f32>(arg_0, -1385f)) * vec2<f32>(global3.d.a, global3.d.a))))));
    global3 = Struct_2(-49877i, _wgslsmith_sub_i32(u_input.b.x, 9117i), countOneBits(global2[_wgslsmith_index_u32(((4294967295u & global2[_wgslsmith_index_u32(global3.c, 29u)]) & u_input.a) >> (u_input.a % 32u), 29u)]), global3.d);
    global0 = vec4<i32>(-1i) * -(~vec4<i32>(global1[_wgslsmith_index_u32(~58946u, 31u)], -u_input.b.x, global0.x, 1i ^ global3.a));
    global1 = array<i32, 31>();
    global1 = array<i32, 31>();
    return global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(~u_input.a), _wgslsmith_sub_u32(global2[_wgslsmith_index_u32(0u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 29u)], 29u)] % 32u), 29u)], 52473u), 74410u), ~(min(vec3<u32>(global3.c, global3.c, 41055u), vec3<u32>(global3.d.e, global3.d.e, 32164u)) | (vec3<u32>(global3.d.e, 33998u, 4294967295u) | vec3<u32>(23186u, 1u, 0u)))), 31u)];
}

fn func_1() -> Struct_2 {
    global1 = array<i32, 31>();
    global2 = array<u32, 29>();
    global1 = array<i32, 31>();
    global0 = vec4<i32>(~reverseBits(abs(global0.x)), -1i, max(_wgslsmith_sub_i32(0i, u_input.b.x), -4261i), global1[_wgslsmith_index_u32(abs(~53895u), 31u)]);
    let var_0 = _wgslsmith_f_op_f32(abs(-1371f));
    return Struct_2(~(-1i), func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0 - 647f)))), ~3395u, global3.d);
}

fn func_3() -> i32 {
    let var_0 = -_wgslsmith_clamp_vec2_i32(global0.ww, ~vec2<i32>(max(global0.x, 32886i), global0.x), global3.d.d.zx);
    global1 = array<i32, 31>();
    var var_1 = 544f;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -495f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(global3.d.a)), global3.d.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-908f - global3.d.a)))) * _wgslsmith_f_op_f32(100f - _wgslsmith_div_f32(-1200f, _wgslsmith_div_f32(_wgslsmith_div_f32(1866f, -2931f), func_1().d.a))));
    var var_3 = global3.d;
    return _wgslsmith_mult_i32(23447i, abs(var_3.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = reverseBits(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global0.xwy, vec3<i32>(global3.a, global1[_wgslsmith_index_u32(12417u, 31u)], u_input.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(38193u, 31u)], 2147483647i, global1[_wgslsmith_index_u32(3034u, 31u)]), vec3<i32>(0i, -13715i, u_input.b.x))) | global3.b, ~(~(-27090i)), _wgslsmith_div_i32(countOneBits(-2147483647i), _wgslsmith_sub_i32(global3.b, global1[_wgslsmith_index_u32(global3.c, 31u)])) | ~firstTrailingBit(-1i), reverseBits(~(-1i))));
    var var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 1i, -2147483647i), firstLeadingBit(global3.d.d | vec3<i32>(u_input.b.x ^ u_input.b.x, 58606i, select(global0.x, global3.d.d.x, global3.d.c))));
    global3 = func_1();
    let var_1 = _wgslsmith_clamp_i32(~(-abs(func_1().b)), u_input.b.x, u_input.b.x);
    let var_2 = Struct_2(select(-1i, global0.x, true), 6170i, u_input.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -501f), true, !(!any(vec2<bool>(true, false))), global3.d.d, 13858u));
    let var_3 = vec4<i32>(var_2.d.d.x, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, func_1().d.d.x), global0.yy << (~(~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u))), _wgslsmith_dot_vec3_i32(global3.d.d, vec3<i32>(~(-27923i), -1i, 3418i)) >> ((~(~0u) & countOneBits(~global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 29u)], 29u)])) % 32u));
    var var_4 = firstLeadingBit(_wgslsmith_clamp_i32(reverseBits(_wgslsmith_dot_vec4_i32(var_3, vec4<i32>(global0.x, var_3.x, 2147483647i, global0.x))), -60400i, func_3())) & global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(44412u, 29u)], 31u)];
    global0 = _wgslsmith_sub_vec4_i32(vec4<i32>(var_1, min(2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(52366i, -9023i, global1[_wgslsmith_index_u32(95319u, 31u)], var_3.x), var_3)), -1i, 40235i), ~(var_3 >> (~vec4<u32>(1u, 7731u, 4294967295u, global2[_wgslsmith_index_u32(24763u, 29u)]) % vec4<u32>(32u))));
    let var_5 = var_2.d.b;
    let x = u_input.a;
    s_output = StorageBuffer(~global3.d.d, ~(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(var_2.d.e, 43271u, global2[_wgslsmith_index_u32(global3.c, 29u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(var_2.c, u_input.a, var_2.d.e), vec3<u32>(101924u, 1u, u_input.a)))), ~_wgslsmith_mult_vec4_u32(~select(vec4<u32>(0u, 1u, u_input.a, 1u), vec4<u32>(var_2.d.e, u_input.a, u_input.a, u_input.a), vec4<bool>(var_5, var_5, true, true)), ~countOneBits(vec4<u32>(0u, var_2.d.e, 3973u, global2[_wgslsmith_index_u32(global3.c, 29u)]))), _wgslsmith_f_op_f32(var_2.d.a * _wgslsmith_f_op_f32(f32(-1f) * -1000f)), -25668i);
}

