struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: vec2<u32>,
    d: vec2<bool>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 10> = array<bool, 10>(false, true, true, false, false, true, true, true, true, false);

var<private> global1: Struct_1 = Struct_1(4294967295u, vec4<bool>(true, false, true, true), vec2<u32>(11912u, 27829u), vec2<bool>(false, true), vec4<u32>(67351u, 26576u, 45415u, 4294967295u));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> bool {
    global1 = arg_1;
    return false;
}

fn func_2() -> Struct_1 {
    return Struct_1(94738u, vec4<bool>(global0[_wgslsmith_index_u32(select(77821u, global1.a, select(select(true, global1.d.x, true), global1.b.x, func_3(true, Struct_1(global1.e.x, vec4<bool>(false, false, global0[_wgslsmith_index_u32(114833u, 10u)], true), vec2<u32>(16908u, 4294967295u), vec2<bool>(global0[_wgslsmith_index_u32(22268u, 10u)], true), vec4<u32>(1u, 0u, 4294967295u, global1.e.x))))), 10u)], all(!select(vec2<bool>(global0[_wgslsmith_index_u32(global1.c.x, 10u)], global1.d.x), global1.d, global0[_wgslsmith_index_u32(31166u, 10u)])), !(!any(global1.b.wz)), !global0[_wgslsmith_index_u32(abs(_wgslsmith_mult_u32(u_input.b.x, u_input.b.x)), 10u)]), select(vec2<u32>(countOneBits(~0u), u_input.b.x), ~reverseBits(vec2<u32>(1u, 4186u) ^ global1.c), global0[_wgslsmith_index_u32(min(~1u, global1.e.x), 10u)]), select(vec2<bool>(!global0[_wgslsmith_index_u32(~18377u, 10u)], true), global1.b.zw, all(global1.d)), abs(global1.e));
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: bool, arg_3: vec4<i32>) -> i32 {
    global1 = func_2();
    let var_0 = any(!global1.b.xz);
    global0 = array<bool, 10>();
    let var_1 = vec3<u32>(u_input.b.x, _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.b.x) | vec3<u32>(global1.c.x, 0u, u_input.b.x), ~global1.e.wwy) & vec3<u32>(4294967295u, 6669u, arg_1), global1.e.wzx), u_input.b.x);
    var var_2 = Struct_1(arg_1, arg_0, firstTrailingBit(u_input.b.ww), !arg_0.xz, vec4<u32>(~arg_1, var_1.x & 0u, ~func_2().c.x, ~select(_wgslsmith_mult_u32(var_1.x, u_input.b.x), global1.e.x, var_0 || false)));
    return ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(reverseBits(~u_input.c ^ u_input.c), max(firstLeadingBit(-11626i), _wgslsmith_mult_i32(firstTrailingBit(u_input.a), ~func_1(global1.b, 43272u, true, vec4<i32>(u_input.c, 2147483647i, u_input.c, -1i)))), u_input.a, u_input.c ^ u_input.c);
    let var_1 = abs(~7303u);
    let var_2 = func_2();
    var var_3 = reverseBits(~var_0.yx >> (vec2<u32>(1u << (u_input.b.x % 32u), 24099u) % vec2<u32>(32u)));
    var_3 = var_0.xx;
    global0 = array<bool, 10>();
    let var_4 = vec4<u32>(firstLeadingBit(abs(var_2.c.x)), ~_wgslsmith_dot_vec4_u32(global1.e, select(var_2.e, _wgslsmith_mod_vec4_u32(u_input.b, global1.e), func_2().b)), ~var_1, global1.e.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-231f, -766f)))), ~var_0.wyy);
}

