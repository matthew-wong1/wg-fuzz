struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

var<private> global1: vec4<i32>;

var<private> global2: array<f32, 19>;

var<private> global3: array<vec3<bool>, 15>;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec4<f32>) -> vec4<bool> {
    var var_0 = vec3<bool>(~_wgslsmith_mod_i32(~0i, _wgslsmith_dot_vec3_i32(global1.wxx, global1.xxz)) >= -16789i, arg_0.a || all(vec4<bool>(false, true, false, arg_0.a & false)), select(arg_0.a, true, any(vec2<bool>(any(vec2<bool>(arg_0.a, false)), any(vec4<bool>(true, arg_0.a, false, true))))));
    var var_1 = ~(~0u);
    var var_2 = arg_0;
    let var_3 = 15684u;
    var_0 = global3[_wgslsmith_index_u32(abs(~_wgslsmith_sub_u32(max(reverseBits(38436u), arg_1), 1u)), 15u)];
    return vec4<bool>(all(select(vec4<bool>(any(vec4<bool>(false, var_0.x, false, var_0.x)), !arg_0.a, false, select(var_2.a, false, var_2.a)), vec4<bool>(global2[_wgslsmith_index_u32(1u, 19u)] > arg_2.x, var_0.x, false, arg_0.a), vec4<bool>(true, arg_0.a, true, any(vec4<bool>(false, true, var_0.x, true))))), false, !var_2.a, false);
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> bool {
    var var_0 = ~vec3<u32>(~(~_wgslsmith_mult_u32(71302u, arg_0.b.x)), 78733u, arg_1);
    var var_1 = global2[_wgslsmith_index_u32(87366u, 19u)];
    var var_2 = arg_0.a;
    let var_3 = vec2<bool>(!all(func_3(arg_0, ~arg_1, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 1u)], 19u)], -1227f, -594f, 807f) - vec4<f32>(global2[_wgslsmith_index_u32(arg_1, 19u)], global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(25971u, 1u)], 1u)], 19u)], 943f, -1307f)))), arg_0.a);
    return !(_wgslsmith_clamp_u32(~firstLeadingBit(11058u), global0[_wgslsmith_index_u32((global0[_wgslsmith_index_u32(arg_0.b.x, 1u)] >> (var_0.x % 32u)) & 13133u, 1u)], abs(arg_0.b.x) ^ ~arg_1) < 33844u);
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: u32) -> Struct_1 {
    global1 = ~_wgslsmith_add_vec4_i32(abs(-vec4<i32>(global1.x, 1i, arg_0, 2147483647i) & vec4<i32>(-2147483647i, 13125i, 14689i, u_input.a)), vec4<i32>(arg_0, global1.x, arg_0, 1i));
    let var_0 = ~(-global1.yzz);
    let var_1 = abs(vec3<u32>(arg_1.b.x & abs(_wgslsmith_sub_u32(10001u, arg_1.b.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(~arg_1.b.x, arg_1.b.x), firstTrailingBit(arg_1.b)), ~firstTrailingBit(arg_3)));
    let var_2 = vec2<bool>(true, any(vec3<bool>(!(var_0.x <= u_input.a), max(arg_3, arg_3) > min(9241u, var_1.x), all(vec4<bool>(arg_1.a, true, arg_1.a, arg_2.x)))));
    var var_3 = _wgslsmith_mult_vec3_u32(~countOneBits(vec3<u32>(arg_3, arg_3, var_1.x)) & var_1, _wgslsmith_mod_vec3_u32(var_1, ~(select(vec3<u32>(1u, 23492u, arg_3), vec3<u32>(arg_3, global0[_wgslsmith_index_u32(22996u, 1u)], 4294967295u), vec3<bool>(false, arg_1.a, true)) << (~vec3<u32>(arg_3, global0[_wgslsmith_index_u32(4208u, 1u)], arg_1.b.x) % vec3<u32>(32u)))));
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> u32 {
    var var_0 = func_4(~global1.x, Struct_1(func_2(arg_2, 1u >> (_wgslsmith_div_u32(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(35673u, 1u)]) % 32u)), ~arg_1.zw), vec4<bool>(!(_wgslsmith_dot_vec2_u32(arg_1.zx, vec2<u32>(132135u, arg_0.b.x)) == 8587u), ~6138i > global1.x, arg_0.a, !arg_2.a), select(abs(max(~arg_1.x, 1u)), ~(~1u), all(!vec4<bool>(arg_0.a, true, true, arg_2.a))));
    var var_1 = func_4(abs(~0i), arg_0, !(!select(vec4<bool>(false, arg_2.a, false, arg_2.a), !vec4<bool>(var_0.a, true, var_0.a, false), arg_0.a)), _wgslsmith_add_u32(~abs(0u), ~arg_1.x ^ _wgslsmith_sub_u32(24336u, 1u)));
    let var_2 = Struct_1(!(!var_1.a), arg_2.b << (reverseBits(arg_2.b) % vec2<u32>(32u)));
    let var_3 = !select(select(!vec2<bool>(false, var_1.a), vec2<bool>(select(true, var_1.a, var_0.a), true), select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(arg_0.a, var_1.a), vec2<bool>(false, var_2.a), var_2.a))), vec2<bool>(!var_2.a, true), select(vec2<bool>(func_3(var_2, var_1.b.x, vec4<f32>(global2[_wgslsmith_index_u32(0u, 19u)], global2[_wgslsmith_index_u32(1u, 19u)], 2457f, global2[_wgslsmith_index_u32(0u, 19u)])).x, 36124u == var_0.b.x), vec2<bool>(true, true), vec2<bool>(true, arg_0.a)));
    global1 = ~(((~vec4<i32>(0i, 56469i, -2147483647i, -59816i) ^ -vec4<i32>(u_input.a, global1.x, 1i, -2147483647i)) | firstTrailingBit(-vec4<i32>(0i, 2147483647i, 3287i, global1.x))) >> (_wgslsmith_clamp_vec4_u32(arg_1, vec4<u32>(~global0[_wgslsmith_index_u32(37909u, 1u)], _wgslsmith_add_u32(1u, 33287u), var_1.b.x, arg_0.b.x), ~countOneBits(arg_1)) % vec4<u32>(32u)));
    return var_1.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(958f + global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(~44334u, 1u)], countOneBits(1u), 16984u), 1u)], 1u)], 1u)], 1u)] << (_wgslsmith_dot_vec2_u32(~(~vec2<u32>(global0[_wgslsmith_index_u32(13068u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)])), ~_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(53480u, 1u)], 1u)], 24660u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(28102u, 1u)], 1u)], global0[_wgslsmith_index_u32(1u, 1u)]))) % 32u), 19u)]);
    let var_1 = ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(~_wgslsmith_add_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], 4294967295u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(3011u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(48142u, 1u)], 1u)], 1u)]))), vec2<u32>(~global0[_wgslsmith_index_u32(func_1(Struct_1(true, vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)])), vec4<u32>(29949u, global0[_wgslsmith_index_u32(4294967295u, 1u)], global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]), Struct_1(false, vec2<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(55542u, 1u)], 1u)]))), 1u)], global0[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(2854u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]), 1u)])), 1u)], 1u)], 1u)];
    let var_2 = Struct_1(false, _wgslsmith_sub_vec2_u32(~min(countOneBits(vec2<u32>(4294967295u, var_1)), vec2<u32>(1810u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(34042u, 1u)], 1u)]) << (vec2<u32>(global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)]) % vec2<u32>(32u))), _wgslsmith_add_vec2_u32(~(vec2<u32>(var_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35713u, 1u)], 1u)]) & vec2<u32>(global0[_wgslsmith_index_u32(115226u, 1u)], 46772u)), ~vec2<u32>(0u, var_1))));
    var var_3 = countOneBits(vec3<u32>(var_2.b.x, 11522u, ~(~var_1))) | vec3<u32>(_wgslsmith_div_u32(_wgslsmith_mult_u32(~var_1, 1u), _wgslsmith_sub_u32(0u, var_1) | (global0[_wgslsmith_index_u32(4294967295u, 1u)] << (54958u % 32u))), global0[_wgslsmith_index_u32(2322u << (firstTrailingBit(1u) % 32u), 1u)], var_2.b.x);
    let var_4 = Struct_1(!all(!vec2<bool>(var_2.a, var_2.a)) && var_2.a, ~vec2<u32>(~global0[_wgslsmith_index_u32(~0u, 1u)], ~var_1 << (4294967295u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(global0[_wgslsmith_index_u32(67114u, 1u)], _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, var_2.b.x, var_3.x, 0u), ~(~vec4<u32>(var_3.x, global0[_wgslsmith_index_u32(16040u, 1u)], var_3.x, 10926u))), 0u));
}

