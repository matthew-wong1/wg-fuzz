struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 26>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, true), vec4<i32>(44687i, 46764i, 2147483647i, 1i), -1000f, vec3<f32>(-595f, 200f, -235f));

var<private> global2: vec3<f32> = vec3<f32>(-1686f, -1338f, 311f);

var<private> global3: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(vec2<bool>(false, false), vec4<i32>(42360i, 8077i, -28586i, -15631i), -233f, vec3<f32>(-1187f, 220f, -1000f)), Struct_1(vec2<bool>(true, false), vec4<i32>(17042i, 1i, -18204i, 10476i), -1174f, vec3<f32>(-1438f, -1051f, 267f)), Struct_1(vec2<bool>(false, true), vec4<i32>(8015i, 2147483647i, 0i, 0i), 2644f, vec3<f32>(-396f, -274f, -1499f)), Struct_1(vec2<bool>(true, false), vec4<i32>(31444i, i32(-2147483648), 1i, 1i), -893f, vec3<f32>(-1000f, -540f, 132f)), Struct_1(vec2<bool>(true, true), vec4<i32>(15470i, 2147483647i, 99430i, i32(-2147483648)), 926f, vec3<f32>(-719f, 1293f, 1188f)), Struct_1(vec2<bool>(true, true), vec4<i32>(44508i, -46697i, i32(-2147483648), i32(-2147483648)), -547f, vec3<f32>(-811f, -467f, 563f)), Struct_1(vec2<bool>(false, false), vec4<i32>(1i, -46004i, 16737i, 44770i), 716f, vec3<f32>(-1378f, -1160f, 439f)), Struct_1(vec2<bool>(false, false), vec4<i32>(i32(-2147483648), i32(-2147483648), i32(-2147483648), 20579i), 242f, vec3<f32>(178f, 176f, -187f)), Struct_1(vec2<bool>(true, false), vec4<i32>(2147483647i, -1i, 39132i, 1i), 765f, vec3<f32>(789f, 1001f, -418f)), Struct_1(vec2<bool>(true, true), vec4<i32>(18614i, i32(-2147483648), 2147483647i, -30054i), 593f, vec3<f32>(2157f, 612f, -459f)), Struct_1(vec2<bool>(false, false), vec4<i32>(36181i, 2147483647i, 99043i, 4609i), -1420f, vec3<f32>(568f, -953f, 454f)), Struct_1(vec2<bool>(false, false), vec4<i32>(0i, -5847i, 1i, -29911i), -753f, vec3<f32>(-370f, -859f, 676f)), Struct_1(vec2<bool>(true, true), vec4<i32>(-24602i, -37263i, 27377i, 14851i), 1344f, vec3<f32>(-1600f, -414f, 1055f)), Struct_1(vec2<bool>(false, false), vec4<i32>(-8459i, i32(-2147483648), -1i, -1i), 421f, vec3<f32>(-582f, 1000f, -1000f)), Struct_1(vec2<bool>(true, false), vec4<i32>(0i, 0i, 0i, 0i), -269f, vec3<f32>(1000f, -263f, -268f)), Struct_1(vec2<bool>(false, true), vec4<i32>(-1i, 128i, -4947i, 47340i), -558f, vec3<f32>(1232f, 426f, 1000f)), Struct_1(vec2<bool>(true, false), vec4<i32>(i32(-2147483648), 0i, 3898i, 3485i), -685f, vec3<f32>(-1458f, 1312f, 697f)), Struct_1(vec2<bool>(false, true), vec4<i32>(1i, -16910i, 1i, i32(-2147483648)), -1287f, vec3<f32>(-138f, 1000f, -599f)), Struct_1(vec2<bool>(false, false), vec4<i32>(-28156i, 1i, -708i, 24071i), -1344f, vec3<f32>(1000f, -2164f, -1412f)), Struct_1(vec2<bool>(false, true), vec4<i32>(2147483647i, -1i, 1468i, 13627i), 1310f, vec3<f32>(-2178f, 162f, 457f)));

var<private> global4: u32 = 33879u;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec2<i32> {
    var var_0 = 2147483647i;
    var_0 = -92943i;
    var var_1 = arg_0;
    let var_2 = global3[_wgslsmith_index_u32(firstLeadingBit(firstTrailingBit(u_input.c.x)), 20u)];
    var var_3 = false;
    return _wgslsmith_clamp_vec2_i32(firstLeadingBit(var_2.b.xw >> (_wgslsmith_div_vec2_u32(abs(u_input.c.yx), max(vec2<u32>(u_input.b.x, 4294967295u), u_input.c.xy)) % vec2<u32>(32u))), var_2.b.zx << (~(vec2<u32>(1979u, 11288u) & vec2<u32>(4294967295u, u_input.a)) % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, global1.b.x, global1.b.x, 2147483647i), vec4<i32>(var_2.b.x, var_1.b.x, 1i, arg_0.b.x)), countOneBits(1i)), global1.b.wz & reverseBits(vec2<i32>(var_2.b.x, var_2.b.x))));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<u32>) -> f32 {
    var var_0 = _wgslsmith_clamp_i32(1i, global1.b.x, global1.b.x);
    var var_1 = _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(func_3(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.c.x, arg_1.x), 20u)], _wgslsmith_div_f32(global1.d.x, arg_0.d.x)), _wgslsmith_add_vec2_i32(~global1.b.xx, global1.b.zy)), -select(-global1.b.yw, global1.b.zy, true)) << (_wgslsmith_add_vec2_u32(min(firstTrailingBit(arg_1.zy), arg_1.zz) & ~countOneBits(arg_1.xz), arg_1.ww) % vec2<u32>(32u));
    var var_2 = Struct_1(arg_0.a, global1.b, 1530f, arg_0.d);
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(484f + _wgslsmith_f_op_f32(abs(global1.c))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-534f + global1.c) + _wgslsmith_f_op_f32(select(global2.x, var_2.c, true)))), global2.x, _wgslsmith_f_op_f32(f32(-1f) * -371f))));
    let var_4 = global3[_wgslsmith_index_u32(u_input.c.x & ~(u_input.d ^ _wgslsmith_add_u32(arg_1.x << (0u % 32u), u_input.c.x)), 20u)];
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-587f, -440f, false)))))), 259f));
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> i32 {
    let var_0 = arg_2;
    global1 = arg_0;
    var var_1 = -_wgslsmith_clamp_i32(global1.b.x, firstTrailingBit(~0i), 2147483647i | var_0.b.x);
    global3 = array<Struct_1, 20>();
    let var_2 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(arg_2, ~u_input.c)), -883f, arg_3.c, arg_0.c))));
    return _wgslsmith_dot_vec4_i32(-reverseBits(global1.b), select(select(vec4<i32>(_wgslsmith_dot_vec2_i32(global1.b.xw, var_0.b.yz), -arg_3.b.x, arg_2.b.x, _wgslsmith_add_i32(arg_0.b.x, 2147483647i)), vec4<i32>(global1.b.x, 1i, global1.b.x, 55157i), select(!vec4<bool>(var_0.a.x, true, global1.a.x, false), select(vec4<bool>(false, true, var_0.a.x, var_0.a.x), vec4<bool>(arg_2.a.x, arg_2.a.x, global1.a.x, true), vec4<bool>(false, false, var_0.a.x, arg_3.a.x)), arg_0.a.x)), firstLeadingBit(_wgslsmith_add_vec4_i32(abs(var_0.b), abs(var_0.b))), var_0.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(global1.b.x ^ (_wgslsmith_div_i32(global1.b.x, -5974i) | ~(-12048i)), -1i, -_wgslsmith_mod_i32(1i, -62096i)) | ~vec3<i32>(-53098i, global1.b.x, -2147483647i);
    var var_1 = Struct_1(vec2<bool>(select(~u_input.b.x, u_input.d, global0[_wgslsmith_index_u32(u_input.a, 26u)]) > 24708u, -2147483647i < ~func_1(global3[_wgslsmith_index_u32(37461u, 20u)], global2.x, Struct_1(vec2<bool>(false, global1.a.x), vec4<i32>(-2147483647i, var_0.x, global1.b.x, var_0.x), 577f, vec3<f32>(global2.x, -162f, 149f)), global3[_wgslsmith_index_u32(29075u, 20u)])), global1.b, 933f, _wgslsmith_f_op_vec3_f32(global1.d - vec3<f32>(_wgslsmith_div_f32(967f, _wgslsmith_f_op_f32(-global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2534f) + 945f))));
    var var_2 = ~_wgslsmith_div_u32(1u << (select(u_input.c.x, max(29531u, u_input.b.x), true) % 32u), u_input.a);
    let var_3 = Struct_1(select(vec2<bool>(any(select(vec4<bool>(var_1.a.x, global1.a.x, global1.a.x, global0[_wgslsmith_index_u32(u_input.a, 26u)]), vec4<bool>(var_1.a.x, var_1.a.x, global0[_wgslsmith_index_u32(u_input.b.x, 26u)], true), vec4<bool>(var_1.a.x, global0[_wgslsmith_index_u32(u_input.d, 26u)], false, global1.a.x))), false & any(vec4<bool>(global1.a.x, true, false, true))), select(!global1.a, vec2<bool>(true, false), !global1.a), select(vec2<bool>(var_1.a.x, !global0[_wgslsmith_index_u32(u_input.b.x, 26u)]), global1.a, select(select(var_1.a, vec2<bool>(var_1.a.x, var_1.a.x), global1.a.x), global1.a, var_1.a.x))), -(~global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1384f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.d.x)) * _wgslsmith_f_op_f32(f32(-1f) * -208f))), var_1.d);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global1.d.x, var_1.c), _wgslsmith_f_op_f32(trunc(1215f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<u32>(~0u, u_input.d | u_input.d, u_input.b.x) >> (u_input.b.yzw % vec3<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global2.x - 411f)))))), global1.d, ~vec2<u32>(~select(13936u, u_input.a, false), _wgslsmith_dot_vec2_u32(~u_input.b.zw, _wgslsmith_mult_vec2_u32(vec2<u32>(0u, u_input.c.x), u_input.c.zy))));
}

