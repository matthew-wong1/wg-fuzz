struct Struct_1 {
    a: vec4<i32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: i32) -> bool {
    let var_0 = Struct_1(vec4<i32>(2147483647i, 1617i, firstLeadingBit(select(~2147483647i, u_input.c, true)), u_input.a), (abs(u_input.d) << (_wgslsmith_mult_u32(1u, firstTrailingBit(42707u)) % 32u)) < arg_0);
    var var_1 = false;
    global0 = vec3<bool>(global0.x, false, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(798f)))) < _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(530f, 1000f)) + -1000f))));
    var_1 = all(!(!select(!global0.zz, select(vec2<bool>(false, var_0.b), vec2<bool>(false, false), global0.zx), vec2<bool>(false, global0.x))));
    global0 = select(vec3<bool>(true, false, true), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(var_0.b, global0.x, true), false), any(vec3<bool>(var_0.b, var_0.b, global0.x))), !select(vec3<bool>(false, global0.x, false), vec3<bool>(true, global0.x, true), vec3<bool>(false, true, true)), all(!vec4<bool>(false, var_0.b, true, var_0.b))), global0.x);
    return var_0.b;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<u32>) -> bool {
    global0 = select(select(!(!select(vec3<bool>(arg_0.b, global0.x, true), vec3<bool>(arg_0.b, global0.x, false), false)), select(vec3<bool>(arg_0.a.x != -9996i, true, true), vec3<bool>(false, true, any(vec3<bool>(false, false, arg_0.b))), all(vec3<bool>(arg_0.b, arg_0.b, arg_0.b))), _wgslsmith_div_u32(abs(arg_1.x), ~27932u) <= 22457u), vec3<bool>(false, arg_0.b, true), vec3<bool>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.e.xwy, arg_0.a.zyz), -arg_0.a.x) >= -74928i, !(!global0.x && true), arg_0.b));
    let var_0 = arg_0;
    let var_1 = Struct_1(~u_input.e, arg_0.b);
    global0 = !vec3<bool>(false, !func_3(select(-920i, -11939i, false), _wgslsmith_dot_vec2_i32(vec2<i32>(-6063i, var_1.a.x), vec2<i32>(u_input.e.x, -58327i))), true);
    let var_2 = Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(-34355i >> (arg_1.x % 32u)), _wgslsmith_div_i32(select(17086i, arg_0.a.x, arg_0.b), max(-2147483647i, var_0.a.x)), _wgslsmith_dot_vec3_i32(~var_0.a.xzy, _wgslsmith_mult_vec3_i32(arg_0.a.yzx, var_0.a.xyz)), -_wgslsmith_mod_i32(-1i, arg_0.a.x)), vec4<i32>(0i, u_input.e.x, -36633i, 2147483647i)), false);
    return false;
}

fn func_1() -> Struct_1 {
    let var_0 = !func_2(Struct_1(vec4<i32>(1i, u_input.c >> (4294967295u % 32u), firstTrailingBit(-2147483647i), ~u_input.b), true), _wgslsmith_mult_vec2_u32(select(vec2<u32>(46877u, 48733u), vec2<u32>(33395u, 4294967295u), global0.yx), abs(~vec2<u32>(41681u, 1u))));
    global0 = !vec3<bool>(any(global0.yy), true, any(!select(vec3<bool>(global0.x, false, var_0), vec3<bool>(true, true, var_0), global0.x)));
    var var_1 = ~reverseBits(min(abs(max(u_input.e.wx, vec2<i32>(u_input.c, u_input.d))), reverseBits(u_input.e.zz) & _wgslsmith_clamp_vec2_i32(u_input.e.zy, u_input.e.xz, u_input.e.wz)));
    var var_2 = !(true && func_2(Struct_1(vec4<i32>(var_1.x, 2147483647i, -37231i, u_input.b), global0.x), vec2<u32>(22841u, 4294967295u))) && select(global0.x, any(!select(vec4<bool>(true, true, global0.x, false), vec4<bool>(false, true, true, global0.x), vec4<bool>(false, global0.x, global0.x, true))), -9717i == countOneBits(_wgslsmith_dot_vec4_i32(u_input.e, vec4<i32>(-15794i, var_1.x, 2147483647i, var_1.x))));
    let var_3 = Struct_2(vec4<u32>(reverseBits(firstLeadingBit(~0u)), 4294967295u, _wgslsmith_dot_vec3_u32(select(vec3<u32>(4294967295u, 0u, 7617u), vec3<u32>(4820u, 0u, 18863u), vec3<bool>(global0.x, global0.x, var_0)), vec3<u32>(1u, 1u, 1u)) << (1u % 32u), min(0u, min(_wgslsmith_dot_vec2_u32(vec2<u32>(16318u, 14918u), vec2<u32>(4294967295u, 4294967295u)), select(78251u, 68104u, global0.x)))), vec3<u32>(1u, 1u, 1u));
    return Struct_1(_wgslsmith_clamp_vec4_i32(vec4<i32>(-38426i, _wgslsmith_dot_vec3_i32(~u_input.e.wxz, vec3<i32>(var_1.x, var_1.x, u_input.c)), ~(i32(-1i) * -35644i), select(1i, ~2147483647i, true)), u_input.e, ~reverseBits(u_input.e ^ u_input.e)), all(select(!(!vec2<bool>(global0.x, var_0)), select(global0.yy, global0.yx, vec2<bool>(false, global0.x)), all(select(vec3<bool>(false, true, true), vec3<bool>(global0.x, var_0, global0.x), vec3<bool>(global0.x, var_0, var_0))))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<f32>) -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(_wgslsmith_clamp_i32(~(-2147483647i), _wgslsmith_sub_i32(-42635i, u_input.e.x), _wgslsmith_sub_i32(arg_0.a.x, u_input.b)), firstLeadingBit(firstLeadingBit(28823i))), u_input.d), ~arg_0.a.x);
    let var_1 = arg_0.a.x;
    global0 = !select(!vec3<bool>(true, global0.x && arg_0.b, true), select(vec3<bool>(true, true, false), vec3<bool>(false, any(vec4<bool>(true, arg_0.b, arg_0.b, false)), arg_1.b.x >= arg_1.b.x), any(select(vec2<bool>(global0.x, false), vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, false)))), select(vec3<bool>(true, global0.x, -818f >= arg_2.x), vec3<bool>(true, false, true), vec3<bool>(all(vec2<bool>(global0.x, global0.x)), false, global0.x)));
    global0 = select(!(!(!vec3<bool>(true, false, global0.x))), vec3<bool>(arg_0.b, global0.x != select(arg_0.b, arg_0.b, true), true), vec3<bool>(countOneBits(arg_0.a.x ^ -10824i) == ~_wgslsmith_mod_i32(0i, -76085i), global0.x & true, (!arg_0.b && true) && any(select(vec4<bool>(arg_0.b, global0.x, false, false), vec4<bool>(arg_0.b, global0.x, false, false), false))));
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.x - _wgslsmith_f_op_f32(-arg_2.x)), arg_2.x, !(!all(vec4<bool>(global0.x, global0.x, false, false)))));
    return Struct_1(arg_0.a, all(select(!vec4<bool>(arg_0.b, arg_0.b, false, false), select(vec4<bool>(global0.x, true, true, arg_0.b), vec4<bool>(global0.x, false, true, false), vec4<bool>(arg_0.b, global0.x, true, arg_0.b)), true)) & (global0.x | ((global0.x & arg_0.b) & true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    let var_1 = -511f;
    global0 = !vec3<bool>(!global0.x, false, true);
    let var_2 = func_4(func_1(), Struct_2(vec4<u32>(1u, 1u, 1u, 1u), vec3<u32>(1u, 1u, firstLeadingBit(~22071u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, _wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(abs(var_1)), 277f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-730f, var_1, var_1, var_1))))))));
    var var_3 = global0.xy;
    var var_4 = 77587u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~1i), u_input.e, 868f);
}

