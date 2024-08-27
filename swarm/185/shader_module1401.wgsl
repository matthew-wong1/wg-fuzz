struct Struct_1 {
    a: u32,
    b: bool,
    c: i32,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_3 = Struct_3(Struct_2(-1621f, vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 0u)), Struct_2(-794f, vec2<u32>(12682u, 27397u), vec2<u32>(17109u, 1u)), vec2<u32>(4294967295u, 0u));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> bool {
    let var_0 = select(select(vec3<bool>(false, true, all(vec2<bool>(global0.d, false))), !select(vec3<bool>(global0.b, global0.d, global0.b), vec3<bool>(global0.b, true, false), global0.d), vec3<bool>(true, true, true)), vec3<bool>(!(_wgslsmith_mult_i32(-51201i, u_input.b.x) < max(u_input.b.x, global0.c)), all(vec2<bool>(true, true)), global0.d & false), !select(vec3<bool>(all(vec2<bool>(global0.d, global0.b)), false, global0.d | global0.d), select(vec3<bool>(global0.b, true, global0.b), vec3<bool>(true, global0.b, global0.d), false), select(!vec3<bool>(global0.d, global0.d, true), vec3<bool>(global0.b, global0.d, false), global0.b)));
    var var_1 = u_input.b;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2746f, 331f, global1.a.a)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global1.a.a, global1.a.a, -1619f))))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(1290f, global1.a.a), global1.b.a, _wgslsmith_f_op_f32(abs(-991f))))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -803f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(824f)) + _wgslsmith_f_op_f32(f32(-1f) * -395f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(994f))))));
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(select(_wgslsmith_mult_i32(var_1.x, reverseBits(var_1.x)), _wgslsmith_add_i32(reverseBits(u_input.b.x), -global0.c), true), -1i), var_1.zz);
    var_3 = -(~u_input.b.yy);
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-848f * _wgslsmith_f_op_f32(trunc(-695f)))))) <= _wgslsmith_f_op_f32(-545f + _wgslsmith_f_op_f32(967f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_2.x * 242f)))));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: u32, arg_3: vec3<u32>) -> Struct_3 {
    let var_0 = _wgslsmith_sub_i32(-2147483647i, -countOneBits(-2331i));
    var var_1 = select(select(vec4<bool>(func_3(), global0.c > _wgslsmith_mod_i32(u_input.b.x, u_input.b.x), !global0.b, global0.d), vec4<bool>(!any(vec3<bool>(global0.b, true, global0.d)), false, arg_0 < var_0, !global0.d), true), vec4<bool>((var_0 > -1i) || true, false, all(vec3<bool>(any(vec2<bool>(false, global0.b)), true, global0.d)), global0.d), global0.d | (global0.d && (true != (global0.d != global0.d))));
    let var_2 = Struct_1(~21256u, any(vec3<bool>(!all(vec2<bool>(var_1.x, var_1.x)), true, false)), global0.c ^ countOneBits(countOneBits(global0.c)), var_1.x, _wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, arg_1.x << (0u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, 6530u), vec2<u32>(0u, 4294967295u)), 4294967295u), global0.e, vec4<bool>(any(vec4<bool>(true, false, var_1.x, false)), false, any(var_1.yw), false)), ~global0.e));
    let var_3 = Struct_1(~_wgslsmith_dot_vec3_u32(countOneBits(var_2.e.wxx), global0.e.wxx), false, ~(~(~13402i)), false, vec4<u32>(arg_2, var_2.e.x, arg_2, 88741u));
    let var_4 = select(!(!select(vec4<bool>(false, true, false, false), !vec4<bool>(var_1.x, global0.d, false, true), true)), select(select(vec4<bool>(var_1.x, func_3(), true | var_1.x, var_2.d || true), !select(vec4<bool>(var_3.b, var_1.x, false, false), vec4<bool>(global0.d, true, true, var_2.d), vec4<bool>(true, false, var_3.d, false)), vec4<bool>(any(vec4<bool>(true, var_2.b, var_3.b, var_3.d)), true, true, var_3.d)), !select(select(vec4<bool>(var_1.x, global0.b, false, false), vec4<bool>(false, false, global0.b, true), vec4<bool>(false, global0.d, var_2.d, true)), select(vec4<bool>(var_3.d, true, var_3.b, global0.d), vec4<bool>(false, false, var_2.d, var_3.d), false), any(vec4<bool>(global0.d, false, false, true))), !select(vec4<bool>(global0.d, var_1.x, false, false), vec4<bool>(true, true, true, true), !vec4<bool>(false, var_1.x, false, var_3.b))), vec4<bool>(var_3.b, true, false, var_2.b));
    return Struct_3(Struct_2(_wgslsmith_f_op_f32(-global1.b.a), firstLeadingBit(~(global1.b.b >> (global0.e.yx % vec2<u32>(32u)))), select(select(var_2.e.yy << (var_2.e.wx % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 60990u), arg_1, vec2<u32>(u_input.a, global0.e.x)), -238f <= global1.a.a), arg_3.zy, vec2<bool>(global0.b, any(vec3<bool>(global0.b, var_4.x, false))))), global1.b, global1.c ^ var_3.e.zy);
}

fn func_1() -> Struct_2 {
    global1 = func_2(global0.c ^ countOneBits(~abs(-1i)), abs(min(~global0.e.zz, global0.e.xx)), global0.e.x, global0.e.xzx);
    let var_0 = global1.b;
    let var_1 = vec4<i32>(_wgslsmith_mod_i32(-6920i, global0.c), ~_wgslsmith_div_i32(-(~(-1i)), _wgslsmith_mod_i32(-u_input.b.x, _wgslsmith_mult_i32(-2147483647i, global0.c))), u_input.b.x, u_input.b.x);
    var var_2 = select(global0.e.x != (max(global1.c.x >> (u_input.a % 32u), u_input.a) | _wgslsmith_dot_vec3_u32(firstLeadingBit(global0.e.xwz), vec3<u32>(var_0.b.x, 49343u, u_input.a) | vec3<u32>(11556u, 1u, u_input.a))), global0.d, any(vec2<bool>(global0.d, global0.b)));
    var_2 = !global0.d;
    return Struct_2(global1.b.a, vec2<u32>(var_0.c.x, firstTrailingBit(global1.b.c.x)), vec2<u32>(abs(_wgslsmith_clamp_u32(reverseBits(global0.a), 0u, _wgslsmith_dot_vec2_u32(var_0.b, vec2<u32>(1u, global0.e.x)))), func_2(u_input.b.x, var_0.b ^ vec2<u32>(17012u, global1.a.c.x), ~(~0u), global0.e.wxy).b.c.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> Struct_2 {
    let var_0 = func_2(u_input.b.x, firstLeadingBit(vec2<u32>(17316u, _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, u_input.a, 9439u), ~global0.e.xzw))), global0.e.x, global0.e.wwy).a;
    let var_1 = min(countOneBits(vec2<u32>(arg_1.b.x, ~global1.b.c.x)) ^ ~var_0.b, arg_1.b);
    var var_2 = func_2(22359i, ~vec2<u32>(abs(arg_1.c.x), (arg_0.b.b.x ^ 9131u) ^ _wgslsmith_clamp_u32(global0.a, 106025u, 16600u)), max(global0.e.x, func_1().b.x), vec3<u32>(u_input.a, global0.a ^ ~(global1.c.x | 1u), max(~(1u | u_input.a), 0u)));
    var var_3 = select(!(!select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), !vec2<bool>(false, global0.b), true)), select(vec2<bool>(!global0.b, all(vec2<bool>(global0.d, global0.b))), !select(select(vec2<bool>(global0.d, false), vec2<bool>(false, global0.d), true), select(vec2<bool>(false, false), vec2<bool>(global0.b, global0.b), vec2<bool>(global0.b, global0.b)), false), true), !(!(!global0.d)) && global0.b);
    let var_4 = Struct_1(arg_1.c.x ^ ~(~_wgslsmith_mult_u32(arg_0.c.x, 4294967295u)), true, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(-(~u_input.b.zx), -_wgslsmith_mod_vec2_i32(vec2<i32>(56094i, u_input.b.x), u_input.b.zy), _wgslsmith_sub_vec2_i32(max(vec2<i32>(global0.c, u_input.b.x), vec2<i32>(4585i, global0.c)), -u_input.b.zz)), min(min(u_input.b.zz, _wgslsmith_div_vec2_i32(u_input.b.zy, vec2<i32>(-2147483647i, u_input.b.x))), u_input.b.yx)), true || (u_input.b.x >= _wgslsmith_add_i32(global0.c, u_input.b.x)), countOneBits(vec4<u32>(~func_2(-2147483647i, vec2<u32>(global0.e.x, 4294967295u), 0u, global0.e.yzw).a.b.x, 4294967295u, global1.a.b.x, abs(~arg_0.b.c.x))));
    return Struct_2(_wgslsmith_f_op_f32(var_0.a - -1942f), _wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1267u), _wgslsmith_add_vec2_u32(var_0.b, var_0.b)), global1.c.x), vec2<u32>(1u, max(88072u, _wgslsmith_mod_u32(arg_1.c.x, var_2.c.x)))), max(vec2<u32>(func_2(-var_4.c, var_1, func_2(var_4.c, global1.a.c, 4294967295u, var_4.e.wwy).a.b.x, var_4.e.yzw ^ global0.e.yxz).a.c.x, var_0.b.x ^ 4294967295u), var_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_3(func_4(Struct_3(global1.b, func_1(), _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a, 1u), _wgslsmith_sub_vec2_u32(vec2<u32>(118102u, 4294967295u), global1.c))), func_1()), func_1(), global0.e.zy);
    let var_0 = global0.c | u_input.b.x;
    let var_1 = ~(var_0 | _wgslsmith_mod_i32(0i, u_input.b.x));
    global1 = Struct_3(func_4(func_2(u_input.b.x << (~global0.e.x % 32u), ~(~vec2<u32>(global0.a, global0.e.x)), 66747u, vec3<u32>(~4294967295u, ~u_input.a, countOneBits(u_input.a))), func_1()), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(206f, global1.a.a) * _wgslsmith_f_op_f32(global1.b.a + global1.b.a))), vec2<u32>(~_wgslsmith_div_u32(4294967295u, 51263u), ~firstLeadingBit(4294967295u)), global1.b.b & ~(global1.b.c ^ vec2<u32>(0u, 0u))), vec2<u32>(u_input.a, 4294967295u));
    let var_2 = !vec2<bool>(select(max(var_1, var_1), countOneBits(u_input.b.x), true) == ~_wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(var_0, 0i)), global0.b && true);
    let x = u_input.a;
    s_output = StorageBuffer(1i << (global1.c.x % 32u), 14015u);
}

