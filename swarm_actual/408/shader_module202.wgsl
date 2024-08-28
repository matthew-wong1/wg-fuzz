struct Struct_1 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 13> = array<vec4<f32>, 13>(vec4<f32>(287f, 1843f, -1172f, -814f), vec4<f32>(1199f, -1000f, -831f, -128f), vec4<f32>(-507f, -844f, 1701f, 2085f), vec4<f32>(-1137f, 185f, 310f, 394f), vec4<f32>(264f, -274f, 913f, -1000f), vec4<f32>(-495f, -686f, -1000f, -478f), vec4<f32>(-1646f, 123f, -211f, 1371f), vec4<f32>(-549f, 544f, 1040f, -485f), vec4<f32>(-550f, -593f, 482f, -1000f), vec4<f32>(-134f, -252f, -649f, 134f), vec4<f32>(-2039f, -866f, 1180f, 166f), vec4<f32>(-352f, 630f, 372f, -1678f), vec4<f32>(-1255f, -387f, 460f, 198f));

var<private> global1: vec4<i32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec4<bool>, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_3.x - arg_3.x), _wgslsmith_f_op_f32(-arg_3.x))))), _wgslsmith_add_u32(~(~19869u), min(1u, 0u << (arg_2.a % 32u))), u_input.b.x);
    var var_1 = all(arg_1.zy);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1474f)));
    let var_3 = vec4<u32>(arg_2.a, arg_2.a, ~u_input.b.x, arg_2.a);
    let var_4 = arg_1.zy;
    return min(9361u, 72161u);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3) -> Struct_1 {
    global1 = ~(~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, _wgslsmith_mod_i32(0i, global1.x), countOneBits(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, global1.x, 32952i, u_input.a), vec4<i32>(arg_0, arg_1.c, global1.x, 37845i))), vec4<i32>(global1.x, -7305i, ~u_input.a, arg_1.c | arg_1.c)));
    let var_0 = 15750u;
    var var_1 = firstTrailingBit(vec3<i32>(_wgslsmith_add_i32(arg_1.c, i32(-1i) * -3383i) & firstTrailingBit(-48404i), 69147i, 2147483647i));
    global1 = _wgslsmith_clamp_vec4_i32(min(reverseBits(vec4<i32>(var_1.x, var_1.x, -4219i, -1i)), ~vec4<i32>(arg_0, 50867i, arg_0, global1.x)) << (~(~firstTrailingBit(vec4<u32>(arg_1.b, 55340u, arg_2.b, arg_1.b))) % vec4<u32>(32u)), _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(0i, 2147483647i, arg_0, -3643i), vec4<i32>(0i, arg_1.c, arg_0, -5559i)), reverseBits(vec4<i32>(arg_1.c, 1i, arg_1.c, -41547i))), select(vec4<i32>(arg_1.c, arg_1.c, arg_1.c, arg_1.c) << (vec4<u32>(114137u, 41467u, 8971u, 4294967295u) % vec4<u32>(32u)), select(vec4<i32>(2147483647i, 1i, 33147i, 28365i), vec4<i32>(-5610i, var_1.x, var_1.x, 500i), vec4<bool>(true, false, true, false)), vec4<bool>(true, false, false, true))) >> ((vec4<u32>(var_0, 1u, var_0, 1u) >> (firstLeadingBit(~vec4<u32>(arg_1.b, 0u, var_0, 3270u)) % vec4<u32>(32u))) % vec4<u32>(32u)), vec4<i32>(abs(_wgslsmith_add_i32(_wgslsmith_mult_i32(0i, 43245i), global1.x & arg_1.c)), _wgslsmith_div_i32(_wgslsmith_mult_i32(2147483647i, ~(-1i)), var_1.x), _wgslsmith_sub_i32(_wgslsmith_clamp_i32(-71235i, 6967i, arg_1.c), arg_1.c << (u_input.b.x % 32u)) ^ ~global1.x, var_1.x));
    var_1 = _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(2147483647i, -57541i, 3912i), vec3<i32>(select(-35047i, global1.x, false), _wgslsmith_sub_i32(-1i, -2147483647i), -1i)), vec3<i32>(arg_0 | 1i, 48490i, reverseBits(2147483647i))), ~global1.wwz);
    return arg_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> i32 {
    let var_0 = Struct_2(u_input.b.x, func_3(51873i, Struct_1(13843u, ~func_2(global1.yw, vec4<bool>(false, false, true, true), Struct_2(4294967295u, Struct_1(u_input.b.x, u_input.b.x, 0i), arg_1), vec4<f32>(arg_0.x, arg_0.x, -402f, 323f)), 23635i), Struct_3(-245f, func_2(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1, 1i), vec2<i32>(u_input.a, 2147483647i)), vec4<bool>(true, true, true, true), Struct_2(u_input.b.x, Struct_1(u_input.b.x, 75905u, arg_1), arg_1), _wgslsmith_div_vec4_f32(vec4<f32>(712f, 1000f, -1600f, arg_0.x), global0[_wgslsmith_index_u32(4294967295u, 13u)])), u_input.b.x)), arg_1);
    let var_1 = all(vec3<bool>(~firstTrailingBit(0u) > _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.b, u_input.b), u_input.b), any(vec4<bool>(true, true, true, true)), (true == any(vec2<bool>(false, true))) || true));
    global1 = abs(~select(~vec4<i32>(-2147483647i, u_input.a, 1i, 27602i), ~(vec4<i32>(arg_1, var_0.b.c, 1i, 43316i) >> (vec4<u32>(u_input.b.x, 4294967295u, var_0.b.a, 4294967295u) % vec4<u32>(32u))), var_1));
    global1 = ~abs(max(firstTrailingBit(vec4<i32>(-64652i, var_0.c, 43194i, var_0.b.c)), vec4<i32>(min(0i, global1.x), -18919i, -global1.x, global1.x << (13828u % 32u))));
    global0 = array<vec4<f32>, 13>();
    return reverseBits(arg_1 << (abs(var_0.a) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(select(2147483647i >> ((u_input.b.x >> (u_input.b.x % 32u)) % 32u), _wgslsmith_dot_vec4_i32(~vec4<i32>(-8928i, global1.x, 1i, u_input.a), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, 0i, u_input.a, -8125i), vec4<i32>(global1.x, global1.x, 2147483647i, u_input.a))), true) << (~countOneBits(u_input.b.x) % 32u), -41510i, global1.x, -1i);
    global1 = min(-vec4<i32>(2147483647i ^ u_input.a, func_1(vec3<f32>(-1478f, 1100f, -2065f), global1.x), -26907i, ~(-67733i)), min(vec4<i32>(abs(global1.x), u_input.a ^ 2147483647i, -45646i, -1i), vec4<i32>(-1i) * -vec4<i32>(1i, u_input.a, global1.x, global1.x))) >> (select(select(abs(vec4<u32>(u_input.b.x, 6500u, u_input.b.x, 119885u)), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, 0u), vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_u32(4294967295u, u_input.b.x, 4294967295u), func_3(u_input.a, Struct_1(26207u, u_input.b.x, -41556i), Struct_3(-388f, u_input.b.x, u_input.b.x)).a, u_input.b.x), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, true), any(vec4<bool>(true, false, false, true)))), vec4<u32>(min(4294967295u | u_input.b.x, ~4294967295u), _wgslsmith_add_u32(u_input.b.x, ~u_input.b.x), u_input.b.x, 69133u), true) % vec4<u32>(32u));
    let var_0 = -43812i;
    let var_1 = !vec3<bool>(all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true))), true, select(true, _wgslsmith_div_i32(-9424i, u_input.a) >= -7929i, true));
    let var_2 = _wgslsmith_mult_i32(global1.x, 9305i) & -40746i;
    let x = u_input.a;
    s_output = StorageBuffer(~(-global1.zy));
}

