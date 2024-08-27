struct Struct_1 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 17> = array<Struct_2, 17>(Struct_2(Struct_1(vec3<bool>(false, false, false), 53620u), Struct_1(vec3<bool>(false, false, true), 104531u)), Struct_2(Struct_1(vec3<bool>(false, true, false), 43240u), Struct_1(vec3<bool>(false, false, true), 0u)), Struct_2(Struct_1(vec3<bool>(false, false, true), 0u), Struct_1(vec3<bool>(false, true, true), 25843u)), Struct_2(Struct_1(vec3<bool>(true, true, false), 14242u), Struct_1(vec3<bool>(false, true, false), 0u)), Struct_2(Struct_1(vec3<bool>(true, true, true), 52542u), Struct_1(vec3<bool>(true, true, false), 4294967295u)), Struct_2(Struct_1(vec3<bool>(true, true, false), 1u), Struct_1(vec3<bool>(false, true, false), 18317u)), Struct_2(Struct_1(vec3<bool>(true, false, false), 32190u), Struct_1(vec3<bool>(true, false, false), 0u)), Struct_2(Struct_1(vec3<bool>(true, true, false), 0u), Struct_1(vec3<bool>(false, false, false), 0u)), Struct_2(Struct_1(vec3<bool>(false, false, false), 0u), Struct_1(vec3<bool>(true, false, true), 56920u)), Struct_2(Struct_1(vec3<bool>(true, true, false), 28306u), Struct_1(vec3<bool>(true, false, false), 0u)), Struct_2(Struct_1(vec3<bool>(false, false, true), 25710u), Struct_1(vec3<bool>(false, false, true), 25313u)), Struct_2(Struct_1(vec3<bool>(false, true, false), 0u), Struct_1(vec3<bool>(true, true, false), 0u)), Struct_2(Struct_1(vec3<bool>(true, false, true), 40790u), Struct_1(vec3<bool>(false, true, false), 0u)), Struct_2(Struct_1(vec3<bool>(true, false, true), 62956u), Struct_1(vec3<bool>(true, true, true), 1u)), Struct_2(Struct_1(vec3<bool>(true, true, true), 24913u), Struct_1(vec3<bool>(false, true, false), 6850u)), Struct_2(Struct_1(vec3<bool>(false, true, true), 0u), Struct_1(vec3<bool>(true, false, false), 26893u)), Struct_2(Struct_1(vec3<bool>(false, true, false), 4137u), Struct_1(vec3<bool>(true, true, true), 11644u)));

var<private> global2: Struct_1;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: i32) -> i32 {
    let var_0 = -(~vec3<i32>(-(~u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 1i, -12973i, -34067i) ^ vec4<i32>(-2147483647i, 2147483647i, u_input.b, 1i), -vec4<i32>(-3527i, arg_1, -1i, arg_1)), countOneBits(~u_input.a.x)));
    let var_1 = vec3<bool>(!global0.b.a.x, !any(global2.a), true);
    var var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-926f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(1045f * -102f), _wgslsmith_f_op_f32(f32(-1f) * -1000f))))), global0.a, Struct_1(select(vec3<bool>(false, any(global2.a.zx), true), global2.a, global2.a), _wgslsmith_mult_u32(abs(~global0.b.b), ~global2.b << (~global0.a.b % 32u))), _wgslsmith_mult_vec2_u32(~(~(~vec2<u32>(4294967295u, 98029u))), _wgslsmith_mod_vec2_u32(~_wgslsmith_add_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(global2.b, 0u)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 31263u, 19157u, 1u), vec4<u32>(global0.b.b, 1u, global0.a.b, global2.b)), global0.b.b))));
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.a, 507f)))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-164f, -1019f), vec2<f32>(-1389f, var_2.a))))), vec2<bool>(global2.a.x, !global2.a.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-2102f, -1039f))))))) + _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1000f)), _wgslsmith_f_op_f32(1003f * 579f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_2.a, var_2.a)) - -706f)), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-821f, -1407f)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(553f, var_2.a), vec2<f32>(var_2.a, var_2.a), var_1.xz))))))));
    var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.a * _wgslsmith_f_op_f32(ceil(1025f)))))), Struct_1(!select(select(vec3<bool>(true, false, global0.a.a.x), var_2.b.a, var_2.c.a), vec3<bool>(var_2.c.a.x, var_2.b.a.x, false), vec3<bool>(true, true, true)), _wgslsmith_add_u32(reverseBits(4294967295u & var_2.c.b), ~firstTrailingBit(1u))), Struct_1(global0.b.a, ~var_2.c.b), vec2<u32>(~firstLeadingBit(1u), 8915u));
    return var_0.x;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    let var_0 = vec3<i32>(_wgslsmith_div_i32(func_3(true, _wgslsmith_mult_i32(31048i, u_input.a.x)), -29263i), (i32(-1i) * -(u_input.b & 1729i)) << (1u % 32u), 0i);
    var var_1 = var_0;
    let var_2 = -_wgslsmith_mod_vec2_i32(-_wgslsmith_mod_vec2_i32(~var_0.yx, u_input.a), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec3_i32(var_0, var_0)), _wgslsmith_mod_vec2_i32(-vec2<i32>(var_0.x, 8890i), ~var_0.yz), abs(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b), vec2<i32>(u_input.b, var_1.x)))));
    var var_3 = Struct_1(select(global2.a, arg_3.a.a, arg_3.a.a.x), ~countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.b, 0u, global0.b.b, arg_0), vec4<u32>(9776u, global2.b, 4294967295u, 1u))) ^ ~(~abs(45794u)));
    global2 = Struct_1(vec3<bool>(false, !arg_1, !(_wgslsmith_f_op_f32(-arg_2) >= _wgslsmith_div_f32(arg_2, 762f))), global0.a.b);
    return Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(arg_2, -452f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, -1000f)))), arg_3.a, global0.a, min(vec2<u32>((4294967295u << (arg_3.b.b % 32u)) << (var_3.b % 32u), var_3.b), _wgslsmith_clamp_vec2_u32(vec2<u32>(~arg_3.b.b, 4294967295u), _wgslsmith_div_vec2_u32(~vec2<u32>(1u, 0u), firstLeadingBit(vec2<u32>(27687u, 1u))), max(~vec2<u32>(4294967295u, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.a.b, global0.b.b), vec2<u32>(arg_3.b.b, 2308u))))));
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3, arg_3: i32) -> vec3<u32> {
    let var_0 = vec2<f32>(-721f, _wgslsmith_f_op_f32(sign(-1000f)));
    return _wgslsmith_div_vec3_u32(~vec3<u32>(~global0.a.b, select(global2.b, ~global2.b, all(vec2<bool>(true, arg_0.a.x))), firstTrailingBit(4294967295u << (global2.b % 32u))), min(~vec3<u32>(arg_0.b, 0u, 4294967295u) | abs(vec3<u32>(71110u, arg_2.c.b, 0u) << (vec3<u32>(global2.b, global2.b, 17112u) % vec3<u32>(32u))), ~vec3<u32>(~arg_0.b, 14124u, 9986u)));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> vec3<u32> {
    return select(~min(select(vec3<u32>(1u, arg_0.b.b, 1u), vec3<u32>(41275u, arg_1.a.b, 0u), vec3<bool>(false, false, false)), ~vec3<u32>(12821u, arg_1.a.b, 1u)), vec3<u32>(~_wgslsmith_dot_vec2_u32(arg_0.d, vec2<u32>(global0.a.b, global0.b.b)), 0u, 1682u | max(global2.b, arg_0.b.b)), false & arg_0.b.a.x) << (_wgslsmith_add_vec3_u32(max(func_4(global0.b, all(vec2<bool>(global0.b.a.x, arg_0.c.a.x)), func_2(global2.b, global2.a.x, arg_0.a, Struct_2(Struct_1(global2.a, global0.b.b), arg_1.b)), firstLeadingBit(u_input.a.x)), firstTrailingBit(vec3<u32>(global2.b, global0.b.b, global2.b)) | ~vec3<u32>(47138u, arg_0.d.x, 49768u)), vec3<u32>(4294967295u, ~global0.a.b, ~(~global0.a.b))) % vec3<u32>(32u));
}

fn func_5(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1) -> vec3<bool> {
    global0 = global1[_wgslsmith_index_u32(~min(global2.b, ~(global0.a.b | global2.b)) >> (~(~4294967295u) % 32u), 17u)];
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-429f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-936f)))))), func_2(_wgslsmith_div_u32(_wgslsmith_sub_u32(global0.b.b, global2.b), ~arg_2.b) >> (4294967295u % 32u), global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-560f, 144f, arg_2.a.x & false)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -171f), 225f))), Struct_2(Struct_1(!global2.a, ~global2.b), arg_0)).b, Struct_1(global0.a.a, ~firstTrailingBit(_wgslsmith_dot_vec3_u32(arg_1, arg_1))), ~vec2<u32>(~arg_1.x, 0u));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(300f, -106f, 272f) - vec3<f32>(var_0.a, -1121f, var_0.a)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -847f), var_0.a, 1418f))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(~0u, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), Struct_2(arg_0, arg_2)).a + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0.a))))));
    global2 = func_2(_wgslsmith_add_u32(global2.b, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(21062u, var_0.b.b, 16011u)), vec3<u32>(~arg_0.b, arg_2.b ^ arg_2.b, arg_2.b))), any(vec2<bool>(!all(vec4<bool>(false, false, global2.a.x, true)), true)), var_2, global1[_wgslsmith_index_u32(4294967295u, 17u)]).b;
    return select(select(arg_2.a, global2.a, !(!vec3<bool>(arg_2.a.x, false, global0.a.a.x))), !(!(!(!vec3<bool>(global0.b.a.x, false, global2.a.x)))), !vec3<bool>(true, true, false | !global2.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<Struct_2, 17>();
    let var_1 = Struct_1(select(vec3<bool>(global0.a.a.x, !(!global2.a.x), -2147483647i <= countOneBits(u_input.b)), select(!global0.b.a, global0.b.a, func_5(Struct_1(vec3<bool>(true, true, false), global2.b), func_1(Struct_3(1399f, Struct_1(vec3<bool>(true, global2.a.x, false), global0.b.b), global0.b, vec2<u32>(global0.a.b, global2.b)), global1[_wgslsmith_index_u32(global0.b.b, 17u)]), Struct_1(global2.a, 0u))), select(func_5(global0.a, ~vec3<u32>(42017u, global2.b, global2.b), func_2(24027u, global0.a.a.x, 828f, global1[_wgslsmith_index_u32(global0.a.b, 17u)]).c), global2.a, global2.a.x)), _wgslsmith_add_u32(func_4(Struct_1(global0.a.a, 88064u & global0.b.b), any(func_2(global0.b.b, false, -875f, global1[_wgslsmith_index_u32(global0.b.b, 17u)]).b.a.yz), Struct_3(_wgslsmith_f_op_f32(-2079f + 1019f), Struct_1(vec3<bool>(global2.a.x, global2.a.x, global0.a.a.x), global0.a.b), global0.b, vec2<u32>(global2.b, 1u) | vec2<u32>(0u, 9307u)), -26316i).x, global0.b.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, -1100f)))) - vec2<f32>(_wgslsmith_div_f32(-1263f, 310f), _wgslsmith_f_op_f32(616f * 558f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1444f, -207f) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-972f, 288f)))))), vec3<f32>(-611f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-785f, 827f)))), _wgslsmith_f_op_f32(-641f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(-1742f, 1121f)))))), vec2<u32>(countOneBits(global2.b), ~_wgslsmith_div_u32(global0.b.b, global0.a.b) << (global0.b.b % 32u)), ~vec3<u32>(24066u, 0u, 1u));
}

