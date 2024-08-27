struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: vec3<bool>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_1,
    e: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 18>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: f32, arg_1: bool) -> u32 {
    var var_0 = Struct_1(~(~reverseBits(u_input.a)), _wgslsmith_div_vec3_u32(firstTrailingBit(~vec3<u32>(u_input.a, 1u, 1u)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 50709u, 1u), ~vec3<u32>(u_input.a, 15804u, u_input.a))) & vec3<u32>(~u_input.a, ~u_input.a, 4485u), select(select(select(vec3<bool>(true, true, true), !vec3<bool>(arg_1, true, arg_1), arg_1), !select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, false, false), vec3<bool>(arg_1, true, false)), select(vec3<bool>(true, true, true), !vec3<bool>(arg_1, true, arg_1), true)), select(select(select(vec3<bool>(true, arg_1, arg_1), vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_1, arg_1, arg_1)), !vec3<bool>(true, arg_1, arg_1), !arg_1), !(!vec3<bool>(true, true, arg_1)), vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 18u)] != global0[_wgslsmith_index_u32(67403u, 18u)], true, arg_1)), vec3<bool>(!arg_1, true, any(!vec2<bool>(false, arg_1)))), !vec2<bool>(all(select(vec2<bool>(arg_1, false), vec2<bool>(arg_1, false), arg_1)), any(select(vec2<bool>(true, false), vec2<bool>(arg_1, false), true))));
    return var_0.b.x;
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 18>();
    var var_0 = 1i;
    var_0 = global0[_wgslsmith_index_u32(0u, 18u)];
    var var_1 = Struct_2(Struct_1(countOneBits(~u_input.a) ^ 6663u, _wgslsmith_add_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), u_input.a, 65441u), vec3<u32>(u_input.a, u_input.a, countOneBits(0u))), vec3<bool>(true, true, all(vec4<bool>(false, false, false, true)) & true), vec2<bool>(false, _wgslsmith_dot_vec4_i32(vec4<i32>(-15253i, 2147483647i, 2030i, -99989i), vec4<i32>(-2147483647i, 12234i, global0[_wgslsmith_index_u32(57023u, 18u)], 3374i)) < global0[_wgslsmith_index_u32(57182u, 18u)])), vec4<bool>(true, true, true, any(select(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true), vec2<bool>(true, true)))), Struct_1(1u, _wgslsmith_sub_vec3_u32(vec3<u32>(0u, func_3(513f, true), 4294967295u), (vec3<u32>(u_input.a, u_input.a, 76751u) << (vec3<u32>(0u, 18860u, 16818u) % vec3<u32>(32u))) >> (vec3<u32>(7805u, u_input.a, u_input.a) % vec3<u32>(32u))), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(all(vec3<bool>(true, false, false)), true, true)), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), vec2<bool>(true, any(vec2<bool>(false, true))), true)), Struct_1(countOneBits(~(~1u)), ~(~vec3<u32>(u_input.a, 44722u, 4294967295u)), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec2<bool>(false, true)), vec2<bool>((1u < u_input.a) && true, true));
    var var_2 = select(max(-_wgslsmith_mult_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(u_input.a, 18u)], -2147483647i, global0[_wgslsmith_index_u32(u_input.a, 18u)]), vec4<i32>(global0[_wgslsmith_index_u32(42875u, 18u)], global0[_wgslsmith_index_u32(var_1.d.b.x, 18u)], 36207i, -1i)), ~vec4<i32>(43354i, global0[_wgslsmith_index_u32(59193u, 18u)], 4360i, global0[_wgslsmith_index_u32(1u, 18u)])), ~vec4<i32>(reverseBits(1i), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(49108u, 18u)], 0i), abs(global0[_wgslsmith_index_u32(1u, 18u)]), _wgslsmith_mod_i32(-1i, 2147483647i))), abs(-vec4<i32>(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, var_1.c.a, var_1.a.a), vec3<u32>(u_input.a, u_input.a, 0u)), 18u)], 1i << (u_input.a % 32u), global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(u_input.a, 18u)])), true);
    return Struct_1(_wgslsmith_clamp_u32(var_1.d.b.x, var_1.c.b.x, var_1.d.a), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, u_input.a, ~u_input.a), ~_wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_1.d.b.x, 0u, u_input.a)), var_1.c.b)), vec3<bool>(select(!var_1.a.d.x, all(vec3<bool>(var_1.a.d.x, true, false)), global0[_wgslsmith_index_u32(u_input.a, 18u)] < var_2.x) && true, true == !var_1.d.c.x, true), vec2<bool>(var_1.a.d.x, var_1.c.d.x));
}

fn func_1(arg_0: i32) -> Struct_1 {
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_3, arg_3: Struct_3) -> vec3<bool> {
    global0 = array<i32, 18>();
    var var_0 = select(select(!select(select(vec3<bool>(false, arg_2.a, false), arg_1.c, arg_2.a), arg_1.c, true), arg_1.c, vec3<bool>(true, false, arg_1.c.x)), arg_1.c, true);
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(ceil(arg_3.b));
    var var_3 = min(_wgslsmith_mult_vec2_u32(vec2<u32>(reverseBits(~arg_1.a), arg_1.a), abs(~_wgslsmith_add_vec2_u32(vec2<u32>(55358u, 28903u), vec2<u32>(arg_1.a, u_input.a)))), arg_1.b.yx);
    return !(!(!func_1(arg_2.c).c));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 18>();
    global0 = array<i32, 18>();
    let var_0 = 0u;
    var var_1 = Struct_1(~4294967295u, vec3<u32>(u_input.a, 0u, 4294967295u), func_4(abs(firstLeadingBit(firstLeadingBit(global0[_wgslsmith_index_u32(36106u, 18u)]))), func_1(2147483647i), Struct_3(false, _wgslsmith_f_op_f32(f32(-1f) * -1344f), -42844i), Struct_3(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(576f, 2815f))), 1i)), select(func_4(global0[_wgslsmith_index_u32(0u, 18u)], Struct_1(0u, abs(vec3<u32>(var_0, 6568u, 0u)), vec3<bool>(true, true, true), func_1(global0[_wgslsmith_index_u32(var_0, 18u)]).d), Struct_3(true, _wgslsmith_f_op_f32(-206f - -238f), 1i), Struct_3(true, _wgslsmith_f_op_f32(select(-727f, 562f, true)), global0[_wgslsmith_index_u32(u_input.a, 18u)])).yx, !select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), select(true, any(vec2<bool>(true, true)), func_2().c.x)));
    let var_2 = Struct_2(Struct_1(0u, _wgslsmith_mult_vec3_u32(vec3<u32>(var_1.b.x, var_0, 20480u) ^ var_1.b, ~countOneBits(var_1.b)), !var_1.c, func_1(global0[_wgslsmith_index_u32(var_1.a, 18u)]).c.yz), !vec4<bool>(var_1.d.x || true, !any(vec2<bool>(var_1.c.x, true)), true, true), func_1(_wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(var_0, 18u)] | (i32(-1i) * -18997i), ~(-2147483647i), 2147483647i)), Struct_1(var_1.a, max(_wgslsmith_add_vec3_u32(func_1(-2147483647i).b, vec3<u32>(0u, u_input.a, var_0)), ~_wgslsmith_add_vec3_u32(vec3<u32>(14554u, 67327u, 2662u), var_1.b)), var_1.c, func_1(firstTrailingBit(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.a, 18u)]))).d), select(vec2<bool>(true, true), vec2<bool>(var_1.d.x, var_1.d.x), false));
    global0 = array<i32, 18>();
    var var_3 = 20359i;
    var var_4 = ~var_2.d.b.x;
    var_1 = func_1(min(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 1u, var_1.a, 15526u), vec4<u32>(4294967295u, var_0, 795u, var_0)), vec4<u32>(u_input.a, 4294967295u, var_0, 0u)), 18u)] >> (2274u % 32u), 0i));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1.b.x, global0[_wgslsmith_index_u32(u_input.a, 18u)]);
}

