struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1> = array<u32, 1>(20017u);

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec3<i32>, arg_3: u32) -> vec3<bool> {
    global0 = array<u32, 1>();
    let var_0 = !(all(!select(vec4<bool>(arg_1, true, true, arg_0.a.a.x), vec4<bool>(arg_0.a.a.x, false, arg_0.a.a.x, true), vec4<bool>(false, true, false, arg_0.a.a.x))) || false);
    var var_1 = Struct_3(arg_0.a);
    var_1 = arg_0;
    var var_2 = arg_0;
    return !vec3<bool>(true, (u_input.a.x >= 12616i) && var_1.a.a.x, arg_0.a.a.x);
}

fn func_2() -> vec3<i32> {
    var var_0 = false;
    var_0 = !any(vec2<bool>(any(vec2<bool>(true, true)), false));
    let var_1 = ~(~_wgslsmith_div_i32(-1i, 17444i));
    let var_2 = _wgslsmith_f_op_f32(min(-632f, 809f));
    var_0 = all(func_3(Struct_3(Struct_1(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false)))), any(vec2<bool>(false, true)), -firstTrailingBit(vec3<i32>(2147483647i, u_input.a.x, -17848i)), firstTrailingBit(40421u)));
    return min(-(countOneBits(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, -5677i))) | -(vec3<i32>(9034i, -50609i, 14291i) ^ vec3<i32>(var_1, var_1, -2147483647i))), select(_wgslsmith_clamp_vec3_i32(vec3<i32>(abs(15107i), var_1, 2147483647i), vec3<i32>(0i << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)], 1u)] % 32u), var_1 | 36748i, 1i), -abs(vec3<i32>(u_input.c, u_input.a.x, u_input.a.x))), vec3<i32>(2147483647i, -min(var_1, 12637i), 15964i), true));
}

fn func_1(arg_0: vec4<i32>) -> vec2<u32> {
    global0 = array<u32, 1>();
    let var_0 = 1i >= _wgslsmith_dot_vec3_i32(max(~vec3<i32>(u_input.c, -2147483647i, 1i), vec3<i32>(~(-14863i), ~(-2147483647i), ~(-2147483647i))), select(arg_0.www, func_2(), vec3<bool>(any(vec3<bool>(false, false, false)), any(vec2<bool>(true, true)), true)));
    let var_1 = Struct_3(Struct_1(!vec2<bool>(false, all(vec4<bool>(var_0, var_0, var_0, false)))));
    var var_2 = Struct_3(var_1.a);
    var var_3 = u_input.a.x;
    return select(_wgslsmith_sub_vec2_u32(~(~(u_input.b.wz & vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(30168u, 1u)]))), reverseBits(u_input.b.xw)), _wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.b.x), u_input.b.zx), all(!(!vec3<bool>(var_2.a.a.x, true, false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(1i);
    let var_1 = _wgslsmith_sub_vec2_u32(u_input.b.wx >> (vec2<u32>(~4294967295u, countOneBits(global0[_wgslsmith_index_u32(u_input.b.x, 1u)])) % vec2<u32>(32u)), ~((u_input.b.wx | vec2<u32>(global0[_wgslsmith_index_u32(25536u, 1u)], 4294967295u)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)]), vec2<u32>(u_input.b.x, global0[_wgslsmith_index_u32(0u, 1u)])) % vec2<u32>(32u)))) << (reverseBits(_wgslsmith_add_vec2_u32(func_1(vec4<i32>(-61252i, var_0.a, 17759i, var_0.a)), ~vec2<u32>(4294967295u, u_input.b.x)) << (vec2<u32>(0u, 1u) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = array<u32, 1>();
    let var_2 = -(~(vec3<i32>(-2147483647i, var_0.a, var_0.a) >> (vec3<u32>(u_input.b.x, var_1.x, 4294967295u) % vec3<u32>(32u)))) << (vec3<u32>(14002u, ~54744u, 1u) % vec3<u32>(32u));
    let var_3 = ~u_input.b.zzy;
    global0 = array<u32, 1>();
    let var_4 = ~_wgslsmith_mod_i32(-47452i, var_0.a);
    var_0 = Struct_4(var_4);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(_wgslsmith_mod_i32(62180i, _wgslsmith_div_i32(firstLeadingBit(-3791i), -var_0.a)), var_4), var_2.x & ((~var_4 << (~var_3.x % 32u)) << ((~u_input.b.x & global0[_wgslsmith_index_u32(~var_1.x, 1u)]) % 32u)), ~u_input.b, abs(abs(vec2<u32>(u_input.b.x, 88606u))), ~vec3<u32>(0u, max(u_input.b.x, 1u), 1u));
}

