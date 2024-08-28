struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6> = array<u32, 6>(4859u, 1u, 4294967295u, 64401u, 4294967295u, 15080u);

var<private> global1: vec3<f32> = vec3<f32>(1017f, -443f, 939f);

var<private> global2: Struct_2;

var<private> global3: vec3<bool> = vec3<bool>(false, true, true);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1) -> i32 {
    global2 = Struct_2(Struct_1(~(~_wgslsmith_add_vec4_u32(vec4<u32>(1978u, 4294967295u, 0u, 63302u), vec4<u32>(global0[_wgslsmith_index_u32(1u, 6u)], 4294967295u, 4294967295u, 0u))), all(global3.yy), global2.e.c && true, ~(vec4<i32>(1i, u_input.c.x, arg_0.d.x, arg_0.d.x) >> ((arg_0.a ^ vec4<u32>(u_input.d, 4294967295u, 54741u, 85848u)) % vec4<u32>(32u)))), arg_0.d.wzx, _wgslsmith_clamp_vec2_u32(~_wgslsmith_mod_vec2_u32(arg_0.a.xw, global2.a.a.wy << (global2.c % vec2<u32>(32u))), countOneBits(~arg_0.a.zx), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, ~u_input.d), vec2<u32>(min(4294967295u, 4294967295u), _wgslsmith_mult_u32(global2.a.a.x, 1u)))), vec2<i32>(-firstTrailingBit(19592i), firstLeadingBit(_wgslsmith_div_i32(7650i, global2.d.x))) >> (_wgslsmith_mod_vec2_u32(global2.e.a.wz, abs(vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u)), Struct_1(global2.e.a, arg_0.b, false, vec4<i32>(u_input.c.x, 2147483647i, -1i, _wgslsmith_sub_i32(2147483647i, 34248i)) | global2.a.d));
    var var_0 = vec3<i32>(1i, -arg_0.d.x, 42071i);
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(arg_0.a.x, 6u)], arg_0.a.x, 4294967295u)), _wgslsmith_mult_vec4_u32(arg_0.a, vec4<u32>(0u, global2.e.a.x, 28849u, u_input.b)))) << (_wgslsmith_dot_vec2_u32(firstLeadingBit(global2.a.a.ww), vec2<u32>(~32971u, ~(~12275u))) % 32u);
    var var_2 = Struct_2(arg_0, arg_0.d.wxw, _wgslsmith_mult_vec2_u32(min(abs(global2.c), global2.c), _wgslsmith_mult_vec2_u32(~global2.a.a.zx, global2.c)), -vec2<i32>(-global2.d.x, arg_0.d.x), arg_0);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(f32(-1f) * -290f)))), -480f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-475f, global1.x)) - global1.x) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(261f * global1.x))))), _wgslsmith_f_op_f32(-993f * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global1.x, 575f, global2.a.b))), -708f))));
    return -13639i;
}

fn func_2() -> vec4<u32> {
    global2 = Struct_2(Struct_1(max(global2.e.a, ~vec4<u32>(5143u, 1u, global2.a.a.x, u_input.b)), global2.a.b, true, vec4<i32>(func_3(global2.e), 1i, ~_wgslsmith_dot_vec2_i32(u_input.e.zy, vec2<i32>(global2.d.x, global2.e.d.x)), ~(u_input.c.x >> (u_input.d % 32u)))), _wgslsmith_div_vec3_i32(firstTrailingBit(_wgslsmith_mod_vec3_i32(-global2.a.d.yzw, _wgslsmith_div_vec3_i32(vec3<i32>(39833i, -2147483647i, global2.a.d.x), global2.a.d.zwx))), u_input.e), vec2<u32>(_wgslsmith_mod_u32(u_input.d, 1u), ~(~1u)) ^ ~global2.a.a.wx, vec2<i32>(global2.a.d.x, 1i), Struct_1(firstLeadingBit(~vec4<u32>(2943u, 0u, global2.c.x, 52093u)), !(global2.a.c & (global3.x & global3.x)), true, _wgslsmith_mod_vec4_i32(vec4<i32>(6453i, global2.b.x, -13215i, _wgslsmith_dot_vec2_i32(vec2<i32>(global2.e.d.x, -37903i), vec2<i32>(u_input.a, global2.e.d.x))), vec4<i32>(_wgslsmith_add_i32(u_input.c.x, u_input.c.x), 1i, global2.d.x, ~global2.b.x))));
    var var_0 = ~global0[_wgslsmith_index_u32(~global2.e.a.x, 6u)];
    var_0 = _wgslsmith_dot_vec4_u32(global2.e.a, (global2.e.a << (~_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d, 4294967295u, 25744u, global2.e.a.x), vec4<u32>(global0[_wgslsmith_index_u32(34768u, 6u)], 59642u, 24923u, global2.a.a.x), vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(u_input.d, 6u)], global0[_wgslsmith_index_u32(global2.e.a.x, 6u)], 36355u)) % vec4<u32>(32u))) ^ _wgslsmith_add_vec4_u32(global2.e.a, vec4<u32>(_wgslsmith_mult_u32(u_input.b, global2.e.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(16982u, 22935u, 0u, global2.a.a.x), global2.e.a), ~31124u, ~global0[_wgslsmith_index_u32(u_input.b, 6u)])));
    global3 = !vec3<bool>(!all(!vec2<bool>(global2.a.c, false)), !(~global2.c.x >= ~u_input.b), false);
    let var_1 = global2.e;
    return var_1.a;
}

fn func_1() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, _wgslsmith_f_op_f32(select(-543f, global1.x, !any(vec2<bool>(global2.a.c, true)))), _wgslsmith_f_op_f32(abs(global1.x))), vec3<f32>(1000f, -278f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(847f, _wgslsmith_f_op_f32(-global1.x)) + global1.x)));
    global0 = array<u32, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -781f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(f32(-1f) * -796f), _wgslsmith_f_op_f32(247f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))));
    let var_2 = global2.e.d.zwy;
    var var_3 = -893f;
    return Struct_2(Struct_1(func_2(), !all(vec4<bool>(false, global3.x, false, false)), global2.a.c, _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(abs(vec4<i32>(u_input.e.x, global2.b.x, 0i, u_input.a)), global2.e.d & u_input.c), vec4<i32>(14989i, ~(-2147483647i), 2147483647i, 1i))), _wgslsmith_sub_vec3_i32(-(vec3<i32>(var_2.x, global2.d.x, var_2.x) << (~global2.e.a.xzy % vec3<u32>(32u))), ~max(vec3<i32>(75092i, u_input.c.x, 41455i) << (global2.e.a.yyx % vec3<u32>(32u)), vec3<i32>(u_input.e.x, u_input.c.x, u_input.a))), abs(firstTrailingBit(~(global2.c << (global2.c % vec2<u32>(32u))))), vec2<i32>(-1i, min(~29495i, ~var_2.x)) << (_wgslsmith_div_vec2_u32(reverseBits(~vec2<u32>(global0[_wgslsmith_index_u32(global2.c.x, 6u)], u_input.d)), abs(global2.e.a.ww)) % vec2<u32>(32u)), global2.a);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>, arg_2: vec2<bool>) -> Struct_1 {
    global2 = arg_0;
    var var_0 = arg_0;
    var var_1 = var_0.e;
    global0 = array<u32, 6>();
    var_1 = arg_0.a;
    return func_1().a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(func_1(), !(!vec3<bool>(global3.x, all(vec4<bool>(global2.e.c, global2.e.b, true, false)), any(vec3<bool>(global3.x, false, global2.e.b)))), select(select(global3.zx, vec2<bool>(!global2.e.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(56969u, 6u)], 6u)] >= 27678u), false), vec2<bool>(true, true), select(!vec2<bool>(global2.a.c, global2.a.c), !select(vec2<bool>(true, true), global3.xy, false), global3.x)));
    var var_1 = func_4(func_1(), !select(!vec3<bool>(global3.x, var_0.b, var_0.b), !vec3<bool>(false, false, global3.x), var_0.b), vec2<bool>(false, select(!var_0.b || true, false, !(u_input.a >= 45790i)))).b;
    global2 = func_1();
    var var_2 = global2.d.x;
    var_1 = global3.x;
    var var_3 = global1.x;
    let var_4 = false;
    var_2 = -6564i;
    let x = u_input.a;
    s_output = StorageBuffer(350f, ~(i32(-1i) * -reverseBits(-9969i)), ~global2.a.d.wxx);
}

