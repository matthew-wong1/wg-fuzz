struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: Struct_3 = Struct_3(vec2<f32>(-311f, -280f), vec3<f32>(-1408f, 779f, -499f), true);

var<private> global2: array<vec4<f32>, 2> = array<vec4<f32>, 2>(vec4<f32>(502f, -405f, -733f, -1378f), vec4<f32>(-129f, 1000f, -1226f, 1041f));

var<private> global3: array<Struct_3, 5> = array<Struct_3, 5>(Struct_3(vec2<f32>(-1571f, -215f), vec3<f32>(-302f, 773f, -346f), false), Struct_3(vec2<f32>(-1000f, -145f), vec3<f32>(267f, 589f, -687f), false), Struct_3(vec2<f32>(-1000f, 953f), vec3<f32>(-2057f, -2442f, -537f), true), Struct_3(vec2<f32>(-1375f, -1532f), vec3<f32>(-589f, 1000f, -743f), true), Struct_3(vec2<f32>(-444f, -256f), vec3<f32>(622f, -1242f, 1254f), false));

var<private> global4: Struct_1;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    global1 = global3[_wgslsmith_index_u32(u_input.b, 5u)];
    var var_0 = global4.a.x;
    let var_1 = true;
    let var_2 = vec4<bool>(true && any(!(!vec2<bool>(true, var_1))), true, true, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(max(global1.a.x, global0.x))))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.x))));
    global3 = array<Struct_3, 5>();
    return ~1i;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3, arg_2: bool) -> Struct_1 {
    let var_0 = _wgslsmith_add_vec4_i32(abs(max(vec4<i32>(1i, 1i, _wgslsmith_dot_vec2_i32(vec2<i32>(19267i, -45236i), vec2<i32>(27552i, 2147483647i)), 1i), vec4<i32>(-1i) * -vec4<i32>(-2147483647i, -2147483647i, -21077i, 27704i))), _wgslsmith_add_vec4_i32(-abs(-vec4<i32>(-1i, -7799i, 0i, 1i)), select(select(vec4<i32>(-1i, 71370i, 2147483647i, -2147483647i), vec4<i32>(-51147i, -18079i, -1931i, -2038i), vec4<bool>(false, true, true, arg_2)) >> (_wgslsmith_div_vec4_u32(vec4<u32>(17331u, 4294967295u, 63804u, global4.a.x), global4.a) % vec4<u32>(32u)), vec4<i32>(select(0i, -22209i, arg_1.c), firstLeadingBit(2147483647i), 20186i, func_3()), select(select(vec4<bool>(arg_1.c, global1.c, true, false), vec4<bool>(false, global1.c, false, true), true), vec4<bool>(false, arg_2, true, arg_2), true))));
    let var_1 = global0.x;
    let var_2 = global4.a.xzz;
    global0 = global1.b;
    let var_3 = global0.x;
    return arg_0;
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.yx))), _wgslsmith_f_op_vec3_f32(min(global1.b, global1.b)), !global1.c);
    global4 = func_2(Struct_1(vec4<u32>(1u, ~_wgslsmith_mod_u32(global4.a.x, u_input.a), 1u, u_input.b)), global3[_wgslsmith_index_u32(1u, 5u)], true);
    let var_1 = ~(_wgslsmith_clamp_vec4_i32(vec4<i32>(33742i >> (u_input.b % 32u), 1i, -12372i, 1i), abs(_wgslsmith_clamp_vec4_i32(vec4<i32>(-1i, -10479i, -31393i, 43202i), vec4<i32>(-668i, -37334i, 2784i, 22764i), vec4<i32>(0i, -7424i, 0i, -1i))), -vec4<i32>(37465i, 71590i, -22482i, 0i)) << (~global4.a % vec4<u32>(32u)));
    let var_2 = vec2<bool>(global1.c || all(vec4<bool>(var_0.c || var_0.c, global1.c, any(vec2<bool>(global1.c, true)), true)), !(!global1.c));
    global4 = Struct_1(min(global4.a, ~(~reverseBits(global4.a))));
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = global3[_wgslsmith_index_u32(u_input.b, 5u)];
    global1 = func_1();
    let var_0 = func_1();
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(602f, global0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b.x, global1.a.x))) + global0.yz) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(func_1().a))))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -1426f) * _wgslsmith_f_op_f32(select(var_0.b.x, global1.a.x, global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x * global1.b.x))))), select(var_0.c, any(select(select(vec4<bool>(true, var_0.c, var_0.c, true), vec4<bool>(var_0.c, var_0.c, false, var_0.c), true), vec4<bool>(var_0.c, true, global1.c, true), vec4<bool>(var_0.c, global1.c, var_0.c, global1.c))), global1.c));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

