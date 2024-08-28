struct Struct_1 {
    a: f32,
    b: bool,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20>;

var<private> global1: Struct_2;

var<private> global2: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(false), Struct_2(true), Struct_2(true));

var<private> global3: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec3<bool>) -> bool {
    var var_0 = -18865i;
    let var_1 = ~countOneBits(0i);
    global0 = array<Struct_1, 20>();
    let var_2 = -33661i;
    var var_3 = global0[_wgslsmith_index_u32(~u_input.b ^ u_input.b, 20u)];
    return var_3.b;
}

fn func_2(arg_0: Struct_2) -> u32 {
    global3 = false;
    global3 = global1.a;
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(564f))), func_3(select(!vec3<bool>(global1.a, true, arg_0.a), !select(vec3<bool>(global1.a, true, false), vec3<bool>(true, arg_0.a, true), arg_0.a), vec3<bool>(true, all(vec3<bool>(false, true, false)), true))), u_input.b, firstTrailingBit(~vec4<i32>(-1i << (u_input.b % 32u), 1i, abs(u_input.a.x), ~(-44527i))), abs(u_input.a.x));
    var var_1 = ~_wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.b >> (var_0.c % 32u), 15632u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 48981u, u_input.b), vec3<u32>(var_0.c, u_input.b, u_input.b))), vec3<u32>(~1u, ~89629u & (91851u >> (var_0.c % 32u)), 2701u));
    var var_2 = var_0.a;
    return var_0.c << (var_1.x % 32u);
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: Struct_1) -> vec2<u32> {
    global0 = array<Struct_1, 20>();
    global2 = array<Struct_2, 6>();
    let var_0 = 11976i;
    let var_1 = vec2<f32>(arg_2.a, arg_1);
    var var_2 = Struct_2(min(_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 42906u, 36104u), vec3<u32>(45495u, 4294967295u, arg_0)), vec3<u32>(arg_0, arg_0, 0u) | vec3<u32>(u_input.b, arg_2.c, 1u)), ~_wgslsmith_sub_u32(arg_2.c, 1u)) > ~_wgslsmith_sub_u32(~5965u, ~18808u));
    return ~(vec2<u32>(_wgslsmith_clamp_u32(u_input.b, 64572u, ~arg_2.c), ~0u) ^ _wgslsmith_sub_vec2_u32(select(~vec2<u32>(arg_0, arg_2.c), select(vec2<u32>(arg_0, 1u), vec2<u32>(29820u, 28309u), vec2<bool>(true, var_2.a)), func_3(vec3<bool>(true, var_2.a, true))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 0u), vec2<u32>(arg_0, arg_2.c))));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: f32, arg_3: i32) -> f32 {
    var var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(max(vec2<u32>(37436u, 25789u), vec2<u32>(arg_0.c, u_input.b)), ~vec2<u32>(arg_0.c, 4294967295u)), arg_0.c), vec2<u32>(13538u, 0u));
    global0 = array<Struct_1, 20>();
    global3 = true;
    var_0 = _wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(func_4(~1u, arg_1.x, global0[_wgslsmith_index_u32(func_2(Struct_2(arg_0.b)), 20u)]), select(_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.x, arg_0.c), vec2<u32>(arg_0.c, u_input.b), false), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), ~vec2<u32>(49874u, var_0.x)), select(!vec2<bool>(false, arg_0.b), vec2<bool>(false, global1.a), !vec2<bool>(arg_0.b, global1.a)))), abs(~select(vec2<u32>(1u, var_0.x) << (vec2<u32>(u_input.b, arg_0.c) % vec2<u32>(32u)), vec2<u32>(11728u, arg_0.c), false)));
    global2 = array<Struct_2, 6>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 * arg_0.a) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2)))))));
}

fn func_5(arg_0: f32) -> Struct_2 {
    var var_0 = vec2<bool>(true, any(vec2<bool>(global1.a, !(!global1.a))));
    let var_1 = global2[_wgslsmith_index_u32(4294967295u, 6u)];
    let var_2 = func_3(!(!vec3<bool>(select(var_1.a, true, false), 3761u > u_input.b, u_input.b > u_input.b)));
    global3 = var_2;
    let var_3 = 17017i;
    return Struct_2(firstLeadingBit(_wgslsmith_mult_i32(-2147483647i >> (u_input.b % 32u), u_input.a.x)) >= firstLeadingBit(abs(abs(u_input.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(~u_input.b, 20u)], _wgslsmith_f_op_vec4_f32(vec4<f32>(-399f, 596f, 130f, 974f) + vec4<f32>(576f, 363f, 478f, 1097f)), -822f, 4489i)) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(288f)), _wgslsmith_f_op_f32(-404f + 302f)))) - _wgslsmith_f_op_f32(func_1(global0[_wgslsmith_index_u32(~u_input.b, 20u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1141f, -557f, -2063f, 807f)) + _wgslsmith_f_op_vec4_f32(round(vec4<f32>(665f, 112f, 270f, -678f)))), _wgslsmith_f_op_f32(582f * _wgslsmith_f_op_f32(max(384f, 100f))), i32(-1i) * -1i))));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-958f, 740f))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1000f * 283f), 361f))))))));
    let var_2 = _wgslsmith_f_op_f32(-var_1);
    let var_3 = all(!vec4<bool>(func_3(vec3<bool>(global1.a, var_0.a, var_0.a)) | (var_0.a && global1.a), !(!global1.a), false, global1.a));
    var var_4 = func_5(_wgslsmith_f_op_f32(-var_1));
    let var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(func_1(Struct_1(-1492f, false, 4294967295u, vec4<i32>(-11423i, u_input.a.x, u_input.a.x, -14003i), 1i), vec4<f32>(492f, -2020f, var_2, var_1), 2564f, u_input.a.x)))))), any(vec2<bool>(select(u_input.a.x < u_input.a.x, true, func_5(-105f).a), !(33420i < u_input.a.x))), u_input.b, reverseBits(~countOneBits(vec4<i32>(1i, u_input.a.x, -6170i, -12094i)) << (~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b) % vec4<u32>(32u))), firstTrailingBit(-_wgslsmith_dot_vec4_i32(min(vec4<i32>(28152i, 2147483647i, -2147483647i, 2147483647i), vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), vec4<i32>(u_input.a.x, -1i, -1i, 37209i), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 32178i)))));
    var var_6 = u_input.a.zz;
    var_6 = var_5.d.xz;
    let x = u_input.a;
    s_output = StorageBuffer(13831u, vec3<u32>(u_input.b ^ abs(4294967295u), 1u | u_input.b, (var_5.c & 65830u) & ~0u) & ~_wgslsmith_add_vec3_u32(vec3<u32>(1u, 22665u, 67616u), abs(vec3<u32>(var_5.c, u_input.b, 18256u))), var_5.e, _wgslsmith_div_vec2_i32(select(min(_wgslsmith_sub_vec2_i32(var_5.d.wy, u_input.a.xx), ~var_5.d.wx), var_5.d.zz, select(!vec2<bool>(var_3, var_4.a), !vec2<bool>(var_5.b, var_5.b), var_5.b)), select(vec2<i32>(firstLeadingBit(-15588i), var_5.d.x), vec2<i32>(21665i, 27250i | var_5.e), !vec2<bool>(false, var_3))), var_6.x);
}

