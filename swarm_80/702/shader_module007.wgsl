struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<f32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 25>;

var<private> global2: u32 = 118346u;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, false);

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<bool>) -> i32 {
    global3 = !vec4<bool>(false, _wgslsmith_div_i32(global4.a, u_input.b.x & -45958i) == min(u_input.b.x, -5592i >> (u_input.c.x % 32u)), any(!vec3<bool>(true, arg_2.x, arg_2.x)) | global3.x, true);
    var var_0 = Struct_1(global4.e.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(select(-2147483647i, ~0i, global3.x), global4.c), -1i, 38290i), u_input.b.x, vec3<f32>(global4.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(428f)) + global4.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global4.d.x + global4.d.x), -593f)), -682f)), max(u_input.b, vec4<i32>(u_input.a.x, _wgslsmith_add_i32(-28487i, abs(8175i)), ~global4.e.x, 1408i)));
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, -1000f, -564f, global4.d.x) - vec4<f32>(-595f, 1000f, -861f, global4.d.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-222f, -755f, -2693f, -401f)))) - _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1883f, -190f, 838f, -1000f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(395f, var_0.d.x, var_0.d.x, 731f), vec4<f32>(-1104f, var_0.d.x, 541f, -1000f))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1407f, var_0.d.x, -1000f, global4.d.x) * vec4<f32>(var_0.d.x, var_0.d.x, var_0.d.x, 359f)))))));
    let var_2 = true;
    var var_3 = -countOneBits(var_0.e.wy);
    return -2147483647i;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(u_input.a.x, 1i, i32(-1i) * -max(global4.c, func_3(u_input.d.x, global3.x, vec2<bool>(global3.x, global3.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-528f, global4.d.x, global4.d.x) * vec3<f32>(814f, global4.d.x, global4.d.x)))))))), ~abs(select(vec4<i32>(-1i, -39172i, 17672i, global4.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, u_input.a.x, u_input.b.x, -41225i), vec4<i32>(global4.a, -14480i, u_input.a.x, u_input.b.x), u_input.b), select(vec4<bool>(global3.x, true, false, global3.x), vec4<bool>(true, global3.x, global3.x, false), vec4<bool>(true, false, global3.x, true)))));
    global0 = firstTrailingBit(5083u);
    var var_1 = ~(~firstTrailingBit(u_input.b.x));
    var var_2 = -222f;
    global0 = _wgslsmith_clamp_u32(_wgslsmith_div_u32(48510u, 6640u), firstTrailingBit(u_input.d.x) << (~abs(12640u) % 32u), 38025u);
    return global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(abs(_wgslsmith_mult_u32(14547u, u_input.c.x)), 56158u), ~max(~4294967295u, firstLeadingBit(u_input.d.x >> (u_input.c.x % 32u))), _wgslsmith_sub_u32(~u_input.d.x, ~(~(~4294967295u)))), 25u)];
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> f32 {
    var var_0 = Struct_1(~2147483647i, func_3(16303u, global3.x, global3.xz), firstTrailingBit(arg_0.e.x), _wgslsmith_f_op_vec3_f32(func_2().d * arg_1.d), reverseBits(vec4<i32>(~(-1i), 2147483647i, -2147483647i, 0i)));
    var_0 = Struct_1(abs(global4.a), -57531i << (_wgslsmith_div_u32(_wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.d.x, 4294967295u), abs(u_input.c.x)), ~u_input.c.x) % 32u), arg_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.d.x, 778f, arg_1.d.x), global4.d)))))), _wgslsmith_mod_vec4_i32(reverseBits(select(vec4<i32>(var_0.a, 30050i, u_input.b.x, 2147483647i), _wgslsmith_add_vec4_i32(vec4<i32>(var_0.c, 18236i, global4.b, 2147483647i), arg_1.e), !global3.x)), global4.e));
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.d, _wgslsmith_mult_vec4_u32(abs(vec4<u32>(u_input.c.x, 31620u, arg_2, 4294967295u) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_2, 37260u, 4294967295u, u_input.d.x), u_input.d) % vec4<u32>(32u))), vec4<u32>(u_input.c.x, arg_2, u_input.d.x, 40246u))), 25u)];
    let var_2 = ~u_input.c.x;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.d));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_1.d.x)));
}

fn func_1(arg_0: vec3<f32>) -> Struct_1 {
    global2 = abs(0u);
    let var_0 = 24429u;
    let var_1 = _wgslsmith_f_op_f32(1212f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.d.x, _wgslsmith_f_op_f32(func_4(func_2(), Struct_1(-2147483647i, u_input.b.x, u_input.a.x, vec3<f32>(global4.d.x, 401f, 1248f), u_input.b), abs(u_input.d.x), _wgslsmith_sub_i32(global4.b, 2147483647i))), true)) * _wgslsmith_div_f32(2660f, _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_div_f32(-271f, -252f))))));
    global4 = func_2();
    global4 = Struct_1(u_input.a.x, -2147483647i, _wgslsmith_div_i32(max(global4.e.x, _wgslsmith_sub_i32(i32(-1i) * -44896i, func_2().a)), global4.c), global4.d, _wgslsmith_mult_vec4_i32(vec4<i32>(-(~(-22910i)), _wgslsmith_mult_i32(abs(u_input.b.x), u_input.b.x), i32(-1i) * -u_input.b.x, min(29844i, -2147483647i)), global4.e));
    return Struct_1(firstLeadingBit(u_input.a.x << (1u % 32u)), -max(abs(~0i), ~(0i ^ u_input.b.x)), -2147483647i, _wgslsmith_f_op_vec3_f32(global4.d + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0 + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-856f, var_1, 489f))) * vec3<f32>(_wgslsmith_f_op_f32(arg_0.x - 1435f), _wgslsmith_div_f32(264f, -436f), _wgslsmith_f_op_f32(-840f * 1750f)))), global4.e >> (vec4<u32>(var_0, _wgslsmith_sub_u32(~0u, _wgslsmith_dot_vec4_u32(u_input.d, vec4<u32>(11069u, var_0, 71081u, 19512u))), var_0, select(var_0, u_input.c.x, true) | _wgslsmith_dot_vec4_u32(vec4<u32>(36060u, 4294967295u, 45987u, var_0), vec4<u32>(u_input.c.x, u_input.c.x, 35381u, 30480u))) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = u_input.a.yy ^ reverseBits(vec2<i32>(abs(-u_input.b.x), 1i));
    let var_2 = func_1(global4.d);
    global3 = vec4<bool>(global4.e.x < select(-66663i, _wgslsmith_dot_vec3_i32(vec3<i32>(2596i, 1i, -2147483647i), global4.e.yxy), any(select(vec4<bool>(global3.x, false, false, false), vec4<bool>(global3.x, false, global3.x, true), vec4<bool>(true, true, true, global3.x)))), false, any(global3.xz), true);
    global4 = Struct_1(~(-751i), 98375i, global4.e.x, _wgslsmith_f_op_vec3_f32(abs(var_2.d)), _wgslsmith_mod_vec4_i32(global4.e, countOneBits(-min(vec4<i32>(-15678i, var_2.c, 2147483647i, global4.e.x), vec4<i32>(global4.b, -2147483647i, global4.c, -1i)))));
    let var_3 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(2473u, ~442u, ~_wgslsmith_mult_u32(28210u, 72797u)));
}

