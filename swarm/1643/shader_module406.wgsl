struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: vec2<f32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: vec2<u32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -118f;

var<private> global1: array<f32, 19> = array<f32, 19>(532f, -1000f, -1130f, 1000f, -1214f, 1050f, 546f, -581f, -1000f, 250f, 644f, -553f, 1284f, 554f, -149f, 508f, 406f, -1119f, 342f);

var<private> global2: array<vec3<u32>, 1>;

var<private> global3: array<vec2<i32>, 3>;

var<private> global4: bool;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: f32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-224f, 749f), vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], -1548f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1[_wgslsmith_index_u32(u_input.b, 19u)], 2341f)))))), _wgslsmith_f_op_f32(-762f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 19u)])), -225f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-948f, global1[_wgslsmith_index_u32(18866u, 19u)]), vec2<f32>(arg_0, global1[_wgslsmith_index_u32(0u, 19u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, -1388f)))) * _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(72480u, 19u)], arg_0) + vec2<f32>(883f, global1[_wgslsmith_index_u32(6971u, 19u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-823f, -551f))))))), vec2<u32>(_wgslsmith_clamp_u32(~(0u ^ u_input.a.x), 0u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, 0u, 90433u, u_input.a.x), vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.b)), _wgslsmith_clamp_vec4_u32(vec4<u32>(3450u, 4294967295u, u_input.b, 1142u), vec4<u32>(70900u, 1u, u_input.a.x, u_input.b), vec4<u32>(u_input.a.x, 1u, 120794u, 4294967295u)))), ~1u << (~u_input.b % 32u)));
    global2 = array<vec3<u32>, 1>();
    var var_1 = var_0;
    global1 = array<f32, 19>();
    var var_2 = var_0.d.x;
    return -632f;
}

fn func_2(arg_0: u32, arg_1: vec3<i32>) -> u32 {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(func_3(-1185f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(10316u, 19u)] - global1[_wgslsmith_index_u32(69844u, 19u)]))), global1[_wgslsmith_index_u32(4294967295u, 19u)], _wgslsmith_f_op_f32(round(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, arg_0, arg_0), global2[_wgslsmith_index_u32(0u, 1u)]), 19u)])), global1[_wgslsmith_index_u32(countOneBits(~arg_0), 19u)])), _wgslsmith_clamp_vec2_i32(arg_1.zx, vec2<i32>(reverseBits(0i), firstLeadingBit(-1i)), -_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(global3[_wgslsmith_index_u32(u_input.a.x, 3u)], arg_1.yy), global3[_wgslsmith_index_u32(min(arg_0, 0u), 3u)], vec2<i32>(1i, 0i) & arg_1.yx)), vec2<u32>(0u, 28903u), -21337i);
    var var_1 = vec2<f32>(var_0.b.x, -1227f);
    var var_2 = Struct_2(_wgslsmith_f_op_f32(floor(var_0.a)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-574f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(4294967295u, 19u)] - global1[_wgslsmith_index_u32(32075u, 19u)]), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 19u)]), -2529f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(1u, 19u)], var_0.a, var_0.b.x, -534f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -794f), _wgslsmith_f_op_f32(f32(-1f) * -1755f), _wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(-var_0.b.x)) + var_0.b)), ~(~global3[_wgslsmith_index_u32(1u, 3u)]), vec2<u32>(_wgslsmith_dot_vec3_u32(select(reverseBits(vec3<u32>(arg_0, var_0.d.x, 4294967295u)), vec3<u32>(var_0.d.x, 84401u, u_input.b), vec3<bool>(true, true, true)), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.d.x, u_input.a.x, var_0.d.x), global2[_wgslsmith_index_u32(u_input.b, 1u)] & vec3<u32>(arg_0, 53125u, arg_0))), u_input.a.x), 0i);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(select(var_2.b.x, -344f, true)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-331f + _wgslsmith_f_op_f32(ceil(780f))))), global1[_wgslsmith_index_u32(1u, 19u)]));
    let var_3 = vec3<f32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, ~arg_0), 19u)], -1556f, _wgslsmith_f_op_f32(1838f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(-320f, 973f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x)))));
    return 29238u;
}

fn func_1(arg_0: bool, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: vec4<bool>) -> Struct_2 {
    var var_0 = arg_2.c;
    let var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(~(~u_input.a.x), 1u, abs(arg_2.d.x), func_2(4294967295u, vec3<i32>(-5048i, 0i, 27743i))), _wgslsmith_div_vec4_u32(vec4<u32>(~1u, arg_2.d.x, 60789u, 4294967295u), vec4<u32>(arg_2.d.x, 9614u, 25503u, 4294967295u) ^ (vec4<u32>(36002u, arg_2.d.x, 4294967295u, 1u) ^ vec4<u32>(u_input.a.x, 1u, 0u, 0u)))), _wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(60734u), 4294967295u, 42607u, ~select(1u, 68476u, false)), ~(~max(vec4<u32>(60680u, arg_2.d.x, u_input.b, 16113u), vec4<u32>(u_input.b, 1u, u_input.a.x, arg_2.d.x)))));
    global2 = array<vec3<u32>, 1>();
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(618f, global1[_wgslsmith_index_u32(arg_2.d.x, 19u)])), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, arg_2.a.x, 567f, 1241f)))))), _wgslsmith_add_vec2_i32(global3[_wgslsmith_index_u32(abs(27140u), 3u)] | vec2<i32>(min(52957i, 2147483647i), abs(44136i)), firstLeadingBit(global3[_wgslsmith_index_u32(47526u, 3u)])), _wgslsmith_mod_vec2_u32((~u_input.a << (~vec2<u32>(26450u, arg_2.d.x) % vec2<u32>(32u))) & arg_2.d, (vec2<u32>(var_1, 0u) >> (select(vec2<u32>(arg_2.d.x, u_input.a.x), u_input.a, vec2<bool>(false, arg_0)) % vec2<u32>(32u))) | select(arg_2.d, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), vec2<u32>(4294967295u, 13921u), vec2<u32>(1549u, 4896u)), any(vec3<bool>(arg_3.x, arg_1.x, false)))), _wgslsmith_mult_i32(max(-11580i << (0u % 32u), ~(-60615i)), select(1i, ~(-2235i), select(false, arg_3.x, true))) | ~_wgslsmith_dot_vec3_i32(abs(vec3<i32>(0i, 1i, 0i)), vec3<i32>(13003i, -24605i, -1i)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec3<u32>) -> f32 {
    global1 = array<f32, 19>();
    var var_0 = Struct_2(209f, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1[_wgslsmith_index_u32(~u_input.a.x, 19u)], _wgslsmith_f_op_f32(floor(994f)), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1.b.x))), _wgslsmith_f_op_f32(trunc(arg_0.b)), _wgslsmith_f_op_f32(round(arg_0.a.x))), abs(_wgslsmith_div_vec2_i32(min(global3[_wgslsmith_index_u32(~0u, 3u)], -vec2<i32>(-23563i, arg_1.e)), select(global3[_wgslsmith_index_u32(53251u, 3u)], func_1(true, vec4<bool>(true, false, true, false), Struct_1(vec2<f32>(1177f, 763f), 1137f, vec2<f32>(arg_1.b.x, arg_1.b.x), arg_1.d), vec4<bool>(false, false, false, true)).c, select(true, false, false)))), u_input.a, -(18047i << (arg_1.d.x % 32u)));
    let var_1 = !(!(!all(vec3<bool>(false, false, false))));
    global3 = array<vec2<i32>, 3>();
    let var_2 = 0i;
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -632f)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = !any(!(!select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true))));
    global2 = array<vec3<u32>, 1>();
    let var_0 = Struct_1(vec2<f32>(global1[_wgslsmith_index_u32(2937u, 19u)], _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(24953u, u_input.b), 19u)] - global1[_wgslsmith_index_u32(select(u_input.b, 49334u, true), 19u)])))), _wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-814f + global1[_wgslsmith_index_u32(u_input.b, 19u)])), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), vec2<f32>(209f, -195f))) * vec2<f32>(-310f, -622f)), u_input.a >> (select(vec2<u32>(u_input.b, 0u), vec2<u32>(u_input.a.x, u_input.a.x), true) % vec2<u32>(32u))), func_1(false, vec4<bool>(true, true, any(vec2<bool>(false, true)), any(vec4<bool>(true, true, false, false))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-397f, 1000f)), global1[_wgslsmith_index_u32(u_input.b ^ u_input.a.x, 19u)], _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1[_wgslsmith_index_u32(80715u, 19u)], 1388f))), vec2<u32>(4294967295u, u_input.b) ^ vec2<u32>(58912u, 1u)), vec4<bool>(true, true, true, true)), global2[_wgslsmith_index_u32(4294967295u, 1u)])), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)], 255f), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a.x, 19u)] + global1[_wgslsmith_index_u32(34419u, 19u)])), func_1(true, vec4<bool>(true, true, true, true), Struct_1(vec2<f32>(438f, 949f), -771f, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 19u)], global1[_wgslsmith_index_u32(u_input.b, 19u)]), vec2<u32>(14318u, u_input.b)), vec4<bool>(false, true, true, true)).b.xz))), ~firstLeadingBit(vec2<u32>(u_input.b, u_input.b << (44174u % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~select(var_0.d.x, u_input.b, true), u_input.a.x, u_input.a.x, ~var_0.d.x), _wgslsmith_mod_u32(39487u, u_input.b));
}

