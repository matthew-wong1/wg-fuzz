struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec3<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16>;

var<private> global1: array<Struct_1, 19>;

var<private> global2: Struct_2 = Struct_2(4294967295u, vec3<f32>(318f, -1497f, 280f), Struct_1(-1i, vec3<bool>(true, false, false), vec3<f32>(361f, 549f, -2010f), 9397u));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> vec4<f32> {
    let var_0 = select(global2.c.a <= global2.c.a, any(select(select(!vec4<bool>(global2.c.b.x, false, arg_1.b.x, false), select(vec4<bool>(true, global2.c.b.x, global2.c.b.x, false), vec4<bool>(global2.c.b.x, arg_1.b.x, true, false), vec4<bool>(arg_1.b.x, global2.c.b.x, arg_1.b.x, true)), vec4<bool>(true, true, false, true)), !select(vec4<bool>(arg_1.b.x, arg_3.b.x, false, global2.c.b.x), vec4<bool>(arg_1.b.x, true, global2.c.b.x, true), true), false)), !(!(_wgslsmith_f_op_f32(step(-285f, arg_3.c.x)) > _wgslsmith_f_op_f32(ceil(761f)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global2.b.x - 675f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1085f, arg_1.c.x)))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -416f);
    let var_2 = u_input.d;
    var var_3 = true;
    return _wgslsmith_div_vec4_f32(vec4<f32>(1194f, _wgslsmith_f_op_f32(arg_1.c.x - 179f), -1000f, global2.b.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1691f * arg_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(221f + _wgslsmith_f_op_f32(-arg_1.c.x))), 733f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_3.c.x)))))));
}

fn func_2() -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(func_3(firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, global2.c.a), u_input.b), ~(-1i))), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~u_input.a, ~vec3<u32>(0u, u_input.a.x, 0u)), 19u)], abs(_wgslsmith_add_vec4_u32(vec4<u32>(global2.c.d, u_input.c, 1u, u_input.a.x) << (vec4<u32>(4294967295u, u_input.a.x, global2.c.d, u_input.a.x) % vec4<u32>(32u)), vec4<u32>(4294967295u, global2.a, u_input.c, global2.a) | vec4<u32>(0u, global2.c.d, 38812u, 15026u))), global1[_wgslsmith_index_u32(0u, 19u)]))));
    let var_1 = global1[_wgslsmith_index_u32(global2.a, 19u)];
    global0 = array<vec3<i32>, 16>();
    global2 = Struct_2(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~(~vec4<u32>(global2.a, var_1.d, 17073u, 6300u)), _wgslsmith_mult_vec4_u32(vec4<u32>(4402u, u_input.c, 1u, 22459u) ^ vec4<u32>(global2.c.d, var_1.d, var_1.d, var_1.d), vec4<u32>(0u, global2.a, 4294967295u, u_input.c) >> (vec4<u32>(global2.a, 74044u, var_1.d, var_1.d) % vec4<u32>(32u)))), 81346u), vec3<f32>(-1617f, var_0.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - 271f) - var_1.c.x)))), global1[_wgslsmith_index_u32(1u, 19u)]);
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, 617f, var_1.c.x, -843f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(-602f, var_1.c.x, var_0.x, 1000f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(756f, -851f, global2.c.c.x, global2.b.x) + vec4<f32>(530f, 971f, var_0.x, 1141f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1160f, var_1.c.x, 485f, 1196f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1223f, var_1.c.x, -1000f, var_1.c.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -536f, var_1.c.x, 2434f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.c.x, -1225f, -1000f, -149f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(601f, -343f, 2202f, -307f))))));
    return vec4<u32>(countOneBits(~(~global2.c.d)), ~0u, firstLeadingBit(4294967295u), 29147u);
}

fn func_1() -> i32 {
    let var_0 = ~_wgslsmith_div_u32(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 4469u, 1516u), vec4<u32>(u_input.c, u_input.c, 42994u, global2.c.d))), ~global2.a);
    global0 = array<vec3<i32>, 16>();
    let var_1 = vec2<bool>(global2.c.b.x, true);
    var var_2 = func_2();
    var var_3 = Struct_2(min(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(var_2.wz, vec2<u32>(87238u, var_0)), max(u_input.a.yy, ~var_2.wz)), ~_wgslsmith_dot_vec3_u32(u_input.a, var_2.wzw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(f32(-1f) * -349f), _wgslsmith_f_op_f32(-global2.c.c.x))), global2.c);
    return var_3.c.a;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> f32 {
    var var_0 = _wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(49707u, 16u)], _wgslsmith_mod_vec3_i32(abs(select(select(global0[_wgslsmith_index_u32(global2.c.d, 16u)], global0[_wgslsmith_index_u32(1u, 16u)], vec3<bool>(true, true, false)), vec3<i32>(12514i, u_input.d, 31538i), global2.c.c.x < global2.b.x)), vec3<i32>(arg_1, firstLeadingBit(u_input.e), global2.c.a)));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-2075f + 554f), -312f)) - global2.c.c.x) - 1854f) + _wgslsmith_f_op_f32(global2.b.x * global2.c.c.x));
    let var_2 = _wgslsmith_clamp_u32(0u, u_input.a.x, ~(~(~36482u) >> (global2.c.d % 32u)));
    let var_3 = global2.c.b.x;
    global2 = Struct_2(max(~(~u_input.c), ~u_input.a.x), global2.c.c, global2.c);
    return -732f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 16>();
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(vec2<i32>(u_input.b.x, ~global2.c.a << ((global2.c.d >> (global2.a % 32u)) % 32u)), _wgslsmith_div_i32(_wgslsmith_sub_i32(_wgslsmith_mod_i32(u_input.e, -2147483647i), ~u_input.d), func_1()))), -1161f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global2.b.x)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1070f, -1445f) + -1495f)))), global2.b.x);
    let var_1 = select(_wgslsmith_mod_vec4_u32(vec4<u32>(~1u | global2.a, global2.a, ~abs(41615u), ~52963u >> (_wgslsmith_clamp_u32(1u, 31903u, 4294967295u) % 32u)), vec4<u32>(global2.c.d, countOneBits(global2.a) << ((80173u << (1u % 32u)) % 32u), 10042u >> (~u_input.c % 32u), _wgslsmith_clamp_u32(1u, ~10700u, global2.a))), abs(vec4<u32>(~global2.a, 16283u, _wgslsmith_dot_vec4_u32(vec4<u32>(26158u, 48229u, u_input.c, global2.c.d), vec4<u32>(global2.c.d, 0u, u_input.a.x, 16453u)), _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))) << (~max(_wgslsmith_clamp_vec4_u32(vec4<u32>(17055u, 68898u, 81000u, global2.c.d), vec4<u32>(7417u, u_input.c, global2.c.d, 1u), vec4<u32>(global2.a, global2.c.d, global2.c.d, 0u)), ~vec4<u32>(55994u, 6805u, 15353u, 4294967295u)) % vec4<u32>(32u)), !vec4<bool>(global2.c.b.x, _wgslsmith_div_i32(u_input.e, 0i) != (i32(-1i) * -2147483647i), global2.c.b.x, true));
    var var_2 = vec4<u32>(min(4294967295u, _wgslsmith_dot_vec4_u32(reverseBits(countOneBits(vec4<u32>(u_input.c, var_1.x, 85569u, 1u))), (var_1 & vec4<u32>(1u, 1u, 0u, u_input.c)) << (var_1 % vec4<u32>(32u)))), var_1.x, ~(~var_1.x), 4294967295u);
    global1 = array<Struct_1, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(~(~(~vec4<i32>(global2.c.a, 2490i, 18725i, u_input.b.x))), vec4<i32>(u_input.d, 1999i, max(global2.c.a, _wgslsmith_div_i32(-69114i, global2.c.a)), _wgslsmith_dot_vec2_i32(vec2<i32>(global2.c.a, -2147483647i) << (var_2.yz % vec2<u32>(32u)), ~vec2<i32>(-18221i, -2147483647i)))), global2.b.x);
}

