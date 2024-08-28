struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6> = array<Struct_1, 6>(Struct_1(1913f, vec4<bool>(true, false, false, false), true), Struct_1(-281f, vec4<bool>(false, false, false, false), true), Struct_1(576f, vec4<bool>(true, false, true, false), true), Struct_1(-1000f, vec4<bool>(true, true, true, true), true), Struct_1(484f, vec4<bool>(true, false, false, false), true), Struct_1(1130f, vec4<bool>(false, false, false, false), true));

var<private> global1: Struct_1 = Struct_1(544f, vec4<bool>(true, false, true, false), true);

var<private> global2: array<vec4<i32>, 32> = array<vec4<i32>, 32>(vec4<i32>(2147483647i, 2147483647i, -1689i, -1016i), vec4<i32>(-52327i, i32(-2147483648), -1i, -58110i), vec4<i32>(-46654i, 9964i, 38493i, -5660i), vec4<i32>(42978i, 1i, 1i, 0i), vec4<i32>(-1i, 31557i, 18004i, -15202i), vec4<i32>(2147483647i, 26598i, 3746i, i32(-2147483648)), vec4<i32>(26517i, i32(-2147483648), 2147483647i, -1i), vec4<i32>(-31293i, 46259i, -29535i, 1i), vec4<i32>(-1i, i32(-2147483648), 29875i, 1i), vec4<i32>(1i, 0i, 1i, 2147483647i), vec4<i32>(-1i, -3453i, i32(-2147483648), -12248i), vec4<i32>(i32(-2147483648), -9252i, -183i, 17600i), vec4<i32>(2147483647i, -1i, -30706i, -42325i), vec4<i32>(-1i, 591i, 41346i, 1i), vec4<i32>(30258i, 0i, -1i, -11786i), vec4<i32>(31859i, 0i, 13886i, 26056i), vec4<i32>(1i, 33133i, -16820i, 1i), vec4<i32>(1i, 0i, 0i, -27517i), vec4<i32>(-27080i, 29756i, 2147483647i, 1i), vec4<i32>(56706i, -6270i, i32(-2147483648), 0i), vec4<i32>(0i, 1i, -1i, 18843i), vec4<i32>(15128i, 2147483647i, -16173i, -24430i), vec4<i32>(-1i, -16711i, 28034i, 17955i), vec4<i32>(-28789i, 15728i, -7574i, -21776i), vec4<i32>(-5047i, 22903i, -14325i, -1i), vec4<i32>(0i, -73913i, -1i, -19759i), vec4<i32>(i32(-2147483648), -408i, i32(-2147483648), 1i), vec4<i32>(1i, -56070i, 0i, 2147483647i), vec4<i32>(-44587i, i32(-2147483648), 21737i, -48406i), vec4<i32>(31755i, i32(-2147483648), -56294i, i32(-2147483648)), vec4<i32>(-19144i, -7255i, -1i, i32(-2147483648)), vec4<i32>(22023i, 0i, -10941i, 0i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: vec3<bool>) -> vec2<u32> {
    let var_0 = u_input.a.x;
    var var_1 = global0[_wgslsmith_index_u32(~(~u_input.c), 6u)];
    var var_2 = arg_0;
    var var_3 = global1.b;
    let var_4 = vec4<i32>(var_0, var_0, abs(-var_0), -1i);
    return ~abs(~vec2<u32>(0u, u_input.c));
}

fn func_2(arg_0: vec2<u32>) -> Struct_1 {
    var var_0 = abs(_wgslsmith_dot_vec3_i32(-max(-vec3<i32>(u_input.b.x, u_input.a.x, 2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b.x, 52991i, -2147483647i), vec3<i32>(u_input.b.x, 12361i, 1i), vec3<i32>(1i, 0i, u_input.b.x))), reverseBits(vec3<i32>(~89196i, ~0i, ~2147483647i))));
    let var_1 = min(arg_0, arg_0);
    global2 = array<vec4<i32>, 32>();
    let var_2 = u_input.c;
    var var_3 = func_3(global1.a, global1.b.zyz) | countOneBits(var_1);
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(1u, var_3.x), 6u)];
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global2 = array<vec4<i32>, 32>();
    let var_0 = _wgslsmith_f_op_f32(global1.a + -182f);
    let var_1 = vec3<u32>(_wgslsmith_mod_u32(u_input.c, firstTrailingBit(~u_input.d)), select(72074u, 1u, true), _wgslsmith_sub_u32(1u ^ u_input.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), min(vec2<u32>(u_input.c, u_input.d), vec2<u32>(u_input.c, 22491u)))));
    global2 = array<vec4<i32>, 32>();
    var var_2 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(656f - arg_1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global1.a, _wgslsmith_f_op_f32(f32(-1f) * -982f)))))), !select(select(arg_1.b, !vec4<bool>(arg_1.b.x, global1.c, true, true), vec4<bool>(false, true, false, arg_0.x)), vec4<bool>(!arg_1.b.x, global1.b.x, arg_0.x, true), true), any(!vec3<bool>(false & global1.c, arg_1.b.x, any(vec4<bool>(true, false, global1.b.x, false)))));
    return u_input.c;
}

fn func_1(arg_0: bool, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = u_input.a.x;
    var var_1 = arg_1.b.x;
    global0 = array<Struct_1, 6>();
    let var_2 = _wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(~vec3<u32>(0u, 0u, 1u)), ~(~(vec3<u32>(34191u, u_input.c, 7955u) << (vec3<u32>(u_input.d, u_input.d, 6599u) % vec3<u32>(32u))))), vec3<u32>(func_4(arg_3.b.xw, func_2(select(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.d, 66962u), arg_0))), ~(~(~u_input.d)), 1u));
    var_0 = _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(reverseBits(23550i), 0i >> (var_2.x % 32u)), -(vec2<i32>(u_input.b.x, u_input.a.x) >> (var_2.yx % vec2<u32>(32u)))) | u_input.a, vec2<i32>(i32(-1i) * -576i, 2147483647i));
    return -(~u_input.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(min(1999f, _wgslsmith_f_op_f32(max(-522f, _wgslsmith_f_op_f32(max(global1.a, -437f)))))), select(!(!select(vec4<bool>(false, true, global1.c, true), global1.b, global1.b)), !vec4<bool>(global1.c, false, false, global1.c), select(vec4<bool>(!global1.b.x, true, true, global1.c), !global1.b, vec4<bool>(all(global1.b), true, global1.c | global1.c, true))), u_input.d >= 1u);
    global0 = array<Struct_1, 6>();
    let var_1 = vec3<i32>(u_input.a.x << (5717u % 32u), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(-1i ^ u_input.b.x), u_input.b.x), ~_wgslsmith_div_i32(~(-2147483647i), func_1(false, Struct_1(global1.a, var_0.b, false), vec3<f32>(1488f, 1015f, var_0.a), var_0)), 0i), abs(0i));
    var var_2 = Struct_1(-1000f, !vec4<bool>(true, global1.b.x, true, var_0.c), func_2(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(49357u, u_input.c), vec2<u32>(24072u, 1u)), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 135006u), abs(vec2<u32>(u_input.c, 4294967295u)), vec2<u32>(16489u, u_input.d) & vec2<u32>(u_input.d, 1u)))).c);
    var var_3 = (select(~global2[_wgslsmith_index_u32(u_input.c, 32u)], _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b.x, var_1.x, var_1.x, u_input.b.x), abs(vec4<i32>(2147483647i, var_1.x, 42100i, 17648i)), vec4<i32>(var_1.x, var_1.x, -1i, 1i)), all(!var_2.b.wwz)) >> (~(~vec4<u32>(u_input.d, 13321u, 0u, 1u) >> (vec4<u32>(u_input.c, u_input.d, u_input.c, 4294967295u) % vec4<u32>(32u))) % vec4<u32>(32u))) << (~((_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.d, 68207u, 0u, u_input.c), vec4<u32>(u_input.d, u_input.d, u_input.d, 0u)) >> (~vec4<u32>(u_input.c, 1u, 26048u, u_input.c) % vec4<u32>(32u))) << (reverseBits(vec4<u32>(0u, 4294967295u, u_input.c, u_input.d) << (vec4<u32>(u_input.c, u_input.d, u_input.d, u_input.c) % vec4<u32>(32u))) % vec4<u32>(32u))) % vec4<u32>(32u));
    var var_4 = countOneBits(-min(u_input.a, vec2<i32>(1i, ~var_1.x)));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)), vec4<bool>(var_0.b.x, true, true, func_2(vec2<u32>(74251u, u_input.c)).b.x), any(func_2(~_wgslsmith_mult_vec2_u32(vec2<u32>(18420u, 60992u), vec2<u32>(71291u, 2180u))).b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(func_3(func_2(abs(vec2<u32>(u_input.c, u_input.d))).a, !func_2(vec2<u32>(u_input.c, u_input.c)).b.yzx).x, func_3(-1474f, vec3<bool>(var_0.c && false, var_5.c, true)).x), ~_wgslsmith_div_vec4_i32(-_wgslsmith_div_vec4_i32(global2[_wgslsmith_index_u32(38180u, 32u)], global2[_wgslsmith_index_u32(11921u, 32u)]), abs(global2[_wgslsmith_index_u32(~14982u, 32u)])), vec2<i32>(min(_wgslsmith_add_i32(10971i, _wgslsmith_sub_i32(23012i, -1i)), i32(-1i) * -var_4.x), ~(-abs(-12003i))), u_input.c);
}

