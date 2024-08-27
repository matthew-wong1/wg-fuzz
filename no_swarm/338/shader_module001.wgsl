struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: i32,
    d: vec3<f32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec4<bool>,
    c: vec2<i32>,
    d: Struct_3,
    e: vec3<u32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: vec2<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: Struct_5) -> vec3<i32> {
    let var_0 = 7713u;
    global0 = firstLeadingBit(0u);
    var var_1 = Struct_3(Struct_2(arg_2.a.d.b), Struct_1(countOneBits(firstLeadingBit(vec2<i32>(u_input.e.x, 0i))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a.d.b.e, arg_0.x, -1i), _wgslsmith_mult_vec3_i32(u_input.c.yyz, vec3<i32>(arg_2.a.c.x, -5753i, 2147483647i)), vec3<i32>(arg_2.b.x, -8270i, u_input.b)), max(vec3<u32>(u_input.d.x, arg_2.a.d.a.a.c.x, arg_2.a.e.x) << (arg_2.a.d.a.a.c % vec3<u32>(32u)), arg_2.a.e), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(vec2<f32>(-1000f, arg_2.a.d.a.a.d.x), vec2<f32>(arg_2.a.d.d.x, -853f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_2.a.d.d.yz * vec2<f32>(arg_2.a.d.b.d.x, 549f))), arg_2.a.b.wy)), ~2147483647i), select(59717i, arg_0.x, false), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1414f, 1000f)) - 1946f), arg_2.a.d.b.d.x, _wgslsmith_f_op_f32(-1072f * -745f)), vec3<f32>(_wgslsmith_f_op_f32(floor(arg_2.a.d.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.a.d.a.a.d.x * arg_2.a.d.a.a.d.x) - _wgslsmith_div_f32(arg_2.a.d.b.d.x, arg_2.a.d.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-146f, arg_2.a.d.a.a.d.x, arg_1)) * _wgslsmith_f_op_f32(sign(101f)))))));
    var_1 = arg_2.a.d;
    var_1 = arg_2.a.d;
    return vec3<i32>(2147483647i, -_wgslsmith_sub_i32(arg_2.a.c.x, var_1.b.e), 1i) >> (vec3<u32>(var_1.b.c.x, _wgslsmith_mult_u32(var_1.a.a.c.x, 1u), 0u) % vec3<u32>(32u));
}

fn func_2() -> i32 {
    let var_0 = u_input.e.yzz;
    global0 = _wgslsmith_mult_u32(firstTrailingBit(~23260u), _wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 11365u), u_input.d), min(vec2<u32>(21037u, u_input.d.x) >> (vec2<u32>(4294967295u, 82875u) % vec2<u32>(32u)), vec2<u32>(1u, 54082u))) & _wgslsmith_sub_u32(_wgslsmith_mult_u32(u_input.d.x, 1u), u_input.d.x));
    let var_1 = Struct_5(Struct_4(func_3(~select(u_input.e.zyx, u_input.e.zyx, vec3<bool>(global1.x, global1.x, global1.x)), global1.x, Struct_5(Struct_4(vec3<i32>(var_0.x, -1i, var_0.x), vec4<bool>(true, false, global1.x, global1.x), vec2<i32>(0i, u_input.a), Struct_3(Struct_2(Struct_1(vec2<i32>(-1i, var_0.x), var_0, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec2<f32>(1769f, 917f), 2655i)), Struct_1(u_input.c.xy, u_input.e.zwy, vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec2<f32>(925f, 294f), -1i), var_0.x, vec3<f32>(267f, 1000f, -140f)), vec3<u32>(4294967295u, 1u, u_input.d.x)), vec4<i32>(var_0.x, 5443i, u_input.c.x, u_input.a) >> (vec4<u32>(115695u, u_input.d.x, u_input.d.x, 0u) % vec4<u32>(32u)))), select(vec4<bool>(global1.x, all(vec2<bool>(global1.x, true)), !global1.x, all(vec3<bool>(global1.x, true, false))), vec4<bool>(true, true, true, true), !(!vec4<bool>(global1.x, global1.x, false, global1.x))), vec2<i32>(var_0.x, func_3(~vec3<i32>(u_input.e.x, var_0.x, 1i), !global1.x, Struct_5(Struct_4(vec3<i32>(u_input.e.x, var_0.x, u_input.b), vec4<bool>(global1.x, true, false, true), var_0.zz, Struct_3(Struct_2(Struct_1(vec2<i32>(-13106i, 31331i), vec3<i32>(var_0.x, 0i, 1i), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), vec2<f32>(1521f, 724f), u_input.a)), Struct_1(vec2<i32>(var_0.x, -156i), vec3<i32>(u_input.e.x, u_input.b, 13780i), vec3<u32>(1u, u_input.d.x, 0u), vec2<f32>(266f, -414f), u_input.c.x), u_input.c.x, vec3<f32>(1000f, 274f, 1013f)), vec3<u32>(1u, 1u, u_input.d.x)), u_input.c)).x), Struct_3(Struct_2(Struct_1(vec2<i32>(var_0.x, -24752i), u_input.c.ywx, vec3<u32>(1u, 36519u, u_input.d.x), vec2<f32>(141f, -1371f), -2147483647i)), Struct_1(~var_0.xy, vec3<i32>(var_0.x, var_0.x, -887i), vec3<u32>(1u, 0u, u_input.d.x) << (vec3<u32>(u_input.d.x, u_input.d.x, 0u) % vec3<u32>(32u)), vec2<f32>(1f, 1f), abs(u_input.e.x)), -2645i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1007f, 319f, -762f) + vec3<f32>(-850f, -985f, -1672f)))), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(u_input.d.x, 21294u, 0u)), vec3<u32>(u_input.d.x, 0u, u_input.d.x) | ~vec3<u32>(u_input.d.x, 1u, 1u))), (reverseBits(vec4<i32>(var_0.x, -2147483647i, 20394i, var_0.x)) | u_input.e) ^ abs(u_input.e));
    global0 = u_input.d.x;
    global1 = !(!select(vec2<bool>(true, true), !(!vec2<bool>(var_1.a.b.x, var_1.a.b.x)), global1.x));
    return -(~u_input.a);
}

fn func_1() -> Struct_3 {
    var var_0 = Struct_4(vec3<i32>(~_wgslsmith_sub_i32(func_2(), 41969i), firstLeadingBit(42019i & u_input.c.x) >> ((_wgslsmith_dot_vec3_u32(vec3<u32>(17622u, 18896u, 1u), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x)) | ~u_input.d.x) % 32u), reverseBits(~9089i) << (u_input.d.x % 32u)), vec4<bool>(all(vec2<bool>(global1.x, global1.x)), all(vec2<bool>(global1.x, global1.x)), select(true, global1.x, false) || select(true, true, global1.x || true), all(!select(vec4<bool>(true, global1.x, false, global1.x), vec4<bool>(false, global1.x, true, false), vec4<bool>(true, false, global1.x, global1.x)))), _wgslsmith_mult_vec2_i32(u_input.c.ww, _wgslsmith_mult_vec2_i32(~(u_input.c.yz | u_input.c.xw), vec2<i32>(0i, _wgslsmith_mult_i32(u_input.e.x, -2147483647i)))), Struct_3(Struct_2(Struct_1(abs(u_input.e.yy), vec3<i32>(u_input.e.x, 1i, -27381i), select(vec3<u32>(u_input.d.x, 1u, 4294967295u), vec3<u32>(2412u, 4294967295u, 4294967295u), vec3<bool>(false, false, global1.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-588f, -461f), vec2<f32>(1000f, 775f))), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.zy))), Struct_1(-u_input.c.wx ^ ~u_input.c.zx, select(vec3<i32>(-2147483647i, u_input.a, -29546i), min(u_input.c.xxz, vec3<i32>(u_input.c.x, u_input.c.x, u_input.b)), select(vec3<bool>(false, global1.x, global1.x), vec3<bool>(global1.x, false, false), true)), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d.x, 14659u, u_input.d.x), select(vec3<u32>(48603u, u_input.d.x, u_input.d.x), vec3<u32>(u_input.d.x, 13100u, u_input.d.x), global1.x), ~vec3<u32>(4294967295u, 53076u, 4294967295u)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1757f, 1764f)), 0i), -7164i, vec3<f32>(_wgslsmith_f_op_f32(-665f - _wgslsmith_f_op_f32(-876f * -246f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(678f)), -254f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -322f) + _wgslsmith_f_op_f32(ceil(479f))))), max(vec3<u32>(~66028u, ~8533u, 44537u), ~(~(~vec3<u32>(4294967295u, 1u, 0u)))));
    global1 = vec2<bool>(var_0.b.x, false);
    let var_1 = Struct_3(var_0.d.a, var_0.d.a.a, u_input.e.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.d.x) - _wgslsmith_f_op_f32(f32(-1f) * -675f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.b.d.x))), var_0.d.a.a.d.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(var_0.d.d - vec3<f32>(var_0.d.b.d.x, var_0.d.d.x, -478f)))))));
    var var_2 = Struct_4(var_0.a, select(!var_0.b, !(!var_0.b), !vec4<bool>(var_0.b.x, select(true, true, true), all(vec3<bool>(global1.x, global1.x, global1.x)), global1.x)), u_input.c.xy, var_0.d, _wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, 76376u), vec4<u32>(4294967295u, 29340u, 0u, var_0.d.b.c.x)), var_1.b.c.x, var_0.d.b.c.x) & ~vec3<u32>(1u, var_0.d.a.a.c.x, 38780u), ~(~var_1.b.c)));
    global1 = !select(select(vec2<bool>(true, false), var_2.b.yy, true), !vec2<bool>(var_0.d.b.c.x != 35860u, var_0.d.c == var_2.c.x), all(vec2<bool>(any(var_2.b.yz), global1.x)));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_u32(firstTrailingBit(_wgslsmith_mult_u32(~u_input.d.x, u_input.d.x)), 4294967295u) >> (u_input.d.x % 32u);
    var var_1 = func_1();
    var var_2 = min(var_1.a.a.c, var_1.b.c);
    global1 = select(select(vec2<bool>(!select(global1.x, global1.x, global1.x), select(7181u, 60178u, true) > (var_0 | 0u)), vec2<bool>(true, true), !((global1.x == false) | global1.x)), select(!vec2<bool>(true, var_1.a.a.d.x != var_1.d.x), !(!select(vec2<bool>(false, global1.x), vec2<bool>(global1.x, global1.x), global1.x)), !global1.x), true);
    global1 = vec2<bool>(!global1.x, false);
    global1 = select(select(!select(select(vec2<bool>(false, false), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true)), select(vec2<bool>(global1.x, global1.x), vec2<bool>(false, global1.x), global1.x), any(vec2<bool>(false, global1.x))), vec2<bool>(!all(vec4<bool>(true, false, global1.x, true)), false), select(vec2<bool>(global1.x && true, true), select(vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, true)), true), select(select(vec2<bool>(false, global1.x), vec2<bool>(true, true), global1.x), !vec2<bool>(global1.x, true), u_input.d.x != 36764u))), select(select(select(!vec2<bool>(global1.x, global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(true, global1.x), vec2<bool>(global1.x, true)), !vec2<bool>(global1.x, global1.x)), select(!vec2<bool>(global1.x, global1.x), !vec2<bool>(global1.x, false), true), global1.x), vec2<bool>(true || !global1.x, !global1.x), vec2<bool>(true, all(select(vec3<bool>(global1.x, global1.x, true), vec3<bool>(global1.x, global1.x, true), vec3<bool>(false, global1.x, global1.x))))), var_1.b.d.x >= _wgslsmith_f_op_f32(exp2(var_1.b.d.x)));
    let x = u_input.a;
    s_output = StorageBuffer(2875u);
}

