struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(59128i, 27872i, 1i), vec4<i32>(2147483647i, -9459i, i32(-2147483648), 15187i));

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-1i, -4439i, i32(-2147483648)), vec4<i32>(30059i, 44531i, 1i, 21357i));

var<private> global3: array<bool, 18> = array<bool, 18>(false, true, true, true, true, false, true, true, true, true, true, true, true, true, true, true, false, true);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_2(arg_0: vec4<i32>) -> u32 {
    let var_0 = Struct_1(global1.b.zwy, global2.b);
    global0 = vec2<f32>(_wgslsmith_div_f32(237f, -819f), global0.x);
    global0 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(364f, -1207f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.x, global0.x))))))));
    global1 = var_0;
    global3 = array<bool, 18>();
    return 0u;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>, arg_3: bool) -> u32 {
    var var_0 = firstLeadingBit(countOneBits(~(-2147483647i)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-466f, 122f, global0.x))))));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-346f, var_1.x, var_1.x))))))));
    let var_2 = Struct_1(global1.b.www, abs(arg_1.b));
    let var_3 = Struct_1(vec3<i32>(_wgslsmith_div_i32(-(i32(-1i) * -2147483647i), firstTrailingBit(-13903i)), -(~(-44770i | global2.b.x)), ~(-49699i)), arg_0.b);
    return _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_mult_vec2_u32(select(vec2<u32>(33271u, 14667u), vec2<u32>(40081u, 3304u), vec2<bool>(true, arg_3)), _wgslsmith_mult_vec2_u32(vec2<u32>(9346u, 12046u), vec2<u32>(1u, 0u)))), firstLeadingBit(func_2(abs(vec4<i32>(arg_0.a.x, var_3.b.x, u_input.a.x, 15079i)) | vec4<i32>(61590i, -1i, -1i, global2.b.x))));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>) -> vec4<i32> {
    var var_0 = vec2<u32>(22054u, arg_2.x & ((firstLeadingBit(arg_2.x) | arg_2.x) >> (arg_2.x % 32u)));
    global0 = arg_1.zz;
    var var_1 = vec3<bool>(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, var_0.x, arg_2.x), vec3<u32>(19399u, var_0.x, 0u)), ~vec3<u32>(var_0.x, arg_2.x, arg_2.x)), vec3<u32>(abs(func_2(global2.b)), func_3(arg_0, arg_0, !vec3<bool>(global3[_wgslsmith_index_u32(4294967295u, 18u)], false, global3[_wgslsmith_index_u32(arg_2.x, 18u)]), all(vec3<bool>(global3[_wgslsmith_index_u32(1u, 18u)], false, global3[_wgslsmith_index_u32(arg_2.x, 18u)]))), arg_2.x)), 18u)], all(!(!select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(32269u, 18u)], false), vec2<bool>(true, false)))), global3[_wgslsmith_index_u32(countOneBits(countOneBits(reverseBits(var_0.x)) | 32209u), 18u)]);
    var var_2 = global3[_wgslsmith_index_u32(0u, 18u)];
    let var_3 = ~(vec4<u32>(~firstTrailingBit(arg_2.x), var_0.x, firstTrailingBit(func_3(arg_0, Struct_1(u_input.b, arg_0.b), vec3<bool>(global3[_wgslsmith_index_u32(var_0.x, 18u)], false, var_1.x), var_1.x)), 2781u) | vec4<u32>(~(~arg_2.x), func_3(Struct_1(u_input.a, global2.b), Struct_1(arg_0.b.zzx, global2.b), select(vec3<bool>(false, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, var_1.x), vec3<bool>(var_1.x, var_1.x, global3[_wgslsmith_index_u32(49251u, 18u)])), var_1.x || var_1.x), abs(~var_0.x), var_0.x));
    return ~vec4<i32>(countOneBits(global2.b.x), ~(-u_input.a.x), 12319i, _wgslsmith_clamp_i32(38336i, global2.b.x, ~global2.a.x)) ^ arg_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_mult_vec3_i32(global1.b.wwz, _wgslsmith_sub_vec3_i32(~reverseBits(vec3<i32>(0i, 1i, 0i)), max(global1.b.yxx, global1.a) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)))), _wgslsmith_clamp_vec4_i32(func_1(Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -1i, global1.a.x), vec3<i32>(-2147483647i, -43904i, global1.a.x)), _wgslsmith_div_vec4_i32(global1.b, global1.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1465f, -1121f, global0.x)) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x), vec3<f32>(global0.x, 1360f, -1855f))), firstTrailingBit(vec2<u32>(1u, 1u))), _wgslsmith_mod_vec4_i32(vec4<i32>(23992i, -1i, -2147483647i, -global2.b.x), -vec4<i32>(-1i, -1i, -1i, global1.b.x)), ~global2.b));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_clamp_i32(6236i, u_input.a.x, 20236i), ~firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, global1.b.x), vec3<i32>(-75249i, -1i, 76069i))) ^ _wgslsmith_dot_vec4_i32(~vec4<i32>(global1.a.x, 2147483647i, 9966i, -1i), _wgslsmith_mod_vec4_i32(global2.b, global1.b)));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1599f)), _wgslsmith_f_op_f32(global0.x * 159f))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, global0.x)), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(global0.x, -1300f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.x, -392f), vec2<f32>(-127f, 867f), global3[_wgslsmith_index_u32(1298u, 18u)])) - vec2<f32>(global0.x, 436f)))), vec2<f32>(_wgslsmith_f_op_f32(-1f), 911f), !all(vec3<bool>(true, all(vec2<bool>(true, global3[_wgslsmith_index_u32(4294967295u, 18u)])), any(vec2<bool>(global3[_wgslsmith_index_u32(0u, 18u)], false))))));
    global3 = array<bool, 18>();
    global1 = Struct_1(firstTrailingBit(select(u_input.b, abs(u_input.b), all(vec3<bool>(true, true, global3[_wgslsmith_index_u32(1u, 18u)])) | global3[_wgslsmith_index_u32(1u, 18u)])), func_1(Struct_1(var_0.b.xyx, countOneBits(global2.b ^ var_0.b)), vec3<f32>(_wgslsmith_f_op_f32(abs(-488f)), global0.x, global0.x), vec2<u32>(~(~634u), 4294967295u >> (firstTrailingBit(69321u) % 32u))));
    global3 = array<bool, 18>();
    let var_2 = Struct_1(vec3<i32>(global2.b.x, -global1.a.x, global1.b.x), vec4<i32>(max(~28331i, 6964i), _wgslsmith_clamp_i32(global1.b.x, 34652i, -1i), -(abs(global2.a.x) << (func_3(Struct_1(vec3<i32>(0i, var_0.b.x, -1i), vec4<i32>(-20200i, 1i, -1i, -1i)), Struct_1(u_input.b, var_0.b), vec3<bool>(true, false, global3[_wgslsmith_index_u32(1u, 18u)]), false) % 32u)), global1.b.x));
    var var_3 = Struct_1(_wgslsmith_add_vec3_i32(global2.b.xzz, var_0.b.yxy) & vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, -1i, var_0.a.x, 2147483647i), firstLeadingBit(vec4<i32>(var_0.a.x, -1i, global1.b.x, 2147483647i))), _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2.a.x, -39920i), -10248i), i32(-1i) * -1650i), reverseBits(var_0.b) & (global2.b ^ global2.b));
    let var_4 = (_wgslsmith_dot_vec2_u32(abs(_wgslsmith_sub_vec2_u32(vec2<u32>(51409u, 6229u), vec2<u32>(27039u, 0u))), ~abs(vec2<u32>(4294967295u, 1u))) | 1u) | ~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~reverseBits(vec4<u32>(0u, 4294967295u, 4294967295u, 5386u)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.b.x, ~(-5122i << (~var_4 % 32u))), _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

