struct Struct_1 {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: bool,
    d: u32,
    e: vec2<f32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: vec3<bool>;

var<private> global2: array<vec4<u32>, 6>;

var<private> global3: array<vec3<f32>, 23> = array<vec3<f32>, 23>(vec3<f32>(281f, -810f, -1904f), vec3<f32>(-1000f, 2055f, 311f), vec3<f32>(557f, 198f, 1259f), vec3<f32>(-541f, -117f, 104f), vec3<f32>(-1159f, 2123f, 925f), vec3<f32>(-554f, 789f, -1000f), vec3<f32>(997f, 279f, 769f), vec3<f32>(861f, 1053f, 131f), vec3<f32>(-221f, -373f, 284f), vec3<f32>(-735f, -190f, -297f), vec3<f32>(-844f, -541f, 549f), vec3<f32>(859f, 1077f, -697f), vec3<f32>(-1620f, 2105f, 447f), vec3<f32>(1000f, -683f, -1538f), vec3<f32>(-488f, -200f, -639f), vec3<f32>(1000f, -1000f, 556f), vec3<f32>(781f, 1338f, -108f), vec3<f32>(948f, 172f, 1500f), vec3<f32>(893f, 822f, -1000f), vec3<f32>(-401f, -1000f, 450f), vec3<f32>(509f, 638f, 157f), vec3<f32>(2580f, -827f, 1000f), vec3<f32>(722f, -1073f, 660f));

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<u32> {
    global0 = array<bool, 3>();
    global2 = array<vec4<u32>, 6>();
    global0 = array<bool, 3>();
    var var_0 = Struct_1(_wgslsmith_div_vec2_i32(~(vec2<i32>(1i, 1i) | _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, 41123i), vec2<i32>(-8288i, 5008i), vec2<i32>(1i, -21276i))), -(~vec2<i32>(15430i, 7696i)) << (firstTrailingBit(~vec2<u32>(u_input.a, 1u)) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-801f, _wgslsmith_f_op_f32(ceil(-621f)))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -150f)))))), select(select(~u_input.a, ~min(1u, u_input.a), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(global2[_wgslsmith_index_u32(u_input.a, 6u)], global2[_wgslsmith_index_u32(2556u, 6u)], global1.x), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u), global2[_wgslsmith_index_u32(0u, 6u)]), 6u)]), 3u)]), ~u_input.a, true | any(!global1.xz)));
    var var_1 = vec3<u32>(firstTrailingBit(countOneBits(var_0.c)) >> (max(_wgslsmith_mod_u32(13855u, ~19200u), ~_wgslsmith_add_u32(0u, var_0.c)) % 32u), 1u, 4294967295u);
    return _wgslsmith_clamp_vec4_u32(vec4<u32>(min(4294967295u, ~select(u_input.a, 3592u, global0[_wgslsmith_index_u32(var_0.c, 3u)])), ~(~_wgslsmith_clamp_u32(4294967295u, 34418u, 1u)), _wgslsmith_clamp_u32(0u, firstTrailingBit(var_0.c << (50376u % 32u)), 1u), 23531u), global2[_wgslsmith_index_u32(0u, 6u)], vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 52727u, var_1.x) << (~vec3<u32>(var_1.x, 35562u, 34446u) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(52705u, u_input.a, var_1.x), vec3<u32>(4294967295u, 14880u, var_0.c))), 1u, min(var_1.x << ((var_1.x >> (var_0.c % 32u)) % 32u), _wgslsmith_add_u32(var_0.c, 40149u)), _wgslsmith_mod_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(var_0.c, u_input.a), _wgslsmith_mult_u32(18796u, 1u)), u_input.a)));
}

fn func_2(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_2) -> i32 {
    let var_0 = _wgslsmith_add_vec3_u32(~abs(~arg_1) >> (abs(_wgslsmith_mod_vec3_u32(arg_1, countOneBits(vec3<u32>(79978u, arg_3.d, 14310u)))) % vec3<u32>(32u)), vec3<u32>(~max(_wgslsmith_add_u32(arg_2.d, arg_2.d), arg_3.d), _wgslsmith_mod_u32(abs(42334u), abs(_wgslsmith_mod_u32(4294967295u, arg_1.x))), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_2.d, u_input.a, arg_2.d), arg_1))));
    var var_1 = ~func_3();
    let var_2 = countOneBits(vec4<i32>(53251i, ~abs(_wgslsmith_sub_i32(arg_3.b.x, 2147483647i)), select(_wgslsmith_sub_i32(abs(arg_3.b.x), arg_0), -(~1i), -252f >= _wgslsmith_f_op_f32(max(arg_3.a.x, arg_3.a.x))), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-41955i, -42297i, arg_3.b.x) >> (vec3<u32>(1u, var_1.x, arg_2.d) % vec3<u32>(32u))), vec3<i32>(firstLeadingBit(arg_2.b.x), _wgslsmith_dot_vec3_i32(arg_3.b, arg_2.b), _wgslsmith_mod_i32(-28496i, arg_3.b.x)))));
    global2 = array<vec4<u32>, 6>();
    var var_3 = ~22458i;
    return _wgslsmith_div_i32(arg_3.b.x, -2147483647i);
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = global0[_wgslsmith_index_u32(~min(abs(u_input.a), 75281u), 3u)];
    global3 = array<vec3<f32>, 23>();
    var var_1 = -arg_0.b.x;
    var var_2 = Struct_4(-vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-26342i, arg_0.b.x), arg_0.b.xx, true), arg_0.b.zx), arg_0.b.x, -27071i << (u_input.a % 32u)));
    global0 = array<bool, 3>();
    return Struct_2(global3[_wgslsmith_index_u32(abs(u_input.a), 23u)], abs(~(-vec3<i32>(71106i, -24232i, var_2.a.x))), all(vec2<bool>(all(select(vec3<bool>(true, global1.x, true), vec3<bool>(global0[_wgslsmith_index_u32(15277u, 3u)], true, global0[_wgslsmith_index_u32(arg_0.d, 3u)]), vec3<bool>(global1.x, true, true))), arg_0.c)), _wgslsmith_dot_vec4_u32((global2[_wgslsmith_index_u32(countOneBits(u_input.a), 6u)] & (vec4<u32>(0u, 11529u, arg_0.d, u_input.a) | global2[_wgslsmith_index_u32(0u, 6u)])) | (select(global2[_wgslsmith_index_u32(113359u, 6u)], global2[_wgslsmith_index_u32(0u, 6u)], global0[_wgslsmith_index_u32(arg_0.d, 3u)]) | vec4<u32>(29539u, 4294967295u, 79330u, arg_0.d)), global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_div_u32(1u, select(u_input.a, u_input.a, true))), 6u)]), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1325f))), _wgslsmith_div_f32(arg_0.e.x, _wgslsmith_f_op_f32(sign(arg_0.a.x))), !global0[_wgslsmith_index_u32(~arg_0.d, 3u)]))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: f32) -> u32 {
    var var_0 = Struct_3(arg_1.a);
    var var_1 = arg_0.c;
    let var_2 = _wgslsmith_sub_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 0u, 1u), vec3<u32>(u_input.a, 4294967295u, 66630u)), vec3<u32>(arg_0.c, 34865u, 33031u)), ~(~(~4294967295u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(arg_0.c, arg_0.c), vec2<u32>(1u, 4294967295u)) ^ min(vec2<u32>(~u_input.a, u_input.a << (0u % 32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4690u, arg_0.c, arg_0.c), vec3<u32>(6675u, arg_0.c, arg_0.c)), _wgslsmith_add_u32(21351u, 0u))));
    var var_3 = func_4(Struct_2(arg_2.xww, ~vec3<i32>(~arg_0.a.x, _wgslsmith_div_i32(arg_0.a.x, 80076i), ~arg_0.a.x), ((i32(-1i) * -30088i) ^ func_2(arg_0.a.x, vec3<u32>(var_2.x, arg_0.c, 4294967295u), Struct_2(vec3<f32>(147f, 1490f, arg_0.b.x), vec3<i32>(arg_0.a.x, -1i, arg_0.a.x), false, 23565u, arg_2.yz), Struct_2(arg_2.xyz, vec3<i32>(arg_0.a.x, arg_0.a.x, -14428i), true, arg_0.c, arg_2.xy))) >= -(~(-1007i)), 98011u, vec2<f32>(1456f, arg_3)));
    let var_4 = arg_1;
    return var_3.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-839f, _wgslsmith_div_f32(-717f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1037f)) * -1010f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1184f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(554f * -471f) + _wgslsmith_f_op_f32(min(-898f, -1000f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1348f)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(1u, 23u)] + vec3<f32>(var_0.x, -820f, var_0.x)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 125f, -343f) * var_0.zyz))))), -reverseBits(_wgslsmith_mult_vec3_i32(vec3<i32>(31993i, 35505i, 1i), -vec3<i32>(-9457i, -8827i, 9713i))), true, ~_wgslsmith_sub_u32(u_input.a, 0u), var_0.ww);
    global0 = array<bool, 3>();
    let var_2 = ~(~var_1.d);
    var var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(~4294967295u, _wgslsmith_add_u32(countOneBits(func_1(Struct_1(var_1.b.yy, var_0.wz, 20686u), Struct_3(var_0.x), vec4<f32>(-1286f, 1205f, 1188f, var_1.a.x), var_1.a.x)), var_1.d)), ~_wgslsmith_mod_vec2_u32(~vec2<u32>(1u, var_1.d), vec2<u32>(var_2, func_1(Struct_1(vec2<i32>(var_1.b.x, var_1.b.x), var_1.a.zz, 0u), Struct_3(722f), vec4<f32>(-1453f, 899f, var_0.x, var_0.x), -515f))));
    var var_4 = var_2;
    var var_5 = Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_1.a.x, 1116f, global1.x)))), _wgslsmith_f_op_f32(sign(var_1.e.x))));
    global0 = array<bool, 3>();
    var_5 = Struct_3(_wgslsmith_f_op_f32(-var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(_wgslsmith_mod_u32(9768u, 42278u), var_2, 1u | var_2), _wgslsmith_mod_vec2_i32(min(var_1.b.zz, _wgslsmith_mod_vec2_i32(var_1.b.xy, var_1.b.zz)), ~(_wgslsmith_mult_vec2_i32(var_1.b.yx, var_1.b.xx) >> (vec2<u32>(4294967295u, u_input.a) % vec2<u32>(32u)))));
}

