struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
    c: vec4<bool>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: Struct_2, arg_3: i32) -> bool {
    let var_0 = arg_2;
    var var_1 = arg_0.a.c;
    let var_2 = 906f;
    var var_3 = arg_0.a.c;
    var_3 = select(select(!vec4<bool>(true, var_0.c <= arg_2.c, true, 1u < arg_2.a), arg_0.b, any(vec3<bool>(true, var_2 != 1000f, any(var_3.zxy)))), !vec4<bool>(true, any(!vec2<bool>(arg_0.b.x, true)), all(vec2<bool>(true, true)), true), vec4<bool>(!var_3.x || all(!vec4<bool>(var_3.x, true, var_3.x, var_1.x)), all(select(var_3.xz, arg_0.b.ww, true)), all(arg_0.a.c), !any(!vec4<bool>(arg_1, arg_0.a.a.x, true, var_3.x))));
    return all(select(!(!vec4<bool>(arg_0.b.x, var_1.x, false, true)), arg_0.b, !select(arg_0.b, vec4<bool>(arg_0.b.x, var_3.x, var_1.x, false), false))) || false;
}

fn func_2() -> vec4<bool> {
    return !select(vec4<bool>(true, (-34411i & u_input.a.x) <= 1i, true, func_3(Struct_3(Struct_1(vec3<bool>(false, true, true), vec3<i32>(17425i, u_input.a.x, u_input.a.x), vec4<bool>(true, false, false, false), u_input.a.zw), vec4<bool>(false, false, false, false)), true, Struct_2(43839u, 4294967295u, u_input.a.x), -41151i)), !vec4<bool>(true, any(vec4<bool>(false, true, true, true)), false, true), vec4<bool>(false, false, true, true));
}

fn func_1() -> bool {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(~firstLeadingBit(u_input.a.wz) & vec2<i32>(firstLeadingBit(-1i), firstLeadingBit(u_input.a.x)), countOneBits(u_input.a.yw)), -18019i);
    var_0 = 2147483647i;
    var var_1 = select(vec4<bool>(true, true, true, true), select(vec4<bool>(all(vec2<bool>(true, true)), select(true, true, all(vec2<bool>(false, true))), true, true), select(func_2(), vec4<bool>(true, all(vec2<bool>(false, true)), false, true), !any(vec2<bool>(false, true))), true), vec4<bool>(all(vec3<bool>(false, false, true)), !all(vec3<bool>(true, true, true)), all(vec2<bool>(any(vec3<bool>(false, true, true)), true)), true));
    var_0 = ~u_input.a.x;
    let var_2 = min(1u, _wgslsmith_clamp_u32(abs(4294967295u), firstTrailingBit(~4294967295u), ~1u));
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -u_input.a.x;
    var var_1 = -abs(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, -34720i, u_input.a.x, 3i) | u_input.a, u_input.a));
    let var_2 = select(!vec4<bool>(true, max(2147483647i, u_input.a.x) > u_input.a.x, true, !func_1()), func_2(), all(vec2<bool>(true, true)));
    let var_3 = Struct_2(68955u, 4294967295u, 1i);
    var_1 = -select(-1i, _wgslsmith_sub_i32(u_input.a.x, -1503i), true);
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~u_input.a.x), ~(min(vec3<u32>(var_3.b, var_3.a, var_3.b), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, var_3.b, 0u), vec3<u32>(4294967295u, var_3.a, var_3.a))) >> (~(~vec3<u32>(var_3.b, var_3.b, 4294967295u)) % vec3<u32>(32u))));
}

