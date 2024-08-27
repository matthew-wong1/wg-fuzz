struct Struct_1 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec4<i32>(9748i, -9537i, -1i, 2147483647i)), Struct_1(vec4<i32>(31726i, 2462i, -1i, -36669i)), Struct_1(vec4<i32>(32287i, 101723i, 1i, 14916i)), Struct_1(vec4<i32>(46273i, 23780i, 2147483647i, i32(-2147483648))), Struct_1(vec4<i32>(-30205i, 0i, 48708i, 17261i)));

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<bool>) -> vec3<u32> {
    global1 = ~(~(select(vec3<u32>(u_input.e, 1u, 1u), vec3<u32>(0u, 0u, 4294967295u), true) >> (vec3<u32>(firstLeadingBit(u_input.b), _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 1u), u_input.e) % vec3<u32>(32u))));
    global0 = array<Struct_1, 5>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -707f)))));
    var var_1 = vec2<bool>(arg_0.x, all(vec4<bool>(true, all(vec4<bool>(arg_0.x, arg_0.x, true, true)), true, true)));
    return vec3<u32>(~(~_wgslsmith_clamp_u32(21830u, 12811u, 20049u)), ~(reverseBits(0u) & ~global1.x), _wgslsmith_mod_u32(u_input.a, ~(~0u))) << (u_input.d.yyw % vec3<u32>(32u));
}

fn func_2() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(abs(707f));
    global1 = max(u_input.d.xyz, _wgslsmith_sub_vec3_u32(u_input.d.wyw, min(countOneBits(vec3<u32>(global1.x, global1.x, 64530u) << (vec3<u32>(4294967295u, 1u, 1u) % vec3<u32>(32u))), func_3(select(vec2<bool>(false, true), vec2<bool>(true, false), true)))));
    var var_1 = vec2<bool>(any(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, true))), true);
    let var_2 = !vec3<bool>(true, !all(!vec2<bool>(var_1.x, false)), true);
    global1 = reverseBits(vec3<u32>((global1.x | 4294967295u) << (1u % 32u), 1u, countOneBits(firstLeadingBit(u_input.e))) >> (vec3<u32>(~0u, 4294967295u, abs(select(u_input.b, 18909u, var_1.x))) % vec3<u32>(32u)));
    return var_2;
}

fn func_1() -> f32 {
    let var_0 = max(countOneBits(-vec4<i32>(u_input.c.x, -1i, 0i, 1i) ^ vec4<i32>(1i, ~1717i, _wgslsmith_sub_i32(26104i, u_input.c.x), -13113i)), -(vec4<i32>(~u_input.c.x, 2147483647i ^ u_input.c.x, ~(-1i), u_input.c.x) ^ vec4<i32>(22698i ^ u_input.c.x, -u_input.c.x, -1i, u_input.c.x)));
    let var_1 = select(!vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true), !select(vec3<bool>(var_0.x == u_input.c.x, true, true), select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), true), select(select(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec4<bool>(false, true, true, false))), !select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false))), func_2(), !select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u >> (u_input.d.x % 32u), ~firstTrailingBit(1u), global1.x, global1.x), vec4<u32>(~15283u, _wgslsmith_mult_u32(u_input.a, global1.x), _wgslsmith_div_u32(countOneBits(37594u) << (~global1.x % 32u), _wgslsmith_add_u32(u_input.e, _wgslsmith_add_u32(global1.x, global1.x))), ~(~62093u))), 5u)];
    var var_3 = var_2.a | select(-vec4<i32>(1i, 1i, u_input.c.x, var_2.a.x) | _wgslsmith_div_vec4_i32(var_0, abs(vec4<i32>(2147483647i, u_input.c.x, 56067i, u_input.c.x))), var_0, !select(!vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x), !vec4<bool>(var_1.x, false, false, var_1.x), select(vec4<bool>(false, true, false, true), vec4<bool>(var_1.x, true, var_1.x, var_1.x), vec4<bool>(false, true, false, var_1.x))));
    let var_4 = global0[_wgslsmith_index_u32(u_input.b, 5u)];
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.d.wxw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(func_1()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-775f, _wgslsmith_f_op_f32(f32(-1f) * -425f)))), abs(global1.x) << (reverseBits(global1.x) % 32u));
}

