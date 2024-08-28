struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 9246i;

var<private> global1: vec4<u32> = vec4<u32>(84292u, 61469u, 0u, 25557u);

var<private> global2: vec2<bool> = vec2<bool>(false, true);

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<f32>) -> u32 {
    global1 = (firstTrailingBit(~(~vec4<u32>(global1.x, global1.x, 1u, 33271u))) ^ firstTrailingBit(countOneBits(_wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 4723u, 0u, global1.x), vec4<u32>(global1.x, u_input.b, global1.x, 3912u))))) >> (select(firstTrailingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global1.x, 1u, u_input.b), vec4<u32>(u_input.b, global1.x, 64304u, global1.x)) << (~vec4<u32>(global1.x, 39168u, global1.x, global1.x) % vec4<u32>(32u))), min(abs(vec4<u32>(u_input.b, 1u, u_input.b, global1.x)), select(vec4<u32>(37590u, 30950u, u_input.b, 4294967295u), vec4<u32>(1u, 50066u, 0u, u_input.b), vec4<bool>(global2.x, global2.x, global2.x, global2.x))) ^ abs(~vec4<u32>(48775u, u_input.b, u_input.b, 4294967295u)), true) % vec4<u32>(32u));
    var var_0 = !all(select(select(vec2<bool>(true, true), !vec2<bool>(global2.x, true), true), vec2<bool>(!global2.x, global2.x), global2.x));
    var var_1 = Struct_2(Struct_1(vec4<u32>(~(~u_input.b), 506u >> (_wgslsmith_mult_u32(18882u, global1.x) % 32u), global1.x, 4294967295u)), Struct_1(reverseBits(select(min(vec4<u32>(4294967295u, 0u, u_input.b, 4294967295u), vec4<u32>(4294967295u, u_input.b, u_input.b, global1.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.b, 0u, 4294967295u, global1.x), vec4<u32>(u_input.b, global1.x, u_input.b, 0u)), global2.x))), vec2<i32>(_wgslsmith_mod_i32(u_input.a.x, u_input.a.x), select(u_input.a.x >> ((u_input.b & 9403u) % 32u), u_input.a.x, all(vec3<bool>(false, false, true)))));
    global1 = var_1.a.a;
    var_1 = Struct_2(var_1.b, Struct_1(var_1.a.a), max(vec2<i32>(~(i32(-1i) * -24307i), ~2147483647i), firstTrailingBit(~(vec2<i32>(u_input.c, 28883i) << (vec2<u32>(global1.x, 34812u) % vec2<u32>(32u))))));
    return u_input.b;
}

fn func_2(arg_0: bool) -> Struct_2 {
    var var_0 = 917u;
    var var_1 = Struct_1(reverseBits(~min(select(vec4<u32>(u_input.b, 102310u, global1.x, 63764u), vec4<u32>(30461u, u_input.b, u_input.b, u_input.b), vec4<bool>(false, true, global2.x, global2.x)), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, global1.x, u_input.b, u_input.b), vec4<u32>(0u, u_input.b, u_input.b, global1.x)))));
    return Struct_2(Struct_1(~var_1.a), Struct_1(_wgslsmith_add_vec4_u32(var_1.a << (~vec4<u32>(global1.x, 138452u, u_input.b, 51744u) % vec4<u32>(32u)), vec4<u32>(select(30499u, 8112u, false), 0u, global1.x ^ var_1.a.x, func_3(vec2<f32>(-1334f, 554f), vec2<f32>(351f, 183f))))), -(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.a.x), u_input.a)) ^ reverseBits(vec2<i32>(2147483647i, u_input.c))));
}

fn func_4(arg_0: i32, arg_1: Struct_2) -> Struct_1 {
    global2 = select(!vec2<bool>(true, all(select(vec2<bool>(false, true), vec2<bool>(global2.x, global2.x), false))), !select(!select(vec2<bool>(global2.x, true), vec2<bool>(global2.x, global2.x), vec2<bool>(false, true)), !select(vec2<bool>(global2.x, false), vec2<bool>(false, global2.x), vec2<bool>(true, true)), !vec2<bool>(global2.x, global2.x)), vec2<bool>(true, false));
    var var_0 = Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(firstTrailingBit(global1.x), 37775u), global1.x, _wgslsmith_sub_u32(44098u, arg_1.b.a.x), 61571u), _wgslsmith_sub_vec4_u32(firstTrailingBit(arg_1.b.a | vec4<u32>(1u, 5555u, 43670u, global1.x)), vec4<u32>(~arg_1.b.a.x, 4294967295u, ~4294967295u, 4294967295u & u_input.b))));
    let var_1 = !(!(!(!(!vec3<bool>(global2.x, false, global2.x)))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(197f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(3206f * -660f), _wgslsmith_f_op_f32(f32(-1f) * -946f))))) - -404f);
    var var_3 = func_2(var_1.x).a;
    return func_2(var_1.x).b;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: Struct_1) -> Struct_2 {
    let var_0 = arg_0;
    let var_1 = func_4(~(-u_input.c), arg_0);
    global1 = arg_3.a;
    global0 = arg_2;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(798f, 1f, _wgslsmith_f_op_f32(abs(-631f)), 224f)))));
    return var_0;
}

fn func_1() -> Struct_1 {
    global2 = !(!vec2<bool>(true, all(vec3<bool>(global2.x, false, true)) || false));
    global2 = !vec2<bool>(global2.x, !(!global2.x & (global2.x | global2.x)));
    var var_0 = func_5(Struct_2(func_4(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) >> (~global1.x % 32u), func_2(false)), Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(37805u, u_input.b, 1u, 4294967295u), vec4<u32>(40216u, global1.x, u_input.b, 44369u)) | ~vec4<u32>(u_input.b, 11400u, 14362u, 4294967295u)), _wgslsmith_sub_vec2_i32(-u_input.a, -(vec2<i32>(-2147483647i, -1i) ^ vec2<i32>(4997i, u_input.a.x)))), u_input.b, (u_input.c >> (_wgslsmith_div_u32(33395u, _wgslsmith_sub_u32(u_input.b, global1.x)) % 32u)) >> (82871u % 32u), func_2(any(!vec3<bool>(global2.x, global2.x, false))).b);
    var_0 = func_5(func_2(true), ~u_input.b, func_5(Struct_2(var_0.a, var_0.a, u_input.a), _wgslsmith_sub_u32(abs(var_0.a.a.x) | 24257u, _wgslsmith_div_u32(var_0.b.a.x, global1.x)), firstLeadingBit(2147483647i), var_0.b).c.x, Struct_1(~var_0.b.a | func_5(func_5(Struct_2(Struct_1(var_0.b.a), Struct_1(vec4<u32>(26699u, u_input.b, var_0.a.a.x, var_0.a.a.x)), vec2<i32>(var_0.c.x, 2147483647i)), u_input.b, var_0.c.x, Struct_1(vec4<u32>(var_0.a.a.x, 26983u, 0u, global1.x))), var_0.b.a.x, _wgslsmith_div_i32(u_input.c, -5964i), Struct_1(var_0.b.a)).a.a));
    var_0 = Struct_2(var_0.b, func_5(Struct_2(Struct_1(_wgslsmith_add_vec4_u32(var_0.a.a, vec4<u32>(var_0.a.a.x, 2785u, var_0.b.a.x, var_0.a.a.x))), Struct_1(var_0.a.a), u_input.a), ~var_0.b.a.x, 1i, var_0.a).a, -func_2(all(vec4<bool>(false, global2.x, global2.x, true))).c | ~var_0.c);
    return func_2(true != (all(!vec3<bool>(false, false, global2.x)) & all(vec3<bool>(false, true, false)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !(!(!vec2<bool>(global2.x & false, true)));
    var var_0 = func_1();
    let var_1 = Struct_1(var_0.a);
    global2 = vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(473f, -297f), _wgslsmith_f_op_f32(ceil(-408f)), select(true, global2.x, false)))) < 1852f, !any(select(vec4<bool>(true, true, global2.x, true), select(vec4<bool>(global2.x, true, false, global2.x), vec4<bool>(global2.x, true, false, true), vec4<bool>(false, false, global2.x, global2.x)), !vec4<bool>(false, global2.x, global2.x, true))));
    global1 = _wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(var_0.a, abs(vec4<u32>(abs(0u), 1u, 75154u, var_1.a.x))), ~_wgslsmith_sub_vec4_u32(~var_1.a, ~(~var_1.a)));
    let var_2 = func_5(Struct_2(func_2(global2.x).b, Struct_1(_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.a.x, var_1.a.x, global1.x, 117125u), vec4<u32>(40608u, 47471u, 9213u, global1.x)) | vec4<u32>(50185u, 376u, global1.x, var_1.a.x)), -_wgslsmith_clamp_vec2_i32(-u_input.a, -u_input.a, vec2<i32>(u_input.c, -2147483647i))), _wgslsmith_sub_u32(func_2(any(!vec2<bool>(global2.x, global2.x))).a.a.x, 1u), max(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) << (global1.x % 32u), ~(-44654i << (u_input.b % 32u))) >> (max(~u_input.b, ~u_input.b << (_wgslsmith_dot_vec3_u32(var_0.a.wzy, global1.yxx) % 32u)) % 32u), Struct_1(var_1.a));
    var_0 = Struct_1(_wgslsmith_add_vec4_u32(abs(_wgslsmith_mult_vec4_u32(vec4<u32>(27849u, global1.x, 1u, 6508u) ^ vec4<u32>(67901u, var_1.a.x, var_1.a.x, 9993u), vec4<u32>(u_input.b, 1u, 9554u, u_input.b))), ~_wgslsmith_div_vec4_u32(var_2.a.a, var_2.a.a | vec4<u32>(global1.x, global1.x, 1u, global1.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(19816i, -1i) | u_input.a, u_input.a | var_2.c), -_wgslsmith_mod_i32(u_input.a.x, 27078i), -(~u_input.c)) & ~_wgslsmith_sub_vec3_i32(-vec3<i32>(u_input.a.x, u_input.c, 33097i), vec3<i32>(1i, -1i, -2147483647i)));
}

