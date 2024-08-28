struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: Struct_1;

var<private> global2: array<f32, 31>;

var<private> global3: f32 = 332f;

var<private> global4: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
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

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    let var_0 = vec4<f32>(global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(4294967295u, 31u)]) + -298f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-767f))) - -352f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -345f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1301f)), _wgslsmith_div_f32(-108f, 479f))))), global1.a.x);
    global2 = array<f32, 31>();
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(5997u, 31u)]) * -1932f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b.x), var_0.x))), -853f);
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.a - vec3<f32>(global1.a.x, -250f, -552f))))));
    let var_2 = reverseBits(min(53679i, -2147483647i));
    return _wgslsmith_f_op_f32(f32(-1f) * -379f);
}

fn func_2() -> f32 {
    var var_0 = Struct_2(~_wgslsmith_mult_u32(1u >> (1u % 32u), 0u), Struct_1(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -196f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 31u)]), global1.a.x))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + global1.b.x), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(countOneBits(0u), 31u)] * _wgslsmith_f_op_f32(floor(899f))), _wgslsmith_f_op_f32(417f * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 31u)] + global1.a.x)))));
    var var_1 = any(select(select(!select(vec2<bool>(global4.x, global4.x), vec2<bool>(global4.x, true), vec2<bool>(true, false)), vec2<bool>(true, global4.x), !global4.x), !vec2<bool>(global4.x, global4.x), true));
    let var_2 = ~(u_input.a >> (~(~var_0.a) % 32u));
    var var_3 = var_0.a;
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -436f) * -322f), global2[_wgslsmith_index_u32(~17656u, 31u)]);
    return global2[_wgslsmith_index_u32(var_0.a, 31u)];
}

fn func_1(arg_0: u32, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-748f, -710f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(37354u, 31u)])), 791f, -215f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(min(global1.a.x, 1000f)), _wgslsmith_f_op_f32(func_2()), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(50640u, arg_0, 18501u), 31u)], _wgslsmith_div_f32(340f, -135f)))) * _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global2[_wgslsmith_index_u32(arg_0, 31u)], global2[_wgslsmith_index_u32(15686u, 31u)], global2[_wgslsmith_index_u32(arg_1, 31u)], 770f))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2[_wgslsmith_index_u32(13669u, 31u)], -2709f, global1.b.x, 430f))))))));
    var var_1 = Struct_2(_wgslsmith_dot_vec2_u32(~(~firstLeadingBit(vec2<u32>(34092u, 11121u))), ~vec2<u32>(~arg_1, _wgslsmith_sub_u32(arg_1, 1u))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global1.b * global1.b)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2[_wgslsmith_index_u32(30345u, 31u)], global1.a.x, var_0.x)))), global1.a));
    let var_2 = 23414u;
    var_1 = Struct_2(~_wgslsmith_sub_u32(63121u, firstTrailingBit(83701u)), Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(arg_0, 31u)], global2[_wgslsmith_index_u32(arg_1, 31u)]))), var_1.b.b.x, -166f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.b + _wgslsmith_f_op_vec3_f32(select(var_1.b.a, vec3<f32>(540f, 892f, global1.b.x), true))) + global1.b)));
    global2 = array<f32, 31>();
    return var_1.b;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(func_1(0u, _wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 34681u, 23608u), 1u)).b.zz, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.zy - arg_1.b.xz) - _wgslsmith_f_op_vec2_f32(max(arg_1.a.xy, arg_1.b.zx))))) * vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 31u)] - arg_1.a.x), 276f)) - 766f), _wgslsmith_f_op_f32(674f * _wgslsmith_f_op_f32(arg_1.b.x * _wgslsmith_f_op_f32(-arg_1.b.x)))));
    let var_1 = arg_1;
    var var_2 = Struct_2(~_wgslsmith_div_u32(1u, abs(countOneBits(12144u))), Struct_1(_wgslsmith_f_op_vec3_f32(global1.a * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_0.x, var_1.b.x))), var_1.a));
    var var_3 = all(select(select(!(!vec2<bool>(global4.x, global4.x)), !select(vec2<bool>(true, global4.x), vec2<bool>(global4.x, global4.x), true), vec2<bool>(false, false)), vec2<bool>(all(vec2<bool>(true, true)), global4.x || true), true));
    global3 = _wgslsmith_div_f32(-728f, _wgslsmith_f_op_f32(-var_1.b.x));
    return _wgslsmith_mult_vec4_u32(abs(abs(_wgslsmith_div_vec4_u32(~vec4<u32>(26278u, 4294967295u, 8063u, 9162u), firstTrailingBit(vec4<u32>(var_2.a, 1u, var_2.a, 0u))))), reverseBits(reverseBits(vec4<u32>(var_2.a, var_2.a, var_2.a, 11843u) << (vec4<u32>(61267u, 92314u, 59081u, var_2.a) % vec4<u32>(32u)))) ^ (~(vec4<u32>(var_2.a, var_2.a, 42853u, 41209u) | vec4<u32>(var_2.a, var_2.a, 45751u, var_2.a)) >> (~(~vec4<u32>(var_2.a, 4294967295u, var_2.a, 41417u)) % vec4<u32>(32u))));
}

fn func_5(arg_0: vec4<u32>, arg_1: f32, arg_2: vec3<u32>) -> Struct_3 {
    let var_0 = Struct_4(Struct_3(select(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 0i), vec2<i32>(u_input.a, -1i)), vec2<i32>(u_input.a, u_input.a)), (vec2<i32>(-11387i, -2147483647i) >> (vec2<u32>(0u, arg_2.x) % vec2<u32>(32u))) ^ vec2<i32>(1i, u_input.a), all(select(vec4<bool>(global4.x, true, false, false), vec4<bool>(global4.x, global4.x, true, global4.x), vec4<bool>(global4.x, global4.x, false, global4.x)))), Struct_2(arg_2.x, func_1(abs(arg_0.x), countOneBits(arg_0.x)))), !select(vec4<bool>(true, false, true, true), !(!vec4<bool>(false, global4.x, global4.x, false)), vec4<bool>(any(vec2<bool>(global4.x, global4.x)), true, all(vec2<bool>(true, true)), false)));
    var var_1 = vec2<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 7840u, 0u) & arg_2, arg_0.yzz) ^ min(arg_0.x, _wgslsmith_clamp_u32(0u << (arg_2.x % 32u), firstLeadingBit(4294967295u), arg_0.x)), ~reverseBits(~_wgslsmith_div_u32(arg_0.x, 28478u)));
    var var_2 = ~_wgslsmith_clamp_i32(2147483647i, _wgslsmith_add_i32(-1i, -20054i), 15874i);
    global1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)), _wgslsmith_f_op_vec3_f32(var_0.a.b.b.a - vec3<f32>(_wgslsmith_f_op_f32(-1265f * _wgslsmith_f_op_f32(-global1.a.x)), global1.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(245f + 1473f) + _wgslsmith_f_op_f32(round(314f))))));
    let var_3 = var_1.x << (_wgslsmith_add_u32(arg_2.x, 22083u) % 32u);
    return Struct_3(abs(~vec2<i32>(_wgslsmith_mult_i32(var_0.a.a.x, 0i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, 2147483647i, u_input.a, 1i), vec4<i32>(-1i, 12896i, var_0.a.a.x, u_input.a)))), var_0.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 31>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(1u, 31u)])))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -628f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(710f - -1000f)))));
    let var_1 = 42969u;
    let var_2 = func_5(_wgslsmith_clamp_vec4_u32(~func_4(vec3<i32>(u_input.a, u_input.a, 1i), func_1(var_1, var_1)), ~func_4(vec3<i32>(2147483647i, u_input.a, -2147483647i) << (vec3<u32>(7557u, 0u, 1u) % vec3<u32>(32u)), Struct_1(global1.a, global1.a)), vec4<u32>(8193u, firstLeadingBit(var_1) ^ 50018u, reverseBits(_wgslsmith_mod_u32(4294967295u, var_1)), countOneBits(_wgslsmith_div_u32(0u, var_1)))), _wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(trunc(global1.a.x))), vec3<u32>(14196u, ~(~(~1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1, var_1, var_1), ~vec3<u32>(0u, 0u, 1u)) << ((~8120u << (var_1 % 32u)) % 32u)));
    var var_3 = var_2;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.b.b.a.xy) * func_5(vec4<u32>(28744u, var_3.b.a, (36089u >> (var_3.b.a % 32u)) << (1u % 32u), var_1), _wgslsmith_f_op_f32(abs(var_3.b.b.b.x)), reverseBits(~vec3<u32>(0u, var_3.b.a, var_2.b.a)) ^ vec3<u32>(4294967295u, _wgslsmith_sub_u32(var_2.b.a, 90105u), ~var_2.b.a)).b.b.b.xz);
    global1 = func_5(vec4<u32>(func_4(~vec3<i32>(var_3.a.x, 0i, var_3.a.x), func_5(vec4<u32>(var_1, 4294967295u, var_2.b.a, 24450u), _wgslsmith_f_op_f32(var_2.b.b.b.x * global1.a.x), abs(vec3<u32>(var_3.b.a, var_1, var_3.b.a))).b.b).x, min(1u, var_3.b.a & 1u), ~var_3.b.a, var_1), func_5(min(_wgslsmith_add_vec4_u32(vec4<u32>(1u, var_3.b.a, var_2.b.a, 4294967295u), vec4<u32>(var_2.b.a, 1u, var_1, 49786u)), vec4<u32>(var_1, 4294967295u, 4294967295u, 0u)) << (min(reverseBits(vec4<u32>(4294967295u, var_1, 1u, 1u)), _wgslsmith_div_vec4_u32(vec4<u32>(var_1, 30903u, var_3.b.a, var_2.b.a), vec4<u32>(var_3.b.a, 4294967295u, var_1, var_3.b.a))) % vec4<u32>(32u)), 201f, _wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, var_2.b.a, 25670u), vec3<u32>(var_1, 29249u, var_1), ~vec3<u32>(0u, 81556u, 55996u)), firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(var_2.b.a, 7111u, 33220u), vec3<u32>(1u, 26687u, var_2.b.a))))).b.b.a.x, func_4(min(~min(vec3<i32>(u_input.a, -43317i, 0i), vec3<i32>(9602i, -22535i, -16120i)), vec3<i32>(-1i << (0u % 32u), var_3.a.x, ~var_3.a.x)), func_1(39677u, var_3.b.a >> (79984u % 32u))).xxw).b.b;
    let var_5 = vec4<bool>(!all(select(vec3<bool>(global4.x, false, global4.x), !vec3<bool>(false, global4.x, global4.x), vec3<bool>(true, true, true))), any(vec4<bool>(true, all(select(vec4<bool>(global4.x, global4.x, global4.x, global4.x), vec4<bool>(true, global4.x, global4.x, global4.x), false)), true, any(vec3<bool>(global4.x, true, false)))), global4.x, true);
    let var_6 = select(firstLeadingBit(select(firstTrailingBit(vec4<i32>(0i, -20253i, var_3.a.x, u_input.a)) >> (reverseBits(vec4<u32>(var_2.b.a, var_1, 58319u, 106042u)) % vec4<u32>(32u)), reverseBits(-vec4<i32>(2147483647i, var_3.a.x, var_3.a.x, 2147483647i)), select(!vec4<bool>(global4.x, false, global4.x, true), var_5, var_5))), vec4<i32>(-((var_2.a.x << (20309u % 32u)) | 794i), min(0i | func_5(vec4<u32>(var_2.b.a, var_1, var_2.b.a, var_3.b.a), var_3.b.b.a.x, vec3<u32>(var_2.b.a, var_2.b.a, var_3.b.a)).a.x, countOneBits(var_3.a.x) >> (55771u % 32u)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(abs(26436i), ~34098i), ~abs(0i)), 2147483647i), !select(!select(vec4<bool>(false, true, false, false), var_5, true), var_5, global4.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(var_1, var_1).b + _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_3.b.b.a.x, global1.a.x, var_2.b.b.b.x)))) + vec3<f32>(-1000f, _wgslsmith_f_op_f32(floor(var_3.b.b.b.x)), var_3.b.b.a.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_3.b.b.b.zz))))))), 38850i << (var_2.b.a % 32u), var_2.b.b.b.x, var_2.b.b.a.x);
}

