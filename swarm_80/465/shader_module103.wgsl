struct Struct_1 {
    a: u32,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec3<u32>,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 9>;

var<private> global1: vec2<f32> = vec2<f32>(-321f, -1651f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4) -> vec3<u32> {
    var var_0 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -369f)), 1f, ~vec3<u32>(u_input.a.x, u_input.a.x, firstTrailingBit(~u_input.a.x)), vec4<i32>(40581i, ~(~(-1i)), _wgslsmith_sub_i32(~(-1i), _wgslsmith_dot_vec3_i32(vec3<i32>(-25684i, -7695i, -38292i), vec3<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], -49986i, global0[_wgslsmith_index_u32(4985u, 9u)]))) >> (u_input.a.x % 32u), countOneBits(arg_0.a)));
    let var_1 = select(select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(global0[_wgslsmith_index_u32(96607u, 9u)] >= 1i, true, true)), select(select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, false), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) != _wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(-global1.x))), select(vec3<bool>(true, any(vec4<bool>(true, true, true, true)), select(true, all(vec2<bool>(true, false)), false)), vec3<bool>(!any(vec2<bool>(false, true)), any(vec4<bool>(false, true, false, true)), false), vec3<bool>(all(vec3<bool>(true, true, false)), !(0i >= var_0.d.x), true)), true);
    var var_2 = Struct_1(_wgslsmith_mult_u32(25707u, var_0.c.x & select(1u, firstLeadingBit(u_input.a.x), var_1.x)), select(var_1.yy, var_1.zx, vec2<bool>(var_1.x, var_1.x)));
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-235f - 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, global1.x))), false)) - _wgslsmith_f_op_f32(step(global1.x, var_0.a))), _wgslsmith_f_op_f32(-464f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.b, -949f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(899f)) - _wgslsmith_f_op_f32(var_0.a - 1000f)))), _wgslsmith_f_op_f32(-475f + _wgslsmith_f_op_f32(min(2719f, global1.x))), global1.x);
    let var_4 = var_1.yx;
    return ~(~u_input.a);
}

fn func_2(arg_0: f32) -> f32 {
    var var_0 = Struct_3(_wgslsmith_sub_vec3_i32(select(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-12237i, -16234i, global0[_wgslsmith_index_u32(6439u, 9u)]), vec3<i32>(26057i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 43123i)), -vec3<i32>(global0[_wgslsmith_index_u32(72122u, 9u)], global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)])), ~select(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -73661i, global0[_wgslsmith_index_u32(59643u, 9u)]), vec3<i32>(-1i, -18802i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), any(vec2<bool>(false, true)))), max(-_wgslsmith_sub_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 1i), vec3<i32>(4225i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 1i)), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 79838i, 2147483647i) >> (func_3(Struct_4(global0[_wgslsmith_index_u32(0u, 9u)])) % vec3<u32>(32u)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1949f, arg_0) + vec2<f32>(arg_0, global1.x)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_0, 863f)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-635f, -220f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, 1000f) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.x, arg_0), vec2<f32>(123f, -1000f)))))), Struct_2(~24559u, !(select(false, true, true) & all(vec4<bool>(true, true, false, true))), Struct_1(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.xy), select(select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, true), vec2<bool>(false, true), true), true)), 1431f, Struct_1(reverseBits(~u_input.a.x), select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false)))));
    var var_1 = arg_0;
    var_0 = Struct_3(_wgslsmith_mod_vec3_i32(vec3<i32>(-_wgslsmith_dot_vec2_i32(var_0.a.yy, vec2<i32>(62203i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)])), ~(-1i), abs(~12494i)), vec3<i32>(countOneBits(var_0.a.x), _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(7361u, 9u)], -54642i), 30699i) | select(reverseBits(vec3<i32>(0i, -1i, -1i)), ~vec3<i32>(var_0.a.x, global0[_wgslsmith_index_u32(52610u, 9u)], -43292i), select(true, var_0.c.e.b.x, var_0.c.e.b.x))), _wgslsmith_f_op_vec2_f32(-var_0.b), var_0.c);
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.x, -1227f))), _wgslsmith_f_op_vec2_f32(abs(var_0.b)))));
    let var_2 = vec3<bool>(all(vec3<bool>(true, true, var_0.c.c.b.x)), !(~0u >= (reverseBits(4294967295u) | func_3(Struct_4(2147483647i)).x)), (true | (var_0.c.c.b.x || true)) & any(vec2<bool>(any(vec3<bool>(true, var_0.c.e.b.x, false)), !var_0.c.e.b.x)));
    return 499f;
}

fn func_1() -> Struct_4 {
    global0 = array<i32, 9>();
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2789f, -1925f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 117f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1067f, 1746f)) - vec2<f32>(-2539f, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(585f + global1.x))))));
    var var_0 = _wgslsmith_dot_vec2_u32(firstTrailingBit(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.yx, _wgslsmith_mod_vec2_u32(u_input.a.xx, u_input.a.yy))) ^ u_input.a.yx, _wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(u_input.a.yy, u_input.a.xz), u_input.a.yx));
    var var_1 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-570f - _wgslsmith_f_op_f32(select(global1.x, 232f, false)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1029f)), ~((u_input.a & vec3<u32>(9795u, u_input.a.x, u_input.a.x)) & ~_wgslsmith_mult_vec3_u32(u_input.a, vec3<u32>(u_input.a.x, u_input.a.x, 4294967295u))), vec4<i32>(25894i, firstTrailingBit(2147483647i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]) | select(global0[_wgslsmith_index_u32(22232u, 9u)], 2147483647i, false), _wgslsmith_dot_vec4_i32(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], 2147483647i, -1i)), vec4<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(4294967295u, 9u)], 2787i, global0[_wgslsmith_index_u32(4294967295u, 9u)]))), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -2147483647i, global0[_wgslsmith_index_u32(1u, 9u)]), select(vec3<i32>(40482i, -61599i, 2147483647i), vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -4562i, 29791i), true)), global0[_wgslsmith_index_u32(25050u, 9u)])));
    var var_2 = Struct_4(-60786i);
    return Struct_4(32884i);
}

fn func_4(arg_0: Struct_4, arg_1: vec4<f32>) -> bool {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.yz - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(arg_1.zw, _wgslsmith_f_op_vec2_f32(select(arg_1.yx, arg_1.wy, vec2<bool>(false, true)))) * arg_1.xz)) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(arg_1.xz - arg_1.yy))))), arg_1.zz));
    let var_0 = arg_1;
    let var_1 = ~select(u_input.a.x, u_input.a.x, any(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(false, false, false))));
    var var_2 = Struct_1(1u, vec2<bool>(false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), any(vec4<bool>(false, true, false, true))))));
    var var_3 = Struct_2(_wgslsmith_mult_u32(32538u, var_2.a & ~abs(1u)), !(1000f == arg_1.x), Struct_1(~func_3(Struct_4(arg_0.a)).x ^ max(_wgslsmith_mult_u32(var_2.a, 93400u), u_input.a.x), vec2<bool>(var_2.b.x, false)), var_0.x, Struct_1(firstLeadingBit(~38964u) << (abs(35563u << (var_2.a % 32u)) % 32u), var_2.b));
    return all(!select(!vec2<bool>(var_2.b.x, var_2.b.x), vec2<bool>(true, false), !vec2<bool>(true, var_2.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!func_4(func_1(), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1035f), _wgslsmith_f_op_f32(global1.x + global1.x), _wgslsmith_f_op_f32(-global1.x), global1.x)));
    var var_1 = vec4<bool>(global0[_wgslsmith_index_u32(2875u | _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, 26544u)), 4294967295u), 9u)] > global0[_wgslsmith_index_u32(27607u, 9u)], select(true, !(!select(var_0, false, false)), true), ~_wgslsmith_dot_vec2_i32(-vec2<i32>(42537i, global0[_wgslsmith_index_u32(80498u, 9u)]), _wgslsmith_mult_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(31760u, 9u)]), vec2<i32>(-1i, 5297i))) < abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-51038i, global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -45606i, 1i), vec4<i32>(-2147483647i, global0[_wgslsmith_index_u32(0u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(1u, 9u)]))), false);
    var_1 = !select(vec4<bool>(all(vec4<bool>(var_0, var_1.x, true, var_1.x)), var_0, all(vec2<bool>(var_1.x, true)) && all(vec3<bool>(true, false, var_1.x)), !var_0 | select(true, var_1.x, false)), select(vec4<bool>(all(vec2<bool>(false, true)), any(var_1.xz), all(vec2<bool>(var_1.x, false)), true), !vec4<bool>(var_0, var_1.x, false, var_1.x), any(vec4<bool>(false, false, false, true)) != false), !select(select(vec4<bool>(false, false, true, var_0), vec4<bool>(var_1.x, var_1.x, true, true), vec4<bool>(true, false, false, true)), vec4<bool>(var_1.x, var_1.x, var_0, true), any(vec4<bool>(false, var_0, false, true))));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.x, _wgslsmith_f_op_f32(873f - global1.x), -282f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1369f, 707f, -1000f), vec3<f32>(-511f, -636f, 575f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-516f, global1.x, global1.x))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global1.x, 464f, 720f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1260f, -516f, -1786f) * vec3<f32>(663f, -865f, global1.x))))));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -837f, -1000f)) - _wgslsmith_f_op_vec4_f32(max(vec4<f32>(global1.x, 1175f, global1.x, 835f), vec4<f32>(global1.x, var_2.x, 1000f, 336f))))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_2.x - 572f), _wgslsmith_f_op_f32(-1000f * global1.x), _wgslsmith_f_op_f32(f32(-1f) * -765f), _wgslsmith_f_op_f32(abs(1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, var_2.x, -115f, -208f), vec4<f32>(global1.x, var_2.x, global1.x, var_2.x))))));
    global1 = var_3.wx;
    var var_4 = vec4<f32>(_wgslsmith_div_f32(var_2.x, 736f), _wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(var_3.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-570f)))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_3.x), global1.x)));
    let var_5 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-199f, var_4.x, var_4.x, var_4.x), vec4<f32>(-520f, 1416f, -347f, -767f)) - _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(vec4<f32>(-1009f, -1079f, 1456f, 392f), vec4<f32>(-770f, var_3.x, var_3.x, 1346f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-514f, var_3.x, var_4.x, global1.x)))))));
    global1 = _wgslsmith_f_op_vec2_f32(sign(var_3.yw));
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(i32(-1i) * -1i), u_input.a.x, 4294967295u, min(firstLeadingBit(reverseBits(vec4<u32>(u_input.a.x, 4294967295u, 0u, 0u))), ~(~vec4<u32>(29777u, u_input.a.x, u_input.a.x, 4294967295u))), u_input.a.x);
}

