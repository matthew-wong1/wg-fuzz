struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec2<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

var<private> global1: vec2<f32>;

var<private> global2: vec3<bool>;

var<private> global3: vec4<f32> = vec4<f32>(1000f, 1108f, -1000f, -156f);

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: f32) -> vec3<f32> {
    var var_0 = max(~(~firstTrailingBit(arg_1.b.d.xx) << (arg_1.c % vec2<u32>(32u))), arg_1.b.d.zz);
    global0 = array<vec3<i32>, 22>();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(arg_1.a.zy, arg_1.b.c.zw)), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(291f, -1995f)), _wgslsmith_f_op_f32(-633f + 356f), all(global2.yy))), 164f)));
    let var_1 = vec4<i32>(select(13204i, _wgslsmith_clamp_i32(min(abs(u_input.a), 2147483647i), -2147483647i, u_input.a), !all(arg_0)), arg_1.b.b, arg_1.e.x, ~_wgslsmith_div_i32(~(arg_1.b.b >> (var_0.x % 32u)), arg_1.e.x));
    var_0 = _wgslsmith_mult_vec2_u32(arg_1.b.d.wz, vec2<u32>(abs(_wgslsmith_div_u32(~var_0.x, 50745u)), _wgslsmith_mult_u32(0u, 28994u)));
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.a + _wgslsmith_f_op_vec3_f32(max(arg_1.b.c.xyw, vec3<f32>(2217f, 985f, 2403f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, 1855f, 246f) * global3.zzx))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(2351f, arg_2, -523f), vec3<f32>(-658f, 711f, global1.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.a.x, 1000f, arg_2))))) + global3.xwy)));
}

fn func_2(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: u32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(arg_3, _wgslsmith_mod_u32(1u, arg_3));
    var var_1 = u_input.a;
    var var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(select(vec2<bool>(true, false), vec2<bool>(true, global2.x), arg_1), Struct_2(global3.xyy, Struct_1(global2.x, u_input.a, vec4<f32>(global1.x, -1651f, global3.x, global1.x), vec4<u32>(1u, arg_3, 32134u, 0u)), vec2<u32>(4294967295u, arg_3), arg_1, vec3<i32>(-2147483647i, -33402i, -4126i)), 118f))) * vec3<f32>(global1.x, _wgslsmith_f_op_f32(f32(-1f) * -570f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(320f + 2077f) - _wgslsmith_f_op_f32(floor(global1.x))))), Struct_1(true, arg_2 << (~max(arg_3, 0u) % 32u), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(528f, global1.x, 141f, global3.x))))), firstLeadingBit(~(~vec4<u32>(1u, arg_3, 6636u, 1u)))), firstTrailingBit(vec2<u32>(arg_3, abs(arg_3))), global2.x, reverseBits(~vec3<i32>(arg_0.x, _wgslsmith_mod_i32(-25398i, arg_0.x), 2147483647i)));
    var var_3 = Struct_1(var_2.d, i32(-1i) * -34272i, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(2819f, _wgslsmith_f_op_f32(global1.x * global3.x), _wgslsmith_f_op_f32(-784f - _wgslsmith_f_op_f32(459f + global1.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-397f + 377f), _wgslsmith_f_op_f32(step(global1.x, -1964f))))))), ~countOneBits(firstTrailingBit(~vec4<u32>(51384u, arg_3, arg_3, 1u))));
    var var_4 = var_2.b;
    return Struct_2(vec3<f32>(global1.x, global3.x, -392f), Struct_1(!(var_4.d.x <= firstTrailingBit(1u)), reverseBits(~_wgslsmith_dot_vec2_i32(arg_0, arg_0)), var_4.c, vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(arg_3), 4294967295u), ~4294967295u, _wgslsmith_dot_vec3_u32(var_3.d.yzz, var_4.d.yxy) & 4294967295u, 31963u)), select(vec2<u32>(5991u, _wgslsmith_sub_u32(_wgslsmith_mod_u32(20745u, arg_3), var_3.d.x)), ~vec2<u32>(select(var_4.d.x, var_4.d.x, false), 77463u), vec2<bool>(!all(vec4<bool>(arg_1, true, var_2.b.a, false)), true)), var_4.a, vec3<i32>(-976i >> ((1u >> (var_2.c.x % 32u)) % 32u), min(var_2.b.b, max(~u_input.a, var_4.b)), var_2.e.x));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> bool {
    var var_0 = ~(~arg_0.b.d.zzw);
    let var_1 = Struct_3(arg_2.b.c);
    let var_2 = ~(select(_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.b.b, 40140i, arg_0.b.b, 52675i), ~vec4<i32>(u_input.a, 11595i, -48182i, arg_0.b.b)), _wgslsmith_mod_vec4_i32(~vec4<i32>(-73696i, u_input.a, -35253i, arg_0.b.b), -vec4<i32>(arg_0.e.x, u_input.a, arg_0.b.b, -42880i)), true) & _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, u_input.a, 1i, _wgslsmith_div_i32(2147483647i, 22554i)), -vec4<i32>(-1i, u_input.a, 24809i, -2147483647i)));
    var var_3 = select(select(select(!vec4<bool>(false, false, arg_2.d, true), select(select(vec4<bool>(arg_0.b.a, arg_2.d, true, true), vec4<bool>(arg_2.d, arg_0.d, arg_2.b.a, false), false), vec4<bool>(false, arg_2.d, arg_0.d, arg_0.d), vec4<bool>(false, arg_0.b.a, false, false)), arg_2.b.a), vec4<bool>(global2.x, arg_2.b.a, all(select(vec3<bool>(arg_0.b.a, arg_2.b.a, arg_2.b.a), vec3<bool>(true, arg_0.b.a, global2.x), vec3<bool>(arg_0.d, false, false))), true), vec4<bool>(!arg_2.b.a || any(vec4<bool>(true, arg_2.d, false, arg_0.b.a)), ~arg_1 != arg_2.c.x, true, global2.x)), select(select(select(!vec4<bool>(arg_2.b.a, global2.x, true, true), !vec4<bool>(global2.x, arg_2.d, arg_0.b.a, arg_0.b.a), !global2.x), select(select(vec4<bool>(false, true, arg_0.b.a, true), vec4<bool>(true, true, arg_0.b.a, false), true), !vec4<bool>(true, true, arg_0.d, arg_2.d), select(false, arg_0.b.a, false)), vec4<bool>(!global2.x, true || arg_0.b.a, true || arg_2.b.a, true)), !select(select(vec4<bool>(arg_2.b.a, global2.x, global2.x, global2.x), vec4<bool>(true, true, arg_0.d, true), vec4<bool>(global2.x, false, false, false)), select(vec4<bool>(true, arg_0.d, false, global2.x), vec4<bool>(true, true, true, true), vec4<bool>(arg_0.b.a, false, true, arg_0.b.a)), !vec4<bool>(arg_0.b.a, arg_2.d, global2.x, global2.x)), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(arg_0.d, global2.x, arg_2.d, global2.x), vec4<bool>(global2.x, false, global2.x, false)))), true);
    var_3 = vec4<bool>(!var_3.x, !(arg_2.d & all(!vec4<bool>(false, true, true, global2.x))), false || !(firstTrailingBit(1u) != 1u), !any(vec4<bool>(arg_0.b.a, true, var_0.x <= arg_2.b.d.x, !var_3.x)));
    return var_3.x;
}

fn func_1(arg_0: vec2<f32>) -> bool {
    var var_0 = select(vec4<bool>(true, true, true, true), vec4<bool>(true, !global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(991f))) != global1.x, global2.x), all(global2.zz));
    var_0 = vec4<bool>(select(true, !select(false, false, false) & all(var_0.zz), true), true, var_0.x, global2.x && any(!vec4<bool>(true, var_0.x, true, false)));
    var_0 = vec4<bool>(!any(!global2.yz), func_4(func_2(vec2<i32>(reverseBits(u_input.a), u_input.a), select(false, true, true), firstTrailingBit(firstTrailingBit(u_input.a)), ~abs(61059u)), 16536u, func_2(-_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(u_input.a, 2147483647i)), var_0.x, abs(_wgslsmith_clamp_i32(-1i, u_input.a, u_input.a)), 19559u)), var_0.x, global2.x);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(vec3<bool>(global2.x == true, true, !func_1(vec2<f32>(global3.x, global1.x))), select(vec3<bool>(true, all(!vec4<bool>(global2.x, true, global2.x, global2.x)), true), select(vec3<bool>(all(vec2<bool>(global2.x, global2.x)), func_4(Struct_2(global3.wwx, Struct_1(false, -22262i, vec4<f32>(-478f, 1527f, -212f, global3.x), vec4<u32>(17783u, 6317u, 40959u, 0u)), vec2<u32>(4294967295u, 4294967295u), false, vec3<i32>(u_input.a, -1i, 27386i)), 25004u, Struct_2(vec3<f32>(global1.x, -1000f, global3.x), Struct_1(false, -12977i, vec4<f32>(global1.x, -150f, 1000f, global3.x), vec4<u32>(19442u, 1u, 38662u, 12489u)), vec2<u32>(0u, 11979u), global2.x, vec3<i32>(u_input.a, u_input.a, 1i))), global2.x), !(!vec3<bool>(false, global2.x, global2.x)), vec3<bool>(u_input.a < u_input.a, true, global2.x)), any(select(select(vec2<bool>(false, global2.x), vec2<bool>(false, true), global2.x), select(vec2<bool>(false, false), vec2<bool>(false, global2.x), global2.zz), !global2.x))), select(select(!select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, global2.x, global2.x), vec3<bool>(false, global2.x, false)), !select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(true, global2.x, true), vec3<bool>(false, false, global2.x)), vec3<bool>(!global2.x, global2.x, any(vec3<bool>(global2.x, false, global2.x)))), select(vec3<bool>(false && global2.x, true, -11694i == u_input.a), vec3<bool>(-277f <= global3.x, select(true, global2.x, global2.x), any(vec2<bool>(true, global2.x))), ~u_input.a > _wgslsmith_div_i32(29950i, u_input.a)), select(select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(true, false, false), vec3<bool>(true, global2.x, false)), vec3<bool>(!global2.x, true, true), global2.x)));
    let var_0 = _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(~0u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(1u, 8905u, 293u), vec3<u32>(1u, 1u, 1u), any(vec2<bool>(true, false))), vec3<u32>(0u, 23941u, 1u) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))));
    var var_1 = (~(~abs(0u)) >> (var_0 % 32u)) & 58504u;
    global1 = vec2<f32>(_wgslsmith_f_op_vec3_f32(func_3(global2.zz, Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-366f, global3.x, global3.x) + global3.wyz)), Struct_1(!global2.x, u_input.a, vec4<f32>(global1.x, -197f, global1.x, -1900f), vec4<u32>(var_0, 2725u, var_0, var_0)), vec2<u32>(_wgslsmith_add_u32(64128u, 23721u), var_0 ^ 61437u), global2.x, select(abs(global0[_wgslsmith_index_u32(4294967295u, 22u)]), -vec3<i32>(u_input.a, -2147483647i, 2147483647i), select(global2.x, true, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.x, -644f)))))).x, 511f);
    global2 = vec3<bool>(any(select(global2.yy, !(!global2.yz), global3.x <= global1.x)), true, func_2(_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(2147483647i, 0i)), vec2<i32>(u_input.a, 23480i)), select(vec2<i32>(-2147483647i, 2147483647i), select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a), global2.xx), false)), global1.x <= global1.x, i32(-1i) * -u_input.a, _wgslsmith_dot_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(52778u, var_0, var_0), vec3<u32>(0u, 1u, 4294967295u)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(37400u, 4294967295u, 4294967295u)), _wgslsmith_mult_vec3_u32(vec3<u32>(36075u, 1u, var_0), vec3<u32>(var_0, var_0, var_0))))).b.a);
    let x = u_input.a;
    s_output = StorageBuffer(-802f);
}

