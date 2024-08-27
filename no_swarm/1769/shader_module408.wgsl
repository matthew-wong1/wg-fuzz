struct Struct_1 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<u32> = vec3<u32>(4294967295u, 0u, 0u);

var<private> global2: array<f32, 3> = array<f32, 3>(-950f, -162f, 115f);

var<private> global3: array<vec3<f32>, 18>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    global3 = array<vec3<f32>, 18>();
    var var_0 = Struct_1(min(-countOneBits(u_input.d) ^ u_input.d, vec4<i32>(_wgslsmith_sub_i32(u_input.d.x, -3546i), u_input.a.x, -u_input.c, _wgslsmith_sub_i32(u_input.a.x, u_input.c)) ^ abs(u_input.d)), !select(vec2<bool>(any(vec2<bool>(false, false)), true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, global1.x <= global1.x)), vec2<bool>(true, true));
    let var_1 = (vec3<u32>(global1.x, countOneBits(~global1.x), (global1.x << (global1.x % 32u)) & 40186u) & reverseBits(vec3<u32>(global1.x, global1.x, 4294967295u))) ^ ~vec3<u32>(18653u, reverseBits(~global1.x), global1.x);
    global1 = abs(~var_1);
    let var_2 = vec4<bool>(false, !(!var_0.c.x), all(select(vec2<bool>(false, all(var_0.c)), vec2<bool>(!var_0.b.x, true), any(vec2<bool>(var_0.c.x, true)))), var_0.c.x);
    return ~1u;
}

fn func_2() -> vec2<bool> {
    let var_0 = 1653f;
    var var_1 = ~max(~_wgslsmith_mult_u32(func_3(), 22605u), 0u);
    let var_2 = Struct_1(vec4<i32>(1i, countOneBits(0i), u_input.b & firstTrailingBit(u_input.b), _wgslsmith_dot_vec3_i32(u_input.d.wzz, min(-u_input.d.wzy, u_input.d.xxz))), select(vec2<bool>(false, all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), false))), vec2<bool>(true, all(vec3<bool>(true, true, true))), vec2<bool>(true, select(global1.x > global1.x, true, true))), select(vec2<bool>(true, true), vec2<bool>(!all(vec2<bool>(true, true)), true), true));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1643f - var_0) * var_0);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f));
    return vec2<bool>(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(35071u, 3u)]))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_4, 130f)) + _wgslsmith_f_op_f32(max(-756f, global2[_wgslsmith_index_u32(global1.x, 3u)]))), var_2.b.x, any(!(!vec4<bool>(false, var_2.b.x, false, false)))), true);
}

fn func_1(arg_0: f32) -> vec2<bool> {
    var var_0 = Struct_1(vec4<i32>(firstTrailingBit(u_input.b), u_input.d.x | -(u_input.b ^ u_input.a.x), u_input.c, 2147483647i), !(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), false))), select(func_2(), vec2<bool>(true, true), vec2<bool>(true, true)));
    global1 = vec3<u32>(min(73764u, countOneBits(global1.x | 76074u)), global1.x, _wgslsmith_add_u32(global1.x, 36102u) >> (65761u % 32u)) | select(abs(reverseBits(~vec3<u32>(global1.x, 61005u, global1.x))), vec3<u32>(~global1.x, 119095u, ~global1.x) & (~vec3<u32>(0u, global1.x, 23073u) ^ min(vec3<u32>(32246u, global1.x, global1.x), vec3<u32>(4294967295u, 73814u, 90419u))), true);
    global3 = array<vec3<f32>, 18>();
    global1 = ~(~(~(_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, global1.x, 10966u)) ^ _wgslsmith_sub_vec3_u32(vec3<u32>(global1.x, 1u, 1u), vec3<u32>(41568u, 0u, 0u)))));
    var var_1 = global1.x;
    return !var_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = u_input.b;
    var var_0 = global1.x;
    var var_1 = Struct_1(u_input.d, select(!vec2<bool>(-625f != global2[_wgslsmith_index_u32(5574u, 3u)], any(vec4<bool>(true, true, false, true))), vec2<bool>(!(global2[_wgslsmith_index_u32(59309u, 3u)] > global2[_wgslsmith_index_u32(34079u, 3u)]), true), !select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true))), !func_1(global2[_wgslsmith_index_u32(1u, 3u)]));
    var var_2 = Struct_1(max(min(vec4<i32>(-u_input.c, max(39664i, 45415i), countOneBits(var_1.a.x), u_input.b), countOneBits(u_input.d)), vec4<i32>(i32(-1i) * -u_input.c, u_input.c, _wgslsmith_mult_i32(0i ^ u_input.d.x, 14883i), u_input.c)), vec2<bool>(var_1.c.x, true), !(!vec2<bool>(true, var_1.b.x)));
    global3 = array<vec3<f32>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(select(~max(min(vec2<u32>(global1.x, 4294967295u), global1.zy), firstLeadingBit(global1.zz)), reverseBits(global1.xx), func_2()));
}

