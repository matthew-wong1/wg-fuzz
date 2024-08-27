struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: u32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
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

var<private> global0: array<i32, 4> = array<i32, 4>(-22762i, -8428i, 28671i, 0i);

var<private> global1: vec4<i32>;

var<private> global2: array<Struct_3, 1>;

var<private> global3: vec4<f32>;

var<private> global4: array<f32, 31>;

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
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

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: bool) -> vec4<bool> {
    global0 = array<i32, 4>();
    let var_0 = vec3<i32>(1i, -arg_0.a.x, -(~arg_0.a.x));
    let var_1 = !arg_3;
    let var_2 = arg_1.b;
    global4 = array<f32, 31>();
    return var_2.a;
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0)) + vec4<f32>(global4[_wgslsmith_index_u32(34615u, 31u)], _wgslsmith_f_op_f32(-arg_0.x), -492f, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(global3.x, -906f), 508f))));
    let var_1 = Struct_2(vec2<bool>(false, true), Struct_1(vec4<bool>(true, true, true, !(arg_0.x > 779f))), true, Struct_1(func_3(global2[_wgslsmith_index_u32(4452u, 1u)], Struct_2(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)), Struct_1(vec4<bool>(false, true, true, false)), all(vec2<bool>(false, false)), Struct_1(vec4<bool>(true, true, true, true))), (vec4<i32>(u_input.a.x, -1i, arg_1.a.x, 0i) | vec4<i32>(-24392i, global0[_wgslsmith_index_u32(11659u, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], arg_1.a.x)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), false)));
    var var_2 = any(!vec3<bool>(!var_1.c, var_1.b.a.x, false));
    var var_3 = Struct_4(316u, select(func_3(Struct_3(vec2<i32>(global1.x, 8461i)), Struct_2(vec2<bool>(var_1.c, var_1.c), Struct_1(var_1.d.a), var_1.d.a.x != var_1.d.a.x, Struct_1(var_1.d.a)), reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(18386u, 4u)], arg_1.a.x, global0[_wgslsmith_index_u32(9596u, 4u)], -2147483647i)), false || !var_1.b.a.x).xxw, select(vec3<bool>(all(vec4<bool>(false, var_1.c, true, var_1.a.x)), func_3(Struct_3(global1.xy), var_1, vec4<i32>(u_input.a.x, global1.x, arg_1.a.x, 2147483647i), var_1.a.x).x, true), vec3<bool>(func_3(Struct_3(vec2<i32>(arg_1.a.x, -13374i)), var_1, vec4<i32>(global1.x, -2147483647i, global0[_wgslsmith_index_u32(16355u, 4u)], global1.x), var_1.d.a.x).x, true, var_1.a.x), any(vec4<bool>(false, var_1.c, var_1.d.a.x, true)) & true), !(!func_3(Struct_3(vec2<i32>(arg_1.a.x, u_input.a.x)), Struct_2(vec2<bool>(true, var_1.c), var_1.d, var_1.b.a.x, var_1.b), vec4<i32>(arg_1.a.x, -12868i, arg_1.a.x, -11003i), true).x)));
    let var_4 = 10518u;
    return Struct_2(vec2<bool>(true, var_1.d.a.x), var_1.d, false, var_1.b);
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: bool, arg_3: vec4<bool>) -> u32 {
    global4 = array<f32, 31>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global3.x), global3.x, _wgslsmith_f_op_f32(select(global3.x, global3.x, false)), -1000f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(238f, global3.x, global3.x, 1861f) - vec4<f32>(-736f, global3.x, global3.x, global4[_wgslsmith_index_u32(arg_1.x, 31u)])))), arg_3.x)));
    var var_1 = Struct_4(~abs(arg_1.x), !arg_3.xyy);
    global2 = array<Struct_3, 1>();
    var var_2 = func_2(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(2233f - -288f), 486f, global3.x, _wgslsmith_f_op_f32(1690f + -1023f)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, global4[_wgslsmith_index_u32(34849u, 31u)], global4[_wgslsmith_index_u32(67474u, 31u)], -172f) - vec4<f32>(-1714f, global3.x, 1426f, -1000f)))))), Struct_3(_wgslsmith_add_vec2_i32(_wgslsmith_add_vec2_i32(global1.wx, vec2<i32>(global1.x, global0[_wgslsmith_index_u32(arg_0, 4u)])), ~vec2<i32>(global1.x, -40485i))));
    return _wgslsmith_mod_u32(countOneBits(46562u) >> (_wgslsmith_mult_u32(arg_0, firstLeadingBit(1u) ^ ~arg_1.x) % 32u), arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 4>();
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(reverseBits(_wgslsmith_clamp_u32(7564u, 1u, 61648u)), 6400u), 31u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(func_1(4294967295u, vec2<u32>(0u, 1u), false, vec4<bool>(false, true, true, false)), 31u)])) + -1102f)) * global3.x);
    var var_2 = vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), ~(-(select(global1.x, u_input.a.x, false) ^ u_input.a.x)));
    global0 = array<i32, 4>();
    var var_3 = vec3<u32>(select(38366u | ~func_1(43485u, vec2<u32>(1u, 66556u), true, vec4<bool>(false, true, true, false)), firstLeadingBit(41638u), true), 17722u, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(~(~vec2<u32>(1u, 4294967295u)), vec2<u32>(~1u, _wgslsmith_add_u32(27759u, 66826u))), firstLeadingBit(firstTrailingBit(1u))));
    var var_4 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(922f, var_1, global3.x, -373f), vec4<f32>(global3.x, global3.x, global4[_wgslsmith_index_u32(var_3.x, 31u)], var_1))))), global2[_wgslsmith_index_u32(var_3.x ^ (var_3.x & var_3.x), 1u)]).b;
    var var_5 = Struct_4(var_3.x, func_3(Struct_3(select(-global1.yx, global1.xz, vec2<bool>(var_4.a.x, false))), Struct_2(!var_4.a.yy, func_2(vec4<f32>(var_1, global4[_wgslsmith_index_u32(var_3.x, 31u)], global3.x, global4[_wgslsmith_index_u32(var_3.x, 31u)]), Struct_3(vec2<i32>(1i, 2147483647i))).b, true, Struct_1(select(var_4.a, var_4.a, vec4<bool>(false, var_4.a.x, var_4.a.x, false)))), max(vec4<i32>(~0i, -10651i >> (0u % 32u), ~(-40523i), _wgslsmith_add_i32(var_2.x, -26044i)), firstLeadingBit(min(vec4<i32>(-2147483647i, 15552i, 2147483647i, u_input.a.x), vec4<i32>(-27524i, -2147483647i, global1.x, 2147483647i)))), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, 458f, var_1, global4[_wgslsmith_index_u32(1u, 31u)]) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global4[_wgslsmith_index_u32(17669u, 31u)], var_1, 1361f, 163f) + vec4<f32>(global3.x, var_1, 555f, 235f))), global2[_wgslsmith_index_u32(0u & abs(var_3.x), 1u)]).b.a.x).zzw);
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(var_5.a), vec2<f32>(_wgslsmith_f_op_f32(-483f * _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(~0u, 31u)])), _wgslsmith_f_op_f32(select(479f, global3.x, !select(var_5.b.x, var_5.b.x, false)))), _wgslsmith_dot_vec3_i32(global1.zzw, vec3<i32>(2147483647i, ~(~global1.x), global0[_wgslsmith_index_u32(~(~var_3.x), 4u)])));
}

