struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 13>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<u32, 13>();
    return Struct_1(10147i);
}

fn func_3() -> vec3<bool> {
    let var_0 = any(select(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), select(vec3<bool>(true, select(false, true, true), any(vec3<bool>(true, true, true))), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(true, true, true)), false));
    global0 = array<u32, 13>();
    var var_1 = countOneBits(firstLeadingBit(u_input.a.xy)) >> (firstLeadingBit(u_input.a.xy) % vec2<u32>(32u));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(1i, -1i, reverseBits(0i), -1i));
    var var_3 = Struct_1(2147483647i);
    return !(!(!(!vec3<bool>(false, var_0, var_0))));
}

fn func_2(arg_0: f32, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> i32 {
    let var_0 = arg_3.a;
    let var_1 = any(select(select(func_3(), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false)), select(select(false, false, true), select(true, true, false), all(vec4<bool>(true, true, true, false)))), vec3<bool>(true, func_3().x, true), func_3()));
    let var_2 = arg_3;
    let var_3 = vec2<bool>(true, !all(vec2<bool>(var_1, var_1)));
    let var_4 = vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_3.a, -7326i), (~vec2<i32>(-1i, arg_3.a) ^ reverseBits(vec2<i32>(var_2.a, arg_3.a))) ^ ~(vec2<i32>(arg_3.a, arg_3.a) >> (arg_2.xz % vec2<u32>(32u)))), ~(~firstTrailingBit(1i)) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(39032u, u_input.a.x ^ global0[_wgslsmith_index_u32(38556u, 13u)], countOneBits(22005u)), abs(vec3<u32>(78262u, 0u, 22502u))) % 32u), max(abs(~1i), var_0));
    return 58791i;
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: Struct_1) -> i32 {
    global0 = array<u32, 13>();
    var var_0 = arg_2;
    let var_1 = true;
    let var_2 = vec3<i32>(countOneBits(2147483647i), -arg_1.a, _wgslsmith_clamp_i32(func_2(_wgslsmith_f_op_f32(round(-2099f)), reverseBits(1u), u_input.a, func_1(!vec3<bool>(var_1, false, var_1), _wgslsmith_clamp_vec3_i32(vec3<i32>(arg_2.a, arg_2.a, var_0.a), vec3<i32>(-2147483647i, 0i, arg_2.a), arg_0.ywx))), 0i, -31718i));
    var var_3 = select(vec2<i32>(-(~(~0i)), ~1i), (var_2.zx | ~firstTrailingBit(arg_0.xy)) ^ arg_0.yx, true);
    return 8182i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(0i, func_4(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-17364i), -1i, _wgslsmith_add_i32(18840i, -34763i), 1i), (vec4<i32>(15604i, 0i, 23409i, 4426i) >> (vec4<u32>(u_input.a.x, 101636u, 35488u, u_input.a.x) % vec4<u32>(32u))) | _wgslsmith_mod_vec4_i32(vec4<i32>(20841i, 5633i, 25371i, 0i), vec4<i32>(1591i, -2147483647i, 10826i, 7902i))), func_1(vec3<bool>(true, true, true), firstTrailingBit(vec3<i32>(1i, 1i, 1i))), Struct_1(_wgslsmith_add_i32(-34707i, func_2(841f, u_input.a.x, vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), Struct_1(-76254i))))), 1i, ~min(-1i, _wgslsmith_div_i32(67125i, 1i)) & ~_wgslsmith_dot_vec2_i32(min(vec2<i32>(2147483647i, -19732i), vec2<i32>(-29197i, 46754i)), vec2<i32>(-14415i, -1i)));
    var var_1 = func_1(func_3(), ~vec3<i32>(21308i, (var_0.x | var_0.x) << (1u % 32u), var_0.x));
    var_1 = Struct_1(var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(~u_input.a.x) >> (_wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.a.yy, u_input.a.zz), u_input.a.x) % 32u), -1i, vec4<u32>(_wgslsmith_div_u32(36609u, global0[_wgslsmith_index_u32(4294967295u & global0[_wgslsmith_index_u32(countOneBits(global0[_wgslsmith_index_u32(5474u, 13u)]), 13u)], 13u)]), _wgslsmith_mod_u32(_wgslsmith_mod_u32(36401u, global0[_wgslsmith_index_u32(abs(43604u), 13u)]), firstTrailingBit(_wgslsmith_sub_u32(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)]))), ~global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 0u, 7660u), vec3<u32>(global0[_wgslsmith_index_u32(51428u, 13u)], 14125u, 4803u)), 13u)], 0u | global0[_wgslsmith_index_u32(~max(u_input.a.x, u_input.a.x), 13u)]), reverseBits(countOneBits(max(_wgslsmith_mult_vec2_u32(u_input.a.yy, u_input.a.zx), u_input.a.zz << (u_input.a.yy % vec2<u32>(32u))))), vec3<i32>(-_wgslsmith_mod_i32(var_1.a, 55314i), 0i, min(-7686i, -2147483647i)));
}

