struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 17363u;

var<private> global1: array<bool, 4> = array<bool, 4>(false, false, true, false);

var<private> global2: vec3<u32>;

var<private> global3: array<bool, 12>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> bool {
    global3 = array<bool, 12>();
    global2 = vec3<u32>(_wgslsmith_mod_u32(global2.x, min(_wgslsmith_sub_u32(~global2.x, ~u_input.b.x), 0u | (u_input.b.x | 1u))), ~4294967295u, u_input.b.x);
    global3 = array<bool, 12>();
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(true, global2.x, _wgslsmith_mod_vec3_u32(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(12986u, 11201u, 1u), vec3<u32>(u_input.b.x, 4294967295u, 25210u))), ~vec3<u32>(1u, 1u, u_input.b.x) & vec3<u32>(countOneBits(1u), min(36195u, u_input.b.x), 1u)));
    return var_1.a;
}

fn func_2(arg_0: Struct_1) -> bool {
    let var_0 = Struct_1(select(all(vec3<bool>(arg_0.c.x >= 1u, !arg_0.a, global1[_wgslsmith_index_u32(arg_0.c.x, 4u)])), global3[_wgslsmith_index_u32(arg_0.c.x, 12u)], any(vec3<bool>(false, all(vec3<bool>(false, arg_0.a, global3[_wgslsmith_index_u32(38914u, 12u)])), select(true, false, global1[_wgslsmith_index_u32(4294967295u, 4u)])))), abs(arg_0.c.x), vec3<u32>(_wgslsmith_mod_u32(select(4294967295u, 1u, false) & _wgslsmith_dot_vec2_u32(arg_0.c.xx, vec2<u32>(u_input.b.x, 0u)), arg_0.b), 16530u, 4294967295u));
    var var_1 = arg_0;
    var var_2 = var_0;
    global3 = array<bool, 12>();
    var var_3 = arg_0;
    return func_3();
}

fn func_1(arg_0: i32) -> u32 {
    global1 = array<bool, 4>();
    let var_0 = 1i;
    var var_1 = vec4<i32>(-3913i, abs(arg_0), var_0, var_0 | abs(var_0));
    global0 = 1u;
    var var_2 = vec4<bool>(any(vec3<bool>(func_2(Struct_1(global3[_wgslsmith_index_u32(u_input.b.x, 12u)], u_input.b.x, vec3<u32>(global2.x, global2.x, 3665u))), global3[_wgslsmith_index_u32(global2.x, 12u)], global1[_wgslsmith_index_u32(~(~36128u), 4u)])), all(select(select(vec4<bool>(global3[_wgslsmith_index_u32(1u, 12u)], true, global1[_wgslsmith_index_u32(global2.x, 4u)], true), select(vec4<bool>(false, global1[_wgslsmith_index_u32(2416u, 4u)], global3[_wgslsmith_index_u32(u_input.b.x, 12u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(11589u, 4u)], global1[_wgslsmith_index_u32(global2.x, 4u)], global1[_wgslsmith_index_u32(3830u, 4u)]), vec4<bool>(global3[_wgslsmith_index_u32(3950u, 12u)], true, global1[_wgslsmith_index_u32(u_input.b.x, 4u)], global3[_wgslsmith_index_u32(u_input.b.x, 12u)])), global1[_wgslsmith_index_u32(firstTrailingBit(global2.x), 4u)]), vec4<bool>(global1[_wgslsmith_index_u32(global2.x, 4u)] || false, !global1[_wgslsmith_index_u32(u_input.b.x, 4u)], true, global3[_wgslsmith_index_u32(u_input.b.x, 12u)] | false), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(32978u, 550u, global2.x) & global2.x, 4u)])), !global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(4294967295u, 32399u, 1u, u_input.b.x)), vec4<u32>(u_input.b.x, global2.x, u_input.b.x, 4294967295u)), 4u)], false);
    return u_input.b.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> StorageBuffer {
    var var_0 = u_input.a.x;
    let var_1 = Struct_1(all(vec3<bool>(all(vec3<bool>(global1[_wgslsmith_index_u32(arg_2.c.x, 4u)], global1[_wgslsmith_index_u32(49257u, 4u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)])), true, any(select(vec2<bool>(false, true), vec2<bool>(global1[_wgslsmith_index_u32(arg_2.b, 4u)], false), arg_2.a)))), _wgslsmith_div_u32(abs(30455u), global2.x), _wgslsmith_mod_vec3_u32(arg_0.c, max(arg_2.c, arg_0.c)));
    global2 = arg_2.c;
    global1 = array<bool, 4>();
    var var_2 = 1605f;
    return StorageBuffer(~countOneBits(~arg_2.c.x) & 23571u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(0u, 4294967295u, u_input.b.x, 4294967295u) >> (vec4<u32>(global2.x, 124249u, u_input.b.x, global2.x) % vec4<u32>(32u))), ~(vec4<u32>(27379u, global2.x, 4294967295u, global2.x) | vec4<u32>(u_input.b.x, 1u, 3441u, 4294967295u))) & max(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b.x, global2.x, 1u, global2.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global2.x, u_input.b.x, 0u, global2.x), vec4<u32>(global2.x, u_input.b.x, 1u, 19683u))), vec4<u32>(_wgslsmith_mod_u32(~global2.x, u_input.b.x >> (global2.x % 32u)), _wgslsmith_dot_vec2_u32(u_input.b, ~global2.xx), 4294967295u, min(abs(4294967295u), 33335u)));
    let x = u_input.a;
    s_output = func_4(Struct_1(!any(!vec2<bool>(global3[_wgslsmith_index_u32(global2.x, 12u)], global1[_wgslsmith_index_u32(u_input.b.x, 4u)])), var_0.x, vec3<u32>(~u_input.b.x, ~21850u & func_1(-1i), 13230u)), 28306u << (0u % 32u), Struct_1(func_2(Struct_1(true, 1u, vec3<u32>(var_0.x, u_input.b.x, global2.x))), var_0.x, vec3<u32>(global2.x, 4294967295u, _wgslsmith_mod_u32(42360u, _wgslsmith_sub_u32(u_input.b.x, 12207u)))));
}

