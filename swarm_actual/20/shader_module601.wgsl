struct Struct_1 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: f32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

var<private> global1: array<i32, 24> = array<i32, 24>(-1i, i32(-2147483648), -6172i, i32(-2147483648), -13651i, 1i, 14780i, -4396i, 13154i, 4255i, -23120i, 2147483647i, 2147483647i, 1i, -34677i, 1i, i32(-2147483648), -10817i, -44380i, 0i, 2147483647i, 40169i, -45097i, 2147483647i);

var<private> global2: vec2<i32> = vec2<i32>(22677i, 46732i);

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_3, arg_2: bool, arg_3: i32) -> vec2<bool> {
    var var_0 = -vec2<i32>(global2.x, _wgslsmith_mod_i32(64137i, 21505i)) ^ (_wgslsmith_add_vec2_i32(~vec2<i32>(2147483647i, arg_1.c.b.b.x), vec2<i32>(0i, min(1i, global1[_wgslsmith_index_u32(arg_0, 24u)]))) >> ((arg_1.c.b.d.zx & arg_1.c.b.d.xz) % vec2<u32>(32u)));
    let var_1 = countOneBits(~arg_1.c.b.d.yz);
    let var_2 = global0[_wgslsmith_index_u32(20451u, 2u)];
    var var_3 = _wgslsmith_f_op_f32(-arg_1.c.b.c);
    let var_4 = Struct_1(vec3<bool>(true, arg_1.c.b.a.x, true), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(-(~var_2.b.b), vec4<i32>(select(arg_1.c.b.b.x, global2.x, false), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_2.b.b.x, 1i, global1[_wgslsmith_index_u32(53978u, 24u)]), vec4<i32>(arg_1.c.b.b.x, arg_3, -25819i, 0i)), ~1i, ~var_2.b.b.x)), -(~_wgslsmith_div_vec4_i32(var_2.b.b, vec4<i32>(2147483647i, var_2.b.b.x, 31820i, u_input.e)))), _wgslsmith_f_op_f32(f32(-1f) * -104f), arg_1.c.b.d);
    return vec2<bool>(!arg_1.c.b.a.x, arg_2);
}

fn func_2(arg_0: i32, arg_1: u32) -> Struct_2 {
    var var_0 = Struct_1(vec3<bool>(true, u_input.b > select(~83308u, 1u, true), _wgslsmith_sub_u32(20318u, min(arg_1, arg_1)) != min(~u_input.b, 58503u)), _wgslsmith_mult_vec4_i32(vec4<i32>(-u_input.c.x, 3827i, _wgslsmith_mult_i32(global2.x, global2.x), arg_0), u_input.d) >> (~vec4<u32>(firstLeadingBit(92746u), arg_1, _wgslsmith_div_u32(arg_1, 4294967295u), ~19054u) % vec4<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -461f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-928f, 1217f))))), ~_wgslsmith_sub_vec3_u32(~vec3<u32>(41989u, arg_1, u_input.b), firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(42604u, 1u, arg_1), vec3<u32>(45373u, u_input.b, 1u)))));
    var_0 = Struct_1(vec3<bool>(false, (!var_0.a.x | true) || !(!var_0.a.x), false), u_input.d, -2102f, firstTrailingBit(var_0.d));
    let var_1 = 1u & countOneBits(arg_1);
    let var_2 = ~select(select(var_0.d.zx | (var_0.d.xx << (var_0.d.zx % vec2<u32>(32u))), min(min(vec2<u32>(12356u, var_0.d.x), vec2<u32>(4294967295u, u_input.b)), ~vec2<u32>(u_input.b, var_0.d.x)), select(var_0.a.zx, func_3(101376u, Struct_3(27800u, vec4<f32>(-268f, 487f, -909f, var_0.c), Struct_2(var_0.c, Struct_1(vec3<bool>(var_0.a.x, var_0.a.x, false), var_0.b, -294f, vec3<u32>(var_1, u_input.b, var_0.d.x)))), true, arg_0), select(var_0.a.x, var_0.a.x, true))), vec2<u32>(reverseBits(var_1) & 0u, min(0u, 40739u)), !var_0.a.xz);
    var_0 = Struct_1(vec3<bool>(true, true, true), min(vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.d.xxw, vec3<i32>(u_input.e, 18226i, 1i)) | _wgslsmith_add_i32(arg_0, u_input.d.x), _wgslsmith_dot_vec2_i32(u_input.d.yw, vec2<i32>(arg_0, 6882i)), u_input.c.x, _wgslsmith_sub_i32(~0i, 2147483647i)), -var_0.b), _wgslsmith_div_f32(var_0.c, var_0.c), ~vec3<u32>(arg_1, min(_wgslsmith_mod_u32(var_2.x, 1u), firstTrailingBit(12506u)), ~(~26038u)));
    return Struct_2(784f, Struct_1(!(!var_0.a), countOneBits(firstTrailingBit(vec4<i32>(arg_0, u_input.d.x, arg_0, var_0.b.x)) ^ vec4<i32>(u_input.d.x, -1i, u_input.d.x, 2147483647i)), var_0.c, vec3<u32>(countOneBits(_wgslsmith_add_u32(var_1, 4294967295u)), _wgslsmith_mult_u32(var_0.d.x, var_0.d.x) << (1u % 32u), _wgslsmith_dot_vec3_u32(var_0.d, vec3<u32>(24165u, 12324u, 37300u) ^ vec3<u32>(var_1, var_0.d.x, var_1)))));
}

fn func_1() -> vec2<i32> {
    var var_0 = ~vec3<u32>(4294967295u, _wgslsmith_mod_u32(u_input.b ^ 1u, ~u_input.b), u_input.b);
    var var_1 = func_2(u_input.e, var_0.x);
    var var_2 = Struct_3(var_0.x, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, _wgslsmith_f_op_f32(select(460f, -661f, var_1.b.a.x)), _wgslsmith_f_op_f32(step(-450f, _wgslsmith_f_op_f32(select(1326f, var_1.a, var_1.b.a.x)))), _wgslsmith_f_op_f32(var_1.b.c + -667f)))), Struct_2(-1329f, Struct_1(vec3<bool>(false, true, var_1.b.a.x), vec4<i32>(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(var_0.x, 24u)], 37636i), -57712i, u_input.c.x, 1i), -890f, reverseBits(abs(vec3<u32>(var_1.b.d.x, u_input.b, u_input.b))))));
    global2 = var_2.c.b.b.xx >> (_wgslsmith_mod_vec2_u32(select(vec2<u32>(1u, var_2.a & var_2.c.b.d.x), ~vec2<u32>(var_1.b.d.x, 1u), true), _wgslsmith_mult_vec2_u32((var_0.yx >> (vec2<u32>(4294967295u, 72342u) % vec2<u32>(32u))) & ~var_0.yx, max(select(vec2<u32>(var_2.c.b.d.x, 0u), vec2<u32>(var_2.c.b.d.x, 0u), vec2<bool>(false, var_2.c.b.a.x)), vec2<u32>(54412u, var_0.x) & vec2<u32>(var_0.x, 57996u)))) % vec2<u32>(32u));
    var var_3 = Struct_3(u_input.b, var_2.b, func_2(min(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(27369u, 24u)], global2.x ^ 38353i), 28250i), 1u));
    return vec2<i32>(min(0i, firstLeadingBit(i32(-1i) * -global2.x)), 2147483647i);
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: vec2<i32>, arg_3: u32) -> Struct_2 {
    global0 = array<Struct_2, 2>();
    var var_0 = 387f;
    global2 = vec2<i32>(-24586i, -9615i);
    global1 = array<i32, 24>();
    global2 = ~((select(_wgslsmith_mod_vec2_i32(u_input.c.xx, u_input.c.zx), -u_input.c.xz, !vec2<bool>(arg_0.x, arg_0.x)) ^ arg_2) >> (_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(arg_1.x, arg_1.x)), vec2<u32>(arg_1.x | 24210u, ~arg_1.x)) % vec2<u32>(32u)));
    return global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1, abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 6996u), arg_1))), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b, 2u)];
    global1 = array<i32, 24>();
    let var_1 = func_4(!vec4<bool>(true, any(!vec4<bool>(true, var_0.b.a.x, false, false)), false, true), vec2<u32>(2595u, var_0.b.d.x), func_1(), _wgslsmith_sub_u32(var_0.b.d.x ^ ~1u, 4294967295u));
    global2 = var_1.b.b.ww;
    var var_2 = ~_wgslsmith_sub_i32(abs(firstTrailingBit(firstLeadingBit(2147483647i))), var_0.b.b.x);
    var_2 = func_1().x;
    let var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(745f, 597f), _wgslsmith_f_op_vec2_f32(vec2<f32>(411f, -1187f) - vec2<f32>(var_3.c, -145f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(vec2<f32>(-775f, 1137f), vec2<f32>(-148f, -1337f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a, -267f)))))), vec4<u32>(_wgslsmith_dot_vec3_u32(~min(var_3.d, var_1.b.d), var_3.d), u_input.b & (max(var_3.d.x, 4294967295u) << (var_3.d.x % 32u)), max(var_0.b.d.x, var_3.d.x) >> (abs(55982u) % 32u), abs(var_0.b.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1539f - var_1.b.c), 412f)), func_2(~(-2147483647i), 4294967295u).b.c))));
}

