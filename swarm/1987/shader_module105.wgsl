struct Struct_1 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 7>;

var<private> global1: vec4<f32> = vec4<f32>(-595f, 330f, -1000f, -187f);

var<private> global2: array<Struct_2, 31>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> i32 {
    var var_0 = false;
    return reverseBits(_wgslsmith_clamp_i32(-43027i, global0[_wgslsmith_index_u32(4294967295u, 7u)], 1i));
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(global1.ywy)))) * _wgslsmith_f_op_vec3_f32(-arg_0.a)), ~(~(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.d, arg_0.b.x, 1i, global0[_wgslsmith_index_u32(u_input.a.x, 7u)]), arg_0.b) | arg_0.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-670f + arg_0.a.x)), arg_0.b.x);
    var var_1 = u_input.a.x;
    return !vec2<bool>(select(min(var_0.d, arg_0.b.x) < _wgslsmith_dot_vec4_i32(var_0.b, var_0.b), true, true), any(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))));
}

fn func_1(arg_0: vec4<u32>) -> vec4<u32> {
    var var_0 = ~(~(_wgslsmith_sub_u32(4294967295u, arg_0.x) << ((~arg_0.x & 1u) % 32u)));
    var var_1 = Struct_1(vec3<f32>(_wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(950f + global1.x), _wgslsmith_f_op_f32(max(global1.x, global1.x)), true))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -873f))), ~max(~vec4<i32>(global0[_wgslsmith_index_u32(16934u, 7u)], global0[_wgslsmith_index_u32(arg_0.x, 7u)], -1i, -2147483647i), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(23105u, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)]) ^ (vec4<i32>(1i, 0i, global0[_wgslsmith_index_u32(arg_0.x, 7u)], global0[_wgslsmith_index_u32(u_input.a.x, 7u)]) & vec4<i32>(global0[_wgslsmith_index_u32(0u, 7u)], global0[_wgslsmith_index_u32(1u, 7u)], 4605i, 1i))), _wgslsmith_f_op_f32(1174f * _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(-796f * -2155f))))), -11161i);
    global2 = array<Struct_2, 31>();
    var var_2 = _wgslsmith_mod_vec4_u32(min(vec4<u32>(firstLeadingBit(4294967295u), ~72075u, min(1u, 0u), _wgslsmith_dot_vec2_u32(vec2<u32>(25789u, u_input.a.x), arg_0.zy)), arg_0) | vec4<u32>(abs(~u_input.a.x), u_input.a.x, 11468u, u_input.a.x), reverseBits(~vec4<u32>(max(14312u, arg_0.x), _wgslsmith_sub_u32(u_input.a.x, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.a.x, arg_0.x), vec3<u32>(u_input.a.x, 1u, 0u)), _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), u_input.a.xy))));
    let var_3 = Struct_2(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true))), vec2<bool>(select(false, true, true), true), false), vec2<bool>(true, true), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), false))), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.a.x, global1.x, -1595f) - _wgslsmith_f_op_vec3_f32(sign(global1.zzx))) + vec3<f32>(-1720f, _wgslsmith_f_op_f32(ceil(var_1.c)), var_1.a.x)), firstLeadingBit(abs(min(vec4<i32>(global0[_wgslsmith_index_u32(var_2.x, 7u)], var_1.d, global0[_wgslsmith_index_u32(u_input.a.x, 7u)], 1i), var_1.b))), global1.x, _wgslsmith_mod_i32(-(~var_1.d), -1i)), ~firstLeadingBit(func_2()) << (reverseBits(13135u) % 32u), !all(select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), func_3(Struct_1(vec3<f32>(-1514f, var_1.c, global1.x), vec4<i32>(global0[_wgslsmith_index_u32(arg_0.x, 7u)], var_1.d, global0[_wgslsmith_index_u32(arg_0.x, 7u)], -27973i), 653f, var_1.d)), false)), global0[_wgslsmith_index_u32(4294967295u, 7u)]);
    return arg_0 << ((~arg_0 | vec4<u32>(u_input.a.x, 101189u, u_input.a.x | _wgslsmith_sub_u32(1u, u_input.a.x), var_2.x)) % vec4<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(~1u, 31u)];
    let var_1 = arg_1;
    let var_2 = ~u_input.a.x;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = func_4(vec3<u32>(reverseBits(_wgslsmith_mod_u32(max(5046u, 50712u), u_input.a.x)), ~u_input.a.x, abs(5522u)), ~_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(8409u, u_input.a.x, 0u, 14867u), firstLeadingBit(vec4<u32>(9635u, u_input.a.x, 1u, 1u))), ~func_1(vec4<u32>(u_input.a.x, 21252u, u_input.a.x, u_input.a.x))), vec3<bool>(true, true, true), Struct_1(global1.wwz, vec4<i32>(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(~u_input.a.x, 7u)], global0[_wgslsmith_index_u32(0u, 7u)] ^ global0[_wgslsmith_index_u32(2326u, 7u)]), global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a.x, ~70843u, u_input.a.x | u_input.a.x), 7u)], -global0[_wgslsmith_index_u32(~1u, 7u)], 1i), global1.x, func_2()));
    var var_2 = vec2<u32>(~10848u, _wgslsmith_mult_u32(u_input.a.x, firstLeadingBit(0u))) << ((u_input.a.zz | _wgslsmith_div_vec2_u32(vec2<u32>(127052u, u_input.a.x), vec2<u32>(u_input.a.x, ~10823u))) % vec2<u32>(32u));
    let var_3 = func_4((((u_input.a >> (u_input.a % vec3<u32>(32u))) >> (~vec3<u32>(62384u, 50547u, 4294967295u) % vec3<u32>(32u))) >> (~(~u_input.a) % vec3<u32>(32u))) | vec3<u32>(firstTrailingBit(~u_input.a.x), u_input.a.x, 79380u), _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.a.xx, u_input.a.yz), ~var_2.x, 4294967295u, 0u), vec4<u32>(_wgslsmith_sub_u32(var_2.x, ~u_input.a.x), var_2.x, abs(35355u), u_input.a.x)), vec3<bool>(!(all(vec4<bool>(true, false, false, false)) | true), select(false, all(vec2<bool>(false, true)) | all(vec2<bool>(false, false)), !all(vec3<bool>(false, true, true))), !all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)))), func_4(u_input.a, ~_wgslsmith_add_vec4_u32(max(vec4<u32>(var_2.x, 1u, 4294967295u, 62215u), vec4<u32>(47993u, 4294967295u, 3606u, 1u)), ~vec4<u32>(4294967295u, var_2.x, 20781u, 13717u)), vec3<bool>(false, true, true), func_4(_wgslsmith_mod_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x)) & firstLeadingBit(vec3<u32>(6370u, 1u, 47373u)), select(min(vec4<u32>(4294967295u, u_input.a.x, 4294967295u, 31940u), vec4<u32>(44439u, 55160u, 63453u, 0u)), vec4<u32>(u_input.a.x, 48776u, u_input.a.x, 112486u), true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), false), func_4(_wgslsmith_sub_vec3_u32(u_input.a, u_input.a), max(vec4<u32>(29088u, u_input.a.x, 4294967295u, 1u), vec4<u32>(var_2.x, u_input.a.x, u_input.a.x, 1u)), vec3<bool>(false, false, false), Struct_1(var_1.a, vec4<i32>(0i, 0i, global0[_wgslsmith_index_u32(var_2.x, 7u)], var_1.b.x), var_1.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 7u)])))));
    var var_4 = vec3<bool>(!(true && (1u >= u_input.a.x)) || (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global1.x) + _wgslsmith_f_op_f32(-var_3.c)) == global1.x), !(-1755f == func_4(min(vec3<u32>(62019u, 36551u, 1u), vec3<u32>(0u, var_2.x, var_2.x)), abs(vec4<u32>(94269u, var_2.x, var_2.x, 80778u)), vec3<bool>(true, true, true), var_3).a.x), countOneBits(var_1.d) != _wgslsmith_mult_i32(~_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, 2147483647i), vec3<i32>(var_3.d, global0[_wgslsmith_index_u32(4294967295u, 7u)], -2147483647i)), global0[_wgslsmith_index_u32(u_input.a.x >> (0u % 32u), 7u)]));
    let var_5 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1937f)))))));
    let var_6 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x, vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_add_u32(0u, 98431u), reverseBits(1u), u_input.a.x >> (u_input.a.x % 32u), abs(u_input.a.x)), vec4<u32>(var_6, var_6, 72892u, var_2.x) | ~vec4<u32>(var_2.x, var_6, var_2.x, u_input.a.x)), firstTrailingBit(~var_6 >> (~u_input.a.x % 32u)), abs(var_2.x)), ~(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 7u)], -1i) | ~var_1.b.wx), 16068u & _wgslsmith_div_u32(var_6, 0u));
}

