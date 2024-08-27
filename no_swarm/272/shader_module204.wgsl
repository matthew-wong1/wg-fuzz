struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: u32,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_1 = Struct_1(vec3<i32>(16991i, -41433i, 11844i), vec4<f32>(-1151f, 766f, -1257f, -2417f), 11423u, vec4<i32>(41022i, i32(-2147483648), 0i, -41942i), vec4<i32>(1i, 0i, -1i, 0i));

var<private> global2: u32;

var<private> global3: vec3<u32> = vec3<u32>(1u, 3018u, 561u);

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> vec3<i32> {
    var var_0 = ~global0.c;
    let var_1 = arg_3;
    global0 = Struct_1(-min(abs(u_input.b.zww), -vec3<i32>(arg_3.a.x, var_1.a.x, -1i)), _wgslsmith_f_op_vec4_f32(max(arg_3.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-arg_3.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-673f, arg_0.x, arg_3.b.x, 227f))))))), 12506u, global0.e, vec4<i32>(max((global1.e.x & arg_1) << (reverseBits(1u) % 32u), countOneBits(-35818i) | reverseBits(global0.e.x)), -2147483647i, var_1.a.x, 0i));
    global2 = reverseBits(_wgslsmith_dot_vec2_u32(global3.yz >> (~global3.xz % vec2<u32>(32u)), global3.zx)) | arg_3.c;
    let var_2 = Struct_1(-firstTrailingBit(global1.a), vec4<f32>(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), _wgslsmith_f_op_f32(abs(arg_3.b.x))), _wgslsmith_dot_vec4_u32(vec4<u32>(global0.c, var_1.c, ~(~39296u), ~28710u), ~(~(~vec4<u32>(4294967295u, global0.c, arg_3.c, global1.c)))), u_input.b, countOneBits(vec4<i32>(~max(global0.d.x, 49109i), 1i, ~42122i, 72863i)));
    return ~var_1.d.xyz;
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1, arg_3: u32) -> Struct_1 {
    let var_0 = global1.a.x;
    var var_1 = _wgslsmith_div_i32(~(~arg_0.d.x), u_input.c.x) == global0.d.x;
    var var_2 = Struct_1(func_3(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.b.x)) * -638f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_add_i32(i32(-1i) * -32149i, 1199i), select(all(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false))), arg_2.c < 23007u, true), arg_2), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -707f, -603f, -1000f) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global1.b.x, global0.b.x, arg_2.b.x, global1.b.x), arg_2.b))))), arg_3, vec4<i32>(23494i, 1i, _wgslsmith_clamp_i32(~(arg_0.d.x & 19714i), 12609i, -1i), i32(-1i) * -_wgslsmith_sub_i32(u_input.c.x, -2147483647i)), vec4<i32>(global0.d.x, _wgslsmith_mod_i32(func_3(arg_0.b.zx, u_input.b.x, true, Struct_1(vec3<i32>(-2147483647i, 1i, 1i), vec4<f32>(global0.b.x, global1.b.x, -942f, 2042f), arg_0.c, vec4<i32>(global1.d.x, -1i, global1.e.x, -21692i), vec4<i32>(15530i, u_input.a, 1i, 23911i))).x, reverseBits(u_input.a)), countOneBits(i32(-1i) * -32560i), i32(-1i) * -global0.e.x) & ~u_input.b);
    let var_3 = Struct_1(select(vec3<i32>(arg_0.e.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -20240i, arg_0.a.x, global0.d.x), global1.e & vec4<i32>(-22616i, global1.a.x, 38837i, arg_2.e.x)), ~(global1.d.x | 2147483647i)), vec3<i32>(i32(-1i) * -u_input.c.x, 1i, max(abs(var_2.a.x), _wgslsmith_mult_i32(-1i, u_input.b.x))), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), vec3<bool>(any(vec2<bool>(false, false)), true, any(vec4<bool>(true, true, true, false))), u_input.a > _wgslsmith_mult_i32(arg_2.d.x, var_2.d.x))), _wgslsmith_f_op_vec4_f32(-var_2.b), var_2.c, var_2.e, firstTrailingBit(firstLeadingBit(global0.e) ^ vec4<i32>(-var_2.d.x, arg_2.d.x >> (0u % 32u), _wgslsmith_sub_i32(49618i, 2147483647i), var_2.d.x)));
    var var_4 = vec3<u32>(~var_2.c, countOneBits(reverseBits(1u)), ~arg_1);
    return arg_0;
}

fn func_4(arg_0: Struct_1) -> i32 {
    global1 = func_2(func_2(arg_0, firstLeadingBit(min(~4294967295u, 1u)), func_2(func_2(arg_0, ~4294967295u, Struct_1(global0.e.wyw, global1.b, global1.c, vec4<i32>(global0.a.x, 0i, -50409i, -1i), global0.e), ~20934u), ~(~global0.c), arg_0, 1u), ~0u), (33252u >> ((global0.c << (22697u % 32u)) % 32u)) & ~(min(global3.x, 4838u) & 4786u), arg_0, ~_wgslsmith_sub_u32(arg_0.c, firstLeadingBit(4294967295u)));
    global1 = Struct_1(vec3<i32>(global0.e.x, -arg_0.a.x, countOneBits(global1.a.x)), arg_0.b, ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(global3.x, global1.c, 9718u), vec3<u32>(global3.x, arg_0.c, global3.x))), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, global1.d.x >> (arg_0.c % 32u), global1.e.x, abs(arg_0.a.x)), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(23810i, -8378i, global1.e.x, arg_0.a.x), u_input.b), arg_0.a.x, _wgslsmith_clamp_i32(u_input.c.x, 482i, global1.d.x), -1i)) ^ _wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, max(-10100i, 1i), 0i, ~global0.d.x), -u_input.b, vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, arg_0.a.x, 14308i), i32(-1i) * -73359i, firstTrailingBit(-36267i), -arg_0.d.x)), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_div_i32(0i, u_input.b.x), 17834i), global0.d.x, (i32(-1i) * -2147483647i) << (firstLeadingBit(global3.x) % 32u), arg_0.d.x), arg_0.e));
    global3 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 18983u, arg_0.c), _wgslsmith_mod_vec3_u32(vec3<u32>(15281u, 0u, 28927u), vec3<u32>(41846u, global3.x, global1.c))), _wgslsmith_div_vec3_u32(~vec3<u32>(28086u, global3.x, global0.c) & vec3<u32>(global3.x, global0.c, global1.c), (vec3<u32>(global1.c, global0.c, arg_0.c) >> (vec3<u32>(global1.c, 58879u, arg_0.c) % vec3<u32>(32u))) << (_wgslsmith_div_vec3_u32(vec3<u32>(global1.c, global1.c, 4294967295u), vec3<u32>(arg_0.c, 2201u, global3.x)) % vec3<u32>(32u)))), max(select(firstTrailingBit(vec3<u32>(4294967295u, arg_0.c, arg_0.c) >> (vec3<u32>(4294967295u, 1u, 4294967295u) % vec3<u32>(32u))), reverseBits(select(vec3<u32>(global0.c, 1u, 46002u), vec3<u32>(global1.c, global3.x, 1u), vec3<bool>(true, true, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), true)), ~(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, global3.x, 4294967295u), vec3<u32>(global3.x, 0u, global1.c)) << (abs(vec3<u32>(global1.c, 0u, global1.c)) % vec3<u32>(32u)))));
    let var_0 = false;
    let var_1 = true;
    return ~arg_0.d.x;
}

fn func_1(arg_0: Struct_1) -> u32 {
    global0 = arg_0;
    let var_0 = select(~_wgslsmith_mult_i32(~global1.d.x & 1i, func_4(func_2(arg_0, 23408u, Struct_1(u_input.b.wwy, arg_0.b, global0.c, global0.d, arg_0.d), global1.c))), -2874i, all(select(vec2<bool>(true, any(vec3<bool>(false, false, false))), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true)), true)));
    global2 = 1u;
    let var_1 = func_2(arg_0, _wgslsmith_sub_u32(arg_0.c, global0.c), Struct_1(vec3<i32>(u_input.a, _wgslsmith_sub_i32(38249i, -6764i) >> (0u % 32u), 1i | _wgslsmith_add_i32(u_input.b.x, u_input.c.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, _wgslsmith_f_op_f32(select(514f, arg_0.b.x, false)), _wgslsmith_f_op_f32(select(-318f, arg_0.b.x, true)), _wgslsmith_f_op_f32(global0.b.x + -102f)) - _wgslsmith_f_op_vec4_f32(global1.b + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, 1000f, global0.b.x, arg_0.b.x) + vec4<f32>(1000f, 168f, global0.b.x, arg_0.b.x)))), ~(select(0u, 0u, false) >> (_wgslsmith_mult_u32(15676u, 38407u) % 32u)), -u_input.b, max(global1.d, abs(global1.e) << (~vec4<u32>(37773u, 4294967295u, arg_0.c, 14028u) % vec4<u32>(32u)))), global0.c);
    let var_2 = ~(vec2<i32>(-15620i, func_4(func_2(Struct_1(global0.e.wyy, var_1.b, global0.c, u_input.b, vec4<i32>(-14591i, -2147483647i, global0.e.x, -1i)), global0.c, Struct_1(global0.d.xzy, vec4<f32>(global1.b.x, arg_0.b.x, global1.b.x, global0.b.x), 0u, u_input.b, vec4<i32>(global0.a.x, global0.e.x, -1i, 2147483647i)), global3.x))) | var_1.a.xx);
    return max(~_wgslsmith_sub_u32(~0u, ~(~34827u)), ~firstTrailingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global0.c, global0.c), vec3<u32>(global3.x, 1u, global3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = vec3<u32>(_wgslsmith_mult_u32(0u, 0u), _wgslsmith_clamp_u32(~(~18785u), 29646u, _wgslsmith_div_u32(~func_1(Struct_1(global1.d.zyx, global0.b, 4294967295u, global1.d, global0.d)), ~4294967295u)), _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(global3.x, 19080u, global0.c) << (~vec3<u32>(global0.c, global1.c, global3.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(~vec3<u32>(23728u, 1u, 1u), vec3<u32>(106612u, global3.x, global1.c))), ~vec3<u32>(_wgslsmith_dot_vec2_u32(global3.zy, vec2<u32>(0u, 4294967295u)), 48588u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, global3.x, 73103u, 42318u), vec4<u32>(global1.c, 97990u, global1.c, 1u)))));
    let var_0 = all(select(select(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), true), true), vec2<bool>(true, true), vec2<bool>(true, true)), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), true), select(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(true, true), true)));
    var var_1 = func_2(func_2(Struct_1(global0.d.yzw, vec4<f32>(_wgslsmith_div_f32(global0.b.x, -793f), -191f, -1000f, 1373f), global3.x, abs(countOneBits(global1.e)), _wgslsmith_mod_vec4_i32(-global0.d, vec4<i32>(global0.e.x, global0.d.x, -2147483647i, 18615i))), 29354u, func_2(func_2(func_2(Struct_1(vec3<i32>(global1.a.x, 26348i, 0i), vec4<f32>(276f, 1000f, 112f, global1.b.x), 61985u, vec4<i32>(u_input.c.x, u_input.b.x, global0.d.x, global0.a.x), vec4<i32>(global1.a.x, u_input.a, global1.a.x, 0i)), 41804u, Struct_1(vec3<i32>(global0.e.x, global1.e.x, global1.e.x), vec4<f32>(-1177f, global1.b.x, global0.b.x, -332f), 4294967295u, vec4<i32>(global1.d.x, -3475i, global1.e.x, 19256i), global1.e), 4294967295u), 58774u, Struct_1(u_input.b.wzx, vec4<f32>(global1.b.x, -1000f, global1.b.x, 1597f), 7709u, global0.e, vec4<i32>(global1.d.x, global0.e.x, 57682i, global1.a.x)), ~8749u), firstLeadingBit(global0.c), Struct_1(reverseBits(u_input.b.xxx), vec4<f32>(global0.b.x, 515f, global0.b.x, -1334f), ~0u, -u_input.b, firstLeadingBit(vec4<i32>(global1.a.x, u_input.a, -41173i, 18776i))), _wgslsmith_sub_u32(countOneBits(4294967295u), 0u)), _wgslsmith_div_u32(select(_wgslsmith_div_u32(global0.c, 53715u), abs(global0.c), false), 2690u)), global1.c, func_2(func_2(func_2(Struct_1(vec3<i32>(u_input.c.x, 31202i, global0.e.x), vec4<f32>(284f, global1.b.x, 2185f, global1.b.x), global0.c, u_input.b, global1.d), 32636u, func_2(Struct_1(vec3<i32>(global1.e.x, 1i, u_input.c.x), vec4<f32>(global0.b.x, 1457f, -1000f, -754f), 28001u, vec4<i32>(global0.d.x, 28108i, 30684i, u_input.a), vec4<i32>(1i, u_input.b.x, -4543i, -28997i)), 1825u, Struct_1(vec3<i32>(-2147483647i, global0.e.x, u_input.b.x), global1.b, global3.x, vec4<i32>(global0.a.x, global1.d.x, u_input.b.x, u_input.b.x), global1.e), 111360u), global1.c), global0.c, func_2(Struct_1(vec3<i32>(u_input.c.x, 57385i, u_input.a), vec4<f32>(global1.b.x, -126f, global0.b.x, global1.b.x), 4294967295u, vec4<i32>(-10376i, 1i, global0.e.x, 51012i), global1.d), ~1u, Struct_1(vec3<i32>(u_input.c.x, -2147483647i, -2147483647i), vec4<f32>(global0.b.x, global1.b.x, global0.b.x, 480f), 0u, u_input.b, vec4<i32>(global1.e.x, global1.e.x, u_input.b.x, -1i)), 31582u), abs(_wgslsmith_mult_u32(0u, 26277u))), ~1u, Struct_1(firstLeadingBit(abs(vec3<i32>(1i, global1.e.x, 0i))), global1.b, select(reverseBits(global0.c), 19088u, var_0), max(abs(u_input.b), global0.e), vec4<i32>(2147483647i << (0u % 32u), _wgslsmith_div_i32(global0.a.x, 1i), 1i, _wgslsmith_dot_vec2_i32(u_input.b.zw, global0.a.yx))), ~global1.c), global1.c);
    var var_2 = func_2(Struct_1(vec3<i32>(-51974i, _wgslsmith_sub_i32(min(-47051i, var_1.e.x), -2147483647i << (global1.c % 32u)), _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(global0.e, global1.e), u_input.b)), _wgslsmith_div_vec4_f32(var_1.b, global1.b), global3.x, vec4<i32>(~_wgslsmith_sub_i32(global0.e.x, global0.a.x), var_1.e.x, u_input.c.x, -(~global1.e.x)), vec4<i32>(-select(-10729i, 2078i, true), _wgslsmith_dot_vec3_i32(global1.a, var_1.a), 2147483647i, global1.a.x)), 78249u, Struct_1(abs(countOneBits(u_input.b.ywx)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 942f, 808f, global0.b.x)), true))), func_2(Struct_1(select(vec3<i32>(32776i, -33968i, global1.d.x), u_input.b.zxw, vec3<bool>(var_0, true, false)), vec4<f32>(global0.b.x, global0.b.x, global0.b.x, var_1.b.x), 17866u, -vec4<i32>(var_1.d.x, global0.e.x, u_input.a, 49459i), _wgslsmith_div_vec4_i32(vec4<i32>(global0.d.x, global1.e.x, global1.e.x, u_input.b.x), vec4<i32>(18851i, global1.e.x, 0i, -80009i))), global1.c, func_2(Struct_1(vec3<i32>(global1.d.x, -2147483647i, var_1.a.x), vec4<f32>(var_1.b.x, global0.b.x, 1166f, 1000f), 80172u, vec4<i32>(-2147483647i, 0i, var_1.e.x, u_input.a), vec4<i32>(-61652i, global0.d.x, var_1.d.x, global1.a.x)), ~4294967295u, func_2(Struct_1(vec3<i32>(u_input.c.x, -29441i, 0i), vec4<f32>(global0.b.x, -736f, 983f, 266f), global3.x, vec4<i32>(45496i, 18406i, -2147483647i, u_input.b.x), u_input.b), 0u, Struct_1(var_1.a, vec4<f32>(711f, -1366f, 1328f, -2537f), global0.c, global1.d, vec4<i32>(global0.a.x, global1.a.x, -76177i, 26668i)), 22504u), 69035u), 4294967295u).c, -max(vec4<i32>(1i, u_input.b.x, -59477i, var_1.a.x), firstLeadingBit(global0.e)), _wgslsmith_mult_vec4_i32(-(~vec4<i32>(-19857i, u_input.b.x, 1i, u_input.b.x)), ~(~u_input.b))), countOneBits(_wgslsmith_sub_u32(48767u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global1.c, global0.c, 4294967295u), vec4<u32>(global1.c, 1u, 77617u, 28189u)) & ~global0.c)));
    global2 = _wgslsmith_sub_u32(var_2.c, _wgslsmith_mod_u32(global0.c, ~func_2(func_2(Struct_1(vec3<i32>(global1.e.x, u_input.a, global0.a.x), var_1.b, global0.c, vec4<i32>(u_input.c.x, 1i, -2368i, global1.e.x), vec4<i32>(var_1.a.x, 1i, var_1.a.x, 2147483647i)), global3.x, Struct_1(u_input.b.wwx, vec4<f32>(1431f, 806f, -553f, var_1.b.x), var_2.c, var_2.e, global1.e), var_1.c), 1u, func_2(Struct_1(global0.d.wyx, vec4<f32>(647f, global1.b.x, 941f, var_1.b.x), 0u, vec4<i32>(global0.e.x, -1i, global0.a.x, var_2.e.x), var_2.d), 1u, Struct_1(vec3<i32>(global1.e.x, 20045i, u_input.c.x), var_2.b, 33491u, u_input.b, var_2.e), 39076u), _wgslsmith_mod_u32(global1.c, 4294967295u)).c));
    let x = u_input.a;
    s_output = StorageBuffer(min(0u, max(~(var_1.c << (var_2.c % 32u)), 66743u)), global0.c << (global0.c % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.b.x), global0.b.x))), ~((vec4<u32>(global3.x, global0.c, var_1.c, global1.c) << (vec4<u32>(var_2.c, 1u, var_2.c, 1u) % vec4<u32>(32u))) & vec4<u32>(global1.c, var_1.c, global0.c, var_2.c)) ^ vec4<u32>(~_wgslsmith_div_u32(var_1.c, 20766u), ~1u, global0.c, 1u & global3.x), -10772i);
}

