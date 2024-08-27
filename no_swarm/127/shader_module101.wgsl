struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 2> = array<u32, 2>(0u, 37697u);

var<private> global1: Struct_1 = Struct_1(vec2<u32>(27495u, 16680u), false);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_2(arg_0: f32, arg_1: vec4<i32>, arg_2: Struct_1) -> bool {
    global1 = arg_2;
    let var_0 = any(vec4<bool>(global1.b, ((u_input.c != 38503u) & true) || !any(vec3<bool>(false, false, true)), global1.b, global1.b || true));
    let var_1 = abs(~_wgslsmith_dot_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(select(0u, u_input.a, true), 2u)], select(0u, arg_2.a.x, var_0)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(40832u, 2u)], global1.a.x), arg_2.a)));
    return any(!(!vec4<bool>(var_0, var_0, var_0, true))) & true;
}

fn func_3(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_2) -> Struct_1 {
    let var_0 = Struct_2(arg_2.a);
    let var_1 = ~(~(~(~vec2<u32>(global0[_wgslsmith_index_u32(arg_0.a.a.x, 2u)], global0[_wgslsmith_index_u32(u_input.c, 2u)])))) << (vec2<u32>(arg_0.a.a.x, reverseBits(17531u)) % vec2<u32>(32u));
    let var_2 = max(arg_0.a.a, ~(max(~var_1, vec2<u32>(4294967295u, 55185u)) ^ vec2<u32>(countOneBits(1u), 23140u)));
    let var_3 = Struct_2(var_0.a);
    let var_4 = arg_0.a.b;
    return arg_1;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-474f, _wgslsmith_f_op_f32(floor(arg_1.x))), _wgslsmith_f_op_f32(arg_1.x - 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(arg_1.x, 1912f, true)), -1260f), _wgslsmith_f_op_f32(arg_1.x + arg_1.x))));
    var var_1 = func_3(Struct_3(Struct_1(~(vec2<u32>(u_input.c, 0u) & global1.a), !func_2(838f, vec4<i32>(u_input.b.x, u_input.b.x, -52319i, 0i), Struct_1(vec2<u32>(global0[_wgslsmith_index_u32(global1.a.x, 2u)], global1.a.x), global1.b))), arg_0.a.x), Struct_1(_wgslsmith_add_vec2_u32(global1.a, select(vec2<u32>(global1.a.x, 1u), vec2<u32>(u_input.c, 39508u), global1.b) >> (vec2<u32>(global0[_wgslsmith_index_u32(1u, 2u)], u_input.a) % vec2<u32>(32u))), global1.b), Struct_2(abs(vec3<i32>(-1i) * -vec3<i32>(0i, u_input.b.x, u_input.b.x))));
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -415f), 892f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)));
    var var_3 = Struct_3(Struct_1(vec2<u32>(_wgslsmith_div_u32(countOneBits(global1.a.x), global1.a.x), _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_1.a.x, global1.a.x, 35460u, 4294967295u), vec4<u32>(1u, 16222u, 0u, var_1.a.x)), max(vec4<u32>(var_1.a.x, 84712u, 22387u, 1u), vec4<u32>(global0[_wgslsmith_index_u32(0u, 2u)], global1.a.x, 0u, 1u)))), global1.b), -arg_0.a.x);
    let var_4 = !select(select(!vec4<bool>(true, var_3.a.b, false, true), !(!vec4<bool>(var_3.a.b, var_1.b, false, var_3.a.b)), select(select(vec4<bool>(false, var_3.a.b, true, false), vec4<bool>(false, false, var_1.b, false), true), select(vec4<bool>(false, var_3.a.b, var_1.b, var_1.b), vec4<bool>(true, global1.b, var_3.a.b, true), vec4<bool>(true, true, true, var_1.b)), vec4<bool>(true, false, false, true))), select(select(select(vec4<bool>(true, false, global1.b, false), vec4<bool>(false, var_3.a.b, false, true), true), !vec4<bool>(var_1.b, var_1.b, var_3.a.b, global1.b), select(vec4<bool>(var_3.a.b, true, false, false), vec4<bool>(global1.b, global1.b, global1.b, false), var_1.b)), select(vec4<bool>(global1.b, var_1.b, var_3.a.b, var_1.b), !vec4<bool>(false, var_1.b, var_3.a.b, false), true), !vec4<bool>(false, false, global1.b, var_3.a.b)), global1.b);
    return -arg_0.a;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: Struct_1) -> Struct_1 {
    global1 = Struct_1(~abs(select(global1.a >> (arg_2.a % vec2<u32>(32u)), ~vec2<u32>(0u, 63824u), true)), true);
    let var_0 = false;
    let var_1 = arg_2;
    global1 = func_3(Struct_3(Struct_1(~_wgslsmith_mod_vec2_u32(global1.a, vec2<u32>(0u, 31309u)), global1.b), 8595i), arg_2, arg_1);
    var var_2 = vec4<i32>(arg_1.a.x, abs(-36079i), arg_0.x, 17390i);
    return func_3(Struct_3(Struct_1(var_1.a, arg_2.b), arg_0.x), Struct_1(~(~abs(global1.a)), var_1.b), arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 2>();
    let var_0 = Struct_3(func_4(-_wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(29643i, u_input.b.x, -40567i), vec3<i32>(u_input.b.x, 71469i, u_input.b.x)), vec3<i32>(-2147483647i, 4383i, -2147483647i) & vec3<i32>(24323i, 2147483647i, u_input.b.x)), Struct_2(func_1(Struct_2(vec3<i32>(2147483647i, u_input.b.x, 1i)), vec2<f32>(1586f, 1009f))), func_3(Struct_3(func_3(Struct_3(Struct_1(vec2<u32>(12972u, 2786u), false), 1i), Struct_1(global1.a, global1.b), Struct_2(vec3<i32>(2147483647i, -6375i, -2147483647i))), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global1.a.x, 2u)], 2u)]), vec2<u32>(global1.a.x, global1.a.x)), !global1.b), Struct_2(-vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x)))), ~u_input.b.x);
    global0 = array<u32, 2>();
    let var_1 = ~_wgslsmith_mod_u32(global1.a.x, 49087u);
    var var_2 = Struct_2(-_wgslsmith_mod_vec3_i32(-func_1(Struct_2(vec3<i32>(-10268i, u_input.b.x, -6402i)), vec2<f32>(-1246f, 194f)), -(vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x) ^ vec3<i32>(29450i, u_input.b.x, var_0.b))));
    global1 = func_4(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(reverseBits(-var_2.a), reverseBits(var_2.a)), var_2.a), Struct_2(vec3<i32>(-1i) * -var_2.a), Struct_1(var_0.a.a, false));
    let x = u_input.a;
    s_output = StorageBuffer(-20072i);
}

