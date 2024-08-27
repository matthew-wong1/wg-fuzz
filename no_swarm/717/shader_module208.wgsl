struct Struct_1 {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: vec3<bool>,
    e: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 15>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> vec3<bool> {
    global0 = array<vec2<i32>, 15>();
    var var_0 = ~abs(countOneBits(-max(vec4<i32>(0i, arg_3, -83181i, 13088i), vec4<i32>(arg_3, -30253i, 1i, arg_0))));
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    global0 = array<vec2<i32>, 15>();
    return vec3<bool>(arg_1.d.x, all(vec2<bool>(any(!arg_1.d.xy), true && (arg_2.b.b.x > 7348i))), 1i > ~reverseBits(firstTrailingBit(-40371i)));
}

fn func_2() -> Struct_3 {
    var var_0 = select(_wgslsmith_add_u32(_wgslsmith_add_u32(~u_input.c, u_input.c), 4294967295u), ~_wgslsmith_mult_u32(_wgslsmith_add_u32(0u, u_input.a), _wgslsmith_div_u32(u_input.a, 4294967295u)), false) <= (u_input.a | u_input.b.x);
    var var_1 = Struct_3(u_input.b, Struct_1(u_input.b.x, vec2<i32>(-1i) * -global0[_wgslsmith_index_u32(u_input.b.x, 15u)], _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_mod_u32(9555u, 1u)), 35891u), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), func_3(~(-2147483647i), Struct_1(u_input.a, global0[_wgslsmith_index_u32(1u, 15u)], u_input.c, vec3<bool>(false, false, false), -6084i), Struct_3(vec3<u32>(u_input.c, 4294967295u, u_input.a), Struct_1(8087u, vec2<i32>(2147483647i, -2147483647i), u_input.a, vec3<bool>(false, true, true), 2147483647i), true), firstLeadingBit(39600i)), func_3(33877i, Struct_1(0u, global0[_wgslsmith_index_u32(u_input.b.x, 15u)], 11496u, vec3<bool>(false, true, false), 1i), Struct_3(u_input.b, Struct_1(4294967295u, global0[_wgslsmith_index_u32(34269u, 15u)], 4294967295u, vec3<bool>(false, true, true), 2147483647i), true), -2147483647i)), _wgslsmith_dot_vec4_i32(vec4<i32>(26585i, ~0i, 2147483647i << (u_input.c % 32u), max(-33634i, -1i)), vec4<i32>(-6211i, _wgslsmith_add_i32(-55268i, 1i), ~83i, _wgslsmith_add_i32(1i, -10489i)))), select(any(select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), false), true)), false, 1u <= u_input.c));
    let var_2 = Struct_1(~u_input.a, _wgslsmith_clamp_vec2_i32(reverseBits(_wgslsmith_clamp_vec2_i32(var_1.b.b, vec2<i32>(0i, var_1.b.e), vec2<i32>(var_1.b.b.x, var_1.b.b.x))) ^ _wgslsmith_clamp_vec2_i32(global0[_wgslsmith_index_u32(u_input.a, 15u)], countOneBits(global0[_wgslsmith_index_u32(var_1.a.x, 15u)]), vec2<i32>(var_1.b.b.x, 8989i)), var_1.b.b << (~(~vec2<u32>(16431u, 0u)) % vec2<u32>(32u)), -global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(1u, 23689u, 27045u), u_input.c), 15u)]), 1u, !var_1.b.d, firstLeadingBit(~(-var_1.b.e)) << ((u_input.c ^ 0u) % 32u));
    let var_3 = vec2<bool>(any(vec3<bool>(any(!vec3<bool>(var_2.d.x, true, true)), false, all(vec4<bool>(var_2.d.x, true, var_1.b.d.x, false)) && func_3(var_1.b.e, Struct_1(2592u, global0[_wgslsmith_index_u32(1u, 15u)], 14659u, var_1.b.d, 1i), Struct_3(var_1.a, var_2, var_2.d.x), 1i).x)), var_2.d.x);
    var_0 = var_1.b.d.x;
    return Struct_3(var_1.a, var_1.b, true);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: vec2<i32>, arg_3: u32) -> Struct_1 {
    var var_0 = ~vec4<u32>(~0u, ~abs(24362u), ~(~1u), u_input.c);
    let var_1 = _wgslsmith_div_vec4_u32(~reverseBits(firstLeadingBit(~vec4<u32>(arg_3, 1u, u_input.c, 4294967295u))), ~(~reverseBits(vec4<u32>(6157u, 4294967295u, arg_3, 4294967295u)) ^ ~max(vec4<u32>(1u, var_0.x, 1u, 28286u), vec4<u32>(arg_3, 10528u, u_input.a, arg_3))));
    let var_2 = func_2();
    var_0 = abs(~min(_wgslsmith_clamp_vec4_u32(vec4<u32>(28186u, 45055u, var_0.x, u_input.c), vec4<u32>(1u, u_input.b.x, 53481u, arg_3) | vec4<u32>(u_input.b.x, var_2.a.x, 42116u, var_1.x), var_1), var_1));
    global0 = array<vec2<i32>, 15>();
    return func_2().b;
}

fn func_4(arg_0: Struct_1) -> Struct_2 {
    global0 = array<vec2<i32>, 15>();
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -242f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-1017f))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2533f * 1000f) - _wgslsmith_f_op_f32(select(-1573f, _wgslsmith_f_op_f32(-501f * 1000f), true))))));
    var var_1 = vec2<i32>(arg_0.b.x, _wgslsmith_mult_i32(_wgslsmith_sub_i32(max(-6263i, -38165i), func_1(_wgslsmith_f_op_f32(round(-1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-955f, -914f, 1743f, -1157f)), func_1(301f, vec4<f32>(-502f, 1876f, -994f, 583f), vec2<i32>(arg_0.b.x, arg_0.b.x), 1u).b, _wgslsmith_mod_u32(45091u, u_input.c)).e), firstTrailingBit(-2147483647i)));
    global0 = array<vec2<i32>, 15>();
    let var_2 = true;
    return Struct_2(u_input.b.yz, Struct_1(~arg_0.a, vec2<i32>(~var_1.x, _wgslsmith_sub_i32(-13813i, _wgslsmith_mult_i32(9486i, -1i))), ~(~u_input.c), vec3<bool>(!(arg_0.d.x != false), true, func_2().c), -3381i));
}

fn func_5(arg_0: Struct_2) -> Struct_1 {
    global0 = array<vec2<i32>, 15>();
    let var_0 = 0i;
    let var_1 = false;
    global0 = array<vec2<i32>, 15>();
    var var_2 = func_2();
    return Struct_1(~var_2.b.a, arg_0.b.b, arg_0.a.x, vec3<bool>(true, arg_0.b.d.x, func_2().b.d.x), countOneBits(-8542i));
}

fn func_6(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_3 {
    let var_0 = !arg_1.d.x;
    var var_1 = func_1(-1163f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1408f, -1192f, 1431f, -1000f), vec4<f32>(2764f, 1000f, -251f, 475f), vec4<bool>(true, true, arg_1.d.x, true))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(1308f, -2453f, -910f, 835f) + vec4<f32>(749f, -337f, 1349f, -361f))))), vec2<i32>(firstTrailingBit(arg_1.b.x >> (43536u % 32u)) & -1i, countOneBits(arg_1.e)), _wgslsmith_add_u32(~43813u, arg_1.c));
    let var_2 = -(~_wgslsmith_add_vec3_i32(vec3<i32>(arg_1.b.x, -1i, arg_1.e), vec3<i32>(1i, -10701i, 46791i)) >> (~_wgslsmith_clamp_vec3_u32(u_input.b, select(u_input.b, vec3<u32>(2822u, var_1.c, 107617u), arg_2.d.x), u_input.b ^ vec3<u32>(arg_1.a, var_1.c, 117851u)) % vec3<u32>(32u)));
    let var_3 = arg_1;
    let var_4 = Struct_2(u_input.b.yz, Struct_1(arg_1.c, reverseBits(arg_2.b), u_input.c, arg_0, 15216i));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(!vec3<bool>(!all(vec3<bool>(true, false, false)), all(vec4<bool>(true, true, true, true)), true), func_5(func_4(func_1(_wgslsmith_f_op_f32(-168f + 699f), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-853f, -1352f, 1120f, -1500f))), min(vec2<i32>(42715i, -16869i), vec2<i32>(-1i, 23323i)), min(3542u, 1u)))), Struct_1(19800u, vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_mult_i32(-1i, 29278i), 0i), _wgslsmith_mult_i32(_wgslsmith_div_i32(-1i, 2147483647i), ~0i)), _wgslsmith_div_u32(~111102u, func_2().b.c), vec3<bool>(true, true, true), _wgslsmith_dot_vec3_i32(abs(-vec3<i32>(-1i, 5567i, 1i)), select(countOneBits(vec3<i32>(-1i, -2147483647i, 2147483647i)), -vec3<i32>(2147483647i, -1i, 10861i), false))));
    var var_1 = max(_wgslsmith_div_vec3_i32(reverseBits(-vec3<i32>(var_0.b.e, var_0.b.b.x, var_0.b.b.x)), max(vec3<i32>(var_0.b.b.x, -1i, var_0.b.e), ~vec3<i32>(var_0.b.e, 37832i, -2147483647i)) | ~vec3<i32>(2147483647i, -74999i, var_0.b.e)), ~max(-vec3<i32>(1i, -7146i, 24907i), vec3<i32>(max(-72232i, -2147483647i), 0i, var_0.b.b.x)));
    var var_2 = func_6(!var_0.b.d, func_4(func_4(func_1(1f, _wgslsmith_f_op_vec4_f32(-vec4<f32>(362f, 181f, -1645f, 964f)), global0[_wgslsmith_index_u32(func_1(-266f, vec4<f32>(413f, -1209f, -1226f, -597f), global0[_wgslsmith_index_u32(var_0.b.c, 15u)], 0u).c, 15u)], u_input.c)).b).b, Struct_1(_wgslsmith_mult_u32(4185u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a.x, 0u, var_0.b.c), vec3<u32>(u_input.a, 28541u, 4294967295u) ^ vec3<u32>(u_input.a, 3108u, u_input.a))), var_1.yx, u_input.b.x, !var_0.b.d, _wgslsmith_mult_i32(0i, func_1(_wgslsmith_f_op_f32(select(-1549f, 634f, false)), vec4<f32>(-558f, -1000f, -1515f, 403f), ~vec2<i32>(1402i, -2147483647i), ~u_input.c).b.x))).b.d;
    let var_3 = var_0.b;
    let var_4 = func_2().b;
    var var_5 = _wgslsmith_mult_vec4_u32(vec4<u32>(abs(var_4.c) & var_3.a, abs(74781u), 1u, _wgslsmith_div_u32(var_3.a, var_0.b.a) & func_5(Struct_2(u_input.b.zx, Struct_1(var_3.c, vec2<i32>(-32144i, var_1.x), 37933u, vec3<bool>(false, true, true), 15990i))).a), select(vec4<u32>(_wgslsmith_clamp_u32(min(var_3.a, var_4.c), ~var_3.c, func_4(var_4).b.c), var_0.b.a, ~min(var_0.a.x, var_4.c), _wgslsmith_sub_u32(~0u, ~4294967295u)), vec4<u32>(28865u, 18177u, reverseBits(var_3.c) << ((4294967295u & var_3.a) % 32u), ~u_input.a), !var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(var_5.x, 1u, _wgslsmith_add_u32(_wgslsmith_div_u32(var_0.b.c, 0u), 87289u), ~37182u));
}

