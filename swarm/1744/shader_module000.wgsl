struct Struct_1 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
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

var<private> global0: array<bool, 2>;

var<private> global1: array<vec3<bool>, 8> = array<vec3<bool>, 8>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true));

var<private> global2: Struct_1;

var<private> global3: array<i32, 10> = array<i32, 10>(-33138i, -53200i, -9031i, -55134i, -16541i, 55131i, 2147483647i, -1i, 0i, 35859i);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> i32 {
    let var_0 = select(!vec2<bool>(true, any(vec4<bool>(true, true, false, true))), vec2<bool>(arg_2.c, global0[_wgslsmith_index_u32(u_input.c.x, 2u)]), select(vec2<bool>(false, global2.c), !select(vec2<bool>(false, global0[_wgslsmith_index_u32(104345u, 2u)]), select(vec2<bool>(global0[_wgslsmith_index_u32(0u, 2u)], true), vec2<bool>(true, false), false), vec2<bool>(true, arg_2.d)), all(vec4<bool>(any(vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global2.d)), select(global2.c, true, false), all(global1[_wgslsmith_index_u32(0u, 8u)]), arg_2.a.x >= global2.a.x))));
    global2 = Struct_1(~vec3<u32>(countOneBits(u_input.b), ~272u, ~u_input.c.x) | u_input.a, vec4<i32>(1i, reverseBits(arg_2.b.x), -2147483647i, ~global2.b.x) << (countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, arg_0.a.x, 0u, 1u), vec4<u32>(arg_0.a.x, 12584u, 30583u, global2.a.x), countOneBits(vec4<u32>(4724u, arg_0.a.x, 23913u, arg_0.a.x)))) % vec4<u32>(32u)), all(var_0), !(_wgslsmith_dot_vec2_i32(global2.b.xx, select(vec2<i32>(arg_2.b.x, -2147483647i), global2.b.xx, global2.d)) <= arg_0.b.x));
    let var_1 = select(~vec3<i32>(select(1i, arg_0.b.x, true), min(-15530i, arg_2.b.x), -2147483647i), arg_1.xxy, vec3<bool>(global2.c, true, false));
    global3 = array<i32, 10>();
    global1 = array<vec3<bool>, 8>();
    return arg_2.b.x ^ (i32(-1i) * -19027i);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> u32 {
    let var_0 = _wgslsmith_add_vec4_i32(-(~vec4<i32>(1i, -16809i, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(10251u, 65652u), 10u)], _wgslsmith_dot_vec4_i32(arg_0.b, vec4<i32>(-2147483647i, 2147483647i, global3[_wgslsmith_index_u32(28865u, 10u)], global2.b.x)))), vec4<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 10150i), firstLeadingBit(vec2<i32>(38583i, -8379i))) << (arg_0.a.x % 32u), -func_3(Struct_1(global2.a, vec4<i32>(-57235i, -33535i, arg_0.b.x, 0i), false, true), _wgslsmith_mod_vec4_i32(arg_0.b, vec4<i32>(2147483647i, global3[_wgslsmith_index_u32(4294967295u, 10u)], global2.b.x, 22676i)), Struct_1(global2.a, vec4<i32>(global3[_wgslsmith_index_u32(1u, 10u)], global2.b.x, global2.b.x, arg_0.b.x), false, false)), -12746i));
    global3 = array<i32, 10>();
    var var_1 = 0u & arg_0.a.x;
    let var_2 = !vec2<bool>(false | global2.c, true);
    global2 = arg_0;
    return _wgslsmith_div_u32(~0u, ~u_input.c.x);
}

fn func_1() -> u32 {
    let var_0 = !select(select(!(!vec4<bool>(false, global2.d, global2.d, global0[_wgslsmith_index_u32(0u, 2u)])), !(!vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(0u, 2u)])), global0[_wgslsmith_index_u32(global2.a.x, 2u)]), select(vec4<bool>(false, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, global2.a.x), 2u)], true, true), select(select(vec4<bool>(true, global0[_wgslsmith_index_u32(global2.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.a.x, 2u)], global2.c), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 2u)], true, global2.d, true), global0[_wgslsmith_index_u32(1u, 2u)]), !vec4<bool>(global0[_wgslsmith_index_u32(global2.a.x, 2u)], false, true, global0[_wgslsmith_index_u32(u_input.b, 2u)]), global0[_wgslsmith_index_u32(func_2(Struct_1(u_input.a, vec4<i32>(-29377i, global2.b.x, 2147483647i, global2.b.x), false, global2.c), -872f, -341f), 2u)]), select(select(vec4<bool>(false, true, false, global0[_wgslsmith_index_u32(0u, 2u)]), vec4<bool>(true, global2.d, true, false), vec4<bool>(global0[_wgslsmith_index_u32(75428u, 2u)], false, false, global2.d)), vec4<bool>(global2.d, global0[_wgslsmith_index_u32(1862u, 2u)], global0[_wgslsmith_index_u32(global2.a.x, 2u)], false), !global2.d)), vec4<bool>(any(vec3<bool>(global2.c, false, true)), false, true, true));
    let var_1 = var_0.xzx;
    global3 = array<i32, 10>();
    var var_2 = _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(4294967295u ^ _wgslsmith_sub_u32(~_wgslsmith_clamp_u32(1u, 0u, 0u), ~(~1u)), 10u)], global2.b.x);
    let var_3 = Struct_1((abs(vec3<u32>(4294967295u, 42701u, 18941u)) & vec3<u32>(~u_input.c.x, _wgslsmith_mod_u32(u_input.a.x, u_input.c.x), _wgslsmith_div_u32(98296u, 4294967295u))) | vec3<u32>(global2.a.x, 39927u, _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global2.a.x, global2.a.x, u_input.b, 47809u)), ~vec4<u32>(58202u, u_input.c.x, u_input.a.x, 4294967295u))), global2.b, true, !(!(global3[_wgslsmith_index_u32(~u_input.b, 10u)] <= 2147483647i)));
    return _wgslsmith_div_u32(~1u, 27351u) | _wgslsmith_dot_vec3_u32(vec3<u32>(26937u, global2.a.x, _wgslsmith_clamp_u32(1u, 48017u, _wgslsmith_mod_u32(global2.a.x, u_input.a.x))), min(vec3<u32>(~4294967295u, u_input.c.x >> (24861u % 32u), ~0u), vec3<u32>(max(var_3.a.x, var_3.a.x), 1u, var_3.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !all(!(!vec3<bool>(true, global0[_wgslsmith_index_u32(14235u, 2u)], true)));
    global1 = array<vec3<bool>, 8>();
    var var_1 = vec4<u32>(abs(~(~u_input.a.x) >> (~func_1() % 32u)), u_input.c.x, (_wgslsmith_div_u32(select(global2.a.x, global2.a.x, false), ~43148u) & 0u) | 4294967295u, ~_wgslsmith_dot_vec3_u32(firstLeadingBit(select(global2.a, global2.a, global1[_wgslsmith_index_u32(0u, 8u)])), abs(vec3<u32>(global2.a.x, 0u, u_input.b))));
    let var_2 = Struct_1(max(var_1.yxw, reverseBits(_wgslsmith_mod_vec3_u32(var_1.ywx, vec3<u32>(var_1.x, global2.a.x, var_1.x)))), _wgslsmith_add_vec4_i32(-global2.b, -_wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(14026u, 10u)], global2.b.x, 8048i, -2147483647i), _wgslsmith_mult_vec4_i32(global2.b, global2.b), -global2.b)), !(-(2147483647i >> (var_1.x % 32u)) >= ~abs(17179i)), false);
    let var_3 = vec3<i32>(-10370i, _wgslsmith_clamp_i32(min(-min(global3[_wgslsmith_index_u32(var_1.x, 10u)], global2.b.x), -2147483647i), _wgslsmith_add_i32(-33736i << (~var_2.a.x % 32u), ~global2.b.x << (~var_1.x % 32u)), firstTrailingBit(min(41064i, -global2.b.x))), -48718i);
    global0 = array<bool, 2>();
    let x = u_input.a;
    s_output = StorageBuffer(~(firstLeadingBit(vec4<u32>(2872u, 80422u, 31815u, 4294967295u)) | vec4<u32>(u_input.a.x, 1196u, var_2.a.x, var_1.x)) & ~(~vec4<u32>(var_2.a.x, global2.a.x, global2.a.x, var_2.a.x)));
}

