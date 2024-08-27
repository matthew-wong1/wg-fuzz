struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 30>;

var<private> global2: vec2<i32> = vec2<i32>(-27968i, i32(-2147483648));

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> f32 {
    global0 = global2.x;
    let var_0 = Struct_1(abs(max(reverseBits(~vec4<i32>(global2.x, 49896i, -1i, global2.x)), -vec4<i32>(-1i, -1i, global2.x, global2.x) & (vec4<i32>(global2.x, global2.x, 1i, 1i) & vec4<i32>(global2.x, -56458i, global2.x, -1209i)))));
    let var_1 = false || all(select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(true, false, false))), select(vec2<bool>(false, true), vec2<bool>(true, true), true)));
    var var_2 = var_0;
    let var_3 = _wgslsmith_clamp_vec2_u32(u_input.a.zz, _wgslsmith_div_vec2_u32(vec2<u32>(~4294967295u, 36010u), _wgslsmith_mult_vec2_u32(~firstTrailingBit(vec2<u32>(u_input.a.x, 91303u)), vec2<u32>(~u_input.a.x, 50010u << (global1[_wgslsmith_index_u32(0u, 30u)] % 32u)))), ~abs(vec2<u32>(~global1[_wgslsmith_index_u32(u_input.a.x, 30u)], ~global1[_wgslsmith_index_u32(0u, 30u)])));
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f)))));
}

fn func_2() -> vec4<f32> {
    let var_0 = Struct_1(~(~(vec4<i32>(-2147483647i, 2147483647i, global2.x, global2.x) & vec4<i32>(0i, 4191i, 13970i, 21979i))) | select(vec4<i32>(-1i) * -vec4<i32>(15439i, 59134i, 0i, 1i), vec4<i32>(global2.x, global2.x << (u_input.a.x % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.x, 0i), vec2<i32>(global2.x, -1i)), global2.x), vec4<bool>(true, true, true, true)));
    global1 = array<u32, 30>();
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(567f, 306f) * _wgslsmith_f_op_f32(min(-305f, 1076f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1519f - -997f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2210f - -444f) * _wgslsmith_f_op_f32(-982f - 449f)), _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-660f, -1057f, -545f, 837f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1097f, 2394f, -757f, -1673f))))))));
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2()) * _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-arg_1.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1491f, arg_0.x, arg_1.a.x, arg_0.x))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(arg_1.a))))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0.x)) * 1f), arg_1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x - arg_1.a.x) + _wgslsmith_div_f32(1357f, arg_1.a.x))), vec4<f32>(-385f, arg_1.a.x, arg_0.x, -984f), select(vec4<bool>(arg_1.b, arg_1.b, true, true), vec4<bool>(true, true, arg_1.b, global2.x <= global2.x), select(select(vec4<bool>(arg_1.b, arg_1.b, false, arg_1.b), vec4<bool>(true, false, arg_1.b, true), false), !vec4<bool>(true, false, true, arg_1.b), true)))));
    var var_1 = select(vec4<bool>(arg_1.b, false, all(!vec2<bool>(arg_1.b, arg_1.b)), ~global2.x < 2147483647i), !select(vec4<bool>(arg_1.b, arg_1.b, global2.x >= global2.x, arg_1.b), !vec4<bool>(false, arg_1.b, false, true), select(!vec4<bool>(arg_1.b, true, arg_1.b, false), vec4<bool>(arg_1.b, false, false, false), false)), true);
    var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_1.a) * arg_1.a))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-127f - 1000f), _wgslsmith_f_op_f32(1545f - -356f), arg_0.x, 440f)))) - _wgslsmith_f_op_vec4_f32(-arg_1.a));
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-128f, var_0.x, 1004f) + var_0.yyw) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, arg_1.a.x, -1344f)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -1573f, -949f)))), vec3<f32>(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(191f)) * _wgslsmith_f_op_f32(round(arg_1.a.x)))), _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1699f)))))));
    let var_3 = -1254f;
    return var_0.x;
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: i32, arg_3: u32) -> vec4<bool> {
    var var_0 = _wgslsmith_sub_u32((~(~0u) << (1u % 32u)) >> (firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(79586u, arg_3, arg_3)) << (arg_3 % 32u)) % 32u), 53613u);
    let var_1 = -(~_wgslsmith_add_vec3_i32(vec3<i32>(~global2.x, arg_2, -1i), (vec3<i32>(-1i, 1i, global2.x) & vec3<i32>(arg_2, 2147483647i, 12917i)) ^ -vec3<i32>(arg_2, -20018i, arg_2)));
    var var_2 = vec2<f32>(729f, arg_1);
    var_0 = 1u;
    let var_3 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(-289f + _wgslsmith_f_op_vec4_f32(func_2()).x))), arg_1, -965f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1000f * -1288f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1103f, arg_0)), any(vec3<bool>(true, true, true))))), !(!((var_1.x & -16978i) > -14843i)), Struct_1(~(~reverseBits(vec4<i32>(global2.x, 1i, -1i, global2.x)))), var_1);
    return vec4<bool>(false, true & var_3.b, select(true, all(select(select(vec2<bool>(false, var_3.b), vec2<bool>(var_3.b, true), vec2<bool>(var_3.b, true)), !vec2<bool>(var_3.b, var_3.b), select(vec2<bool>(var_3.b, true), vec2<bool>(var_3.b, var_3.b), var_3.b))), any(select(select(vec4<bool>(true, false, var_3.b, var_3.b), vec4<bool>(true, var_3.b, var_3.b, var_3.b), vec4<bool>(var_3.b, var_3.b, var_3.b, var_3.b)), vec4<bool>(var_3.b, var_3.b, true, false), select(vec4<bool>(var_3.b, false, var_3.b, var_3.b), vec4<bool>(var_3.b, var_3.b, var_3.b, true), vec4<bool>(var_3.b, var_3.b, false, false))))), any(select(!select(vec4<bool>(true, true, var_3.b, false), vec4<bool>(var_3.b, var_3.b, false, true), vec4<bool>(var_3.b, true, var_3.b, false)), select(!vec4<bool>(var_3.b, false, false, false), vec4<bool>(var_3.b, true, var_3.b, false), true), select(select(vec4<bool>(true, true, var_3.b, true), vec4<bool>(true, var_3.b, true, var_3.b), false), select(vec4<bool>(var_3.b, true, var_3.b, var_3.b), vec4<bool>(true, false, false, true), false), var_3.b))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(-1423f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(782f * 1879f)) + -204f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_1(vec2<f32>(-1000f, 464f), Struct_2(vec4<f32>(-1477f, 1009f, 231f, 389f), false, Struct_1(vec4<i32>(global2.x, global2.x, global2.x, global2.x)), vec3<i32>(global2.x, -31694i, 16399i)))))) + -516f))), _wgslsmith_mod_i32(0i, 1i), ~global1[_wgslsmith_index_u32(4294967295u, 30u)]);
    let var_1 = vec3<u32>(u_input.a.x, _wgslsmith_dot_vec4_u32(select(countOneBits(~vec4<u32>(1u, 23108u, 39443u, 38469u)), _wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(0u, 30u)], 11060u, 4294967295u, global1[_wgslsmith_index_u32(13491u, 30u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 30u)], global1[_wgslsmith_index_u32(0u, 30u)], u_input.a.x, 1u)), abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 30u)], 15838u, 1u, 1u))), select(var_0.x || var_0.x, var_0.x, 14882u >= global1[_wgslsmith_index_u32(4294967295u, 30u)])), _wgslsmith_mod_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(select(u_input.a.x, 16040u, var_0.x), 30u)], global1[_wgslsmith_index_u32(reverseBits(12753u), 30u)], u_input.a.x, global1[_wgslsmith_index_u32(0u, 30u)]), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 1u, u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(16996u, 30u)], global1[_wgslsmith_index_u32(54724u, 30u)], 4294967295u, global1[_wgslsmith_index_u32(56381u, 30u)])))), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zy), _wgslsmith_sub_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global1[_wgslsmith_index_u32(1u, 30u)]), u_input.a.zy), u_input.a.xz)), abs(global1[_wgslsmith_index_u32(~48189u, 30u)] >> (_wgslsmith_dot_vec4_u32(vec4<u32>(14577u, 4294967295u, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], u_input.a.x), vec4<u32>(global1[_wgslsmith_index_u32(20552u, 30u)], global1[_wgslsmith_index_u32(u_input.a.x, 30u)], 0u, 2238u)) % 32u))), 30u)]);
    var_0 = select(!select(!select(vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(false, true, true, true)), vec4<bool>(all(vec2<bool>(false, false)), !var_0.x, var_0.x, true), all(var_0.wwy)), !select(select(vec4<bool>(var_0.x, false, false, false), vec4<bool>(true, var_0.x, false, false), vec4<bool>(false, var_0.x, var_0.x, var_0.x)), !vec4<bool>(true, var_0.x, true, true), var_0.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(485f - -1285f)))) != 326f);
    let x = u_input.a;
    s_output = StorageBuffer(~0i, max(u_input.a.yz | ~(~vec2<u32>(19393u, 53301u)), ~var_1.yz));
}

