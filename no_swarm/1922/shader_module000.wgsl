struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<bool>,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_3,
}

struct Struct_5 {
    a: vec3<i32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(2090f, 1773f), vec2<f32>(1479f, -399f), vec2<f32>(-894f, 360f), vec2<f32>(-482f, -848f), vec2<f32>(-1528f, -307f), vec2<f32>(-169f, 550f));

var<private> global1: array<bool, 8>;

var<private> global2: array<Struct_3, 30> = array<Struct_3, 30>(Struct_3(Struct_1(-1i), vec2<bool>(true, true)), Struct_3(Struct_1(1i), vec2<bool>(true, false)), Struct_3(Struct_1(-1i), vec2<bool>(true, false)), Struct_3(Struct_1(18534i), vec2<bool>(false, false)), Struct_3(Struct_1(-61279i), vec2<bool>(true, false)), Struct_3(Struct_1(-1i), vec2<bool>(false, true)), Struct_3(Struct_1(0i), vec2<bool>(false, false)), Struct_3(Struct_1(44315i), vec2<bool>(false, false)), Struct_3(Struct_1(1347i), vec2<bool>(false, false)), Struct_3(Struct_1(i32(-2147483648)), vec2<bool>(true, true)), Struct_3(Struct_1(-6984i), vec2<bool>(true, false)), Struct_3(Struct_1(i32(-2147483648)), vec2<bool>(false, false)), Struct_3(Struct_1(-65800i), vec2<bool>(false, false)), Struct_3(Struct_1(2147483647i), vec2<bool>(true, false)), Struct_3(Struct_1(i32(-2147483648)), vec2<bool>(true, true)), Struct_3(Struct_1(0i), vec2<bool>(true, false)), Struct_3(Struct_1(-4317i), vec2<bool>(false, true)), Struct_3(Struct_1(1i), vec2<bool>(true, true)), Struct_3(Struct_1(i32(-2147483648)), vec2<bool>(false, false)), Struct_3(Struct_1(i32(-2147483648)), vec2<bool>(true, false)), Struct_3(Struct_1(i32(-2147483648)), vec2<bool>(false, false)), Struct_3(Struct_1(-8796i), vec2<bool>(true, true)), Struct_3(Struct_1(-1i), vec2<bool>(false, true)), Struct_3(Struct_1(-29041i), vec2<bool>(false, true)), Struct_3(Struct_1(-5609i), vec2<bool>(false, true)), Struct_3(Struct_1(-5149i), vec2<bool>(true, true)), Struct_3(Struct_1(-46810i), vec2<bool>(false, false)), Struct_3(Struct_1(-33007i), vec2<bool>(true, true)), Struct_3(Struct_1(-30237i), vec2<bool>(false, false)), Struct_3(Struct_1(50979i), vec2<bool>(false, true)));

var<private> global3: array<vec2<i32>, 5> = array<vec2<i32>, 5>(vec2<i32>(16724i, -17070i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(0i, 31000i), vec2<i32>(1i, 0i), vec2<i32>(-27488i, 5386i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<i32> {
    global1 = array<bool, 8>();
    global0 = array<vec2<f32>, 6>();
    let var_0 = u_input.a.xwz >> (vec3<u32>(_wgslsmith_mult_u32(~_wgslsmith_clamp_u32(1u, 4294967295u, 0u), abs(~51650u)), ~min(74200u, min(4294967295u, 10166u)), ~max(84512u, 0u) >> (1u % 32u)) % vec3<u32>(32u));
    let var_1 = var_0;
    var var_2 = Struct_4(Struct_1(-2147483647i), Struct_1(_wgslsmith_mult_i32(u_input.a.x, -var_1.x)), Struct_3(Struct_1(-(~var_1.x)), select(vec2<bool>(false, true), !vec2<bool>(false, global1[_wgslsmith_index_u32(17670u, 8u)]), !select(vec2<bool>(true, global1[_wgslsmith_index_u32(57387u, 8u)]), vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], true), vec2<bool>(global1[_wgslsmith_index_u32(49143u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)])))));
    return _wgslsmith_sub_vec3_i32(vec3<i32>(-7713i, var_0.x, var_2.c.a.a >> (_wgslsmith_clamp_u32(9822u, ~74136u, 0u) % 32u)), vec3<i32>(34119i, ~_wgslsmith_mod_i32(var_0.x, 0i) | _wgslsmith_mod_i32(-2147483647i, _wgslsmith_mult_i32(2147483647i, var_1.x)), -2147483647i));
}

fn func_2(arg_0: vec4<u32>) -> u32 {
    var var_0 = ~(~arg_0.zzx);
    var var_1 = Struct_5(vec3<i32>(u_input.a.x << (~arg_0.x % 32u), -5549i, 21843i), vec3<bool>(false, false, global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.x, firstLeadingBit(0u)), 8u)]));
    let var_2 = (u_input.b | ~u_input.a.x) & abs(-2147483647i);
    var_1 = Struct_5(max(-func_3(), -(~vec3<i32>(var_2, 2155i, 52382i))), !var_1.b);
    global0 = array<vec2<f32>, 6>();
    return var_0.x;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec4<f32>) -> vec2<u32> {
    global1 = array<bool, 8>();
    global2 = array<Struct_3, 30>();
    global1 = array<bool, 8>();
    global0 = array<vec2<f32>, 6>();
    let var_0 = Struct_1(1i);
    return vec2<u32>(arg_2.x, func_2(abs(select(arg_2, arg_2, false)))) << (select(arg_2.xx, firstTrailingBit(_wgslsmith_clamp_vec2_u32(abs(arg_2.wy), vec2<u32>(1u, arg_2.x) ^ vec2<u32>(0u, 12039u), ~vec2<u32>(arg_2.x, 1u))), any(select(vec3<bool>(arg_1.b.x, arg_1.b.x, false), !vec3<bool>(arg_1.b.x, global1[_wgslsmith_index_u32(1u, 8u)], arg_1.b.x), !vec3<bool>(true, global1[_wgslsmith_index_u32(arg_2.x, 8u)], false)))) % vec2<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<f32>, 6>();
    global3 = array<vec2<i32>, 5>();
    let var_0 = ~(vec4<u32>(_wgslsmith_dot_vec2_u32(func_1(global0[_wgslsmith_index_u32(11569u, 6u)], global2[_wgslsmith_index_u32(4294967295u, 30u)], vec4<u32>(0u, 4294967295u, 1u, 41542u), vec4<f32>(-705f, -1251f, 219f, 260f)), ~vec2<u32>(89839u, 4294967295u)), select(reverseBits(0u), 4705u, true), reverseBits(~1u), 1u) ^ (_wgslsmith_div_vec4_u32(~vec4<u32>(1u, 4294967295u, 0u, 4294967295u), select(vec4<u32>(6051u, 91842u, 1u, 1u), vec4<u32>(0u, 0u, 4294967295u, 7132u), vec4<bool>(global1[_wgslsmith_index_u32(45454u, 8u)], global1[_wgslsmith_index_u32(14827u, 8u)], global1[_wgslsmith_index_u32(44534u, 8u)], true))) << (min(min(vec4<u32>(0u, 58011u, 9217u, 1u), vec4<u32>(9482u, 4294967295u, 4294967295u, 19326u)), ~vec4<u32>(1u, 1u, 1u, 70550u)) % vec4<u32>(32u))));
    global3 = array<vec2<i32>, 5>();
    var var_1 = !(!(!select(vec4<bool>(false, true, false, global1[_wgslsmith_index_u32(1u, 8u)]), !vec4<bool>(global1[_wgslsmith_index_u32(var_0.x, 8u)], global1[_wgslsmith_index_u32(0u, 8u)], false, global1[_wgslsmith_index_u32(var_0.x, 8u)]), all(vec2<bool>(global1[_wgslsmith_index_u32(1u, 8u)], true)))));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_add_i32(~_wgslsmith_div_i32(-2147483647i, u_input.b), u_input.a.x), abs(u_input.b));
    global1 = array<bool, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_i32(~((u_input.a.wzz | vec3<i32>(u_input.a.x, 8565i, u_input.a.x)) >> (select(vec3<u32>(var_0.x, var_0.x, var_0.x), vec3<u32>(var_0.x, var_0.x, 4294967295u), vec3<bool>(global1[_wgslsmith_index_u32(var_0.x, 8u)], var_1.x, false)) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(u_input.a.zzw, -vec3<i32>(1i, 1i, 1i)), vec3<i32>(~_wgslsmith_div_i32(-2147483647i, var_2), min(10927i, ~(-1i)), _wgslsmith_dot_vec3_i32(u_input.a.zyy >> (var_0.wyw % vec3<u32>(32u)), u_input.a.xxx))), firstLeadingBit(~vec2<u32>(~var_0.x, 0u)), -554f, abs(vec4<i32>(-(var_2 & var_2), _wgslsmith_add_i32(17285i, u_input.b) | countOneBits(u_input.b), firstTrailingBit(var_2), ~(-17242i))));
}

