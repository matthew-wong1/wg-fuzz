struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(12097u, 2664u), vec2<u32>(3198u, 48744u), vec2<u32>(25157u, 23829u), vec2<u32>(53136u, 102319u), vec2<u32>(1u, 62425u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 31144u), vec2<u32>(0u, 4294967295u), vec2<u32>(14657u, 56615u), vec2<u32>(4294967295u, 18742u), vec2<u32>(0u, 27880u), vec2<u32>(72744u, 65045u), vec2<u32>(0u, 15941u), vec2<u32>(1u, 76674u), vec2<u32>(42850u, 32363u), vec2<u32>(4294967295u, 13785u));

var<private> global1: array<Struct_2, 29>;

var<private> global2: vec2<bool> = vec2<bool>(false, true);

var<private> global3: vec4<f32> = vec4<f32>(906f, 632f, -416f, -1000f);

var<private> global4: array<vec3<bool>, 30> = array<vec3<bool>, 30>(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_2) -> f32 {
    var var_0 = arg_2.a;
    global4 = array<vec3<bool>, 30>();
    let var_1 = ~0i;
    global0 = array<vec2<u32>, 16>();
    var var_2 = Struct_2(Struct_1(true, var_0.b, vec4<u32>(1u, var_0.c.x, _wgslsmith_mod_u32(~0u, abs(arg_2.a.c.x)), ~4294967295u), var_0.d));
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -549f)));
}

fn func_1() -> vec2<bool> {
    global3 = vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-1069f, vec3<bool>(true, true, true), Struct_2(Struct_1(global2.x, vec2<bool>(global2.x, true), vec4<u32>(u_input.b.x, u_input.b.x, 0u, u_input.b.x), vec3<i32>(-62953i, u_input.a, u_input.a)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) * _wgslsmith_f_op_f32(floor(-163f))));
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.x, 490f, global3.x, global3.x), vec4<f32>(-393f, global3.x, global3.x, global3.x))), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global3.x, 175f, global3.x, global3.x)))))));
    let var_1 = u_input.a;
    return select(select(select(!vec2<bool>(global2.x, global2.x), select(vec2<bool>(true, global2.x), vec2<bool>(true, true), true), !select(vec2<bool>(global2.x, global2.x), vec2<bool>(global2.x, global2.x), false)), select(!vec2<bool>(false, global2.x), !(!vec2<bool>(global2.x, false)), all(vec2<bool>(global2.x, false))), any(vec3<bool>(all(vec2<bool>(global2.x, global2.x)), any(vec4<bool>(true, global2.x, false, true)), u_input.a != u_input.a))), vec2<bool>(true | global2.x, global3.x > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.x, var_0.x)))), global2.x);
}

fn func_3(arg_0: u32, arg_1: f32) -> vec3<u32> {
    let var_0 = 1u;
    var var_1 = Struct_1(!all(vec2<bool>(false, all(vec2<bool>(false, global2.x)))), func_1(), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(4294967295u, 19147u, u_input.c, 31316u) << (firstTrailingBit(vec4<u32>(arg_0, u_input.b.x, arg_0, var_0)) % vec4<u32>(32u))), _wgslsmith_sub_vec4_u32(~vec4<u32>(7454u, arg_0, u_input.b.x, arg_0) | ~vec4<u32>(42444u, u_input.b.x, 88961u, var_0), vec4<u32>(18766u, u_input.c, 31124u, 38641u))), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, _wgslsmith_dot_vec4_i32(-vec4<i32>(-1i, -1i, u_input.a, -17622i), -vec4<i32>(-31683i, u_input.a, u_input.a, u_input.a))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(select(vec3<i32>(-10682i, -2147483647i, -1i), vec3<i32>(6873i, -44101i, -54641i), global2.x), -vec3<i32>(-46869i, -1i, u_input.a)), ~abs(vec3<i32>(u_input.a, 29854i, -51024i)))));
    var_1 = Struct_1(true, var_1.b, _wgslsmith_mult_vec4_u32(var_1.c, var_1.c), var_1.d >> (~max(vec3<u32>(42637u, 114578u, 23050u), var_1.c.www) % vec3<u32>(32u)));
    var_1 = Struct_1(all(var_1.b), !(!var_1.b), ~(~firstLeadingBit(_wgslsmith_clamp_vec4_u32(var_1.c, vec4<u32>(var_0, arg_0, var_1.c.x, var_1.c.x), vec4<u32>(u_input.c, 49796u, arg_0, 73969u)))), reverseBits(vec3<i32>(u_input.a, ~u_input.a, -1347i << ((0u ^ arg_0) % 32u))));
    global2 = !(!func_1());
    return _wgslsmith_mod_vec3_u32(select(firstLeadingBit(var_1.c.xyz), var_1.c.wzw | _wgslsmith_div_vec3_u32(~vec3<u32>(arg_0, 87217u, var_0), var_1.c.wzx), var_1.a), vec3<u32>(~41953u, 1u, ~var_1.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<vec3<bool>, 30>();
    global3 = vec4<f32>(-1413f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global3.x))), _wgslsmith_f_op_f32(f32(-1f) * -511f))), _wgslsmith_f_op_f32(-149f - 869f));
    let var_0 = _wgslsmith_div_f32(global3.x, 666f);
    let var_1 = _wgslsmith_f_op_f32(-2560f * _wgslsmith_div_f32(-1545f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0)) + _wgslsmith_f_op_f32(f32(-1f) * -1196f))))));
    global2 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(~vec3<u32>(0u, 0u, 36167u), vec3<u32>(u_input.c, 4294967295u, 0u)) ^ min(vec3<u32>(4294967295u, ~58394u, 1u), _wgslsmith_add_vec3_u32(func_3(u_input.b.x, -817f), countOneBits(vec3<u32>(u_input.c, u_input.b.x, u_input.c)))), u_input.c, -10084i | firstTrailingBit(~u_input.a));
}

