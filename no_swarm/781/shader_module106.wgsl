struct Struct_1 {
    a: vec2<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
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

var<private> global0: array<u32, 22>;

var<private> global1: array<bool, 30> = array<bool, 30>(true, true, false, true, false, true, false, true, false, true, false, true, false, true, false, true, false, true, true, true, false, false, false, false, true, true, false, false, false, true);

var<private> global2: vec3<u32>;

var<private> global3: Struct_1;

var<private> global4: bool = false;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> i32 {
    let var_0 = ~0i;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-885f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1751f, _wgslsmith_f_op_f32(max(738f, 370f))) - -1250f)));
    let var_2 = global3.a.x;
    let var_3 = Struct_1(vec2<u32>(0u, abs(~_wgslsmith_mult_u32(1119u, 0u))), 2147483647i);
    let var_4 = !(!select(!select(vec4<bool>(false, global1[_wgslsmith_index_u32(var_3.a.x, 30u)], global1[_wgslsmith_index_u32(6893u, 30u)], false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true)), vec4<bool>(global1[_wgslsmith_index_u32(~global2.x, 30u)], any(vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 22u)], 30u)], global1[_wgslsmith_index_u32(global3.a.x, 30u)], true, global1[_wgslsmith_index_u32(var_3.a.x, 30u)])), global1[_wgslsmith_index_u32(~global3.a.x, 30u)], true && global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), _wgslsmith_f_op_f32(-var_1) != -198f));
    return 1i | _wgslsmith_clamp_i32(-1i, ~0i, -_wgslsmith_add_i32(var_3.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_3.b, var_0, var_3.b), vec4<i32>(16372i, -2147483647i, -2147483647i, var_0))));
}

fn func_2(arg_0: Struct_1, arg_1: i32, arg_2: vec2<f32>) -> Struct_1 {
    var var_0 = vec4<bool>(all(!(!vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(1u, 30u)]))), false, true || (func_3() < -1i), true);
    var var_1 = Struct_2(countOneBits(_wgslsmith_sub_vec2_i32(vec2<i32>(global3.b, arg_0.b), vec2<i32>(arg_1, -45163i))) << (vec2<u32>(~arg_0.a.x << (36934u % 32u), arg_0.a.x) % vec2<u32>(32u)), Struct_1(vec2<u32>(44879u, u_input.b.x), -(-1i >> (max(global0[_wgslsmith_index_u32(u_input.a, 22u)], global2.x) % 32u))), global3.b, global3.b);
    let var_2 = Struct_2(~var_1.a, Struct_1(~_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u), vec2<u32>(global2.x, global3.a.x) & global3.a, _wgslsmith_clamp_vec2_u32(arg_0.a, vec2<u32>(4294967295u, global3.a.x), u_input.b.yx)), ~(_wgslsmith_div_i32(-33623i, var_1.b.b) << (global2.x % 32u))), arg_1, global3.b ^ _wgslsmith_div_i32(countOneBits(var_1.c) | arg_1, _wgslsmith_add_i32(~arg_0.b, var_1.c | 14762i)));
    var var_3 = select(-1i, global3.b, !(~(i32(-1i) * -15794i) != func_3()));
    var var_4 = any(vec4<bool>(true, true, _wgslsmith_f_op_f32(-arg_2.x) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x), all(!(!vec4<bool>(global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 30u)], global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(global2.x, 30u)])))));
    return Struct_1(vec2<u32>(5052u, var_2.b.a.x), 43752i);
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: i32, arg_3: Struct_1) -> vec4<i32> {
    let var_0 = vec3<bool>(any(select(vec2<bool>(global1[_wgslsmith_index_u32(func_2(arg_3, 28600i, vec2<f32>(arg_1, arg_1)).a.x, 30u)], false), vec2<bool>(true, true), true)), !global1[_wgslsmith_index_u32(arg_3.a.x, 30u)], true);
    var var_1 = var_0;
    let var_2 = vec4<i32>(arg_2, countOneBits(arg_2), _wgslsmith_div_i32(global3.b, 0i), arg_2);
    let var_3 = Struct_2(-vec2<i32>(-(~arg_0), _wgslsmith_mod_i32(arg_3.b, 1i)), func_2(arg_3, var_2.x, _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)) * vec2<f32>(-2151f, arg_1))))), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(var_2 | vec4<i32>(arg_3.b, -50099i, 11924i, -17009i), reverseBits(var_2)), ~(global3.b & arg_0), ~_wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 0i, arg_0, 1i), vec4<i32>(34459i, 19819i, 57021i, -36304i))), vec3<i32>(arg_0, arg_2, -14523i)));
    var var_4 = var_0;
    return vec4<i32>(_wgslsmith_dot_vec4_i32(var_2, vec4<i32>(0i, -24767i, _wgslsmith_add_i32(i32(-1i) * -32032i, ~var_2.x), arg_0)), 2147483647i, _wgslsmith_sub_i32(arg_2 | arg_0, -_wgslsmith_div_i32(var_2.x, -8931i)) | arg_0, arg_2);
}

fn func_5(arg_0: vec4<i32>, arg_1: i32, arg_2: vec4<bool>, arg_3: vec3<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))), -792f), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1893f, -1000f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1065f, -372f), vec2<f32>(592f, -522f)))))))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-874f, 1733f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1132f, -1330f) - vec2<f32>(1730f, 473f))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(331f, -1296f)))));
    var var_1 = func_3() << (47153u % 32u);
    var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-911f - 1738f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)))));
    let var_2 = func_2(func_2(Struct_1(u_input.b.zz << (~arg_3.yy % vec2<u32>(32u)), arg_1), _wgslsmith_sub_i32(-(31646i >> (global3.a.x % 32u)), -func_2(Struct_1(vec2<u32>(0u, u_input.b.x), arg_0.x), arg_1, vec2<f32>(559f, var_0.x)).b), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))))))), arg_1, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(446f, _wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(-var_0.x), false))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, 2108f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-286f, -162f))), vec2<f32>(845f, _wgslsmith_f_op_f32(floor(var_0.x)))))));
    return func_2(var_2, ~arg_0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, var_0.x), vec2<f32>(var_0.x, var_0.x))), vec2<f32>(-1000f, 606f)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-316f, var_0.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.x, var_0.x)))))));
}

fn func_1(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = firstTrailingBit(arg_0.d) | arg_0.d;
    global3 = arg_0.b;
    var var_1 = arg_0.b;
    var_1 = func_5(~func_4(_wgslsmith_mod_i32(-23912i, -2147483647i & global3.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_1)) + 1422f), var_1.b, func_2(arg_0.b, -38503i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)))), -69897i, vec4<bool>(true, select(global1[_wgslsmith_index_u32(arg_0.b.a.x, 30u)], -914f < _wgslsmith_f_op_f32(ceil(arg_1)), true), global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(0u, 30u)]), u_input.b);
    var var_2 = select(vec2<bool>(reverseBits(i32(-1i) * -31178i) <= arg_0.c, !global1[_wgslsmith_index_u32(~_wgslsmith_mult_u32(39615u, global0[_wgslsmith_index_u32(2463u, 22u)]), 30u)]), vec2<bool>(global1[_wgslsmith_index_u32(~countOneBits(firstTrailingBit(4691u)), 30u)], any(select(vec2<bool>(true, true), select(vec2<bool>(true, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_0.b.a.x, 22u)], 30u)]), vec2<bool>(true, true), vec2<bool>(true, global1[_wgslsmith_index_u32(0u, 30u)])), !global1[_wgslsmith_index_u32(0u, 30u)]))), select(vec2<bool>(countOneBits(-16756i) < func_5(vec4<i32>(61615i, arg_0.d, var_1.b, arg_0.d), -1i, vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 22u)], 30u)], global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 22u)], 30u)], global1[_wgslsmith_index_u32(u_input.b.x, 30u)]), u_input.b).b, (8416u >> (global2.x % 32u)) < u_input.a), vec2<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(global2.x, 30u)], true)) | true), select(select(vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 30u)], global1[_wgslsmith_index_u32(1u, 30u)]), !vec2<bool>(true, global1[_wgslsmith_index_u32(44992u, 30u)]), any(vec3<bool>(true, global1[_wgslsmith_index_u32(0u, 30u)], false))), vec2<bool>(true, true), select(!vec2<bool>(false, global1[_wgslsmith_index_u32(12056u, 30u)]), vec2<bool>(global1[_wgslsmith_index_u32(24974u, 30u)], global1[_wgslsmith_index_u32(u_input.a, 30u)]), any(vec3<bool>(global1[_wgslsmith_index_u32(26974u, 30u)], global1[_wgslsmith_index_u32(arg_0.b.a.x, 30u)], true))))));
    return ~(~firstTrailingBit(reverseBits(-1i))) ^ func_5(select(~_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, arg_0.b.b, 39577i, var_1.b), vec4<i32>(0i, arg_0.a.x, arg_0.c, 1i)), func_4(countOneBits(global3.b), _wgslsmith_f_op_f32(round(arg_1)), -global3.b, func_5(vec4<i32>(arg_0.a.x, -2147483647i, var_1.b, -51077i), -25586i, vec4<bool>(var_2.x, var_2.x, false, global1[_wgslsmith_index_u32(23727u, 30u)]), u_input.b)), any(select(vec2<bool>(true, global1[_wgslsmith_index_u32(7645u, 30u)]), vec2<bool>(var_2.x, var_2.x), global1[_wgslsmith_index_u32(4294967295u, 30u)]))), max(countOneBits(2147483647i), 0i), select(vec4<bool>(true, !global1[_wgslsmith_index_u32(0u, 30u)], any(vec2<bool>(false, global1[_wgslsmith_index_u32(global2.x, 30u)])), var_2.x), !select(vec4<bool>(false, false, false, var_2.x), vec4<bool>(var_2.x, true, false, false), vec4<bool>(var_2.x, global1[_wgslsmith_index_u32(u_input.b.x, 30u)], true, true)), select(select(vec4<bool>(var_2.x, false, global1[_wgslsmith_index_u32(56473u, 30u)], true), vec4<bool>(false, true, global1[_wgslsmith_index_u32(0u, 30u)], true), false), !vec4<bool>(true, false, global1[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76300u, 22u)], 30u)], true), select(vec4<bool>(var_2.x, false, true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(18238u, 30u)], true, global1[_wgslsmith_index_u32(u_input.a, 30u)]), global1[_wgslsmith_index_u32(u_input.b.x, 30u)]))), ~u_input.b).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(~vec2<i32>(func_1(Struct_2(vec2<i32>(global3.b, -1i), Struct_1(vec2<u32>(6980u, 10155u), global3.b), global3.b, 0i), 1382f), global3.b), Struct_1(firstTrailingBit(_wgslsmith_mult_vec2_u32(global2.xz, ~global3.a)), _wgslsmith_mod_i32(global3.b, _wgslsmith_div_i32(global3.b ^ -1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-18404i, global3.b, global3.b, global3.b), vec4<i32>(17145i, global3.b, 0i, global3.b))))), _wgslsmith_sub_i32(func_4(global3.b, 627f, 0i, func_2(func_2(Struct_1(global3.a, -47417i), global3.b, vec2<f32>(553f, 936f)), -3084i, _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-231f, 878f))))).x, -(-global3.b | global3.b)), global3.b);
    var var_1 = var_0.b;
    global4 = !global1[_wgslsmith_index_u32(64053u, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(584f, -276f, -188f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-350f, -2022f, 1205f), vec3<f32>(-938f, 929f, 955f))), vec3<bool>(var_1.b > var_1.b, global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(~var_1.a.x, 30u)]))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1646f, 891f, 732f) - vec3<f32>(856f, 2197f, -1003f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(106f, -644f, -176f))))));
}

