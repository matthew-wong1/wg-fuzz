struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec2<bool>,
    d: bool,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_1) -> vec2<bool> {
    let var_0 = Struct_1(any(!(!(!vec4<bool>(arg_1.c.x, true, arg_1.c.x, false)))), select(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(abs(vec2<i32>(arg_1.b.x, u_input.a)), _wgslsmith_add_vec2_i32(arg_1.b, arg_1.b)), vec2<i32>(1i, 26542i)), _wgslsmith_sub_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_1.b, vec2<i32>(u_input.a, 40013i), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(arg_1.b.x, -22243i)), abs(arg_1.b & vec2<i32>(0i, u_input.a))), arg_1.c), select(!vec2<bool>(!arg_1.c.x, arg_1.e == -1000f), vec2<bool>(select(true, all(arg_1.c), arg_1.c.x), arg_1.c.x), !(!arg_1.c.x)), !arg_1.d, _wgslsmith_f_op_f32(arg_1.e * _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.e, _wgslsmith_f_op_f32(-arg_1.e)) + _wgslsmith_f_op_f32(arg_1.e - arg_1.e))));
    var var_1 = 1i;
    let var_2 = Struct_1(true || arg_1.c.x, _wgslsmith_mult_vec2_i32(max(vec2<i32>(u_input.a, ~(-2147483647i)), select(firstLeadingBit(var_0.b), ~var_0.b, vec2<bool>(arg_1.a, false))), arg_1.b), vec2<bool>(true, select(false != arg_1.d, select(select(var_0.d, false, false), !var_0.d, var_0.e != var_0.e), false)), false, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-543f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.e * -479f)))))));
    var var_3 = var_2.e == 1268f;
    let var_4 = arg_1;
    return vec2<bool>(-_wgslsmith_add_i32(~1i, _wgslsmith_sub_i32(var_0.b.x, -40198i)) < firstTrailingBit(var_0.b.x), arg_1.d);
}

fn func_2() -> bool {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2040f));
    let var_1 = 29804u;
    let var_2 = -(~(-vec2<i32>(17544i, -1i) >> ((_wgslsmith_sub_vec2_u32(u_input.c.zx, u_input.c.zx) >> (~vec2<u32>(var_1, var_1) % vec2<u32>(32u))) % vec2<u32>(32u))));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(363f, 153f), 2102f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-914f + 1056f)) - 712f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1307f)))));
    let var_4 = Struct_1(!((-1i & _wgslsmith_div_i32(u_input.a, u_input.a)) == 29928i), vec2<i32>(-1i) * -vec2<i32>(u_input.a, var_2.x), select(!select(select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), func_3(vec4<u32>(0u, var_1, var_1, u_input.b) | vec4<u32>(u_input.d, 1u, 69691u, 0u), Struct_1(true, var_2, vec2<bool>(true, false), true, -1165f)), func_3(u_input.c >> (u_input.c % vec4<u32>(32u)), Struct_1(false, var_2, vec2<bool>(false, true), true, 952f))), vec2<bool>(all(vec4<bool>(false, false, false, true)) && true, var_2.x >= -43014i)), 1u < ~_wgslsmith_dot_vec3_u32(~u_input.c.xxy, vec3<u32>(4294967295u, u_input.d, u_input.c.x)), _wgslsmith_f_op_f32(-var_3));
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(any(vec3<bool>(select(true, true, true), true, false)), vec2<i32>(u_input.a, abs(u_input.a)), vec2<bool>(true, !func_2()), true & (any(vec2<bool>(false, false)) || any(vec2<bool>(true, true))), 1000f);
    var var_1 = ~firstTrailingBit(vec3<i32>(-(i32(-1i) * -21147i), _wgslsmith_mod_i32(1i, u_input.a), _wgslsmith_add_i32(max(1i, 0i), -3191i)));
    return Struct_1(true, vec2<i32>(-(~(~(-31018i))), var_0.b.x ^ var_0.b.x), vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.e - var_0.e) + var_0.e) >= -588f, var_0.c.x), var_0.d & true, var_0.e);
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_1) -> bool {
    var var_0 = abs(0i);
    var var_1 = Struct_1(arg_1.c.x, arg_1.b, vec2<bool>(func_2(), select(select(func_2(), arg_1.b.x <= 2147483647i, u_input.a <= arg_1.b.x), _wgslsmith_f_op_f32(-arg_1.e) >= _wgslsmith_f_op_f32(-arg_1.e), arg_1.c.x)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i) * -arg_1.b, max(vec2<i32>(arg_1.b.x, 1i), vec2<i32>(6389i, 0i) & arg_1.b)) <= _wgslsmith_mult_i32(-u_input.a, -33377i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-621f)))) * -1000f));
    let var_2 = vec4<bool>(true, ~(~_wgslsmith_mult_u32(arg_0.x, 99562u)) < (_wgslsmith_dot_vec2_u32(abs(u_input.c.xz), abs(vec2<u32>(arg_0.x, arg_0.x))) | 16126u), true & arg_1.d, !arg_1.a);
    let var_3 = -1000f;
    var var_4 = func_1();
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(func_4(vec3<u32>(~u_input.b, u_input.b, u_input.b & 4294967295u) << (u_input.c.xxy % vec3<u32>(32u)), func_1()), true, true);
    var var_1 = _wgslsmith_mult_vec2_u32(vec2<u32>(firstLeadingBit(firstLeadingBit(1u)), 0u), firstLeadingBit(vec2<u32>(~0u, reverseBits(_wgslsmith_sub_u32(u_input.b, 4294967295u)))));
    let var_2 = Struct_1(true, _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, ~u_input.a) << ((vec2<u32>(u_input.d, 1u) >> (~u_input.c.xx % vec2<u32>(32u))) % vec2<u32>(32u)), vec2<i32>(min(-10391i, u_input.a), -select(u_input.a, u_input.a, true))), !var_0.yx, !(!var_0.x || any(vec2<bool>(var_0.x, false))), _wgslsmith_f_op_f32(f32(-1f) * -124f));
    var var_3 = func_1();
    var_3 = var_2;
    var var_4 = 61633u;
    var_1 = ~u_input.c.zy;
    let x = u_input.a;
    s_output = StorageBuffer(-(~_wgslsmith_mod_vec3_i32(vec3<i32>(var_3.b.x, var_3.b.x, var_2.b.x), vec3<i32>(0i, 2147483647i, -1i))));
}

