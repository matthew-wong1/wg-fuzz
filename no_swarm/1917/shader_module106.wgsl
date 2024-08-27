struct Struct_1 {
    a: i32,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(2147483647i, true, vec2<u32>(12602u, 1u), vec3<bool>(false, true, false), vec2<bool>(true, false)), Struct_1(2147483647i, false, vec2<u32>(13068u, 0u), vec3<bool>(false, false, false), vec2<bool>(true, true)), Struct_1(0i, true, vec2<u32>(4294967295u, 0u), vec3<bool>(true, true, true), vec2<bool>(true, false)));

var<private> global2: vec3<i32>;

var<private> global3: Struct_1 = Struct_1(-1i, true, vec2<u32>(0u, 61192u), vec3<bool>(false, false, true), vec2<bool>(true, false));

var<private> global4: u32;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<f32>) -> f32 {
    let var_0 = ~_wgslsmith_mod_u32(abs(global3.c.x), u_input.a);
    let var_1 = _wgslsmith_f_op_f32(-arg_1.x);
    let var_2 = vec2<i32>(~min(-9699i, i32(-1i) * -global3.a), ~global3.a);
    let var_3 = firstTrailingBit(~(~reverseBits(~vec3<u32>(var_0, 50388u, 1u))));
    let var_4 = select(select(vec4<bool>(~u_input.a <= global3.c.x, true, all(global3.d), true), select(!vec4<bool>(false, true, global3.e.x, global3.e.x), !select(vec4<bool>(global3.d.x, global3.e.x, global3.d.x, global3.b), vec4<bool>(false, false, false, global3.e.x), global3.b), select(select(vec4<bool>(global3.d.x, false, false, global3.d.x), vec4<bool>(false, global3.b, global3.d.x, true), vec4<bool>(true, global3.b, true, global3.d.x)), vec4<bool>(global3.d.x, global3.b, global3.b, global3.d.x), vec4<bool>(global3.b, true, global3.d.x, false))), vec4<bool>(true, 57208i <= global3.a, any(vec3<bool>(global3.e.x, global3.d.x, false)), (1000f != var_1) & all(global3.e))), select(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(global3.d.x, false, false, true), vec4<bool>(true, global3.b, global3.e.x, false), vec4<bool>(true, global3.b, global3.e.x, global3.e.x)), global3.b), vec4<bool>(all(vec3<bool>(true, true, global3.e.x)) && true, any(global3.d), all(vec4<bool>(global3.d.x, true, false, true)), true), !(!(!vec4<bool>(false, global3.e.x, global3.e.x, global3.e.x)))), select(select(select(select(vec4<bool>(true, global3.b, global3.b, true), vec4<bool>(true, global3.d.x, false, true), false), vec4<bool>(global3.b, false, true, global3.d.x), vec4<bool>(false, global3.d.x, global3.b, true)), select(vec4<bool>(false, false, false, global3.d.x), vec4<bool>(true, true, global3.e.x, true), !vec4<bool>(true, global3.d.x, true, global3.b)), !vec4<bool>(global3.e.x, false, false, false)), vec4<bool>(global3.d.x, any(select(vec3<bool>(global3.b, global3.b, true), global3.d, global3.b)), false, any(vec4<bool>(global3.d.x, true, true, global3.b))), vec4<bool>(global3.b | false, global3.e.x || global3.b, true && !global3.d.x, global3.b)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(568f))))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - -1032f)), 1282f))) - arg_1.x);
}

fn func_2(arg_0: u32) -> vec2<bool> {
    let var_0 = u_input.c.yxw;
    var var_1 = _wgslsmith_f_op_f32(step(-1000f, 1095f));
    global0 = false;
    global3 = global1[_wgslsmith_index_u32(arg_0, 3u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1450f), _wgslsmith_f_op_f32(-1197f - 1484f), !global3.d.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(955f, -952f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-2000f, -819f), 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec4<i32>(2147483647i, -39268i, global3.a, global3.a), vec2<f32>(-1047f, 1931f))) - -1381f)), -269f) * vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(round(806f))), _wgslsmith_f_op_f32(-1f), all(vec3<bool>(global3.e.x, false, true)))), _wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2132f - 367f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-889f, -961f)))), -788f));
    return !global3.e;
}

fn func_1() -> vec4<i32> {
    global3 = Struct_1(global3.a, !(global2.x <= ~global2.x), global3.c, !select(global3.d, !global3.d, vec3<bool>(true, all(global3.e), global3.e.x)), select(func_2(~0u), func_2(~(~u_input.c.x)), global3.b));
    var var_0 = global3.e.x;
    var var_1 = _wgslsmith_f_op_f32(select(280f, 1770f, global3.d.x || global3.e.x));
    let var_2 = Struct_1(min(global2.x, global3.a), global3.e.x, ~u_input.c.zx, !select(!(!global3.d), select(vec3<bool>(false, global3.e.x, true), global3.d, !vec3<bool>(false, global3.b, global3.e.x)), true), vec2<bool>(!(global3.e.x & global3.d.x) == false, 2147483647i > global3.a));
    let var_3 = false;
    return _wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(~global3.a, -41453i & global3.a, _wgslsmith_div_i32(global2.x, 42291i), select(global3.a, global2.x, false))), vec4<i32>(~min(var_2.a, 132i), -_wgslsmith_add_i32(-1i, -1i), 2147483647i, firstLeadingBit(_wgslsmith_dot_vec2_i32(global2.zz, vec2<i32>(47036i, global2.x))))), _wgslsmith_div_vec4_i32(-_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(-45564i, 25798i, 32655i, -31171i), vec4<i32>(1i, -13609i, 10873i, global3.a)), -vec4<i32>(-2147483647i, 12169i, var_2.a, -11850i)), _wgslsmith_clamp_vec4_i32(max(vec4<i32>(-33014i, var_2.a, global2.x, 14154i), vec4<i32>(var_2.a, 2147483647i, -2561i, global2.x)) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, global3.c.x, 1u, 4294967295u), u_input.c) % vec4<u32>(32u)), -(vec4<i32>(1i, 0i, -31314i, 1i) | vec4<i32>(global2.x, var_2.a, global3.a, -2147483647i)), vec4<i32>(var_2.a, ~(-2147483647i), 37463i, -2147483647i << (var_2.c.x % 32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(5056u, _wgslsmith_div_u32(~(~global3.c.x), ~1u) | 4294967295u), 3u)];
    var var_1 = global1[_wgslsmith_index_u32(55164u, 3u)];
    let var_2 = _wgslsmith_sub_vec4_i32(vec4<i32>(global3.a, min(firstLeadingBit(-global2.x), var_0.a), global3.a, ~(-15896i)), ~select(-select(vec4<i32>(-7989i, -19581i, 23070i, -3158i), vec4<i32>(1i, global2.x, 0i, global2.x), vec4<bool>(var_0.e.x, false, true, false)), -func_1(), !vec4<bool>(global3.e.x, true, true, true)));
    let var_3 = Struct_1(1i >> (~4294967295u % 32u), !(!(max(var_1.a, global2.x) >= global3.a)), vec2<u32>(_wgslsmith_clamp_u32(abs(0u), _wgslsmith_add_u32(global3.c.x, var_0.c.x), 4294967295u), 0u), var_1.d, vec2<bool>(!(!(var_1.b || true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-383f * 210f))) == -1565f));
    var var_4 = Struct_1(select(~(~0i), countOneBits(-select(var_0.a, -4386i, true)), false & var_1.e.x), false, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(abs(var_3.c), vec2<u32>(u_input.d.x, var_3.c.x) << (var_1.c % vec2<u32>(32u))) << (_wgslsmith_clamp_vec2_u32(vec2<u32>(38913u, 0u), u_input.c.wz << (vec2<u32>(0u, 21972u) % vec2<u32>(32u)), vec2<u32>(45021u, 26753u)) % vec2<u32>(32u)), vec2<u32>(1u, var_0.c.x)), vec3<bool>(true, all(var_3.d), all(!select(global3.d.yz, var_3.d.zx, var_0.d.x))), var_1.d.yz);
    let var_5 = var_3.c.x;
    var var_6 = global3.d;
    var var_7 = ~vec3<i32>(-var_4.a, func_1().x, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(var_3.c.x, _wgslsmith_div_u32(select(~u_input.d.x, ~var_5, any(vec3<bool>(true, true, false))), var_1.c.x)), var_3.c | vec2<u32>(var_3.c.x, 4294967295u));
}

