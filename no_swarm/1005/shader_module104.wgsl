struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i);

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(false, vec4<u32>(86u, 1u, 1u, 15799u), false), Struct_2(false, vec4<u32>(33229u, 46706u, 50487u, 1u), false), Struct_2(true, vec4<u32>(4294967295u, 7956u, 31917u, 68401u), true), Struct_2(true, vec4<u32>(0u, 0u, 50814u, 40540u), false), Struct_2(false, vec4<u32>(0u, 5893u, 49280u, 4294967295u), true), Struct_2(false, vec4<u32>(37248u, 4294967295u, 0u, 1u), true), Struct_2(false, vec4<u32>(30788u, 39056u, 18199u, 1u), true), Struct_2(true, vec4<u32>(1u, 63385u, 0u, 10946u), false), Struct_2(false, vec4<u32>(0u, 48523u, 4294967295u, 0u), false), Struct_2(true, vec4<u32>(2930u, 4294967295u, 30822u, 1u), true), Struct_2(false, vec4<u32>(0u, 32260u, 1u, 21040u), false), Struct_2(false, vec4<u32>(10346u, 30823u, 0u, 1u), false), Struct_2(false, vec4<u32>(70064u, 43085u, 1633u, 50676u), true), Struct_2(false, vec4<u32>(20879u, 4294967295u, 1u, 69509u), true), Struct_2(true, vec4<u32>(55263u, 20056u, 4294967295u, 102185u), false), Struct_2(false, vec4<u32>(0u, 0u, 28444u, 4294967295u), true), Struct_2(false, vec4<u32>(51997u, 40586u, 93970u, 0u), true), Struct_2(false, vec4<u32>(45200u, 22072u, 22277u, 35470u), true), Struct_2(true, vec4<u32>(1u, 77118u, 61170u, 9435u), true), Struct_2(true, vec4<u32>(31983u, 89694u, 109104u, 0u), true), Struct_2(true, vec4<u32>(4294967295u, 19551u, 4294967295u, 1u), false), Struct_2(true, vec4<u32>(0u, 1u, 26873u, 5432u), false), Struct_2(false, vec4<u32>(28375u, 30169u, 0u, 123765u), true), Struct_2(true, vec4<u32>(1u, 21385u, 6130u, 4294967295u), false), Struct_2(false, vec4<u32>(45587u, 1u, 1u, 0u), false), Struct_2(false, vec4<u32>(93999u, 4294967295u, 44203u, 57905u), true));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2(arg_0: vec3<i32>) -> Struct_1 {
    global1 = array<Struct_2, 26>();
    global0 = Struct_1(arg_0.x);
    global0 = Struct_1(global0.a ^ ((-global0.a | -43085i) ^ arg_0.x));
    global1 = array<Struct_2, 26>();
    var var_0 = u_input.b.x;
    return Struct_1(global0.a);
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: vec3<i32>) -> vec4<u32> {
    var var_0 = true;
    var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b.x) >> (u_input.a % 32u), 26u)];
    let var_2 = Struct_1(arg_3.x);
    let var_3 = vec4<bool>(true, true, 1403f == arg_2.x, true);
    return vec4<u32>(~_wgslsmith_mult_u32(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b.x, u_input.b.x), ~var_1.b.wy)), min(~var_1.b.x ^ _wgslsmith_sub_u32(40827u, abs(var_1.b.x)), ~_wgslsmith_mult_u32(~0u, _wgslsmith_div_u32(var_1.b.x, var_1.b.x))), 0u, 1u);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = global0.a;
    var var_1 = arg_0.www;
    global0 = func_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, -1i, -1i, 1i), firstTrailingBit(vec4<i32>(1i, global0.a, -2147483647i, 0i))) ^ ~52624i, abs(-(~0i)), min(global0.a, global0.a)));
    let var_2 = ~arg_2.b.x;
    var var_3 = Struct_2(arg_2.c, select(arg_1, ~func_3(arg_2, var_1.x, vec4<f32>(421f, var_1.x, arg_0.x, arg_0.x), -vec3<i32>(-5595i, global0.a, global0.a)), vec4<bool>(false, true, false, false)), arg_2.a);
    return !vec3<bool>(any(select(vec3<bool>(true, var_3.c, var_3.c), !vec3<bool>(true, false, var_3.a), true)), any(vec4<bool>(true, all(vec3<bool>(var_3.a, arg_2.c, var_3.a)), var_3.a & var_3.c, false)), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(!(!func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -1144f, -129f, -234f)), min(vec4<u32>(u_input.a, 18555u, 0u, u_input.b.x), vec4<u32>(60171u, u_input.b.x, 72850u, u_input.a)), Struct_2(true, vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u), true))));
    var var_1 = vec4<bool>(true, func_1(vec4<f32>(_wgslsmith_f_op_f32(-571f - _wgslsmith_f_op_f32(-667f + -848f)), -677f, _wgslsmith_f_op_f32(ceil(-2582f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(622f, 586f)))), ~(abs(vec4<u32>(u_input.a, u_input.a, 4294967295u, u_input.b.x)) ^ abs(vec4<u32>(u_input.a, 4294967295u, 32634u, u_input.a))), Struct_2(!var_0, (vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 1u) >> (vec4<u32>(u_input.b.x, u_input.a, u_input.a, 4294967295u) % vec4<u32>(32u))) << (vec4<u32>(77300u, 73063u, u_input.b.x, 1u) % vec4<u32>(32u)), all(vec4<bool>(true, true, var_0, false)) | !var_0)).x, false, false);
    global0 = func_2(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.a, global0.a, global0.a, -50328i) | vec4<i32>(global0.a, global0.a, global0.a, global0.a), countOneBits(vec4<i32>(-313i, global0.a, -26824i, global0.a))), global0.a, 2147483647i) & max(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a, -23035i, global0.a), _wgslsmith_sub_vec3_i32(vec3<i32>(global0.a, global0.a, 36998i), vec3<i32>(1i, global0.a, 1i))), -vec3<i32>(global0.a, global0.a, 2147483647i)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1006f)) - _wgslsmith_f_op_f32(f32(-1f) * -1181f)));
    var var_3 = Struct_2(_wgslsmith_div_u32(u_input.b.x, ~abs(u_input.a)) >= ~(~min(u_input.b.x, 4294967295u)), vec4<u32>(u_input.a, 16010u, ~1u, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a) << (vec3<u32>(u_input.a, u_input.a, u_input.b.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 43177u), vec3<u32>(38340u, u_input.b.x, u_input.a))), func_3(global1[_wgslsmith_index_u32(~18308u, 26u)], _wgslsmith_f_op_f32(304f + var_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(793f, -313f, var_2, -366f)), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, global0.a, 1i), vec3<i32>(global0.a, global0.a, -36731i))).zxx)), all(select(vec4<bool>(select(var_0, var_0, true), !var_1.x, any(var_1.yz), !var_0), select(!vec4<bool>(var_0, true, true, var_1.x), select(vec4<bool>(var_1.x, false, var_0, true), vec4<bool>(false, true, true, false), false), global0.a >= 2147483647i), true)));
    let var_4 = vec3<i32>(global0.a, -58563i, -global0.a ^ _wgslsmith_add_i32(_wgslsmith_div_i32(global0.a, -global0.a), global0.a));
    let x = u_input.a;
    s_output = StorageBuffer(-312f, vec4<u32>(min(var_3.b.x, 32484u), _wgslsmith_add_u32(func_3(Struct_2(var_3.c, vec4<u32>(26720u, u_input.b.x, u_input.b.x, var_3.b.x), var_1.x), _wgslsmith_f_op_f32(step(var_2, 803f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1174f, var_2, var_2, var_2) + vec4<f32>(1411f, -327f, var_2, var_2)), var_4).x, _wgslsmith_dot_vec3_u32(abs(vec3<u32>(var_3.b.x, 28223u, 30661u)), vec3<u32>(var_3.b.x, 4294967295u, 4294967295u))), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), ~vec3<u32>(3460u, var_3.b.x, u_input.a)) ^ ~select(u_input.b.x, var_3.b.x, var_0), ~1u));
}

