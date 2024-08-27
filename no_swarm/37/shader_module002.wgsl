struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: u32,
    d: u32,
    e: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<i32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 12>;

var<private> global1: Struct_4;

var<private> global2: array<bool, 2> = array<bool, 2>(true, true);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: u32, arg_1: vec3<i32>, arg_2: i32, arg_3: f32) -> i32 {
    var var_0 = abs(arg_2) >= _wgslsmith_sub_i32(2147483647i, _wgslsmith_sub_i32(2147483647i, ~(-1i)));
    global1 = Struct_4(44670i, vec4<i32>(-global1.b.x, _wgslsmith_mod_i32(_wgslsmith_div_i32(_wgslsmith_div_i32(-26862i, 43651i), 22311i), _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, arg_1.x, 0i) << (vec3<u32>(arg_0, 1u, u_input.a.x) % vec3<u32>(32u)), -global1.b.ywy)), arg_1.x, select(-firstLeadingBit(-914i), _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-17538i, global1.b.x, arg_2, arg_2), global1.b), countOneBits(1i)), all(!vec3<bool>(global1.c, false, false)))), false && ((max(arg_0, u_input.b) != 1u) || true));
    let var_1 = Struct_3(1246f, Struct_2(true, ~u_input.a.x, -10653i), 11050u & _wgslsmith_sub_u32(arg_0, u_input.a.x), u_input.a.x, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_3, 314f, 1668f, 134f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, global0[_wgslsmith_index_u32(37636u, 12u)], global0[_wgslsmith_index_u32(u_input.a.x, 12u)], global0[_wgslsmith_index_u32(33756u, 12u)]))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 12u)], -358f, -749f, global0[_wgslsmith_index_u32(9508u, 12u)]) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, global0[_wgslsmith_index_u32(4294967295u, 12u)], arg_3, arg_3))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3, 1000f, 2045f, 643f))))), true)));
    let var_2 = var_1;
    global0 = array<f32, 12>();
    return countOneBits(-_wgslsmith_sub_i32(95751i, var_2.b.c));
}

fn func_2(arg_0: u32) -> Struct_1 {
    global2 = array<bool, 2>();
    global2 = array<bool, 2>();
    var var_0 = Struct_4(global1.a, _wgslsmith_mult_vec4_i32(vec4<i32>(2863i, func_3(u_input.a.x, vec3<i32>(global1.a, global1.a, 27576i), global1.a, -1042f), global1.a, global1.b.x), vec4<i32>(global1.a | -2240i, global1.a, _wgslsmith_sub_i32(7053i, global1.b.x), 1i)) ^ min(~vec4<i32>(7272i, global1.a, global1.a, global1.b.x) << (reverseBits(u_input.a) % vec4<u32>(32u)), -(global1.b | vec4<i32>(-1i, -2147483647i, global1.a, global1.b.x))), false);
    global1 = Struct_4(-_wgslsmith_mult_i32(var_0.b.x, _wgslsmith_mod_i32(var_0.a, var_0.a)), -var_0.b, true);
    var_0 = Struct_4(var_0.a & (_wgslsmith_add_i32(global1.b.x, i32(-1i) * -1i) ^ 11122i), _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(75970i, 17224i, global1.b.x, -1i)), abs(min(vec4<i32>(global1.b.x, 2147483647i, 2147483647i, global1.a), vec4<i32>(0i, var_0.b.x, 0i, -2119i))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, var_0.b.x, global1.a, global1.a), global1.b), -global1.b)), vec4<i32>(global1.b.x, -global1.a, firstLeadingBit(var_0.b.x), -37526i)), _wgslsmith_sub_u32(~_wgslsmith_add_u32(45589u, 35351u), _wgslsmith_add_u32(u_input.b, 0u) & countOneBits(63211u)) > 0u);
    return Struct_1(~(~(~vec3<u32>(0u, arg_0, arg_0))) >> (vec3<u32>(_wgslsmith_add_u32(max(4294967295u, arg_0), arg_0), 4294967295u, _wgslsmith_dot_vec3_u32(abs(u_input.a.yzy), vec3<u32>(arg_0, 4294967295u, arg_0))) % vec3<u32>(32u)), max(~u_input.b, 81759u), !vec3<bool>((global0[_wgslsmith_index_u32(13802u, 12u)] >= global0[_wgslsmith_index_u32(u_input.b, 12u)]) | false, true, true));
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = array<f32, 12>();
    var var_0 = Struct_4(-abs(global1.b.x << (arg_0.b % 32u)), _wgslsmith_clamp_vec4_i32(global1.b, vec4<i32>(firstTrailingBit(70345i) ^ _wgslsmith_add_i32(40956i, global1.b.x), -abs(-16551i), ~abs(global1.a), global1.b.x), global1.b), false);
    let var_1 = arg_0.a;
    var var_2 = ~(-vec2<i32>(max(var_0.b.x, firstTrailingBit(var_0.b.x)), abs(global1.a)));
    let var_3 = vec4<i32>(abs(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(-22092i, 10861i, global1.b.x, 10663i), global1.b))), ~(~var_0.a), -15526i, var_2.x << (5643u % 32u));
    return Struct_2(global2[_wgslsmith_index_u32(1u, 2u)], _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.a.wx, ~vec2<u32>(26301u, 0u)), var_1.x), -2147483647i);
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global1 = Struct_4(abs(2147483647i), global1.b, (true || (true | (arg_0.x >= 1i))) & true);
    var var_0 = func_4(func_2(~(~countOneBits(u_input.a.x))));
    var_0 = func_4(Struct_1(_wgslsmith_sub_vec3_u32((u_input.a.wzz & u_input.a.wzy) | (vec3<u32>(var_0.b, 40500u, var_0.b) ^ vec3<u32>(u_input.a.x, 64039u, 71408u)), vec3<u32>(u_input.b, var_0.b, 1u) ^ vec3<u32>(2184u, 11137u, var_0.b)), func_4(func_2(1u)).b, func_2(_wgslsmith_clamp_u32(21759u, var_0.b, 1u)).c));
    global0 = array<f32, 12>();
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~func_1(-min(global1.b.ww, global1.b.xz)));
    global1 = Struct_4(_wgslsmith_dot_vec4_i32(vec4<i32>(max(global1.b.x, select(global1.a, global1.a, global1.c)), global1.a, -30502i, global1.b.x), global1.b), reverseBits(vec4<i32>(-2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(15309i, global1.b.x, global1.a, -7132i), vec4<i32>(0i, global1.a, 14606i, global1.a) << (u_input.a % vec4<u32>(32u))), ~_wgslsmith_sub_i32(global1.b.x, global1.a), _wgslsmith_add_i32(-global1.a, global1.a ^ 1i))), !(global1.b.x <= -global1.a));
    var var_1 = global1.a;
    var var_2 = !select(select(select(vec4<bool>(false, global2[_wgslsmith_index_u32(75638u, 2u)], global1.c, global1.c), !vec4<bool>(global1.c, global2[_wgslsmith_index_u32(59766u, 2u)], global2[_wgslsmith_index_u32(u_input.b, 2u)], true), select(false, true, false)), select(select(vec4<bool>(global1.c, global2[_wgslsmith_index_u32(4294967295u, 2u)], true, false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.a.x, 2u)], global1.c, global1.c, global2[_wgslsmith_index_u32(5416u, 2u)]), true), vec4<bool>(global1.c, global1.c, true, global1.c), true), vec4<bool>(!global1.c, func_4(Struct_1(vec3<u32>(3844u, u_input.a.x, 16267u), u_input.a.x, vec3<bool>(true, global1.c, global2[_wgslsmith_index_u32(u_input.a.x, 2u)]))).a, global2[_wgslsmith_index_u32(7081u, 2u)], false)), vec4<bool>(false, select(global2[_wgslsmith_index_u32(u_input.a.x, 2u)] & false, !global1.c, global0[_wgslsmith_index_u32(u_input.b, 12u)] <= global0[_wgslsmith_index_u32(0u, 12u)]), select(global1.c & global1.c, true, false), false && (u_input.a.x == 1u)), global2[_wgslsmith_index_u32(~(~(~47239u)), 2u)]);
    var var_3 = vec2<bool>(false, global2[_wgslsmith_index_u32(func_2(abs(_wgslsmith_clamp_u32(0u, 15259u, 53106u) >> (_wgslsmith_div_u32(0u, 47147u) % 32u))).a.x, 2u)]);
    let var_4 = Struct_4(firstLeadingBit(func_4(func_2(u_input.a.x)).c), min(vec4<i32>(2147483647i, global1.a, -abs(-16017i), func_4(func_2(1u)).c), vec4<i32>(3192i, -51948i, abs(global1.b.x & -1i), ~(global1.b.x << (u_input.a.x % 32u)))), true);
    let var_5 = -firstTrailingBit(vec3<i32>(-9754i, _wgslsmith_mult_i32(global1.a, var_4.a), _wgslsmith_dot_vec2_i32(vec2<i32>(12502i, 2147483647i), vec2<i32>(var_4.b.x, -2147483647i))) & (_wgslsmith_div_vec3_i32(global1.b.zzw, global1.b.xzx) | countOneBits(vec3<i32>(var_4.b.x, global1.a, 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(~select(u_input.a.x, 0u, true), u_input.a.x, ~(~39451u)), (vec3<u32>(4112u, 24767u, 44634u) << ((vec3<u32>(u_input.a.x, 1u, u_input.a.x) >> (u_input.a.wzy % vec3<u32>(32u))) % vec3<u32>(32u))) << (countOneBits(_wgslsmith_sub_vec3_u32(u_input.a.wxx, u_input.a.wzx)) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(countOneBits(abs(39094u)), 12u)]);
}

