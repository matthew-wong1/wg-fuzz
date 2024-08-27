struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(1i, i32(-2147483648), -45160i, 21450i);

var<private> global1: array<vec2<u32>, 30> = array<vec2<u32>, 30>(vec2<u32>(1u, 0u), vec2<u32>(2682u, 0u), vec2<u32>(75416u, 128089u), vec2<u32>(49190u, 31084u), vec2<u32>(0u, 26446u), vec2<u32>(1u, 61765u), vec2<u32>(7776u, 1u), vec2<u32>(4814u, 0u), vec2<u32>(4294967295u, 37015u), vec2<u32>(4294967295u, 33948u), vec2<u32>(10259u, 95480u), vec2<u32>(1u, 6608u), vec2<u32>(68963u, 0u), vec2<u32>(25827u, 1u), vec2<u32>(54169u, 13721u), vec2<u32>(1u, 9220u), vec2<u32>(1780u, 0u), vec2<u32>(44681u, 1u), vec2<u32>(6764u, 4294967295u), vec2<u32>(27221u, 45927u), vec2<u32>(0u, 14126u), vec2<u32>(0u, 95994u), vec2<u32>(1u, 44742u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 32687u), vec2<u32>(27307u, 0u), vec2<u32>(4294967295u, 1180u), vec2<u32>(19165u, 21593u), vec2<u32>(1u, 7586u), vec2<u32>(0u, 42351u));

var<private> global2: array<f32, 31>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<u32>) -> bool {
    let var_0 = ~arg_1.wzz;
    var var_1 = !all(select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), false));
    let var_2 = vec4<i32>(abs(_wgslsmith_mult_i32(~34816i, firstLeadingBit(global0.x))), -1i ^ ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(39393i, -7316i, -1i), vec3<i32>(global0.x, -1i, u_input.c))), ~(~(-27481i)), _wgslsmith_clamp_i32(~u_input.c, 6185i, select(i32(-1i) * -1805i, _wgslsmith_add_i32(~global0.x, global0.x), all(vec4<bool>(false, true, false, true)))));
    var var_3 = 43655i;
    let var_4 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(true, true), !(any(vec2<bool>(false, true)) == true)));
    return true;
}

fn func_2(arg_0: vec3<u32>, arg_1: bool) -> Struct_1 {
    let var_0 = vec2<bool>((_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 31u)] + -1942f) * global2[_wgslsmith_index_u32(abs(0u), 31u)]) >= _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(22981u, 31u)], 335f) + 1156f)) && false, func_3(reverseBits(_wgslsmith_add_vec3_i32(global0.ywy, min(global0.zyz, global0.wwy))), select(u_input.a, u_input.a, false)));
    var var_1 = ~(1u << (_wgslsmith_div_u32(~(14864u ^ arg_0.x), reverseBits(u_input.b | 81926u)) % 32u));
    var var_2 = max(41531u ^ ~(~46568u | arg_0.x), 1u);
    var_2 = ~_wgslsmith_dot_vec2_u32(arg_0.yx, global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(79614u, 5525u) & (4294967295u >> (select(38961u, arg_0.x, true) % 32u)), 30u)]);
    let var_3 = countOneBits(arg_0.zx);
    return Struct_1(var_0);
}

fn func_4(arg_0: Struct_1) -> f32 {
    let var_0 = Struct_1(select(arg_0.a, vec2<bool>(arg_0.a.x, arg_0.a.x), !func_2(abs(vec3<u32>(u_input.b, 15592u, 38648u)), arg_0.a.x).a.x));
    global0 = _wgslsmith_sub_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, 1i, -65330i, -2147483647i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, 85658u, u_input.b, u_input.a.x), u_input.a) % vec4<u32>(32u)), vec4<i32>(firstLeadingBit(u_input.c), u_input.c << (59103u % 32u), u_input.c, u_input.c), vec4<i32>(_wgslsmith_div_i32(17636i, u_input.c), u_input.c, select(-2147483647i, -4789i, true), -u_input.c)), vec4<i32>(global0.x, -select(2147483647i, i32(-1i) * -2147483647i, !var_0.a.x), -2147483647i, reverseBits(1i) | u_input.c));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2[_wgslsmith_index_u32(~(~0u), 31u)], _wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(12784u, 31u)])), _wgslsmith_f_op_f32(round(-181f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(1u, 31u)])))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, -177f, 230f, global2[_wgslsmith_index_u32(u_input.a.x, 31u)]))), true)));
    let var_2 = Struct_1(vec2<bool>(false, true));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, u_input.a.x), 31u)])) * -345f));
    return -1045f;
}

fn func_5(arg_0: f32) -> Struct_1 {
    let var_0 = func_2(u_input.a.wwy, true).a.x & true;
    var var_1 = func_2(~_wgslsmith_div_vec3_u32(vec3<u32>(select(u_input.b, u_input.a.x, true), u_input.a.x, _wgslsmith_add_u32(u_input.b, 20550u)), firstLeadingBit(u_input.a.zzy | u_input.a.zyz)), var_0);
    global0 = -(vec4<i32>(-1i) * -vec4<i32>(global0.x, 0i, u_input.c, u_input.c)) ^ vec4<i32>(~56186i, global0.x, reverseBits(-8152i >> (firstTrailingBit(u_input.b) % 32u)), 15519i);
    global1 = array<vec2<u32>, 30>();
    let var_2 = select(!select(var_1.a, select(vec2<bool>(true, var_1.a.x), func_2(vec3<u32>(u_input.a.x, 1u, u_input.a.x), var_0).a, vec2<bool>(true, true)), !(!var_0)), !(!func_2(~vec3<u32>(u_input.a.x, 0u, u_input.a.x), var_0).a), func_2(min(vec3<u32>(~u_input.b, u_input.b, max(u_input.a.x, 25163u)), ~(~u_input.a.wwy)), (var_1.a.x && any(vec4<bool>(var_0, var_0, var_0, true))) && var_1.a.x).a.x);
    return Struct_1(vec2<bool>(all(vec2<bool>(var_2.x, !var_2.x)), true));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = ~vec4<u32>(0u & arg_0.x, arg_1.x, ~(~97811u), ~1u) >> (u_input.a % vec4<u32>(32u));
    var var_1 = func_5(_wgslsmith_f_op_f32(func_4(func_2(u_input.a.yyz, any(select(vec2<bool>(true, false), vec2<bool>(true, false), true))))));
    let var_2 = func_2(select(~var_0.www, max(countOneBits(u_input.a.xyy), max(u_input.a.wwz, arg_1)), select(!vec3<bool>(var_1.a.x, true, var_1.a.x), !select(vec3<bool>(var_1.a.x, var_1.a.x, var_1.a.x), vec3<bool>(var_1.a.x, var_1.a.x, true), var_1.a.x), !select(vec3<bool>(var_1.a.x, var_1.a.x, false), vec3<bool>(false, var_1.a.x, true), vec3<bool>(false, false, false)))), var_1.a.x);
    var var_3 = select(vec4<bool>(select(select(true, any(var_1.a), var_2.a.x), false && var_1.a.x, var_2.a.x), !var_2.a.x, var_2.a.x, ~min(4294967295u, arg_1.x) != ~64819u), select(vec4<bool>((var_2.a.x && true) | true, func_2(_wgslsmith_add_vec3_u32(u_input.a.zxz, u_input.a.wwx), true).a.x, u_input.a.x != ~u_input.b, func_3(~vec3<i32>(global0.x, 1i, u_input.c), vec4<u32>(arg_1.x, var_0.x, arg_0.x, u_input.b))), vec4<bool>(var_1.a.x, true, any(vec3<bool>(var_2.a.x, true, false)), select(var_1.a.x, false, true) & true), select(!select(vec4<bool>(var_2.a.x, false, var_2.a.x, true), vec4<bool>(true, true, var_1.a.x, true), var_2.a.x), !(!vec4<bool>(var_2.a.x, false, var_1.a.x, var_1.a.x)), var_1.a.x)), false);
    let var_4 = _wgslsmith_mult_vec3_u32(var_0.zww, abs(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, 42304u ^ var_0.x, firstTrailingBit(arg_0.x)), (vec3<u32>(41838u, 93169u, 1u) << (vec3<u32>(10488u, arg_1.x, 18625u) % vec3<u32>(32u))) & ~vec3<u32>(arg_1.x, 44411u, arg_1.x), ~(~vec3<u32>(var_0.x, arg_0.x, arg_1.x)))));
    return func_2(firstLeadingBit(arg_1 & arg_0), func_2(abs(var_4), var_1.a.x).a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = func_1(~(~(~(vec3<u32>(45183u, u_input.a.x, 22258u) & var_0.yxw))), _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(55292u, 37045u, 93981u), var_0.wwy) & _wgslsmith_mult_vec3_u32(var_0.yxw, vec3<u32>(1u, 18221u, 85021u)), _wgslsmith_div_vec3_u32(~vec3<u32>(var_0.x, 104630u, 76050u), select(u_input.a.wzy, vec3<u32>(var_0.x, var_0.x, u_input.a.x), select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false))))));
    global1 = array<vec2<u32>, 30>();
    var_1 = Struct_1(vec2<bool>(true, func_5(-483f).a.x));
    var var_2 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(5671u, 9436u), 31u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a.x & u_input.a.x, 31u)] + _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(~u_input.a.x, 31u)], _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_0.x, 31u)] - global2[_wgslsmith_index_u32(43184u, 31u)])) + _wgslsmith_f_op_f32(step(962f, global2[_wgslsmith_index_u32(select(1u, 7439u, true), 31u)])))), abs(vec3<i32>(global0.x, global0.x ^ global0.x, 0i) ^ _wgslsmith_mod_vec3_i32(vec3<i32>(-7327i, -28781i, global0.x), ~global0.yzz)), u_input.c, vec4<f32>(_wgslsmith_f_op_f32(abs(-338f)), global2[_wgslsmith_index_u32(var_0.x, 31u)], -1083f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -866f))));
}

