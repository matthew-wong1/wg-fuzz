struct Struct_1 {
    a: i32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(-1i, vec4<u32>(10934u, 93371u, 30830u, 1248u)), vec2<f32>(748f, -1149f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = Struct_2(Struct_1(u_input.a, ~(~max(arg_2.b, vec4<u32>(global0.a.b.x, 82159u, u_input.b.x, 29390u)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-global0.b)))));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1038f);
    return arg_1;
}

fn func_2() -> vec4<bool> {
    global0 = Struct_2(Struct_1((-58355i | _wgslsmith_dot_vec2_i32(vec2<i32>(-82297i, u_input.a), vec2<i32>(7102i, -1i))) << (u_input.c.x % 32u), global0.a.b), vec2<f32>(-467f, -558f));
    let var_0 = select(global0.a.b.wxy, global0.a.b.zwy, select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, 12948u < u_input.c.x), vec3<bool>(true, true, 0u >= u_input.b.x)), !select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true))));
    let var_1 = global0.a.a;
    var var_2 = global0.a;
    global0 = Struct_2(global0.a, global0.b);
    return !vec4<bool>(any(select(func_3(vec4<bool>(false, false, false, true), vec2<bool>(true, true), Struct_1(global0.a.a, vec4<u32>(4294967295u, 76402u, 14944u, 1u))), vec2<bool>(true, true), vec2<bool>(true, true))), true, !(global0.b.x >= global0.b.x), !any(vec3<bool>(false, true, true)));
}

fn func_1() -> Struct_2 {
    var var_0 = ~(~global0.a.b.x);
    var var_1 = global0.b.x;
    var var_2 = all(select(func_2(), !vec4<bool>(true, u_input.a >= -35646i, false, true), _wgslsmith_div_f32(-127f, global0.b.x) >= global0.b.x));
    return Struct_2(Struct_1(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-6281i, global0.a.a), vec2<i32>(global0.a.a, -1i), false) >> (u_input.c.wy % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i) & vec2<i32>(u_input.a, u_input.a), abs(vec2<i32>(0i, global0.a.a)))), u_input.c), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-525f, _wgslsmith_f_op_f32(-global0.b.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.b.x, global0.b.x, global0.b.x))), vec3<f32>(global0.b.x, -643f, -2264f))) - vec3<f32>(941f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-610f - global0.b.x)))), 185f));
    global0 = func_1();
    global0 = func_1();
    global0 = Struct_2(Struct_1(15351i, u_input.c), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.b * vec2<f32>(global0.b.x, -1728f))), global0.b))));
    var var_1 = vec2<bool>(!(!func_2().x), all(!func_3(vec4<bool>(false, false, false, true), select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), global0.a)));
    var var_2 = vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(8834i, global0.a.a, u_input.a), vec3<i32>(u_input.a, global0.a.a, 0i)) & -u_input.a, u_input.a, ~global0.a.a, min(~(3702i << (u_input.c.x % 32u)), abs(u_input.a) >> (0u % 32u))) >> (vec4<u32>(13807u, 33668u, reverseBits(countOneBits(_wgslsmith_mult_u32(u_input.b.x, 25884u))), u_input.b.x) % vec4<u32>(32u));
    var var_3 = vec2<f32>(752f, 1171f);
    let x = u_input.a;
    s_output = StorageBuffer(var_2.wzx, abs(vec2<i32>(_wgslsmith_sub_i32(select(global0.a.a, var_2.x, false), 36803i), select(-2147483647i ^ u_input.a, 2147483647i, var_1.x))), ~u_input.b.yz);
}

