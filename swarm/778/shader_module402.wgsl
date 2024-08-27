struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: vec4<u32>,
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

var<private> global0: u32 = 7584u;

var<private> global1: array<i32, 17>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2() -> Struct_1 {
    global0 = ~(~_wgslsmith_dot_vec2_u32(max(~u_input.d.yx, u_input.b), vec2<u32>(u_input.a, reverseBits(u_input.d.x))));
    return Struct_1(u_input.c);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    let var_0 = !vec4<bool>(arg_1.b, all(vec2<bool>(true, all(vec4<bool>(true, arg_0.b, false, arg_0.b)))), false, all(vec4<bool>(true, true, true, true)));
    return Struct_1(u_input.c);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    global0 = _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(25959u, u_input.b.x, 1u), vec3<u32>(1u, u_input.b.x, 22612u)), ~0u), ~vec2<u32>(16676u, u_input.b.x))), abs(~reverseBits(u_input.a)));
    var var_0 = select(vec3<bool>(arg_2.b, false, true), !(!vec3<bool>(any(vec4<bool>(false, true, arg_2.b, arg_2.b)), any(vec2<bool>(arg_2.b, false)), !arg_2.b)), !vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(arg_2.b, arg_2.b), arg_2.b)), true, true));
    let var_1 = Struct_2(Struct_1(arg_2.a.a), u_input.c > arg_1.a);
    var var_2 = -217f;
    global1 = array<i32, 17>();
    return var_1;
}

fn func_1(arg_0: vec2<u32>) -> vec2<i32> {
    let var_0 = func_4(func_3(Struct_2(func_2(), all(vec4<bool>(true, false, false, true)) || true), Struct_2(Struct_1(u_input.c), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-796f)))))), func_2(), Struct_2(func_3(Struct_2(func_2(), true), Struct_2(func_2(), true), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(921f, 1000f))), !all(vec3<bool>(true, true, false))));
    global0 = _wgslsmith_div_u32(~1u, 3384u);
    global0 = ~(abs(4294967295u) | ~(~(~u_input.d.x)));
    let var_1 = vec3<u32>(_wgslsmith_sub_u32(~(~u_input.a), 4294967295u), (15343u << (arg_0.x % 32u)) ^ ~19758u, arg_0.x);
    let var_2 = var_0.a;
    return ~vec2<i32>(-_wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, -14335i), -vec2<i32>(0i, global1[_wgslsmith_index_u32(var_1.x, 17u)])), ~var_2.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_sub_i32(~(~(~u_input.c)), ~(-46817i)));
    let var_1 = _wgslsmith_clamp_vec2_i32(func_1(u_input.b), vec2<i32>(~(global1[_wgslsmith_index_u32(u_input.b.x, 17u)] >> (17903u % 32u)), -(1i << (u_input.a % 32u))), (vec2<i32>(1i, -2147483647i) << (u_input.b % vec2<u32>(32u))) >> (min(u_input.d.ww >> (u_input.d.wz % vec2<u32>(32u)), ~vec2<u32>(0u, u_input.d.x)) % vec2<u32>(32u))) ^ vec2<i32>(var_0.a, max(~(-14931i), -(18514i << (u_input.d.x % 32u))));
    var var_2 = 1i;
    var_0 = Struct_1(var_0.a);
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1671f * -681f), 1f, true)) + _wgslsmith_f_op_f32(643f - -547f)) * _wgslsmith_f_op_f32(1702f - _wgslsmith_f_op_f32(-285f * _wgslsmith_f_op_f32(abs(1003f))))));
}

