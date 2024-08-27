struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec4<f32>(689f, -747f, -1840f, 717f), Struct_1(2147483647i)), Struct_2(vec4<f32>(-273f, -1058f, 826f, -167f), Struct_1(37226i)));

var<private> global1: Struct_2 = Struct_2(vec4<f32>(561f, -1044f, 986f, -738f), Struct_1(10662i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: i32) -> f32 {
    let var_0 = global1.b;
    let var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(sign(global1.a)), global1.b);
    var var_2 = global1.b;
    var var_3 = var_1.b;
    var_3 = var_1.b;
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(step(var_1.a.x, 146f)))), var_1.a.x));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<i32>) -> vec4<bool> {
    global0 = array<Struct_2, 2>();
    global1 = arg_0;
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1462f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-arg_0.a.x)), -1798f, -1149f), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_0.a - vec4<f32>(668f, -277f, arg_0.a.x, global1.a.x)), global1.a, select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, true)))), select(true, true, true))), Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.b.a, arg_0.b.a, global1.b.a), ~arg_2.xzw), _wgslsmith_dot_vec4_i32(select(vec4<i32>(arg_0.b.a, global1.b.a, arg_2.x, arg_0.b.a), arg_2, false), ~vec4<i32>(0i, -2147483647i, -2147483647i, arg_2.x)))));
    var var_1 = vec2<i32>(~(-1i), 1i);
    let var_2 = Struct_2(global1.a, Struct_1(-u_input.a));
    return !select(!vec4<bool>(false, all(vec3<bool>(false, true, true)), any(vec4<bool>(true, false, false, true)), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false))), all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false))) && !any(vec2<bool>(true, false)));
}

fn func_2() -> u32 {
    global0 = array<Struct_2, 2>();
    var var_0 = select(!select(vec4<bool>(false, true, select(true, false, true), true), func_4(global0[_wgslsmith_index_u32(~12086u, 2u)], _wgslsmith_f_op_f32(func_3(true, -1i)), firstTrailingBit(vec4<i32>(-1i, 36808i, u_input.a, -1i))), select(vec4<bool>(true, true, false, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false)), true)), !vec4<bool>(true, true && func_4(Struct_2(vec4<f32>(-2005f, -1000f, -879f, global1.a.x), global1.b), global1.a.x, vec4<i32>(1i, global1.b.a, 18522i, -1i)).x, all(select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false))), func_4(Struct_2(global1.a, global1.b), _wgslsmith_f_op_f32(sign(global1.a.x)), -vec4<i32>(global1.b.a, global1.b.a, global1.b.a, -47612i)).x), func_4(Struct_2(global1.a, Struct_1(firstLeadingBit(-22990i))), global1.a.x, vec4<i32>(global1.b.a, countOneBits(_wgslsmith_add_i32(-65278i, u_input.a)), -u_input.a, u_input.a)).x);
    var var_1 = Struct_2(global1.a, global1.b);
    var_0 = vec4<bool>(all(func_4(Struct_2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.a.x, var_1.a.x, global1.a.x, var_1.a.x), vec4<f32>(var_1.a.x, 1880f, var_1.a.x, global1.a.x), vec4<bool>(false, true, var_0.x, true))), Struct_1(u_input.a)), 752f, vec4<i32>(_wgslsmith_mod_i32(47750i, 1i), global1.b.a, u_input.a, u_input.a)).wz), any(!vec2<bool>(any(vec3<bool>(true, false, true)), false)), var_0.x, var_0.x);
    global0 = array<Struct_2, 2>();
    return ~(~firstTrailingBit(1u));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a.x) * -1138f) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.a.x * -528f))) + _wgslsmith_f_op_f32(-global1.a.x)));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(38868u, 1u), 2u)];
    let var_1 = global1.b;
    var var_2 = ~(~(~1u)) < ((_wgslsmith_div_u32(func_2(), 4294967295u) & _wgslsmith_mult_u32(30642u, max(0u, 27451u))) >> (~_wgslsmith_sub_u32(60219u, 26275u) % 32u));
    let var_3 = min(-_wgslsmith_dot_vec3_i32(-(vec3<i32>(1i, u_input.a, global1.b.a) >> (vec3<u32>(49254u, 0u, 66761u) % vec3<u32>(32u))), select(-vec3<i32>(16332i, var_1.a, 1i), vec3<i32>(global1.b.a, global1.b.a, var_1.a), true)), -33047i);
    return ~((_wgslsmith_dot_vec3_u32(~vec3<u32>(7921u, 37273u, 92227u), countOneBits(vec3<u32>(1u, 17834u, 0u))) & reverseBits(func_2())) << (~_wgslsmith_dot_vec2_u32(~vec2<u32>(27703u, 1786u), vec2<u32>(1u, 1u)) % 32u));
}

fn func_5(arg_0: u32) -> Struct_2 {
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(abs(global1.a)))), vec4<f32>(2692f, _wgslsmith_f_op_f32(abs(global1.a.x)), _wgslsmith_f_op_f32(select(335f, -301f, false)), 1000f))), global1.b);
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global1.a.x, -732f, 1238f, global1.a.x), vec4<f32>(-2431f, -361f, global1.a.x, -529f), false)) + vec4<f32>(-463f, -701f, global1.a.x, 1224f))))), Struct_1(global1.b.a));
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(~arg_0, ~arg_0), 0u), 2u)];
    var var_0 = Struct_2(global1.a, global1.b);
    var_0 = global0[_wgslsmith_index_u32(arg_0, 2u)];
    return global0[_wgslsmith_index_u32(max(arg_0, ~53605u), 2u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i;
    global1 = func_5(func_1());
    global1 = func_5(0u);
    let var_1 = func_5(1u);
    var var_2 = _wgslsmith_clamp_u32(~1u, ~(~_wgslsmith_add_u32(func_2(), 4294967295u)), _wgslsmith_sub_u32(~26308u, 81204u));
    var_2 = _wgslsmith_add_u32(min(_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(77491u, 4294967295u, 4294967295u), vec3<u32>(1u, 1u, 125650u), vec3<u32>(6109u, 32784u, 24930u)), vec3<u32>(1u, 1u, 1u)), 1u), 1u << ((4294967295u << (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 0u, 4157u), vec4<u32>(33355u, 4294967295u, 4294967295u, 1u)) % 32u)) % 32u)), 17812u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-743f - _wgslsmith_f_op_f32(-global1.a.x)))));
}

