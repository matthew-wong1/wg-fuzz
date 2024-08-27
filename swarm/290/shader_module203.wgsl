struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: u32,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4>;

var<private> global1: vec4<u32> = vec4<u32>(56346u, 19076u, 1u, 1u);

var<private> global2: bool;

var<private> global3: vec4<i32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> bool {
    let var_0 = Struct_2(false, true, vec2<bool>(true, !(!any(vec4<bool>(true, false, true, false)))), _wgslsmith_add_u32((~4214u >> (_wgslsmith_div_u32(global1.x, 25629u) % 32u)) ^ global1.x, global1.x));
    global0 = array<vec2<f32>, 4>();
    let var_1 = ~vec2<u32>(abs(_wgslsmith_clamp_u32(var_0.d, select(0u, 1u, true), ~4294967295u)), 1u);
    global2 = !all(vec4<bool>(true, true, !any(vec3<bool>(false, false, true)), any(select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.b, true), vec3<bool>(var_0.b, var_0.a, var_0.b)))));
    global1 = vec4<u32>(4294967295u, 15129u, var_0.d, max(var_1.x, 4294967295u));
    return var_0.b == false;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: Struct_5, arg_3: u32) -> vec4<bool> {
    var var_0 = arg_3;
    global3 = abs(~(-(~(-vec4<i32>(u_input.a.x, global3.x, arg_1.a.b.x, 53044i)))));
    let var_1 = !any(vec2<bool>(true, true));
    global0 = array<vec2<f32>, 4>();
    let var_2 = vec3<bool>(false, _wgslsmith_sub_u32(arg_2.a.x, arg_2.a.x) <= _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(0u, arg_3, arg_0.x), vec3<u32>(arg_3, 24231u, arg_3)), global1.yzw), any(!select(!vec2<bool>(var_1, false), !vec2<bool>(true, var_1), arg_3 < arg_0.x)));
    return select(vec4<bool>(!(!var_1 & !var_2.x), var_1 || (all(vec4<bool>(false, true, var_1, var_1)) | (var_2.x | var_2.x)), var_2.x && var_2.x, !var_2.x), vec4<bool>(select(true, any(var_2.yx), var_1) && var_2.x, false, func_3(), (i32(-1i) * -global3.x) <= 1i), !vec4<bool>((1u ^ arg_3) >= global1.x, var_2.x, var_1, !var_1));
}

fn func_1(arg_0: bool, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: bool) -> bool {
    global3 = -(vec4<i32>(8387i, _wgslsmith_add_i32(1i, u_input.c), arg_1.d, global3.x) << (select(vec4<u32>(_wgslsmith_mod_u32(1u, global1.x), _wgslsmith_sub_u32(global1.x, 0u), 1u, arg_1.b.d), select(~vec4<u32>(arg_1.b.d, global1.x, 0u, global1.x), vec4<u32>(4287u, arg_1.b.d, arg_1.c, 0u) ^ vec4<u32>(47012u, arg_1.c, arg_1.c, arg_1.b.d), all(vec4<bool>(arg_0, arg_1.b.a, true, arg_1.b.b))), select(func_2(vec4<u32>(4294967295u, 81838u, arg_1.c, 4294967295u), Struct_4(Struct_1(arg_1.a.x, vec2<i32>(0i, arg_1.d), arg_2.x, 54137i)), Struct_5(vec3<u32>(12497u, arg_1.c, 1u)), global1.x), func_2(vec4<u32>(44244u, 65837u, 4019u, 60651u), Struct_4(Struct_1(302f, u_input.a.xx, 498f, global3.x)), Struct_5(global1.xwx), 59826u), any(vec2<bool>(true, false)))) % vec4<u32>(32u)));
    var var_0 = max(28745u, arg_1.b.d);
    var var_1 = Struct_4(Struct_1(arg_2.x, vec2<i32>(arg_1.d, -1i >> (_wgslsmith_mult_u32(4294967295u, arg_1.c) % 32u)), _wgslsmith_f_op_f32(arg_1.a.x + arg_1.a.x), arg_1.d));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(arg_1.a.x, -1164f))))) * var_1.a.a), -258f);
    global3 = max(-((min(vec4<i32>(arg_1.d, -49669i, -22456i, 1i), vec4<i32>(28852i, -2147483647i, -2147483647i, 31092i)) ^ (vec4<i32>(global3.x, arg_1.d, -17315i, u_input.b) << (vec4<u32>(global1.x, global1.x, 43898u, arg_1.b.d) % vec4<u32>(32u)))) | vec4<i32>(var_1.a.b.x, countOneBits(11019i), ~arg_1.d, 15171i)), vec4<i32>(~2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -28151i), select(vec2<i32>(global3.x, global3.x), global3.wx, arg_1.b.c)), _wgslsmith_sub_i32(~abs(arg_1.d), ~countOneBits(global3.x)), countOneBits(~_wgslsmith_add_i32(var_1.a.d, u_input.b))));
    return 39193i != firstLeadingBit(arg_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.d ^ _wgslsmith_div_vec3_i32(firstLeadingBit(vec3<i32>(~(-65361i), u_input.c, _wgslsmith_dot_vec2_i32(global3.xy, vec2<i32>(u_input.d.x, 55435i)))), abs(global3.zyz));
    global0 = array<vec2<f32>, 4>();
    let var_1 = all(select(!vec4<bool>(any(vec3<bool>(false, false, true)), false, true, all(vec4<bool>(false, false, true, true))), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), true), vec4<bool>(false, true, false, false), func_1(true, Struct_3(vec4<f32>(452f, 781f, -1376f, 771f), Struct_2(true, false, vec2<bool>(true, false), 4294967295u), 42475u, u_input.a.x), global0[_wgslsmith_index_u32(global1.x, 4u)], true)), func_2(~vec4<u32>(global1.x, global1.x, global1.x, 48718u) ^ (vec4<u32>(1057u, 37599u, 79855u, global1.x) & vec4<u32>(global1.x, global1.x, global1.x, 0u)), Struct_4(Struct_1(1000f, vec2<i32>(u_input.a.x, 36991i), 1000f, global3.x)), Struct_5(reverseBits(vec3<u32>(global1.x, global1.x, 880u))), 48199u).x));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1791f)) + _wgslsmith_f_op_f32(1100f + 567f))), 202f, true)));
    let var_3 = true;
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2));
    global1 = ~(~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(global1.x, global1.x, 45539u, 25892u) | vec4<u32>(35401u, 20298u, global1.x, 35269u)), vec4<u32>(4294967295u, firstLeadingBit(global1.x), global1.x, global1.x & 5367u)));
    let var_5 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_2))))), 1214f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(1627f + var_2), global0[_wgslsmith_index_u32(2871u, 4u)], _wgslsmith_sub_vec2_i32(u_input.d.yz, var_0.zz), abs(select(vec4<u32>(global1.x & 14646u, _wgslsmith_add_u32(global1.x, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(23328u, 74664u, 1u, 11378u), vec4<u32>(global1.x, global1.x, global1.x, 4294967295u)), abs(75040u)), ~(~vec4<u32>(52916u, global1.x, 3396u, global1.x)), !vec4<bool>(var_3, var_3, var_3, false))));
}

