struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-841f), false, 1u, vec4<u32>(51132u, 0u, 0u, 4294967295u));

var<private> global1: array<bool, 10>;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: bool, arg_3: u32) -> bool {
    return false;
}

fn func_3(arg_0: vec3<bool>) -> Struct_1 {
    var var_0 = select(select(arg_0.xy, vec2<bool>(arg_0.x, all(!vec2<bool>(arg_0.x, true))), arg_0.x), arg_0.yz, true);
    let var_1 = 32811i;
    global0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(max(1090f, -190f))), all(vec4<bool>(global0.b, arg_0.x, !(false & var_0.x), !(!global0.b))), 22909u, u_input.c);
    var var_2 = select(any(select(arg_0, select(arg_0, vec3<bool>(false, false, true), vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.c.x, 10u)], var_0.x)), all(arg_0))), all(!vec2<bool>(global0.b, true)) && arg_0.x, all(arg_0));
    global0 = Struct_2(global0.a, false, firstTrailingBit(_wgslsmith_mult_u32(select(global0.c, global0.c, false), 26006u)) >> (4294967295u % 32u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.e, global0.d.x, 73191u, global0.d.x), min(u_input.c, u_input.c), min(reverseBits(global0.d), vec4<u32>(u_input.a.x, 4294967295u, 5639u, global0.d.x))) | ~(~(~vec4<u32>(27505u, global0.d.x, 8531u, global0.c))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.a.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-456f))))) * -1212f));
}

fn func_1() -> Struct_2 {
    global0 = Struct_2(func_3(select(vec3<bool>(true, global0.b, func_2(Struct_1(-1459f), 317f, global1[_wgslsmith_index_u32(63315u, 10u)], 4294967295u)), !(!vec3<bool>(global0.b, true, false)), false)), select(false, !(!global0.b), all(select(vec2<bool>(global0.b, false), vec2<bool>(global0.b, false), true))) || true, ~_wgslsmith_clamp_u32(global0.d.x, ~firstLeadingBit(u_input.a.x), 87385u), ~_wgslsmith_sub_vec4_u32(~(~vec4<u32>(u_input.e, u_input.e, global0.c, global0.d.x)), u_input.c));
    let var_0 = Struct_1(_wgslsmith_f_op_f32(trunc(-1000f)));
    global0 = Struct_2(func_3(select(vec3<bool>(true, true, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(max(global0.c, u_input.e), 10u)]), vec3<bool>(select(global1[_wgslsmith_index_u32(23379u, 10u)], true, global1[_wgslsmith_index_u32(u_input.e, 10u)]), func_2(global0.a, global0.a.a, false, u_input.a.x), select(false, true, true)))), global0.d.x <= firstLeadingBit(~u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.e), firstLeadingBit(global0.d.wzx)), abs(u_input.a.x)), ~(vec4<u32>(647u, u_input.e, global0.c, u_input.a.x) & vec4<u32>(u_input.e, global0.d.x, u_input.e, global0.d.x))), ~(((vec4<u32>(14206u, u_input.a.x, global0.c, 8524u) >> (u_input.c % vec4<u32>(32u))) ^ ~global0.d) ^ vec4<u32>(0u, u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(600u, 43987u, global0.c, 4294967295u), u_input.c), u_input.c.x)));
    global0 = Struct_2(var_0, global0.b, ~0u, _wgslsmith_mod_vec4_u32(global0.d, select(vec4<u32>(38025u, u_input.c.x | 1u, abs(617u), u_input.a.x), global0.d, false)));
    var var_1 = var_0;
    return Struct_2(global0.a, true && !all(select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true, global1[_wgslsmith_index_u32(1u, 10u)]), vec3<bool>(global1[_wgslsmith_index_u32(global0.c, 10u)], false, false), vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)], true, global1[_wgslsmith_index_u32(1u, 10u)]))), abs(u_input.c.x), ~(vec4<u32>(firstLeadingBit(u_input.c.x), global0.d.x | u_input.e, 61910u << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.e, 0u), vec4<u32>(57057u, 1u, u_input.c.x, 4294967295u))) ^ vec4<u32>(4294967295u, global0.c, 1u, reverseBits(6677u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = func_1().a;
    global1 = array<bool, 10>();
    var var_1 = global0.d.zyx;
    global1 = array<bool, 10>();
    global0 = Struct_2(global0.a, (false & any(!vec3<bool>(true, global0.b, global1[_wgslsmith_index_u32(4294967295u, 10u)]))) != select(!(!global0.b), global0.b, true), ~reverseBits(1u), global0.d);
    let var_2 = func_1().a;
    var_1 = firstTrailingBit(u_input.c.zzx) | ~global0.d.zwz;
    var var_3 = vec4<i32>(u_input.b.x, 33844i, 36327i, ~(-1i));
    let x = u_input.a;
    s_output = StorageBuffer(0u, select(firstTrailingBit(vec3<i32>(0i, firstLeadingBit(var_3.x), 1i | var_3.x)), var_3.zwy, select(!select(vec3<bool>(global1[_wgslsmith_index_u32(1u, 10u)], global0.b, global0.b), vec3<bool>(global1[_wgslsmith_index_u32(48852u, 10u)], true, false), vec3<bool>(false, false, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, global1[_wgslsmith_index_u32(0u, 10u)]), global1[_wgslsmith_index_u32(global0.c, 10u)]), global1[_wgslsmith_index_u32(u_input.c.x, 10u)] != global0.b)));
}

