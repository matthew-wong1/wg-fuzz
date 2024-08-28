struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 23>;

var<private> global1: array<vec2<i32>, 13> = array<vec2<i32>, 13>(vec2<i32>(-1i, 3846i), vec2<i32>(25830i, 60372i), vec2<i32>(28690i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -3551i), vec2<i32>(47538i, i32(-2147483648)), vec2<i32>(-29197i, 61843i), vec2<i32>(0i, 9708i), vec2<i32>(5477i, -20912i), vec2<i32>(-1i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(-1i, 2147483647i), vec2<i32>(-29706i, 10946i), vec2<i32>(1i, -1i));

var<private> global2: vec2<u32> = vec2<u32>(7984u, 0u);

var<private> global3: vec3<u32>;

var<private> global4: vec4<f32> = vec4<f32>(2799f, -894f, 719f, -1508f);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<i32>) -> bool {
    global1 = array<vec2<i32>, 13>();
    let var_0 = vec4<bool>(!(!(global4.x > global4.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~min(vec4<u32>(39331u, u_input.a, 1u, global3.x), vec4<u32>(u_input.a, u_input.a, u_input.a, 4294967295u))), ~firstTrailingBit(vec4<u32>(1u, 56149u, global3.x, global3.x) | vec4<u32>(34520u, global2.x, global2.x, 50343u))), 23u)], global0[_wgslsmith_index_u32(~47737u, 23u)] & (arg_0.x <= -2147483647i), !select(select(global3.x, u_input.a, global0[_wgslsmith_index_u32(global2.x, 23u)]) <= 29019u, false, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, global2.x ^ global3.x, 21950u), 23u)]));
    let var_1 = Struct_1(~_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_0.x, 64063i, 5844i) << ((vec3<u32>(49032u, u_input.a, 4294967295u) & vec3<u32>(22696u, u_input.a, 0u)) % vec3<u32>(32u)), firstLeadingBit(~vec3<i32>(27238i, 0i, arg_0.x)), vec3<i32>(0i & arg_0.x, arg_0.x, abs(2147483647i))));
    let var_2 = global3.yz;
    global3 = max(_wgslsmith_div_vec3_u32(~select(firstTrailingBit(vec3<u32>(var_2.x, global3.x, global2.x)), max(vec3<u32>(u_input.a, 23751u, 1u), vec3<u32>(var_2.x, 4294967295u, global2.x)), !var_0.ywy), vec3<u32>(min(~u_input.a, ~global3.x), var_2.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(global3.x, 0u, var_2.x, 45576u), vec4<u32>(var_2.x, global2.x, global3.x, 4294967295u)))), abs(vec3<u32>(~_wgslsmith_sub_u32(13542u, 0u), 0u, var_2.x)));
    return all(vec3<bool>(!global0[_wgslsmith_index_u32(var_2.x, 23u)], true, true)) & !(!global0[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(u_input.a, u_input.a)), 23u)]);
}

fn func_2(arg_0: vec2<i32>) -> Struct_2 {
    var var_0 = vec4<bool>(true, !global0[_wgslsmith_index_u32(u_input.a >> (69117u % 32u), 23u)] & !(!func_3(arg_0)), func_3(vec2<i32>(2109i, -arg_0.x)) | global0[_wgslsmith_index_u32(global3.x, 23u)], true);
    var var_1 = ~vec2<u32>(u_input.a, global3.x);
    let var_2 = Struct_2(select(vec4<bool>(var_1.x >= ~22708u, all(var_0.zz), false, global0[_wgslsmith_index_u32(var_1.x, 23u)]), select(select(!vec4<bool>(false, false, true, var_0.x), select(vec4<bool>(var_0.x, var_0.x, true, false), vec4<bool>(false, global0[_wgslsmith_index_u32(global3.x, 23u)], var_0.x, false), var_0.x), vec4<bool>(var_0.x, false, true, var_0.x)), select(!vec4<bool>(var_0.x, true, false, var_0.x), !vec4<bool>(global0[_wgslsmith_index_u32(global3.x, 23u)], false, false, var_0.x), select(vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 23u)], true, false, var_0.x), vec4<bool>(var_0.x, var_0.x, global0[_wgslsmith_index_u32(4294967295u, 23u)], false), vec4<bool>(true, false, false, false))), arg_0.x == _wgslsmith_sub_i32(arg_0.x, arg_0.x)), select(select(!vec4<bool>(false, var_0.x, global0[_wgslsmith_index_u32(global2.x, 23u)], true), vec4<bool>(global0[_wgslsmith_index_u32(global2.x, 23u)], true, var_0.x, global0[_wgslsmith_index_u32(global2.x, 23u)]), select(vec4<bool>(false, var_0.x, true, true), vec4<bool>(global0[_wgslsmith_index_u32(17988u, 23u)], var_0.x, false, false), vec4<bool>(false, global0[_wgslsmith_index_u32(4294967295u, 23u)], false, global0[_wgslsmith_index_u32(global2.x, 23u)]))), !select(vec4<bool>(global0[_wgslsmith_index_u32(41163u, 23u)], var_0.x, var_0.x, true), vec4<bool>(false, var_0.x, false, global0[_wgslsmith_index_u32(global2.x, 23u)]), true), vec4<bool>(true, any(var_0.wzw), select(var_0.x, var_0.x, false), any(vec4<bool>(global0[_wgslsmith_index_u32(61267u, 23u)], true, true, true))))), vec3<u32>(var_1.x, var_1.x, global3.x), ~vec3<u32>(_wgslsmith_mod_u32(global2.x, firstTrailingBit(u_input.a)), abs(~global2.x), _wgslsmith_div_u32(min(global3.x, 93090u), u_input.a)), Struct_1(_wgslsmith_sub_vec3_i32(~vec3<i32>(arg_0.x, -38857i, arg_0.x) | vec3<i32>(arg_0.x, -28432i, 40209i), firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, -21022i), vec3<i32>(arg_0.x, arg_0.x, arg_0.x))))));
    var var_3 = var_2.c.x | _wgslsmith_dot_vec2_u32(vec2<u32>(select(0u, var_2.b.x, var_0.x) ^ ~u_input.a, var_2.b.x), vec2<u32>(_wgslsmith_sub_u32(u_input.a, 77491u), 71082u) >> (vec2<u32>(1u, countOneBits(3029u)) % vec2<u32>(32u)));
    global2 = vec2<u32>(var_2.c.x, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(global3.xy, var_2.c.zz), ~(~29428u)));
    return Struct_2(select(!(!select(vec4<bool>(true, false, false, var_0.x), vec4<bool>(false, var_2.a.x, true, global0[_wgslsmith_index_u32(0u, 23u)]), var_0.x)), var_2.a, var_2.a), vec3<u32>(69492u, max(_wgslsmith_sub_u32(1u, var_1.x), ~var_2.b.x), _wgslsmith_add_u32(20318u | global3.x, firstTrailingBit(93583u))) & var_2.c, var_2.b, Struct_1(vec3<i32>(1i, 10299i, min(1i ^ var_2.d.a.x, 45082i))));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32, arg_2: u32) -> Struct_2 {
    global3 = ~reverseBits(vec3<u32>(_wgslsmith_sub_u32(1042u, global2.x), _wgslsmith_dot_vec4_u32(vec4<u32>(3478u, 17385u, u_input.a, 11744u), vec4<u32>(global2.x, global2.x, arg_1, arg_2)), abs(71913u))) & vec3<u32>(global2.x, _wgslsmith_dot_vec4_u32(~(vec4<u32>(global2.x, 17072u, 56469u, 1u) ^ vec4<u32>(59084u, 1u, 72549u, 4294967295u)), vec4<u32>(u_input.a ^ 27316u, _wgslsmith_clamp_u32(1u, global2.x, arg_2), u_input.a, ~global2.x)), u_input.a);
    let var_0 = !(!(!(!select(vec4<bool>(arg_0.x, true, false, global0[_wgslsmith_index_u32(8895u, 23u)]), vec4<bool>(global0[_wgslsmith_index_u32(arg_1, 23u)], true, true, arg_0.x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.a, 23u)], global0[_wgslsmith_index_u32(65450u, 23u)], arg_0.x, false)))));
    let var_1 = any(select(!(!select(var_0, vec4<bool>(false, var_0.x, var_0.x, var_0.x), true)), select(var_0, !var_0, any(var_0)), select(false, global0[_wgslsmith_index_u32(arg_2, 23u)], global0[_wgslsmith_index_u32(1u, 23u)]) & true));
    return func_2(global1[_wgslsmith_index_u32(global3.x, 13u)]);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<i32>) -> u32 {
    let var_0 = ~abs(vec2<u32>(_wgslsmith_dot_vec2_u32(arg_1.a.c.xx, vec2<u32>(global2.x, global3.x)), 18755u) << (~vec2<u32>(global2.x, 0u) % vec2<u32>(32u)));
    var var_1 = Struct_1(-_wgslsmith_add_vec3_i32(~select(vec3<i32>(arg_1.a.d.a.x, arg_2.x, 1i), arg_0.a.d.a, vec3<bool>(true, arg_0.a.a.x, arg_0.a.a.x)), min(arg_2.xwz, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_1.a.d.a.x, arg_0.a.d.a.x, -20261i), arg_0.a.d.a))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~vec3<u32>(firstTrailingBit(1u), 20004u, (4321u & (4294967295u >> (global2.x % 32u))) | ~_wgslsmith_div_u32(global2.x, 1u));
    global2 = _wgslsmith_sub_vec2_u32(vec2<u32>(0u | global3.x, func_4(Struct_3(Struct_2(vec4<bool>(true, global0[_wgslsmith_index_u32(24554u, 23u)], true, global0[_wgslsmith_index_u32(u_input.a, 23u)]), vec3<u32>(1u, u_input.a, 0u), vec3<u32>(global2.x, global2.x, global2.x), Struct_1(vec3<i32>(0i, 39151i, 2147483647i)))), Struct_3(func_1(vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 23u)], global0[_wgslsmith_index_u32(38174u, 23u)], global0[_wgslsmith_index_u32(67996u, 23u)]), u_input.a, u_input.a)), abs(vec4<i32>(-1i, -4511i, 18405i, 17388i)) >> (abs(vec4<u32>(global3.x, global3.x, global3.x, global2.x)) % vec4<u32>(32u)))), abs(~(~global3.xy)));
    global4 = vec4<f32>(-185f, -387f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -831f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, global4.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global4.x, 2150f)))), global0[_wgslsmith_index_u32(func_2(firstTrailingBit(func_1(vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 23u)], false, global0[_wgslsmith_index_u32(global3.x, 23u)]), 4821u, u_input.a).d.a.yy)).c.x, 23u)])), global4.x);
    let var_0 = -710f;
    let var_1 = Struct_2(!func_2(_wgslsmith_sub_vec2_i32(vec2<i32>(28011i, 46843i), max(global1[_wgslsmith_index_u32(u_input.a, 13u)], vec2<i32>(-2147483647i, 2147483647i)))).a, ~_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, global3.x, 8051u), vec3<u32>(global3.x, global2.x, 42403u)) & vec3<u32>(2315u, global2.x, u_input.a), vec3<u32>(global2.x, u_input.a & 42008u, global3.x)), vec3<u32>(0u, min(9036u, 27683u) >> (u_input.a % 32u), ~(~func_1(vec3<bool>(global0[_wgslsmith_index_u32(global2.x, 23u)], global0[_wgslsmith_index_u32(global2.x, 23u)], false), 0u, u_input.a).b.x)), Struct_1(vec3<i32>(-_wgslsmith_div_i32(-1i, 1151i), -1i, 1i)));
    var var_2 = ~countOneBits(vec4<i32>(abs(_wgslsmith_clamp_i32(var_1.d.a.x, var_1.d.a.x, var_1.d.a.x)), -9314i, abs(1i), ~select(-2063i, var_1.d.a.x, false)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

