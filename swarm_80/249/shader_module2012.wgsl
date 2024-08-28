struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: Struct_3,
    d: vec3<u32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 30> = array<vec3<u32>, 30>(vec3<u32>(353u, 0u, 25892u), vec3<u32>(103652u, 25963u, 6526u), vec3<u32>(4294967295u, 52126u, 157083u), vec3<u32>(4294967295u, 25827u, 0u), vec3<u32>(5782u, 32205u, 11230u), vec3<u32>(97083u, 54377u, 4294967295u), vec3<u32>(18121u, 4294967295u, 118226u), vec3<u32>(4294967295u, 68918u, 20210u), vec3<u32>(1u, 4294967295u, 26688u), vec3<u32>(16475u, 1u, 4294967295u), vec3<u32>(37426u, 82888u, 38311u), vec3<u32>(14093u, 47606u, 0u), vec3<u32>(38763u, 52594u, 1u), vec3<u32>(1581u, 1u, 1u), vec3<u32>(0u, 28242u, 33803u), vec3<u32>(24655u, 1u, 4294967295u), vec3<u32>(1u, 4294967295u, 122380u), vec3<u32>(4294967295u, 41637u, 0u), vec3<u32>(4294967295u, 23221u, 15615u), vec3<u32>(111689u, 0u, 45122u), vec3<u32>(14713u, 4294967295u, 4810u), vec3<u32>(1u, 0u, 19178u), vec3<u32>(8226u, 30071u, 1u), vec3<u32>(1u, 1609u, 4294967295u), vec3<u32>(9073u, 1u, 0u), vec3<u32>(4294967295u, 32039u, 6303u), vec3<u32>(4294967295u, 64899u, 4294967295u), vec3<u32>(1u, 60907u, 4294967295u), vec3<u32>(22203u, 30470u, 39024u), vec3<u32>(23937u, 4294967295u, 4294967295u));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> vec3<i32> {
    let var_0 = ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(select(0u, ~26712u, false), u_input.a), countOneBits(max(37734u, u_input.a)), firstTrailingBit(4294967295u));
    global0 = array<vec3<u32>, 30>();
    global0 = array<vec3<u32>, 30>();
    global0 = array<vec3<u32>, 30>();
    return vec3<i32>(~arg_0.b.x, ~arg_0.b.x, arg_0.b.x);
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_1(select(vec3<bool>(true, true, !(27387u > u_input.a)), !vec3<bool>(any(vec3<bool>(false, true, true)), false, any(vec3<bool>(false, false, true))), !vec3<bool>(any(vec3<bool>(false, true, true)), true, true)), -firstTrailingBit(_wgslsmith_add_vec2_i32(vec2<i32>(0i, 8812i), -vec2<i32>(-1i, -1i))));
    var var_1 = var_0;
    let var_2 = _wgslsmith_div_vec3_i32(func_3(var_0, Struct_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1267f, 173f)))), vec3<i32>(countOneBits(firstLeadingBit(var_1.b.x)), abs(_wgslsmith_dot_vec2_i32(~var_0.b, -var_1.b)), _wgslsmith_clamp_i32(-4955i, -(2147483647i >> (u_input.a % 32u)), _wgslsmith_clamp_i32(-38139i, 1i, i32(-1i) * -1i))));
    let var_3 = _wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(abs(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 1u, 4294967295u), vec4<u32>(2206u, 4294967295u, 4294967295u, 4294967295u))), ~countOneBits(vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(~71411u, 21496u, _wgslsmith_mult_u32(17708u, u_input.a), ~10046u) % vec4<u32>(32u)), vec4<u32>(0u, u_input.a << (u_input.a % 32u), _wgslsmith_mult_u32(u_input.a, _wgslsmith_add_u32(u_input.a, 25440u)), 0u)), vec4<u32>(~firstTrailingBit(u_input.a), countOneBits(9427u), ~u_input.a << (u_input.a % 32u), 40016u));
    var var_4 = Struct_2(!vec4<bool>(true, true, var_0.a.x, true), var_0, ~vec3<i32>(~var_2.x, i32(-1i) * -17131i, 1i), 0u);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(-164f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_f_op_f32(sign(472f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -311f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-230f))))), 190f));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: bool) -> vec2<bool> {
    global0 = array<vec3<u32>, 30>();
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(func_2())));
    let var_1 = arg_1.b.b.x;
    var var_2 = var_0;
    var var_3 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(12016i, abs(arg_1.c.x)) & _wgslsmith_clamp_i32(1i, reverseBits(-2147483647i), select(var_1, 48471i, true)), arg_1.b.b.x, _wgslsmith_add_i32(_wgslsmith_div_i32(_wgslsmith_sub_i32(var_1, arg_1.b.b.x), _wgslsmith_clamp_i32(-56174i, -2147483647i, 14249i)), countOneBits(13732i)), -1i), vec4<i32>(abs(var_1), (i32(-1i) * -5374i) >> (~_wgslsmith_mult_u32(4294967295u, u_input.a) % 32u), var_1, arg_1.b.b.x));
    return vec2<bool>(all(vec4<bool>(false, !all(arg_1.a.xw), arg_1.a.x, true)), arg_2);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(223f))));
    let var_1 = Struct_1(vec3<bool>(select(all(vec4<bool>(true, true, true, true)), select(true, true, all(vec4<bool>(true, true, false, true))), false), true, !(select(true, true, true) | all(vec2<bool>(true, false)))), ~(vec2<i32>(1i, -1i) >> (vec2<u32>(~u_input.a, u_input.a) % vec2<u32>(32u))));
    var var_2 = select(select(!var_1.a.yz, select(!select(vec2<bool>(false, true), var_1.a.xy, var_1.a.x), select(func_1(vec2<u32>(u_input.a, u_input.a), Struct_2(vec4<bool>(var_1.a.x, true, var_1.a.x, false), var_1, vec3<i32>(-1i, -2147483647i, -2147483647i), u_input.a), var_1.a.x), vec2<bool>(var_1.a.x, false), var_1.a.x), select(vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(false, true), var_1.b.x > var_1.b.x)), var_1.a.x), select(select(vec2<bool>(var_1.a.x, func_1(vec2<u32>(u_input.a, 31825u), Struct_2(vec4<bool>(var_1.a.x, false, var_1.a.x, var_1.a.x), var_1, vec3<i32>(0i, var_1.b.x, var_1.b.x), 1u), var_1.a.x).x), select(var_1.a.xz, !var_1.a.xx, !vec2<bool>(var_1.a.x, var_1.a.x)), !(!var_1.a.x)), !vec2<bool>(true, var_1.b.x >= -74962i), false), !vec2<bool>(func_1(~vec2<u32>(u_input.a, 16195u), Struct_2(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), var_1, vec3<i32>(13324i, var_1.b.x, -23583i), 48347u), var_1.a.x).x, any(var_1.a)));
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -909f)))));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(max(var_3.b.x, 3071i) >> (~760u % 32u), ~(i32(-1i) * -53321i), _wgslsmith_add_i32(var_1.b.x & 7860i, -2147483647i)), max(~vec4<i32>(-1i, -30172i, var_3.b.x, 1i) >> (select(vec4<u32>(0u, u_input.a, 0u, 0u), vec4<u32>(47608u, 1u, 0u, 95937u), true) % vec4<u32>(32u)), vec4<i32>(var_3.b.x, var_3.b.x, 0i, min(var_1.b.x, var_1.b.x) | var_3.b.x)));
}

