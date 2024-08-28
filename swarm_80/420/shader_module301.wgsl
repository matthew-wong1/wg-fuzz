struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: vec3<bool>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: Struct_3;

var<private> global2: Struct_1;

var<private> global3: vec2<i32>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: vec2<bool>, arg_3: vec3<f32>) -> vec2<i32> {
    global3 = global0.zz & (vec2<i32>(firstTrailingBit(-26919i) | global0.x, -35531i) ^ abs(max(vec2<i32>(global0.x, global0.x), vec2<i32>(global2.b, global0.x) & u_input.e)));
    global0 = -(~vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, global0.x, u_input.a), vec4<i32>(-50601i, global0.x, global0.x, -1i) | vec4<i32>(2147483647i, 2147483647i, 5942i, global0.x)), _wgslsmith_add_i32(-global2.b, _wgslsmith_sub_i32(global1.a.a.b, global0.x)), global0.x));
    let var_0 = ~select(~countOneBits(~vec4<u32>(45085u, 1u, 0u, 4294967295u)), max(~(~vec4<u32>(27363u, 4294967295u, 64011u, 4294967295u)), select(~vec4<u32>(37848u, 15061u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 37111u, 40921u), vec4<bool>(true, true, true, true))), ~(~(-5945i)) > (i32(-1i) * -global3.x));
    global3 = global0.yx;
    let var_1 = _wgslsmith_f_op_vec3_f32(arg_3 * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-global2.d), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(346f, global1.a.a.d.x, arg_3.x))))) + _wgslsmith_f_op_vec3_f32(-global2.d)));
    return global0.zz;
}

fn func_2() -> Struct_2 {
    global2 = global1.a.a;
    global3 = _wgslsmith_div_vec2_i32(vec2<i32>(global3.x, firstTrailingBit(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(53500i, u_input.d.x, -60714i, global1.a.a.b), vec4<i32>(-1i, global2.b, -1i, 0i)), abs(global0.x)))), _wgslsmith_add_vec2_i32(func_3(!vec3<bool>(global1.a.a.c.x, global1.a.a.c.x, global2.c.x), !vec2<bool>(global2.c.x, global1.a.a.c.x), select(global2.c.xy, vec2<bool>(global1.a.a.c.x, global2.c.x), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-118f, -510f, global2.a.x))) & global0.zy, vec2<i32>(~0i, global0.x)));
    var var_0 = Struct_3(global1.a);
    let var_1 = _wgslsmith_mult_vec2_i32(abs(select(vec2<i32>(-var_0.a.a.b, _wgslsmith_add_i32(global0.x, global3.x)), min(vec2<i32>(var_0.a.a.b, u_input.c), vec2<i32>(-1i, -3075i)), vec2<bool>(true, all(vec4<bool>(false, global2.c.x, var_0.a.a.c.x, global1.a.a.c.x))))), ~countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.a.b, global2.b), vec2<i32>(global0.x, 4442i))));
    let var_2 = Struct_3(var_0.a);
    return var_0.a;
}

fn func_1() -> Struct_1 {
    let var_0 = func_2();
    var var_1 = func_2();
    return func_2().a;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_add_vec2_i32(max(_wgslsmith_div_vec2_i32(abs(vec2<i32>(2147483647i, -35331i)), -global0.xx), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(global0.yz | u_input.e, global0.yx), vec2<i32>(global0.x, global0.x | global0.x))), -_wgslsmith_sub_vec2_i32(global0.yx, u_input.b));
    let var_0 = false;
    let var_1 = func_1();
    global3 = -vec2<i32>(2401i, 2147483647i);
    var var_2 = -681f;
    let var_3 = -_wgslsmith_dot_vec2_i32(func_3(global2.c, func_2().a.c.xx, global2.c.yz, vec3<f32>(_wgslsmith_f_op_f32(exp2(global1.a.a.d.x)), _wgslsmith_f_op_f32(round(933f)), global2.a.x)), u_input.b);
    var var_4 = func_1();
    var var_5 = Struct_3(Struct_2(global1.a.a));
    var var_6 = var_5.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -712f), _wgslsmith_mod_vec2_i32(vec2<i32>(~5183i, countOneBits(var_6.a.b) & 0i), u_input.d.yy), var_5.a.a.d.yx, firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(79883u, 1u))));
}

