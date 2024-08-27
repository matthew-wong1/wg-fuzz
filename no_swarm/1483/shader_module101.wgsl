struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(1008f, -641f);

var<private> global1: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(1u, 1u, 4294967295u, 0u), vec4<u32>(0u, 1u, 4294967295u, 7517u), vec4<u32>(40451u, 7392u, 15019u, 1u), vec4<u32>(14227u, 6783u, 4294967295u, 1u), vec4<u32>(0u, 36958u, 51886u, 1u), vec4<u32>(17224u, 4294967295u, 13334u, 19497u), vec4<u32>(17774u, 0u, 167916u, 4294967295u), vec4<u32>(1u, 21218u, 4294967295u, 6821u), vec4<u32>(4294967295u, 68968u, 36801u, 92568u), vec4<u32>(41935u, 0u, 28540u, 7553u), vec4<u32>(31766u, 4294967295u, 4294967295u, 0u), vec4<u32>(0u, 63859u, 30439u, 2800u), vec4<u32>(0u, 0u, 38692u, 50534u), vec4<u32>(42729u, 6391u, 1u, 33722u), vec4<u32>(53653u, 4294967295u, 4294967295u, 20136u), vec4<u32>(4294967295u, 0u, 1u, 19777u), vec4<u32>(12455u, 0u, 10745u, 4294967295u), vec4<u32>(74940u, 18371u, 29910u, 0u), vec4<u32>(12344u, 25662u, 0u, 4294967295u), vec4<u32>(4294967295u, 47148u, 4294967295u, 4294967295u), vec4<u32>(55032u, 91287u, 5440u, 87329u), vec4<u32>(58629u, 4294967295u, 21342u, 4294967295u), vec4<u32>(23132u, 1u, 32350u, 1u), vec4<u32>(78704u, 0u, 63621u, 133051u), vec4<u32>(51586u, 1u, 1u, 0u), vec4<u32>(58144u, 7864u, 1u, 52081u), vec4<u32>(0u, 4294967295u, 50097u, 4294967295u), vec4<u32>(4294967295u, 11502u, 1811u, 4294967295u));

var<private> global2: vec4<i32> = vec4<i32>(i32(-2147483648), -8565i, 1i, 0i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<bool>) -> u32 {
    let var_0 = vec4<u32>(reverseBits(countOneBits(1u)), 40302u, 65455u, _wgslsmith_clamp_u32(1u, ~4294967295u, ~(~abs(13204u))));
    global2 = abs(_wgslsmith_mult_vec4_i32(vec4<i32>(firstTrailingBit(-27895i), u_input.b.x ^ 1i, _wgslsmith_mod_i32(i32(-1i) * -32802i, -1i & global2.x), u_input.a.x), vec4<i32>(u_input.b.x, -33043i << ((var_0.x >> (var_0.x % 32u)) % 32u), min(_wgslsmith_div_i32(-12105i, global2.x), u_input.b.x), global2.x)));
    var var_1 = Struct_1(0u & abs(~var_0.x), ~global1[_wgslsmith_index_u32(27825u, 28u)], ~_wgslsmith_div_vec3_u32(firstLeadingBit(var_0.yxy), vec3<u32>(4294967295u, _wgslsmith_add_u32(var_0.x, var_0.x), 1u)));
    let var_2 = arg_2.x;
    var var_3 = Struct_2(reverseBits(~1u), -1418f, Struct_1(_wgslsmith_mod_u32(90794u, ~(~var_0.x)), vec4<u32>(~(~4590u), _wgslsmith_div_u32(_wgslsmith_add_u32(32634u, var_0.x), firstLeadingBit(14122u)), _wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(~4294967295u, 28u)], ~vec4<u32>(var_0.x, var_1.a, var_1.b.x, 1u)), min(var_0.x, ~var_0.x)), var_0.xzz));
    return ~1u;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec4<i32>) -> i32 {
    let var_0 = Struct_2(max(abs(~1u), min(~46066u, 10996u)) << (~_wgslsmith_mult_u32(4294967295u, _wgslsmith_clamp_u32(4936u, 37952u, 1u)) % 32u), arg_1.x, Struct_1(func_3(_wgslsmith_f_op_f32(1f * global0.x), vec4<f32>(_wgslsmith_f_op_f32(-928f - -180f), _wgslsmith_f_op_f32(arg_1.x * -365f), -709f, _wgslsmith_f_op_f32(f32(-1f) * -207f)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true))), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, ~8468u, 2786u, 24858u), global1[_wgslsmith_index_u32(4294967295u, 28u)]), select(vec3<u32>(4294967295u, 10411u, _wgslsmith_clamp_u32(49835u, 1u, 0u)), vec3<u32>(~17460u, firstTrailingBit(4294967295u), 4294967295u), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), all(vec4<bool>(true, false, true, true))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(step(-821f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + global0.x))))) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) + _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-arg_1.x))))));
    var_1 = arg_1.x;
    var var_2 = var_0;
    global1 = array<vec4<u32>, 28>();
    return -43167i;
}

fn func_1() -> vec3<u32> {
    global2 = vec4<i32>(_wgslsmith_mod_i32(-1150i, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -u_input.b.yy, vec2<i32>(min(963i, -22791i), ~(-44342i)))), firstTrailingBit(10236i), -(i32(-1i) * -11378i), _wgslsmith_mult_i32(func_2(global2.x, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 2042f, global0.x)))), ~reverseBits(u_input.b)), u_input.b.x));
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + 1f)) - -1960f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_div_f32(757f, _wgslsmith_f_op_f32(max(310f, _wgslsmith_f_op_f32(max(global0.x, global0.x))))))));
    var var_1 = Struct_2(36010u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, 1000f))), _wgslsmith_f_op_f32(-global0.x))))), Struct_1(15967u, firstLeadingBit(global1[_wgslsmith_index_u32(106923u, 28u)]), vec3<u32>(1u, 0u, ~_wgslsmith_add_u32(0u, 1u))));
    var_1 = Struct_2(~(~47343u), 1512f, var_1.c);
    var var_2 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, _wgslsmith_mult_u32(4294967295u, var_1.a)), var_1.c.a), var_1.c.b, var_1.c.c);
    return vec3<u32>(~(~60628u), var_2.a, _wgslsmith_div_u32(15230u | max(var_1.a, 1u | var_1.c.b.x), 81415u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(reverseBits(1u), global1[_wgslsmith_index_u32(~abs(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 30615u), 28u)], vec4<u32>(1u, 1u, 1u, 1u))), 28u)], min(_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, 17087u, 101500u), func_1()), ~vec3<u32>(1u, 1u, 1u)), select(abs(firstTrailingBit(vec3<u32>(20475u, 45256u, 4294967295u))), vec3<u32>(1u, 1u, 1u), !(u_input.b.x > -1i))));
    var var_1 = vec2<u32>(~var_0.a, ~(~var_0.b.x));
    var var_2 = var_0.b.zww;
    let var_3 = vec4<bool>((true | !(global2.x <= 1i)) & false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) - global0.x)) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(global0.x * global0.x)))), true, 15868u != ~abs(_wgslsmith_dot_vec2_u32(var_0.c.xz, var_2.xy)));
    var var_4 = firstLeadingBit(-(i32(-1i) * -1i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0.x, _wgslsmith_f_op_f32(global0.x * 440f)))), _wgslsmith_div_i32(-1i ^ global2.x, _wgslsmith_add_i32(global2.x ^ 56399i, -abs(u_input.b.x))));
}

