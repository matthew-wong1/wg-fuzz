struct Struct_1 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec4<bool>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

var<private> global3: Struct_1 = Struct_1(vec3<f32>(-1791f, 1575f, 832f), vec4<u32>(46157u, 1u, 4294967295u, 1u), vec4<bool>(false, true, false, false), vec2<u32>(58250u, 43039u));

var<private> global4: u32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_2() -> Struct_2 {
    global4 = _wgslsmith_add_u32(u_input.b, 6279u & u_input.b);
    global0 = global3.c.wy;
    global1 = u_input.c;
    let var_0 = Struct_2(_wgslsmith_f_op_f32(min(881f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(461f, global3.a.x) * _wgslsmith_f_op_f32(global2.a.x + global2.a.x))))), Struct_1(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(1535f, global3.a.x, global2.a.x) * global2.a))), ~vec4<u32>(u_input.b, 160282u, 31335u, 51369u << (global3.b.x % 32u)), !global3.c, global2.d));
    let var_1 = var_0.b;
    return Struct_2(-381f, var_1);
}

fn func_3(arg_0: vec2<i32>) -> u32 {
    let var_0 = u_input.b;
    var var_1 = firstTrailingBit(~(abs(vec4<i32>(0i, u_input.c.x, 35234i, 22334i)) >> (vec4<u32>(u_input.b, 0u, 1u, u_input.b) % vec4<u32>(32u))) | _wgslsmith_clamp_vec4_i32(-firstLeadingBit(vec4<i32>(2147483647i, 43253i, 1i, 10105i)), _wgslsmith_clamp_vec4_i32(vec4<i32>(1i, -5554i, u_input.c.x, global1.x), vec4<i32>(-3433i, u_input.a.x, u_input.a.x, global1.x), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, global1.x, -33799i))), -(vec4<i32>(0i, global1.x, global1.x, -41732i) << (vec4<u32>(var_0, 50159u, 6065u, 109019u) % vec4<u32>(32u)))));
    global2 = func_2().b;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.a.x, global2.a.x, -1031f, 443f))) - vec4<f32>(global2.a.x, 1541f, _wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -144f)))));
    global0 = global3.c.yx;
    return global3.d.x;
}

fn func_1(arg_0: vec3<f32>) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(abs(121f));
    let var_1 = func_2();
    var var_2 = Struct_3(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-229f)) + -410f), var_1.b));
    global1 = -vec3<i32>(-11440i, _wgslsmith_add_i32(min(i32(-1i) * -1i, 1i), countOneBits(21579i)), -39217i);
    var var_3 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1329f, -1765f, global2.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1179f, global3.a.x, global3.a.x)))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(1000f - 517f), 152f) + vec3<f32>(_wgslsmith_f_op_f32(global3.a.x + -876f), -1061f, _wgslsmith_f_op_f32(global3.a.x + -885f)))), ~(~vec4<u32>(func_3(vec2<i32>(global1.x, -6767i)), ~var_2.a.b.b.x, ~4294967295u, 20990u)), select(!global3.c, !select(var_1.b.c, var_1.b.c, var_2.a.b.c), var_2.a.b.c), max(vec2<u32>(~(~4294967295u), 45321u << (~global3.b.x % 32u)), vec2<u32>(var_1.b.d.x, 27867u)));
    return abs(firstTrailingBit((~var_1.b.b | var_2.a.b.b) >> (vec4<u32>(reverseBits(global2.b.x), ~1u, ~var_3.d.x, firstTrailingBit(41581u)) % vec4<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global3.a) - _wgslsmith_f_op_vec3_f32(vec3<f32>(411f, -530f, global2.a.x) * global2.a))))), func_1(global2.a), global3.c, ~vec2<u32>(global3.d.x, ~(~global3.b.x)));
    var var_0 = func_2().b;
    var var_1 = func_2();
    global1 = vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.c, (u_input.a | u_input.a) & u_input.c), _wgslsmith_dot_vec4_i32(countOneBits(-vec4<i32>(global1.x, 25574i, 0i, global1.x)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -1i, -2147483647i, global1.x), _wgslsmith_mod_vec4_i32(vec4<i32>(-2147483647i, global1.x, 2147483647i, -2147483647i), vec4<i32>(u_input.c.x, global1.x, u_input.a.x, -58510i)))), (_wgslsmith_div_i32(7942i, 7773i) >> (1u % 32u)) << (~global3.b.x % 32u)) << (vec3<u32>(50890u, ~(~var_1.b.b.x), global3.b.x) % vec3<u32>(32u));
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a.x, 2117f, global2.a.x)), _wgslsmith_f_op_vec3_f32(func_2().b.a - _wgslsmith_f_op_vec3_f32(-var_1.b.a))) - vec3<f32>(_wgslsmith_f_op_f32(select(var_1.a, _wgslsmith_f_op_f32(abs(var_1.b.a.x)), var_0.a.x >= var_1.a)), _wgslsmith_f_op_f32(global3.a.x * _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(-1f))), vec4<u32>(reverseBits(global3.b.x), 1u, u_input.b, global2.b.x), !(!global3.c), ~countOneBits(~(~vec2<u32>(27876u, global2.b.x))));
    let var_3 = abs(var_0.b.zy);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(-(~_wgslsmith_div_i32(-34550i, u_input.c.x)), 0i), abs(2147483647i), abs(_wgslsmith_mod_u32(1u, max(38585u, global2.d.x)) | 284u), min(~vec4<i32>(u_input.c.x | u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.c.zy, vec2<i32>(-19333i, -2147483647i)), u_input.c.x, abs(global1.x)), _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-2147483647i, -29470i, global1.x, u_input.a.x), vec4<i32>(0i, 19857i, 1i, global1.x)), firstLeadingBit(vec4<i32>(global1.x, 2147483647i, -5750i, 2147483647i)) | firstTrailingBit(vec4<i32>(u_input.a.x, 29417i, global1.x, 2147483647i)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.a.x, 732f, global2.a.x))))))));
}

