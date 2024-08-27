struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 23>;

var<private> global1: Struct_1;

var<private> global2: vec2<bool> = vec2<bool>(true, false);

var<private> global3: Struct_1;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> Struct_1 {
    let var_0 = arg_1.b;
    return arg_1.a;
}

fn func_3(arg_0: vec2<u32>) -> i32 {
    global0 = array<Struct_2, 23>();
    let var_0 = _wgslsmith_mod_i32(_wgslsmith_mod_i32(64201i, ~func_1(vec3<bool>(global1.a, false, global3.a), Struct_2(Struct_1(global1.a, global3.c, u_input.d.x), Struct_1(true, global3.b, 2147483647i))).b ^ u_input.b.x), -global1.c);
    var var_1 = global0[_wgslsmith_index_u32(~29883u, 23u)];
    global2 = select(!vec2<bool>(any(!vec2<bool>(true, global3.a)), global2.x), vec2<bool>(true, global2.x), false);
    let var_2 = all(select(vec3<bool>(global2.x, true, true), vec3<bool>(true, select(!global3.a, global3.a, global3.a), global3.a), select(!select(vec3<bool>(true, true, global1.a), vec3<bool>(true, true, false), vec3<bool>(true, global3.a, false)), vec3<bool>(true, true, func_1(vec3<bool>(true, global3.a, false), Struct_2(var_1.a, var_1.a)).a), func_1(select(vec3<bool>(global3.a, true, false), vec3<bool>(false, global2.x, false), vec3<bool>(global2.x, var_1.a.a, global1.a)), global0[_wgslsmith_index_u32(~0u, 23u)]).a)));
    return u_input.a.x;
}

fn func_2(arg_0: vec2<bool>, arg_1: Struct_3, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    global2 = select(vec2<bool>(func_3(vec2<u32>(64131u, 4294967295u)) >= u_input.a.x, -(global3.b << (32715u % 32u)) != ~(-2147483647i)), select(!(!arg_0), select(arg_0, vec2<bool>(global3.a, arg_0.x), select(!arg_0, select(arg_0, arg_0, global2.x), true)), select(arg_0, select(vec2<bool>(true, arg_1.a.a), vec2<bool>(global3.a, arg_1.a.a), true), true)), false);
    global3 = arg_2;
    global1 = arg_1.a;
    let var_0 = arg_3;
    let var_1 = firstTrailingBit(98531u);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !select(select(vec2<bool>(!global3.a, global3.a), func_2(select(vec2<bool>(global3.a, global3.a), vec2<bool>(true, false), vec2<bool>(global3.a, false)), Struct_3(Struct_1(global2.x, -9210i, u_input.d.x)), func_1(vec3<bool>(global3.a, true, true), global0[_wgslsmith_index_u32(74313u, 23u)]), _wgslsmith_f_op_f32(-1074f * 935f)), !(!vec2<bool>(global2.x, false))), vec2<bool>(!(!global2.x), all(vec4<bool>(global3.a, global1.a, global2.x, true))), !func_2(select(vec2<bool>(true, global3.a), vec2<bool>(false, false), vec2<bool>(true, true)), Struct_3(Struct_1(global3.a, -5014i, global1.c)), func_1(vec3<bool>(global1.a, false, true), Struct_2(Struct_1(global3.a, global3.c, u_input.a.x), Struct_1(global1.a, 2147483647i, -2147483647i))), 1f));
    let var_0 = global0[_wgslsmith_index_u32(1u, 23u)];
    let var_1 = 2332f;
    global0 = array<Struct_2, 23>();
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(2773f, -322f, var_1) + vec3<f32>(-1269f, -639f, 1000f))), vec3<f32>(_wgslsmith_f_op_f32(step(1000f, var_1)), _wgslsmith_f_op_f32(f32(-1f) * -899f), var_1), select(vec3<bool>(global2.x, true, var_0.b.a), !vec3<bool>(var_0.b.a, false, false), any(vec3<bool>(global1.a, var_0.b.a, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, _wgslsmith_div_f32(-611f, var_1), 1728f))));
    let var_3 = -countOneBits(u_input.a.xz);
    global2 = !func_2(vec2<bool>(global3.a, func_2(vec2<bool>(false, var_0.b.a), Struct_3(Struct_1(global3.a, var_3.x, var_0.b.c)), var_0.b, var_1).x), Struct_3(func_1(select(vec3<bool>(global3.a, false, global2.x), vec3<bool>(true, false, global3.a), var_0.b.a), Struct_2(var_0.b, var_0.b))), Struct_1(true, var_0.b.c, _wgslsmith_sub_i32(global1.b, -64364i) ^ 11414i), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-492f * var_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-517f, 193f)))));
    let var_4 = Struct_1(global3.a, func_1(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, global2.x, var_0.b.a), vec3<bool>(false, false, global1.a))), global0[_wgslsmith_index_u32(~1u, 23u)]).c, global3.c);
    var var_5 = -_wgslsmith_mod_i32(global1.c, _wgslsmith_div_i32(_wgslsmith_div_i32(1i, global1.b), -13981i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(firstTrailingBit(_wgslsmith_add_vec2_i32(var_3, vec2<i32>(global1.b, var_3.x))), max(countOneBits(vec2<i32>(41810i, var_3.x)), -u_input.a.xy)), -firstTrailingBit(vec2<i32>(var_4.b, 0i)) << ((select(vec2<u32>(61216u, 43914u), vec2<u32>(17458u, 1u), vec2<bool>(true, global2.x)) | vec2<u32>(0u, 16179u)) % vec2<u32>(32u))), _wgslsmith_sub_vec2_i32(~(vec2<i32>(-1i) * -vec2<i32>(global3.c, -1i)), -_wgslsmith_clamp_vec2_i32(var_3, _wgslsmith_mod_vec2_i32(u_input.a.yz, vec2<i32>(u_input.a.x, global1.c)), _wgslsmith_mod_vec2_i32(var_3, vec2<i32>(32215i, 1i)))), reverseBits(u_input.b), 4294967295u);
}

