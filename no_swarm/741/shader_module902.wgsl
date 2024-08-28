struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true));

var<private> global1: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(904f, 900f, 2195f, -1578f), vec4<f32>(946f, -1000f, 1587f, 1768f), vec4<f32>(1035f, -299f, 265f, 679f), vec4<f32>(1000f, -1000f, 621f, -1653f), vec4<f32>(458f, 286f, -556f, 1000f), vec4<f32>(1199f, -594f, -155f, -438f));

var<private> global2: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-33791i, 1i, -19240i), vec3<i32>(2147483647i, 51518i, 19882i), vec3<i32>(-24678i, 2235i, -1i), vec3<i32>(-34063i, 56411i, 15979i), vec3<i32>(-40879i, i32(-2147483648), 0i), vec3<i32>(58271i, 2147483647i, -1i), vec3<i32>(22410i, 38458i, 5950i), vec3<i32>(78171i, -1i, 48560i), vec3<i32>(i32(-2147483648), 0i, -1i), vec3<i32>(0i, 4355i, 2147483647i), vec3<i32>(i32(-2147483648), 44997i, 25514i), vec3<i32>(2704i, 55809i, 0i), vec3<i32>(-22414i, 18766i, i32(-2147483648)), vec3<i32>(7444i, 45713i, 13385i), vec3<i32>(0i, -32642i, 6056i), vec3<i32>(-23051i, 2689i, -1i), vec3<i32>(0i, -1i, i32(-2147483648)), vec3<i32>(1i, 38528i, 39214i), vec3<i32>(i32(-2147483648), 32149i, 1i), vec3<i32>(19874i, 1i, 24516i), vec3<i32>(5926i, 1i, 26350i), vec3<i32>(2147483647i, -31382i, -1i), vec3<i32>(-21535i, -21200i, -4025i), vec3<i32>(-91400i, -10008i, i32(-2147483648)), vec3<i32>(47422i, i32(-2147483648), -3341i), vec3<i32>(1028i, -1i, -34613i), vec3<i32>(9459i, 34150i, 23740i), vec3<i32>(-1i, 1i, 1i), vec3<i32>(14247i, i32(-2147483648), 2147483647i), vec3<i32>(0i, 0i, 26913i), vec3<i32>(-6112i, 33593i, -1i), vec3<i32>(i32(-2147483648), 33540i, 0i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> u32 {
    var var_0 = vec2<u32>(~u_input.d, ~0u);
    var var_1 = Struct_1(vec2<u32>(_wgslsmith_add_u32(arg_0.b.x & _wgslsmith_clamp_u32(1u, var_0.x, var_0.x), ~u_input.a.x >> (~arg_0.a.x % 32u)), max(_wgslsmith_dot_vec4_u32(max(vec4<u32>(24785u, 63261u, 1u, var_0.x), vec4<u32>(u_input.c.x, var_0.x, 1u, var_0.x)), ~vec4<u32>(u_input.a.x, arg_0.a.x, var_0.x, 0u)), u_input.c.x)), firstLeadingBit(arg_0.b), -vec4<i32>(~(-u_input.b), -2147483647i, ~(arg_0.c.x | 35348i), u_input.b), _wgslsmith_f_op_vec3_f32(ceil(arg_0.d)), 4294967295u);
    let var_2 = _wgslsmith_div_u32(u_input.c.x ^ ~(~4294967295u), ~(~(u_input.c.x >> (var_0.x % 32u)))) & 4294967295u;
    global0 = array<vec4<bool>, 23>();
    let var_3 = ~_wgslsmith_div_vec4_u32(min(firstTrailingBit(~vec4<u32>(4294967295u, u_input.c.x, arg_0.a.x, 4294967295u)), ~vec4<u32>(0u, var_1.e, 33562u, var_2) ^ vec4<u32>(u_input.c.x, 72096u, 93387u, var_0.x)), vec4<u32>(_wgslsmith_div_u32(~var_2, arg_0.b.x), var_2, var_2, ~abs(0u)));
    return max(21039u, 0u);
}

fn func_2(arg_0: Struct_2) -> Struct_4 {
    global0 = array<vec4<bool>, 23>();
    global1 = array<vec4<f32>, 6>();
    let var_0 = arg_0.c;
    var var_1 = Struct_3(vec4<bool>(all(select(!arg_0.b.zxx, arg_0.b.yyy, vec3<bool>(false, true, true))), arg_0.b.x, any(global0[_wgslsmith_index_u32(arg_0.a.x, 23u)]), true));
    let var_2 = Struct_4(-(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x)), vec3<u32>(arg_0.a.x, 4001u, 47011u) << (vec3<u32>(1u, 12040u, 42223u) % vec3<u32>(32u))), 32u)] << ((firstTrailingBit(vec3<u32>(arg_0.a.x, arg_0.a.x, 0u)) | countOneBits(vec3<u32>(arg_0.a.x, 1u, arg_0.a.x))) % vec3<u32>(32u))), ~firstLeadingBit(1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(185f)) + _wgslsmith_f_op_f32(-190f - 560f)))), Struct_1(~arg_0.a, _wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.d, u_input.a.x), arg_0.a), -select(var_0 >> (vec4<u32>(12610u, u_input.c.x, 0u, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(0i, -1i, u_input.b, var_0.x), any(vec2<bool>(true, true))), vec3<f32>(_wgslsmith_f_op_f32(-504f - _wgslsmith_div_f32(1480f, -1039f)), _wgslsmith_div_f32(-169f, 345f), -953f), func_3(Struct_1(arg_0.a, u_input.a, vec4<i32>(-5427i, u_input.b, arg_0.c.x, var_0.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1000f, -2306f, -1000f))), u_input.c.x), ~38943i, var_1.a.x && true)));
    return var_2;
}

fn func_1() -> u32 {
    let var_0 = func_2(Struct_2(vec2<u32>(~_wgslsmith_mod_u32(0u, u_input.a.x), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 73862u, 0u), vec3<u32>(u_input.d, 0u, u_input.a.x)), 1u)), global0[_wgslsmith_index_u32(u_input.c.x << (2399u % 32u), 23u)], firstLeadingBit(-firstLeadingBit(vec4<i32>(u_input.b, u_input.b, -2147483647i, -1347i)))));
    global1 = array<vec4<f32>, 6>();
    var var_1 = var_0;
    global1 = array<vec4<f32>, 6>();
    global2 = array<vec3<i32>, 32>();
    return var_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<f32>, 6>();
    let var_0 = func_1();
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(1710f)))), _wgslsmith_f_op_f32(f32(-1f) * -344f))), 717f));
    var var_2 = ~(-_wgslsmith_dot_vec4_i32(vec4<i32>(33018i, 2147483647i, 2147483647i, firstLeadingBit(-27412i)), select(vec4<i32>(u_input.b, 14263i, 2147483647i, 2147483647i) >> (vec4<u32>(u_input.a.x, 29742u, var_0, u_input.d) % vec4<u32>(32u)), -vec4<i32>(u_input.b, 1i, -18204i, -25952i), vec4<bool>(true, true, true, true))));
    var var_3 = vec2<u32>(64801u, 13378u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(~(~vec4<u32>(4294967295u, u_input.d, var_3.x, var_0)), vec4<u32>(0u, var_0 | var_3.x, 4294967295u, var_0)) << (~countOneBits(vec4<u32>(4294967295u, 1u, 58522u, u_input.d)) % vec4<u32>(32u)));
}

