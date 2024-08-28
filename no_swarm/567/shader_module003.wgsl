struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: Struct_1;

var<private> global2: array<vec2<u32>, 17> = array<vec2<u32>, 17>(vec2<u32>(4294967295u, 50405u), vec2<u32>(0u, 33609u), vec2<u32>(4294967295u, 39531u), vec2<u32>(17784u, 72126u), vec2<u32>(1u, 0u), vec2<u32>(1u, 72987u), vec2<u32>(0u, 4294967295u), vec2<u32>(15064u, 4294967295u), vec2<u32>(44474u, 0u), vec2<u32>(73824u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(0u, 0u), vec2<u32>(42642u, 31272u), vec2<u32>(0u, 4294967295u), vec2<u32>(19432u, 1u), vec2<u32>(57409u, 208u), vec2<u32>(5716u, 71156u));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec2<u32>) -> vec3<bool> {
    global0 = !(!vec3<bool>(global0.x, false, true));
    global0 = select(select(select(!select(vec3<bool>(global0.x, false, false), vec3<bool>(global0.x, global0.x, global0.x), false), !vec3<bool>(true, false, global0.x), global0.x), vec3<bool>(global0.x, !global0.x, any(vec4<bool>(global0.x, false, false, global0.x)) || (u_input.b.x == u_input.b.x)), !(!vec3<bool>(true, true, global0.x))), vec3<bool>(all(vec4<bool>(!global0.x, false | global0.x, all(vec3<bool>(true, global0.x, global0.x)), select(false, true, global0.x))), !global0.x, true), !(!(!global0.x | any(vec4<bool>(global0.x, true, false, global0.x)))));
    global0 = !vec3<bool>(false, !global0.x, global0.x);
    global0 = select(!vec3<bool>(global0.x, global0.x, true), select(vec3<bool>(!(!global0.x), global0.x, global0.x), vec3<bool>(true, true, true), any(vec3<bool>(true, select(global0.x, true, false), true))), global0.x);
    return vec3<bool>(global0.x, !global0.x, false);
}

fn func_2() -> Struct_1 {
    global0 = !(!func_3(global2[_wgslsmith_index_u32(65627u, 17u)]));
    var var_0 = -465f;
    var var_1 = ~1u < u_input.d.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global1.a.x * _wgslsmith_div_f32(330f, -203f)), global1.a.x, _wgslsmith_f_op_f32(-global1.a.x))), u_input.b, vec3<i32>(_wgslsmith_sub_i32(global1.c.x, firstTrailingBit(~global1.c.x)), countOneBits(2147483647i), ~(~(~2416i))));
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_f_op_f32(ceil(-686f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.a.x)) - 108f))), vec3<i32>(17228i, firstLeadingBit(_wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(var_2.b.yx, var_2.c.xy), min(var_2.b.xy, vec2<i32>(u_input.b.x, var_2.c.x)))), max(u_input.b.x, _wgslsmith_mult_i32(var_2.b.x, -11478i))), select(countOneBits(var_2.c << (abs(vec3<u32>(u_input.a, 16484u, 50570u)) % vec3<u32>(32u))), _wgslsmith_add_vec3_i32(global1.c, firstLeadingBit(vec3<i32>(-20935i, global1.b.x, -1i) | u_input.b)), vec3<bool>(any(!vec3<bool>(global0.x, global0.x, global0.x)), global0.x, any(!vec4<bool>(false, false, global0.x, true)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, -1813f))))), abs(-u_input.b), -(~vec3<i32>(global1.b.x, i32(-1i) * -36686i, 1i)));
}

fn func_1() -> Struct_1 {
    let var_0 = !vec3<bool>(!any(select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, global0.x, true), true)), false, 63492i > select(u_input.b.x, -1i, global0.x));
    let var_1 = global1.a.x;
    var var_2 = Struct_2(var_0.x, func_2(), Struct_1(vec3<f32>(1000f, 1085f, _wgslsmith_f_op_f32(min(-265f, _wgslsmith_div_f32(global1.a.x, -322f)))), firstTrailingBit(-global1.b), u_input.b), -609f);
    let var_3 = func_2();
    var var_4 = ~u_input.d.x;
    return var_3;
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: f32) -> vec4<bool> {
    var var_0 = func_3(_wgslsmith_sub_vec2_u32(u_input.d.zy, ~abs(global2[_wgslsmith_index_u32(abs(4183u), 17u)]))).x;
    global0 = vec3<bool>(true, any(!vec3<bool>(false, global0.x, false)), !all(vec4<bool>(arg_0.x | global0.x, !global0.x, true, true)));
    var_0 = global0.x;
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_1.a);
    var var_2 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(-arg_2))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))), global1.a.x), ~arg_1.b, u_input.b);
    return !vec4<bool>(global0.x, true, true, global0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = !(!(!vec3<bool>(all(vec2<bool>(false, global0.x)), any(vec4<bool>(false, false, false, false)), global0.x)));
    let var_0 = -5668i;
    let var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -745f) + _wgslsmith_f_op_f32(570f + global1.a.x)), -311f, any(select(func_4(select(vec2<bool>(false, global0.x), vec2<bool>(false, false), true), func_1(), _wgslsmith_f_op_f32(-2122f - -2132f)), vec4<bool>(true, global0.x, true, u_input.d.x < 9851u), _wgslsmith_f_op_f32(-822f - 1012f) < global1.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(select(vec3<u32>(u_input.d.x, u_input.c.x, u_input.d.x), vec3<u32>(0u, u_input.c.x, u_input.c.x), true), u_input.d), u_input.d), vec3<u32>(u_input.d.x, u_input.d.x, 1u) ^ u_input.d), min(~(~vec4<i32>(global1.c.x, 18481i, -2147483647i, 15310i)), _wgslsmith_div_vec4_i32(vec4<i32>(~global1.b.x, ~global1.b.x, var_0, u_input.b.x), ~(vec4<i32>(-41888i, 37286i, 0i, var_0) & vec4<i32>(var_0, -21590i, 3515i, global1.b.x)))));
}

