struct Struct_1 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec2<bool>(false, false), vec3<u32>(8900u, 17259u, 4294967295u), 0u, 56905u), vec2<f32>(893f, 1000f), Struct_1(vec2<bool>(true, true), vec3<u32>(32309u, 60668u, 4294967295u), 55408u, 1u));

var<private> global1: array<f32, 14> = array<f32, 14>(1611f, 141f, 2273f, -261f, 311f, -1018f, 367f, -696f, 934f, 560f, 1000f, 791f, -763f, 458f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_2, 10>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(Struct_1(vec2<bool>(select(!global2.a.x, true, any(vec4<bool>(global2.a.x, true, true, true))), !(!global0.c.a.x)), vec3<u32>(~global0.c.c, 76703u, _wgslsmith_sub_u32(41560u, u_input.a ^ global0.a.d)), global0.c.b.x, global2.c), global0.b, global0.a);
    let var_1 = Struct_1(vec2<bool>(var_0.a.a.x, false), vec3<u32>(41085u, var_0.c.d, 1u) << (~vec3<u32>(6170u, 21628u, firstTrailingBit(22130u)) % vec3<u32>(32u)), ~1u, firstTrailingBit(~(~0u)) >> (var_0.a.b.x % 32u));
    let var_2 = global0.c;
    var var_3 = !select(!vec3<bool>(any(vec2<bool>(true, var_1.a.x)), any(vec2<bool>(var_2.a.x, var_0.c.a.x)), true), !(!select(vec3<bool>(true, true, var_0.c.a.x), vec3<bool>(false, var_1.a.x, global2.a.x), vec3<bool>(true, global0.c.a.x, global2.a.x))), select(vec3<bool>(true, true, false), vec3<bool>(var_1.a.x, true, all(vec2<bool>(var_0.c.a.x, global2.a.x))), var_2.a.x));
    global1 = array<f32, 14>();
    return global0.c;
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    global3 = array<Struct_2, 10>();
    var var_0 = Struct_2(Struct_1(vec2<bool>(any(!vec3<bool>(global2.a.x, arg_2.x, global0.c.a.x)), all(select(vec2<bool>(true, global0.c.a.x), vec2<bool>(arg_1.a.x, arg_2.x), false))), vec3<u32>(arg_0.x, abs(_wgslsmith_mult_u32(0u, 1u)), _wgslsmith_dot_vec2_u32(reverseBits(global2.b.xx), _wgslsmith_mod_vec2_u32(arg_1.b.xz, vec2<u32>(arg_1.c, 0u)))), _wgslsmith_add_u32(131361u, global2.b.x), arg_0.x), _wgslsmith_f_op_vec2_f32(global0.b - _wgslsmith_f_op_vec2_f32(-global0.b)), func_2());
    let var_1 = func_2();
    var_0 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(~var_0.c.b, vec3<u32>(global2.b.x, arg_0.x, 3447u), max(global0.a.b, global0.c.b)), reverseBits(vec3<u32>(5166u, global2.b.x, var_0.a.c)), _wgslsmith_mod_vec3_u32(vec3<u32>(14544u, 1u, var_0.c.b.x) << (var_1.b % vec3<u32>(32u)), global2.b)), ~_wgslsmith_clamp_vec3_u32(~arg_0, _wgslsmith_mult_vec3_u32(vec3<u32>(6032u, 4294967295u, var_0.c.d), vec3<u32>(var_0.a.c, 26611u, 4294967295u)), vec3<u32>(arg_0.x, arg_0.x, 0u))) & min(global0.c.d, 29558u), 10u)];
    var var_2 = Struct_2(Struct_1(select(!global2.a, var_1.a, !(!global0.a.a)), func_2().b, var_1.d, ~(~global2.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_0.b.x)) * _wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(-1335f, -406f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(564f, 788f) - vec2<f32>(global0.b.x, 1157f)))), Struct_1(func_2().a, select(abs(vec3<u32>(arg_1.d, arg_0.x, var_1.b.x)), _wgslsmith_mult_vec3_u32(_wgslsmith_clamp_vec3_u32(var_1.b, vec3<u32>(29457u, arg_0.x, u_input.a), vec3<u32>(11990u, arg_1.b.x, 0u)), max(vec3<u32>(0u, 82491u, 1u), vec3<u32>(arg_0.x, arg_0.x, var_0.a.d))), arg_2.wwx), u_input.a, _wgslsmith_div_u32(arg_0.x, _wgslsmith_mod_u32(global0.c.d ^ 1u, 11926u))));
    return func_2();
}

fn func_1(arg_0: bool) -> Struct_3 {
    global3 = array<Struct_2, 10>();
    global2 = func_3(~(~(~(~global0.c.b))), func_2(), select(vec4<bool>(true, false, !global2.a.x, true), vec4<bool>(global0.a.a.x, arg_0, global2.a.x, !global0.c.a.x), false));
    let var_0 = select(select(!select(select(vec3<bool>(global0.c.a.x, true, arg_0), vec3<bool>(global0.c.a.x, false, arg_0), global2.a.x), vec3<bool>(arg_0, true, global0.c.a.x), vec3<bool>(global0.a.a.x, false, true)), select(vec3<bool>(arg_0, !global2.a.x, true), select(vec3<bool>(arg_0, false, false), select(vec3<bool>(true, global0.c.a.x, global2.a.x), vec3<bool>(arg_0, arg_0, arg_0), global2.a.x), select(vec3<bool>(false, false, global0.a.a.x), vec3<bool>(global2.a.x, arg_0, global2.a.x), true)), select(!global0.a.a.x, true, global2.a.x)), !vec3<bool>(!global2.a.x, global0.c.a.x, !global2.a.x)), select(!vec3<bool>(any(vec2<bool>(true, global2.a.x)), global0.c.b.x >= global0.c.b.x, true), select(!(!vec3<bool>(true, true, global2.a.x)), !(!vec3<bool>(arg_0, arg_0, false)), !(!vec3<bool>(arg_0, false, global2.a.x))), true), 0i == _wgslsmith_sub_i32(_wgslsmith_sub_i32(select(0i, 0i, global2.a.x), -1i), select(2147483647i, 1i, global2.a.x)));
    var var_1 = global0.c;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -387f));
    return Struct_3(0u);
}

fn func_4(arg_0: Struct_3, arg_1: vec2<i32>) -> Struct_1 {
    global3 = array<Struct_2, 10>();
    global1 = array<f32, 14>();
    global1 = array<f32, 14>();
    var var_0 = Struct_2(global0.a, vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-1000f * global0.b.x)), Struct_1(!global0.c.a, vec3<u32>(_wgslsmith_mod_u32(func_1(false).a, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, global2.d), global0.c.b.xx)), _wgslsmith_mod_u32(func_3(global0.c.b, Struct_1(global2.a, vec3<u32>(4294967295u, global0.c.d, arg_0.a), u_input.a, u_input.a), vec4<bool>(true, global2.a.x, true, global2.a.x)).b.x, _wgslsmith_div_u32(global0.a.b.x, u_input.a)), _wgslsmith_mult_u32(abs(global2.c), 1u)), ~func_1(true).a, ~(~32410u) << (func_2().d % 32u)));
    var var_1 = -countOneBits(arg_1);
    return Struct_1(func_3(~vec3<u32>(arg_0.a, abs(arg_0.a), global0.a.b.x), func_2(), vec4<bool>(true, true, true, true)).a, _wgslsmith_div_vec3_u32(~global2.b, _wgslsmith_mod_vec3_u32(global0.a.b, ~min(vec3<u32>(global2.d, arg_0.a, var_0.a.b.x), global0.a.b))), ~1u, 57803u);
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_2)) + -145f) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-650f, global1[_wgslsmith_index_u32(20583u, 14u)]))))))), _wgslsmith_f_op_f32(f32(-1f) * -225f)));
    var var_1 = Struct_2(Struct_1(vec2<bool>(!(arg_1.b.x < -1031f), arg_1.a.a.x), firstLeadingBit(~(~arg_1.a.b)), abs(max(1u, u_input.a)) << (global0.a.b.x % 32u), ~global0.a.c), vec2<f32>(100f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(546f - var_0)), 464f))), Struct_1(func_4(Struct_3(global0.c.c), _wgslsmith_clamp_vec2_i32(firstLeadingBit(vec2<i32>(-2147483647i, -5852i)), vec2<i32>(2147483647i, 34189i), firstLeadingBit(vec2<i32>(-43299i, -38643i)))).a, _wgslsmith_mult_vec3_u32(arg_1.a.b, _wgslsmith_add_vec3_u32(arg_1.c.b | vec3<u32>(32865u, 4294967295u, global0.c.b.x), vec3<u32>(59318u, arg_1.c.c, 15472u))), ~(max(u_input.a, 68031u) << (~0u % 32u)), u_input.a));
    var var_2 = Struct_2(func_2(), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(488f + -1394f), arg_2) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(171f, var_0) + var_1.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2, global0.b.x)), true))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(arg_1.b)))))), arg_1.a);
    let var_3 = Struct_2(func_2(), _wgslsmith_f_op_vec2_f32(var_1.b * var_2.b), func_2());
    var_1 = global3[_wgslsmith_index_u32(1u, 10u)];
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(firstTrailingBit(4294967295u));
    var var_1 = global0.c;
    global0 = Struct_2(Struct_1(vec2<bool>(true, all(vec3<bool>(global2.a.x, false, var_1.a.x))), ~global0.a.b, 0u, firstLeadingBit(_wgslsmith_dot_vec2_u32(~vec2<u32>(35365u, u_input.a), abs(vec2<u32>(var_0.a, 1u))))), global0.b, func_5(!(!vec4<bool>(global2.a.x, false, false, global2.a.x)), Struct_2(func_4(func_1(false), firstTrailingBit(vec2<i32>(1i, 1i))), _wgslsmith_f_op_vec2_f32(global0.b + _wgslsmith_f_op_vec2_f32(-vec2<f32>(644f, global0.b.x))), Struct_1(func_3(var_1.b, Struct_1(vec2<bool>(true, false), var_1.b, global2.d, 0u), vec4<bool>(global0.c.a.x, global2.a.x, true, global0.a.a.x)).a, reverseBits(vec3<u32>(2455u, 4294967295u, 4294967295u)), abs(global0.a.d), firstLeadingBit(var_1.c))), global1[_wgslsmith_index_u32(global0.a.d, 14u)]));
    let x = u_input.a;
    s_output = StorageBuffer(min(vec3<i32>(-1i) * -vec3<i32>(-24464i, -12526i, 16247i), _wgslsmith_add_vec3_i32(vec3<i32>(-21218i, 2147483647i, 38278i) << (global2.b % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i))) >> (func_5(!vec4<bool>(true, false, global0.a.a.x, var_1.a.x), global3[_wgslsmith_index_u32((global0.c.c >> (33841u % 32u)) & var_0.a, 10u)], _wgslsmith_f_op_f32(step(342f, _wgslsmith_f_op_f32(1235f + global1[_wgslsmith_index_u32(var_0.a, 14u)])))).b % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1[_wgslsmith_index_u32(80445u, 14u)], -667f, 1803f, global0.b.x))))), (u_input.a << (var_0.a % 32u)) & ~0u, ~_wgslsmith_div_u32(abs(var_0.a), abs(func_4(Struct_3(4294967295u), vec2<i32>(-1i, -7636i)).b.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.d, ~1u, ~func_4(Struct_3(var_1.b.x), vec2<i32>(3365i, 1i)).b.x, ~(~u_input.a)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_0.a, func_3(vec3<u32>(global2.b.x, var_0.a, u_input.a), global0.c, vec4<bool>(global0.a.a.x, global0.c.a.x, false, false)).c, select(0u, 0u, true), global2.c), vec4<u32>(4294967295u, ~var_1.c, max(4294967295u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(global2.d, var_0.a, 4294967295u, 1u), vec4<u32>(u_input.a, global0.c.c, 23698u, global0.c.d))))));
}

