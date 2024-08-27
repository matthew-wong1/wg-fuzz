struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 26> = array<vec4<f32>, 26>(vec4<f32>(-1510f, -382f, -151f, 587f), vec4<f32>(-1495f, 486f, 1872f, -2147f), vec4<f32>(1000f, 1558f, -1090f, -123f), vec4<f32>(2033f, -2565f, -186f, -1084f), vec4<f32>(1000f, -563f, -1398f, 1392f), vec4<f32>(-915f, -896f, 288f, 378f), vec4<f32>(-1000f, -959f, 549f, 1443f), vec4<f32>(-331f, 431f, -566f, 553f), vec4<f32>(-1667f, -1209f, 538f, 895f), vec4<f32>(-1179f, 466f, -1000f, -1064f), vec4<f32>(-253f, -1296f, 246f, -1072f), vec4<f32>(-970f, -1875f, -189f, -625f), vec4<f32>(-1000f, -1698f, -156f, -626f), vec4<f32>(-395f, -1182f, 377f, -1156f), vec4<f32>(239f, 600f, 1401f, -559f), vec4<f32>(-2239f, -308f, -388f, 2117f), vec4<f32>(408f, 1009f, 314f, -190f), vec4<f32>(852f, -1198f, -1933f, 281f), vec4<f32>(-944f, -339f, 1175f, 663f), vec4<f32>(-1920f, -506f, 1030f, -247f), vec4<f32>(-908f, -976f, 725f, 904f), vec4<f32>(-1004f, -767f, -353f, 686f), vec4<f32>(110f, -1278f, 416f, -1253f), vec4<f32>(1988f, -252f, 1000f, 709f), vec4<f32>(2168f, 150f, 313f, -1176f), vec4<f32>(1000f, 1309f, -1000f, 377f));

var<private> global1: vec3<bool>;

var<private> global2: vec2<f32> = vec2<f32>(168f, -110f);

var<private> global3: u32;

var<private> global4: array<i32, 23> = array<i32, 23>(0i, 1i, 0i, 2147483647i, i32(-2147483648), 1i, -39161i, 2147483647i, 2147483647i, 0i, -1i, 0i, 1i, -9086i, 15150i, 13993i, -44067i, 2147483647i, -8316i, -32751i, 92492i, 7312i, 19665i);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    let var_0 = -201f;
    global1 = vec3<bool>(any(vec4<bool>(false, all(vec3<bool>(true, global1.x, false)), true, any(select(vec3<bool>(true, global1.x, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true))))), false, true);
    var var_1 = Struct_1(!(!select(global1.x, !global1.x, true)), vec3<f32>(_wgslsmith_f_op_f32(min(var_0, _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -323f))))), _wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0)), global2.x))), var_0), 4958u, u_input.d);
    var_1 = Struct_1(true, var_1.b, ~(~select(abs(1u), ~var_1.d, !global1.x)), 88991u);
    var var_2 = Struct_1(all(select(vec3<bool>(false, all(vec4<bool>(var_1.a, var_1.a, true, true)), !var_1.a), vec3<bool>(!var_1.a, 88381i <= u_input.b, any(vec4<bool>(var_1.a, var_1.a, false, false))), !any(global1.zx))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(var_1.b.x * -204f), -238f))), 0u, 105595u);
    return var_2.b.x;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<bool>, arg_2: f32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), global2.x)));
    let var_1 = -18042i;
    var var_2 = select(any(arg_1), !any(arg_1), any(!select(vec2<bool>(global1.x, false), !vec2<bool>(true, global1.x), true)));
    let var_3 = u_input.e;
    var var_4 = min(1u, ~(abs(arg_0.x) | select(arg_0.x, ~arg_0.x, all(vec2<bool>(arg_1.x, false)))));
    return Struct_1(~4294967295u == _wgslsmith_clamp_u32(arg_0.x, ~(~1u), _wgslsmith_clamp_u32(977u, _wgslsmith_div_u32(u_input.d, 491u), 4294967295u)), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global2.x)) - _wgslsmith_f_op_f32(trunc(global2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1341f, arg_2))), _wgslsmith_f_op_f32(step(arg_2, -195f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_2, 730f), global2.x, global2.x) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global2.x, arg_2, global2.x), vec3<f32>(arg_2, global2.x, global2.x))))), _wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(15762u, 80350u)) | u_input.a.zz, _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(arg_0.xx, max(arg_0.yx, u_input.a.xw)), abs(vec2<u32>(arg_0.x, 618u)))), _wgslsmith_dot_vec2_u32(select(vec2<u32>(~0u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.a.x, arg_0.x), u_input.a)), countOneBits(vec2<u32>(u_input.a.x, 145738u)), select(!arg_1.x, !arg_1.x, true)), _wgslsmith_add_vec2_u32(u_input.a.ww, vec2<u32>(u_input.c, 1u) | u_input.a.yx) & vec2<u32>(reverseBits(arg_0.x), 15344u)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(firstTrailingBit(~1u | (u_input.c >> (32493u % 32u))) <= (_wgslsmith_dot_vec4_u32(vec4<u32>(106091u, u_input.c, u_input.d, 1u), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, u_input.c, u_input.a.x))) ^ countOneBits(_wgslsmith_sub_u32(u_input.d, u_input.c))), vec3<f32>(-567f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global2.x) * _wgslsmith_div_f32(global2.x, 1178f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, global2.x))), 8157u, _wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c, u_input.d), u_input.a.x));
    var var_1 = func_2(u_input.a.wxw, vec4<bool>(true, var_0.a, true, true), _wgslsmith_f_op_f32(ceil(var_0.b.x)));
    let var_2 = !vec4<bool>(!any(select(vec4<bool>(var_1.a, true, global1.x, false), vec4<bool>(true, var_0.a, var_0.a, global1.x), vec4<bool>(true, false, true, var_1.a))), u_input.e <= firstTrailingBit(1i), any(!vec3<bool>(var_1.a, global1.x, global1.x)), true & var_0.a);
    global3 = ~var_1.d;
    global1 = !(!(!vec3<bool>(all(var_2), false, !global1.x)));
    return Struct_1(true, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.b.x, var_0.b.x)) * var_1.b)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(var_1.b)), vec3<f32>(_wgslsmith_f_op_f32(ceil(-1324f)), -144f, _wgslsmith_f_op_f32(sign(global2.x))), vec3<bool>(any(vec3<bool>(false, var_0.a, global1.x)), true & global1.x, any(vec3<bool>(var_1.a, false, var_1.a))))))), 18519u, 64750u);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = array<vec4<f32>, 26>();
    let var_0 = _wgslsmith_sub_i32(-71987i, abs(2147483647i ^ ~firstTrailingBit(u_input.e)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3()));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b.x, 161f, -748f, global2.x) * _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(arg_0.d, 26u)] * global0[_wgslsmith_index_u32(arg_0.c, 26u)])))))) + vec4<f32>(1235f, global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, arg_0.b.x, false)))), 1f));
    var var_3 = true;
    return Struct_1(true, _wgslsmith_f_op_vec3_f32(arg_0.b + _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, 1000f, 996f))))), func_1().d, ~28131u ^ arg_0.c);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = u_input.c;
    var var_0 = func_4(func_1());
    global2 = vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(floor(-1278f)));
    var var_1 = Struct_1(global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.b + var_0.b) + _wgslsmith_f_op_vec3_f32(max(var_0.b, func_1().b))), 4294967295u, func_1().d);
    global0 = array<vec4<f32>, 26>();
    var var_2 = Struct_1(var_0.a, _wgslsmith_div_vec3_f32(var_1.b, vec3<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3()), -345f)))), ~u_input.d, 0u);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f - var_0.b.x)) + 261f) + _wgslsmith_f_op_f32(-func_4(Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.b.x, 974f, -987f) - var_1.b), var_2.c, ~0u)).b.x));
    let var_4 = vec3<i32>(u_input.e, u_input.b, ~(countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(-34181i, u_input.b), vec2<i32>(2147483647i, global4[_wgslsmith_index_u32(11082u, 23u)]))) | reverseBits(-31902i)));
    let var_5 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_mod_i32(firstLeadingBit(u_input.b), select(41703i, 34966i, var_1.a)), 0i) > ~(max(6915i, 1i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(0u, var_2.c, var_2.c, var_2.c), vec4<u32>(69710u, var_0.d, var_0.c, var_0.d)) % 32u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b)), var_1.d, var_2.c);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(_wgslsmith_mult_i32(global4[_wgslsmith_index_u32(~(~var_5.c), 23u)], u_input.b)), vec2<i32>(0i, -1i));
}

