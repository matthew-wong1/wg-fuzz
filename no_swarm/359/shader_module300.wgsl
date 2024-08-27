struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: bool,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: u32,
    e: vec4<u32>,
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

var<private> global0: array<vec4<f32>, 3>;

var<private> global1: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-1308f, -1589f), vec2<f32>(187f, 546f), vec2<f32>(-424f, 119f), vec2<f32>(-295f, -1033f));

var<private> global2: vec2<i32> = vec2<i32>(0i, i32(-2147483648));

var<private> global3: array<bool, 32> = array<bool, 32>(true, true, true, false, false, true, false, true, false, false, false, true, false, true, true, true, false, true, true, true, true, true, false, false, false, false, true, true, false, true, true, true);

var<private> global4: array<vec2<i32>, 28> = array<vec2<i32>, 28>(vec2<i32>(-1i, 6412i), vec2<i32>(23037i, -1i), vec2<i32>(20499i, 1i), vec2<i32>(-1i, -1i), vec2<i32>(-1i, -1i), vec2<i32>(0i, -25920i), vec2<i32>(-1i, 73147i), vec2<i32>(1i, 25703i), vec2<i32>(1i, -1i), vec2<i32>(0i, 36260i), vec2<i32>(1i, -1i), vec2<i32>(2147483647i, 1i), vec2<i32>(-4574i, i32(-2147483648)), vec2<i32>(-11889i, -25375i), vec2<i32>(16983i, -22932i), vec2<i32>(i32(-2147483648), -24249i), vec2<i32>(-1i, -64120i), vec2<i32>(2147483647i, 0i), vec2<i32>(-40384i, 16459i), vec2<i32>(44911i, 2147483647i), vec2<i32>(1i, -19898i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(21160i, -1i), vec2<i32>(60793i, 2147483647i), vec2<i32>(27587i, -1i), vec2<i32>(0i, -5919i), vec2<i32>(-1i, -7633i), vec2<i32>(i32(-2147483648), -33824i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: u32, arg_1: vec4<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = min(arg_2.c.x, ~arg_2.a.x);
    global3 = array<bool, 32>();
    var var_1 = _wgslsmith_div_u32(abs(countOneBits(abs(arg_0 ^ u_input.d))), 45639u);
    global0 = array<vec4<f32>, 3>();
    var_1 = ~(~21960u | arg_0);
    return ~49498u;
}

fn func_4(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: Struct_2) -> vec3<bool> {
    var var_0 = Struct_1(-(vec2<i32>(-1i, 28687i) & (-global4[_wgslsmith_index_u32(arg_3.d.b.x, 28u)] << (vec2<u32>(11087u, u_input.d) % vec2<u32>(32u)))), min(reverseBits(u_input.e.wy), ~_wgslsmith_mod_vec2_u32(arg_3.c.b, vec2<u32>(arg_1, 30344u))) << (vec2<u32>(_wgslsmith_div_u32(arg_3.d.b.x, arg_0.x ^ 32736u), ~(~arg_0.x)) % vec2<u32>(32u)), -arg_3.a.c, 1f);
    let var_1 = global2.x >> (u_input.a % 32u);
    var var_2 = vec3<u32>(8449u, (u_input.a >> (6854u % 32u)) ^ countOneBits(_wgslsmith_clamp_u32(0u, abs(0u), 49875u)), abs(~(~4294967295u)));
    let var_3 = !arg_2.yx;
    return select(vec3<bool>(true, arg_2.x, true), select(vec3<bool>(!any(arg_2.wxy), var_3.x, arg_2.x), vec3<bool>(arg_2.x, true, all(!arg_2)), arg_2.zwx), true);
}

fn func_2(arg_0: u32, arg_1: Struct_3) -> i32 {
    global2 = u_input.c;
    var var_0 = arg_1;
    var_0 = Struct_3(var_0.a, !func_4(~(~vec3<u32>(arg_0, u_input.a, 66317u)), func_3(u_input.e.x, select(vec4<bool>(false, false, false, var_0.b.x), vec4<bool>(false, arg_1.c, true, true), vec4<bool>(global3[_wgslsmith_index_u32(1u, 32u)], global3[_wgslsmith_index_u32(arg_0, 32u)], false, global3[_wgslsmith_index_u32(u_input.a, 32u)])), Struct_1(var_0.a.ww, u_input.e.wx, var_0.a, 2652f)), vec4<bool>(true, arg_1.c, false || var_0.b.x, true), Struct_2(Struct_1(vec2<i32>(2147483647i, -2147483647i), vec2<u32>(17395u, u_input.a), arg_1.a, 1099f), Struct_1(global4[_wgslsmith_index_u32(18668u, 28u)], u_input.e.wx, vec4<i32>(var_0.a.x, -26562i, arg_1.a.x, u_input.b), -1952f), Struct_1(u_input.c, vec2<u32>(1u, 1u), var_0.a, -1000f), Struct_1(arg_1.a.yx, u_input.e.xz, vec4<i32>(19469i, global2.x, -66910i, arg_1.a.x), -1444f), vec3<i32>(u_input.b, global2.x, 1i) | vec3<i32>(u_input.c.x, -1i, arg_1.a.x))), arg_1.b.x);
    let var_1 = !select(!vec3<bool>(arg_1.b.x, !global3[_wgslsmith_index_u32(0u, 32u)], global3[_wgslsmith_index_u32(reverseBits(4294967295u), 32u)]), !func_4(u_input.e.yxz, 1u, vec4<bool>(var_0.c, global3[_wgslsmith_index_u32(4294967295u, 32u)], global3[_wgslsmith_index_u32(64809u, 32u)], var_0.c), Struct_2(Struct_1(arg_1.a.ww, vec2<u32>(540u, u_input.d), vec4<i32>(var_0.a.x, -20248i, global2.x, -61370i), -2209f), Struct_1(var_0.a.wx, u_input.e.wy, vec4<i32>(-2147483647i, var_0.a.x, global2.x, 10231i), 1253f), Struct_1(vec2<i32>(-49271i, 0i), vec2<u32>(4294967295u, 18179u), vec4<i32>(-59144i, 1i, 25853i, 21501i), 605f), Struct_1(arg_1.a.wy, u_input.e.yz, vec4<i32>(31709i, u_input.c.x, arg_1.a.x, -1951i), -1662f), var_0.a.zxw)), true);
    var var_2 = Struct_3(-arg_1.a, vec3<bool>(arg_1.a.x <= ~var_0.a.x, arg_1.b.x, all(vec4<bool>(all(var_0.b.xx), select(false, true, true), true, arg_1.b.x))), true == !(!any(var_1)));
    return ~(-2147483647i >> (((~4294967295u | ~arg_0) & ~_wgslsmith_div_u32(u_input.d, u_input.d)) % 32u));
}

fn func_5(arg_0: i32, arg_1: bool, arg_2: vec3<bool>) -> vec4<bool> {
    return !vec4<bool>(arg_2.x, !(!(!arg_1)), select(!(u_input.a > u_input.d), false, -2615i < (-1i ^ arg_0)), any(arg_2));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = all(func_5(_wgslsmith_mod_i32(func_2(firstTrailingBit(u_input.d), Struct_3(vec4<i32>(-52390i, -38421i, arg_1.a.x, -2147483647i), arg_1.b, arg_0.b.x)), i32(-1i) * -2147483647i), false, !arg_3.b));
    global3 = array<bool, 32>();
    global0 = array<vec4<f32>, 3>();
    let var_1 = select(arg_1.a.yzz, select(arg_3.a.xzx, vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(51731i, arg_1.a.x, arg_0.a.x), vec3<i32>(arg_3.a.x, -7583i, arg_0.a.x)), arg_3.b), arg_0.b);
    var var_2 = u_input.e.wzx;
    return _wgslsmith_sub_u32(u_input.a, ~var_2.x);
}

fn func_6(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = ~_wgslsmith_mult_vec4_u32(select(abs(max(u_input.e, arg_0.a)), ~_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.a.x, 49125u, 0u, 1203u), vec4<u32>(102506u, arg_2.x, 4294967295u, 1u)), vec4<bool>(global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(4294967295u, arg_1.x, 0u), 32u)], global2.x >= u_input.b, true, any(vec3<bool>(false, global3[_wgslsmith_index_u32(arg_1.x, 32u)], true)))), firstLeadingBit(_wgslsmith_sub_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a.x, u_input.e.x, 52706u, 6905u), vec4<u32>(arg_0.b.b.x, arg_1.x, arg_1.x, 31071u)), abs(u_input.e))));
    return Struct_1(~_wgslsmith_mult_vec2_i32(countOneBits(arg_3.xy), global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_2.x, 1u), 28u)]) << (vec2<u32>(1u, func_3(37355u, vec4<bool>(true, false, false, false), Struct_1(global4[_wgslsmith_index_u32(4294967295u, 28u)], vec2<u32>(arg_1.x, arg_0.a.x), vec4<i32>(14502i, -1i, -25145i, -90367i), arg_0.b.d))) % vec2<u32>(32u)), ~arg_0.a.xz, abs(reverseBits(countOneBits(vec4<i32>(arg_0.b.c.x, -1i, global2.x, u_input.b)))) << (arg_0.a % vec4<u32>(32u)), 1157f);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 3>();
    let var_0 = Struct_4(vec4<u32>(0u, _wgslsmith_dot_vec3_u32(u_input.e.zxy, vec3<u32>(~u_input.d, u_input.e.x, ~u_input.d)), u_input.d, ~1u), func_6(Struct_4(vec4<u32>(~0u, ~u_input.e.x, func_1(Struct_3(vec4<i32>(global2.x, -1i, u_input.b, 90297i), vec3<bool>(false, false, false), true), Struct_3(vec4<i32>(-1i, 2147483647i, global2.x, -17069i), vec3<bool>(global3[_wgslsmith_index_u32(u_input.d, 32u)], global3[_wgslsmith_index_u32(106359u, 32u)], global3[_wgslsmith_index_u32(u_input.e.x, 32u)]), true), vec4<f32>(-906f, -1036f, 1000f, 417f), Struct_3(vec4<i32>(14730i, global2.x, 13262i, global2.x), vec3<bool>(false, global3[_wgslsmith_index_u32(u_input.e.x, 32u)], false), false)), _wgslsmith_sub_u32(u_input.a, 83934u)), Struct_1(select(u_input.c, u_input.c, global3[_wgslsmith_index_u32(0u, 32u)]), vec2<u32>(21200u, 31356u), vec4<i32>(u_input.b, -8697i, -2147483647i, global2.x), _wgslsmith_f_op_f32(round(1287f))), vec3<i32>(-1i, _wgslsmith_clamp_i32(u_input.c.x, global2.x, 2147483647i), global2.x)), min(u_input.e, u_input.e), ~u_input.e.zyy, countOneBits(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, global2.x, u_input.b, global2.x), vec4<i32>(0i, u_input.b, -1i, global2.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c.x, -54355i, global2.x, u_input.b), vec4<i32>(u_input.b, -31897i, -8662i, -2147483647i))))), vec3<i32>(2147483647i, i32(-1i) * -1i, ~u_input.c.x));
    let var_1 = -519f;
    let var_2 = _wgslsmith_f_op_f32(floor(1118f));
    global1 = array<vec2<f32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(515f, var_2);
}

