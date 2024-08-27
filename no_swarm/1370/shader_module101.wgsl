struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: i32,
}

struct Struct_4 {
    a: i32,
    b: Struct_3,
    c: i32,
    d: f32,
}

struct Struct_5 {
    a: u32,
    b: bool,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 31>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(all(vec4<bool>(true, true, true, true)), -117f, ~min(_wgslsmith_div_u32(43124u, 1u) & (52160u | u_input.d.x), _wgslsmith_dot_vec2_u32(~u_input.d, vec2<u32>(0u, 30703u) >> (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u)))), _wgslsmith_f_op_f32(f32(-1f) * -969f), vec3<i32>(22120i, u_input.b, countOneBits(abs(23118i))) | _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, u_input.a, u_input.b), vec3<i32>(u_input.b, -1i, u_input.c)), -u_input.a, -22190i), ~select(vec3<i32>(16356i, u_input.c, -1i), vec3<i32>(5732i, u_input.b, u_input.a), true)));
    global0 = array<u32, 31>();
    var var_1 = Struct_4(u_input.a, Struct_3(Struct_1(~u_input.a > u_input.b, _wgslsmith_f_op_f32(-var_0.d), 6094u, _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-408f, 2385f), _wgslsmith_div_f32(var_0.d, -523f))), var_0.e), ~u_input.c, u_input.b), u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d * _wgslsmith_f_op_f32(-321f * var_0.d)) * var_0.b))));
    var_1 = Struct_4(var_1.a, Struct_3(var_1.b.a, firstLeadingBit(abs(_wgslsmith_mult_i32(1i, var_1.b.c))), -_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, var_0.e.x), var_0.e.xx << (vec2<u32>(var_1.b.a.c, 0u) % vec2<u32>(32u)))), countOneBits(-50402i | _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, -46171i, 1i, var_1.c), vec4<i32>(var_0.e.x, u_input.b, 2147483647i, var_1.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, -1i, -56968i), vec3<i32>(var_0.e.x, var_1.c, var_1.b.c)))), _wgslsmith_f_op_f32(-1701f * -406f));
    let var_2 = select(select(!select(vec2<bool>(true, true), vec2<bool>(false, false), !vec2<bool>(var_0.a, true)), vec2<bool>(select(any(vec4<bool>(var_1.b.a.a, false, false, var_1.b.a.a)), var_0.c <= 13084u, var_0.a), true), all(!vec3<bool>(var_1.b.a.a, false, false))), select(!select(!vec2<bool>(false, var_1.b.a.a), !vec2<bool>(var_1.b.a.a, var_1.b.a.a), vec2<bool>(true, true)), !vec2<bool>(!var_1.b.a.a, true), select(select(!vec2<bool>(true, var_1.b.a.a), vec2<bool>(true, var_1.b.a.a), var_0.a == false), !vec2<bool>(true, var_0.a), var_0.a)), select(select(vec2<bool>(any(vec4<bool>(true, false, var_0.a, true)), select(var_1.b.a.a, var_0.a, false)), !(!vec2<bool>(false, var_1.b.a.a)), true), select(vec2<bool>(33665u <= u_input.d.x, all(vec2<bool>(var_0.a, var_1.b.a.a))), select(select(vec2<bool>(var_1.b.a.a, var_0.a), vec2<bool>(var_1.b.a.a, var_1.b.a.a), vec2<bool>(false, var_0.a)), !vec2<bool>(false, var_0.a), var_1.b.a.a), !vec2<bool>(true, var_1.b.a.a)), true));
    return _wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) + _wgslsmith_f_op_f32(228f - var_0.d))))));
}

fn func_2(arg_0: f32) -> Struct_2 {
    var var_0 = ~(-(~select(vec4<i32>(u_input.c, u_input.a, 2147483647i, u_input.c), max(vec4<i32>(u_input.c, 2147483647i, 2147483647i, u_input.a), vec4<i32>(-29045i, -2147483647i, -1844i, u_input.b)), true)));
    var var_1 = 17944u;
    global0 = array<u32, 31>();
    let var_2 = Struct_2(vec2<f32>(_wgslsmith_f_op_f32(arg_0 - 1f), arg_0), ~reverseBits(~59106u), Struct_1(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), arg_0, _wgslsmith_sub_u32(~(~global0[_wgslsmith_index_u32(1u, 31u)]), u_input.d.x), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(abs(arg_0))))), -(~vec3<i32>(63807i, var_0.x, 49681i))));
    let var_3 = Struct_5(~(~u_input.d.x), !(!any(select(vec2<bool>(var_2.c.a, var_2.c.a), vec2<bool>(var_2.c.a, true), var_2.c.a))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, var_2.a.x) + var_2.a) - vec2<f32>(var_2.c.b, _wgslsmith_f_op_f32(func_3()))), Struct_1(var_2.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), ~(u_input.d.x | (global0[_wgslsmith_index_u32(0u, 31u)] >> (u_input.d.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.c.d * -672f)), ~select(var_2.c.e, vec3<i32>(-2147483647i, -23805i, var_0.x), var_2.c.a)));
    return Struct_2(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.d.b, arg_0)) + var_2.a))), firstLeadingBit(4294967295u), var_3.d);
}

fn func_1(arg_0: f32) -> i32 {
    var var_0 = vec2<i32>(u_input.a, _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, u_input.a) & vec2<i32>(-2147483647i, -33108i), ~_wgslsmith_div_vec2_i32(vec2<i32>(u_input.c, -17633i), vec2<i32>(u_input.b, 1i)))) >> (vec2<u32>(~reverseBits(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], 31u)] << (4294967295u % 32u)), ~(~0u) | abs(u_input.d.x)) % vec2<u32>(32u));
    let var_1 = func_2(arg_0);
    let var_2 = func_2(_wgslsmith_f_op_f32(-var_1.a.x));
    var_0 = vec2<i32>(~(-_wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.x, var_1.c.e.x, u_input.b), vec3<i32>(-75436i, 0i, -2147483647i)), 7633i)), -firstLeadingBit(firstLeadingBit(min(var_2.c.e.x, var_2.c.e.x))));
    let var_3 = var_1.c;
    return -3977i;
}

fn func_4(arg_0: vec2<i32>, arg_1: u32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.a.d, arg_2.a.b, 1079f, arg_2.a.b))), vec4<f32>(arg_2.a.b, arg_2.a.b, _wgslsmith_div_f32(-1047f, 138f), -898f), false)))));
    var var_1 = -vec3<i32>(_wgslsmith_mult_i32(i32(-1i) * -arg_0.x, u_input.c), -_wgslsmith_dot_vec2_i32(~arg_2.a.e.yy, select(arg_2.a.e.xx, vec2<i32>(u_input.a, 1i), true)), ~arg_2.b);
    let var_2 = false;
    global0 = array<u32, 31>();
    let var_3 = -17064i;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.d.x;
    var_0 = 34043u;
    var var_1 = func_4(-vec2<i32>(0i, _wgslsmith_sub_i32(firstLeadingBit(u_input.b), _wgslsmith_mult_i32(u_input.b, 8895i))), ~(~firstLeadingBit(107709u)), Struct_3(Struct_1(true, -1175f, 4294967295u, _wgslsmith_f_op_f32(f32(-1f) * -1166f), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.b, u_input.a, u_input.a), reverseBits(vec3<i32>(u_input.a, u_input.c, -16144i)))), 71736i & _wgslsmith_sub_i32(0i, -u_input.b), func_1(_wgslsmith_f_op_f32(sign(-1470f))) << (0u % 32u)));
    var var_2 = vec3<bool>(any(!(!vec2<bool>(var_1.a.a, var_1.a.a))), !var_1.a.a, true);
    var_1 = Struct_3(var_1.a, ~(-12582i), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, vec4<u32>(max(~global0[_wgslsmith_index_u32(1u >> (0u % 32u), 31u)], ~(~50357u)), _wgslsmith_add_u32(global0[_wgslsmith_index_u32(u_input.d.x, 31u)], u_input.d.x), u_input.d.x, abs(~func_4(var_1.a.e.yy, u_input.d.x, Struct_3(var_1.a, u_input.c, -1i)).a.c)), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(func_4(vec2<i32>(u_input.c, u_input.a), 18270u, Struct_3(var_1.a, u_input.b, u_input.a)).b, _wgslsmith_div_i32(3584i, u_input.a)), func_4(_wgslsmith_div_vec2_i32(var_1.a.e.zx, var_1.a.e.xx), 68456u, Struct_3(Struct_1(true, var_1.a.b, 12763u, 1269f, vec3<i32>(var_1.a.e.x, 0i, 15700i)), 2147483647i, u_input.a)).a.e.x), ~firstTrailingBit(vec2<i32>(-55263i, 2147483647i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a.d)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(248f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - var_1.a.b));
}

