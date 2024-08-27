struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec4<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: f32,
    c: vec3<f32>,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: Struct_1,
    e: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-1i, 2147483647i, 5210i, -1343i);

var<private> global1: array<u32, 30> = array<u32, 30>(1u, 0u, 38518u, 44055u, 3651u, 1u, 0u, 27675u, 4294967295u, 0u, 0u, 0u, 0u, 1u, 20196u, 47432u, 6337u, 0u, 1u, 79334u, 43921u, 0u, 4294967295u, 4294967295u, 41852u, 4294967295u, 14855u, 1u, 1u, 25149u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(Struct_1(select(true, any(vec4<bool>(true, true, false, false)) | true, any(vec3<bool>(true, true, true))), ~u_input.b.ww, global1[_wgslsmith_index_u32(abs(max(65030u, u_input.d.x)) | 15312u, 30u)]), -1146f);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(-1145f)), _wgslsmith_div_f32(2128f, 835f), any(vec2<bool>(false, true))))), _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_div_f32(var_0.b, 1091f));
    let var_2 = var_0.a.a;
    global1 = array<u32, 30>();
    global0 = vec4<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zy, global0.zx), -33047i, ~(-u_input.c.x), 1i);
    return abs(abs(-u_input.a));
}

fn func_2(arg_0: f32, arg_1: i32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 * arg_0));
    let var_1 = !(!(!select(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false), true)));
    global0 = -vec4<i32>(-1i, -33077i, -_wgslsmith_sub_i32(1i, func_3()), u_input.a);
    var var_2 = _wgslsmith_dot_vec3_i32(-global0.zwx, vec3<i32>(u_input.c.x, _wgslsmith_dot_vec3_i32(~global0.xyx, vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(global0.x, 27532i)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, -29306i, u_input.a), global0.zzw), -6638i)), 0i));
    var var_3 = !var_1.xx;
    return 39610i;
}

fn func_1() -> i32 {
    global0 = vec4<i32>(-_wgslsmith_div_i32(global0.x, _wgslsmith_mult_i32(global0.x, _wgslsmith_add_i32(-2147483647i, global0.x))), ~u_input.c.x, 2147483647i, -20463i);
    var var_0 = -vec2<i32>(~25321i, u_input.c.x) >> (_wgslsmith_sub_vec2_u32(u_input.b.yx, _wgslsmith_mod_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 30u)], 30u)], 1u), u_input.b.zy) & u_input.b.xz) % vec2<u32>(32u));
    let var_1 = u_input.d.x;
    let var_2 = 66774u;
    var_0 = vec2<i32>(1i, u_input.a) ^ -reverseBits(vec2<i32>(u_input.c.x, var_0.x) & global0.yw);
    return firstTrailingBit(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(383f * 167f))), firstLeadingBit(firstTrailingBit(30048i)))) << (select(21455u, 1u, true) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<i32>(u_input.c.x, 1i);
    var_0 = vec2<i32>(func_1(), 14786i);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-1000f)), 840f));
    var_0 = -countOneBits(global0.yw >> (select(~vec2<u32>(global1[_wgslsmith_index_u32(1u, 30u)], 40531u), select(u_input.b.ww, u_input.b.zy, true), true) % vec2<u32>(32u)));
    var_1 = 125f;
    var var_2 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~(~1i), ~4294967295u, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~max(global0.yw, vec2<i32>(global0.x, u_input.a)), (global0.yx >> (vec2<u32>(1u, u_input.b.x) % vec2<u32>(32u))) >> (vec2<u32>(u_input.d.x, 0u) % vec2<u32>(32u))), _wgslsmith_div_i32(func_2(2326f, var_0.x), -23084i) ^ -(i32(-1i) * -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -206f))))));
}

