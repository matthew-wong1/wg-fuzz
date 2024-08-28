struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_3,
    d: f32,
    e: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 16> = array<u32, 16>(33684u, 4294967295u, 4294967295u, 41214u, 4294967295u, 35402u, 9797u, 0u, 1u, 14928u, 0u, 100337u, 0u, 45006u, 61546u, 1u);

var<private> global1: Struct_1 = Struct_1(-1109f, 1u);

var<private> global2: vec3<u32>;

var<private> global3: bool;

var<private> global4: Struct_3;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_3) -> u32 {
    let var_0 = global2.yz;
    var var_1 = ~_wgslsmith_mult_vec3_i32(_wgslsmith_clamp_vec3_i32(firstTrailingBit(vec3<i32>(-43369i, 26192i, u_input.b.x)), -vec3<i32>(u_input.b.x, 0i, u_input.b.x), _wgslsmith_mult_vec3_i32(arg_2.zww, vec3<i32>(-2147483647i, 3808i, u_input.b.x))) | u_input.b.yzx, ~(vec3<i32>(u_input.b.x, 44126i, arg_2.x) ^ arg_2.yxy) ^ vec3<i32>(_wgslsmith_mult_i32(arg_2.x, arg_2.x), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, -11265i, 0i), vec3<i32>(22351i, 0i, -2147483647i)), u_input.b.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global4.a.a.a))))));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1.a))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(global1.a)))));
    let var_3 = vec3<i32>(~(-u_input.b.x) >> (~(~_wgslsmith_add_u32(1u, global4.c.a.b)) % 32u), (_wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.b.x, -100363i, 33656i), arg_2.wwz), ~vec3<i32>(-2147483647i, 1i, var_1.x)) << (0u % 32u)) ^ abs(-1i), ~(~_wgslsmith_sub_i32(-1i, arg_2.x)));
    return var_0.x;
}

fn func_2() -> Struct_1 {
    global4 = Struct_3(Struct_2(global4.c.a), ~func_3(Struct_1(global4.c.a.a, global2.x), Struct_1(_wgslsmith_f_op_f32(-785f * global4.c.a.a), _wgslsmith_mult_u32(global0[_wgslsmith_index_u32(15683u, 16u)], global0[_wgslsmith_index_u32(global1.b, 16u)])), _wgslsmith_clamp_vec4_i32(vec4<i32>(-24056i, -34775i, u_input.b.x, u_input.b.x) | u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) & u_input.b, _wgslsmith_mult_vec4_i32(u_input.b, u_input.b)), Struct_3(Struct_2(global4.c.a), global2.x, global4.c, vec2<u32>(global0[_wgslsmith_index_u32(global1.b, 16u)], 63343u))), Struct_2(global4.a.a), global2.zx);
    let var_0 = _wgslsmith_f_op_f32(-global1.a);
    let var_1 = 929f;
    global3 = true | !(!(!(global1.a == var_0)));
    var var_2 = Struct_3(global4.a, global4.c.a.b, global4.a, min(select(countOneBits(global2.xz), _wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), ~global4.d), true), ~vec2<u32>(1u, global2.x)));
    return Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0, -2532f)))), 13102u);
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: u32, arg_3: vec3<u32>) -> Struct_2 {
    let var_0 = false;
    global2 = vec3<u32>(countOneBits(global0[_wgslsmith_index_u32(global4.b, 16u)] ^ func_3(arg_1, arg_1, ~u_input.b, Struct_3(global4.a, global0[_wgslsmith_index_u32(23006u, 16u)], Struct_2(arg_1), arg_3.xy))), ~abs(0u), 13971u);
    global0 = array<u32, 16>();
    let var_1 = _wgslsmith_add_vec2_u32(max((global2.xx ^ global4.d) & global4.d, ~abs(vec2<u32>(4294967295u, 4417u))), abs(reverseBits(~arg_3.xx))) << (~(_wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.x, u_input.a), vec2<u32>(0u, 0u)) << (~(~global4.d) % vec2<u32>(32u))) % vec2<u32>(32u));
    let var_2 = 4294967295u;
    return Struct_2(global4.c.a);
}

fn func_5(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_1 {
    global3 = !(!all(vec2<bool>(all(arg_0.e.a), !arg_0.e.a.x)));
    var var_0 = vec3<i32>(~firstLeadingBit(firstLeadingBit(-2147483647i)), firstLeadingBit(abs(u_input.b.x)), i32(-1i) * -2147483647i) << (~vec3<u32>(42302u ^ (18762u >> (arg_1.x % 32u)), global2.x, 0u) % vec3<u32>(32u));
    global2 = vec3<u32>(4294967295u, 0u, 4294967295u);
    let var_1 = func_4(all(select(!select(vec4<bool>(true, arg_0.e.a.x, false, true), vec4<bool>(false, false, true, true), vec4<bool>(arg_0.e.a.x, arg_0.e.a.x, arg_0.e.a.x, arg_0.e.a.x)), vec4<bool>(arg_0.e.a.x, arg_0.d > -1196f, arg_0.e.a.x, true), !vec4<bool>(true, arg_0.e.a.x, true, true))), arg_0.a, func_4(arg_0.e.a.x, Struct_1(_wgslsmith_div_f32(arg_0.c.c.a.a, -1184f), _wgslsmith_clamp_u32(4294967295u, 0u ^ global1.b, ~global0[_wgslsmith_index_u32(global4.a.a.b, 16u)])), _wgslsmith_mult_u32(~global1.b, firstTrailingBit(_wgslsmith_mult_u32(8157u, 14201u))), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(global0[_wgslsmith_index_u32(global1.b, 16u)], 0u), func_4(arg_0.e.a.x, Struct_1(-916f, global2.x), global2.x, arg_1.wxx).a.b, arg_2.d.x ^ arg_1.x), arg_0.e.b.zwx)).a.b, min(min(abs(select(vec3<u32>(global1.b, arg_1.x, global4.a.a.b), vec3<u32>(4294967295u, 0u, 18732u), arg_0.e.a.x)), firstLeadingBit(max(vec3<u32>(u_input.a, u_input.a, 34369u), arg_1.wzw))), arg_1.wxx)).a;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-arg_2.c.a.a), global4.c.a.a, -1000f, arg_0.c.a.a.a);
    return arg_2.a.a;
}

fn func_1() -> Struct_1 {
    global1 = func_5(Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.a) + _wgslsmith_f_op_f32(458f - -680f)), global4.d.x), global2.x, Struct_3(func_4(true, func_2(), _wgslsmith_sub_u32(global2.x, u_input.a), vec3<u32>(global2.x, u_input.a, 4294967295u) ^ vec3<u32>(18628u, global0[_wgslsmith_index_u32(39537u, 16u)], global4.a.a.b)), 31251u, Struct_2(func_2()), min(~vec2<u32>(0u, 6776u), firstTrailingBit(vec2<u32>(global2.x, 0u)))), global1.a, Struct_4(vec3<bool>(any(vec2<bool>(false, false)), true, true), vec4<u32>(global4.b, 50030u, global0[_wgslsmith_index_u32(5685u, 16u)], global1.b), vec2<u32>(func_4(true, global4.c.a, 1u, vec3<u32>(4294967295u, 1u, u_input.a)).a.b, ~u_input.a), func_4(u_input.b.x == 39465i, func_2(), firstLeadingBit(global2.x), ~vec3<u32>(4224u, global0[_wgslsmith_index_u32(1u, 16u)], 27432u)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 2421f, global1.a, global1.a))))), select(vec4<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~global4.b, 16u)] & 30155u, 16u)], ~countOneBits(58001u), 32110u), ~_wgslsmith_div_vec4_u32(vec4<u32>(global1.b, 0u, 0u, 0u), vec4<u32>(50966u, 15098u, global1.b, global4.c.a.b)) | vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global1.b, u_input.a, global0[_wgslsmith_index_u32(0u, 16u)]), vec3<u32>(global2.x, 66668u, 14714u)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 4294967295u, 22189u, global0[_wgslsmith_index_u32(44359u, 16u)]), vec4<u32>(0u, 30073u, 17234u, 8338u)), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global4.a.a.b, 16u)], 16u)], ~global1.b), select(vec4<bool>(true, true, 6215u > global1.b, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, true), false), !(global2.x < global2.x))), Struct_3(Struct_2(global4.c.a), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(49922u, global4.c.a.b, 46254u), ~vec3<u32>(global1.b, global4.b, global2.x)), 1u), Struct_2(func_2()), firstTrailingBit(vec2<u32>(firstLeadingBit(1u), global4.b))));
    global2 = vec3<u32>(_wgslsmith_add_u32(4294967295u, global1.b), ~(55046u | u_input.a), ~1u) >> (~vec3<u32>(_wgslsmith_mult_u32(0u, global0[_wgslsmith_index_u32(u_input.a, 16u)]) ^ ~global4.b, ~u_input.a, ~1u) % vec3<u32>(32u));
    global0 = array<u32, 16>();
    let var_0 = (global4.c.a.b > firstTrailingBit(~global2.x)) & true;
    let var_1 = global4.a;
    return global4.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(global1.a + _wgslsmith_f_op_f32(-749f + global1.a));
    let var_2 = u_input.b.zy << (_wgslsmith_mult_vec2_u32(global2.xx, global2.xy) % vec2<u32>(32u));
    global0 = array<u32, 16>();
    global3 = all(vec4<bool>(true, !all(vec2<bool>(true, true)), true, false));
    let var_3 = true;
    global4 = Struct_3(global4.a, 5797u, global4.a, vec2<u32>(~_wgslsmith_mult_u32(1u | global0[_wgslsmith_index_u32(global4.d.x, 16u)], 14166u << (global2.x % 32u)), 23994u));
    var var_4 = func_1();
    var var_5 = Struct_4(vec3<bool>(!(!(true & var_3)), true, false), ~_wgslsmith_add_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(firstLeadingBit(26382u), 16u)], 76615u, global2.x, u_input.a), _wgslsmith_mult_vec4_u32(~vec4<u32>(34131u, global4.a.a.b, u_input.a, u_input.a), abs(vec4<u32>(global0[_wgslsmith_index_u32(u_input.a, 16u)], 0u, var_4.b, var_4.b)))), ~abs(firstLeadingBit(global4.d)) << (min(~vec2<u32>(u_input.a, u_input.a) & ~vec2<u32>(global1.b, global4.d.x), select(global4.d, vec2<u32>(var_4.b, global0[_wgslsmith_index_u32(global2.x, 16u)]), false) >> (vec2<u32>(global4.d.x, 5418u) % vec2<u32>(32u))) % vec2<u32>(32u)), Struct_2(func_4(var_3, Struct_1(1000f, u_input.a), max(0u, select(var_4.b, global1.b, var_3)), _wgslsmith_mult_vec3_u32(reverseBits(vec3<u32>(1u, 4294967295u, 1u)), ~vec3<u32>(u_input.a, 12018u, 57569u))).a), vec4<f32>(-1474f, _wgslsmith_f_op_f32(select(1726f, var_4.a, false)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.a))), func_2().a));
    let x = u_input.a;
    s_output = StorageBuffer(893f, _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_5.d.a.b, 48632u), 16u)], abs(global4.b), 22247u), (vec4<u32>(var_5.b.x, var_5.c.x, 42335u, 69830u) | vec4<u32>(930u, 980u, global1.b, 57174u)) & _wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 7797u, global2.x, var_4.b), vec4<u32>(var_4.b, 16107u, 107825u, global0[_wgslsmith_index_u32(var_5.b.x, 16u)]))) & max(reverseBits(abs(var_5.b)), vec4<u32>(global2.x, func_5(Struct_5(global4.c.a, 0u, Struct_3(global4.a, 4098u, Struct_2(Struct_1(var_4.a, 1u)), vec2<u32>(0u, 20802u)), global1.a, Struct_4(vec3<bool>(var_5.a.x, var_3, var_3), var_5.b, global2.yz, Struct_2(global4.c.a), vec4<f32>(global4.a.a.a, var_5.e.x, 464f, var_5.d.a.a))), vec4<u32>(var_4.b, global1.b, global1.b, 59591u), Struct_3(Struct_2(Struct_1(var_4.a, var_5.d.a.b)), global4.a.a.b, var_5.d, global4.d)).b, _wgslsmith_dot_vec4_u32(var_5.b, vec4<u32>(0u, 20884u, 4294967295u, u_input.a)), 7190u)), 4294967295u);
}

