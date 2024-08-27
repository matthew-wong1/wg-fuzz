struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec3<f32>,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<f32>(1000f, -294f, -431f, 215f), -7083i, false, 6542i), 594f, vec3<f32>(-344f, 630f, -303f), Struct_1(vec4<f32>(-466f, -1234f, -758f, 703f), 0i, true, i32(-2147483648)), vec2<i32>(-27792i, 2147483647i));

var<private> global1: array<i32, 31>;

var<private> global2: i32;

var<private> global3: array<u32, 24>;

var<private> global4: array<Struct_1, 17>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec2<i32>) -> i32 {
    let var_0 = arg_1;
    global4 = array<Struct_1, 17>();
    var var_1 = select(!vec4<bool>(all(!vec3<bool>(global0.d.c, false, true)), _wgslsmith_f_op_f32(-global0.b) < -1081f, global0.d.c, true), !select(select(vec4<bool>(true, global0.a.c, true, global0.d.c), !vec4<bool>(global0.a.c, global0.a.c, global0.a.c, false), !vec4<bool>(true, true, false, global0.a.c)), vec4<bool>(any(vec3<bool>(global0.a.c, global0.a.c, global0.d.c)), true, global0.d.c, false), !vec4<bool>(global0.d.c, false, global0.d.c, global0.a.c)), true && any(vec3<bool>(true, true, !global0.d.c)));
    let var_2 = reverseBits(_wgslsmith_dot_vec3_i32(firstLeadingBit(u_input.c ^ vec3<i32>(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(var_0.a, 24u)], 31u)], u_input.d.x, global0.e.x)) >> (select(vec3<u32>(0u, 1u, 67212u), ~u_input.b.zxx, !vec3<bool>(var_1.x, var_1.x, global0.d.c)) % vec3<u32>(32u)), vec3<i32>(-1i) * -(~u_input.d.ywy)));
    let var_3 = _wgslsmith_dot_vec3_i32(-firstLeadingBit(vec3<i32>(abs(u_input.d.x), 28535i, 31712i)), _wgslsmith_div_vec3_i32(vec3<i32>(countOneBits(1i), -46044i, var_2), u_input.c));
    return _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.c, _wgslsmith_clamp_vec3_i32(u_input.c, u_input.d.ywx, vec3<i32>(-1i, 40904i, 0i))), u_input.c), reverseBits(~(~(~vec3<i32>(-8106i, -15641i, var_3)))));
}

fn func_2(arg_0: vec3<bool>) -> i32 {
    var var_0 = Struct_1(global0.a.a, ~(-(_wgslsmith_clamp_i32(global0.a.b, 2147483647i, u_input.d.x) >> (37923u % 32u))), true, 34355i);
    global3 = array<u32, 24>();
    var var_1 = Struct_2(global4[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(abs(39492u), 24u)], 17u)], global0.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.xwx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, 1951f, -2876f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.x, var_0.a.x, -599f)))), Struct_1(vec4<f32>(_wgslsmith_div_f32(642f, global0.b), 2322f, _wgslsmith_f_op_f32(-298f + _wgslsmith_f_op_f32(f32(-1f) * -463f)), global0.b), func_3(Struct_3(~u_input.a.x), Struct_3(36906u), _wgslsmith_add_vec2_i32(vec2<i32>(-2360i, 29687i), global0.e)), any(select(vec4<bool>(false, var_0.c, true, false), vec4<bool>(false, true, global0.d.c, arg_0.x), vec4<bool>(false, true, true, true))) == (!global0.a.c & all(arg_0.xy)), 2147483647i), u_input.d.xy);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(var_0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.a.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.x, global0.a.a.x, var_1.c.x, -715f)), true)))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.d.a.x, -2808f, 395f, var_1.b))))));
    var var_3 = -_wgslsmith_clamp_vec4_i32(~(~abs(u_input.d)), vec4<i32>(var_1.a.d, ~func_3(Struct_3(24348u), Struct_3(global3[_wgslsmith_index_u32(1u, 24u)]), vec2<i32>(global0.e.x, -1i)), -(2147483647i | var_0.d), ~global1[_wgslsmith_index_u32(~u_input.a.x, 31u)]), _wgslsmith_mult_vec4_i32(countOneBits(vec4<i32>(var_1.d.b, 65123i, var_1.a.b, var_0.b)), vec4<i32>(-20544i, global1[_wgslsmith_index_u32(66459u, 31u)], global1[_wgslsmith_index_u32(1u, 31u)], global0.e.x)) >> (vec4<u32>(64860u, 0u, _wgslsmith_add_u32(56957u, u_input.a.x), 0u) % vec4<u32>(32u)));
    return _wgslsmith_mult_i32(reverseBits(_wgslsmith_mod_i32(global1[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(~4294967295u, 24u)], 31u)], -_wgslsmith_sub_i32(29256i, var_3.x))), _wgslsmith_sub_i32(~21483i, 10209i));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: f32) -> vec4<i32> {
    global4 = array<Struct_1, 17>();
    global1 = array<i32, 31>();
    global4 = array<Struct_1, 17>();
    global2 = min(1i, -(i32(-1i) * -global1[_wgslsmith_index_u32(~arg_2.a, 31u)]));
    var var_0 = !(!(1u > abs(reverseBits(arg_2.a))));
    return abs(-(~_wgslsmith_mult_vec4_i32(u_input.d, u_input.d)));
}

fn func_1(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(firstTrailingBit(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.a, u_input.b.zw), 24u)] >> (u_input.b.x % 32u)), countOneBits(arg_1.a)), ~u_input.b.x, arg_1.a);
    let var_1 = func_4(-vec3<i32>(countOneBits(u_input.d.x), func_2(vec3<bool>(arg_2.d.c, arg_2.d.c, arg_2.d.c)) << (48469u % 32u), global0.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2.c - vec3<f32>(_wgslsmith_f_op_f32(round(-1326f)), _wgslsmith_f_op_f32(ceil(1749f)), _wgslsmith_f_op_f32(ceil(226f))))), arg_1, -3029f);
    let var_2 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.d.a.x + 966f))) != _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.d.a.x + global0.d.a.x), global0.c.x, global0.a.c)), 1393f))) == any(vec3<bool>(global0.a.c, arg_2.d.c, false));
    global3 = array<u32, 24>();
    global4 = array<Struct_1, 17>();
    return arg_2.a;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>) -> vec3<bool> {
    var var_0 = Struct_3(1u ^ arg_1);
    let var_1 = ~abs(_wgslsmith_sub_u32(~global3[_wgslsmith_index_u32(0u, 24u)], 1u)) ^ ((global3[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(u_input.b.yxw, arg_2)), 24u)] | ~_wgslsmith_dot_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(3492u, 24u)], 6298u), arg_2.xy)) ^ arg_2.x);
    let var_2 = arg_0;
    global3 = array<u32, 24>();
    var var_3 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b, 424f, _wgslsmith_f_op_f32(-var_2.b)), vec3<f32>(_wgslsmith_f_op_f32(var_2.a.a.x + global0.b), _wgslsmith_f_op_f32(exp2(arg_0.c.x)), _wgslsmith_div_f32(1000f, -207f)), false))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.d.a.x)), global0.a.a.x), _wgslsmith_f_op_f32(min(func_1(1i, Struct_3(1u), arg_0).a.x, _wgslsmith_f_op_f32(min(arg_0.a.a.x, -632f)))), _wgslsmith_f_op_f32(-var_2.b))))));
    return vec3<bool>(false, false, select(arg_0.a.c, !all(select(vec3<bool>(true, var_2.a.c, arg_0.d.c), vec3<bool>(global0.d.c, arg_0.a.c, arg_0.d.c), false)), global0.d.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(global0.a.a.zzy * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -436f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b * 2275f), _wgslsmith_f_op_f32(f32(-1f) * -758f)), global0.a.a.x)));
    let var_1 = !select(func_5(Struct_2(func_1(global0.a.b, Struct_3(u_input.a.x), Struct_2(global4[_wgslsmith_index_u32(u_input.b.x, 17u)], 452f, vec3<f32>(-1486f, 1555f, 528f), global0.d, u_input.d.wx)), global0.d.a.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.d.a.x, var_0.x, var_0.x)), func_1(global0.e.x, Struct_3(global3[_wgslsmith_index_u32(35261u, 24u)]), Struct_2(global0.a, -369f, global0.d.a.zyz, global0.d, vec2<i32>(u_input.c.x, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 24u)], 31u)]))), vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(54613u, 24u)], 31u)])), 95269u, u_input.b.ywz), vec3<bool>(func_2(vec3<bool>(false, global0.a.c, global0.a.c)) <= u_input.d.x, select(global0.d.c, global0.a.c, !global0.a.c), false), global0.a.c);
    let var_2 = firstLeadingBit(global1[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 24u)], 31u)]);
    let var_3 = any(select(vec4<bool>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(u_input.b.x, 24u)], 24u)], 24u)] <= global3[_wgslsmith_index_u32(u_input.b.x, 24u)], true, false, true), !vec4<bool>(global0.a.c, global0.a.c, false, false), vec4<bool>(global0.d.c, global0.a.c, false, any(var_1.zx)))) && true;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a.a + vec4<f32>(global0.c.x, global0.b, var_0.x, global0.c.x)) * global0.d.a), -31036i & func_1(-2147483647i, Struct_3(42375u), Struct_2(global0.a, 791f, var_0, global4[_wgslsmith_index_u32(u_input.b.x, 17u)], u_input.c.zy)).b, true && global0.a.c, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(~1u, 1u, ~10794u), 31u)] ^ 12860i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.a.x - _wgslsmith_f_op_f32(f32(-1f) * -1182f)) + -442f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + -491f) - _wgslsmith_f_op_f32(-1014f + global0.a.a.x)) + _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-global0.c.x)))), func_1(-(0i ^ global0.d.d), Struct_3(1u), Struct_2(global0.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(global0.a.a.x)), _wgslsmith_f_op_f32(1000f - -953f))), vec3<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -744f)), Struct_1(global0.d.a, var_2, all(var_1.xy), 18119i), global0.e)).a.xxy, global0.a, (vec2<i32>(-1i) * -u_input.d.xx) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(37083u, global3[_wgslsmith_index_u32(4294967295u, 24u)]), _wgslsmith_sub_vec2_u32(u_input.b.xw, _wgslsmith_mod_vec2_u32(u_input.a, u_input.b.yx))) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_f_op_f32(1707f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-555f, -547f)) * -876f))));
    let x = u_input.a;
    s_output = StorageBuffer(0u, max(reverseBits(~countOneBits(u_input.b.yx)), _wgslsmith_mult_vec2_u32(max(vec2<u32>(1u, u_input.a.x) | u_input.b.zw, _wgslsmith_div_vec2_u32(u_input.a, u_input.a)), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 3404u), u_input.b.yz, u_input.b.zw))), min(firstTrailingBit(~min(u_input.b, vec4<u32>(4294967295u, u_input.a.x, 0u, global3[_wgslsmith_index_u32(0u, 24u)]))), u_input.b));
}

