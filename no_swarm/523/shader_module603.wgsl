struct Struct_1 {
    a: vec2<bool>,
    b: u32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(18778u, 4294967295u, 59u), vec3<u32>(4294967295u, 4294967295u, 38985u), vec3<u32>(12438u, 18136u, 37822u), vec3<u32>(87603u, 79455u, 30813u), vec3<u32>(67277u, 4294967295u, 2596u), vec3<u32>(53707u, 1u, 34426u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 4294967295u, 6462u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 5097u, 1u), vec3<u32>(0u, 4294967295u, 4294967295u), vec3<u32>(0u, 41259u, 0u), vec3<u32>(4294967295u, 4294967295u, 26366u), vec3<u32>(66447u, 1u, 56264u), vec3<u32>(4294967295u, 0u, 34923u), vec3<u32>(43954u, 0u, 0u), vec3<u32>(0u, 33894u, 26449u), vec3<u32>(0u, 6745u, 1u), vec3<u32>(1u, 33503u, 0u), vec3<u32>(46439u, 76245u, 0u), vec3<u32>(4294967295u, 28141u, 16694u), vec3<u32>(77112u, 1u, 0u), vec3<u32>(63301u, 4294967295u, 1u), vec3<u32>(54758u, 1u, 26011u));

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), 1u, 4517u);

var<private> global2: vec3<i32> = vec3<i32>(i32(-2147483648), 2147483647i, 1i);

var<private> global3: vec3<f32> = vec3<f32>(1115f, 817f, -764f);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec2<bool> {
    global0 = array<vec3<u32>, 24>();
    var var_0 = Struct_1(!global1.a, 4294967295u >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, 905u, 80229u), vec3<u32>(global1.c, ~u_input.a.x, _wgslsmith_mod_u32(1u, u_input.a.x))) % 32u), _wgslsmith_add_u32(~(~u_input.a.x), 0u));
    global0 = array<vec3<u32>, 24>();
    global2 = firstTrailingBit(vec3<i32>(max(_wgslsmith_add_i32(-1i, -1i), -countOneBits(-50187i)), global2.x, reverseBits(2147483647i)));
    let var_1 = Struct_1(var_0.a, ~(~u_input.a.x), ~min(0u, _wgslsmith_add_u32(global1.b, 0u) | 1u));
    return !select(!global1.a, vec2<bool>(true, all(select(vec4<bool>(var_1.a.x, true, var_0.a.x, true), vec4<bool>(true, true, var_1.a.x, global1.a.x), var_0.a.x))), true);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> vec2<bool> {
    global1 = Struct_1(!(!vec2<bool>(true, any(vec4<bool>(false, true, global1.a.x, arg_0.x)))), arg_1.b, max(72387u, 10478u));
    let var_0 = Struct_1(select(arg_0, !vec2<bool>(true, any(global1.a)), global1.a), global1.c, ~(~_wgslsmith_mod_u32(max(global1.c, 1u), arg_1.b)));
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, (24511i >> (arg_1.b % 32u)) & reverseBits(0i), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(global2.x, global2.x, -2147483647i), ~(-766i))), vec3<i32>(_wgslsmith_div_i32(1i, _wgslsmith_mod_i32(-2147483647i, global2.x)), (global2.x ^ 2147483647i) >> (~u_input.a.x % 32u), -17714i), vec3<i32>(8433i, min(_wgslsmith_mult_i32(-41646i, 20738i), _wgslsmith_add_i32(global2.x, global2.x)), arg_2.b)), select(_wgslsmith_mult_vec3_i32(-vec3<i32>(global2.x, -2147483647i, global2.x) & ~vec3<i32>(global2.x, -1i, global2.x), abs(max(vec3<i32>(14288i, global2.x, arg_2.b), vec3<i32>(-1i, 0i, -20037i)))), vec3<i32>(select(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.x, arg_2.b, global2.x, 242i), vec4<i32>(arg_2.b, 0i, 10547i, -11117i)), global1.a.x), max(_wgslsmith_sub_i32(0i, 2147483647i), 0i), firstLeadingBit(arg_2.b) | arg_2.b), select(!select(vec3<bool>(true, arg_0.x, false), vec3<bool>(true, arg_0.x, false), vec3<bool>(true, var_0.a.x, var_0.a.x)), !vec3<bool>(var_0.a.x, false, false), vec3<bool>(true, true, true))));
    let var_2 = u_input.a.x;
    let var_3 = ~_wgslsmith_add_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(global2.x, 9907i, 1i, -6235i), vec4<i32>(arg_2.b, 28085i, 1i, var_1.x)) ^ (abs(vec4<i32>(2147483647i, 2147483647i, arg_2.b, 0i)) << (select(vec4<u32>(global1.c, 1u, 0u, 39372u), vec4<u32>(arg_3, var_2, var_2, global1.b), vec4<bool>(arg_0.x, false, true, global1.a.x)) % vec4<u32>(32u))), max(select(~vec4<i32>(-2147483647i, 396i, arg_2.b, -34179i), _wgslsmith_div_vec4_i32(vec4<i32>(arg_2.b, 13392i, var_1.x, 18107i), vec4<i32>(-24617i, -30273i, var_1.x, var_1.x)), select(arg_1.a.x, false, arg_0.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(1i, var_1.x, -24098i, var_1.x), abs(vec4<i32>(2147483647i, -42505i, -1i, -52372i)))));
    return var_0.a;
}

fn func_2() -> vec4<u32> {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(ceil(global3.x)), abs(2147483647i));
    global1 = Struct_1(func_4(global1.a, Struct_1(select(select(global1.a, global1.a, false), func_3(), global1.a.x), _wgslsmith_clamp_u32(~1u, ~4294967295u, abs(u_input.a.x)), global1.c), Struct_2(_wgslsmith_f_op_f32(ceil(var_0.a)), global2.x), u_input.a.x), 4294967295u, ~8171u >> (~4294967295u % 32u));
    return firstLeadingBit(~vec4<u32>(_wgslsmith_div_u32(~u_input.a.x, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x)), u_input.a.x, ~global1.b, u_input.a.x));
}

fn func_1() -> vec3<i32> {
    let var_0 = func_2();
    let var_1 = Struct_1(select(global1.a, !vec2<bool>(select(true, global1.a.x, global1.a.x), global1.a.x), global1.a.x), global1.b, 1u);
    var var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.x, global3.x) + global3.xz)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -693f), global3.x) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(global3.x, -1000f), global3.xy)))), Struct_2(global3.x, -20521i), ~u_input.a.x, !(!vec4<bool>(true, all(var_1.a), 0u > global1.c, any(vec3<bool>(global1.a.x, var_1.a.x, var_1.a.x)))));
    var var_3 = var_2.b;
    var_3 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1296f * 627f), -1000f))))), -26715i);
    return ~vec3<i32>(27961i, 0i, _wgslsmith_sub_i32(select(-2147483647i, _wgslsmith_add_i32(-1i, var_2.b.b), global1.a.x), select(global2.x, global2.x, select(global1.a.x, var_1.a.x, true))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global1 = Struct_1(func_4(global1.a, Struct_1(func_4(vec2<bool>(true, global1.a.x), Struct_1(global1.a, u_input.a.x, 1u), Struct_2(global3.x, global2.x), 0u >> (u_input.a.x % 32u)), _wgslsmith_clamp_u32(u_input.a.x << (global1.b % 32u), global1.c & 1u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(global1.b, u_input.a.x))), ~(~64602u)), Struct_2(_wgslsmith_f_op_f32(1f - global3.x), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, 34382i, 3569i), vec3<i32>(1525i, 1i, 1i)) >> (~4294967295u % 32u)), 82570u), 110726u, u_input.a.x);
    let var_0 = Struct_2(2494f, i32(-1i) * -6412i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(max(499f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(global3.x)), 1363f, any(vec4<bool>(global1.a.x, global1.a.x, false, false))))))), u_input.a, firstLeadingBit(global2.zz), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(2070f, global3.x, -554f) + vec3<f32>(global3.x, global3.x, global3.x)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1076f, global3.x, global3.x), vec3<f32>(global3.x, var_0.a, var_0.a), vec3<bool>(global1.a.x, global1.a.x, global1.a.x)))))))));
}

