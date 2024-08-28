struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 12>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    var var_0 = ~u_input.a.x;
    var var_1 = u_input.a.x;
    let var_2 = Struct_1(~((vec3<i32>(-40762i, u_input.a.x, u_input.a.x) & vec3<i32>(1i, u_input.a.x, -38441i)) >> (vec3<u32>(93671u, arg_0.x, u_input.b) % vec3<u32>(32u))) << (~(firstTrailingBit(vec3<u32>(u_input.b, u_input.b, arg_0.x)) >> (vec3<u32>(arg_0.x, arg_0.x, 0u) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_add_u32(1u, select(firstTrailingBit(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 24286u, u_input.b, 14954u), vec4<u32>(arg_0.x, u_input.b, 0u, u_input.b)), any(vec2<bool>(true, true)))) << (firstLeadingBit(u_input.b) % 32u), 538f);
    var var_3 = var_2;
    var var_4 = vec2<i32>(~(-var_2.a.x), min(var_3.a.x, ~(-2147483647i)));
    return arg_0.zxz;
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    return global0[_wgslsmith_index_u32(0u << (_wgslsmith_dot_vec3_u32(~(~_wgslsmith_sub_vec3_u32(vec3<u32>(24156u, 53181u, 42572u), vec3<u32>(53150u, u_input.b, 87359u))), ~func_3(vec4<u32>(29367u, 115156u, u_input.b, 4294967295u)) | vec3<u32>(1u, 1u, 1u)) % 32u), 12u)];
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: i32) -> vec4<i32> {
    let var_0 = Struct_1(reverseBits(countOneBits(_wgslsmith_div_vec3_i32(-vec3<i32>(-2147483647i, -46754i, u_input.a.x), select(vec3<i32>(u_input.a.x, -65876i, -1i), vec3<i32>(u_input.a.x, 25441i, -1i), false)))), 4294967295u, arg_1);
    let var_1 = func_2(vec3<i32>(arg_2, u_input.a.x, 0i));
    global0 = array<Struct_1, 12>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + -243f)), _wgslsmith_f_op_f32(-var_1.c))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1 - var_1.c), func_2(vec3<i32>(-8979i, -1i, 1i)).c)))));
    global0 = array<Struct_1, 12>();
    return _wgslsmith_sub_vec4_i32(-_wgslsmith_clamp_vec4_i32(vec4<i32>(max(-8936i, u_input.a.x), 0i, 1767i, var_1.a.x), ~firstTrailingBit(vec4<i32>(-21974i, var_0.a.x, 2147483647i, -45356i)), reverseBits(-vec4<i32>(-7236i, 19290i, u_input.a.x, 24478i))), ~(~(-vec4<i32>(1i, -2147483647i, var_0.a.x, 63540i))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> vec2<bool> {
    let var_0 = abs(firstTrailingBit(countOneBits(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b, arg_3.b), vec2<u32>(29660u, u_input.b))))));
    global0 = array<Struct_1, 12>();
    var var_1 = ~u_input.b;
    var var_2 = true;
    var var_3 = _wgslsmith_clamp_vec4_i32(~vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 317i), ~_wgslsmith_mult_i32(u_input.a.x, arg_2.a.x), _wgslsmith_clamp_i32(arg_2.a.x, 2147483647i, arg_0.a.x), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(arg_2.a.x, -19052i), arg_3.a.xy), vec2<i32>(arg_3.a.x, 15012i))), -arg_1, ~reverseBits(arg_1));
    return vec2<bool>(false, true);
}

fn func_5(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = Struct_1(func_2(vec3<i32>(-2147483647i, -96451i, arg_1)).a ^ _wgslsmith_mult_vec3_i32(arg_2.a << (select(vec3<u32>(9356u, 31516u, u_input.b), vec3<u32>(1u, 4294967295u, 0u), arg_0.x) % vec3<u32>(32u)), firstLeadingBit(~vec3<i32>(-2147483647i, arg_1, 18136i))), arg_2.b >> (~1u % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - _wgslsmith_div_f32(arg_2.c, -1586f)))));
    var var_1 = !select(vec4<bool>(arg_0.x, true, true, _wgslsmith_div_f32(-706f, var_0.c) > _wgslsmith_f_op_f32(arg_2.c - 780f)), vec4<bool>(_wgslsmith_f_op_f32(select(-414f, 303f, true)) != -1000f, !arg_0.x, false, true), vec4<bool>(arg_0.x || arg_0.x, arg_0.x, 864f <= _wgslsmith_f_op_f32(var_0.c - var_0.c), arg_0.x));
    var var_2 = func_2(arg_2.a).b;
    global0 = array<Struct_1, 12>();
    let var_3 = _wgslsmith_add_i32(-var_0.a.x, _wgslsmith_div_i32(~23675i, 2147483647i));
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(select(vec2<bool>(false, false), func_4(Struct_1(~vec3<i32>(-60624i, u_input.a.x, 1i), ~43109u, -576f), func_1(_wgslsmith_f_op_f32(floor(-1158f)), _wgslsmith_f_op_f32(-294f + 173f), ~(-22846i)), global0[_wgslsmith_index_u32(1u, 12u)], Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(21174i, -43025i, -46531i), vec3<i32>(1i, 0i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -2147483647i)), _wgslsmith_dot_vec4_u32(vec4<u32>(25056u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, u_input.b, 0u, u_input.b)), 845f)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(true, false), true), !all(vec4<bool>(false, true, false, false)))), u_input.a.x, Struct_1(-(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.a.x, u_input.a.x), vec3<i32>(-11029i, 15409i, u_input.a.x)) | vec3<i32>(0i, u_input.a.x, 2147483647i)), 1476u, 1506f));
    var_0 = u_input.b;
    var var_1 = Struct_1(_wgslsmith_clamp_vec3_i32((select(vec3<i32>(38876i, -1131i, -1i), vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x), true) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -31070i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, -3225i))) ^ vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, 3640i), _wgslsmith_mult_i32(u_input.a.x, -51222i), -50032i), _wgslsmith_mult_vec3_i32(firstTrailingBit(vec3<i32>(-14806i, 2147483647i, u_input.a.x)), -vec3<i32>(u_input.a.x, 2147483647i, u_input.a.x)), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 11962i, 2147483647i), abs(vec3<i32>(0i, -13562i, u_input.a.x)))), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.b, u_input.b), 1u)), func_2(max(abs(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), -vec3<i32>(u_input.a.x, u_input.a.x, -15230i))).b), _wgslsmith_f_op_f32(352f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -817f), _wgslsmith_div_f32(-300f, 1557f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-515f))))));
    let var_2 = Struct_1(vec3<i32>(-(~(-u_input.a.x)), -reverseBits(u_input.a.x), ~var_1.a.x), select(max(~reverseBits(68931u), 78019u >> (var_1.b % 32u)), 1u, select(!(var_1.c > 427f), false, true)), _wgslsmith_f_op_f32(-var_1.c));
    let var_3 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(388f, var_2.c) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1713f, var_2.c))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.c, var_2.c) + vec2<f32>(-359f, var_2.c)))), true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-371f, var_2.c, 100f, -684f), vec4<f32>(var_3.x, var_3.x, var_2.c, 119f)), _wgslsmith_div_vec4_f32(vec4<f32>(-1446f, var_1.c, 855f, var_2.c), vec4<f32>(-937f, var_3.x, var_1.c, 1096f))))))), _wgslsmith_mult_i32(-18255i, 1i));
}

