struct Struct_1 {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

var<private> global1: array<vec4<u32>, 25> = array<vec4<u32>, 25>(vec4<u32>(1497u, 53190u, 4294967295u, 1u), vec4<u32>(77227u, 26169u, 4294967295u, 0u), vec4<u32>(0u, 52468u, 0u, 29008u), vec4<u32>(0u, 4294967295u, 16175u, 1u), vec4<u32>(122875u, 26118u, 42107u, 43616u), vec4<u32>(0u, 48137u, 141469u, 0u), vec4<u32>(4294967295u, 13342u, 1u, 0u), vec4<u32>(4294967295u, 1u, 28924u, 67715u), vec4<u32>(54101u, 4294967295u, 1u, 0u), vec4<u32>(6247u, 4294967295u, 34958u, 1u), vec4<u32>(7693u, 4294967295u, 60217u, 0u), vec4<u32>(2678u, 0u, 4294967295u, 1u), vec4<u32>(0u, 0u, 1u, 1060u), vec4<u32>(64001u, 42545u, 2632u, 0u), vec4<u32>(3885u, 4294967295u, 4294967295u, 67326u), vec4<u32>(69244u, 50433u, 29199u, 0u), vec4<u32>(4294967295u, 11579u, 23971u, 84594u), vec4<u32>(0u, 40408u, 53651u, 4294967295u), vec4<u32>(0u, 34031u, 285u, 7703u), vec4<u32>(112058u, 47897u, 1u, 4294967295u), vec4<u32>(39803u, 4294967295u, 1u, 8095u), vec4<u32>(46748u, 70294u, 36145u, 4294967295u), vec4<u32>(20115u, 0u, 4294967295u, 79824u), vec4<u32>(4294967295u, 1u, 66576u, 49341u), vec4<u32>(0u, 1u, 58u, 44830u));

var<private> global2: vec2<bool> = vec2<bool>(false, false);

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> vec2<i32> {
    var var_0 = u_input.b;
    let var_1 = vec3<bool>(false, (select(u_input.c ^ u_input.c, ~u_input.c, true) & arg_0.a.c.x) <= -26904i, !all(select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, true)))));
    global1 = array<vec4<u32>, 25>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-927f, 1344f))) + vec2<f32>(378f, 2111f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1062f, 1000f)) + vec2<f32>(-1000f, -584f)))));
    let var_3 = var_2.x;
    return ~(~(~(-_wgslsmith_mult_vec2_i32(arg_0.a.c.wz, vec2<i32>(u_input.a, -26917i)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_clamp_vec2_i32(-vec2<i32>(-1i, i32(-1i) * -2147483647i), -(~vec2<i32>(-3818i, -1i)), ~vec2<i32>(u_input.c, -4457i)) ^ ~func_3(Struct_2(Struct_1(vec3<u32>(u_input.d, 1u, 0u), global1[_wgslsmith_index_u32(4022u, 25u)], vec4<i32>(u_input.c, u_input.a, u_input.c, 1i), u_input.d), ~global1[_wgslsmith_index_u32(4294967295u, 25u)]));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1801f, _wgslsmith_f_op_f32(floor(114f)))), 1f) + _wgslsmith_f_op_f32(f32(-1f) * -325f));
    var_0 = -(~_wgslsmith_mult_vec2_i32(vec2<i32>(-18272i >> (0u % 32u), u_input.b), ~vec2<i32>(var_0.x, u_input.c)));
    global0 = countOneBits(vec2<u32>(~(1u << ((global0.x & u_input.d) % 32u)), 64660u));
    var var_2 = u_input.d;
    return Struct_1(vec3<u32>(global0.x, min(1u, ~max(4294967295u, 23481u)), global0.x), ~(~(~_wgslsmith_mod_vec4_u32(vec4<u32>(38901u, 76745u, global0.x, 4294967295u), global1[_wgslsmith_index_u32(u_input.d, 25u)]))), abs(abs(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.a, 1i, u_input.b), vec4<i32>(var_0.x, u_input.a, -41192i, u_input.c)))), 2363u);
}

fn func_1(arg_0: Struct_4, arg_1: bool) -> StorageBuffer {
    let var_0 = func_2();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(483f * 839f), arg_0.a.x);
    var var_2 = ~(~var_0.c.yx) ^ firstTrailingBit(var_0.c.zw);
    global2 = vec2<bool>(!all(!vec3<bool>(false, global2.x, true)), !(_wgslsmith_div_f32(176f, _wgslsmith_f_op_f32(-arg_0.a.x)) >= _wgslsmith_f_op_f32(1158f + _wgslsmith_f_op_f32(arg_0.a.x - var_1))));
    global0 = ~(~vec2<u32>(48434u, _wgslsmith_add_u32(global0.x, 0u)));
    return StorageBuffer(~select(vec4<u32>(4294967295u, _wgslsmith_dot_vec2_u32(var_0.a.xx, vec2<u32>(u_input.d, 9931u)), 19053u, ~1u), vec4<u32>(~72388u, 0u, _wgslsmith_sub_u32(u_input.d, 0u), var_0.d << (u_input.d % 32u)), all(vec2<bool>(global2.x, global2.x))), var_0.c.yz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 15513i;
    let var_1 = ~vec2<u32>(_wgslsmith_clamp_u32(~52225u, global0.x, 8656u), 0u);
    let var_2 = -404f;
    var var_3 = ~(~vec3<u32>(reverseBits(global0.x), _wgslsmith_mod_u32(67038u, 1770u), 42435u));
    global0 = _wgslsmith_mod_vec2_u32(select(vec2<u32>(~min(12799u, 1u), _wgslsmith_sub_u32(abs(u_input.d), ~global0.x)), ~(vec2<u32>(0u, var_1.x) << (abs(vec2<u32>(69623u, 8298u)) % vec2<u32>(32u))), select(vec2<bool>(all(vec4<bool>(false, global2.x, true, global2.x)), var_1.x != 69729u), vec2<bool>(false, true), !vec2<bool>(true, global2.x))), vec2<u32>(~(~_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(93766u, 25u)], vec4<u32>(global0.x, global0.x, 10470u, 1u))), 27515u));
    let x = u_input.a;
    s_output = func_1(Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_2, -868f, var_2, var_2))))), global2.x);
}

