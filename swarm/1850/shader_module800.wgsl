struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: f32,
    b: Struct_3,
    c: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: Struct_3 = Struct_3(95136u);

var<private> global2: array<bool, 8>;

var<private> global3: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(-922f, vec2<i32>(-38130i, 4629i)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    var var_0 = firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.b.x, arg_0.a), -global0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, u_input.b.x, 22140i, 1i), vec4<i32>(25806i, 1i, u_input.b.x, -24111i))), select(~global0.x, abs(1i), any(arg_0.d.zxz)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(25799i, 2147483647i, -1i), vec3<i32>(arg_0.a, -14145i, global0.x)), -1i), u_input.b.x), abs(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, global0.x), vec3<i32>(global0.x, 1i, global0.x)), u_input.b.x & -1i, 18928i, ~(-1i)))));
    global1 = Struct_3(reverseBits(0u));
    global2 = array<bool, 8>();
    global0 = -u_input.b.zx & (vec2<i32>(-1i) * -firstTrailingBit(-vec2<i32>(arg_0.a, global0.x)));
    return ~countOneBits(arg_0.a);
}

fn func_2() -> Struct_3 {
    global0 = max(min(vec2<i32>(max(global0.x, global0.x), i32(-1i) * -45105i), reverseBits(u_input.b.xz)), vec2<i32>(reverseBits(1i), 2147483647i));
    var var_0 = select(min(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(global0.x, -1i, global0.x)), u_input.b), u_input.b) | vec3<i32>(~_wgslsmith_mod_i32(0i, global0.x), 31957i, func_3(Struct_1(-1i, -1446f, -1000f, vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true)))), u_input.b, vec3<bool>(all(vec2<bool>(false, true)) && false, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.a, u_input.a.x), 8u)], select(false, any(vec3<bool>(true, true, true)), min(12510u, 1u) < _wgslsmith_add_u32(29380u, u_input.a.x))));
    var var_1 = select(!select(select(select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(global1.a, 8u)], global2[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(global1.a, 8u)], true, true, global2[_wgslsmith_index_u32(12335u, 8u)]), true), vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], false, global2[_wgslsmith_index_u32(global1.a, 8u)], true), select(vec4<bool>(global2[_wgslsmith_index_u32(1u, 8u)], true, false, false), vec4<bool>(false, true, global2[_wgslsmith_index_u32(1u, 8u)], global2[_wgslsmith_index_u32(1u, 8u)]), false)), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(global1.a, 8u)], false, false)), true), vec4<bool>(all(select(select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], false, false), vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true, global2[_wgslsmith_index_u32(1u, 8u)]), vec3<bool>(false, true, true)), !vec3<bool>(true, global2[_wgslsmith_index_u32(global1.a, 8u)], global2[_wgslsmith_index_u32(global1.a, 8u)]), global1.a < 4294967295u)), !all(select(vec3<bool>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global1.a, 8u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(11382u, 8u)], false), vec3<bool>(false, true, global2[_wgslsmith_index_u32(global1.a, 8u)]))), true, select(global2[_wgslsmith_index_u32(global1.a, 8u)], (4294967295u | global1.a) >= (17371u << (global1.a % 32u)), any(!vec2<bool>(true, global2[_wgslsmith_index_u32(0u, 8u)])))), select(vec4<bool>(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(global1.a, 63201u) << (~u_input.a.x % 32u), 8u)], any(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(u_input.a.x, 8u)], global2[_wgslsmith_index_u32(99167u, 8u)])), firstTrailingBit(global1.a) == ~global1.a, all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true, false))), !vec4<bool>(true, true, false, !global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), true));
    let var_2 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1334f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(539f, 524f, true)) * _wgslsmith_f_op_f32(-2314f * 1000f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1144f), _wgslsmith_f_op_f32(171f + -365f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(436f, -1277f))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-879f, -538f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-656f, 1056f) + vec2<f32>(645f, 1755f)), var_1.wx))))));
    var var_3 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.x * var_2.x), _wgslsmith_f_op_f32(var_2.x - 1202f))))) - -166f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.x, 1887f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(var_2.x, var_2.x, all(vec4<bool>(true, true, false, var_1.x)))))))));
    return Struct_3(_wgslsmith_mult_u32(1u, 983u));
}

fn func_4(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = Struct_1(-1i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-817f)), _wgslsmith_f_op_f32(arg_3.a * arg_3.a)))), _wgslsmith_f_op_f32(f32(-1f) * -193f), select(select(!(!vec4<bool>(global2[_wgslsmith_index_u32(0u, 8u)], global2[_wgslsmith_index_u32(global1.a, 8u)], false, false)), vec4<bool>(global2[_wgslsmith_index_u32(100890u, 8u)], false, global2[_wgslsmith_index_u32(~888u, 8u)], global2[_wgslsmith_index_u32(countOneBits(u_input.a.x), 8u)]), vec4<bool>(global2[_wgslsmith_index_u32(global1.a, 8u)] | false, global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true, arg_2 >= -44462i)), select(select(vec4<bool>(true, false, true, true), !vec4<bool>(global2[_wgslsmith_index_u32(arg_0.a, 8u)], false, true, true), vec4<bool>(global2[_wgslsmith_index_u32(25458u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(32173u, 8u)], global2[_wgslsmith_index_u32(16019u, 8u)])), !(!vec4<bool>(false, true, global2[_wgslsmith_index_u32(4294967295u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)])), false), any(select(!vec3<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 8u)], true, global2[_wgslsmith_index_u32(u_input.a.x, 8u)]), !vec3<bool>(global2[_wgslsmith_index_u32(global1.a, 8u)], global2[_wgslsmith_index_u32(16575u, 8u)], global2[_wgslsmith_index_u32(4294967295u, 8u)]), select(vec3<bool>(true, false, global2[_wgslsmith_index_u32(arg_0.a, 8u)]), vec3<bool>(false, false, false), vec3<bool>(global2[_wgslsmith_index_u32(global1.a, 8u)], true, global2[_wgslsmith_index_u32(global1.a, 8u)]))))));
    var_0 = Struct_1(max(global0.x, arg_2), 730f, 1667f, var_0.d);
    global0 = u_input.b.xy;
    global2 = array<bool, 8>();
    var var_1 = Struct_3(reverseBits(_wgslsmith_dot_vec4_u32(~u_input.a, reverseBits(u_input.a))));
    return Struct_1(max(reverseBits(-2147483647i), 1i), _wgslsmith_f_op_f32(-367f + 865f), 693f, vec4<bool>(select(true, _wgslsmith_f_op_f32(f32(-1f) * -1262f) <= _wgslsmith_f_op_f32(ceil(-485f)), any(vec3<bool>(var_0.d.x, global2[_wgslsmith_index_u32(global1.a, 8u)], true))), any(vec3<bool>(true, !global2[_wgslsmith_index_u32(0u, 8u)], false)), all(var_0.d.wz), var_0.d.x));
}

fn func_1(arg_0: vec3<bool>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(967f, _wgslsmith_f_op_f32(-113f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-568f, _wgslsmith_f_op_f32(select(584f, -2419f, true)))))));
    let var_1 = func_4(func_2(), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(572f, -1083f, 1218f), _wgslsmith_div_vec3_f32(vec3<f32>(1598f, 236f, -2110f), vec3<f32>(-471f, 505f, -357f)), arg_0)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-617f, -701f, 2221f) * vec3<f32>(-1003f, 519f, -688f)))), _wgslsmith_mult_i32(~(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(global0.x, 12686i)) | -2279i), u_input.b.x & 1i), global3[_wgslsmith_index_u32(1u, 1u)]);
    var var_2 = u_input.a.x;
    var var_3 = vec2<f32>(_wgslsmith_f_op_f32(func_4(func_2(), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_1.c, -213f, 238f))), 2147483647i, global3[_wgslsmith_index_u32(reverseBits(3045u), 1u)]).c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c))) + 695f)), 1398f);
    var var_4 = 6355u;
    return !(!(!arg_0));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: vec3<bool>, arg_3: vec2<bool>) -> bool {
    global2 = array<bool, 8>();
    global3 = array<Struct_2, 1>();
    var var_0 = -42217i >> (_wgslsmith_mod_u32(func_2().a ^ global1.a, min(u_input.a.x, u_input.a.x << ((global1.a & 10154u) % 32u))) % 32u);
    global3 = array<Struct_2, 1>();
    let var_1 = Struct_3(0u);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(u_input.b.x, ~(-(~(~(-2147483647i)))));
    var var_1 = func_5(Struct_2(1f, u_input.b.xx), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1480f, 1705f, -223f) * _wgslsmith_div_vec3_f32(vec3<f32>(297f, 199f, -376f), vec3<f32>(-560f, -199f, -622f))))), func_1(!(!vec3<bool>(true, global2[_wgslsmith_index_u32(4294967295u, 8u)], true))), !vec2<bool>(global2[_wgslsmith_index_u32(~global1.a | ~u_input.a.x, 8u)], true));
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(countOneBits(1u), _wgslsmith_mod_u32(global1.a >> (u_input.a.x % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, 4294967295u, global1.a), u_input.a.xzz))), countOneBits(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a.x, 0u), 0u)), global1.a), _wgslsmith_mult_vec3_u32(u_input.a.zzy, u_input.a.wyz));
    var var_3 = Struct_1(~(-_wgslsmith_dot_vec2_i32(~u_input.b.yy, vec2<i32>(var_0, 67787i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -729f), _wgslsmith_f_op_f32(max(423f, -1045f))))))), _wgslsmith_f_op_f32(-380f - 1f), !func_4(func_2(), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, -1822f, 1362f) * vec3<f32>(522f, -730f, 1105f)), ~(~global0.x), Struct_2(-186f, -u_input.b.zz)).d);
    let var_4 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(29891u);
}

