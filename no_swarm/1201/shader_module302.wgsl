struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: bool,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: bool,
    d: vec4<bool>,
    e: vec2<bool>,
}

struct Struct_5 {
    a: bool,
    b: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 23> = array<u32, 23>(4294967295u, 120778u, 33439u, 98283u, 12042u, 0u, 38305u, 47283u, 6292u, 1u, 2706u, 4294967295u, 24449u, 1u, 0u, 4294967295u, 4294967295u, 0u, 34869u, 4294967295u, 14091u, 22185u, 4294967295u);

var<private> global1: vec4<bool> = vec4<bool>(false, false, true, true);

var<private> global2: bool;

var<private> global3: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-11122i, -19967i, 1i, -1i), vec4<i32>(25588i, 2147483647i, -2348i, 49145i), vec4<i32>(8109i, 47748i, 65493i, -13699i), vec4<i32>(-14468i, -5829i, 44200i, -8245i), vec4<i32>(26869i, i32(-2147483648), 15010i, 1i), vec4<i32>(12106i, -1i, 2147483647i, i32(-2147483648)), vec4<i32>(-10904i, -26225i, 1i, 5226i), vec4<i32>(2147483647i, -1584i, i32(-2147483648), -10824i));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> i32 {
    var var_0 = true;
    let var_1 = Struct_1(abs(global3[_wgslsmith_index_u32(min(~(~0u), _wgslsmith_sub_u32(0u, _wgslsmith_add_u32(u_input.a, u_input.a))), 8u)]), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a, _wgslsmith_mult_u32(~select(u_input.a, u_input.a, true), _wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(39908u, 23u)], 46388u) >> (vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(1u, 23u)]) % vec2<u32>(32u)), select(vec2<u32>(4294967295u, 48462u), vec2<u32>(u_input.a, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35166u, 23u)], 23u)], 23u)]), global1.yx)))), 8u)]);
    let var_2 = Struct_3(-792f, Struct_1(vec4<i32>(~(-var_1.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(50784i, var_1.a.x) >> (vec2<u32>(u_input.a, 82131u) % vec2<u32>(32u)), var_1.a.wx), 2147483647i, var_1.a.x | var_1.b.x), vec4<i32>(var_1.b.x, 11147i, reverseBits(62020i << (global0[_wgslsmith_index_u32(4294967295u, 23u)] % 32u)), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.b.x, var_1.a.x, var_1.a.x, var_1.a.x), global3[_wgslsmith_index_u32(u_input.a, 8u)]) & _wgslsmith_add_i32(-1i, var_1.b.x))), global1.x);
    var var_3 = select(select(!select(select(global1.xxy, global1.zzy, false), select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, var_2.c, var_2.c), true), var_2.c && false), !(!global1.zxz), global1.x && false), !(!global1.wxw), true);
    let var_4 = !select(!(!select(vec2<bool>(var_3.x, var_2.c), var_3.yy, vec2<bool>(false, global1.x))), var_3.yz, !var_3.yy);
    return _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_mod_vec4_i32(abs(var_2.b.b), vec4<i32>(var_2.b.a.x, -1i, var_2.b.b.x, var_1.b.x)), abs(_wgslsmith_div_vec4_i32(vec4<i32>(21733i, var_1.b.x, var_1.a.x, var_1.b.x), vec4<i32>(var_1.b.x, 1i, 0i, 9457i)))) | (-_wgslsmith_mod_vec4_i32(vec4<i32>(-1i, var_1.a.x, var_2.b.b.x, var_1.a.x), var_1.a) << (_wgslsmith_mod_vec4_u32(max(vec4<u32>(0u, 0u, 0u, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec4<u32>(4633u, 42479u, 4294967295u, 4294967295u)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 1u, u_input.a, 11310u), vec4<u32>(15494u, 3820u, global0[_wgslsmith_index_u32(0u, 23u)], u_input.a))) % vec4<u32>(32u))), vec4<i32>(var_2.b.a.x, _wgslsmith_add_i32(-var_2.b.a.x, countOneBits(var_2.b.a.x)), -42141i, _wgslsmith_sub_i32(-_wgslsmith_dot_vec4_i32(global3[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 8u)], var_1.a), firstLeadingBit(~1i))));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: vec3<f32>) -> vec3<bool> {
    var var_0 = arg_0;
    let var_1 = Struct_1(-global3[_wgslsmith_index_u32(reverseBits(1u) >> (0u % 32u), 8u)], vec4<i32>(reverseBits(42822i), func_3(), arg_0.x, _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(var_0.yx >> (vec2<u32>(28606u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a, 23u)], 23u)], 23u)]) % vec2<u32>(32u)), -arg_0.zz), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(-4211i, var_0.x, 26134i), _wgslsmith_dot_vec2_i32(var_0.yx, vec2<i32>(var_0.x, var_0.x))), -23383i)));
    var var_2 = reverseBits(var_1.b.yw) >> (vec2<u32>(1u, ~(~(global0[_wgslsmith_index_u32(32403u, 23u)] | 54659u))) % vec2<u32>(32u));
    var var_3 = select(global1.xy, select(!vec2<bool>(false, -1000f <= arg_2.x), select(vec2<bool>(all(vec4<bool>(true, false, global1.x, true)), all(vec2<bool>(global1.x, false))), select(vec2<bool>(global1.x, false), !vec2<bool>(global1.x, global1.x), all(global1.wxz)), select(select(global1.zw, global1.yz, global1.xw), global1.zw, !vec2<bool>(global1.x, false))), global1.x), vec2<bool>(arg_2.x <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1119f * -1600f) - _wgslsmith_f_op_f32(sign(1176f))), true));
    global1 = vec4<bool>(false, all(!vec3<bool>(all(global1.zy), var_3.x, var_3.x)), all(!global1.zzw), true);
    return !global1.xxw;
}

fn func_1(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_1(~(-abs(countOneBits(global3[_wgslsmith_index_u32(arg_2.x, 8u)]))), global3[_wgslsmith_index_u32(~15158u, 8u)]);
    global2 = all(!func_2(var_0.a.wwx >> (_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, global0[_wgslsmith_index_u32(arg_2.x, 23u)], global0[_wgslsmith_index_u32(70708u, 23u)]), vec3<u32>(u_input.a, 4294967295u, global0[_wgslsmith_index_u32(arg_2.x, 23u)])) % vec3<u32>(32u)), _wgslsmith_f_op_f32(791f - _wgslsmith_f_op_f32(-arg_0)), vec3<f32>(-802f, _wgslsmith_f_op_f32(1000f + -2779f), _wgslsmith_div_f32(1465f, -704f))));
    global2 = all(select(global1.ww, select(vec2<bool>(!arg_1.x, true), vec2<bool>(any(vec4<bool>(true, global1.x, false, arg_1.x)), arg_0 == arg_0), !(!arg_1.yy)), _wgslsmith_mult_i32(_wgslsmith_mult_i32(var_0.b.x, var_0.a.x), 29686i) != (min(-32545i, var_0.a.x) >> (~4294967295u % 32u))));
    var var_1 = Struct_2(vec2<bool>(false, any(vec4<bool>(true, true, arg_1.x | global1.x, arg_1.x == arg_1.x))), Struct_1(vec4<i32>(-2147483647i, ~(-2720i), max(countOneBits(var_0.b.x), func_3()), -34532i), vec4<i32>(max(~(-23141i), _wgslsmith_sub_i32(var_0.b.x, 21280i)), (var_0.a.x << (u_input.a % 32u)) | 1i, 0i, var_0.a.x)));
    var var_2 = arg_0;
    return ~36911u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = select(vec4<bool>(global1.x | all(global1.zzz), ~(u_input.a & 0u) == func_1(_wgslsmith_f_op_f32(f32(-1f) * -1831f), global1.wxx, vec2<u32>(38662u, u_input.a)), true, true), select(select(vec4<bool>(u_input.a != global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56538u, 23u)], 23u)], global1.x | true, true, true), !select(vec4<bool>(false, false, global1.x, true), vec4<bool>(true, global1.x, global1.x, false), vec4<bool>(true, true, global1.x, global1.x)), select(select(vec4<bool>(global1.x, false, global1.x, global1.x), vec4<bool>(global1.x, false, true, true), false), select(vec4<bool>(global1.x, global1.x, global1.x, false), vec4<bool>(true, global1.x, global1.x, global1.x), vec4<bool>(global1.x, global1.x, true, true)), global1.x == true)), vec4<bool>(global1.x, true & (global1.x == global1.x), global1.x, any(vec4<bool>(global1.x, global1.x, false, false))), select(!(!vec4<bool>(global1.x, global1.x, true, true)), vec4<bool>(true, global1.x, any(vec4<bool>(global1.x, false, true, true)), global1.x), all(vec4<bool>(global1.x, true, global1.x, global1.x)) | global1.x)), select(select(select(vec4<bool>(global1.x, global1.x, true, true), !vec4<bool>(global1.x, false, false, true), true), select(!vec4<bool>(true, false, false, global1.x), vec4<bool>(true, global1.x, global1.x, global1.x), all(vec2<bool>(global1.x, true))), true), select(vec4<bool>(true, global1.x, global1.x, true), vec4<bool>(all(vec4<bool>(global1.x, true, global1.x, true)), true, true, global1.x), !vec4<bool>(global1.x, global1.x, false, global1.x)), all(select(vec3<bool>(false, global1.x, false), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, true, false))) || global1.x));
    global2 = true;
    let var_0 = !global1.x;
    let var_1 = 168f;
    var var_2 = vec3<f32>(-305f, -170f, _wgslsmith_f_op_f32(2276f * -1202f));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-835f, -624f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-810f + 302f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -2189f)))), -604f), vec3<u32>(global0[_wgslsmith_index_u32(select(12346u, 54060u, !(u_input.a > global0[_wgslsmith_index_u32(1u, 23u)])), 23u)], global0[_wgslsmith_index_u32(min(~global0[_wgslsmith_index_u32(u_input.a, 23u)] & ~global0[_wgslsmith_index_u32(u_input.a, 23u)], countOneBits(4294967295u >> (0u % 32u))), 23u)], 1u), max(49283u, u_input.a >> (_wgslsmith_add_u32(97587u, u_input.a) % 32u)), ~1i, vec3<i32>(-abs(reverseBits(547i)), -abs(min(5027i, -2147483647i)), -(~max(-47540i, -2147483647i))));
}

