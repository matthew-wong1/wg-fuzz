struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: i32,
    c: i32,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_2 = Struct_2(vec2<i32>(4897i, 6007i), 366f, -18367i, vec3<u32>(1u, 56911u, 1u));

var<private> global2: array<f32, 3>;

var<private> global3: Struct_3 = Struct_3(vec4<bool>(false, true, true, true), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), -1064f, 1i, vec3<u32>(1u, 38050u, 3414u)));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2() -> Struct_2 {
    global0 = global3.b;
    global0 = global3.b;
    global3 = Struct_3(vec4<bool>(false, !global3.a.x, all(global3.a.yxy), false), Struct_2(vec2<i32>(-68375i, -global0.a.x | global3.b.c), 1020f, -2147483647i, vec3<u32>(global0.d.x, global3.b.d.x ^ 4294967295u, reverseBits(3150u)) ^ global0.d));
    global1 = Struct_2(-vec2<i32>(min(47389i, 1i), -1i) ^ vec2<i32>(global3.b.a.x, -(~u_input.d.x)), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.b.b, _wgslsmith_f_op_f32(-1000f + 240f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1072f)) - global3.b.b))), 1i, vec3<u32>(global3.b.d.x, u_input.c, global1.d.x));
    global0 = global3.b;
    return Struct_2(vec2<i32>(-1i) * -vec2<i32>(-u_input.a, global3.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) * _wgslsmith_f_op_f32(trunc(global0.b))))), ~(-1i), abs(~max(global3.b.d | vec3<u32>(42833u, u_input.c, global3.b.d.x), global3.b.d)));
}

fn func_3(arg_0: i32) -> u32 {
    return 36921u;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_3) -> Struct_4 {
    global1 = Struct_2(arg_1.b.a, _wgslsmith_f_op_f32(-266f * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-142f + -957f), global0.b) - -936f)), ~_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(global3.b.a.x, global1.a.x, global3.b.c), _wgslsmith_dot_vec4_i32(vec4<i32>(27767i, global0.c, -1i, -2147483647i), vec4<i32>(-19599i, -2695i, arg_1.b.c, global0.a.x)), global3.b.c, global3.b.a.x), vec4<i32>(-2147483647i, global3.b.c, u_input.d.x, -64636i) >> (vec4<u32>(0u, 19721u, 4294967295u, 0u) % vec4<u32>(32u))), arg_1.b.d);
    var var_0 = !(!(firstTrailingBit(u_input.a) < ~abs(1i)));
    var_0 = any(vec2<bool>(arg_1.a.x, true));
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(~(arg_0.x & 38479u), 3u)], 1f, _wgslsmith_f_op_f32(global3.b.b - global1.b)) - vec3<f32>(_wgslsmith_div_f32(440f, global0.b), -2340f, -678f));
    global0 = func_2();
    return Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(20351u, _wgslsmith_div_u32(func_3(_wgslsmith_mult_i32(0i, global0.c)), arg_0.x)), 3u)], ~(-(i32(-1i) * -1i)) >> (0u % 32u), 37976i, Struct_3(arg_1.a, func_2()), var_1.zz);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_2 {
    global1 = arg_1.d.b;
    let var_0 = _wgslsmith_add_u32(global1.d.x, u_input.b.x);
    let var_1 = ~1u;
    var var_2 = !func_1(vec2<u32>(var_0, 4294967295u), arg_0.d).d.a;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -244f), -676f, global2[_wgslsmith_index_u32(global3.b.d.x, 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x + _wgslsmith_f_op_f32(arg_1.d.b.b + -645f))) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-699f + 1602f))))));
    return arg_1.d.b;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2, arg_3: bool) -> bool {
    let var_0 = arg_0;
    global3 = func_1(max(~arg_1.d.xy, ~_wgslsmith_mod_vec2_u32(~arg_1.d.xx, vec2<u32>(1u, 18489u))), func_1(~(~abs(global0.d.zz)), func_1(func_2().d.xz, Struct_3(global3.a, func_2())).d).d).d;
    var var_1 = firstLeadingBit(arg_1.d.x);
    let var_2 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, _wgslsmith_div_u32(3661u, 53011u), abs(global0.d.x)), vec3<u32>(arg_0.e, _wgslsmith_sub_u32(4294967295u, 47978u), func_2().d.x)), 1u, 36625u, firstLeadingBit(func_4(Struct_4(global3.b.b, -1i, 2147483647i, Struct_3(global3.a, Struct_2(vec2<i32>(5025i, -2205i), global3.b.b, global0.c, vec3<u32>(4294967295u, var_0.e, global0.d.x))), vec2<f32>(-1770f, arg_0.a.x)), Struct_4(-1395f, -54014i, arg_2.a.x, Struct_3(global3.a, Struct_2(var_0.b, arg_2.b, -1i, arg_2.d)), arg_0.d.wy), vec2<f32>(global0.b, arg_1.b), arg_0).d.x)), ~vec4<u32>(_wgslsmith_add_u32(global3.b.d.x, 1u) << (~37809u % 32u), 48780u, ~arg_1.d.x, var_0.e << (_wgslsmith_mult_u32(arg_0.e, 5397u) % 32u)));
    global2 = array<f32, 3>();
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(vec4<bool>(func_5(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.b, global2[_wgslsmith_index_u32(u_input.b.x, 3u)], -1984f, global2[_wgslsmith_index_u32(global1.d.x, 3u)])), vec2<i32>(global1.a.x, -36068i), vec3<f32>(global3.b.b, global2[_wgslsmith_index_u32(global1.d.x, 3u)], 1187f), vec4<f32>(global0.b, -247f, global3.b.b, 636f), ~24338u), Struct_2(u_input.d.yw, global2[_wgslsmith_index_u32(global3.b.d.x, 3u)], global0.a.x, vec3<u32>(0u, 70762u, 4294967295u)), func_4(Struct_4(1346f, global1.c, -54342i, Struct_3(vec4<bool>(global3.a.x, global3.a.x, global3.a.x, false), Struct_2(global1.a, global1.b, u_input.d.x, vec3<u32>(4405u, global1.d.x, 5408u))), vec2<f32>(global1.b, global3.b.b)), func_1(vec2<u32>(global3.b.d.x, u_input.c), Struct_3(global3.a, global3.b)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(239f, -525f))), Struct_1(vec4<f32>(global1.b, global0.b, global2[_wgslsmith_index_u32(u_input.c, 3u)], 1238f), global1.a, vec3<f32>(-1988f, -272f, global0.b), vec4<f32>(global3.b.b, global3.b.b, -1000f, global2[_wgslsmith_index_u32(u_input.c, 3u)]), 0u)), !any(vec3<bool>(global3.a.x, global3.a.x, true))), false && (u_input.c != 23455u), false, true), global3.b);
    var var_1 = Struct_3(global3.a, global3.b);
    var var_2 = var_0.a;
    var var_3 = func_4(Struct_4(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_0.b.b)), global3.b.b)), max(max(0i, -23365i), ~global1.a.x), global0.a.x >> (~abs(28716u) % 32u), func_1(abs(global3.b.d.zz) | (var_1.b.d.yz << (vec2<u32>(48580u, var_0.b.d.x) % vec2<u32>(32u))), Struct_3(vec4<bool>(var_2.x, global3.a.x, false, global3.a.x), Struct_2(vec2<i32>(global3.b.a.x, 17620i), global3.b.b, u_input.a, global1.d))).d, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0.b, var_0.b.b), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(663f, var_0.b.b))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-286f, -1358f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(global3.b.b, 292f) - vec2<f32>(-1000f, global0.b))))), Struct_4(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-604f, _wgslsmith_f_op_f32(-var_0.b.b)) + -1026f), reverseBits(-(14749i ^ global1.c)), u_input.a << (var_0.b.d.x % 32u), func_1(~reverseBits(var_0.b.d.yy), Struct_3(vec4<bool>(false, true, var_1.a.x, true), func_2())).d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_1.b.b, 937f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -440f) + vec2<f32>(-878f, -212f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b.b, -207f)))) * vec2<f32>(589f, global3.b.b)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.b, global2[_wgslsmith_index_u32(58631u, 3u)], global2[_wgslsmith_index_u32(var_0.b.d.x, 3u)], 126f), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1511f, -222f, -1222f, global2[_wgslsmith_index_u32(global3.b.d.x, 3u)])))))), vec2<i32>(_wgslsmith_div_i32(global1.a.x >> (180u % 32u), _wgslsmith_dot_vec2_i32(var_1.b.a, vec2<i32>(global0.a.x, 29489i))), 0i), vec3<f32>(global1.b, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.b.b))), _wgslsmith_f_op_f32(f32(-1f) * -349f)), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -239f))), _wgslsmith_f_op_f32(-func_2().b), var_0.b.b, global0.b), ~(~50273u & ~var_0.b.d.x)));
    var var_4 = func_1(var_0.b.d.xy, func_1(var_1.b.d.yz, Struct_3(var_1.a, var_0.b)).d).d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(-2147483647i, _wgslsmith_mult_i32(global0.c, 2147483647i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-190f, global2[_wgslsmith_index_u32(1u, 3u)], 653f, global0.b))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b, 1659f, -145f, -972f) - vec4<f32>(global3.b.b, var_4.b.b, global2[_wgslsmith_index_u32(var_4.b.d.x, 3u)], 1055f))) + vec4<f32>(_wgslsmith_f_op_f32(-var_3.b), _wgslsmith_f_op_f32(-1248f * var_4.b.b), _wgslsmith_div_f32(var_3.b, var_1.b.b), func_4(Struct_4(1325f, var_1.b.a.x, 25526i, Struct_3(var_0.a, global3.b), vec2<f32>(global3.b.b, global3.b.b)), Struct_4(1013f, 26360i, -12981i, Struct_3(var_1.a, var_1.b), vec2<f32>(var_4.b.b, global3.b.b)), vec2<f32>(840f, -702f), Struct_1(vec4<f32>(global0.b, -710f, -2221f, -490f), vec2<i32>(2147483647i, global3.b.a.x), vec3<f32>(1763f, global0.b, 1835f), vec4<f32>(var_1.b.b, -249f, global1.b, var_4.b.b), 9194u)).b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-535f, 865f, var_3.b, 283f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_0.b.b), var_3.b) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1764f, 528f)) + func_1(vec2<u32>(var_3.d.x, u_input.b.x), Struct_3(var_4.a, global3.b)).e))), 0u);
}

