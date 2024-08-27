struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec4<i32>,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<i32>(-65997i, 70460i, -1i, 14683i), 1000f, vec4<i32>(-10023i, -3883i, 15721i, -24822i), 4951i, vec2<i32>(-23728i, -1i));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> vec2<i32> {
    var var_0 = Struct_1(vec4<i32>(abs(-27424i), ~(1i << (u_input.e.x % 32u)), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(global0.a, global0.c), max(-2147483647i, 0i)), reverseBits(_wgslsmith_add_i32(global0.c.x, -1i))) | global0.a, 134f, min(_wgslsmith_mult_vec4_i32(-vec4<i32>(global0.c.x, u_input.a.x, -1i, global0.c.x), global0.c), global0.a), reverseBits(-1i), ~vec2<i32>(-2147483647i, -2147483647i));
    let var_1 = global0.b;
    var var_2 = Struct_1(~_wgslsmith_add_vec4_i32(vec4<i32>(global0.c.x << (1u % 32u), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x), 1i, ~2147483647i), firstLeadingBit(-global0.c)), -1348f, abs(global0.a) << ((~vec4<u32>(arg_2.x, 4294967295u, 4294967295u, 9696u) << (u_input.c % vec4<u32>(32u))) % vec4<u32>(32u)), firstTrailingBit(-2147483647i), vec2<i32>(i32(-1i) * -6757i, var_0.e.x));
    global0 = Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global0.e.x, ~(~(-2147483647i)), _wgslsmith_clamp_i32(~(-18473i), -41966i, ~global0.d)), abs(~var_2.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -535f) - var_0.b) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(2667f)), -529f)), -(var_2.c | vec4<i32>(select(var_2.c.x, -2147483647i, arg_1), -7384i, global0.e.x, ~var_2.c.x)), -var_0.a.x, global0.c.wx);
    let var_3 = false;
    return ~(-(~vec2<i32>(global0.e.x, var_0.e.x ^ global0.a.x)));
}

fn func_2(arg_0: f32) -> u32 {
    global0 = Struct_1(_wgslsmith_mult_vec4_i32(abs(global0.c), global0.c), _wgslsmith_f_op_f32(step(arg_0, 137f)), -global0.c, select(1i, u_input.a.x, !any(vec2<bool>(false, false))), global0.e);
    let var_0 = Struct_1(firstTrailingBit(vec4<i32>(u_input.a.x, _wgslsmith_div_i32(u_input.a.x, global0.a.x), global0.d, _wgslsmith_div_i32(global0.d & global0.d, u_input.a.x))), -950f, global0.a, global0.a.x, func_3(any(select(vec3<bool>(false, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), all(vec2<bool>(false, true)))), true, vec3<u32>(~1u, 4294967295u, 4294967295u)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-105f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1372f)))));
    let var_3 = firstTrailingBit(countOneBits(~(~(-1i) & var_0.e.x)));
    return 1u;
}

fn func_1() -> i32 {
    global0 = Struct_1(countOneBits(-vec4<i32>(1i, ~u_input.a.x, 0i, -global0.e.x)), -371f, ~global0.a, global0.a.x, u_input.a);
    global0 = Struct_1(reverseBits(~(-global0.c)), -1291f, -countOneBits(global0.c), u_input.a.x, _wgslsmith_clamp_vec2_i32(global0.c.wz, ~(-vec2<i32>(u_input.a.x, -16156i)), vec2<i32>(u_input.a.x, _wgslsmith_div_i32(global0.d, -2147483647i >> (u_input.e.x % 32u)))));
    var var_0 = Struct_1(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, ~_wgslsmith_add_i32(0i, -16345i), u_input.a.x, -94890i), global0.a), global0.b, vec4<i32>(global0.c.x, _wgslsmith_mod_i32(_wgslsmith_add_i32(global0.a.x ^ u_input.a.x, u_input.a.x), abs(~global0.e.x)), -2147483647i << ((1u >> (func_2(global0.b) % 32u)) % 32u), -(~(-u_input.a.x))), ~(-1i) | ~global0.a.x, global0.a.ww);
    var var_1 = u_input.e.x;
    var_0 = Struct_1(vec4<i32>(global0.e.x, _wgslsmith_mod_i32(min(global0.c.x, -1i), _wgslsmith_clamp_i32(u_input.a.x, var_0.d, 2147483647i)) & -25720i, -1i, -21173i), _wgslsmith_f_op_f32(-global0.b), -_wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_0.d, 65620i, global0.d, -14i), var_0.a), var_0.a ^ firstTrailingBit(vec4<i32>(u_input.a.x, 2147483647i, 3882i, -37978i))), ~(~(~global0.a.x)), vec2<i32>(-2147483647i, u_input.a.x));
    return -18939i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, global0.b, _wgslsmith_f_op_f32(step(global0.b, global0.b))), vec3<f32>(_wgslsmith_f_op_f32(-global0.b), global0.b, _wgslsmith_f_op_f32(1195f + global0.b))))));
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = Struct_1(vec4<i32>(1i, func_1() & ~u_input.a.x, _wgslsmith_div_i32(0i, global0.a.x), u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1f))), max(global0.a, -vec4<i32>(_wgslsmith_div_i32(22138i, global0.d), reverseBits(u_input.a.x), u_input.a.x, func_1())), global0.d, u_input.a);
    let var_4 = ~abs(u_input.e.yxx & min(vec3<u32>(83578u, 6505u, 4294967295u) << (vec3<u32>(u_input.c.x, 11701u, 22630u) % vec3<u32>(32u)), abs(vec3<u32>(u_input.d, 0u, u_input.d))));
    let var_5 = _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec4_u32(~(~(~u_input.e)), ~u_input.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.d, -67637i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(423f, var_1.x, 511f, -562f))))), ~((~var_4.x | 1u) >> (~(~4294967295u) % 32u)), ~vec2<u32>(abs(~0u), u_input.c.x));
}

