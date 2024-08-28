struct Struct_1 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<u32, 25>;

var<private> global2: vec3<u32>;

var<private> global3: Struct_1 = Struct_1(vec3<u32>(21501u, 50531u, 1u), -1359f);

var<private> global4: vec2<i32> = vec2<i32>(13629i, -1i);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<i32> {
    var var_0 = Struct_2(vec2<u32>(select(_wgslsmith_add_u32(_wgslsmith_clamp_u32(global2.x, global0.a.x, global1[_wgslsmith_index_u32(108708u, 25u)]), 4294967295u), u_input.d, arg_1), _wgslsmith_add_u32(u_input.d, ~0u)));
    var_0 = Struct_2(~vec2<u32>(global1[_wgslsmith_index_u32(firstTrailingBit(~u_input.b.x), 25u)], ~_wgslsmith_div_u32(22981u, global0.a.x)));
    let var_1 = _wgslsmith_dot_vec2_i32(max(select(~vec2<i32>(-17321i, -1i), select(~vec2<i32>(33431i, global4.x), vec2<i32>(global4.x, global4.x), true), arg_1), min(countOneBits(vec2<i32>(-1i, 13686i)), select(vec2<i32>(6419i, global4.x), countOneBits(vec2<i32>(0i, global4.x)), vec2<bool>(false, arg_1)))), firstLeadingBit((~vec2<i32>(-2147483647i, -4691i) | vec2<i32>(-8938i, u_input.a)) >> (global0.a.zz % vec2<u32>(32u))));
    var var_2 = select(!select(select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(false, false), vec2<bool>(arg_1, arg_1)), vec2<bool>(arg_1, false), true), vec2<bool>(global3.b == 1885f, 4354u > var_0.a.x), all(!vec2<bool>(arg_1, arg_1))), vec2<bool>(all(!select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_1, arg_1, false), vec3<bool>(arg_1, false, false))), ~0u <= global0.a.x), !select(vec2<bool>(true, any(vec3<bool>(true, false, arg_1))), vec2<bool>(arg_1, false & arg_1), !arg_1));
    let var_3 = -(~global4.x);
    return (-max(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, var_1), vec2<i32>(u_input.a, var_1), vec2<i32>(-1i, -46549i)), firstLeadingBit(vec2<i32>(-10319i, 1i))) ^ firstTrailingBit(select(vec2<i32>(0i, u_input.c), vec2<i32>(-1i, u_input.c), arg_1) << ((global2.zz | vec2<u32>(global0.a.x, global2.x)) % vec2<u32>(32u)))) ^ _wgslsmith_mod_vec2_i32(vec2<i32>(global4.x, -u_input.a), _wgslsmith_sub_vec2_i32(~firstTrailingBit(vec2<i32>(u_input.a, 1i)), vec2<i32>(var_1 << (var_0.a.x % 32u), firstLeadingBit(var_1))));
}

fn func_2(arg_0: Struct_2) -> bool {
    let var_0 = _wgslsmith_mod_vec3_i32(~(-(vec3<i32>(global4.x, u_input.a, u_input.a) & vec3<i32>(15803i, 2147483647i, global4.x))), ~vec3<i32>(0i, _wgslsmith_mod_i32(u_input.c, 341i), min(u_input.a, u_input.a))) >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(21890u, 38802u, select(u_input.b.x, global0.a.x, true) ^ 1u), ~(~u_input.b.zxx), u_input.b.xxx) % vec3<u32>(32u));
    let var_1 = reverseBits(func_3(Struct_1(~(global0.a >> (vec3<u32>(0u, u_input.d, global0.a.x) % vec3<u32>(32u))), -2137f), !all(select(vec2<bool>(true, false), vec2<bool>(true, false), false))));
    let var_2 = Struct_3(all(!select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, false), true), false)), arg_0);
    global0 = Struct_1(firstTrailingBit(vec3<u32>(global0.a.x, _wgslsmith_clamp_u32(_wgslsmith_add_u32(48154u, 66996u), ~global1[_wgslsmith_index_u32(4294967295u, 25u)], 4294967295u), global0.a.x)), _wgslsmith_f_op_f32(f32(-1f) * -1681f));
    let var_3 = u_input.c;
    return var_2.a;
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: vec3<u32>) -> Struct_3 {
    global1 = array<u32, 25>();
    var var_0 = arg_1.b;
    var var_1 = ~(abs(vec4<i32>(_wgslsmith_add_i32(-385i, u_input.a), i32(-1i) * -9679i, -2147483647i ^ u_input.c, ~global4.x)) >> (~_wgslsmith_mult_vec4_u32(select(u_input.b, vec4<u32>(46147u, 0u, 47272u, 0u), false), vec4<u32>(4294967295u, 1u, 85012u, global2.x) & vec4<u32>(0u, u_input.b.x, 61926u, global0.a.x)) % vec4<u32>(32u)));
    global4 = select(_wgslsmith_div_vec2_i32(abs(vec2<i32>(var_1.x, firstLeadingBit(35361i))), var_1.zy), -(((vec2<i32>(-35418i, -1i) >> (arg_1.b.a % vec2<u32>(32u))) ^ -vec2<i32>(39004i, global4.x)) >> (global2.zz % vec2<u32>(32u))), vec2<bool>(true, abs(abs(0u)) <= ~(~arg_2.x)));
    let var_2 = vec2<bool>(arg_1.a, !(_wgslsmith_add_i32(-var_1.x, func_3(Struct_1(arg_2, -1211f), false).x) >= func_3(Struct_1(vec3<u32>(global2.x, 1u, global3.a.x), -1000f), false).x));
    return Struct_3(arg_1.a, Struct_2(firstTrailingBit(vec2<u32>(arg_2.x, ~73464u))));
}

fn func_1(arg_0: i32, arg_1: Struct_2, arg_2: u32) -> Struct_1 {
    global1 = array<u32, 25>();
    var var_0 = global0.a >> (u_input.b.yww % vec3<u32>(32u));
    global3 = Struct_1(~(~global0.a), _wgslsmith_div_f32(2453f, -502f));
    let var_1 = func_4(-563f, Struct_3(func_2(arg_1), arg_1), u_input.b.xxz);
    let var_2 = var_1.b;
    return Struct_1(vec3<u32>(_wgslsmith_dot_vec3_u32(countOneBits(global0.a & vec3<u32>(857u, 4294967295u, global1[_wgslsmith_index_u32(51765u, 25u)])), ~u_input.b.xwz), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.a.x, global2.x, var_2.a.x), global0.a), 40789u), var_1.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.b - global3.b), global0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(abs(~vec2<u32>(global3.a.x, 5752u)) >> ((~u_input.b.yw & ~vec2<u32>(global0.a.x, global2.x)) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, global0.a.x), global3.a.zx), vec2<u32>(~49155u, global1[_wgslsmith_index_u32(4294967295u, 25u)])), vec2<bool>(true, true));
    global0 = func_1(u_input.c, Struct_2(global2.yx), u_input.d);
    global4 = ~(-(~(vec2<i32>(-1i) * -vec2<i32>(-1i, -1i))));
    let var_1 = !vec3<bool>(93387u != min(firstTrailingBit(34267u), 14485u), !(~global3.a.x >= 0u), func_4(_wgslsmith_f_op_f32(f32(-1f) * -1123f), Struct_3(false, func_4(-328f, Struct_3(true, Struct_2(vec2<u32>(40472u, var_0.x))), global0.a).b), ~u_input.b.xxw).a);
    global2 = firstLeadingBit(vec3<u32>(firstTrailingBit(4294967295u), _wgslsmith_mult_u32(_wgslsmith_add_u32(1u, firstLeadingBit(23535u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.b.x), select(global2.zx, vec2<u32>(global3.a.x, u_input.b.x), vec2<bool>(var_1.x, var_1.x)))), global0.a.x));
    global0 = func_1(-2147483647i, Struct_2(countOneBits(countOneBits(vec2<u32>(var_0.x, 124489u))) << (var_0 % vec2<u32>(32u))), func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global3.b))), Struct_3((u_input.a | 55928i) > ~global4.x, Struct_2(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.x, 21967u), var_0))), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(4294967295u), ~1u, ~99494u), (vec3<u32>(global3.a.x, 9572u, 15912u) | global0.a) << (~global0.a % vec3<u32>(32u)))).b.a.x);
    global1 = array<u32, 25>();
    let var_2 = !(!vec3<bool>(var_1.x, all(vec3<bool>(true, var_1.x, false)), false));
    let var_3 = func_4(125f, func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b)) - _wgslsmith_f_op_f32(max(global3.b, global3.b))) + func_1(firstLeadingBit(38353i), func_4(global3.b, Struct_3(var_1.x, Struct_2(global2.zx)), global0.a).b, global1[_wgslsmith_index_u32(27529u, 25u)]).b), Struct_3(all(vec3<bool>(var_1.x, false, false)), Struct_2(~u_input.b.wz)), _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.x, var_0.x, global0.a.x), global0.a), ~vec3<u32>(u_input.d, var_0.x, 19039u)), global0.a)), ~global0.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1065f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1848f * _wgslsmith_f_op_f32(f32(-1f) * -294f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + -189f), _wgslsmith_f_op_f32(trunc(global0.b)), _wgslsmith_f_op_f32(global3.b * -1337f) == _wgslsmith_div_f32(global3.b, -2003f)))), _wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(global4.x, 2147483647i, global4.x), vec3<i32>(57612i, global4.x, global4.x))), max(~vec3<i32>(u_input.a, global4.x, -1i), _wgslsmith_mult_vec3_i32(vec3<i32>(0i, u_input.c, 18997i), vec3<i32>(global4.x, global4.x, global4.x)))), vec3<i32>(select(u_input.a, u_input.c, true), ~(~u_input.c), global4.x)));
}

