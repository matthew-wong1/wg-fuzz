struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<i32>,
    e: f32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: u32,
    e: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_3,
    d: i32,
    e: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 27>;

var<private> global1: Struct_1 = Struct_1(0i, 1i, 28036i, vec3<i32>(2147483647i, -1i, i32(-2147483648)), -1000f);

var<private> global2: Struct_4 = Struct_4(Struct_1(-20983i, -11533i, i32(-2147483648), vec3<i32>(-1i, -5773i, 2147483647i), -331f), true, Struct_3(false, Struct_2(-800f, 0u, Struct_1(7659i, i32(-2147483648), 1i, vec3<i32>(-1i, 12309i, 1i), 616f), 1u, vec4<f32>(-865f, -801f, 859f, -118f)), Struct_1(2147483647i, -23349i, -16137i, vec3<i32>(-1i, -1i, i32(-2147483648)), 855f)), -5760i, true);

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_3) -> vec2<f32> {
    var var_0 = !(!(!select(select(vec4<bool>(arg_0.a, true, false, arg_0.a), vec4<bool>(true, arg_0.a, false, false), vec4<bool>(true, global2.b, false, global2.b)), !vec4<bool>(arg_0.a, true, arg_0.a, true), !global2.b)));
    global1 = Struct_1(u_input.b.x, min(global1.a, 4057i), ~_wgslsmith_mod_i32(min(countOneBits(-20477i), u_input.c.x), -1i), vec3<i32>(-u_input.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(-22050i, -1i, 0i, 55379i) >> (vec4<u32>(36696u, arg_0.b.b, 4294967295u, 0u) % vec4<u32>(32u)), ~vec4<i32>(global1.a, -2147483647i, 43557i, -19404i)), -abs(-global2.a.a), -global2.a.a & abs(i32(-1i) * -8104i)), _wgslsmith_f_op_f32(2258f + _wgslsmith_f_op_f32(round(-307f))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.e - _wgslsmith_f_op_f32(f32(-1f) * -1086f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1296f - _wgslsmith_f_op_f32(arg_0.b.c.e - -1000f)))), arg_0.c.e);
    var var_2 = _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -804f))))));
    let var_3 = global2.c.b;
    return vec2<f32>(global1.e, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-111f)) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.e - global1.e) * _wgslsmith_f_op_f32(436f * global2.c.c.e))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: vec2<f32>, arg_2: bool, arg_3: Struct_4) -> i32 {
    var var_0 = Struct_3(true, Struct_2(-123f, arg_3.c.b.d, Struct_1(~_wgslsmith_add_i32(global1.c, global1.a), ~(-2147483647i), global1.c, _wgslsmith_div_vec3_i32(arg_3.a.d, vec3<i32>(15904i, global2.d, u_input.c.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(global2.c.c.e, arg_3.a.e, true)), _wgslsmith_f_op_f32(-global1.e))), u_input.d << (16415u % 32u), vec4<f32>(1941f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(global1.e)))), _wgslsmith_f_op_f32(global1.e - _wgslsmith_f_op_f32(677f * 328f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global2.c.c.e)), 221f, arg_2 && arg_2)))), Struct_1(-47443i, ~min(-global2.a.a, 0i), arg_3.a.d.x, vec3<i32>(~(u_input.b.x & 1i), (i32(-1i) * -5675i) | _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 2147483647i, arg_0.x), global2.a.d), -1i | firstTrailingBit(-10011i)), -314f));
    var var_1 = select(max(~((vec3<u32>(8618u, arg_3.c.b.d, arg_3.c.b.b) & vec3<u32>(0u, 4294967295u, global2.c.b.b)) ^ vec3<u32>(var_0.b.b, global2.c.b.b, global2.c.b.d)), ~_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(u_input.d, var_0.b.b, global2.c.b.d)), ~vec3<u32>(u_input.d, var_0.b.b, global2.c.b.b), vec3<u32>(1u, 88020u, global2.c.b.d))), vec3<u32>(arg_3.c.b.b, 72053u, var_0.b.d), -1334f <= _wgslsmith_f_op_f32(exp2(var_0.b.a)));
    var var_2 = arg_3.c.b;
    global1 = global2.a;
    var_2 = var_0.b;
    return ~(i32(-1i) * -(~(~var_2.c.a)));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> u32 {
    global1 = arg_1.c;
    global2 = Struct_4(Struct_1(u_input.c.x, 1i >> (arg_1.b % 32u), 0i, u_input.c.zww, arg_1.c.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.e.x)) + global1.e) <= -1000f, Struct_3(!(!(u_input.c.x <= global2.a.a)), global2.c.b, Struct_1(func_4(-vec4<i32>(-13863i, global1.b, 2147483647i, global2.d), _wgslsmith_f_op_vec2_f32(func_3(Struct_3(false, arg_1, Struct_1(-18609i, arg_1.c.c, 0i, arg_1.c.d, global1.e)))), all(vec4<bool>(global2.e, global2.b, false, false)), Struct_4(arg_1.c, global2.c.a, global2.c, u_input.a.x, global2.c.a)), -15800i, reverseBits(arg_1.c.c & 38541i), vec3<i32>(~global1.c, 1i, arg_1.c.d.x), 1000f)), -42784i >> (arg_1.b % 32u), abs(firstTrailingBit(firstLeadingBit(4294967295u))) < abs(abs(61625u)));
    var var_0 = global2.c.b;
    global2 = Struct_4(Struct_1(var_0.c.d.x, global2.c.b.c.d.x, i32(-1i) * -2147483647i, countOneBits(var_0.c.d), global2.a.e), global2.b, Struct_3(true, Struct_2(128f, abs(arg_0), global2.a, arg_1.d, vec4<f32>(_wgslsmith_f_op_f32(select(-370f, 927f, false)), _wgslsmith_f_op_f32(global1.e - -958f), _wgslsmith_div_f32(1338f, global1.e), _wgslsmith_f_op_f32(global1.e - var_0.c.e))), Struct_1(-15313i, select(_wgslsmith_mod_i32(2147483647i, -44739i), _wgslsmith_mod_i32(62706i, -1i), false), _wgslsmith_div_i32(var_0.c.a, -2147483647i), -u_input.c.ywy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.e))))), i32(-1i) * -_wgslsmith_mod_i32(i32(-1i) * -1i, 10568i >> (var_0.d % 32u)), true);
    global2 = Struct_4(Struct_1(~global1.a, -31605i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(u_input.c.x, global1.c, u_input.b.x, 21720i), ~u_input.b, -vec4<i32>(u_input.e.x, global1.c, 49888i, 1i)), max(u_input.b, vec4<i32>(-1i, 19897i, -2147483647i, -12577i)) >> (~vec4<u32>(global2.c.b.b, arg_1.b, arg_0, 0u) % vec4<u32>(32u))), -_wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_1.c.c, -1i, -1316i), vec3<i32>(2147483647i, 2147483647i, var_0.c.c)), vec3<i32>(var_0.c.b, var_0.c.a, -2147483647i), _wgslsmith_clamp_vec3_i32(arg_1.c.d, vec3<i32>(u_input.c.x, -2147483647i, var_0.c.b), vec3<i32>(-2147483647i, global2.a.b, 48921i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1.a)))))), global2.e, global2.c, global2.d, true);
    return u_input.d;
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: u32) -> i32 {
    let var_0 = arg_2.b.c.d.x >> (func_2(arg_1.x, Struct_2(global2.a.e, ~4294967295u, arg_2.c, 4294967295u, vec4<f32>(_wgslsmith_f_op_f32(1000f * global1.e), -165f, _wgslsmith_f_op_f32(step(-1449f, 1324f)), _wgslsmith_f_op_f32(sign(global1.e))))) % 32u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(arg_2.b.e.ywy, vec3<f32>(global1.e, arg_2.b.e.x, arg_2.c.e), global2.b)), vec3<f32>(arg_2.b.c.e, arg_2.b.a, 1000f)))), vec3<f32>(global2.c.c.e, -951f, -337f), select(vec3<bool>(true, arg_0, false), !select(vec3<bool>(false, arg_2.a, false), vec3<bool>(false, true, false), vec3<bool>(arg_2.a, true, arg_2.a)), abs(global2.d) == min(2147483647i, 30502i)))) * arg_2.b.e.yzy);
    var var_2 = Struct_4(Struct_1(2147483647i, arg_2.b.c.b, -41601i, vec3<i32>(_wgslsmith_sub_i32(~16931i, abs(global2.d)), _wgslsmith_dot_vec3_i32(u_input.e, countOneBits(u_input.e)), _wgslsmith_dot_vec4_i32(u_input.b ^ u_input.b, ~vec4<i32>(-49140i, global2.a.b, 2147483647i, 2147483647i))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.x)) + var_1.x)))), all(!(!vec3<bool>(false, arg_2.a, global2.c.a))), Struct_3(global2.b, Struct_2(global2.a.e, 4294967295u, global2.c.b.c, min(1u, _wgslsmith_mult_u32(1u, global2.c.b.d)), _wgslsmith_f_op_vec4_f32(round(global2.c.b.e))), Struct_1(-1i, ~func_4(vec4<i32>(arg_2.c.c, u_input.c.x, -1i, global1.b), vec2<f32>(var_1.x, global1.e), true, Struct_4(Struct_1(-9029i, -147i, 2147483647i, global2.a.d, arg_2.b.e.x), global2.b, arg_2, u_input.a.x, true)), _wgslsmith_mod_i32(32928i, arg_2.c.b) ^ u_input.e.x, _wgslsmith_mod_vec3_i32(u_input.b.yxw, vec3<i32>(arg_2.b.c.c, 19606i, global2.a.d.x)), -266f)), var_0 >> ((~(~u_input.d) | _wgslsmith_dot_vec3_u32(~arg_1, _wgslsmith_sub_vec3_u32(arg_1, arg_1))) % 32u), true);
    global1 = var_2.a;
    global0 = array<vec2<f32>, 27>();
    return ~_wgslsmith_add_i32(var_0, abs(reverseBits(-2147483647i)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global2.a;
    var var_0 = vec4<bool>(global2.b, true, abs(-global2.c.b.c.d.x) > -_wgslsmith_sub_i32(func_1(false, vec3<u32>(84317u, 16816u, u_input.d), Struct_3(true, global2.c.b, Struct_1(1i, 27610i, 13682i, vec3<i32>(global2.a.b, 2147483647i, -1i), global2.a.e)), 0u), ~0i), global2.c.a);
    let var_1 = min(_wgslsmith_add_vec4_i32(((vec4<i32>(-1i, 11361i, -2147483647i, -1i) ^ vec4<i32>(global2.c.c.d.x, u_input.e.x, 1i, u_input.a.x)) & firstTrailingBit(u_input.c)) >> (countOneBits(~vec4<u32>(4294967295u, 4294967295u, 0u, 13090u)) % vec4<u32>(32u)), u_input.b), ~vec4<i32>(abs(-11231i), countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-42811i, -6480i), global2.a.d.zx), ~1i) & vec4<i32>(global2.d, countOneBits(-global2.c.c.d.x), abs(-1i), _wgslsmith_mod_i32(-1i, u_input.c.x)));
    global2 = Struct_4(Struct_1(-21236i, ~firstTrailingBit(~global2.d), firstLeadingBit(select(firstLeadingBit(5745i), 0i, false | global2.b)), global2.a.d, 2326f), any(vec3<bool>(global2.e, !var_0.x, true)), global2.c, func_4(reverseBits(select(_wgslsmith_mod_vec4_i32(u_input.c, var_1), vec4<i32>(u_input.c.x, 24013i, var_1.x, var_1.x), select(vec4<bool>(false, true, global2.c.a, var_0.x), vec4<bool>(var_0.x, false, global2.e, false), global2.e))), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(min(global1.e, global2.a.e)), _wgslsmith_f_op_f32(-global1.e)))), var_0.x, Struct_4(global2.a, all(!vec4<bool>(true, false, var_0.x, global2.b)), global2.c, global1.d.x, any(!vec3<bool>(true, var_0.x, false)))), true);
    var_0 = !select(vec4<bool>(all(select(vec2<bool>(false, var_0.x), var_0.wy, var_0.xx)), any(var_0.wwz), global2.c.a, all(vec4<bool>(global2.b, false, global2.c.a, global2.e)) | true), vec4<bool>(any(!var_0.yx), true, var_0.x, select(any(vec3<bool>(false, global2.c.a, true)), all(vec4<bool>(var_0.x, global2.b, true, var_0.x)), global2.e && global2.c.a)), any(var_0.yxz));
    global2 = Struct_4(Struct_1(2147483647i, i32(-1i) * -(~48036i), var_1.x, firstLeadingBit(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, global1.a, 1i), _wgslsmith_sub_vec3_i32(global1.d, var_1.xww))), -940f), true, global2.c, _wgslsmith_sub_i32(max(global1.b, _wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(global2.c.c.b, global1.d.x))), _wgslsmith_dot_vec4_i32(-firstTrailingBit(u_input.b), var_1)), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-950f, global2.a.e)), global1.e)), -642f, _wgslsmith_f_op_f32(-global2.a.e), -616f) + _wgslsmith_f_op_vec4_f32(global2.c.b.e * vec4<f32>(global2.a.e, _wgslsmith_div_f32(global2.a.e, global1.e), _wgslsmith_f_op_f32(floor(global2.c.b.c.e)), _wgslsmith_f_op_f32(f32(-1f) * -813f)))), select(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.d, 4294967295u, 0u) & vec3<u32>(global2.c.b.d, 1u, global2.c.b.b), vec3<u32>(u_input.d, 143139u, u_input.d)), _wgslsmith_clamp_vec3_u32(reverseBits(vec3<u32>(u_input.d, global2.c.b.b, 1u)), vec3<u32>(7731u, u_input.d, 0u) | vec3<u32>(30173u, u_input.d, global2.c.b.b), vec3<u32>(global2.c.b.d, u_input.d, 0u)), vec3<bool>(global2.b || false, global2.b, !var_0.x)) | firstLeadingBit(vec3<u32>(4294967295u, ~45635u, global2.c.b.d & 34044u)), reverseBits(reverseBits(max(countOneBits(vec2<u32>(global2.c.b.d, global2.c.b.d)), vec2<u32>(1028u, 4294967295u)))), global1.e, global1.e);
}

