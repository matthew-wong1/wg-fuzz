struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec2<bool>,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 15>;

var<private> global1: i32 = 61434i;

var<private> global2: array<u32, 1> = array<u32, 1>(29675u);

var<private> global3: array<Struct_3, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global0 = array<u32, 15>();
    return ~40161u;
}

fn func_2(arg_0: vec2<f32>, arg_1: u32) -> Struct_1 {
    global3 = array<Struct_3, 25>();
    global1 = u_input.a.x;
    global3 = array<Struct_3, 25>();
    let var_0 = Struct_1(~(-25083i), vec4<u32>(1u, ~1u, u_input.c, _wgslsmith_add_u32(4294967295u, func_3(Struct_2(Struct_1(u_input.a.x, vec4<u32>(17878u, arg_1, 1u, 68914u), vec4<u32>(53794u, 1u, 4294967295u, arg_1), 560f, vec2<u32>(global0[_wgslsmith_index_u32(u_input.b, 15u)], arg_1)), Struct_1(2147483647i, vec4<u32>(54410u, 0u, global2[_wgslsmith_index_u32(20097u, 1u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 15u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(94309u, 15u)], 15u)], 15u)], 24530u, 74067u, global0[_wgslsmith_index_u32(0u, 15u)]), -1402f, vec2<u32>(global0[_wgslsmith_index_u32(u_input.d, 15u)], global0[_wgslsmith_index_u32(4033u, 15u)])), Struct_1(u_input.a.x, vec4<u32>(22478u, arg_1, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(82445u, 1u)], 15u)], 1u)], 34318u), vec4<u32>(0u, 50721u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 15u)], global0[_wgslsmith_index_u32(28477u, 15u)]), arg_0.x, vec2<u32>(1u, 20301u)), arg_0)))), vec4<u32>(0u, 1u, arg_1, _wgslsmith_div_u32(arg_1, 65307u)) ^ firstTrailingBit(reverseBits(max(vec4<u32>(80236u, 4294967295u, 4294967295u, global2[_wgslsmith_index_u32(0u, 1u)]), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 28187u)))), -141f, vec2<u32>(21462u, select(1u >> (arg_1 % 32u), u_input.d ^ ~arg_1, true)));
    var var_1 = select(vec3<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false))), true, all(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), false))), select(vec3<bool>(_wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x) >= ~u_input.a.x, any(vec3<bool>(true, false, true)), true | any(vec4<bool>(true, false, true, false))), vec3<bool>(true, true, true), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, !(global0[_wgslsmith_index_u32(var_0.c.x, 15u)] != 0u))), !vec3<bool>(any(vec4<bool>(true, true, true, true)), select(any(vec4<bool>(false, true, false, true)), select(false, true, true), true), false));
    return var_0;
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: Struct_1) -> vec4<u32> {
    var var_0 = !any(vec2<bool>(all(vec4<bool>(false, false, false, true)), all(vec4<bool>(true, true, true, true))));
    let var_1 = select(~_wgslsmith_mult_vec3_u32(select(reverseBits(vec3<u32>(arg_3.c.x, 24997u, 4294967295u)), _wgslsmith_add_vec3_u32(arg_0.b.b.zwy, arg_3.b.yyx), true), vec3<u32>(u_input.b, 0u, firstTrailingBit(4294967295u))), _wgslsmith_div_vec3_u32(~arg_0.c.c.zzw, vec3<u32>(max(1u, 56044u), _wgslsmith_div_u32(_wgslsmith_mult_u32(0u, arg_0.b.e.x), firstLeadingBit(0u)), ~arg_3.c.x)), true);
    return vec4<u32>(u_input.c, ~(~func_2(arg_0.d, ~arg_3.e.x).b.x), abs(4294967295u), var_1.x | ~(~arg_3.c.x));
}

fn func_5(arg_0: vec4<u32>, arg_1: vec2<f32>, arg_2: vec3<i32>) -> Struct_3 {
    var var_0 = _wgslsmith_mod_i32(select(~(-_wgslsmith_add_i32(u_input.a.x, -1i)), arg_2.x, true), u_input.a.x);
    global3 = array<Struct_3, 25>();
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1676f - arg_1.x)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-1651f + arg_1.x))))));
    var_0 = 57352i;
    global1 = 7675i;
    return Struct_3(Struct_2(Struct_1(arg_2.x, firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 15u)], global2[_wgslsmith_index_u32(u_input.c, 1u)], u_input.d, arg_0.x)), vec4<u32>(~1u, arg_0.x, global2[_wgslsmith_index_u32(61139u, 1u)] << (4294967295u % 32u), global2[_wgslsmith_index_u32(~4294967295u, 1u)]), _wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1268f))), ~max(vec2<u32>(global2[_wgslsmith_index_u32(0u, 1u)], 25036u), vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b, 15u)], 15u)]))), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.x, arg_1.x) + _wgslsmith_f_op_vec2_f32(-arg_1)), (4294967295u << (global0[_wgslsmith_index_u32(43419u, 15u)] % 32u)) << (_wgslsmith_mod_u32(4294967295u, 14105u) % 32u)), func_2(arg_1, _wgslsmith_mult_u32(abs(2549u), u_input.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, arg_1.x), vec2<f32>(-406f, 819f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(arg_1, arg_1)))))));
}

fn func_1() -> Struct_2 {
    var var_0 = func_5(func_4(Struct_2(func_2(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(615f, -280f))), ~35641u), Struct_1(~u_input.a.x, vec4<u32>(31681u, u_input.b, 0u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 15u)]), abs(vec4<u32>(64337u, u_input.c, u_input.c, u_input.d)), -208f, vec2<u32>(4294967295u, 4294967295u) >> (vec2<u32>(u_input.b, 14748u) % vec2<u32>(32u))), Struct_1(u_input.a.x, ~vec4<u32>(4294967295u, 0u, 1u, u_input.d), abs(vec4<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 1u)], 15u)], 1u)], 13242u, 4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 1u)], 1u)])), -367f, ~vec2<u32>(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.d, 1u)], 15u)], u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1583f, -1204f), vec2<f32>(384f, -999f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1158f, 196f) + _wgslsmith_f_op_f32(sign(880f)))), 1f, Struct_1(u_input.a.x, min(vec4<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 15u)], 1u)], 4294967295u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(6987u, 1u)], 15u)], global2[_wgslsmith_index_u32(u_input.c, 1u)]), vec4<u32>(u_input.b, 4294967295u, 38080u, global0[_wgslsmith_index_u32(0u, 15u)])), _wgslsmith_div_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(u_input.c, 15u)], 1u, 36963u, global2[_wgslsmith_index_u32(u_input.b, 1u)]), ~vec4<u32>(u_input.c, global2[_wgslsmith_index_u32(95612u, 1u)], 15466u, 4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1593f, -468f) * -1000f), func_2(vec2<f32>(2048f, 135f), abs(global0[_wgslsmith_index_u32(u_input.c, 15u)])).c.wx)), vec2<f32>(-2058f, func_2(vec2<f32>(1f, _wgslsmith_f_op_f32(832f + 1941f)), ~13395u).d), ~(-(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 0i, u_input.a.x)))));
    var var_1 = func_5(~vec4<u32>(global0[_wgslsmith_index_u32(~var_0.a.c.e.x, 15u)] | 42950u, ~_wgslsmith_sub_u32(u_input.d, var_0.a.a.b.x), 0u ^ _wgslsmith_mod_u32(37066u, global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 1u)], 15u)]), global2[_wgslsmith_index_u32(func_3(Struct_2(Struct_1(var_0.a.a.a, var_0.a.c.c, vec4<u32>(var_0.a.b.e.x, 1u, global2[_wgslsmith_index_u32(71693u, 1u)], 29464u), var_0.a.d.x, var_0.a.b.b.wx), Struct_1(-19043i, var_0.a.b.b, var_0.a.a.b, 409f, vec2<u32>(71857u, 44179u)), Struct_1(37770i, vec4<u32>(0u, 43581u, 8812u, global0[_wgslsmith_index_u32(var_0.a.a.c.x, 15u)]), vec4<u32>(global0[_wgslsmith_index_u32(67441u, 15u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 15u)], 15u)], 21877u, 4294967295u), var_0.a.b.d, var_0.a.a.b.wz), var_0.a.d)), 1u)]), var_0.a.d, ~_wgslsmith_mult_vec3_i32(abs(~vec3<i32>(var_0.a.c.a, 50140i, 52741i)), vec3<i32>(-1i, _wgslsmith_mult_i32(u_input.a.x, -28709i), -u_input.a.x)));
    var var_2 = var_0.a.c;
    let var_3 = ~(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(var_2.e.x, var_1.a.b.c.x, global0[_wgslsmith_index_u32(8111u, 15u)], var_1.a.c.b.x)), var_1.a.b.b));
    var var_4 = _wgslsmith_add_i32(-func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-706f, var_2.d))) - _wgslsmith_f_op_vec2_f32(select(var_0.a.d, vec2<f32>(var_2.d, 1000f), vec2<bool>(false, false)))), ~u_input.d).a, -1i);
    return func_5(var_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(func_5(~var_0.a.c.c, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_2.d, 144f), var_1.a.d)), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), vec3<i32>(u_input.a.x, var_1.a.a.a, var_1.a.b.a), vec3<i32>(-13889i, -2147483647i, var_2.a))).a.a.d, var_0.a.b.d) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, var_1.a.b.d) - var_1.a.d)))))), ~firstTrailingBit(vec3<i32>(-29787i, var_2.a, var_0.a.a.a)) ^ vec3<i32>(~(~var_2.a), -(var_2.a | u_input.a.x), func_5(_wgslsmith_mod_vec4_u32(vec4<u32>(44227u, var_2.b.x, 0u, 4294967295u), var_0.a.b.c), _wgslsmith_div_vec2_f32(vec2<f32>(var_2.d, var_1.a.b.d), vec2<f32>(var_1.a.c.d, -1543f)), vec3<i32>(1i, 2147483647i, -1i)).a.a.a)).a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 15>();
    let var_0 = u_input.a.x;
    var var_1 = func_1();
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.b.d, 1373f, 391f, var_1.a.d) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-897f, var_1.d.x, -714f, 1287f)))) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_1.a.d * var_1.d.x), _wgslsmith_f_op_f32(trunc(var_1.a.d)), _wgslsmith_f_op_f32(ceil(-641f)), var_1.d.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d.x, -661f, 271f, var_1.d.x))))))));
    global3 = array<Struct_3, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.d.x))) - 1258f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) + _wgslsmith_f_op_f32(var_2.x + -471f)))));
}

