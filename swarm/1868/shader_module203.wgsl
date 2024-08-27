struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec2<i32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 11> = array<bool, 11>(true, false, true, false, true, true, false, false, true, false, false);

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> u32 {
    let var_0 = 1i;
    global0 = array<bool, 11>();
    return max(_wgslsmith_add_u32(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, 0u) ^ u_input.a.x), ~select(~u_input.d.x, 53162u, false)) << (1u % 32u);
}

fn func_2(arg_0: f32) -> i32 {
    global0 = array<bool, 11>();
    let var_0 = max(~abs(~vec4<u32>(u_input.a.x, u_input.a.x, 0u, 4294967295u) << ((vec4<u32>(4294967295u, 1u, u_input.a.x, u_input.d.x) << (vec4<u32>(u_input.d.x, 0u, 4294967295u, 0u) % vec4<u32>(32u))) % vec4<u32>(32u))), vec4<u32>(u_input.d.x, ~(~1u), func_3(u_input.b.x, Struct_1(all(vec3<bool>(true, global0[_wgslsmith_index_u32(u_input.d.x, 11u)], true)), select(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], global0[_wgslsmith_index_u32(23753u, 11u)], true), vec3<bool>(global0[_wgslsmith_index_u32(1u, 11u)], true, true), false), _wgslsmith_sub_vec2_i32(u_input.b.yz, vec2<i32>(2147483647i, -31097i)), true, -610f), arg_0), select(4294967295u, ~(~u_input.d.x), true)));
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    let var_1 = u_input.c.x;
    return 2147483647i;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<u32>) -> Struct_2 {
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    global0 = array<bool, 11>();
    var var_0 = u_input.b;
    var_0 = max(u_input.c, _wgslsmith_mult_vec4_i32(abs(vec4<i32>(func_2(arg_2.e), ~0i, arg_2.c.x, -67749i)), select(~vec4<i32>(14267i, arg_2.c.x, 0i, -47895i) >> (~vec4<u32>(arg_1, u_input.a.x, arg_0.x, u_input.a.x) % vec4<u32>(32u)), countOneBits(u_input.c), true)));
    return Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(arg_2.e * -606f), arg_2.e, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -890f))), _wgslsmith_div_vec3_f32(vec3<f32>(-123f, -160f, arg_2.e), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.e), _wgslsmith_f_op_f32(f32(-1f) * -1133f), -591f)))), Struct_1(false, vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x ^ ~u_input.d.x, 11u)], !(1355i > arg_2.c.x), true), u_input.b.yx, false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1805f, arg_2.e) + arg_2.e))), !any(select(arg_2.b, arg_2.b, true || arg_2.a)));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_2) -> vec4<bool> {
    global0 = array<bool, 11>();
    let var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(ceil(-521f));
    var var_2 = arg_2;
    let var_3 = func_1(abs(vec3<u32>(4294967295u, 0u, 4294967295u)), _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1, 39028u, 1u, 0u), _wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 4294967295u, arg_1, u_input.a.x), vec4<u32>(arg_1, u_input.d.x, u_input.a.x, 0u), vec4<u32>(70289u, 74379u, 26880u, 13150u))) | (vec4<u32>(arg_1, 50648u, 1u, arg_0) << (vec4<u32>(100104u, 24693u, u_input.a.x, 110639u) % vec4<u32>(32u))), abs(vec4<u32>(1u | arg_1, _wgslsmith_mult_u32(42492u, 21362u), arg_1, arg_0 >> (arg_0 % 32u)))), func_1(min(~(~u_input.a), firstTrailingBit(u_input.a)), u_input.d.x, Struct_1(true, arg_2.b.b, arg_2.b.c, arg_2.c, func_1(~u_input.a, reverseBits(91887u), Struct_1(var_0.b.a, vec3<bool>(true, false, global0[_wgslsmith_index_u32(25097u, 11u)]), var_2.b.c, var_0.c, -243f), ~vec2<u32>(53344u, 31719u)).a.x), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yx, select(vec2<u32>(arg_1, 0u), vec2<u32>(3484u, arg_0), arg_2.c)), vec2<u32>(arg_0, ~12926u))).b, _wgslsmith_div_vec2_u32(firstLeadingBit(select(~u_input.a.yx, ~u_input.a.zy, var_2.b.b.xx)), u_input.a.xx));
    return select(select(!(!(!vec4<bool>(arg_2.b.a, true, false, true))), vec4<bool>(true, func_1(~u_input.a, 1u, var_3.b, u_input.d).b.d, var_0.c, true), !(!(!vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 11u)], false, arg_2.c, true)))), !vec4<bool>(any(var_0.b.b.yy) & true, true, any(func_1(vec3<u32>(0u, arg_1, 111402u), arg_0, Struct_1(var_3.b.b.x, vec3<bool>(false, true, false), vec2<i32>(var_3.b.c.x, u_input.c.x), global0[_wgslsmith_index_u32(1u, 11u)], var_1), vec2<u32>(10003u, 1u)).b.b.zx), true), !any(select(select(vec2<bool>(var_0.c, false), var_2.b.b.xx, vec2<bool>(false, var_3.c)), !vec2<bool>(true, arg_2.c), func_1(vec3<u32>(u_input.d.x, 0u, 1u), u_input.a.x, Struct_1(false, vec3<bool>(true, true, global0[_wgslsmith_index_u32(1u, 11u)]), var_0.b.c, true, -452f), vec2<u32>(u_input.a.x, 1u)).c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1924f;
    let var_1 = select(~u_input.c | abs(min(-vec4<i32>(u_input.b.x, -6565i, u_input.c.x, 0i), ~vec4<i32>(2147483647i, 1i, u_input.b.x, 2147483647i))), ~min(max(vec4<i32>(u_input.b.x, u_input.c.x, u_input.c.x, u_input.c.x), vec4<i32>(u_input.b.x, u_input.b.x, 2147483647i, u_input.c.x) & u_input.c), _wgslsmith_add_vec4_i32(u_input.b, firstTrailingBit(u_input.c))), select(select(vec4<bool>(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a.x, 57161u), 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)], !global0[_wgslsmith_index_u32(u_input.d.x, 11u)], u_input.c.x < -1i), vec4<bool>(true, global0[_wgslsmith_index_u32(~4294967295u, 11u)], !global0[_wgslsmith_index_u32(4294967295u, 11u)], true), func_4(1u, _wgslsmith_mod_u32(u_input.d.x, u_input.a.x), func_1(vec3<u32>(u_input.a.x, 1u, u_input.d.x), u_input.a.x, Struct_1(global0[_wgslsmith_index_u32(1u, 11u)], vec3<bool>(true, global0[_wgslsmith_index_u32(15960u, 11u)], global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec2<i32>(2147483647i, -43761i), global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 1467f), u_input.a.xy))), func_4(u_input.a.x | ~4294967295u, 44516u, Struct_2(func_1(vec3<u32>(u_input.d.x, u_input.a.x, 50127u), u_input.a.x, Struct_1(false, vec3<bool>(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true, true), vec2<i32>(-22558i, u_input.b.x), global0[_wgslsmith_index_u32(1887u, 11u)], -1485f), vec2<u32>(u_input.a.x, u_input.a.x)).a, func_1(vec3<u32>(u_input.a.x, u_input.d.x, 15712u), u_input.a.x, Struct_1(false, vec3<bool>(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], false, global0[_wgslsmith_index_u32(u_input.d.x, 11u)]), vec2<i32>(u_input.c.x, 2147483647i), true, -755f), u_input.d).b, false)), u_input.d.x > 11505u));
    var var_2 = var_1;
    var_2 = select(vec4<i32>(~_wgslsmith_mult_i32(func_1(vec3<u32>(4294967295u, 0u, 4294967295u), 1u, Struct_1(false, vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.a.x, 11u)], true), var_1.yz, global0[_wgslsmith_index_u32(1u, 11u)], -468f), vec2<u32>(u_input.d.x, 1u)).b.c.x, _wgslsmith_mod_i32(var_1.x, 1i)), 2147483647i, 1i, _wgslsmith_add_i32(_wgslsmith_sub_i32(var_2.x, var_2.x), -1i)), vec4<i32>(~var_1.x, u_input.c.x, ~(-u_input.c.x) & ~(-15323i), _wgslsmith_mod_i32(28750i, -2147483647i) >> (_wgslsmith_dot_vec2_u32(u_input.a.yy, vec2<u32>(43932u, u_input.a.x) << (u_input.d % vec2<u32>(32u))) % 32u)), all(func_1(_wgslsmith_sub_vec3_u32(select(u_input.a, u_input.a, global0[_wgslsmith_index_u32(u_input.a.x, 11u)]), abs(vec3<u32>(u_input.a.x, u_input.a.x, 0u))), u_input.d.x, func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, 75887u), vec3<u32>(37273u, u_input.a.x, u_input.a.x)), u_input.d.x, func_1(u_input.a, 4294967295u, Struct_1(global0[_wgslsmith_index_u32(0u, 11u)], vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.d.x, 11u)], true), var_2.yx, global0[_wgslsmith_index_u32(48255u, 11u)], -332f), u_input.d).b, u_input.d).b, ~u_input.d).b.b));
    global0 = array<bool, 11>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -963f));
    let var_3 = Struct_2(vec3<f32>(1f, 1f, 1f), Struct_1(func_1(~u_input.a, _wgslsmith_sub_u32(1u, 1u), func_1(u_input.a, 20479u, Struct_1(global0[_wgslsmith_index_u32(u_input.a.x, 11u)], vec3<bool>(false, true, true), vec2<i32>(u_input.c.x, var_2.x), global0[_wgslsmith_index_u32(u_input.d.x, 11u)], -246f), vec2<u32>(u_input.d.x, u_input.a.x)).b, u_input.a.xx).a.x < func_1(vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x) ^ vec3<u32>(u_input.a.x, 47212u, u_input.a.x), u_input.a.x, Struct_1(global0[_wgslsmith_index_u32(0u, 11u)], vec3<bool>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(32444u, 11u)]), vec2<i32>(u_input.c.x, u_input.b.x), global0[_wgslsmith_index_u32(4294967295u, 11u)], 503f), ~vec2<u32>(u_input.a.x, u_input.a.x)).b.e, !func_4(~34169u, 0u >> (u_input.a.x % 32u), Struct_2(vec3<f32>(-376f, -451f, 418f), Struct_1(false, vec3<bool>(false, false, false), vec2<i32>(0i, var_2.x), global0[_wgslsmith_index_u32(u_input.a.x, 11u)], -404f), true)).xxy, abs(u_input.c.wy), true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(150f, 1149f, global0[_wgslsmith_index_u32(3756u, 11u)] || true)), func_1(vec3<u32>(0u, 9169u, u_input.d.x), _wgslsmith_div_u32(0u, u_input.d.x), Struct_1(global0[_wgslsmith_index_u32(74637u, 11u)], vec3<bool>(global0[_wgslsmith_index_u32(48922u, 11u)], global0[_wgslsmith_index_u32(1u, 11u)], global0[_wgslsmith_index_u32(u_input.d.x, 11u)]), vec2<i32>(2147483647i, 12627i), true, -315f), reverseBits(u_input.d)).a.x))), all(!func_1(vec3<u32>(u_input.a.x, u_input.d.x, u_input.d.x), _wgslsmith_add_u32(0u, u_input.d.x), Struct_1(global0[_wgslsmith_index_u32(u_input.d.x, 11u)], vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(17888u, 11u)], global0[_wgslsmith_index_u32(73692u, 11u)]), vec2<i32>(2147483647i, var_2.x), global0[_wgslsmith_index_u32(u_input.d.x, 11u)], 1507f), ~vec2<u32>(0u, u_input.d.x)).b.b.xx));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

