struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: u32,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 31>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: bool) -> i32 {
    var var_0 = Struct_1(arg_0, ~countOneBits(u_input.a), false);
    let var_1 = ~vec3<i32>(u_input.d.x, -1i, 11909i);
    var var_2 = Struct_1(true, var_0.b, true);
    global0 = false;
    var var_3 = _wgslsmith_f_op_f32(min(1f, -1872f));
    return 0i;
}

fn func_2() -> i32 {
    let var_0 = Struct_1(!(func_3(true) != u_input.d.x), 1u, any(!select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, false), false), any(vec2<bool>(false, false)))));
    let var_1 = var_0;
    let var_2 = var_1.b;
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-297f * -1093f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -201f))), _wgslsmith_div_f32(1893f, -845f), 742f);
    var var_4 = var_1;
    return u_input.d.x;
}

fn func_1() -> u32 {
    var var_0 = Struct_1(any(!select(vec2<bool>(false, true), vec2<bool>(false, false), true)) || false, _wgslsmith_mod_u32(~u_input.a, 2288u), !(false && !any(vec4<bool>(false, false, true, true))));
    var var_1 = Struct_2(_wgslsmith_sub_i32(_wgslsmith_mult_i32(func_2(), u_input.d.x), ~reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(19178i, 1i, -2147483647i, u_input.d.x), vec4<i32>(-9212i, u_input.d.x, -1i, 1i)))), Struct_1(var_0.c, u_input.b ^ 3409u, false), _wgslsmith_mod_u32(firstLeadingBit(u_input.a), u_input.a), Struct_1(all(vec2<bool>(false, var_0.c)) | !var_0.a, 66492u, (u_input.d.x != _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, 0i), vec4<i32>(-22990i, u_input.d.x, u_input.d.x, u_input.d.x))) & !all(vec2<bool>(var_0.a, var_0.a))));
    var var_2 = var_1.b;
    global1 = array<Struct_2, 31>();
    let var_3 = any(select(select(!select(vec4<bool>(false, var_0.a, var_0.a, var_2.a), vec4<bool>(var_0.c, var_2.a, var_0.c, true), vec4<bool>(var_2.a, var_1.d.c, var_0.a, false)), vec4<bool>(var_2.c, var_1.b.a, all(vec3<bool>(var_0.c, true, var_0.a)), any(vec2<bool>(true, var_2.c))), vec4<bool>(true, true, true, 46952u < var_2.b)), vec4<bool>(any(vec2<bool>(var_2.a, false)), true, false, var_1.b.c), var_1.d.a));
    return 12634u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(0i, Struct_1((0u ^ (u_input.c ^ 0u)) == 2402u, 1u ^ countOneBits(_wgslsmith_mod_u32(4294967295u, u_input.a)), false), ~(~(~u_input.b)) ^ ~func_1(), Struct_1(all(select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, false))) && true, (u_input.b | select(u_input.a, u_input.a, true)) >> (_wgslsmith_clamp_u32(u_input.a, _wgslsmith_sub_u32(u_input.a, 0u), u_input.c) % 32u), select(false, _wgslsmith_f_op_f32(-1080f * 457f) > _wgslsmith_f_op_f32(round(234f)), all(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false))))));
    var var_1 = select(select(!(!vec4<bool>(var_0.b.c, false, false, var_0.d.a)), select(vec4<bool>(true, true, any(vec2<bool>(false, false)), true), select(select(vec4<bool>(true, false, false, false), vec4<bool>(false, var_0.d.c, true, true), true), vec4<bool>(false, false, false, var_0.d.a), true), vec4<bool>(any(vec2<bool>(var_0.b.c, var_0.b.a)), true, select(true, var_0.d.c, var_0.d.a), select(var_0.b.c, var_0.b.c, false))), select(!vec4<bool>(true, true, true, var_0.d.c), select(vec4<bool>(false, var_0.d.c, true, var_0.d.a), vec4<bool>(true, true, true, true), var_0.b.c), vec4<bool>(true, true, false, all(vec4<bool>(false, var_0.b.c, var_0.d.a, false))))), !select(select(!vec4<bool>(true, true, false, var_0.d.a), select(vec4<bool>(var_0.d.c, var_0.b.a, true, var_0.b.c), vec4<bool>(false, var_0.d.c, false, true), vec4<bool>(var_0.b.c, var_0.b.c, false, var_0.d.c)), true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, var_0.d.c, var_0.b.a), false), vec4<bool>(var_0.b.c, false, var_0.b.a, var_0.d.a), select(vec4<bool>(false, true, var_0.b.a, true), vec4<bool>(var_0.b.a, true, false, var_0.b.c), vec4<bool>(var_0.d.c, false, true, var_0.b.a))), true), !(any(vec3<bool>(var_0.d.c, var_0.d.a, true)) & all(vec2<bool>(true, true))));
    var var_2 = _wgslsmith_sub_vec2_i32(-(vec2<i32>(firstLeadingBit(u_input.d.x), var_0.a) & (~u_input.d.xz ^ _wgslsmith_mod_vec2_i32(u_input.d.xz, u_input.d.xx))), ~u_input.d.zy);
    var var_3 = vec3<i32>(_wgslsmith_mult_i32(var_2.x, i32(-1i) * -2147483647i) << (0u % 32u), var_2.x, _wgslsmith_add_i32(var_2.x, _wgslsmith_div_i32(var_2.x, -u_input.d.x))) ^ ~(-(countOneBits(u_input.d) & vec3<i32>(-10156i, u_input.d.x, u_input.d.x)));
    let var_4 = 1u;
    var_2 = -firstLeadingBit(_wgslsmith_clamp_vec2_i32(u_input.d.yz, _wgslsmith_add_vec2_i32(u_input.d.yx, vec2<i32>(-2147483647i, -24190i)), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, -2147483647i), vec2<i32>(u_input.d.x, 0i))) ^ u_input.d.yy);
    var var_5 = -(countOneBits(select(-vec4<i32>(u_input.d.x, -28749i, 4017i, -30226i), _wgslsmith_sub_vec4_i32(vec4<i32>(-2670i, 19410i, var_0.a, u_input.d.x), vec4<i32>(u_input.d.x, 22065i, -43020i, var_2.x)), !var_1.x)) | ((~vec4<i32>(var_2.x, 54473i, var_3.x, var_0.a) & _wgslsmith_mult_vec4_i32(vec4<i32>(var_3.x, 1i, var_0.a, var_2.x), vec4<i32>(-35113i, 1i, -2147483647i, var_2.x))) ^ (_wgslsmith_mod_vec4_i32(vec4<i32>(1i, var_3.x, 2147483647i, -23818i), vec4<i32>(var_3.x, 0i, -6556i, var_2.x)) | vec4<i32>(u_input.d.x, 2147483647i, -1i, u_input.d.x))));
    var_2 = _wgslsmith_add_vec2_i32(-vec2<i32>(-21842i >> (0u % 32u), min(max(1i, -2147483647i), _wgslsmith_mult_i32(-5099i, -58841i))), vec2<i32>(-1i) * -(vec2<i32>(-1i) * -vec2<i32>(-1i, var_5.x)));
    var var_6 = !(!((var_1.x && true) == true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(767f + _wgslsmith_f_op_f32(f32(-1f) * -536f)))));
}

