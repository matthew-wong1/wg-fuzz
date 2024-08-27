struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<bool, 26>;

var<private> global2: array<vec2<u32>, 13> = array<vec2<u32>, 13>(vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 20978u), vec2<u32>(1u, 10653u), vec2<u32>(42517u, 75066u), vec2<u32>(0u, 5429u), vec2<u32>(4658u, 5933u), vec2<u32>(24999u, 4294967295u), vec2<u32>(1u, 1u), vec2<u32>(65119u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(32445u, 0u), vec2<u32>(1u, 4294967295u), vec2<u32>(106555u, 0u));

var<private> global3: array<Struct_2, 9>;

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    let var_0 = ~u_input.a;
    global2 = array<vec2<u32>, 13>();
    var var_1 = Struct_2(arg_0, Struct_1(min(countOneBits(vec4<i32>(-11264i, u_input.a.x, 1677i, var_0.x)) ^ arg_0.a, _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.x, 2147483647i, u_input.a.x, var_0.x), firstLeadingBit(vec4<i32>(23784i, arg_0.a.x, arg_0.a.x, -1i)), vec4<i32>(u_input.a.x, u_input.c, u_input.a.x, 1i))), !(!arg_0.b)), vec2<f32>(_wgslsmith_f_op_f32(248f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -503f), _wgslsmith_f_op_f32(835f + -1930f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(366f, _wgslsmith_f_op_f32(452f * 2205f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1696f - 171f)), max(7032i, -42883i) <= _wgslsmith_sub_i32(var_0.x, var_0.x)))));
    var var_2 = vec2<u32>(1u, 23712u);
    global0 = 651f;
    return countOneBits(var_2.x);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    let var_0 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~func_3(arg_0, vec4<u32>(u_input.d, 19092u, 4294967295u, 1u)), 6802u, 0u), _wgslsmith_add_vec3_u32(~vec3<u32>(104u, u_input.e, 26428u), ~vec3<u32>(u_input.d, u_input.d, u_input.d) & _wgslsmith_mod_vec3_u32(vec3<u32>(11785u, 96249u, u_input.e), vec3<u32>(u_input.e, 46115u, u_input.e)))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(u_input.e, u_input.e), firstTrailingBit(u_input.d), ~u_input.e) << (select(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, 3796u, u_input.e), vec3<u32>(29220u, u_input.e, 4294967295u)), ~vec3<u32>(1u, 4294967295u, u_input.e), false) % vec3<u32>(32u)), ~vec3<u32>(0u, ~4090u, max(u_input.e, 32581u))));
    var var_1 = arg_1.c;
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1322f, 1879f)), _wgslsmith_f_op_f32(var_1.x + 144f))))), 150f));
    let var_2 = ~min(var_0, ~var_0);
    global2 = array<vec2<u32>, 13>();
    return vec4<i32>(arg_0.a.x, min(_wgslsmith_add_i32(_wgslsmith_clamp_i32(min(arg_0.a.x, 9757i), firstLeadingBit(-58097i), _wgslsmith_div_i32(2361i, u_input.a.x)), -1i), _wgslsmith_clamp_i32(92273i, select(26280i << (u_input.e % 32u), 1i, arg_1.b.b), u_input.c)), ~arg_1.b.a.x, -35670i);
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    let var_0 = Struct_1(vec4<i32>(9932i, _wgslsmith_dot_vec4_i32(func_2(Struct_1(vec4<i32>(u_input.c, -9638i, -1i, 44288i), false), global3[_wgslsmith_index_u32(arg_0.x, 9u)]), reverseBits(vec4<i32>(0i, u_input.a.x, 24722i, u_input.b))) ^ _wgslsmith_mult_i32(~(-5375i), ~1890i), _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-774i, u_input.c, -2147483647i, u_input.c)), vec4<i32>(18691i, u_input.c, u_input.a.x, 59305i) >> (arg_0 % vec4<u32>(32u))), u_input.c), 0i), false);
    global3 = array<Struct_2, 9>();
    global1 = array<bool, 26>();
    global0 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(1000f)))), -468f), -631f);
    var var_1 = var_0.a.x;
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x + -452f), 345f)));
    let var_0 = vec3<u32>(u_input.d, 59855u, 4294967295u);
    let var_1 = vec4<i32>(arg_0.a.a.x | -u_input.c, ~(-arg_0.b.a.x), ~(i32(-1i) * -arg_1.a.a.x) >> (firstTrailingBit(~4294967295u) % 32u), -61182i);
    let var_2 = arg_1;
    var var_3 = ~global2[_wgslsmith_index_u32(max(~1u, ~var_0.x), 13u)];
    return var_2.b;
}

fn func_5(arg_0: u32, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_clamp_u32(firstLeadingBit(~(1u >> (1u % 32u))), 4294967295u, ~0u);
    global3 = array<Struct_2, 9>();
    let var_1 = -173f;
    let var_2 = _wgslsmith_f_op_f32(step(-1974f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-402f, var_1)))));
    return Struct_1(arg_3.a, any(!vec4<bool>(arg_1.b, any(vec3<bool>(true, true, false)), true, func_1(vec4<u32>(0u, var_0, u_input.d, 16667u)).b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(u_input.d, Struct_1(vec4<i32>(-1i, ~u_input.c, u_input.a.x, min(u_input.b & 41576i, _wgslsmith_clamp_i32(u_input.c, u_input.b, u_input.b))), _wgslsmith_div_i32(-2506i & u_input.a.x, min(-54289i, 19471i)) < 1704i), -_wgslsmith_add_i32(select(u_input.c, _wgslsmith_clamp_i32(26112i, u_input.a.x, -8565i), u_input.e == u_input.e), _wgslsmith_sub_i32(27230i, u_input.c)), func_4(Struct_2(func_1(abs(vec4<u32>(1u, 4294967295u, u_input.e, 20797u))), func_1(_wgslsmith_mult_vec4_u32(vec4<u32>(113751u, u_input.e, 4294967295u, 22748u), vec4<u32>(36839u, u_input.d, u_input.e, u_input.d))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1224f, -447f)))), global3[_wgslsmith_index_u32(4294967295u, 9u)]));
    global2 = array<vec2<u32>, 13>();
    let var_1 = Struct_1(max(~vec4<i32>(var_0.a.x, -16016i, var_0.a.x >> (18160u % 32u), 5455i), ~(countOneBits(var_0.a) >> (~vec4<u32>(3897u, 19963u, 1u, 21720u) % vec4<u32>(32u)))), all(select(vec4<bool>(func_1(vec4<u32>(u_input.e, 53207u, 58699u, u_input.d)).b, true, true, global1[_wgslsmith_index_u32(~u_input.d, 26u)]), !(!vec4<bool>(var_0.b, global1[_wgslsmith_index_u32(11712u, 26u)], false, var_0.b)), true)));
    let var_2 = vec3<i32>(2761i, ~(~func_4(Struct_2(Struct_1(vec4<i32>(u_input.c, u_input.c, var_0.a.x, -40187i), global1[_wgslsmith_index_u32(u_input.d, 26u)]), var_1, vec2<f32>(307f, 1231f)), global3[_wgslsmith_index_u32(abs(4294967295u), 9u)]).a.x), u_input.c | 60741i);
    let x = u_input.a;
    s_output = StorageBuffer(14296u & ~_wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.e, u_input.d, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.d, u_input.d)), vec4<u32>(u_input.e, 0u, u_input.e, u_input.d) | vec4<u32>(u_input.d, 0u, 41009u, 71055u)), reverseBits(_wgslsmith_dot_vec2_u32(global2[_wgslsmith_index_u32(u_input.e, 13u)], ~_wgslsmith_sub_vec2_u32(global2[_wgslsmith_index_u32(0u, 13u)], vec2<u32>(1u, u_input.e)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-798f * 343f), -400f, _wgslsmith_f_op_f32(select(-906f, 159f, var_0.b)), 1875f))));
}

