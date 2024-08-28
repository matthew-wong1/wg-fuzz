struct Struct_1 {
    a: vec2<f32>,
    b: vec2<f32>,
    c: u32,
    d: f32,
    e: f32,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: i32,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
    c: vec2<bool>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_4, arg_2: Struct_2) -> bool {
    let var_0 = u_input.b.zz;
    let var_1 = arg_0;
    let var_2 = firstLeadingBit(_wgslsmith_add_vec2_u32(countOneBits(u_input.b.yw) | var_0, vec2<u32>(4294967295u, _wgslsmith_add_u32(var_0.x, 1u) ^ reverseBits(var_0.x))));
    let var_3 = Struct_2(arg_2.a);
    var var_4 = !(abs(~(~16761u)) < _wgslsmith_dot_vec3_u32(u_input.b.xzw ^ ~u_input.b.xzy, vec3<u32>(u_input.b.x, firstTrailingBit(9086u), _wgslsmith_clamp_u32(1u, 38388u, 13074u))));
    return (firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(1u, 4294967295u, var_0.x, var_0.x))) == 44758u) | (false | var_1.d);
}

fn func_2() -> vec4<bool> {
    let var_0 = 4294967295u;
    var var_1 = !vec2<bool>(true != all(vec2<bool>(true, false)), func_3(Struct_3(max(u_input.d, u_input.a.x), vec2<f32>(1530f, -593f), max(u_input.a.yz, u_input.a.yy), true), Struct_4(true, vec4<bool>(true, true, true, true), vec2<bool>(true, true), Struct_2(vec2<bool>(false, false))), Struct_2(vec2<bool>(true, true))));
    return !(!vec4<bool>(var_1.x, true, var_1.x, true));
}

fn func_1(arg_0: i32) -> Struct_4 {
    var var_0 = Struct_4(false, select(vec4<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(false, true, true)) == true, _wgslsmith_add_u32(4294967295u, u_input.c.x) < _wgslsmith_mult_u32(u_input.b.x, 124315u), true), select(select(vec4<bool>(true, true, true, true), func_2(), true), vec4<bool>(all(vec3<bool>(true, true, false)), u_input.a.x == 2147483647i, true, false), !all(vec3<bool>(true, false, true))), false), vec2<bool>(any(vec4<bool>(any(vec3<bool>(true, true, false)), true, true, select(true, false, true))), true), Struct_2(vec2<bool>(true, true)));
    return Struct_4(any(var_0.b) || all(select(vec4<bool>(false, true, true, var_0.d.a.x), select(var_0.b, var_0.b, var_0.b), select(var_0.b, vec4<bool>(true, true, var_0.a, var_0.b.x), vec4<bool>(var_0.c.x, var_0.d.a.x, true, var_0.c.x)))), var_0.b, var_0.b.yz, var_0.d);
}

fn func_4(arg_0: Struct_4, arg_1: u32) -> vec2<f32> {
    var var_0 = Struct_3(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(firstTrailingBit(u_input.a), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -11159i), vec3<i32>(u_input.a.x, 42083i, 1i)), ~u_input.a.x, -2147483647i)), -23215i), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 210f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -892f) + vec2<f32>(117f, -1126f)))))), _wgslsmith_div_vec2_i32(-(~u_input.a.yz), vec2<i32>(-1i) * -vec2<i32>(u_input.d, -1i)) & _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(-u_input.a.zx, countOneBits(u_input.a.xx)), vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, 40777i), _wgslsmith_sub_i32(16525i, -40607i))), arg_0.a);
    var_0 = Struct_3(u_input.d, vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(var_0.b.x)), _wgslsmith_f_op_f32(select(650f, 346f, var_0.d)))), 224f), -1571f), _wgslsmith_div_vec2_i32(~(-u_input.a.xx >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(17291u, u_input.b.x), u_input.b.zy) % vec2<u32>(32u))), vec2<i32>(0i, firstLeadingBit(_wgslsmith_add_i32(u_input.a.x, u_input.d)))), select(!(!arg_0.d.a.x & (arg_0.a & false)), func_2().x, false));
    var var_1 = Struct_4(true, vec4<bool>(all(func_1(abs(u_input.d)).b.www), func_1(~_wgslsmith_mult_i32(-1i, -49233i)).d.a.x, ~var_0.c.x >= 55284i, all(!select(vec3<bool>(false, false, false), arg_0.b.wxx, arg_0.b.xzy))), arg_0.d.a, Struct_2(!(!(!vec2<bool>(var_0.d, false)))));
    let var_2 = Struct_2(func_2().yy);
    var_0 = Struct_3(i32(-1i) * -48941i, vec2<f32>(927f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -1089f), arg_0.b.x))))), u_input.a.zx, any(vec2<bool>(true, arg_0.d.a.x)));
    return vec2<f32>(_wgslsmith_f_op_f32(abs(-651f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(var_0.b.x - -1710f)))))));
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3) -> StorageBuffer {
    var var_0 = vec3<bool>(!arg_1.d, true, func_2().x);
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_div_u32(1u, ~_wgslsmith_mod_u32(u_input.b.x ^ 117571u, 56578u)), ~select(u_input.c.x, abs(54617u), var_0.x));
    var var_2 = 1166f;
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_0.x)) + -236f);
    var_2 = arg_1.b.x;
    return StorageBuffer(~0u);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_5(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -855f), -1526f, _wgslsmith_f_op_f32(-939f * -1000f))), Struct_3(min(-_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, 27853i, u_input.a.x), vec3<i32>(-39784i, 0i, u_input.d)), u_input.a.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(func_1(1i), u_input.c.x)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1502f), 1732f)), select(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.a.x, u_input.d), u_input.a.zy), vec2<i32>(i32(-1i) * -1i, ~0i), true), false));
}

