struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 9>;

var<private> global1: u32 = 0u;

var<private> global2: u32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: f32) -> f32 {
    var var_0 = ~(~(~(1u | ~arg_0)));
    var var_1 = Struct_1(min(_wgslsmith_div_u32(arg_0, _wgslsmith_mod_u32(~47410u, ~13052u)), arg_0), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, ~u_input.a.x), u_input.a), abs(_wgslsmith_add_i32(u_input.a.x, 2266i)), ~firstTrailingBit(firstLeadingBit(_wgslsmith_clamp_vec3_u32(vec3<u32>(6084u, 35467u, arg_0), vec3<u32>(arg_0, 4294967295u, 25519u), vec3<u32>(1u, 5178u, arg_0)))));
    var var_2 = arg_1;
    var var_3 = _wgslsmith_mult_i32(var_1.c, select(u_input.a.x ^ u_input.a.x, -30279i, false));
    var var_4 = Struct_1(~4294967295u, vec2<i32>(6878i, 1i), _wgslsmith_clamp_i32(u_input.b, _wgslsmith_div_i32(abs(-2147483647i) ^ _wgslsmith_sub_i32(0i, var_1.b.x), -firstLeadingBit(u_input.a.x)), _wgslsmith_clamp_i32(2147483647i, _wgslsmith_div_i32(var_1.c, var_1.b.x), -2147483647i)), var_1.d);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1));
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(117f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(821f, 328f)) * -867f) + _wgslsmith_f_op_f32(func_3(max(4294967295u, 0u), _wgslsmith_f_op_f32(318f * 935f))))));
}

fn func_1() -> i32 {
    global0 = array<bool, 9>();
    let var_0 = _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(max(-421f, _wgslsmith_f_op_f32(901f - _wgslsmith_f_op_f32(110f * 246f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1340f - 1553f) + _wgslsmith_f_op_f32(func_2(u_input.a, Struct_1(25942u, u_input.a, 2147483647i, vec3<u32>(8367u, 19164u, 5968u)), u_input.b)))))));
    let var_1 = _wgslsmith_f_op_f32(sign(243f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(u_input.a, Struct_1(169u, u_input.a, u_input.a.x, vec3<u32>(9u, 4302u, 11721u)), ~2147483647i)))));
    let var_2 = Struct_1(1u, u_input.a, -_wgslsmith_sub_i32(reverseBits(u_input.b << (4294967295u % 32u)), -2147483647i), _wgslsmith_add_vec3_u32(vec3<u32>(select(4864u, _wgslsmith_add_u32(1u, 0u), global0[_wgslsmith_index_u32(~0u, 9u)]), ~abs(78809u), _wgslsmith_dot_vec2_u32(vec2<u32>(32146u, 0u), vec2<u32>(30887u, 0u))), ~(~(~vec3<u32>(18616u, 26183u, 98277u)))));
    global1 = _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(7121u, 90070u, var_2.a, var_2.d.x), vec4<u32>(var_2.a, 1822u, var_2.d.x, var_2.d.x)), ~vec4<u32>(4294967295u, 36695u, var_2.d.x, 4294967295u)), vec4<u32>(_wgslsmith_sub_u32(var_2.a, var_2.a), _wgslsmith_mod_u32(var_2.a, 2659u), var_2.a, select(var_2.d.x, 64243u, true)), ~reverseBits(vec4<u32>(var_2.a, var_2.a, var_2.a, 0u))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.a, var_2.a, var_2.d.x, 4294967295u) ^ vec4<u32>(var_2.d.x, var_2.d.x, var_2.d.x, 27506u), ~vec4<u32>(var_2.a, 24947u, var_2.a, var_2.a))), vec4<u32>(29604u, 6048u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_2.a, var_2.a, var_2.a), var_2.d), 88378u));
    return var_2.b.x;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<i32>, arg_3: i32) -> u32 {
    let var_0 = Struct_1(firstTrailingBit(~(~arg_1.x) | 0u), vec2<i32>(-75552i, 2147483647i), -2147483647i, abs(arg_1));
    let var_1 = Struct_1(firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_sub_u32(countOneBits(arg_1.x), select(arg_1.x, 117307u, true)), ~4294967295u)), vec2<i32>(-51518i, var_0.c), min(select(u_input.b, -arg_3, any(select(vec4<bool>(true, global0[_wgslsmith_index_u32(arg_1.x, 9u)], true, global0[_wgslsmith_index_u32(arg_1.x, 9u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(1u, 9u)], true, global0[_wgslsmith_index_u32(0u, 9u)]), global0[_wgslsmith_index_u32(arg_1.x, 9u)]))), _wgslsmith_clamp_i32(reverseBits(_wgslsmith_clamp_i32(arg_3, 2147483647i, arg_0.x)), _wgslsmith_add_i32(_wgslsmith_mod_i32(8922i, arg_2.x), arg_0.x & -2147483647i), -1i)), _wgslsmith_sub_vec3_u32(~(abs(var_0.d) << (max(var_0.d, arg_1) % vec3<u32>(32u))), arg_1));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1649f, 1159f, -1147f), vec3<f32>(181f, -245f, -793f))))))));
    let var_3 = select(vec2<bool>(true, false), vec2<bool>(false, true), !(!select(true, !global0[_wgslsmith_index_u32(30032u, 9u)], global0[_wgslsmith_index_u32(36238u, 9u)])));
    global1 = ~firstLeadingBit(8208u);
    return 24825u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(-545f)), _wgslsmith_f_op_f32(-685f * -1932f), all(select(vec3<bool>(global0[_wgslsmith_index_u32(70931u, 9u)], false, global0[_wgslsmith_index_u32(3139u, 9u)]), vec3<bool>(global0[_wgslsmith_index_u32(47146u, 9u)], true, false), vec3<bool>(false, true, true)))))));
    var_0 = 1607f;
    global1 = func_4(_wgslsmith_sub_vec3_i32(vec3<i32>(44067i & u_input.a.x, u_input.a.x, ~u_input.b), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -2147483647i), vec3<i32>(-27567i, u_input.b, u_input.b) ^ vec3<i32>(0i, u_input.a.x, -2147483647i))), vec3<u32>(16357u, max(_wgslsmith_mult_u32(40840u, 61324u), 0u >> (0u % 32u)), 0u), vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.a, ~vec2<i32>(u_input.a.x, u_input.b)), u_input.b, _wgslsmith_clamp_i32(select(-2147483647i, u_input.b, true), firstLeadingBit(1i), reverseBits(-2147483647i)), u_input.b), func_1() << (4294967295u % 32u)) ^ (~0u & _wgslsmith_mult_u32(1u & _wgslsmith_dot_vec3_u32(vec3<u32>(81584u, 0u, 36709u), vec3<u32>(0u, 56297u, 1u)), ~1u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(1u, ~1u, reverseBits(~(~0u)), ~26427u), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2295f - 2857f), -248f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(862f + 981f)))) * vec2<f32>(_wgslsmith_f_op_f32(max(-1000f, -749f)), _wgslsmith_div_f32(-421f, _wgslsmith_f_op_f32(func_3(0u, -771f))))));
}

