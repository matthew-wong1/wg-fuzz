struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 24> = array<i32, 24>(-1i, -13804i, -28696i, -1i, 2147483647i, i32(-2147483648), 10496i, 1i, -1i, -38107i, 31578i, 18097i, 0i, -1i, -20900i, -17276i, -26912i, 19285i, 24618i, 15375i, i32(-2147483648), 61826i, -24542i, -1i);

var<private> global1: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(14409u, 1u, 1u, 62773u), vec4<u32>(4294967295u, 0u, 57248u, 463u), vec4<u32>(642u, 77287u, 24898u, 15258u), vec4<u32>(0u, 30690u, 0u, 85928u), vec4<u32>(0u, 34523u, 403u, 9421u), vec4<u32>(27050u, 77318u, 43204u, 4294967295u), vec4<u32>(4294967295u, 18271u, 0u, 9687u), vec4<u32>(1u, 25462u, 38468u, 0u), vec4<u32>(0u, 4294967295u, 141426u, 33260u), vec4<u32>(0u, 26238u, 22611u, 73080u), vec4<u32>(29309u, 1u, 98177u, 1u), vec4<u32>(1u, 38021u, 68214u, 46380u), vec4<u32>(767u, 9675u, 0u, 75405u), vec4<u32>(4294967295u, 1u, 65345u, 40844u), vec4<u32>(27638u, 4294967295u, 38807u, 31559u));

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, true));

var<private> global3: array<Struct_2, 32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3) -> vec2<u32> {
    return vec2<u32>(u_input.e.x, ~u_input.c.x);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3) -> Struct_3 {
    let var_0 = reverseBits(arg_0 >> (max(_wgslsmith_add_vec2_u32(~u_input.e, func_3(Struct_2(Struct_1(vec2<bool>(false, false))), Struct_3(vec2<i32>(-2147483647i, -32771i)), Struct_3(vec2<i32>(arg_0.x, arg_1.a.x)))), ~vec2<u32>(u_input.b.x, 1u) | _wgslsmith_mod_vec2_u32(u_input.e, u_input.b)) % vec2<u32>(32u)));
    global3 = array<Struct_2, 32>();
    global2 = Struct_1(!global2.a);
    let var_1 = 1i;
    let var_2 = vec3<i32>(arg_0.x, ~var_1, 1i);
    return arg_1;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> f32 {
    global3 = array<Struct_2, 32>();
    global0 = array<i32, 24>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 587f, 837f)) - vec3<f32>(-161f, -224f, 648f)) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-738f, -547f, 1000f) - vec3<f32>(532f, 1623f, 146f)))))));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(261f, var_0.x)))))) * var_0.zz);
    return _wgslsmith_f_op_f32(max(-2136f, var_2.x));
}

fn func_5(arg_0: f32, arg_1: vec2<i32>, arg_2: f32) -> vec4<i32> {
    var var_0 = global3[_wgslsmith_index_u32(u_input.e.x, 32u)];
    let var_1 = Struct_1(var_0.a.a);
    let var_2 = vec3<u32>(~(~(~95111u)), abs(0u), _wgslsmith_dot_vec3_u32(abs(~u_input.c), u_input.c)) >> ((~abs(vec3<u32>(u_input.b.x, 0u, 4294967295u)) | vec3<u32>(4294967295u >> (~4294967295u % 32u), firstLeadingBit(38397u), u_input.c.x)) % vec3<u32>(32u));
    var var_3 = -1739f;
    global2 = var_1;
    return vec4<i32>(min(_wgslsmith_dot_vec3_i32(vec3<i32>(48181i, global0[_wgslsmith_index_u32(var_2.x, 24u)], -1i), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, arg_1.x, -2147483647i), u_input.a)) & ~_wgslsmith_dot_vec2_i32(arg_1, vec2<i32>(-30942i, u_input.a.x)), _wgslsmith_dot_vec3_i32(u_input.a, _wgslsmith_mult_vec3_i32(select(u_input.a, u_input.a, false), u_input.a))), _wgslsmith_dot_vec3_i32(vec3<i32>(0i, i32(-1i) * -arg_1.x, countOneBits(u_input.d.x) ^ _wgslsmith_add_i32(arg_1.x, global0[_wgslsmith_index_u32(0u, 24u)])), max(vec3<i32>(~arg_1.x, global0[_wgslsmith_index_u32(var_2.x ^ 4294967295u, 24u)], arg_1.x), countOneBits(reverseBits(vec3<i32>(u_input.a.x, arg_1.x, u_input.a.x))))), arg_1.x, u_input.a.x);
}

fn func_1() -> Struct_2 {
    var var_0 = ~_wgslsmith_div_vec4_i32(~vec4<i32>(~global0[_wgslsmith_index_u32(u_input.e.x, 24u)], -2147483647i, min(21529i, global0[_wgslsmith_index_u32(1u, 24u)]), ~u_input.a.x), func_5(1068f, abs(u_input.a.yy), _wgslsmith_f_op_f32(func_4(func_2(u_input.d, Struct_3(vec2<i32>(u_input.a.x, u_input.d.x))), Struct_2(Struct_1(vec2<bool>(global2.a.x, true)))))));
    var_0 = -_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(firstLeadingBit(~vec4<i32>(-1i, u_input.a.x, 5575i, var_0.x)), -_wgslsmith_add_vec4_i32(vec4<i32>(var_0.x, global0[_wgslsmith_index_u32(26122u, 24u)], var_0.x, var_0.x), vec4<i32>(u_input.d.x, 15372i, global0[_wgslsmith_index_u32(u_input.c.x, 24u)], var_0.x))), abs(vec4<i32>(var_0.x, 14751i << (0u % 32u), -u_input.d.x, 21654i)), vec4<i32>(_wgslsmith_sub_i32(global0[_wgslsmith_index_u32(~u_input.e.x, 24u)], -41852i), abs(~0i), select(var_0.x, -2147483647i, false) << (select(1u, u_input.e.x, true) % 32u), -2147483647i));
    var var_1 = ~(-var_0.x);
    var var_2 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -770f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_4(Struct_3(vec2<i32>(u_input.d.x, 49082i)), global3[_wgslsmith_index_u32(29915u, 32u)])), _wgslsmith_f_op_f32(f32(-1f) * -730f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2152f)))))), _wgslsmith_f_op_f32(f32(-1f) * -1734f));
    global1 = array<vec4<u32>, 15>();
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(~20745u, 10854u), 32u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = func_5(1000f, abs(u_input.a.yx), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1174f, 849f))))))).zzw;
    let var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(750f - _wgslsmith_f_op_f32(-209f + _wgslsmith_f_op_f32(round(1832f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1154f * -944f)) + _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(163f, -1101f), _wgslsmith_f_op_f32(f32(-1f) * -331f))))), vec2<u32>(_wgslsmith_mult_u32((u_input.c.x << (u_input.c.x % 32u)) | 1u, u_input.c.x), ~(~(u_input.c.x & u_input.e.x))), global1[_wgslsmith_index_u32(abs(u_input.b.x), 15u)]);
}

