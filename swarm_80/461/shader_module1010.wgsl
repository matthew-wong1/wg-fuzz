struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: f32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: array<vec3<u32>, 15> = array<vec3<u32>, 15>(vec3<u32>(40314u, 1u, 23830u), vec3<u32>(1u, 71945u, 5524u), vec3<u32>(75641u, 9265u, 67604u), vec3<u32>(27923u, 50326u, 18937u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(44883u, 0u, 40416u), vec3<u32>(29857u, 86290u, 0u), vec3<u32>(1u, 48607u, 38612u), vec3<u32>(25201u, 18028u, 4294967295u), vec3<u32>(0u, 4294967295u, 1u), vec3<u32>(1u, 0u, 1u), vec3<u32>(63648u, 43694u, 9207u), vec3<u32>(59958u, 41205u, 1u), vec3<u32>(4294967295u, 0u, 27310u), vec3<u32>(4294967295u, 9380u, 4294967295u));

var<private> global2: f32 = 605f;

var<private> global3: array<vec3<bool>, 13> = array<vec3<bool>, 13>(vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> vec3<i32> {
    let var_0 = select(any(select(vec3<bool>(false, global0.x, global0.x), !(!global0.wzw), select(global0.wwz, vec3<bool>(true, true, false), true))), all(global0.wyy), false);
    var var_1 = Struct_1(select(!vec4<bool>(select(false, global0.x, global0.x), var_0, true == global0.x, false), !(!(!vec4<bool>(false, global0.x, true, global0.x))), true), _wgslsmith_sub_u32(max(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 0u), vec2<u32>(24444u, 4294967295u)), ~4294967295u) ^ ~abs(u_input.d.x), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, 0u, u_input.a.x), u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-185f * 1000f)))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, _wgslsmith_add_u32(61790u, abs(u_input.a.x))), _wgslsmith_add_vec2_u32(~firstLeadingBit(vec2<u32>(4294967295u, 78769u)), u_input.d.xy)));
    global0 = !select(var_1.a, vec4<bool>(global0.x, !var_0, false && any(vec4<bool>(false, var_0, true, true)), var_1.a.x), var_1.a.x);
    let var_2 = Struct_4(vec3<bool>(false, !var_1.a.x, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) - 796f), reverseBits(~(~vec3<u32>(var_1.b, 1u, var_1.d))), firstTrailingBit(vec2<i32>(-2147483647i | -u_input.c.x, u_input.c.x)), Struct_2(global0.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-227f, -995f), vec2<f32>(-1095f, var_1.c), true))))));
    let var_3 = _wgslsmith_add_vec4_i32(min(_wgslsmith_clamp_vec4_i32(reverseBits(vec4<i32>(u_input.b, 43297i, u_input.c.x, -1i)), vec4<i32>(0i, 1i, -2147483647i, 9474i) << (vec4<u32>(u_input.d.x, 1u, u_input.d.x, var_1.d) % vec4<u32>(32u)), select(vec4<i32>(var_2.d.x, 0i, u_input.c.x, 22605i), vec4<i32>(u_input.b, -32042i, 13078i, -2147483647i), true)) << ((u_input.a | _wgslsmith_mod_vec4_u32(vec4<u32>(var_1.b, 4294967295u, 22972u, 4294967295u), u_input.a)) % vec4<u32>(32u)), -select(vec4<i32>(9898i, u_input.c.x, u_input.c.x, var_2.d.x), vec4<i32>(31724i, -1i, 1i, -24848i), var_1.c < -165f)), vec4<i32>(_wgslsmith_sub_i32(max(var_2.d.x, 2147483647i), _wgslsmith_sub_i32(0i, 0i)) & _wgslsmith_dot_vec3_i32(u_input.c, u_input.c), firstTrailingBit(reverseBits(~var_2.d.x)), -4579i << (_wgslsmith_add_u32(var_2.c.x, ~var_2.c.x) % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, _wgslsmith_dot_vec4_i32(vec4<i32>(-46104i, var_2.d.x, 31908i, 2147483647i), vec4<i32>(var_2.d.x, -1i, 15783i, -4897i)), select(u_input.c.x, -1i, true), 1i), select(vec4<i32>(u_input.c.x, 1i, -45015i, u_input.b), vec4<i32>(-898i, u_input.b, -16827i, var_2.d.x), vec4<bool>(var_0, true, false, true)) | -vec4<i32>(2147483647i, u_input.c.x, 15063i, u_input.b))));
    return vec3<i32>(-78066i, reverseBits(32756i), var_3.x);
}

fn func_4(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_3) -> vec3<bool> {
    var var_0 = Struct_1(!select(!select(vec4<bool>(false, arg_2.a.a, arg_2.a.a, true), vec4<bool>(arg_2.a.a, global0.x, arg_0, global0.x), vec4<bool>(arg_0, arg_0, arg_0, global0.x)), !select(vec4<bool>(arg_2.a.a, global0.x, true, arg_0), vec4<bool>(true, arg_2.a.a, true, false), false), vec4<bool>(global0.x, !arg_2.a.a, arg_0, arg_0)), abs(_wgslsmith_mod_u32(0u, u_input.d.x)), -188f, select(~39413u, u_input.a.x, true));
    let var_1 = var_0.a.x;
    var_0 = Struct_1(select(select(var_0.a, !vec4<bool>(global0.x, false, false, true), vec4<bool>(!arg_0, !arg_2.a.a, any(vec3<bool>(true, true, global0.x)), false)), select(select(var_0.a, var_0.a, true & arg_0), vec4<bool>(arg_2.a.a == arg_2.a.a, false, arg_1.x > u_input.c.x, true && arg_2.a.a), true), select(vec4<bool>(select(arg_2.a.a, true, true), false, true, any(global0.zy)), select(!vec4<bool>(false, false, var_0.a.x, true), vec4<bool>(true, global0.x, global0.x, true), false), all(select(vec2<bool>(true, arg_0), global0.wy, vec2<bool>(arg_2.a.a, var_0.a.x))))), ~abs(~(~0u)), 1586f, 40342u);
    var var_2 = -669f;
    let var_3 = -1480f;
    return select(select(select(var_0.a.zzx, !(!vec3<bool>(true, true, arg_0)), !(!var_0.a.x)), vec3<bool>(any(select(vec3<bool>(false, arg_2.a.a, false), global0.wwy, global0.x)), var_0.a.x && true, arg_0), vec3<bool>(any(var_0.a), !(var_0.b < 92162u), true)), var_0.a.yyx, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1335f, _wgslsmith_f_op_f32(-1305f * var_3)), -316f)) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(267f - arg_2.a.b.x)))));
}

fn func_2() -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - -679f), _wgslsmith_f_op_f32(f32(-1f) * -189f), _wgslsmith_f_op_f32(select(-879f, -775f, true)))))));
    global1 = array<vec3<u32>, 15>();
    var var_1 = Struct_2(false, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -481f) + vec2<f32>(var_0.x, -1437f)) - var_0.yy) - _wgslsmith_f_op_vec2_f32(var_0.zz * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, var_0.x))))));
    let var_2 = u_input.c;
    let var_3 = func_4(true, func_3(), Struct_3(Struct_2(true, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(abs(var_0.xx))))), 244f));
    return Struct_4(!global3[_wgslsmith_index_u32(u_input.d.x, 13u)], var_0.x, ~u_input.d, select(abs(_wgslsmith_mult_vec2_i32(abs(var_2.zx), _wgslsmith_clamp_vec2_i32(vec2<i32>(-39182i, 0i), var_2.yz, vec2<i32>(var_2.x, 18849i)))), vec2<i32>(var_2.x, -max(u_input.b, -70118i)), var_3.xy), Struct_2(func_4(true, u_input.c, Struct_3(Struct_2(false, var_1.b), var_1.b.x)).x, _wgslsmith_f_op_vec2_f32(max(var_1.b, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(var_0.zx, var_1.b))))))));
}

fn func_1(arg_0: u32) -> f32 {
    let var_0 = func_2();
    var var_1 = Struct_3(var_0.e, _wgslsmith_f_op_f32(-634f * _wgslsmith_div_f32(-1576f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))));
    let var_2 = Struct_4(select(var_0.a, global0.xyx, func_2().a), _wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_add_vec3_u32(~global1[_wgslsmith_index_u32(var_0.c.x, 15u)], ~var_0.c), vec2<i32>(-1i, var_0.d.x), Struct_2(true, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, var_1.a.b.x), var_0.e.b))))));
    var var_3 = vec2<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, max(-30408i >> (u_input.a.x % 32u), var_2.d.x), _wgslsmith_mod_i32(~var_2.d.x, 2147483647i)), _wgslsmith_mod_vec3_i32(u_input.c, ~u_input.c) << (_wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(0u, 90238u, var_2.c.x)), vec3<u32>(49082u, arg_0, 1u) ^ vec3<u32>(71907u, 0u, 1u)) % vec3<u32>(32u))));
    let var_4 = vec4<f32>(var_2.b, var_1.a.b.x, var_0.e.b.x, 1000f);
    return 983f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~u_input.d.x;
    var var_1 = Struct_3(Struct_2(global0.x, vec2<f32>(_wgslsmith_f_op_f32(func_1(u_input.d.x)), _wgslsmith_f_op_f32(-348f * _wgslsmith_div_f32(-262f, -562f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1071f + 2010f), _wgslsmith_f_op_f32(440f - 587f))), -1330f))));
    var var_2 = Struct_5(u_input.a.yxw, Struct_3(Struct_2(true, _wgslsmith_f_op_vec2_f32(-vec2<f32>(980f, var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.b))) * func_2().b)));
    let var_3 = Struct_4(select(vec3<bool>(!(var_1.b <= var_1.b), _wgslsmith_f_op_f32(func_1(4294967295u)) <= 1f, true), !func_2().a, !var_1.a.a), _wgslsmith_f_op_f32(var_1.a.b.x + _wgslsmith_f_op_f32(select(1630f, var_2.b.b, true))), var_2.a, -vec2<i32>(_wgslsmith_div_i32(-42044i, 1i), countOneBits(_wgslsmith_sub_i32(u_input.b, u_input.c.x))), Struct_2(any(!select(vec4<bool>(true, true, var_2.b.a.a, var_1.a.a), vec4<bool>(true, true, false, false), var_2.b.a.a)), var_2.b.a.b));
    global1 = array<vec3<u32>, 15>();
    global0 = select(select(!(!(!vec4<bool>(var_1.a.a, global0.x, global0.x, false))), !vec4<bool>(all(global0.yxx), !var_2.b.a.a, var_1.a.a, true), !vec4<bool>(var_1.b == 1748f, true, true && global0.x, var_1.a.a)), vec4<bool>(true, true, true, true), vec4<bool>(true & any(vec2<bool>(var_1.a.a, false)), false, all(select(var_3.a.yy, vec2<bool>(false, true), var_3.a.xx)), true));
    let var_4 = var_2.a.x;
    let var_5 = global0.yz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(firstLeadingBit(~_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 0i, var_3.d.x, 2147483647i), vec4<i32>(2147483647i, u_input.c.x, -31330i, var_3.d.x))), select(vec4<i32>(-60009i, _wgslsmith_div_i32(var_3.d.x, u_input.b), _wgslsmith_clamp_i32(u_input.b, -1i, -18453i), ~35656i), min(select(vec4<i32>(u_input.c.x, -2147483647i, 2147483647i, var_3.d.x), vec4<i32>(var_3.d.x, u_input.b, 42653i, -17655i), global0.x), select(vec4<i32>(u_input.b, -54008i, -2147483647i, u_input.b), vec4<i32>(u_input.c.x, u_input.c.x, u_input.c.x, 13776i), vec4<bool>(global0.x, true, var_3.a.x, true))), vec4<bool>(true, any(vec3<bool>(false, true, false)), func_4(true, vec3<i32>(u_input.b, u_input.b, var_3.d.x), var_2.b).x, any(vec3<bool>(true, false, false))))));
}

