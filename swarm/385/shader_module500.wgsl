struct Struct_1 {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: f32,
    d: i32,
    e: vec3<bool>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: u32,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8>;

var<private> global1: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_1) -> vec3<u32> {
    return ~arg_0.c;
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    var var_0 = global1.a.x;
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(u_input.a, abs(_wgslsmith_dot_vec2_i32(select(global1.b.zy, global1.b.yz, global1.e.zy), vec2<i32>(global1.d, -1i)))), 1i, u_input.a, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(-19284i, -2147483647i)), select(vec2<i32>(~(-2147483647i), -1752i), countOneBits(~vec2<i32>(-2147483647i, global1.d)), !vec2<bool>(false, global0[_wgslsmith_index_u32(global1.a.x, 8u)]))));
    let var_2 = Struct_3(arg_0.xww, Struct_1(abs(~(-2147483647i)), vec2<u32>(global1.a.x, 1u), _wgslsmith_sub_vec3_u32(~vec3<u32>(global1.a.x, 4294967295u, global1.a.x), func_3(Struct_1(-2147483647i, vec2<u32>(13050u, 1041u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), global1.c))) << (global1.a.wyw % vec3<u32>(32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c)))), global1.a.x, Struct_1(-2147483647i, firstTrailingBit(firstTrailingBit(vec2<u32>(global1.a.x, global1.a.x))), vec3<u32>(_wgslsmith_mod_u32(global1.a.x, 4294967295u | global1.a.x), global1.a.x, ~0u), 2545f), _wgslsmith_div_i32(17295i, ~_wgslsmith_add_i32(1i, firstTrailingBit(0i))));
    let var_3 = global1.a.x > abs(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~4629u, 1u), abs(global1.a.x)));
    var var_4 = var_2;
    return Struct_2(vec4<u32>(~(~var_2.c), firstLeadingBit(global1.a.x), _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(global1.a.yzz, var_2.d.c), ~global1.a.xxx)), reverseBits(6594u) | (4294967295u | global1.a.x)), _wgslsmith_mod_vec4_i32(select(vec4<i32>(-1i) * -vec4<i32>(2147483647i, -1i, -2147483647i, arg_0.x), vec4<i32>(-global1.b.x, var_1.x, firstLeadingBit(-10135i), 14511i), !global0[_wgslsmith_index_u32(~var_2.b.b.x, 8u)]), firstTrailingBit(arg_0)), -1000f, ~var_2.e, select(global1.e, select(select(vec3<bool>(global0[_wgslsmith_index_u32(88822u, 8u)], true, var_3), !vec3<bool>(global0[_wgslsmith_index_u32(var_2.d.c.x, 8u)], global0[_wgslsmith_index_u32(var_4.c, 8u)], var_3), select(vec3<bool>(true, false, var_3), vec3<bool>(false, var_3, true), false)), global1.e, global1.e), var_3));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_3, arg_2: u32) -> u32 {
    global1 = func_2(global1.b);
    global0 = array<bool, 8>();
    global1 = func_2(~_wgslsmith_mod_vec4_i32(global1.b, ~vec4<i32>(-22880i, 2147483647i, 1i, arg_0.a)));
    var var_0 = Struct_2(vec4<u32>(~20553u, arg_0.c.x, max(73051u, ~(~4294967295u)), ~arg_1.c), func_2(global1.b).b, _wgslsmith_f_op_f32(round(arg_1.d.d)), ~14765i, vec3<bool>(true, global1.e.x, global1.e.x));
    global0 = array<bool, 8>();
    return 4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_clamp_i32(global1.b.x, global1.d, 56324i);
    let var_1 = global1.c;
    global0 = array<bool, 8>();
    let var_2 = Struct_2(vec4<u32>(global1.a.x >> (~global1.a.x % 32u), countOneBits(51264u), (func_1(Struct_1(global1.d, global1.a.ww, global1.a.yyw, global1.c), Struct_3(global1.b.ywx, Struct_1(-6023i, global1.a.ww, global1.a.xwz, global1.c), 4294967295u, Struct_1(u_input.a, global1.a.xz, vec3<u32>(4294967295u, global1.a.x, global1.a.x), -515f), global1.d), global1.a.x) ^ 20885u) >> (func_3(Struct_1(u_input.a, global1.a.zw, vec3<u32>(global1.a.x, global1.a.x, 0u), global1.c)).x % 32u), _wgslsmith_dot_vec2_u32(~(~vec2<u32>(global1.a.x, 1u)), vec2<u32>(countOneBits(global1.a.x), _wgslsmith_mod_u32(global1.a.x, 6734u)))), vec4<i32>(func_2(global1.b).d, _wgslsmith_sub_i32(~abs(-1i), u_input.a), -global1.d, ~(-1i)), _wgslsmith_f_op_f32(-global1.c), countOneBits(u_input.a), func_2(vec4<i32>(global1.b.x & ~24587i, _wgslsmith_sub_i32(1i, 11653i) | _wgslsmith_mod_i32(-2147483647i, global1.d), u_input.a, firstTrailingBit(1i))).e);
    global1 = func_2(global1.b);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.b);
}

