struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 23>;

var<private> global1: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32) -> u32 {
    let var_0 = false;
    global1 = arg_0;
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(f32(-1f) * -1115f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1311f)))), -326f, _wgslsmith_f_op_f32(f32(-1f) * -996f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -150f), _wgslsmith_f_op_f32(f32(-1f) * -121f)))))));
    var var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1972f, var_1.x)) + var_1.x)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, var_1.x, var_1.x, var_1.x) - vec4<f32>(var_1.x, var_1.x, -825f, var_1.x)))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(1000f + -1237f), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x), var_1.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 1000f, var_1.x, var_1.x)), _wgslsmith_div_vec4_f32(vec4<f32>(var_1.x, var_1.x, 1410f, 325f), vec4<f32>(1920f, -1753f, -1024f, 818f)), select(vec4<bool>(false, false, var_0, true), vec4<bool>(var_0, true, var_0, false), true)))))));
    return _wgslsmith_div_u32(10779u, u_input.c);
}

fn func_2(arg_0: Struct_1, arg_1: vec2<f32>) -> vec2<u32> {
    global1 = u_input.a << (0u % 32u);
    global0 = array<Struct_1, 23>();
    var var_0 = ~u_input.c;
    var_0 = ~func_3(_wgslsmith_mult_i32(-arg_0.a.x, u_input.b)) & (u_input.c & (~u_input.c & ~1u));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, -1502f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_1.x))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1.x))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(1000f)), -666f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -620f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -176f) * _wgslsmith_f_op_f32(-arg_0.b.x))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(787f, arg_1.x, 535f, arg_1.x), arg_0.b, true))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.b.x, arg_1.x, arg_1.x, arg_1.x))))));
    return _wgslsmith_div_vec2_u32(vec2<u32>(~_wgslsmith_sub_u32(~u_input.c, 1u), select((u_input.c | u_input.c) | (u_input.c >> (49071u % 32u)), u_input.c, true)), _wgslsmith_mod_vec2_u32(countOneBits(vec2<u32>(_wgslsmith_mod_u32(u_input.c, 4294967295u), ~4294967295u)), _wgslsmith_div_vec2_u32(~vec2<u32>(u_input.c, u_input.c), ~select(vec2<u32>(u_input.c, 0u), vec2<u32>(u_input.c, 53313u), arg_0.c.xz))));
}

fn func_1(arg_0: Struct_1) -> vec2<u32> {
    let var_0 = vec4<bool>(all(select(vec2<bool>(any(vec3<bool>(false, arg_0.c.x, arg_0.c.x)), arg_0.c.x), select(!arg_0.c.yz, select(arg_0.c.yx, arg_0.c.wz, arg_0.c.xx), arg_0.c.xz), vec2<bool>(true, arg_0.c.x | arg_0.c.x))), false, arg_0.c.x, all(arg_0.c.yxx));
    return countOneBits(abs(_wgslsmith_clamp_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, 11259u), vec2<u32>(4294967295u, u_input.c)), vec2<u32>(u_input.c, _wgslsmith_div_u32(60968u, u_input.c)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 24476u), func_2(arg_0, arg_0.b.ww)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(vec2<u32>(1u, 10517u));
    var_0 = ~_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(var_0.x, var_0.x)), max(vec2<u32>(u_input.c, 30211u), func_1(global0[_wgslsmith_index_u32(u_input.c, 23u)]))) | (~(~(~vec2<u32>(1u, var_0.x))) >> (~vec2<u32>(~var_0.x, 4294967295u >> (0u % 32u)) % vec2<u32>(32u)));
    let var_1 = ~vec3<u32>(~52238u, max(countOneBits(~var_0.x), ~_wgslsmith_add_u32(0u, 0u)), ~27119u);
    var var_2 = select(vec4<bool>(true, true, true, all(!select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true))), select(vec4<bool>(false, all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), select(any(vec4<bool>(true, true, false, true)), any(vec4<bool>(true, true, true, false)), false), all(vec3<bool>(true, false, false))), vec4<bool>(true, true, true, true), !any(vec2<bool>(true, true))), vec4<bool>(select(true & any(vec4<bool>(true, false, true, false)), true, true), true, all(!select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), false)), !any(vec4<bool>(false, true, false, false))));
    var var_3 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(-984f, _wgslsmith_f_op_f32(f32(-1f) * -561f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1574f)), _wgslsmith_f_op_f32(f32(-1f) * -246f))), _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(1000f, -1403f, false)) - _wgslsmith_f_op_f32(f32(-1f) * -3308f)))))));
    var var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(-var_3.x), _wgslsmith_f_op_f32(select(-461f, var_3.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -269f), var_3.x), vec4<f32>(var_3.x, _wgslsmith_div_f32(-849f, var_3.x), 2224f, _wgslsmith_div_f32(230f, var_3.x)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.x, -737f, 259f, -560f) * vec4<f32>(var_3.x, var_3.x, 667f, var_3.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -551f, var_3.x, 271f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(589f, var_3.x, -877f, 2781f), vec4<f32>(-157f, 302f, 1128f, 532f), var_2.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-727f, -1608f, var_3.x, var_3.x) * vec4<f32>(var_3.x, var_3.x, var_3.x, 613f))))));
    var_3 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_4.x), var_4.x)), _wgslsmith_f_op_f32(step(-1401f, var_3.x)), _wgslsmith_f_op_f32(ceil(var_4.x)), var_3.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, _wgslsmith_f_op_f32(f32(-1f) * -660f), -555f, var_4.x))), vec4<f32>(-1150f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-567f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(281f, _wgslsmith_f_op_f32(-850f + var_4.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x - -838f)) - -775f))));
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.c, 17032u, 25569u));
}

