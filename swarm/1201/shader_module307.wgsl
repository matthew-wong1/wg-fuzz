struct Struct_1 {
    a: vec4<bool>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 23> = array<Struct_1, 23>(Struct_1(vec4<bool>(false, true, false, false), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, false, true, false), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(false, true, false, true), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(false, false, false, true), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, true, false, true), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(false, true, true, true), vec3<bool>(false, true, true)), Struct_1(vec4<bool>(true, false, false, true), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, false, false)), Struct_1(vec4<bool>(false, false, false, false), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, true, false)), Struct_1(vec4<bool>(false, false, true, false), vec3<bool>(true, true, true)), Struct_1(vec4<bool>(true, false, false, false), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(false, false, true, true), vec3<bool>(true, true, false)), Struct_1(vec4<bool>(true, true, false, false), vec3<bool>(false, false, true)), Struct_1(vec4<bool>(true, false, true, true), vec3<bool>(false, false, false)), Struct_1(vec4<bool>(true, true, true, true), vec3<bool>(true, false, true)));

var<private> global2: array<vec4<f32>, 22>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec2<f32> {
    var var_0 = 1u;
    let var_1 = select(select(select(vec3<u32>(~u_input.c, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, u_input.a, 1u), vec4<u32>(u_input.a, 4294967295u, 0u, 27104u)), _wgslsmith_div_u32(15204u, u_input.a)), vec3<u32>(firstLeadingBit(u_input.a), 7206u ^ u_input.a, _wgslsmith_clamp_u32(u_input.a, 37322u, u_input.c)), any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)))), vec3<u32>(_wgslsmith_add_u32(u_input.c, 4294967295u) << (1u % 32u), abs(~u_input.c), 4294967295u), select(vec3<bool>(true, true, true), !select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, false))), vec3<u32>(select(u_input.c, ~u_input.c, false), ~_wgslsmith_mult_u32(~1u, max(u_input.a, 34302u)), u_input.a), vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), false)), true, true));
    global0 = -(vec3<i32>(-1488i, _wgslsmith_div_i32(-global0.x, ~global0.x), _wgslsmith_add_i32(55095i, -2147483647i)) << (vec3<u32>(_wgslsmith_mult_u32(~5874u, firstTrailingBit(101748u)), _wgslsmith_mult_u32(var_1.x, 76407u), ~abs(var_1.x)) % vec3<u32>(32u)));
    var var_2 = Struct_1(!select(vec4<bool>(any(vec4<bool>(true, true, true, false)), true, true, select(true, false, false)), vec4<bool>(true, true, true, true), true && any(vec2<bool>(true, true))), vec3<bool>(false, true, all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, false)))));
    let var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(u_input.b, abs(u_input.b), _wgslsmith_mod_i32(u_input.d, 11784i), u_input.d)), ~(vec4<i32>(global0.x, global0.x, u_input.d, global0.x) ^ ~vec4<i32>(u_input.b, global0.x, -1i, 12552i))), abs(abs(-u_input.b << (86735u % 32u))));
    return _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(-810f, -1331f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(377f, -249f))), vec2<f32>(1604f, _wgslsmith_f_op_f32(f32(-1f) * -381f)), vec2<bool>(var_2.a.x, all(vec3<bool>(false, true, false)))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(344f, -902f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2301f)) - -1328f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, 823f)))), vec2<f32>(_wgslsmith_f_op_f32(trunc(-103f)), _wgslsmith_f_op_f32(-1593f - 196f)), all(vec2<bool>(true, false))))), true));
}

fn func_2(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = vec2<u32>(arg_0.x, ~u_input.c);
    let var_1 = global1[_wgslsmith_index_u32(arg_0.x, 23u)];
    global2 = array<vec4<f32>, 22>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1680f, -454f))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1312f, 728f), vec2<f32>(1578f, -1243f), var_1.b.x))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-129f, 1715f)))))) - vec2<f32>(-256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -112f), -551f, true)))));
    let var_3 = global1[_wgslsmith_index_u32(4294967295u, 23u)];
    return Struct_1(vec4<bool>(any(select(select(vec4<bool>(var_3.a.x, false, true, false), var_1.a, var_3.b.x), !var_3.a, var_1.b.x | true)), false, all(!select(vec2<bool>(true, true), vec2<bool>(true, true), var_3.a.xz)), false), var_3.b);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    return func_2(max(~abs(vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.c) | vec4<u32>(4294967295u, u_input.a, u_input.c, u_input.a)), vec4<u32>(min(u_input.a, 0u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(u_input.c, u_input.c, u_input.a, u_input.a), vec4<u32>(u_input.c, 4294967295u, u_input.c, 1u), arg_1.a.x), countOneBits(vec4<u32>(21495u, u_input.c, u_input.a, u_input.c))), countOneBits(~u_input.a), min(u_input.c, 12291u) ^ (u_input.c << (u_input.c % 32u)))));
}

fn func_1() -> i32 {
    var var_0 = func_4(abs(vec4<i32>(_wgslsmith_mod_i32(firstLeadingBit(-2147483647i), u_input.d), -36024i, global0.x, global0.x)), func_2(vec4<u32>(~abs(17020u), _wgslsmith_mult_u32(select(86085u, u_input.a, false), 211u), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.c, 55551u), firstLeadingBit(vec2<u32>(u_input.a, u_input.a))), ~35038u << ((0u & u_input.c) % 32u))));
    global1 = array<Struct_1, 23>();
    var var_1 = func_2(select(~_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(1u, 7744u, 0u, 7421u)), reverseBits(vec4<u32>(22141u, 0u, 0u, 0u))), vec4<u32>(u_input.c, u_input.a, u_input.a, firstLeadingBit(8767u)) >> (min(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, 23454u, u_input.a), vec4<u32>(27166u, 83191u, u_input.a, u_input.a)), select(vec4<u32>(u_input.c, u_input.c, 1u, 1u), vec4<u32>(u_input.c, u_input.c, 45924u, 36907u), vec4<bool>(false, var_0.a.x, false, var_0.a.x))) % vec4<u32>(32u)), var_0.a));
    global1 = array<Struct_1, 23>();
    global1 = array<Struct_1, 23>();
    return global0.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_vec3_i32(reverseBits(vec3<i32>(func_1(), ~abs(global0.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(global0.x, -2147483647i), ~u_input.b))), vec3<i32>(global0.x, ~_wgslsmith_mod_i32(-16958i, -1000i), reverseBits(-31741i)));
    var var_0 = func_2(~vec4<u32>(min(u_input.a ^ 0u, 4294967295u), ~4294967295u >> (~u_input.a % 32u), u_input.c, min(u_input.a, u_input.a)));
    let var_1 = global1[_wgslsmith_index_u32(~u_input.a ^ 4294967295u, 23u)];
    var var_2 = ~(~(~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 57713u), vec2<u32>(u_input.a, u_input.c), vec2<u32>(1u, 101763u)))));
    var_0 = Struct_1(vec4<bool>(false, var_0.b.x, true, var_1.a.x), !vec3<bool>(true != var_0.a.x, !var_1.a.x || true, global0.x > u_input.b));
    var var_3 = -(~vec3<i32>(2147483647i, countOneBits(16471i) >> (1u % 32u), -19227i));
    global2 = array<vec4<f32>, 22>();
    var_0 = Struct_1(func_4(~(-_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, var_3.x, global0.x, 30562i), vec4<i32>(var_3.x, 41958i, 2147483647i, u_input.b))), Struct_1(!(!vec4<bool>(false, false, var_0.a.x, var_1.b.x)), !vec3<bool>(true, var_0.a.x, var_1.b.x))).a, var_0.a.xxw);
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<i32>(-firstLeadingBit(4421i), 236i, _wgslsmith_mod_i32(u_input.d, ~var_3.x)), vec3<i32>(var_3.x, ~min(var_3.x, global0.x), abs(~u_input.b))));
}

