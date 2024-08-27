struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 2>;

var<private> global1: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec2<u32>(86161u, 26754u)), Struct_3(vec2<u32>(4294967295u, 0u)), Struct_3(vec2<u32>(2503u, 11825u)), Struct_3(vec2<u32>(98334u, 1u)), Struct_3(vec2<u32>(50770u, 4294967295u)), Struct_3(vec2<u32>(4294967295u, 23266u)), Struct_3(vec2<u32>(4294967295u, 4294967295u)), Struct_3(vec2<u32>(13867u, 82935u)), Struct_3(vec2<u32>(1u, 111407u)), Struct_3(vec2<u32>(4294967295u, 55690u)), Struct_3(vec2<u32>(4294967295u, 65469u)), Struct_3(vec2<u32>(7563u, 87032u)), Struct_3(vec2<u32>(1u, 4294967295u)), Struct_3(vec2<u32>(38296u, 30731u)), Struct_3(vec2<u32>(51u, 1u)), Struct_3(vec2<u32>(14402u, 4294967295u)), Struct_3(vec2<u32>(0u, 0u)), Struct_3(vec2<u32>(9429u, 66415u)), Struct_3(vec2<u32>(0u, 1u)), Struct_3(vec2<u32>(25190u, 3370u)), Struct_3(vec2<u32>(0u, 0u)), Struct_3(vec2<u32>(23037u, 60614u)), Struct_3(vec2<u32>(4294967295u, 9515u)), Struct_3(vec2<u32>(0u, 57550u)), Struct_3(vec2<u32>(1u, 49509u)), Struct_3(vec2<u32>(1u, 52596u)), Struct_3(vec2<u32>(3221u, 25449u)));

var<private> global2: array<vec2<i32>, 28>;

var<private> global3: Struct_3 = Struct_3(vec2<u32>(1u, 1u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<u32> {
    let var_0 = ~74926u;
    return abs(u_input.b.wx);
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> bool {
    let var_0 = u_input.b.x;
    global3 = global0[_wgslsmith_index_u32(21484u, 2u)];
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(857f, -319f))), _wgslsmith_f_op_f32(1f + -160f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -405f) * -1000f)) + vec3<f32>(-593f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_div_f32(-161f, 1000f)), 1451f)), Struct_1(!(!(!vec4<bool>(arg_0, arg_0, true, arg_0))), _wgslsmith_div_i32(_wgslsmith_add_i32(1i, min(u_input.a.x, 48089i)), -(~u_input.a.x))), vec4<i32>(u_input.a.x, u_input.a.x, (firstLeadingBit(u_input.a.x) >> (u_input.b.x % 32u)) & (-u_input.a.x << (_wgslsmith_mod_u32(u_input.c, 0u) % 32u)), u_input.a.x), Struct_1(!select(select(vec4<bool>(arg_0, arg_0, arg_0, false), vec4<bool>(false, true, false, true), vec4<bool>(arg_0, true, false, true)), !vec4<bool>(true, true, true, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0)), -u_input.a.x));
    global3 = Struct_3(_wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(global3.a.x, 1u, 19008u), arg_1.x | var_0), func_3(-var_1.b.b)) ^ vec2<u32>(var_0, arg_1.x));
    global1 = array<Struct_3, 27>();
    return arg_0;
}

fn func_1(arg_0: u32) -> vec2<i32> {
    var var_0 = min(~vec3<i32>(abs(u_input.a.x), -7149i, _wgslsmith_clamp_i32(-u_input.a.x, 0i, u_input.a.x & -68845i)), firstTrailingBit(~vec3<i32>(u_input.a.x, u_input.a.x, 2147483647i) >> (~(~u_input.b.zwz) % vec3<u32>(32u))));
    var var_1 = Struct_4(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~firstLeadingBit(u_input.b.zxw), vec3<u32>(arg_0, ~global3.a.x, u_input.c)), ~21101u), 27u)]);
    let var_2 = all(select(!vec3<bool>(func_2(true, vec3<u32>(var_1.a.a.x, u_input.c, global3.a.x)), false, u_input.a.x <= 0i), select(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(true, false, true), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, false)), vec3<bool>(true, any(vec2<bool>(true, true)), true)), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), vec3<bool>(true, true, true), false)));
    let var_3 = _wgslsmith_div_i32(18468i, var_0.x);
    let var_4 = Struct_2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(407f)), _wgslsmith_f_op_f32(1100f - 2468f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-512f))), 440f)), Struct_1(vec4<bool>(true, true, false, var_2 | false), 2147483647i << (~arg_0 % 32u)), -vec4<i32>(1i, ~var_0.x, -u_input.a.x, var_0.x) | _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, var_0.x, 23095i, -1i), vec4<i32>(var_0.x, u_input.a.x, 1i, 26640i)), vec4<i32>(u_input.a.x, var_0.x, u_input.a.x, -1224i)), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(4103i, 4129i, var_0.x, u_input.a.x), vec4<i32>(1i, 2147483647i, -23565i, -1i), vec4<i32>(u_input.a.x, -22541i, var_3, 0i)))), Struct_1(vec4<bool>(var_2, !(!var_2), true, var_2), _wgslsmith_div_i32(-7431i & var_0.x, ~var_0.x) >> (global3.a.x % 32u)));
    return ~(~var_4.c.xx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(Struct_3(u_input.b.xz));
    var var_1 = Struct_3(global3.a);
    var_1 = Struct_3(vec2<u32>(37759u, ~((var_1.a.x ^ 0u) ^ var_1.a.x)));
    var var_2 = -vec2<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, u_input.a.x));
    var var_3 = _wgslsmith_dot_vec2_i32(~func_1(global3.a.x), firstTrailingBit(_wgslsmith_mod_vec2_i32(-global2[_wgslsmith_index_u32(1u, 28u)] >> (abs(vec2<u32>(var_1.a.x, 1u)) % vec2<u32>(32u)), vec2<i32>(var_2.x, u_input.a.x) >> (_wgslsmith_add_vec2_u32(vec2<u32>(41367u, global3.a.x), vec2<u32>(45954u, var_0.a.a.x)) % vec2<u32>(32u)))));
    global3 = global1[_wgslsmith_index_u32(0u, 27u)];
    var_2 = _wgslsmith_sub_vec2_i32(vec2<i32>(~_wgslsmith_dot_vec3_i32(~vec3<i32>(var_2.x, var_2.x, u_input.a.x), ~vec3<i32>(96878i, u_input.a.x, -1i)), u_input.a.x), ~_wgslsmith_mod_vec2_i32(u_input.a ^ -u_input.a, vec2<i32>(-63864i, -1i)));
    var var_4 = Struct_1(select(vec4<bool>(true, true, true, true), !(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), false)), vec4<bool>(!any(vec3<bool>(true, false, true)), false, all(vec2<bool>(false, true)), true)), _wgslsmith_sub_i32(min(var_2.x, -1i), firstTrailingBit(select(1i, -2147483647i, true))));
    var_4 = Struct_1(vec4<bool>(all(var_4.a) | true, false, var_4.a.x, !(_wgslsmith_clamp_u32(1u, 1u, var_0.a.a.x) != 0u)), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(804f, _wgslsmith_dot_vec4_u32(firstTrailingBit(abs(vec4<u32>(1u, var_1.a.x, var_1.a.x, 103918u) | vec4<u32>(9210u, 26993u, 1u, 11912u))), ~(select(u_input.b, u_input.b, var_4.a.x) >> (~vec4<u32>(4294967295u, 61013u, 1u, 88111u) % vec4<u32>(32u)))));
}

