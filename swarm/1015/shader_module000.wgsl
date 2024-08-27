struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
    c: Struct_3,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 15>;

var<private> global1: array<bool, 1> = array<bool, 1>(true);

var<private> global2: Struct_1;

var<private> global3: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4294967295u, 38056u), vec2<u32>(74758u, 40246u), vec2<u32>(1u, 6238u), vec2<u32>(0u, 1u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(11898u, 4294967295u), vec2<u32>(64740u, 4294967295u), vec2<u32>(1u, 97457u), vec2<u32>(59843u, 1691u), vec2<u32>(0u, 4294967295u), vec2<u32>(13469u, 48756u), vec2<u32>(108258u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u));

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5) -> bool {
    var var_0 = Struct_4(69913u);
    var var_1 = 0u;
    global3 = array<vec2<u32>, 14>();
    var var_2 = !select(!global1[_wgslsmith_index_u32(4294967295u, 1u)], 4294967295u > select(_wgslsmith_div_u32(var_0.a, u_input.a.x), ~arg_0.b.a.x, !global1[_wgslsmith_index_u32(0u, 1u)]), any(arg_0.c.a.a.zxy));
    let var_3 = global0[_wgslsmith_index_u32(63741u, 15u)];
    return !arg_0.c.a.a.x;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = Struct_2(select(~select(~vec2<u32>(u_input.a.x, arg_0.a.x), vec2<u32>(arg_0.a.x, 28222u), vec2<bool>(true, global1[_wgslsmith_index_u32(u_input.b.x, 1u)])), global3[_wgslsmith_index_u32(arg_0.a.x, 14u)], true));
    var var_1 = global2.a;
    var var_2 = countOneBits(vec2<i32>(~(~countOneBits(global0[_wgslsmith_index_u32(u_input.b.x, 15u)])), _wgslsmith_add_i32(firstTrailingBit(~global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), (global0[_wgslsmith_index_u32(1u, 15u)] | 35754i) >> (u_input.a.x % 32u))));
    let var_3 = firstLeadingBit(arg_0.a.x);
    let var_4 = ~(vec3<u32>(1u, ~1u, abs(abs(33518u))) ^ ~firstLeadingBit(~vec3<u32>(20325u, var_0.a.x, 15550u)));
    return Struct_1(vec4<bool>(global2.a.x, true, func_3(Struct_5(~var_0.a.x, Struct_2(vec2<u32>(59559u, 4918u)), Struct_3(Struct_1(vec4<bool>(var_1.x, false, true, var_1.x)), Struct_2(vec2<u32>(4294967295u, u_input.c))), vec3<f32>(1000f, -219f, 501f))), any(global2.a.xyz)));
}

fn func_1(arg_0: Struct_2) -> vec3<bool> {
    global2 = func_2(Struct_2(~(vec2<u32>(1u, 40499u) | vec2<u32>(u_input.b.x, arg_0.a.x)) & ~vec2<u32>(u_input.b.x, arg_0.a.x)));
    let var_0 = min(firstLeadingBit(vec4<i32>(global0[_wgslsmith_index_u32(~u_input.c, 15u)], ~(global0[_wgslsmith_index_u32(arg_0.a.x, 15u)] | 2147483647i), _wgslsmith_sub_i32(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(4294967295u, 15u)], global0[_wgslsmith_index_u32(u_input.c, 15u)]), 0i), _wgslsmith_mult_i32(-global0[_wgslsmith_index_u32(arg_0.a.x, 15u)], _wgslsmith_clamp_i32(43699i, -1i, -18719i)))), ((vec4<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 15u)], global0[_wgslsmith_index_u32(arg_0.a.x, 15u)], 2147483647i) & ~vec4<i32>(24471i, global0[_wgslsmith_index_u32(u_input.c, 15u)], -1i, global0[_wgslsmith_index_u32(u_input.a.x, 15u)])) ^ ~(-vec4<i32>(11439i, -1i, 2147483647i, 33337i))) ^ -(reverseBits(vec4<i32>(global0[_wgslsmith_index_u32(22877u, 15u)], global0[_wgslsmith_index_u32(arg_0.a.x, 15u)], global0[_wgslsmith_index_u32(arg_0.a.x, 15u)], global0[_wgslsmith_index_u32(22491u, 15u)])) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b.x, 1u, arg_0.a.x, u_input.c), vec4<u32>(0u, arg_0.a.x, arg_0.a.x, arg_0.a.x)) % vec4<u32>(32u))));
    let var_1 = vec4<i32>(-22105i, 12932i, reverseBits(-(-global0[_wgslsmith_index_u32(u_input.b.x, 15u)] | -var_0.x)), ~_wgslsmith_sub_i32(_wgslsmith_add_i32(~global0[_wgslsmith_index_u32(u_input.a.x, 15u)], global0[_wgslsmith_index_u32(arg_0.a.x, 15u)]), firstLeadingBit(1i)));
    let var_2 = var_0;
    var var_3 = arg_0;
    return vec3<bool>(true, any(!func_2(arg_0).a.wyw), true);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<u32>, 14>();
    global0 = array<i32, 15>();
    let var_0 = Struct_2(vec2<u32>(_wgslsmith_mod_u32(min(abs(53694u), ~u_input.a.x), min(u_input.c, _wgslsmith_mult_u32(u_input.a.x, 30469u))), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 4294967295u, 24075u), u_input.b), u_input.b), u_input.b)));
    let var_1 = func_1(var_0);
    let var_2 = 8798u;
    var var_3 = vec2<bool>(false, false);
    var_3 = global2.a.xz;
    let var_4 = vec3<i32>(12645i, _wgslsmith_dot_vec3_i32(abs(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(global0[_wgslsmith_index_u32(u_input.a.x, 15u)], 2147483647i, global0[_wgslsmith_index_u32(u_input.b.x, 15u)]), vec3<i32>(global0[_wgslsmith_index_u32(0u, 15u)], -16489i, 7633i)))), min(-abs(vec3<i32>(0i, global0[_wgslsmith_index_u32(9155u, 15u)], global0[_wgslsmith_index_u32(var_0.a.x, 15u)])), firstTrailingBit(vec3<i32>(-1i, 0i, global0[_wgslsmith_index_u32(4294967295u, 15u)]) >> (u_input.b % vec3<u32>(32u))))), 2147483647i << (countOneBits(_wgslsmith_sub_u32(0u, var_2) << (0u % 32u)) % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(select(~(global3[_wgslsmith_index_u32(1u, 14u)] & ~vec2<u32>(34763u, 126662u)), u_input.a, !var_1.xy), _wgslsmith_f_op_f32(abs(-757f)));
}

