struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: i32,
    e: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 28>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(44760u, true, -1014f, 27679i, 108f), Struct_1(27764u, true, 2039f, i32(-2147483648), -199f), Struct_1(49376u, false, -958f, 0i, -810f), Struct_1(0u, false, 687f, -3600i, -2010f), Struct_1(4294967295u, true, -1085f, 1i, -1234f), Struct_1(4294967295u, false, 458f, -1157i, 1968f));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    global0 = array<vec3<u32>, 28>();
    var var_0 = countOneBits(-vec4<i32>(max(~0i, 1i), countOneBits(u_input.a), -2147483647i, 49630i));
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(abs(u_input.a), -5621i), (-(~var_0.zx) & (-var_0.xy ^ countOneBits(vec2<i32>(global1.d, -10408i)))) & vec2<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 1i, u_input.a, global1.d), vec4<i32>(global1.d, global1.d, var_0.x, 27827i)), ~vec4<i32>(0i, var_0.x, global1.d, global1.d)), u_input.a), ~var_0.zx);
    var var_2 = global2[_wgslsmith_index_u32(global1.a, 6u)];
    let var_3 = reverseBits(var_0.yy);
    return u_input.a;
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(countOneBits(0u), global1.b, _wgslsmith_f_op_f32(-621f - 283f), _wgslsmith_div_i32(_wgslsmith_mult_i32(abs(u_input.a), _wgslsmith_sub_i32(7199i, 2147483647i)), global1.d) | ((func_3() >> (global1.a % 32u)) >> (global1.a % 32u)), global1.c);
    global0 = array<vec3<u32>, 28>();
    global2 = array<Struct_1, 6>();
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(323f, 380f, var_0.c) + vec3<f32>(arg_1.c, var_0.c, -529f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c, var_0.c, -1000f) + vec3<f32>(var_0.c, arg_1.c, arg_1.e)))), vec3<f32>(-1064f, var_0.e, _wgslsmith_f_op_f32(round(2449f))), vec3<bool>(!arg_0, true && var_0.b, true))))), vec3<f32>(-1718f, var_0.c, -538f));
    var var_2 = arg_1;
    return arg_1.e;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<u32> {
    let var_0 = _wgslsmith_dot_vec4_i32(abs(abs(~vec4<i32>(arg_2.d, -9501i, 2147483647i, 16497i))), ~firstTrailingBit(vec4<i32>(global1.d, arg_2.d, select(0i, global1.d, true), -1i)));
    var var_1 = arg_2;
    var var_2 = vec4<bool>(var_1.b, any(!vec3<bool>(arg_0, !arg_0, true)), !select(!(!global1.b), true, false), true);
    var_2 = vec4<bool>(_wgslsmith_f_op_f32(-arg_2.e) != _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c))))), arg_0, !all(vec4<bool>(all(vec2<bool>(true, var_1.b)), false, global1.b, false && var_2.x)), any(var_2.yy));
    let var_3 = Struct_1(var_1.a & var_1.a, false, global1.e, -8930i, global1.e);
    return _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(~(~(vec4<u32>(var_3.a, 0u, var_3.a, global1.a) << (vec4<u32>(4294967295u, 27280u, global1.a, var_1.a) % vec4<u32>(32u)))), vec4<u32>(firstTrailingBit(select(arg_2.a, arg_2.a, true)), ~1u, ~var_3.a, 39926u)), _wgslsmith_div_vec4_u32(vec4<u32>(abs(var_3.a) ^ _wgslsmith_clamp_u32(var_3.a, global1.a, 0u), 2036u, 18284u, _wgslsmith_div_u32(~arg_2.a, _wgslsmith_mult_u32(var_1.a, global1.a))), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.a, 0u, arg_2.a, 18367u), vec4<u32>(arg_2.a, 1u, arg_2.a, 1u)) << (vec4<u32>(var_3.a, arg_2.a, 4294967295u, 1u) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(var_3.a, arg_2.a, 8769u, 62280u)))));
}

fn func_5(arg_0: vec4<u32>) -> Struct_1 {
    global1 = global2[_wgslsmith_index_u32(~max(~(~firstLeadingBit(1u)), ~28844u), 6u)];
    global2 = array<Struct_1, 6>();
    var var_0 = max(~abs(vec3<u32>(~81340u, arg_0.x >> (4294967295u % 32u), 4294967295u)), max(~(~_wgslsmith_add_vec3_u32(global0[_wgslsmith_index_u32(global1.a, 28u)], arg_0.www)), ~(~(vec3<u32>(18199u, 21158u, global1.a) ^ arg_0.xxy))));
    var var_1 = _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(min(~arg_0, max(arg_0, abs(vec4<u32>(1765u, 0u, global1.a, 4294967295u)))), vec4<u32>(~arg_0.x ^ ~global1.a, ~1u, ~1u, 46081u), vec4<u32>(1u, 4294967295u, select(4294967295u | global1.a, 6487u, false), ~1u)), arg_0);
    var var_2 = ~_wgslsmith_sub_u32(arg_0.x, var_0.x);
    return Struct_1(~var_0.x, _wgslsmith_f_op_f32(global1.c * _wgslsmith_f_op_f32(ceil(-1000f))) < global1.c, global1.e, global1.d ^ (countOneBits(~(-1i)) << (_wgslsmith_dot_vec2_u32(~var_0.xz, _wgslsmith_mult_vec2_u32(vec2<u32>(global1.a, 4294967295u), vec2<u32>(41223u, 32436u))) % 32u)), global1.e);
}

fn func_1(arg_0: u32) -> i32 {
    let var_0 = vec2<bool>(global1.c >= _wgslsmith_f_op_f32(global1.e - _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(ceil(1000f)))), false);
    let var_1 = vec2<u32>(global1.a, 4294967295u);
    var var_2 = ~vec2<i32>(8111i, 0i);
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(min(global1.e, global1.e)), global1.e, 1069f, global1.e)));
    var var_4 = func_5(func_4(global1.b, vec3<f32>(_wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(func_2(var_0.x, global2[_wgslsmith_index_u32(63809u, 6u)]))), global1.c, _wgslsmith_f_op_f32(max(-998f, _wgslsmith_f_op_f32(-478f - -1898f)))), global2[_wgslsmith_index_u32(1u, 6u)]));
    return ~min(_wgslsmith_add_i32(u_input.a, 5572i << (var_1.x % 32u)), -12241i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(vec4<i32>(min(-1i, 1i), u_input.a, 15904i, u_input.a >> (global1.a % 32u)), -vec4<i32>((u_input.a << (global1.a % 32u)) | _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 0i, 0i, 18527i), vec4<i32>(0i, 25092i, global1.d, u_input.a)), _wgslsmith_clamp_i32(global1.d | 4404i, firstTrailingBit(-2147483647i), -u_input.a), u_input.a, _wgslsmith_mod_i32(global1.d & u_input.a, func_1(global1.a))));
    var_0 = ~vec4<i32>(-7101i, select(~(-2147483647i), var_0.x, true), _wgslsmith_dot_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(0i, 10503i, 2147483647i, u_input.a), vec4<i32>(-2147483647i, global1.d, 14847i, var_0.x)), vec4<i32>(u_input.a, func_3(), ~(-2147483647i), var_0.x)), u_input.a);
    var_0 = -(~max(_wgslsmith_add_vec4_i32(vec4<i32>(39134i, var_0.x, -18446i, global1.d), ~vec4<i32>(2555i, 22189i, u_input.a, var_0.x)), vec4<i32>(u_input.a, 1i, global1.d, 1i) << (_wgslsmith_add_vec4_u32(vec4<u32>(37302u, global1.a, global1.a, 56921u), vec4<u32>(global1.a, 20970u, global1.a, global1.a)) % vec4<u32>(32u))));
    var var_1 = ~(~countOneBits(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, global1.a), vec2<u32>(0u, global1.a), vec2<u32>(1u, global1.a)))));
    var_0 = ~(~(_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(var_0.x, -1i, u_input.a, global1.d)), vec4<i32>(-1i, var_0.x, u_input.a, 0i)) | select(vec4<i32>(var_0.x, 5616i, global1.d, -46947i), vec4<i32>(global1.d, global1.d, var_0.x, 9262i) | vec4<i32>(u_input.a, 4860i, u_input.a, global1.d), select(vec4<bool>(false, false, false, global1.b), vec4<bool>(global1.b, global1.b, false, global1.b), vec4<bool>(global1.b, global1.b, global1.b, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(0i, 1i, _wgslsmith_add_i32(select(u_input.a, i32(-1i) * -29171i, all(vec3<bool>(false, false, global1.b))), var_0.x)), func_3(), min(~max(-var_0.xx, ~vec2<i32>(1i, var_0.x)), vec2<i32>(global1.d, ~_wgslsmith_add_i32(global1.d, -1i))));
}

