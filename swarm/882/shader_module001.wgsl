struct Struct_1 {
    a: bool,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: vec3<i32>,
    d: bool,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 31>;

var<private> global1: i32 = -39558i;

var<private> global2: vec4<f32> = vec4<f32>(-174f, -1134f, -391f, 525f);

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>) -> u32 {
    var var_0 = !select(!select(vec2<bool>(true, false), vec2<bool>(arg_0.d, false), select(vec2<bool>(true, false), vec2<bool>(false, arg_0.d), vec2<bool>(false, arg_0.d))), select(vec2<bool>(true, true), select(!vec2<bool>(arg_0.d, arg_0.d), !vec2<bool>(true, arg_0.d), true), false), select(select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(arg_0.d, arg_0.d), vec2<bool>(true, false)));
    var var_1 = Struct_3(Struct_2(vec3<i32>(43687i, _wgslsmith_dot_vec2_i32(-arg_0.c.zz, vec2<i32>(-1i, arg_1.x) >> (vec2<u32>(6288u, 90926u) % vec2<u32>(32u))), -21947i), _wgslsmith_f_op_f32(f32(-1f) * -268f), arg_1, !(all(vec4<bool>(true, arg_0.d, false, false)) & (arg_0.b > arg_0.b)), u_input.a.x), _wgslsmith_f_op_f32(step(arg_0.b, arg_0.b)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-740f, _wgslsmith_f_op_f32(-global2.x), arg_0.b, arg_0.b)));
    let var_2 = !vec2<bool>(_wgslsmith_div_f32(793f, arg_0.b) >= _wgslsmith_f_op_f32(round(var_1.b)), false);
    var_0 = !select(!vec2<bool>(!arg_0.d, all(vec3<bool>(true, false, arg_0.d))), vec2<bool>(false, !all(vec3<bool>(var_0.x, true, var_0.x))), !var_2);
    return 4961u;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: bool, arg_3: Struct_3) -> vec2<u32> {
    var var_0 = select(!(!vec3<bool>(false, arg_2, !arg_1.b.a)), vec3<bool>(arg_1.a.a.d, abs(arg_3.a.e) > _wgslsmith_sub_i32(u_input.a.x, ~(-23520i)), any(vec2<bool>(true, true)) & false), !(!select(select(vec3<bool>(false, true, true), vec3<bool>(arg_0.a.d, false, arg_0.a.d), false), !vec3<bool>(true, arg_0.a.d, arg_2), any(vec4<bool>(arg_3.a.d, arg_3.a.d, false, false)))));
    global2 = _wgslsmith_f_op_vec4_f32(arg_3.c - _wgslsmith_div_vec4_f32(arg_3.c, vec4<f32>(global0[_wgslsmith_index_u32(max(28278u, abs(1u)), 31u)], global2.x, global0[_wgslsmith_index_u32(max(16595u, 599u << (1u % 32u)), 31u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(6875u, 1u), 31u)]))));
    var_0 = !(!(!vec3<bool>(arg_1.a.a.d, !arg_0.a.d, arg_0.a.d)));
    let var_1 = 1000f;
    var_0 = !vec3<bool>(var_0.x, any(!(!vec4<bool>(true, arg_2, true, var_0.x))), true);
    return _wgslsmith_clamp_vec2_u32(max(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(32887u, 43637u), vec2<u32>(9377u, 1u))), abs(vec2<u32>(4294967295u, 68201u))) & min(vec2<u32>(~1u, 1u), vec2<u32>(func_2(Struct_2(arg_0.a.a, arg_3.a.b, vec3<i32>(-35198i, -2147483647i, -57i), arg_2, -50702i), arg_3.a.c), ~21509u)), vec2<u32>(~1u, 0u), _wgslsmith_clamp_vec2_u32(~vec2<u32>(1u, 1u), ~vec2<u32>(firstLeadingBit(1u), ~1u), vec2<u32>(1u, 1u)));
}

fn func_1(arg_0: vec2<f32>) -> u32 {
    let var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(11691u, 32495u), ~vec2<u32>(89504u, 52063u)) >> ((~firstTrailingBit(31581u) << (15935u % 32u)) % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, func_2(Struct_2(vec3<i32>(u_input.a.x, 36245i, u_input.a.x), -550f, u_input.a, true, 28463i), u_input.a)), func_3(Struct_3(Struct_2(u_input.a, global0[_wgslsmith_index_u32(24210u, 31u)], u_input.a, false, 0i), 2050f, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(735f, 427f, global0[_wgslsmith_index_u32(76125u, 31u)], global0[_wgslsmith_index_u32(63593u, 31u)])))), Struct_4(Struct_3(Struct_2(u_input.a, 1521f, vec3<i32>(u_input.a.x, -25849i, u_input.a.x), true, u_input.a.x), -237f, vec4<f32>(-224f, -741f, arg_0.x, arg_0.x)), Struct_1(true, vec4<f32>(global2.x, 738f, -2645f, 1297f)), Struct_1(true, vec4<f32>(global0[_wgslsmith_index_u32(1u, 31u)], -1225f, 516f, 1658f))), false, Struct_3(Struct_2(u_input.a, global0[_wgslsmith_index_u32(0u, 31u)], u_input.a, false, u_input.a.x), _wgslsmith_div_f32(arg_0.x, -567f), _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, -561f, 1895f, 800f), vec4<f32>(arg_0.x, -401f, global0[_wgslsmith_index_u32(2354u, 31u)], -1196f))))), min(~75140u, 0u), 1u);
    var var_1 = global2.wzy;
    var var_2 = vec4<i32>((_wgslsmith_clamp_i32(u_input.a.x ^ u_input.a.x, abs(1i), firstLeadingBit(-1i)) << (4294967295u % 32u)) << (~(~(~var_0.x)) % 32u), u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x)), max(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 38271i), vec4<i32>(-2147483647i, u_input.a.x, 3069i, u_input.a.x))), u_input.a.x), u_input.a.x ^ u_input.a.x);
    var var_3 = _wgslsmith_sub_u32(~_wgslsmith_mod_u32(countOneBits(var_0.x), abs(var_0.x) ^ var_0.x), 4294967295u);
    global0 = array<f32, 31>();
    return ~4294967295u;
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<u32>) -> vec3<bool> {
    var var_0 = Struct_5(true, Struct_2(u_input.a, _wgslsmith_f_op_f32(sign(global2.x)), min(-_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), select(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(30725i, -8987i, u_input.a.x), vec3<bool>(true, true, true))), any(vec2<bool>(true, true)), _wgslsmith_clamp_i32(abs(-7543i), u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(482f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_0.x)), _wgslsmith_f_op_f32(-global2.x)) - arg_0.x)), vec2<bool>(true, true));
    let var_1 = 1i;
    let var_2 = Struct_5(var_0.d.x, Struct_2(max(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(var_0.b.a, u_input.a), countOneBits(vec3<i32>(u_input.a.x, 2147483647i, var_0.b.a.x))), u_input.a), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + 1530f), _wgslsmith_f_op_f32(sign(-284f)))))), vec3<i32>(-var_1, var_1, _wgslsmith_mult_i32(54472i, var_1)), any(vec3<bool>(true, true, true)), var_1), -1278f, var_0.d);
    var var_3 = arg_1;
    var var_4 = vec2<bool>(!var_2.a, var_2.b.d);
    return select(select(!select(vec3<bool>(false, var_4.x, true), !vec3<bool>(false, var_2.b.d, true), !var_0.a), vec3<bool>(var_2.a, false, all(select(vec2<bool>(false, var_2.d.x), var_2.d, true))), vec3<bool>(all(vec4<bool>(true, false, false, false)) == true, true, all(vec4<bool>(var_0.d.x, false, var_0.b.d, false)))), vec3<bool>(true, var_4.x, (firstTrailingBit(13087u) < 1u) | true), select(vec3<bool>(select(any(vec3<bool>(false, var_2.d.x, true)), !var_0.d.x, var_4.x), var_0.d.x, true), select(select(select(vec3<bool>(false, false, var_4.x), vec3<bool>(var_0.d.x, var_2.a, var_0.a), vec3<bool>(var_0.d.x, var_2.a, var_0.d.x)), select(vec3<bool>(var_0.a, var_0.a, true), vec3<bool>(true, var_0.a, false), false), vec3<bool>(var_4.x, var_4.x, true)), !(!vec3<bool>(var_2.a, true, false)), vec3<bool>(!var_0.a, all(var_2.d), true)), !(arg_1.x < 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(~(~u_input.a.x), u_input.a.x);
    global0 = array<f32, 31>();
    let var_1 = all(func_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(416f, 963f, 972f, 211f) * vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 31u)], global2.x, -1741f, global0[_wgslsmith_index_u32(34704u, 31u)])) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.x, global2.x, global0[_wgslsmith_index_u32(28334u, 31u)], global0[_wgslsmith_index_u32(4294967295u, 31u)]))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global2.x, global2.x, 391f, global0[_wgslsmith_index_u32(4294967295u, 31u)]), vec4<f32>(global0[_wgslsmith_index_u32(34365u, 31u)], global2.x, 770f, -434f)))), ~vec4<u32>(~75534u, func_1(vec2<f32>(global0[_wgslsmith_index_u32(9954u, 31u)], global0[_wgslsmith_index_u32(1u, 31u)])), _wgslsmith_div_u32(54317u, 1u), _wgslsmith_mult_u32(1u, 90658u))));
    global1 = 20254i;
    let var_2 = Struct_2(u_input.a, 348f, -(~vec3<i32>(u_input.a.x << (47356u % 32u), u_input.a.x, var_0.x)), var_1, -1i);
    var var_3 = Struct_5(-(u_input.a.x & _wgslsmith_mult_i32(-2147483647i, var_0.x)) >= (_wgslsmith_div_i32(u_input.a.x, _wgslsmith_clamp_i32(38187i, 2147483647i, var_0.x)) >> (~_wgslsmith_div_u32(4294967295u, 1u) % 32u)), var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), vec2<bool>(true, false));
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(183f * global0[_wgslsmith_index_u32(39239u, 31u)]), 581f, var_2.b, _wgslsmith_f_op_f32(-350f * global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b, global2.x, 1154f, 637f) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-874f, -1153f, 383f, global0[_wgslsmith_index_u32(1u, 31u)]), vec4<f32>(global0[_wgslsmith_index_u32(0u, 31u)], var_2.b, global2.x, global2.x), vec4<bool>(false, var_2.d, var_1, true))))), select(vec4<bool>(any(vec3<bool>(true, var_3.b.d, var_2.d)), true, true, false), vec4<bool>(true, true, true, true), true))) + vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_3.c))), -183f, _wgslsmith_f_op_f32(-1487f - -554f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -502f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global2.zzy), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_2.b, -1798f)))))));
}

