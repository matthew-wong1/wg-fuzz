struct Struct_1 {
    a: vec2<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: vec2<u32>,
    c: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 20> = array<f32, 20>(370f, 502f, -696f, -100f, 1091f, -675f, -1000f, -294f, 438f, -222f, -374f, 388f, 304f, 916f, 1066f, -221f, -269f, 249f, 1133f, 1011f);

var<private> global1: Struct_5;

var<private> global2: array<i32, 22>;

var<private> global3: vec2<u32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<bool>, arg_3: Struct_5) -> u32 {
    let var_0 = Struct_4(Struct_3(global1.a, !select(select(arg_2.xy, vec2<bool>(arg_2.x, arg_2.x), false), vec2<bool>(true, true), !arg_2.x), ~_wgslsmith_sub_vec4_u32(u_input.b << (u_input.b % vec4<u32>(32u)), reverseBits(u_input.b)), -(~_wgslsmith_div_vec4_i32(vec4<i32>(u_input.a.x, -45749i, 0i, 0i), vec4<i32>(global2[_wgslsmith_index_u32(1u, 22u)], global2[_wgslsmith_index_u32(u_input.b.x, 22u)], 1i, 2147483647i)))), vec3<bool>(arg_2.x, any(arg_2.xwy), arg_2.x), Struct_1(select(~(arg_3.a.a.zy & arg_3.b), u_input.b.zx, !(!vec2<bool>(arg_2.x, false))), false, ~max(~vec4<u32>(18775u, arg_1.b, 4294967295u, 47924u), u_input.b)));
    var var_1 = -vec4<i32>(global2[_wgslsmith_index_u32(32594u, 22u)], u_input.c.x, _wgslsmith_mod_i32(~(-var_0.a.d.x), _wgslsmith_mod_i32(-1451i, -74120i)), -(20880i & _wgslsmith_mult_i32(-1i, var_0.a.d.x)));
    let var_2 = var_0.c.b;
    var var_3 = firstTrailingBit(var_0.a.d);
    let var_4 = Struct_3(var_0.a.a, select(select(!(!vec2<bool>(arg_2.x, var_2)), select(!arg_2.wx, vec2<bool>(arg_2.x, var_2), false), !var_0.a.b), select(vec2<bool>(!var_0.c.b, !var_2), vec2<bool>(var_2 & true, arg_2.x & false), global1.c > _wgslsmith_f_op_f32(244f * 2088f)), ~reverseBits(-2147483647i) < reverseBits(u_input.c.x ^ -1i)), u_input.b, countOneBits(~var_0.a.d));
    return var_4.a.b;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> bool {
    var var_0 = vec4<i32>(abs(2147483647i), -firstLeadingBit(-26331i), arg_0.x, -12950i) << (~reverseBits(~(~vec4<u32>(u_input.b.x, 0u, global3.x, global3.x))) % vec4<u32>(32u));
    let var_1 = vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_0.x, global2[_wgslsmith_index_u32(u_input.b.x | func_3(vec3<u32>(13552u, global3.x, global3.x), Struct_2(u_input.b.zwy, u_input.b.x), vec4<bool>(arg_1.c.b, true, false, false), Struct_5(Struct_2(global1.a.a, 4294967295u), global1.b, -327f)), 22u)], ~(-1i)), countOneBits(_wgslsmith_div_i32(-arg_1.a.d.x, global2[_wgslsmith_index_u32(global3.x, 22u)]))), _wgslsmith_div_i32(_wgslsmith_clamp_i32(-1i, ~u_input.a.x, u_input.a.x) & arg_0.x, _wgslsmith_add_i32(55564i, abs(1i))));
    var var_2 = Struct_5(Struct_2(u_input.b.yww, u_input.b.x), u_input.b.yz, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.c, 1513f))) + global1.c), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(1u, 18003u), global3.x), 20u)], -850f))));
    let var_3 = 4294967295u;
    var_0 = abs(firstLeadingBit(vec4<i32>(-11064i, -(-88738i | arg_0.x), _wgslsmith_sub_i32(abs(-923i), abs(var_0.x)), _wgslsmith_sub_i32(~arg_1.a.d.x, firstTrailingBit(1i)))));
    return arg_1.c.b;
}

fn func_4(arg_0: vec2<bool>, arg_1: bool) -> Struct_2 {
    global3 = global1.a.a.xz;
    global1 = Struct_5(global1.a, min(~vec2<u32>(~4294967295u, countOneBits(42893u)), vec2<u32>(1u, 4294967295u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c))), global1.c)));
    let var_0 = all(!select(vec3<bool>(true, arg_1, any(arg_0)), select(vec3<bool>(false, arg_0.x, arg_0.x), !vec3<bool>(arg_1, false, false), select(vec3<bool>(arg_0.x, arg_0.x, arg_1), vec3<bool>(arg_0.x, arg_1, true), false)), arg_0.x));
    var var_1 = countOneBits(vec4<i32>(global2[_wgslsmith_index_u32((firstTrailingBit(4294967295u) | ~0u) & abs(20021u), 22u)], _wgslsmith_mod_i32(firstLeadingBit(56250i & u_input.a.x), -1i), 0i, -firstTrailingBit(abs(global2[_wgslsmith_index_u32(53899u, 22u)]))));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.b.x, ~(~u_input.b.x)), 20u)], _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(16986u, 20u)] * _wgslsmith_f_op_f32(-global1.c))))), global1.c);
    return global1.a;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_2) -> f32 {
    var var_0 = Struct_3(func_4(!vec2<bool>(global1.c <= global1.c, true), false), vec2<bool>(!any(vec2<bool>(true, true)), !(!any(vec3<bool>(false, true, true)))), _wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, u_input.b.x), 1u, global3.x, _wgslsmith_sub_u32(20043u >> (arg_1.b % 32u), arg_1.a.x)), ~(~vec4<u32>(4294967295u, 0u, global3.x, 6726u))), min(_wgslsmith_mult_vec4_i32(arg_0, vec4<i32>(49463i, 1i, u_input.c.x, u_input.c.x)), -_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(arg_0, arg_0), _wgslsmith_div_vec4_i32(arg_0, arg_0))));
    var var_1 = Struct_3(func_4(var_0.b, var_0.b.x && func_2(~u_input.a.yy, Struct_4(Struct_3(Struct_2(vec3<u32>(13867u, u_input.b.x, 0u), 0u), var_0.b, vec4<u32>(28284u, global3.x, 0u, 4294967295u), vec4<i32>(-2147483647i, arg_0.x, 1i, -14304i)), vec3<bool>(true, false, false), Struct_1(var_0.a.a.yz, true, vec4<u32>(var_0.c.x, var_0.c.x, global3.x, u_input.b.x))))), select(var_0.b, select(select(vec2<bool>(var_0.b.x, var_0.b.x), var_0.b, var_0.b), select(!var_0.b, !var_0.b, u_input.c.x == global2[_wgslsmith_index_u32(u_input.b.x, 22u)]), !(var_0.b.x || var_0.b.x)), vec2<bool>(true, any(select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, false), vec4<bool>(var_0.b.x, false, true, var_0.b.x), vec4<bool>(false, var_0.b.x, false, false))))), vec4<u32>(94581u, firstTrailingBit(_wgslsmith_sub_u32(17528u, arg_1.a.x | global3.x)), _wgslsmith_add_u32(arg_1.b, 7094u), _wgslsmith_sub_u32(0u, global1.a.a.x)), countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(6493i, u_input.a.x, 2147483647i, 1i) | (arg_0 >> (vec4<u32>(arg_1.a.x, 14375u, 4294967295u, 8817u) % vec4<u32>(32u))), arg_0)));
    global2 = array<i32, 22>();
    global0 = array<f32, 20>();
    let var_2 = vec3<bool>(select(any(select(var_0.b, select(var_0.b, var_0.b, var_0.b), true)), false, var_1.b.x), var_0.b.x, all(select(vec3<bool>(all(vec2<bool>(true, var_0.b.x)), !var_0.b.x, var_0.b.x), !select(vec3<bool>(var_1.b.x, false, true), vec3<bool>(var_1.b.x, false, var_1.b.x), var_1.b.x), select(!vec3<bool>(var_1.b.x, false, var_1.b.x), vec3<bool>(true, true, true), global2[_wgslsmith_index_u32(74563u, 22u)] >= -1i))));
    return _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(((~19665u | (0u ^ var_1.a.a.x)) >> (60399u % 32u)) & ~(~(~var_1.a.a.x)), 20u)] + _wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(abs(4294967295u), 20u)])));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<i32>, arg_2: u32) -> f32 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(func_5(arg_1, func_4(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false)), !func_2(arg_1.xx, Struct_4(Struct_3(Struct_2(vec3<u32>(arg_2, global3.x, 0u), 0u), vec2<bool>(true, true), u_input.b, arg_1), vec3<bool>(false, true, true), Struct_1(vec2<u32>(arg_2, 54979u), true, u_input.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0[_wgslsmith_index_u32(abs(0u), 20u)])) + -1792f), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1298f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2247f - 1140f) - _wgslsmith_f_op_f32(round(global1.c)))))));
    global2 = array<i32, 22>();
    let var_1 = (_wgslsmith_mult_vec2_u32(select(_wgslsmith_add_vec2_u32(vec2<u32>(16469u, 1u), u_input.b.ww), ~arg_0, vec2<bool>(true, true)), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.b.x, 0u), global1.b, u_input.b.yy), max(vec2<u32>(5590u, arg_2), vec2<u32>(arg_2, 4294967295u)))) | countOneBits(countOneBits(~vec2<u32>(u_input.b.x, 0u)))) ^ u_input.b.yx;
    global0 = array<f32, 20>();
    let var_2 = max(vec4<i32>(global2[_wgslsmith_index_u32(0u, 22u)], ~1i, global2[_wgslsmith_index_u32(global1.b.x, 22u)], _wgslsmith_clamp_i32(arg_1.x, reverseBits(-21055i), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~u_input.b, vec4<u32>(0u, arg_0.x, global1.b.x, 1u) ^ u_input.b), 22u)])), _wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, u_input.a.x << (_wgslsmith_clamp_u32(global3.x, 4294967295u, 11455u) % 32u), -95013i, firstTrailingBit(arg_1.x) << (arg_2 % 32u)), arg_1));
    return _wgslsmith_f_op_f32(func_5(-_wgslsmith_sub_vec4_i32(-vec4<i32>(-40266i, global2[_wgslsmith_index_u32(arg_0.x, 22u)], 2147483647i, 14664i), arg_1), func_4(vec2<bool>(func_4(vec2<bool>(true, true), true).b <= ~38162u, !(1u != var_1.x)), all(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(global1.a, global1.a.a.xy, _wgslsmith_f_op_f32(func_1(vec2<u32>(~(~4294967295u), u_input.b.x), select(~vec4<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 22u)], global2[_wgslsmith_index_u32(global1.b.x, 22u)], global2[_wgslsmith_index_u32(39786u, 22u)]), ~(-vec4<i32>(47523i, 2147483647i, -1i, 19208i)), vec4<bool>(true, true, true, true)), u_input.b.x)));
    let var_1 = select(vec4<bool>(u_input.c.x > abs(u_input.c.x), true, any(vec2<bool>(true, true)), false), vec4<bool>(true, true, select(false, true, false) | true, false), select(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), false)), !vec4<bool>(true, true, true, any(vec3<bool>(false, false, false))), select(vec4<bool>(var_0.a.b > 41880u, true, true, true), vec4<bool>(all(vec4<bool>(true, true, false, true)), true, true, true), false)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x >> (4294967295u % 32u), vec2<f32>(_wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~3481u, 20u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0[_wgslsmith_index_u32(44457u, 20u)])) * global1.c))), -(~(i32(-1i) * -u_input.c.x)));
}

