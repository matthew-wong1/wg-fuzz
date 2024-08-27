struct Struct_1 {
    a: bool,
    b: u32,
    c: vec2<i32>,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u, vec3<bool>(true, true, false));

var<private> global1: bool;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    global1 = arg_3.a;
    var var_0 = arg_2;
    let var_1 = -vec2<i32>(u_input.b & countOneBits(~2147483647i), var_0.a.d.x);
    var_0 = arg_2;
    var var_2 = arg_3.b;
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.e))));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    var var_0 = Struct_2(~global0.a, global0.b);
    global1 = select((min(1u, ~0u) << (u_input.c.x % 32u)) <= _wgslsmith_div_u32(2039u, global0.a), var_0.b.x, any(!global0.b.yy));
    let var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(!vec4<bool>(global0.b.x, var_0.b.x, global0.b.x, var_0.b.x), abs(vec4<i32>(-38315i, 0i, u_input.b, u_input.d)), Struct_4(Struct_1(global0.b.x, global0.a, vec2<i32>(u_input.b, u_input.b), vec2<i32>(2147483647i, u_input.d), arg_0)), Struct_1(false, u_input.a.x, vec2<i32>(-2147483647i, -2147483647i), vec2<i32>(u_input.d, 38007i), arg_0)))) == -1197f) | global0.b.x;
    var var_2 = var_1;
    var_0 = Struct_2(0u, global0.b);
    return vec4<bool>(false, var_0.b.x, false, ~_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-41247i, u_input.b, u_input.b), vec3<i32>(12724i, 25036i, u_input.b)), ~vec3<i32>(u_input.d, u_input.b, u_input.b)) > ~(i32(-1i) * -2147483647i));
}

fn func_1(arg_0: vec2<i32>) -> bool {
    let var_0 = ~(~(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.c.yww, u_input.a), 73420u)));
    global1 = global0.b.x;
    var var_1 = vec4<f32>(-162f, _wgslsmith_f_op_f32(round(-1488f)), _wgslsmith_f_op_f32(ceil(-633f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -178f), -925f));
    global0 = Struct_2(u_input.a.x, select(global0.b, vec3<bool>(true, true, true), !select(select(vec3<bool>(false, global0.b.x, global0.b.x), global0.b, global0.b), !vec3<bool>(false, global0.b.x, global0.b.x), global0.b.x != global0.b.x)));
    let var_2 = Struct_5(func_2(290f), Struct_1(all(global0.b.zx), global0.a, arg_0, reverseBits(-vec2<i32>(arg_0.x, arg_0.x)) >> (u_input.a.xy % vec2<u32>(32u)), -800f));
    return all(vec4<bool>(true && !var_2.a.x, true || global0.b.x, var_2.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(select(global0.b.x, func_1(~vec2<i32>(u_input.d, -40367i)), false & global0.b.x), global0.b.x, true, true & any(global0.b.yy)), !vec4<bool>(true, global0.b.x, global0.b.x, true), global0.b.x);
    global1 = !(!(all(var_0.zwz) != true));
    global0 = Struct_2(16137u, select(!func_2(_wgslsmith_div_f32(374f, -282f)).wxy, global0.b, func_1(-(~vec2<i32>(u_input.b, 27916i)))));
    var var_1 = -45694i;
    global1 = any(vec2<bool>(!global0.b.x, false));
    var_1 = u_input.d;
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(abs(reverseBits(4294967295u)), firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0.a, global0.a) ^ vec4<u32>(1u, u_input.c.x, 18974u, 1u), vec4<u32>(1u, u_input.a.x, 2872u, u_input.c.x))), _wgslsmith_sub_u32(global0.a, 1u), 18158u), _wgslsmith_div_vec4_u32(u_input.c, u_input.c));
    var_1 = u_input.d;
    var_1 = -1i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -671f)))), -138f, -1i);
}

