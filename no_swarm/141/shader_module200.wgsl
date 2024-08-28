struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 12> = array<u32, 12>(98517u, 78642u, 4294967295u, 4294967295u, 4294967295u, 60663u, 14759u, 8207u, 17232u, 1u, 49919u, 14503u);

var<private> global1: array<vec2<i32>, 28>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -200f))), _wgslsmith_f_op_f32(sign(-349f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1028f) * _wgslsmith_f_op_f32(ceil(-583f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2169f) + _wgslsmith_f_op_f32(trunc(-340f))))));
    let var_1 = arg_1;
    var var_2 = arg_1;
    var_0 = vec4<f32>(var_0.x, var_0.x, var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))));
    var_2 = arg_1;
    return var_1;
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(vec4<i32>(0i, abs(_wgslsmith_dot_vec3_i32(-vec3<i32>(0i, -2147483647i, arg_0), min(vec3<i32>(u_input.a.x, arg_1.a.x, -2147483647i), vec3<i32>(1924i, 1i, -2147483647i)))), 1i, arg_1.a.x));
    let var_1 = arg_1;
    let var_2 = vec2<bool>(select(true, all(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))) && true, !any(vec3<bool>(true, false, false))), false);
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(7197u, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_mod_u32(u_input.b, 68689u)), max(vec2<u32>(60271u, 0u), select(vec2<u32>(global0[_wgslsmith_index_u32(1u, 12u)], global0[_wgslsmith_index_u32(u_input.c.x, 12u)]), u_input.c, var_2.x))) ^ firstTrailingBit(~_wgslsmith_add_u32(u_input.c.x, 1u))), 12u)];
    var_3 = u_input.d;
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1931f))))));
    var var_1 = arg_0;
    var var_2 = -1i;
    let var_3 = func_2(func_3(_wgslsmith_add_i32(~(~0i), min(-2147483647i, -2147483647i)), func_3(func_2(Struct_1(vec4<i32>(-2147483647i, -15756i, arg_3.a.x, arg_0.a.x)), func_3(arg_0.a.x, arg_3, arg_3), var_1.a.x).a.x, Struct_1(~arg_0.a), Struct_1(var_1.a)), arg_0), func_3(i32(-1i) * -arg_0.a.x, Struct_1(abs(-arg_3.a)), arg_3), _wgslsmith_dot_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(var_1.a, _wgslsmith_div_vec4_i32(u_input.a, arg_3.a))), ~vec4<i32>(arg_0.a.x, min(-4474i, arg_0.a.x), -47305i >> (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.d, 12u)], 12u)], 12u)] % 32u), var_1.a.x >> (65551u % 32u))));
    var_0 = 257f;
    return firstLeadingBit(countOneBits(arg_0.a)) & (abs(-(~arg_0.a)) << (_wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 42846u, 4294967295u, u_input.c.x), ~vec4<u32>(1u, global0[_wgslsmith_index_u32(1u, 12u)], 4294967295u, 1u)), vec4<u32>(firstTrailingBit(4294967295u), abs(arg_2), abs(arg_2), _wgslsmith_div_u32(arg_2, 4294967295u))) % vec4<u32>(32u)));
}

fn func_1() -> vec2<bool> {
    let var_0 = 1u;
    let var_1 = Struct_1(reverseBits(func_4(func_3(0i, func_2(Struct_1(u_input.a), Struct_1(vec4<i32>(u_input.a.x, 22627i, u_input.a.x, u_input.a.x)), u_input.a.x), func_2(Struct_1(u_input.a), Struct_1(u_input.a), u_input.a.x)), vec2<u32>(var_0, 21294u) & _wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 12u)], var_0), u_input.c), ~var_0 & _wgslsmith_sub_u32(78705u, global0[_wgslsmith_index_u32(u_input.b, 12u)]), Struct_1(-vec4<i32>(u_input.a.x, u_input.a.x, 74940i, -1i)))));
    var var_2 = Struct_1(vec4<i32>(select(~4412i, var_1.a.x, ~var_0 != 12812u), func_3(-13086i, var_1, func_2(var_1, var_1, 32117i)).a.x | _wgslsmith_mult_i32(1i, select(u_input.a.x, -47158i, true)), func_2(var_1, Struct_1(u_input.a << (vec4<u32>(0u, var_0, var_0, 0u) % vec4<u32>(32u))), 1i).a.x, _wgslsmith_sub_i32(-func_4(Struct_1(var_1.a), u_input.c, 0u, Struct_1(u_input.a)).x, u_input.a.x)));
    var var_3 = _wgslsmith_f_op_f32(-1001f - 750f);
    global1 = array<vec2<i32>, 28>();
    return !select(vec2<bool>(true, true), vec2<bool>(any(vec4<bool>(false, true, false, true)) || all(vec3<bool>(true, true, false)), _wgslsmith_clamp_u32(4294967295u, 4294967295u, u_input.c.x) >= _wgslsmith_add_u32(1u, var_0)), vec2<bool>((var_0 < u_input.c.x) & false, true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))));
    var var_1 = vec2<bool>(!all(select(vec2<bool>(true, true), func_1(), any(vec2<bool>(false, true)))), -u_input.a.x <= u_input.a.x);
    global1 = array<vec2<i32>, 28>();
    let var_2 = -(vec4<i32>(_wgslsmith_mult_i32(func_4(Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 54049i, 0i)), vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.d), 1u, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, 4479i, -1i))).x, u_input.a.x), _wgslsmith_dot_vec3_i32(reverseBits(u_input.a.zwy), u_input.a.xzy), ~u_input.a.x, 0i) | func_3(u_input.a.x, Struct_1(vec4<i32>(-3653i, u_input.a.x, 46434i, 2147483647i)), Struct_1(u_input.a)).a);
    let var_3 = u_input.b <= u_input.b;
    let var_4 = countOneBits(-(~(~vec4<i32>(4944i, -1i, var_2.x, 0i)))) >> (firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(~4294967295u, countOneBits(u_input.d), 18578u, 1u), ~(~vec4<u32>(global0[_wgslsmith_index_u32(7754u, 12u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 12u)], 12u)], 12u)], u_input.c.x, global0[_wgslsmith_index_u32(1u, 12u)])))) % vec4<u32>(32u));
    let var_5 = Struct_1(((-vec4<i32>(-1i, var_2.x, var_2.x, var_2.x) & select(vec4<i32>(1i, u_input.a.x, var_4.x, 2147483647i), u_input.a, vec4<bool>(var_1.x, var_3, var_3, var_3))) >> (~(vec4<u32>(u_input.b, u_input.c.x, u_input.c.x, 0u) << (vec4<u32>(u_input.b, u_input.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c.x, 12u)], 12u)], 12u)], 0u) % vec4<u32>(32u))) % vec4<u32>(32u))) | vec4<i32>(var_2.x, ~(-47472i), var_4.x, abs(43321i)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-297f, -1000f, 905f, 1064f) - vec4<f32>(-181f, -1009f, -1281f, 1862f)) * _wgslsmith_div_vec4_f32(vec4<f32>(611f, -622f, 244f, -1367f), vec4<f32>(1000f, -920f, 126f, 489f))))), vec3<i32>(-34580i, ~((19998i << (0u % 32u)) | -var_2.x), u_input.a.x), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global0[_wgslsmith_index_u32(35363u, 12u)], 114597u)), _wgslsmith_div_vec2_u32(select(select(vec2<u32>(22057u, 1u), vec2<u32>(65021u, 4294967295u), false), u_input.c, var_1.x), reverseBits(vec2<u32>(45393u, global0[_wgslsmith_index_u32(7500u, 12u)])) >> (~vec2<u32>(u_input.d, u_input.b) % vec2<u32>(32u)))), global0[_wgslsmith_index_u32(0u, 12u)]);
}

