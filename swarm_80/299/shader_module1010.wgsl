struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_2,
    c: vec3<u32>,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 7> = array<Struct_3, 7>(Struct_3(vec4<u32>(69652u, 0u, 0u, 0u), Struct_2(vec4<u32>(35406u, 0u, 44616u, 4294967295u), Struct_1(-406f, vec4<f32>(913f, 157f, -1331f, 1389f), vec2<u32>(1u, 41466u))), vec3<u32>(72551u, 4294967295u, 4294967295u), vec3<i32>(-59552i, -1i, -38275i), vec2<i32>(28577i, 2147483647i)), Struct_3(vec4<u32>(14575u, 740u, 38064u, 0u), Struct_2(vec4<u32>(57692u, 25890u, 10005u, 1u), Struct_1(499f, vec4<f32>(633f, 912f, -2155f, 220f), vec2<u32>(8868u, 4294967295u))), vec3<u32>(8079u, 8510u, 30575u), vec3<i32>(557i, 3804i, 69167i), vec2<i32>(i32(-2147483648), 2147483647i)), Struct_3(vec4<u32>(1u, 0u, 39025u, 4294967295u), Struct_2(vec4<u32>(4294967295u, 72686u, 4294967295u, 28038u), Struct_1(433f, vec4<f32>(384f, -1161f, -356f, -571f), vec2<u32>(31909u, 49888u))), vec3<u32>(4294967295u, 0u, 1u), vec3<i32>(-1i, -52368i, 1i), vec2<i32>(11842i, -21790i)), Struct_3(vec4<u32>(4294967295u, 4294967295u, 12650u, 19283u), Struct_2(vec4<u32>(19850u, 70163u, 4294967295u, 11713u), Struct_1(-412f, vec4<f32>(606f, -853f, 1404f, 3021f), vec2<u32>(4294967295u, 70542u))), vec3<u32>(9842u, 46920u, 42188u), vec3<i32>(39390i, 0i, 2147483647i), vec2<i32>(3153i, -2367i)), Struct_3(vec4<u32>(39057u, 4294967295u, 0u, 4294967295u), Struct_2(vec4<u32>(28422u, 4294967295u, 66835u, 0u), Struct_1(2744f, vec4<f32>(-444f, 519f, -1317f, -347f), vec2<u32>(109677u, 43987u))), vec3<u32>(51005u, 43919u, 4294967295u), vec3<i32>(0i, 0i, -24914i), vec2<i32>(-9268i, 2147483647i)), Struct_3(vec4<u32>(45758u, 22073u, 0u, 41809u), Struct_2(vec4<u32>(4294967295u, 4294967295u, 21693u, 0u), Struct_1(-420f, vec4<f32>(1747f, 1018f, -1000f, -1124f), vec2<u32>(8229u, 12605u))), vec3<u32>(25056u, 0u, 112601u), vec3<i32>(37530i, 2147483647i, -1i), vec2<i32>(1i, 21381i)), Struct_3(vec4<u32>(84604u, 0u, 4294967295u, 43203u), Struct_2(vec4<u32>(4294967295u, 24280u, 0u, 101561u), Struct_1(557f, vec4<f32>(-779f, -1000f, -509f, -274f), vec2<u32>(73073u, 4294967295u))), vec3<u32>(4294967295u, 1u, 4294967295u), vec3<i32>(-1i, 3293i, -1i), vec2<i32>(2147483647i, 51767i)));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: bool) -> vec4<u32> {
    return ~(~countOneBits(countOneBits(reverseBits(vec4<u32>(global2.c.x, global1.c.x, 0u, global1.c.x)))));
}

fn func_3() -> u32 {
    var var_0 = !(!select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), false)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), true), true));
    global0 = array<Struct_3, 7>();
    let var_1 = global0[_wgslsmith_index_u32(global2.c.x, 7u)];
    var var_2 = var_1.b.b.b.yw;
    let var_3 = var_1.e;
    return ~0u;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_1 {
    let var_0 = func_2(false);
    var var_1 = vec2<i32>(arg_1, ~arg_0) >> ((vec2<u32>(29932u, 0u) & vec2<u32>(_wgslsmith_sub_u32(func_3(), 26787u), ~(~var_0.x))) % vec2<u32>(32u));
    let var_2 = ~vec3<u32>(min(~var_0.x >> (countOneBits(10948u) % 32u), _wgslsmith_div_u32(~global1.c.x, _wgslsmith_sub_u32(global1.c.x, global2.c.x))), global2.c.x, ~var_0.x);
    global2 = Struct_1(_wgslsmith_f_op_f32(-1755f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(global1.b.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(309f, -1564f, 726f, -1312f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-353f, 784f, -936f, global2.a))) - _wgslsmith_f_op_vec4_f32(-global2.b))), global1.b, false)), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(1015u, 31427u)), var_2.yx));
    var var_3 = var_1.x;
    return Struct_1(_wgslsmith_div_f32(-350f, 883f), vec4<f32>(1107f, _wgslsmith_f_op_f32(floor(global2.b.x)), global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -788f) - -181f)), _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec4_u32(var_0, var_0), 43726u), global1.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec4<u32>(global2.c.x, _wgslsmith_add_u32(global2.c.x, ~abs(global2.c.x)), global1.c.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(reverseBits(vec3<u32>(1u, global1.c.x, 1u)), ~vec3<u32>(global2.c.x, 0u, 67225u)), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global1.c.x, global2.c.x), vec3<u32>(global2.c.x, 19037u, 39241u)) | (vec3<u32>(global1.c.x, 18001u, global1.c.x) | vec3<u32>(1u, 21532u, 1u)))), func_1(abs(15842i), reverseBits(max(u_input.a.x, u_input.a.x) << (~global2.c.x % 32u))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1554f), -498f))) != -346f;
    let var_2 = ~vec2<i32>(~0i, -42336i);
    let var_3 = vec3<bool>(all(vec2<bool>(select(false, var_1, !var_1), ~4294967295u > global1.c.x)), true, var_1);
    let var_4 = all(select(!vec2<bool>(var_3.x, true), vec2<bool>(u_input.a.x <= (-14970i | var_2.x), var_1), !var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u & global1.c.x, _wgslsmith_mod_u32(~27288u, 44442u), ~((vec4<u32>(4294967295u, 103475u, 6820u, var_0.b.c.x) ^ var_0.a) >> (vec4<u32>(global1.c.x, 4294967295u, var_0.a.x, 42786u) % vec4<u32>(32u))) << (func_2(any(select(vec2<bool>(var_3.x, false), var_3.zy, vec2<bool>(var_3.x, false)))) % vec4<u32>(32u)), ~global1.c, -48306i);
}

