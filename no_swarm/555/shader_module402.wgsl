struct Struct_1 {
    a: vec2<bool>,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 3>;

var<private> global1: array<bool, 2> = array<bool, 2>(true, false);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec4<i32> {
    let var_0 = true;
    var var_1 = countOneBits(arg_0.c.x);
    var_1 = 1u;
    var_1 = _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(arg_0.c, _wgslsmith_sub_vec2_u32(select(select(vec2<u32>(arg_2.c.x, 30467u), vec2<u32>(1u, u_input.a), vec2<bool>(global1[_wgslsmith_index_u32(0u, 2u)], true)), ~vec2<u32>(4294967295u, arg_1.c.x), arg_1.a), arg_0.c), vec2<u32>(14635u & u_input.a, firstTrailingBit(1u) >> ((arg_0.c.x | arg_2.c.x) % 32u))), _wgslsmith_mult_vec2_u32(arg_0.c, arg_2.c));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(arg_2.b - _wgslsmith_f_op_f32(floor(1219f))), _wgslsmith_f_op_f32(-arg_1.b), arg_1.b, _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-arg_0.b)));
    return ~u_input.b;
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    var var_0 = ~(~_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.c, -67996i, u_input.b.x), vec4<i32>(-25130i, u_input.b.x, -2147483647i, u_input.b.x)) >> ((vec4<u32>(0u, 4294967295u, 4294967295u, u_input.a) ^ vec4<u32>(0u, 4294967295u, 1773u, u_input.a)) % vec4<u32>(32u)), select(func_3(Struct_1(vec2<bool>(false, global1[_wgslsmith_index_u32(51941u, 2u)]), 1000f, vec2<u32>(0u, 3586u)), Struct_1(vec2<bool>(false, global1[_wgslsmith_index_u32(7305u, 2u)]), -184f, vec2<u32>(4294967295u, 4294967295u)), Struct_1(arg_0.a.zz, -1107f, vec2<u32>(u_input.a, u_input.a))), u_input.b, all(global0[_wgslsmith_index_u32(u_input.a, 3u)]))));
    let var_1 = !vec3<bool>(global1[_wgslsmith_index_u32(~(_wgslsmith_mult_u32(u_input.a, 1u) | u_input.a), 2u)], false, !(0i <= (31902i >> (u_input.a % 32u))));
    let var_2 = ~4294967295u;
    global1 = array<bool, 2>();
    global1 = array<bool, 2>();
    return Struct_1(!select(select(var_1.yy, !arg_0.a.yz, select(arg_0.a.xz, var_1.xz, false)), vec2<bool>(false, any(vec3<bool>(false, false, var_1.x))), any(arg_0.a.zz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1508f)), ~select(abs(vec2<u32>(u_input.a, 0u)) | firstTrailingBit(vec2<u32>(u_input.a, 17004u)), ~vec2<u32>(var_2, 0u), vec2<bool>(true, true)));
}

fn func_1() -> f32 {
    let var_0 = func_2(Struct_2(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, global1[_wgslsmith_index_u32(u_input.a, 2u)]), !vec3<bool>(global1[_wgslsmith_index_u32(81142u, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)], global1[_wgslsmith_index_u32(u_input.a, 2u)]))));
    let var_1 = false;
    var var_2 = Struct_2(!select(!select(vec3<bool>(true, var_0.a.x, false), vec3<bool>(global1[_wgslsmith_index_u32(u_input.a, 2u)], true, true), false), !select(vec3<bool>(var_0.a.x, false, var_1), vec3<bool>(false, true, var_1), var_0.a.x), select(true, any(vec2<bool>(true, true)), true)));
    return 1118f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1064f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-397f * 1582f))))), ~(~vec2<u32>(1u, 1u)));
    global1 = array<bool, 2>();
    var var_1 = _wgslsmith_f_op_f32(func_1());
    let var_2 = Struct_2(select(vec3<bool>(all(var_0.a), true, var_0.a.x), !(!(!vec3<bool>(global1[_wgslsmith_index_u32(var_0.c.x, 2u)], false, global1[_wgslsmith_index_u32(var_0.c.x, 2u)]))), !(!vec3<bool>(true, var_0.a.x, true))));
    let var_3 = Struct_1(vec2<bool>(var_0.a.x, !(!(u_input.a <= u_input.a))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(var_0.b)))), var_0.c);
    var var_4 = Struct_2(var_2.a);
    let var_5 = vec3<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(var_4.a)).b + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * var_3.b) + _wgslsmith_f_op_f32(round(var_3.b))))), var_0.b);
    let var_6 = Struct_1(var_0.a, 1574f, _wgslsmith_sub_vec2_u32(~var_3.c ^ (var_3.c & vec2<u32>(43192u, 24918u)), ~_wgslsmith_mult_vec2_u32(var_0.c, vec2<u32>(u_input.a, var_0.c.x))) | var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) + var_0.b), _wgslsmith_f_op_f32(min(-774f, var_3.b))))));
}

