struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<u32, 4> = array<u32, 4>(50825u, 0u, 1624u, 44202u);

var<private> global3: vec2<u32> = vec2<u32>(0u, 51941u);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: f32) -> u32 {
    let var_0 = Struct_1(2147483647i);
    global3 = vec2<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], 86924u);
    let var_1 = min(global0.xyw, vec3<i32>(i32(-1i) * -12297i, ~u_input.b.x, _wgslsmith_clamp_i32(global0.x, 83668i, u_input.b.x) | abs(-5456i)) | (~global0.wyw | _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -1i, 14881i), u_input.b)));
    var var_2 = u_input.d;
    return 0u;
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: i32) -> u32 {
    global2 = array<u32, 4>();
    let var_0 = global2[_wgslsmith_index_u32(global3.x, 4u)];
    global3 = vec2<u32>(global3.x, u_input.a);
    return func_2(_wgslsmith_add_i32(86286i, u_input.e), -1446f) >> (firstTrailingBit(53873u) % 32u);
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: u32, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = select(max(~vec3<i32>(41741i << (1u % 32u), ~global0.x, i32(-1i) * -59544i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.x, global0.x), vec3<i32>(1i, u_input.e, arg_3.a)), ~(~17200i), u_input.e)), u_input.b, vec3<bool>(true, !(false || all(vec3<bool>(true, false, arg_0.x))), true));
    global3 = firstLeadingBit(~u_input.d | u_input.d);
    var var_1 = arg_3;
    let var_2 = reverseBits(_wgslsmith_div_i32(arg_3.a, arg_3.a)) | -2147483647i;
    var var_3 = Struct_1(_wgslsmith_mod_i32(-24852i, _wgslsmith_clamp_i32(u_input.e, reverseBits(var_2), 1i)));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 849f, arg_1, -683f) + vec4<f32>(1626f, 2499f, arg_1, arg_1)))))));
}

fn func_1(arg_0: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1003f + 689f)) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(229f, -788f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1093f))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, func_2(-global0.x, -306f) == ~79787u, true, true), -385f, _wgslsmith_dot_vec3_u32(vec3<u32>(reverseBits(global2[_wgslsmith_index_u32(27927u, 4u)]), ~1u, func_3(global1[_wgslsmith_index_u32(4189u, 13u)], u_input.e, 1i)), ~abs(vec3<u32>(global2[_wgslsmith_index_u32(u_input.d.x, 4u)], global2[_wgslsmith_index_u32(u_input.a, 4u)], 1u))) << (1812u % 32u), Struct_1(1i)));
    let var_2 = abs(~(~(~vec4<u32>(global2[_wgslsmith_index_u32(56749u, 4u)], 0u, u_input.a, 46195u) | ~vec4<u32>(88280u, global3.x, global3.x, 101621u))));
    global0 = arg_0;
    var var_3 = vec4<u32>(_wgslsmith_dot_vec3_u32(var_2.xxx, ~vec3<u32>(select(1u, 61635u, false), global3.x, var_2.x)), 49985u, var_2.x, 1u);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1287f)) * -120f) * 281f) + 1000f);
}

fn func_5(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    var var_0 = arg_0;
    var var_1 = all(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), false), all(vec4<bool>(false, true, true, false))), select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))))) | true;
    let var_2 = Struct_1(min(~1i, global0.x) & 43797i);
    let var_3 = Struct_1(~reverseBits(8056i));
    var var_4 = var_2;
    return vec4<u32>(94145u, global3.x, _wgslsmith_clamp_u32(_wgslsmith_div_u32(u_input.a, 4294967295u), 36668u, 39935u), _wgslsmith_mult_u32(~global3.x, u_input.d.x) ^ 20075u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(func_5(Struct_1(_wgslsmith_sub_i32(-1i, -2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-vec4<i32>(u_input.e, 1i, 1i, u_input.b.x))))), _wgslsmith_mult_vec4_u32(_wgslsmith_div_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 4u)], 4u)], global3.x), vec4<u32>(4294967295u, 54197u, global2[_wgslsmith_index_u32(66625u, 4u)], 0u)), max(func_5(Struct_1(-21082i), 279f), vec4<u32>(global3.x, 1u, global3.x, 10245u))), ~(~firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, 15517u, 0u)))));
    global1 = array<Struct_1, 13>();
    let var_1 = Struct_1(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-global0.x, -55703i, _wgslsmith_mod_i32(u_input.b.x, 24990i), 2147483647i), select(max(vec4<i32>(global0.x, 0i, -33108i, u_input.b.x), vec4<i32>(4685i, 2147483647i, global0.x, u_input.b.x)), vec4<i32>(13131i, -1i, 0i, u_input.b.x), vec4<bool>(true, true, true, true))), abs(vec4<i32>(~(-1i), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, 34281i), vec2<i32>(global0.x, global0.x)), _wgslsmith_dot_vec3_i32(u_input.b, global0.wyx), 43117i))));
    let var_2 = Struct_1(-_wgslsmith_mult_i32(8000i, -38934i));
    global2 = array<u32, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(countOneBits(func_3(global1[_wgslsmith_index_u32(38376u, 13u)], _wgslsmith_div_i32(var_2.a, 2147483647i), -17661i)), 4294967295u), abs(vec2<u32>(global3.x, _wgslsmith_div_u32(1u, ~1u))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1828f, 673f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-642f, 1491f)), true))), vec2<f32>(_wgslsmith_f_op_f32(-1174f - 1774f), _wgslsmith_f_op_f32(floor(530f)))), _wgslsmith_sub_u32(~u_input.a, global3.x));
}

