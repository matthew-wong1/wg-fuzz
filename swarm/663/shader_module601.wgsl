struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 32> = array<vec4<bool>, 32>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false));

var<private> global1: array<vec3<f32>, 22>;

var<private> global2: vec3<i32> = vec3<i32>(0i, i32(-2147483648), 2147483647i);

var<private> global3: array<Struct_1, 2>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1798f))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(2283f, 1262f), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1309f, 973f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-596f, -1847f), vec2<f32>(1193f, -442f), true))))), select(false || !any(vec2<bool>(false, false)), true, true));
    let var_1 = global3[_wgslsmith_index_u32(u_input.b.x, 2u)];
    var var_2 = global3[_wgslsmith_index_u32(~u_input.b.x, 2u)];
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-190f, _wgslsmith_f_op_f32(var_0.b.x - -822f), _wgslsmith_f_op_f32(var_3.a * var_0.a), _wgslsmith_div_f32(var_2.b.x, var_3.b.x)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1943f, 217f, var_3.a, -2526f))))))) + vec4<f32>(var_0.a, var_3.b.x, _wgslsmith_f_op_f32(772f + var_0.b.x), 1791f));
    return !select(vec2<bool>(var_3.c, false), select(select(select(vec2<bool>(var_2.c, false), vec2<bool>(var_3.c, false), vec2<bool>(true, var_0.c)), select(vec2<bool>(true, var_1.c), vec2<bool>(var_0.c, var_0.c), false), select(vec2<bool>(var_2.c, var_0.c), vec2<bool>(var_0.c, true), var_2.c)), select(vec2<bool>(false, false), !vec2<bool>(var_2.c, var_3.c), vec2<bool>(true, true)), any(select(global0[_wgslsmith_index_u32(22651u, 32u)], global0[_wgslsmith_index_u32(1u, 32u)], var_3.c))), var_1.c);
}

fn func_2(arg_0: f32, arg_1: i32) -> vec2<u32> {
    global1 = array<vec3<f32>, 22>();
    let var_0 = min(_wgslsmith_sub_i32(15696i, -54284i), ~_wgslsmith_mult_i32(abs(global2.x), -2147483647i));
    let var_1 = -22350i;
    global3 = array<Struct_1, 2>();
    let var_2 = !vec2<bool>(all(select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true), func_3())), true && ((-1i & global2.x) == -var_1));
    return _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_add_u32(15796u, u_input.b.x >> (u_input.b.x % 32u)) >> (select(41331u, ~98378u, var_2.x) % 32u), 1u), (u_input.b & (~u_input.b & u_input.b)) & _wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.b.x, u_input.b.x), ~vec2<u32>(u_input.b.x, u_input.b.x)));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    global0 = array<vec4<bool>, 32>();
    global1 = array<vec3<f32>, 22>();
    let var_0 = vec2<u32>(_wgslsmith_clamp_u32(4294967295u << (~u_input.b.x % 32u), ~arg_0.x, ~arg_0.x), _wgslsmith_dot_vec3_u32(~(~vec3<u32>(50475u, arg_0.x, 1u)), ~((vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u) << (vec3<u32>(arg_0.x, arg_0.x, 1u) % vec3<u32>(32u))) | (vec3<u32>(arg_0.x, u_input.b.x, arg_0.x) >> (vec3<u32>(u_input.b.x, arg_0.x, arg_0.x) % vec3<u32>(32u))))));
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a), vec2<f32>(_wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(min(arg_1.b.x, _wgslsmith_f_op_f32(step(-2356f, _wgslsmith_f_op_f32(1000f - arg_1.a)))))), true);
    let var_2 = ~abs(arg_0 ^ ~func_2(var_1.b.x, 40438i));
    return global3[_wgslsmith_index_u32(68087u << ((1u | var_2.x) % 32u), 2u)];
}

fn func_5(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.a * _wgslsmith_div_f32(arg_3, arg_2.b.x))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0.a))), _wgslsmith_f_op_f32(step(arg_2.b.x, arg_3))), !arg_2.c || select(false, 40625u == _wgslsmith_sub_u32(u_input.b.x, 1u), false));
    var var_1 = 1000f;
    let var_2 = firstLeadingBit(-_wgslsmith_mod_vec3_i32(-abs(vec3<i32>(global2.x, 49282i, u_input.a)), _wgslsmith_clamp_vec3_i32(firstLeadingBit(vec3<i32>(-36054i, global2.x, 2147483647i)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, 44168i), vec3<i32>(u_input.a, 0i, u_input.a)), vec3<i32>(global2.x, global2.x, -11762i))));
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-104f * arg_2.b.x)))), arg_2.b, var_0.c);
    var_0 = arg_2;
    return var_2.x;
}

fn func_1(arg_0: u32, arg_1: vec3<u32>, arg_2: bool) -> i32 {
    var var_0 = !(all(vec4<bool>(false, false, !arg_2, !arg_2)) & (arg_2 || true));
    global1 = array<vec3<f32>, 22>();
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-665f - -661f) - -732f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(1132f, -690f, arg_2)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f))))));
    global3 = array<Struct_1, 2>();
    let var_2 = arg_1;
    return max(func_5(func_4(_wgslsmith_div_vec2_u32(func_2(1000f, -2147483647i), vec2<u32>(u_input.b.x, u_input.b.x)), global3[_wgslsmith_index_u32(u_input.b.x, 2u)], min(-1936i, u_input.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(262f + 630f) * func_4(vec2<u32>(arg_0, u_input.b.x), Struct_1(-897f, vec2<f32>(498f, 579f), arg_2), u_input.a).b.x) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-821f)))), Struct_1(-325f, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1714f, 413f)), arg_2 && all(vec2<bool>(arg_2, false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-766f)))) * 1f)), ~global2.x << (~arg_0 % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = countOneBits(min(vec3<i32>(func_1(_wgslsmith_mod_u32(u_input.b.x, u_input.b.x), ~vec3<u32>(u_input.b.x, 0u, u_input.b.x), true), i32(-1i) * -1i, _wgslsmith_mult_i32(2147483647i, global2.x)), -(vec3<i32>(1i, 1i, 1i) << (vec3<u32>(1u, u_input.b.x, u_input.b.x) % vec3<u32>(32u)))));
    var var_0 = global3[_wgslsmith_index_u32(u_input.b.x, 2u)];
    let var_1 = Struct_1(-2451f, _wgslsmith_f_op_vec2_f32(-var_0.b), 44595u < ~firstTrailingBit(_wgslsmith_add_u32(1u, 1u)));
    var var_2 = vec2<i32>(21381i, ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, -3353i, 2147483647i, u_input.a), vec4<i32>(global2.x, global2.x, global2.x, 53304i)), 1i) >> (firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), u_input.b)) % 32u));
    var var_3 = var_1;
    let var_4 = ~(_wgslsmith_clamp_vec2_i32(abs(global2.yz), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, u_input.a) | vec2<i32>(u_input.a, var_2.x), ~global2.xx, ~vec2<i32>(1i, -2147483647i)), global2.zz) ^ countOneBits(-_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 23411i), global2.xy, global2.xz)));
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(21685u, 49269u, ~0u), ~vec3<u32>(~u_input.b.x >> (_wgslsmith_mod_u32(u_input.b.x, 4294967295u) % 32u), _wgslsmith_clamp_u32(~40403u, 0u, 66382u), ~39135u)), 2u)];
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.b, _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.b.x, 427f, var_1.a, var_1.a)) - _wgslsmith_div_vec4_f32(vec4<f32>(var_0.a, 563f, 878f, var_1.b.x), vec4<f32>(236f, 284f, -1304f, -617f))))))));
}

