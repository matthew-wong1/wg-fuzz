struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27>;

var<private> global1: array<bool, 9>;

var<private> global2: vec4<u32> = vec4<u32>(6857u, 4294967295u, 34985u, 0u);

var<private> global3: array<Struct_4, 8>;

var<private> global4: vec2<i32> = vec2<i32>(-4291i, 18320i);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_1(arg_0: vec4<u32>) -> i32 {
    global3 = array<Struct_4, 8>();
    global1 = array<bool, 9>();
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(857f)), _wgslsmith_f_op_f32(f32(-1f) * -976f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))))));
    let var_1 = min(vec2<i32>(global4.x >> (max(u_input.a.x, arg_0.x >> (u_input.a.x % 32u)) % 32u), -2147483647i), global0[_wgslsmith_index_u32(global2.x, 27u)]);
    global0 = array<vec2<i32>, 27>();
    return u_input.c.x;
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(75893u, 8u)];
    var var_1 = global1[_wgslsmith_index_u32(arg_2.a, 9u)] & arg_2.c.x;
    global0 = array<vec2<i32>, 27>();
    var var_2 = u_input.a.zyy & global2.yww;
    var var_3 = Struct_4(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(~global2.wx, ~var_2.yx), var_0.a) << (vec2<u32>(_wgslsmith_div_u32(firstTrailingBit(106126u), _wgslsmith_div_u32(14140u, var_0.a.x)), 4294967295u) % vec2<u32>(32u)), vec4<i32>(2147483647i, var_0.b.x, u_input.b.x, -max(9670i, u_input.d.x)), _wgslsmith_f_op_f32(-arg_1));
    return _wgslsmith_mod_u32(~select(4294967295u, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, 1u, 59646u), vec3<u32>(var_2.x, 0u, 4294967295u)), _wgslsmith_sub_vec3_u32(vec3<u32>(36513u, var_3.a.x, var_0.a.x), vec3<u32>(var_3.a.x, 17038u, 20652u))), all(vec2<bool>(true, arg_2.c.x))), ~global2.x);
}

fn func_3(arg_0: u32, arg_1: vec4<u32>, arg_2: f32, arg_3: vec2<u32>) -> u32 {
    var var_0 = Struct_2(vec3<u32>(1u, ~reverseBits(4294967295u), abs(~arg_3.x)) & vec3<u32>(u_input.a.x, ~(~1u), max(0u, global2.x) ^ ~arg_0));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_2, arg_2, _wgslsmith_f_op_f32(-arg_2), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) - _wgslsmith_f_op_f32(-968f * arg_2))))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2, arg_2, arg_2, arg_2), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -1354f, -1000f, 944f) - vec4<f32>(308f, arg_2, -284f, -1257f))))))));
    var_0 = Struct_2(u_input.a.ywz);
    let var_2 = Struct_1(_wgslsmith_add_u32(arg_0, abs(19469u)), vec4<f32>(arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_2))), _wgslsmith_f_op_f32(-var_1.x), var_1.x), vec4<bool>(_wgslsmith_mult_i32(~u_input.b.x, 2147483647i) >= -u_input.b.x, false, false, false), ~_wgslsmith_dot_vec3_i32(u_input.c.xxy, vec3<i32>(-85152i, global4.x, _wgslsmith_mod_i32(global4.x, -5110i))));
    global3 = array<Struct_4, 8>();
    return arg_3.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> Struct_3 {
    global1 = array<bool, 9>();
    let var_0 = ~(~firstLeadingBit(reverseBits(u_input.a.wwy)));
    let var_1 = 0u;
    global3 = array<Struct_4, 8>();
    global3 = array<Struct_4, 8>();
    return Struct_3(Struct_2(var_0));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_2 {
    let var_0 = !select(select(!(!vec4<bool>(false, true, global1[_wgslsmith_index_u32(4802u, 9u)], true)), select(select(vec4<bool>(false, global1[_wgslsmith_index_u32(global2.x, 9u)], false, global1[_wgslsmith_index_u32(0u, 9u)]), vec4<bool>(global1[_wgslsmith_index_u32(arg_1.a.a.x, 9u)], true, false, global1[_wgslsmith_index_u32(arg_1.a.a.x, 9u)]), vec4<bool>(false, true, true, false)), vec4<bool>(true, global1[_wgslsmith_index_u32(arg_1.a.a.x, 9u)], global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(u_input.a.x, 9u)]), global1[_wgslsmith_index_u32(9117u, 9u)]), !any(vec4<bool>(true, global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(4294967295u, 9u)], global1[_wgslsmith_index_u32(global2.x, 9u)]))), vec4<bool>(global1[_wgslsmith_index_u32(~_wgslsmith_div_u32(global2.x, 8085u), 9u)], global1[_wgslsmith_index_u32(min(firstTrailingBit(1u), ~1u), 9u)], global1[_wgslsmith_index_u32(func_4(true, Struct_1(18257u, vec4<f32>(1123f, 189f, -642f, -558f), vec4<bool>(true, false, false, true), 0i)).a.a.x, 9u)] || (global1[_wgslsmith_index_u32(0u, 9u)] & global1[_wgslsmith_index_u32(21987u, 9u)]), global1[_wgslsmith_index_u32(0u, 9u)]), vec4<bool>(false && global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, u_input.a.x), 9u)], false, !any(vec3<bool>(false, global1[_wgslsmith_index_u32(0u, 9u)], global1[_wgslsmith_index_u32(16832u, 9u)])), ~global2.x != global2.x));
    let var_1 = 86420u;
    let var_2 = 0u;
    let var_3 = Struct_2(arg_1.a.a);
    global3 = array<Struct_4, 8>();
    return func_4(!global1[_wgslsmith_index_u32(var_1, 9u)], Struct_1(17611u, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(407f, -527f, -685f, 856f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(430f, -166f, 268f, 1368f) + vec4<f32>(1000f, -429f, -1951f, 355f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1269f, -273f, -284f, 752f), vec4<f32>(-1004f, 1769f, 110f, -426f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(454f, 2042f, -179f, 1412f)), true))), vec4<bool>(any(vec2<bool>(false, false)), !all(vec2<bool>(false, global1[_wgslsmith_index_u32(var_1, 9u)])), reverseBits(var_3.a.x) != var_3.a.x, false), firstTrailingBit(arg_0 << (_wgslsmith_sub_u32(4294967295u, 48622u) % 32u)))).a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1i;
    let var_1 = func_5(func_1(~u_input.a), func_4(false, Struct_1(func_3(func_2(vec4<f32>(264f, 121f, -576f, 138f), 1295f, Struct_1(0u, vec4<f32>(378f, 1391f, 332f, 788f), vec4<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 9u)], false, false, global1[_wgslsmith_index_u32(53749u, 9u)]), 2147483647i)), vec4<u32>(global2.x, u_input.a.x, 68702u, u_input.a.x), _wgslsmith_f_op_f32(-297f + -2018f), vec2<u32>(global2.x, global2.x)), vec4<f32>(_wgslsmith_f_op_f32(ceil(-1488f)), 812f, -1218f, _wgslsmith_f_op_f32(floor(-499f))), !(!vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 9u)], global1[_wgslsmith_index_u32(28302u, 9u)], global1[_wgslsmith_index_u32(1u, 9u)], global1[_wgslsmith_index_u32(global2.x, 9u)])), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, 17127i), u_input.b)))));
    global4 = u_input.b;
    global1 = array<bool, 9>();
    let var_2 = Struct_1(firstTrailingBit(var_1.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-407f, 3454f, -380f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1960f, 537f)))))), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(~global2.x, 9u)], global1[_wgslsmith_index_u32(global2.x, 9u)]), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, _wgslsmith_div_i32(global4.x, 56086i), ~global4.x), u_input.c.wzy));
    var var_3 = ~vec4<i32>(u_input.d.x, ~var_2.d, ~21935i, 11096i) >> (u_input.a % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(-353f, _wgslsmith_dot_vec2_u32(~(~reverseBits(vec2<u32>(var_1.a.x, global2.x))), u_input.a.zz));
}

