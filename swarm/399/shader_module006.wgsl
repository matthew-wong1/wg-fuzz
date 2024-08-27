struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 22> = array<f32, 22>(-768f, -539f, 285f, 1000f, -542f, 550f, 601f, 251f, 693f, -1092f, 401f, -143f, -661f, 833f, 284f, 1797f, -1223f, -141f, 657f, -2903f, -819f, 779f);

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: vec3<f32>;

var<private> global3: array<Struct_1, 12> = array<Struct_1, 12>(Struct_1(vec2<i32>(-55302i, 1i), 0u, -775f), Struct_1(vec2<i32>(1i, 36342i), 20722u, -840f), Struct_1(vec2<i32>(-5053i, 1i), 9473u, -1074f), Struct_1(vec2<i32>(1i, i32(-2147483648)), 0u, -1169f), Struct_1(vec2<i32>(32857i, -35900i), 74738u, -1494f), Struct_1(vec2<i32>(i32(-2147483648), 54278i), 29178u, 1847f), Struct_1(vec2<i32>(i32(-2147483648), -46769i), 1u, 1580f), Struct_1(vec2<i32>(i32(-2147483648), 4480i), 22633u, -1575f), Struct_1(vec2<i32>(2147483647i, 10570i), 3247u, -806f), Struct_1(vec2<i32>(-1i, -42985i), 1u, 555f), Struct_1(vec2<i32>(2147483647i, 23426i), 21898u, -314f), Struct_1(vec2<i32>(0i, -18027i), 4294967295u, 415f));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: vec3<i32>) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(u_input.a.x, 12u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + -2130f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x * -1092f), var_0.c), -493f)));
    var var_2 = true;
    var var_3 = select(arg_1, arg_1, select(arg_1, arg_1, select(!select(vec4<bool>(arg_1.x, false, true, false), arg_1, true), arg_1, select(-51885i, -2147483647i, global1.x) == -arg_0.x)));
    let var_4 = !(!var_3.zw);
    return ~13052u;
}

fn func_3() -> bool {
    let var_0 = -vec2<i32>(-_wgslsmith_dot_vec2_i32(-vec2<i32>(-391i, 2121i), vec2<i32>(32345i, 9917i)), abs(~(-28331i)));
    var var_1 = global0[_wgslsmith_index_u32(u_input.b.x, 22u)];
    global2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(513f + _wgslsmith_f_op_f32(f32(-1f) * -3156f))), _wgslsmith_f_op_f32(-global2.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(4294967295u, 22u)], global0[_wgslsmith_index_u32(0u, 22u)])) - 1f) - _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-global2.x)))));
    var var_2 = !vec2<bool>(global1.x, !any(select(vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, false, global1.x), global1.x)));
    let var_3 = -(1i & var_0.x);
    return var_2.x;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_1(arg_1.a, 1u, arg_0.c);
    var var_1 = !vec4<bool>(func_3(), (_wgslsmith_f_op_f32(exp2(arg_1.c)) < _wgslsmith_f_op_f32(max(616f, global0[_wgslsmith_index_u32(17584u, 22u)]))) | false, true, true);
    let var_2 = -arg_2.a;
    global2 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-179f, global2.x, -237f)))))));
    let var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, var_0.c, 1514f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, -1000f, 188f, -1000f))))) * _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1243f, 297f, 232f, var_0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1.c, arg_1.c, arg_2.c, global0[_wgslsmith_index_u32(arg_0.b, 22u)]), vec4<f32>(-1098f, 278f, global0[_wgslsmith_index_u32(arg_1.b, 22u)], -1082f))) - vec4<f32>(global0[_wgslsmith_index_u32(63895u, 22u)], global0[_wgslsmith_index_u32(arg_1.b, 22u)], var_0.c, 170f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2185f, 1008f, global2.x, global0[_wgslsmith_index_u32(4294967295u, 22u)])) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(489f, 2159f, arg_0.c, arg_2.c))), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, var_0.c, arg_2.c, global0[_wgslsmith_index_u32(0u, 22u)]))), vec4<bool>(true, false != var_1.x, false, var_1.x)))));
    return 1000f;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>) -> vec3<bool> {
    var var_0 = ~vec4<i32>(arg_1.a.x, _wgslsmith_add_i32(-_wgslsmith_mod_i32(-1i, arg_0.a.x), -80193i), -abs(-arg_0.a.x), arg_0.a.x);
    global1 = !vec2<bool>(select(global1.x, any(vec2<bool>(global1.x, global1.x)), false), 1u > arg_1.b);
    var var_1 = global2.yy;
    let var_2 = vec2<u32>(~34918u, 0u);
    global3 = array<Struct_1, 12>();
    return !(!vec3<bool>(!global1.x, all(!vec4<bool>(global1.x, true, false, global1.x)), select(global1.x, all(vec3<bool>(true, true, true)), global1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(func_4(Struct_1(vec2<i32>(min(31646i, 8152i), _wgslsmith_mult_i32(0i, -2454i)), func_1(vec2<i32>(-1i, 1i), vec4<bool>(true, global1.x, global1.x, global1.x), vec3<i32>(-9509i, 0i, 61355i)) >> ((u_input.a.x << (u_input.a.x % 32u)) % 32u), _wgslsmith_f_op_f32(func_2(Struct_1(vec2<i32>(2147483647i, -17695i), u_input.a.x, global2.x), Struct_1(vec2<i32>(2147483647i, -2147483647i), 105407u, global0[_wgslsmith_index_u32(1u, 22u)]), global3[_wgslsmith_index_u32(u_input.a.x, 12u)]))), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_div_u32(12830u << (u_input.b.x % 32u), 25220u), 0u), 12u)], vec2<u32>(u_input.c, ~(~u_input.a.x))), select(select(!select(vec3<bool>(true, true, true), vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x)), !vec3<bool>(global1.x, global1.x, global1.x), !select(vec3<bool>(true, global1.x, global1.x), vec3<bool>(global1.x, global1.x, true), global1.x)), select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, true, true), select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(false, true, false))), vec3<bool>(global1.x, any(vec2<bool>(global1.x, false)), !global1.x), vec3<bool>(false, false, true)), select(select(func_4(global3[_wgslsmith_index_u32(0u, 12u)], Struct_1(vec2<i32>(-43595i, -2147483647i), 4294967295u, global2.x), vec2<u32>(u_input.a.x, 45877u)), select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(false, global1.x, true), vec3<bool>(false, true, false)), !vec3<bool>(false, true, global1.x)), func_4(global3[_wgslsmith_index_u32(0u, 12u)], Struct_1(vec2<i32>(40149i, -28885i), u_input.c, global2.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(20714u, u_input.a.x), u_input.a.xw, vec2<u32>(u_input.a.x, 1u))), vec3<bool>(global1.x, true, all(vec3<bool>(global1.x, global1.x, global1.x))))), !select(vec3<bool>(global1.x, !global1.x, true), select(!vec3<bool>(global1.x, false, true), !vec3<bool>(global1.x, false, true), func_4(Struct_1(vec2<i32>(-2694i, -1i), 0u, global0[_wgslsmith_index_u32(0u, 22u)]), Struct_1(vec2<i32>(-3429i, -9029i), u_input.a.x, global2.x), vec2<u32>(56504u, u_input.c))), !vec3<bool>(true, false, global1.x)));
    var var_1 = abs(vec3<u32>(~func_1(vec2<i32>(35407i, -23400i), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec3<i32>(-2147483647i, -1i, 17214i)), ~(~4294967295u), ~29241u) | vec3<u32>(~u_input.a.x, firstLeadingBit(~68828u), u_input.a.x));
    var_1 = ~select(countOneBits(firstTrailingBit(u_input.a.zzw)), vec3<u32>(~_wgslsmith_mod_u32(43346u, var_1.x), var_1.x, 87164u), var_0);
    var var_2 = vec2<u32>(_wgslsmith_mult_u32(var_1.x, 1u >> (func_1(_wgslsmith_mult_vec2_i32(vec2<i32>(13689i, -18884i), vec2<i32>(1i, 34412i)), !vec4<bool>(true, global1.x, false, true), ~vec3<i32>(1i, 2147483647i, 1i)) % 32u)), _wgslsmith_div_u32(var_1.x | 1u, 3334u));
    var var_3 = Struct_1(-reverseBits(firstTrailingBit(-vec2<i32>(28622i, -13864i))), 49273u, global2.x);
    var_1 = u_input.a.yzy >> (u_input.b % vec3<u32>(32u));
    global0 = array<f32, 22>();
    let x = u_input.a;
    s_output = StorageBuffer(-27010i, reverseBits(firstLeadingBit(vec4<i32>(var_3.a.x, firstTrailingBit(var_3.a.x), 2147483647i, _wgslsmith_mult_i32(var_3.a.x, 2147483647i)))));
}

