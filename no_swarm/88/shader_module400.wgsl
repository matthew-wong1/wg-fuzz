struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 22>;

var<private> global1: Struct_1;

var<private> global2: array<vec3<i32>, 6> = array<vec3<i32>, 6>(vec3<i32>(i32(-2147483648), 21378i, -1i), vec3<i32>(43748i, 20764i, -53846i), vec3<i32>(1i, i32(-2147483648), 0i), vec3<i32>(-1i, i32(-2147483648), 26809i), vec3<i32>(17779i, -36645i, -2017i), vec3<i32>(17136i, -1498i, i32(-2147483648)));

var<private> global3: array<vec2<u32>, 24> = array<vec2<u32>, 24>(vec2<u32>(76820u, 1u), vec2<u32>(24652u, 4294967295u), vec2<u32>(4294967295u, 53251u), vec2<u32>(1u, 71865u), vec2<u32>(11979u, 4294967295u), vec2<u32>(0u, 1u), vec2<u32>(1u, 0u), vec2<u32>(14120u, 17164u), vec2<u32>(0u, 43378u), vec2<u32>(72061u, 1u), vec2<u32>(86477u, 42936u), vec2<u32>(50183u, 1u), vec2<u32>(0u, 0u), vec2<u32>(19991u, 54242u), vec2<u32>(1u, 1u), vec2<u32>(4975u, 86171u), vec2<u32>(17320u, 46014u), vec2<u32>(1u, 4294967295u), vec2<u32>(8196u, 1028u), vec2<u32>(19538u, 4294967295u), vec2<u32>(0u, 433u), vec2<u32>(12910u, 47939u), vec2<u32>(34844u, 39939u), vec2<u32>(29426u, 47010u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: i32) -> f32 {
    let var_0 = ~(~_wgslsmith_clamp_i32(1i, 2147483647i, 10773i));
    return -1394f;
}

fn func_2(arg_0: u32, arg_1: u32, arg_2: i32) -> u32 {
    let var_0 = Struct_1(_wgslsmith_add_u32(71390u, ~_wgslsmith_clamp_u32(arg_1, arg_0, arg_1 << (0u % 32u))), select(vec4<bool>(arg_1 > ~global1.a, (global1.c >= 12629i) || (global1.e || false), !any(vec2<bool>(false, global1.b.x)), global1.b.x), global1.b, true), ~(abs(abs(arg_2)) | 29017i), _wgslsmith_f_op_f32(func_3(1i)), (-1608f >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * 818f) + _wgslsmith_f_op_f32(f32(-1f) * -396f))) & !(1480f <= _wgslsmith_f_op_f32(ceil(-246f))));
    global3 = array<vec2<u32>, 24>();
    var var_1 = vec3<u32>(~_wgslsmith_clamp_u32(~u_input.a, 31652u, abs(arg_0)) >> (arg_0 % 32u), 0u, 689u);
    var var_2 = var_0;
    var_1 = select(u_input.c.wxy, ~_wgslsmith_sub_vec3_u32(u_input.c.xwz, min(vec3<u32>(var_2.a, u_input.a, var_0.a), _wgslsmith_mod_vec3_u32(u_input.c.wwy, u_input.c.yxx))), any(select(var_0.b, global1.b, any(global1.b))));
    return ~max(select(0u, ~4294967295u | _wgslsmith_clamp_u32(4294967295u, arg_0, var_2.a), all(var_2.b.xwy)), _wgslsmith_mod_u32(62481u, var_0.a));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> vec3<u32> {
    var var_0 = !(_wgslsmith_f_op_f32(floor(1649f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(global1.d)))) + arg_1.d));
    var var_1 = -104f;
    let var_2 = -1734f;
    var var_3 = arg_1;
    var var_4 = _wgslsmith_mult_u32(4294967295u, var_3.a);
    return vec3<u32>(reverseBits(func_2(u_input.c.x, 1u, arg_1.c) >> (var_3.a % 32u)) >> (arg_1.a % 32u), _wgslsmith_dot_vec4_u32(u_input.c << (~abs(vec4<u32>(14465u, global1.a, 0u, 0u)) % vec4<u32>(32u)), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(global1.a, 10027u, global1.a, 0u), u_input.c))), global1.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(firstTrailingBit(global1.a), u_input.a, _wgslsmith_dot_vec2_u32(reverseBits(global3[_wgslsmith_index_u32(global1.a >> (104777u % 32u), 24u)]), u_input.c.yx), _wgslsmith_dot_vec3_u32(func_1(global1.c, Struct_1(69265u, !global1.b, -41194i, _wgslsmith_f_op_f32(global1.d * global1.d), !global1.b.x)), u_input.c.yzx));
    let var_1 = Struct_1(~(~1u), !(!global1.b), global1.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(-firstLeadingBit(1i)))), global1.e);
    let var_2 = Struct_1(global1.a << (~75072u % 32u), !var_1.b, -35078i << (u_input.b % 32u), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -509f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1079f))), var_1.b.x)), global1.e);
    let var_3 = -45199i;
    global2 = array<vec3<i32>, 6>();
    var var_4 = Struct_1(_wgslsmith_mult_u32(var_2.a, var_1.a), select(!var_2.b, select(var_2.b, vec4<bool>(global1.e, true, !var_2.e, true), select(select(var_1.b, vec4<bool>(var_1.e, global1.b.x, var_1.b.x, false), var_2.e), !var_1.b, vec4<bool>(true, true, true, true))), vec4<bool>(false, true, false, all(vec2<bool>(true, false)))), var_1.c, 1877f, (var_1.e || select(global1.b.x, true, -715f < var_1.d)) | global1.e);
    var var_5 = Struct_1(firstTrailingBit(12513u) >> (1u % 32u), select(select(vec4<bool>(true, true, true, var_4.b.x), var_4.b, _wgslsmith_div_f32(-176f, -1315f) > var_1.d), vec4<bool>(global1.e, true, !(!var_4.e), var_2.b.x), !(!(!vec4<bool>(false, false, global1.e, false)))), var_2.c << (var_1.a % 32u), _wgslsmith_f_op_f32(-951f - -681f), var_2.e);
    let var_6 = _wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-67279i, var_3, -var_3, 1i), _wgslsmith_clamp_vec4_i32(vec4<i32>(61972i, var_2.c, var_2.c, 0i) << (u_input.c % vec4<u32>(32u)), select(vec4<i32>(2147483647i, global1.c, 0i, var_4.c), vec4<i32>(2147483647i, -2147483647i, 43583i, 1i), var_1.b), vec4<i32>(13025i, -7095i, var_2.c, var_3) | vec4<i32>(global1.c, var_4.c, -11847i, -1i))), vec4<i32>(_wgslsmith_mod_i32(var_5.c, _wgslsmith_dot_vec4_i32(vec4<i32>(var_5.c, 2147483647i, var_5.c, var_2.c), vec4<i32>(var_3, var_5.c, var_2.c, var_1.c))), 1i, _wgslsmith_clamp_i32(var_4.c, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c, 25388i, global1.c), global2[_wgslsmith_index_u32(var_0.x, 6u)]), var_4.c & -2147483647i), 1i)) << (~var_1.a % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(1i | ~max(-var_4.c, _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, var_1.c), vec3<i32>(var_3, -9148i, global1.c))), vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
}

