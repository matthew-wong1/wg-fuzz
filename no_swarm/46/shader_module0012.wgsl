struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(true, -1007f, vec4<i32>(-713i, 0i, -1i, 1i), 11604i), Struct_1(false, -1000f, vec4<i32>(i32(-2147483648), 3416i, 56738i, 1i), 39635i), Struct_1(false, 172f, vec4<i32>(-1i, -1i, 1i, 41424i), i32(-2147483648)), Struct_1(false, -899f, vec4<i32>(i32(-2147483648), 1141i, i32(-2147483648), -15976i), -5418i), Struct_1(true, 170f, vec4<i32>(-18702i, 2147483647i, 19205i, 1i), 7908i), Struct_1(false, -114f, vec4<i32>(-6546i, 2147483647i, 159i, 1i), 15481i), Struct_1(true, -236f, vec4<i32>(-29190i, 2147483647i, 37297i, 6433i), -9484i), Struct_1(false, -363f, vec4<i32>(-1i, i32(-2147483648), 12744i, -34179i), -1i), Struct_1(false, -229f, vec4<i32>(i32(-2147483648), 1i, i32(-2147483648), 2147483647i), 1i), Struct_1(true, 145f, vec4<i32>(25084i, 1i, 544i, 5975i), -2612i), Struct_1(false, -1854f, vec4<i32>(-22241i, 55696i, -65587i, 1i), -188i), Struct_1(false, 306f, vec4<i32>(i32(-2147483648), -13204i, 14939i, -1i), 1i), Struct_1(false, 1319f, vec4<i32>(36919i, 2147483647i, -1i, -18371i), 2147483647i), Struct_1(true, 872f, vec4<i32>(-38841i, 2147483647i, -39581i, -25436i), 1i), Struct_1(true, -913f, vec4<i32>(2147483647i, 0i, -1i, 2147483647i), 31854i), Struct_1(true, 502f, vec4<i32>(5250i, 7694i, 2147483647i, 2147483647i), -18804i), Struct_1(false, 873f, vec4<i32>(-1i, 1i, 18318i, 14338i), -5957i), Struct_1(false, 1034f, vec4<i32>(28290i, -37569i, -49496i, i32(-2147483648)), 15706i), Struct_1(false, -773f, vec4<i32>(31531i, 37783i, i32(-2147483648), 2147483647i), -36210i), Struct_1(true, 272f, vec4<i32>(-3842i, 1i, 1i, 11164i), -6452i), Struct_1(false, -447f, vec4<i32>(2147483647i, -13351i, -1i, -1i), 48969i), Struct_1(true, -1888f, vec4<i32>(3752i, 2147483647i, 0i, 6169i), -1i), Struct_1(false, -586f, vec4<i32>(-1i, i32(-2147483648), 2147483647i, -1i), -1i), Struct_1(false, -208f, vec4<i32>(2147483647i, -1i, i32(-2147483648), -100081i), -27003i), Struct_1(true, 1804f, vec4<i32>(0i, -38457i, 46536i, i32(-2147483648)), 0i), Struct_1(true, 138f, vec4<i32>(i32(-2147483648), 0i, i32(-2147483648), i32(-2147483648)), i32(-2147483648)), Struct_1(true, -942f, vec4<i32>(-20827i, -57437i, -8518i, 8550i), -14004i), Struct_1(true, 132f, vec4<i32>(5315i, 1i, -58850i, i32(-2147483648)), 8294i), Struct_1(true, 251f, vec4<i32>(0i, 1i, 42105i, -1i), -1i), Struct_1(true, -2684f, vec4<i32>(1i, -39966i, -18438i, -12967i), 0i));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> bool {
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    global0 = array<Struct_2, 23>();
    let var_0 = ~48545u;
    return countOneBits(_wgslsmith_dot_vec3_i32(select(-vec3<i32>(u_input.c.x, -1i, u_input.c.x), u_input.d.zyw, true), u_input.c.zxx)) <= -firstLeadingBit(select(-2147483647i, u_input.b.x, true));
}

fn func_2(arg_0: vec2<u32>, arg_1: Struct_4) -> vec2<i32> {
    var var_0 = vec3<bool>(func_3(-514f), true, arg_1.b.a);
    var_0 = vec3<bool>(var_0.x, true, true);
    let var_1 = select(!select(!(!vec4<bool>(false, arg_1.b.a, true, var_0.x)), select(!vec4<bool>(true, arg_1.b.a, var_0.x, false), !vec4<bool>(var_0.x, false, false, true), var_0.x), any(!vec4<bool>(var_0.x, false, false, arg_1.b.a))), select(select(select(select(vec4<bool>(true, var_0.x, false, true), vec4<bool>(arg_1.b.a, arg_1.b.a, var_0.x, arg_1.b.a), vec4<bool>(true, true, false, arg_1.b.a)), !vec4<bool>(false, true, var_0.x, true), var_0.x), vec4<bool>(true, arg_1.b.a, all(vec2<bool>(var_0.x, arg_1.b.a)), all(var_0.zx)), vec4<bool>(var_0.x, var_0.x, false, true)), select(!(!vec4<bool>(true, arg_1.b.a, false, arg_1.b.a)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, var_0.x, false, false), select(vec4<bool>(arg_1.b.a, true, var_0.x, arg_1.b.a), vec4<bool>(arg_1.b.a, var_0.x, true, arg_1.b.a), false)), all(!vec3<bool>(true, false, var_0.x))), vec4<bool>(arg_1.b.a, var_0.x, false, select(true, arg_1.b.a, false))), !arg_1.b.a & all(select(select(var_0.yz, vec2<bool>(arg_1.b.a, false), false), vec2<bool>(true, var_0.x), func_3(-727f))));
    let var_2 = Struct_3(Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -157f) * _wgslsmith_f_op_f32(657f - 1000f)), -arg_1.b.c, ~(i32(-1i) * -u_input.c.x)), vec4<bool>(all(select(var_1.wyw, select(var_1.xzy, vec3<bool>(true, false, var_0.x), var_1.zxy), all(var_1.xwz))), false != !(!arg_1.b.a), !arg_1.b.a, true), Struct_2(-abs(-9705i), (~vec3<u32>(8425u, u_input.e, arg_0.x) & u_input.a.zzz) | (vec3<u32>(arg_1.a, 0u, arg_0.x) & vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u)), u_input.a), Struct_2(arg_1.b.c.x, u_input.a.xxw, ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(26025u, arg_1.a, arg_0.x), vec3<u32>(1u, u_input.a.x, u_input.e)), 1u, u_input.e, arg_0.x)));
    var var_3 = Struct_3(arg_1.b, vec4<bool>(arg_1.b.a, all(!vec4<bool>(true, arg_1.b.a, true, false)), true, var_1.x), Struct_2(_wgslsmith_dot_vec2_i32(~(-vec2<i32>(25203i, -1i)), _wgslsmith_mult_vec2_i32(-u_input.c.ww, abs(vec2<i32>(var_2.d.a, -17308i)))), _wgslsmith_sub_vec3_u32(~u_input.a.zwz, _wgslsmith_add_vec3_u32(~vec3<u32>(59329u, 4294967295u, arg_0.x), ~var_2.d.b)), abs(_wgslsmith_sub_vec4_u32(~u_input.a, var_2.d.c))), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(u_input.a.x, 39120u, arg_1.a)), ~vec3<u32>(49646u, u_input.a.x, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(select(70088u, var_2.c.c.x, var_2.a.a), arg_0.x << (var_2.c.b.x % 32u), 11178u), _wgslsmith_sub_vec3_u32(u_input.a.wzy, var_2.d.b) << (var_2.d.c.zxy % vec3<u32>(32u)))), 23u)]);
    return abs(arg_1.b.c.xy);
}

fn func_1(arg_0: bool) -> i32 {
    var var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~(~u_input.d.xw), func_2(u_input.a.yz, Struct_4(u_input.e, global1[_wgslsmith_index_u32(u_input.e, 30u)])) & -u_input.d.wz), min(vec2<i32>(_wgslsmith_add_i32(-u_input.c.x, countOneBits(-28391i)), 1i), abs(u_input.b.yy)));
    var var_1 = Struct_1(arg_0, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(1f)))), u_input.c, 408i);
    global0 = array<Struct_2, 23>();
    var var_2 = Struct_5(Struct_4(~_wgslsmith_dot_vec3_u32(u_input.a.ywy ^ u_input.a.zww, u_input.a.zzx), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.a.yxy, select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, u_input.e, u_input.e), u_input.a.xzx), ~vec3<u32>(44865u, u_input.e, u_input.e), true)), 30u)]), -2030f, 0u, global1[_wgslsmith_index_u32(0u, 30u)]);
    let var_3 = firstTrailingBit(_wgslsmith_dot_vec4_i32(var_2.d.c, u_input.d | _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 33428i, u_input.d.x, var_1.c.x), vec4<i32>(u_input.c.x, var_1.c.x, -2147483647i, -1i), vec4<i32>(-19841i, 1i, -2147483647i, u_input.d.x))));
    return ~var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_2, 23>();
    let var_0 = -16463i;
    let var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d.ywy, vec3<i32>(u_input.b.x >> (u_input.e % 32u), -6852i >> (u_input.e % 32u), var_0 << (39494u % 32u))), max(func_1(true), i32(-1i) * -1i), abs(-u_input.d.x) >> (abs(select(u_input.a.x, 3313u, true)) % 32u), -2147483647i) >> (u_input.a % vec4<u32>(32u));
    let var_2 = -u_input.d.x;
    global0 = array<Struct_2, 23>();
    global1 = array<Struct_1, 30>();
    var var_3 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~max(u_input.e >> (~25787u % 32u), abs(~u_input.a.x)), 1u), 30u)];
    let var_4 = Struct_4(4294967295u, global1[_wgslsmith_index_u32(10648u, 30u)]);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_div_i32(abs(reverseBits(45640i)), -5835i), _wgslsmith_dot_vec3_i32(var_1.yyy, _wgslsmith_add_vec3_i32(vec3<i32>(12503i, u_input.d.x, -64748i), var_3.c.wyx)), -_wgslsmith_dot_vec4_i32(u_input.c ^ u_input.c, vec4<i32>(var_1.x, 2147483647i, var_2, -1i)), u_input.d.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.b, -1000f, 998f, 616f) + vec4<f32>(var_4.b.b, -190f, var_4.b.b, -733f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-175f, var_4.b.b, -1000f, var_3.b) * vec4<f32>(665f, 218f, -2273f, -240f)))) * vec4<f32>(_wgslsmith_f_op_f32(-var_4.b.b), var_4.b.b, 309f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1396f, var_4.b.b)) * var_3.b))), ~select(_wgslsmith_sub_vec3_i32(-vec3<i32>(var_0, -8375i, 0i), ~var_4.b.c.yyx), select(u_input.d.xwz, vec3<i32>(var_1.x, u_input.d.x, -19935i), var_3.a), var_4.b.a), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_4.b.b, 932f, -2615f), vec3<f32>(var_4.b.b, 592f, var_4.b.b), var_4.b.a))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1618f, var_4.b.b, var_3.b))))))));
}

