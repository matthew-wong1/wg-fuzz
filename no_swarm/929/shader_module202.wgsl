struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: u32,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32> = array<Struct_2, 32>(Struct_2(-22589i, Struct_1(2147483647i)), Struct_2(1i, Struct_1(-8143i)), Struct_2(-47575i, Struct_1(-1i)), Struct_2(10731i, Struct_1(i32(-2147483648))), Struct_2(0i, Struct_1(-14962i)), Struct_2(-49177i, Struct_1(17291i)), Struct_2(2147483647i, Struct_1(i32(-2147483648))), Struct_2(1i, Struct_1(15021i)), Struct_2(1i, Struct_1(4274i)), Struct_2(34845i, Struct_1(0i)), Struct_2(0i, Struct_1(2147483647i)), Struct_2(1i, Struct_1(31208i)), Struct_2(2147483647i, Struct_1(-16810i)), Struct_2(-1i, Struct_1(-1i)), Struct_2(13649i, Struct_1(i32(-2147483648))), Struct_2(1i, Struct_1(6950i)), Struct_2(-1i, Struct_1(i32(-2147483648))), Struct_2(-9670i, Struct_1(20987i)), Struct_2(-45872i, Struct_1(1i)), Struct_2(1i, Struct_1(52451i)), Struct_2(2147483647i, Struct_1(i32(-2147483648))), Struct_2(-36107i, Struct_1(-20746i)), Struct_2(-1i, Struct_1(-17373i)), Struct_2(-59539i, Struct_1(1i)), Struct_2(-1i, Struct_1(i32(-2147483648))), Struct_2(0i, Struct_1(i32(-2147483648))), Struct_2(-1i, Struct_1(2147483647i)), Struct_2(-32316i, Struct_1(7067i)), Struct_2(1i, Struct_1(-4i)), Struct_2(0i, Struct_1(2147483647i)), Struct_2(-105i, Struct_1(-1i)), Struct_2(37527i, Struct_1(-1i)));

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<u32>) -> i32 {
    let var_0 = _wgslsmith_dot_vec2_u32(u_input.a.zx, ~u_input.a.xz | ~u_input.a.zy);
    global0 = array<Struct_2, 32>();
    global0 = array<Struct_2, 32>();
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(~(~82328u), countOneBits(10453u)), 52129u ^ (var_0 << (~0u % 32u)), 52094u);
    var var_2 = ~abs(vec2<u32>(_wgslsmith_mod_u32(var_0, 34510u), countOneBits(~1u)));
    return -16554i;
}

fn func_2() -> vec4<i32> {
    return _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_div_i32(~reverseBits(-1i), func_3(-vec4<i32>(-43842i, -55135i, -59696i, 1i), ~vec2<u32>(u_input.a.x, 63720u))), -41461i, ~_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -26152i), vec2<i32>(-24710i, -1i) << (vec2<u32>(u_input.a.x, 79261u) % vec2<u32>(32u))), max(1i, countOneBits(1i))), vec4<i32>(2147483647i, reverseBits(1i), -1i, 10887i) >> (~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x)), ~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec3<bool>, arg_1: f32, arg_2: u32, arg_3: bool) -> vec4<bool> {
    global0 = array<Struct_2, 32>();
    var var_0 = _wgslsmith_sub_i32(0i, abs(1i));
    let var_1 = global0[_wgslsmith_index_u32(firstLeadingBit(arg_2), 32u)];
    var var_2 = func_2();
    var_0 = 1i;
    return !vec4<bool>(false, 0u <= arg_2, !select(false, true, arg_3) && false, !arg_0.x);
}

fn func_4(arg_0: vec4<u32>, arg_1: vec4<bool>, arg_2: vec3<u32>, arg_3: Struct_2) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(~max(u_input.a.x, arg_2.x), 32u)];
    var_0 = Struct_2(func_3(-vec4<i32>(countOneBits(var_0.a), arg_3.a >> (4294967295u % 32u), min(var_0.a, -1i), _wgslsmith_mod_i32(arg_3.b.a, 16507i)), ~_wgslsmith_clamp_vec2_u32(select(arg_0.xz, arg_0.yx, true), vec2<u32>(u_input.a.x, 72295u) & vec2<u32>(u_input.a.x, 0u), arg_2.xx)), arg_3.b);
    global0 = array<Struct_2, 32>();
    let var_1 = _wgslsmith_f_op_f32(select(878f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(939f)), -210f))), 134f), !any(select(func_1(arg_1.wxw, -1463f, 1892u, false).zwy, !vec3<bool>(false, false, arg_1.x), func_1(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), -479f, u_input.a.x, arg_1.x).wxx))));
    var var_2 = arg_3.b;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~62800u), ~u_input.a.x), 32u)];
    var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 32u)];
    let var_1 = abs((_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(var_0.a, 44505i, var_0.b.a)), -vec3<i32>(var_0.b.a, 1i, 0i)) | ~vec3<i32>(2395i, var_0.a, -10274i)) | ~vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(54312i, -2147483647i, -13858i), vec3<i32>(47209i, var_0.b.a, -866i)), -var_0.a, _wgslsmith_add_i32(var_0.b.a, var_0.a)));
    var_0 = func_4(_wgslsmith_sub_vec4_u32(~firstLeadingBit(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a.x, max(u_input.a.x, 3258u), u_input.a.x & 1u, _wgslsmith_div_u32(1u, 4294967295u)), _wgslsmith_add_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), firstTrailingBit(vec4<u32>(1u, u_input.a.x, u_input.a.x, u_input.a.x))))), !select(func_1(vec3<bool>(true, true, false), _wgslsmith_div_f32(-1616f, 1517f), _wgslsmith_mod_u32(u_input.a.x, 1u), u_input.a.x > 0u), vec4<bool>(true, true, true, true), all(vec2<bool>(true, true))), (u_input.a ^ vec3<u32>(_wgslsmith_add_u32(u_input.a.x, u_input.a.x), 4294967295u, _wgslsmith_mult_u32(u_input.a.x, u_input.a.x))) | _wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(u_input.a), u_input.a), ~vec3<u32>(u_input.a.x, 1u, 1u) | u_input.a), global0[_wgslsmith_index_u32(select(firstTrailingBit(0u), 85466u, true), 32u)]);
    global0 = array<Struct_2, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1000f, -603f, false)), -174f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(747f - -840f), _wgslsmith_f_op_f32(2588f - -826f))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + -1216f), -1842f))), vec3<i32>(-1i) * -reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, var_1.x, 0i), vec3<i32>(var_0.a, -1i, var_1.x))), 1u, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.x, 30236i, -1i), -vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.b.a, -79831i), var_1.xx), _wgslsmith_dot_vec2_i32(var_1.yx, var_1.yz), var_1.x, 0i)), max(select(~_wgslsmith_div_i32(51491i, var_0.b.a), -34012i, select(true, all(vec2<bool>(true, true)), true)), var_0.a));
}

