struct Struct_1 {
    a: u32,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: bool,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(391f, -177f));

var<private> global2: array<bool, 11>;

var<private> global3: bool;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> i32 {
    global1 = arg_0.e;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, 714f, 1077f))), _wgslsmith_f_op_vec4_f32(exp2(arg_1.c)))));
    global0 = array<vec4<f32>, 15>();
    global1 = Struct_2(vec2<f32>(var_0.x, var_0.x));
    let var_1 = min(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-42750i, arg_3, 18888i, arg_0.a), min(vec4<i32>(-26407i, arg_3, 54595i, arg_0.a), vec4<i32>(-26537i, arg_0.a, 3569i, arg_0.a))) << (_wgslsmith_add_vec4_u32(u_input.b, ~vec4<u32>(u_input.b.x, 4294967295u, 0u, 48681u)) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_3, arg_0.a, 60249i, -58976i), vec4<i32>(2147483647i, arg_0.a, arg_0.a, 49909i), vec4<i32>(arg_3, 0i, 0i, arg_3)), abs(vec4<i32>(arg_0.a, arg_3, 2147483647i, arg_0.a)) & _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, arg_0.a, -2147483647i, arg_3), vec4<i32>(-2147483647i, arg_0.a, arg_3, 27139i)))), -vec4<i32>(arg_0.a, 42129i, _wgslsmith_clamp_i32(1i, arg_3, arg_3) | select(arg_0.a, 0i, global2[_wgslsmith_index_u32(0u, 11u)]), 0i));
    return -_wgslsmith_dot_vec2_i32(select(var_1.zz, ~vec2<i32>(arg_3, 40863i), vec2<bool>(arg_0.d, global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.a.x), 11u)])), firstTrailingBit(-vec2<i32>(0i, 2147483647i) >> (firstLeadingBit(arg_0.b.xy) % vec2<u32>(32u))));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: Struct_2, arg_3: vec3<u32>) -> vec4<bool> {
    let var_0 = arg_2;
    let var_1 = Struct_1(u_input.b.x, _wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global0[_wgslsmith_index_u32(abs(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(arg_3.x, arg_3.x, 18144u, u_input.a.x))), 15u)]))));
    global1 = var_0;
    var var_2 = var_1;
    var_2 = var_1;
    return vec4<bool>(global2[_wgslsmith_index_u32(var_1.a, 11u)], global2[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(var_2.a), 4294967295u), 11u)], any(vec3<bool>(global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_3.x, var_1.a), vec3<u32>(1u, arg_3.x, 70024u))), 11u)], true, arg_1.x < func_3(Struct_3(arg_1.x, arg_3, arg_3.x, global2[_wgslsmith_index_u32(var_1.a, 11u)], arg_2), Struct_1(4294967295u, 1947f, var_1.c), var_0.a.x, arg_1.x))), !all(select(vec4<bool>(global2[_wgslsmith_index_u32(var_1.a, 11u)], global2[_wgslsmith_index_u32(1u, 11u)], false, global2[_wgslsmith_index_u32(var_1.a, 11u)]), !vec4<bool>(global2[_wgslsmith_index_u32(25793u, 11u)], false, global2[_wgslsmith_index_u32(4294967295u, 11u)], global2[_wgslsmith_index_u32(48278u, 11u)]), true)));
}

fn func_1(arg_0: f32) -> vec4<i32> {
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + -286f)) - global1.a));
    let var_1 = vec3<bool>(select(!(u_input.b.x == u_input.a.x), !all(func_2(vec3<f32>(global1.a.x, 1000f, global1.a.x), vec3<i32>(2147483647i, -8351i, 0i), Struct_2(vec2<f32>(-102f, 708f)), u_input.b.wyz)), any(!vec2<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], global2[_wgslsmith_index_u32(22262u, 11u)])) && false), !func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, global1.a.x)), vec3<f32>(-1189f, 1548f, arg_0)), select(~vec3<i32>(2147483647i, -2147483647i, -27402i), vec3<i32>(-7448i, -26857i, 0i), true), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_0.a.x) + vec2<f32>(-2472f, arg_0))), abs(u_input.b.zxz)).x, false);
    var var_2 = _wgslsmith_mult_vec3_u32(max(u_input.b.wzx | _wgslsmith_div_vec3_u32(u_input.b.wyz, vec3<u32>(1u, 4294967295u, 4294967295u)), vec3<u32>(u_input.b.x | 1u, 72412u, u_input.b.x << (u_input.a.x % 32u))), _wgslsmith_div_vec3_u32(abs(_wgslsmith_mod_vec3_u32(u_input.b.yyx, u_input.b.zwy)), u_input.b.yxz)) ^ vec3<u32>(~0u, select(2224u, 0u, false), ~firstLeadingBit(~u_input.b.x));
    let var_3 = Struct_4(~_wgslsmith_clamp_vec3_i32(select(vec3<i32>(1i, 2147483647i, -2147483647i), vec3<i32>(-35802i, -1i, 1i), vec3<bool>(true, global2[_wgslsmith_index_u32(22190u, 11u)], true)), vec3<i32>(2147483647i, 1i, 10463i) << (vec3<u32>(4294967295u, 56602u, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(1i, 1i, 1i)) ^ -(~reverseBits(vec3<i32>(2147483647i, 11624i, -14722i))));
    return select(-(~vec4<i32>(-10853i, var_3.a.x, select(-41916i, var_3.a.x, true), _wgslsmith_clamp_i32(var_3.a.x, var_3.a.x, -31509i))), vec4<i32>(0i, 0i ^ _wgslsmith_div_i32(var_3.a.x, ~var_3.a.x), ~(~_wgslsmith_sub_i32(-13890i, 0i)), abs(firstLeadingBit(var_3.a.x))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)) < -1000f, (max(var_3.a.x, var_3.a.x) >> (~44516u % 32u)) != countOneBits(i32(-1i) * -2147483647i), select(all(!var_1), any(!var_1), any(!vec4<bool>(global2[_wgslsmith_index_u32(50081u, 11u)], var_1.x, var_1.x, true))), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~min(_wgslsmith_sub_vec2_u32(~u_input.a | ~u_input.a, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, 71034u), vec2<u32>(4294967295u, 40804u))), vec2<u32>(~u_input.a.x | ~u_input.b.x, _wgslsmith_mult_u32(firstLeadingBit(u_input.a.x), 7204u ^ u_input.a.x)));
    let var_1 = _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(~_wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, -2147483647i, -30818i) >> (vec4<u32>(var_0.x, var_0.x, var_0.x, 35556u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, -1i, 41894i, -34075i)), _wgslsmith_mod_vec4_i32(func_1(global1.a.x), reverseBits(vec4<i32>(0i, -37713i, 2147483647i, 26131i))) | vec4<i32>(-12171i, func_3(Struct_3(34126i, u_input.b.wxx, u_input.b.x, false, Struct_2(global1.a)), Struct_1(31585u, global1.a.x, vec4<f32>(-147f, 387f, -448f, -240f)), global1.a.x, 11800i), abs(-1i), -43592i << (var_0.x % 32u))), ~select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(-7418i, 0i, -40028i, -2147483647i) << (vec4<u32>(var_0.x, 11184u, 4294967295u, var_0.x) % vec4<u32>(32u)), vec4<bool>(false, global2[_wgslsmith_index_u32(var_0.x, 11u)], false, global2[_wgslsmith_index_u32(var_0.x, 11u)])) & firstTrailingBit(-vec4<i32>(50636i, -1i, 1i, -1i)));
    var_0 = select(u_input.b.zz, _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.b.zz, u_input.a), _wgslsmith_sub_vec2_u32(abs(u_input.b.wy | u_input.a), vec2<u32>(u_input.a.x, _wgslsmith_clamp_u32(var_0.x, 8148u, var_0.x)))), vec2<bool>(false, func_2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(265f, 248f, global1.a.x)))), -(vec3<i32>(-2147483647i, var_1, -1234i) | vec3<i32>(var_1, var_1, -42140i)), Struct_2(global1.a), u_input.b.xwx).x));
    var var_2 = global1.a.x;
    var var_3 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-global1.a), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.x)) - _wgslsmith_f_op_f32(global1.a.x + global1.a.x)), 437f))), global1.a, true));
    var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) - _wgslsmith_f_op_f32(min(global1.a.x, 612f)))))), global1.a.x, !all(vec4<bool>(false, select(true, global2[_wgslsmith_index_u32(1u, 11u)], false), global2[_wgslsmith_index_u32(u_input.a.x, 11u)], true))));
    var var_4 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1088f), 1350f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_3.x)) * 1085f));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global1.a, global1.a)))))), max(~_wgslsmith_add_u32(25422u, var_0.x), _wgslsmith_div_u32(~40642u, 2464u)), -2147483647i, var_1, vec2<i32>(abs(abs(var_1)), _wgslsmith_mod_i32(reverseBits(var_1), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, var_1, 0i), vec3<i32>(0i, 15072i, -1i)))) | ((vec2<i32>(var_1, var_1) >> (u_input.b.xz % vec2<u32>(32u))) & -(~vec2<i32>(var_1, var_1))));
}

