struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec2<f32>,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec2<f32> = vec2<f32>(-339f, -795f);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>, arg_1: bool) -> u32 {
    let var_0 = Struct_2(vec3<u32>(_wgslsmith_sub_u32(min(~u_input.b.x, _wgslsmith_add_u32(1u, u_input.b.x)), u_input.b.x), ~(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, arg_0.x, u_input.b.x), global0.a) % 32u)), firstTrailingBit(~(~4294967295u))));
    return ~(~arg_0.x);
}

fn func_3(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_2(vec3<u32>(u_input.b.x, 30100u, firstLeadingBit(firstTrailingBit(global0.a.x))));
    var var_1 = !vec3<bool>(true, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 1u), vec2<u32>(1u, 0u)), _wgslsmith_sub_u32(global0.a.x, arg_0.x)) <= 53925u, true);
    var var_2 = vec2<u32>(countOneBits(u_input.b.x), ~_wgslsmith_sub_u32(countOneBits(arg_0.x), ~arg_0.x)) | select(_wgslsmith_add_vec2_u32(global0.a.zy, abs(var_0.a.yx)), firstLeadingBit(var_0.a.zx), var_1.xz);
    return all(!var_1.xz);
}

fn func_1() -> u32 {
    let var_0 = any(vec3<bool>(true, true, true));
    let var_1 = false;
    global0 = Struct_2(vec3<u32>(countOneBits(~global0.a.x | 20493u), ~_wgslsmith_add_u32(35440u, 60804u), _wgslsmith_mult_u32(~(~52380u), global0.a.x)));
    global0 = Struct_2(vec3<u32>(func_2(~vec2<u32>(global0.a.x, 67279u), -184f == _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_mod_u32(1u, global0.a.x), 50361u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1692f) * _wgslsmith_f_op_f32(min(-1393f, global1.x)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1373f * _wgslsmith_f_op_f32(min(-124f, -549f))), 1000f, func_3(vec4<u32>(0u, global0.a.x, 34273u, 15597u))))));
    return ~u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(vec3<u32>(~func_1(), 4294967295u, reverseBits(10643u)));
    let var_1 = 2147483647i;
    var var_2 = -2147483647i;
    var_0 = Struct_2(~_wgslsmith_clamp_vec3_u32(~global0.a | max(vec3<u32>(var_0.a.x, 22521u, var_0.a.x), var_0.a), countOneBits(vec3<u32>(4755u, 1u, var_0.a.x) >> (global0.a % vec3<u32>(32u))), vec3<u32>(103579u, 10747u, 26111u) << ((vec3<u32>(1u, 8790u, 10102u) << (global0.a % vec3<u32>(32u))) % vec3<u32>(32u))));
    var_0 = Struct_2(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, countOneBits(global0.a.x), 1u), firstLeadingBit(vec3<u32>(u_input.b.x, 1u, global0.a.x))) ^ vec3<u32>(max(var_0.a.x, var_0.a.x), 5881u, _wgslsmith_mod_u32(39213u, var_0.a.x)));
    var var_3 = 79783i;
    let var_4 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 1444f, 223f)) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-102f, 413f, global1.x, global1.x)))))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-239f, global1.x, -1274f, 765f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -1125f, -121f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2342f, global1.x, 1000f, -384f)))))));
    let var_5 = min(0i, 15508i);
    let var_6 = Struct_1(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(all(vec4<bool>(true, true, false, false)), select(false, true, false))), !vec2<bool>(any(vec4<bool>(false, true, false, false)), true), vec2<bool>(false, !(-16219i == u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x * var_4.x), 335f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(global1.x + global1.x)), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(max(var_4, var_4)), vec4<f32>(var_4.x, global1.x, var_4.x, 624f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(289f, 486f, -476f, -1563f) * var_4)))))), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a.x, ~u_input.b.x, global0.a.x), ~vec3<u32>(u_input.b.x, 4294967295u, 1u)), 1u), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(var_4.zz)), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(-1000f)), _wgslsmith_f_op_f32(616f + 974f)) * vec2<f32>(_wgslsmith_div_f32(-1034f, global1.x), global1.x)), var_6.a)), _wgslsmith_mult_vec2_i32(u_input.a.yy, u_input.a.zw), -u_input.a.zyx);
}

