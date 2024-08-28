struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: f32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5>;

var<private> global1: array<vec3<i32>, 31>;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: array<vec4<i32>, 10>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = 38827u;
    global1 = array<vec3<i32>, 31>();
    var var_1 = !select(select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0, 5u)], global2.x, true, false), vec4<bool>(false, true, global2.x, true), vec4<bool>(global2.x, global2.x, true, false)), !vec4<bool>(global0[_wgslsmith_index_u32(arg_0, 5u)], global0[_wgslsmith_index_u32(0u, 5u)], global2.x, false), global0[_wgslsmith_index_u32(arg_0, 5u)]), select(!vec4<bool>(global2.x, false, false, global0[_wgslsmith_index_u32(67769u, 5u)]), vec4<bool>(false, global2.x, false, global0[_wgslsmith_index_u32(arg_0, 5u)]), !vec4<bool>(global2.x, global2.x, false, false)), !any(vec2<bool>(false, global2.x))), !(!(!vec4<bool>(global2.x, false, global2.x, global0[_wgslsmith_index_u32(var_0, 5u)]))), vec4<bool>(true, global2.x, _wgslsmith_mod_i32(u_input.b.x, u_input.b.x) >= ~2147483647i, !any(vec4<bool>(false, global2.x, global0[_wgslsmith_index_u32(arg_0, 5u)], false))));
    var var_2 = Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(164f * -1782f)))), 148f)), ~(-vec2<i32>(-8731i, 0i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -1212f, _wgslsmith_f_op_f32(select(1943f, -569f, global2.x)))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(269f, 702f, -2013f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(456f * -262f), _wgslsmith_div_f32(-975f, 725f))))) + 2024f), Struct_1(any(var_1.zyw), _wgslsmith_dot_vec4_u32(vec4<u32>(max(arg_0, 56299u), var_0, arg_0 >> (arg_0 % 32u), 28707u), _wgslsmith_div_vec4_u32(vec4<u32>(arg_0, 1566u, var_0, arg_0), ~vec4<u32>(var_0, 17312u, var_0, 94357u))), ~(u_input.b.xzz ^ global1[_wgslsmith_index_u32(var_0 << (var_0 % 32u), 31u)]), abs(arg_0)));
    return var_0;
}

fn func_2(arg_0: Struct_1) -> u32 {
    global2 = vec2<bool>(true, true);
    let var_0 = Struct_1(false, func_3(~arg_0.b), global1[_wgslsmith_index_u32(arg_0.d, 31u)], arg_0.d | _wgslsmith_clamp_u32(countOneBits(~1u), ~(22692u & arg_0.d), _wgslsmith_dot_vec3_u32(~vec3<u32>(56616u, arg_0.d, 4294967295u), vec3<u32>(9777u, 6934u, arg_0.b))));
    var var_1 = ~(~u_input.b.yzw);
    let var_2 = var_0;
    global2 = !select(vec2<bool>(!(u_input.c < -2147483647i), var_2.a), !select(select(vec2<bool>(true, false), vec2<bool>(var_0.a, true), false), vec2<bool>(true, true), select(vec2<bool>(global2.x, true), vec2<bool>(true, false), vec2<bool>(var_2.a, var_2.a))), !all(select(vec3<bool>(global2.x, true, false), vec3<bool>(false, var_2.a, var_0.a), false)));
    return ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_2.b, 22436u, 1u), _wgslsmith_div_vec3_u32(vec3<u32>(arg_0.d, 1u, var_0.d), vec3<u32>(4294967295u, 1u, var_2.b))), firstLeadingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0.b, var_0.b), vec3<u32>(46918u, 65670u, 1u)))), _wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, var_0.d, 41119u) ^ vec3<u32>(65123u, arg_0.d, var_2.d), vec3<u32>(35136u, 13865u, var_2.b) ^ vec3<u32>(var_0.b, 47467u, var_2.b)) >> ((~vec3<u32>(var_0.d, var_0.b, arg_0.b) << (vec3<u32>(var_0.d, var_0.d, 1u) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_4(arg_0: u32, arg_1: f32) -> Struct_1 {
    global1 = array<vec3<i32>, 31>();
    global0 = array<bool, 5>();
    var var_0 = Struct_1(false, 41829u & ~func_2(Struct_1(false, arg_0, u_input.b.wyz, 9194u)), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.ww & vec2<i32>(u_input.c, -1i), _wgslsmith_clamp_vec2_i32(u_input.b.zw, vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(2147483647i, u_input.c))), u_input.c, ~u_input.a.x), ~vec3<i32>(i32(-1i) * -1i, -u_input.a.x, -u_input.a.x), firstTrailingBit(select(~vec3<i32>(u_input.c, u_input.b.x, u_input.b.x), -u_input.b.wzw, !vec3<bool>(true, false, global2.x)))), ~func_3(arg_0));
    var var_1 = !select(select(vec3<bool>(var_0.a || global0[_wgslsmith_index_u32(15969u, 5u)], 31437u != var_0.d, !var_0.a), vec3<bool>(false, any(vec4<bool>(var_0.a, false, false, global0[_wgslsmith_index_u32(4294967295u, 5u)])), global2.x), !vec3<bool>(true, var_0.a, false)), select(vec3<bool>(true, true, true), !vec3<bool>(true, var_0.a, global2.x), true), arg_1 == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(-656f)), _wgslsmith_f_op_f32(629f - -688f), any(vec3<bool>(true, false, global2.x)))));
    let var_2 = Struct_1(false, 0u, var_0.c, 0u);
    return Struct_1(select(false && any(vec2<bool>(var_2.a, var_1.x)), var_0.a, true), select(_wgslsmith_dot_vec2_u32(max(vec2<u32>(var_2.d, 0u), ~vec2<u32>(8802u, 1u)), vec2<u32>(~var_0.d, func_3(var_0.b))), 4294967295u, var_0.a | !select(true, var_0.a, true)), global1[_wgslsmith_index_u32(func_2(var_2), 31u)], ~firstTrailingBit(max(arg_0, 1u) << ((63596u << (var_2.b % 32u)) % 32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(1u & func_2(Struct_1(all(vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(4294967295u, 5u)])), 1u, u_input.a, 0u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-939f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-734f - -798f), 526f)))));
    global1 = array<vec3<i32>, 31>();
    let var_1 = min(vec3<u32>(1u, _wgslsmith_add_u32(_wgslsmith_mult_u32(abs(12472u), _wgslsmith_clamp_u32(var_0.d, 35658u, 9172u)), var_0.d), reverseBits(61353u)), firstTrailingBit(~_wgslsmith_mult_vec3_u32(vec3<u32>(var_0.b, 1u, var_0.d), vec3<u32>(4294967295u, var_0.d, 38u)) ^ ~(vec3<u32>(var_0.b, var_0.b, 20329u) ^ vec3<u32>(0u, 4294967295u, var_0.d))));
    var var_2 = firstLeadingBit(vec4<u32>(4294967295u << (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.d, 0u, 32813u, 1u)), abs(vec4<u32>(41890u, 4294967295u, var_0.b, 63559u))) % 32u), (4294967295u ^ (var_1.x | 18417u)) << (var_0.d % 32u), var_1.x, 0u >> (_wgslsmith_sub_u32(51836u, var_0.b) % 32u)));
    var_0 = func_4(~var_1.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1405f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -381f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1399f, _wgslsmith_f_op_f32(-394f - -704f)))));
    return Struct_1(any(!select(vec3<bool>(var_0.a, true, false), !vec3<bool>(var_0.a, true, global2.x), select(vec3<bool>(global2.x, var_0.a, global0[_wgslsmith_index_u32(var_1.x, 5u)]), vec3<bool>(true, true, var_0.a), vec3<bool>(global2.x, global0[_wgslsmith_index_u32(0u, 5u)], true)))), max(53719u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, ~var_0.b, ~4294967295u, var_0.d), _wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(var_0.d, var_2.x, var_1.x, var_2.x)), vec4<u32>(44097u, 54997u, 0u, 0u)))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.d, var_2.x, 0u, 0u), vec4<u32>(var_2.x, select(4294967295u, var_1.x, global0[_wgslsmith_index_u32(1u, 5u)]), ~0u, var_0.b)), ~var_0.b >> (func_2(func_4(1u, 1868f)) % 32u)), 31u)], 40160u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<i32>, 31>();
    var var_0 = Struct_1(global2.x, 58113u, u_input.b.zzw, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 6907u) << (vec2<u32>(1u, 0u) % vec2<u32>(32u)), vec2<u32>(22339u, 10602u)) ^ (max(~48507u, _wgslsmith_div_u32(4294967295u, 4294967295u)) >> (1u % 32u)));
    var var_1 = func_1();
    let var_2 = Struct_1(all(!(!select(vec3<bool>(false, var_0.a, true), vec3<bool>(false, var_1.a, var_0.a), false))), var_1.d, vec3<i32>(_wgslsmith_dot_vec2_i32(~var_0.c.yx, var_1.c.yx), -24429i, ~14972i), 12600u);
    var var_3 = var_1.c.x;
    var var_4 = select(~(_wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(var_2.b, var_0.b, 1u, 66685u), vec4<u32>(24812u, 0u, var_1.d, 31028u)), ~vec4<u32>(var_0.d, 0u, 0u, 10859u)) >> (vec4<u32>(79627u, 1u, 56918u, 1u) % vec4<u32>(32u))), vec4<u32>((var_2.b & _wgslsmith_sub_u32(62026u, var_0.b)) & var_1.d, select(var_0.d, var_0.b, select(!global2.x, var_2.a, var_2.a)), 0u ^ select(~var_1.b, 1u, global2.x || false), min(select(var_2.d, 3377u, global2.x), var_0.b)), select(select(select(select(vec4<bool>(false, false, global2.x, global2.x), vec4<bool>(false, global2.x, false, false), vec4<bool>(false, true, false, var_2.a)), !vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.d, 5u)], var_1.a, true), true | var_0.a), select(select(vec4<bool>(global2.x, var_0.a, global2.x, false), vec4<bool>(global2.x, var_2.a, true, true), global2.x), select(vec4<bool>(false, true, var_1.a, false), vec4<bool>(global0[_wgslsmith_index_u32(0u, 5u)], true, global2.x, true), vec4<bool>(global2.x, var_0.a, var_1.a, false)), global2.x), abs(var_2.b) <= ~37313u), select(!vec4<bool>(var_0.a, var_1.a, false, var_0.a), select(select(vec4<bool>(false, var_2.a, true, false), vec4<bool>(global0[_wgslsmith_index_u32(269u, 5u)], false, var_2.a, false), vec4<bool>(true, global0[_wgslsmith_index_u32(var_0.d, 5u)], false, false)), vec4<bool>(global0[_wgslsmith_index_u32(var_0.b, 5u)], true, var_1.a, false), false), true != (global2.x || global2.x)), select(var_1.a & true, true, global2.x)));
    let var_5 = select(select(vec4<bool>(true, !var_1.a && (var_2.c.x <= var_2.c.x), func_1().a, true), select(vec4<bool>(var_2.a, select(var_2.a, global0[_wgslsmith_index_u32(4294967295u, 5u)], false), true, global0[_wgslsmith_index_u32(50600u, 5u)]), vec4<bool>(var_1.a, global0[_wgslsmith_index_u32(~var_2.d, 5u)], true, true), !(!vec4<bool>(global0[_wgslsmith_index_u32(var_1.b, 5u)], global2.x, false, false))), true), select(select(vec4<bool>(!global2.x, all(vec2<bool>(var_2.a, true)), all(vec2<bool>(false, global0[_wgslsmith_index_u32(var_2.d, 5u)])), any(vec3<bool>(true, global0[_wgslsmith_index_u32(var_2.d, 5u)], false))), select(vec4<bool>(global2.x, true, true, true), !vec4<bool>(true, true, var_0.a, false), true), select(vec4<bool>(global2.x, true, var_1.a, false), select(vec4<bool>(var_0.a, var_1.a, global0[_wgslsmith_index_u32(31548u, 5u)], true), vec4<bool>(false, true, var_1.a, var_1.a), vec4<bool>(var_0.a, var_2.a, var_0.a, false)), true)), select(vec4<bool>(var_0.a, true, true, global0[_wgslsmith_index_u32(func_1().d, 5u)]), !select(vec4<bool>(global2.x, false, global0[_wgslsmith_index_u32(var_4.x, 5u)], var_0.a), vec4<bool>(true, false, true, true), vec4<bool>(true, var_0.a, false, true)), !func_4(var_2.b, 377f).a), vec4<bool>(true, var_0.a, any(vec2<bool>(true, true)), false)), vec4<bool>(true, false, func_4(12731u, _wgslsmith_f_op_f32(trunc(-1910f))).a, false));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1143f)) + -1829f))), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_add_u32(firstTrailingBit(var_2.b), ~5994u), 0u, ~(var_4.x << (var_2.d % 32u))), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, var_2.b, var_0.b, 1u), ~(~vec4<u32>(0u, 69525u, 4294967295u, var_0.d)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1396f - -1633f), _wgslsmith_f_op_f32(949f + 1080f), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -797f)) + 359f), _wgslsmith_f_op_f32(sign(774f)), -522f));
}

