struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<u32>,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
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

var<private> global0: array<vec2<i32>, 27> = array<vec2<i32>, 27>(vec2<i32>(-91771i, i32(-2147483648)), vec2<i32>(0i, 2147483647i), vec2<i32>(11730i, 1272i), vec2<i32>(2147483647i, -1i), vec2<i32>(10305i, -62986i), vec2<i32>(-53972i, 0i), vec2<i32>(-1i, -10023i), vec2<i32>(-18373i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -18925i), vec2<i32>(-1i, 0i), vec2<i32>(2147483647i, -11896i), vec2<i32>(-44012i, i32(-2147483648)), vec2<i32>(20939i, 14538i), vec2<i32>(-2701i, -1i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(0i, -34089i), vec2<i32>(0i, 0i), vec2<i32>(8535i, 35593i), vec2<i32>(2147483647i, -20106i), vec2<i32>(-3181i, -3193i), vec2<i32>(37208i, 2147483647i), vec2<i32>(2147483647i, 0i), vec2<i32>(23351i, 2147483647i), vec2<i32>(-1i, 0i), vec2<i32>(1i, -1713i), vec2<i32>(8005i, 2147483647i), vec2<i32>(-21704i, 2147483647i));

var<private> global1: Struct_2;

var<private> global2: array<vec2<u32>, 1>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_1 {
    let var_0 = global1.b;
    return global1.a;
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> u32 {
    global1 = Struct_2(func_2(false, 2147483647i), func_2(global1.d.x, 23291i), global1.c, global1.d, -(~_wgslsmith_dot_vec4_i32(u_input.a, u_input.a)));
    var var_0 = ~(~4294967295u);
    var var_1 = Struct_2(Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 0u, 64489u, 1u), vec4<u32>(arg_0, arg_1.b.x, 40055u, arg_0)), global1.a.a), func_2(global1.d.x, 9113i | global1.e).b.xzx), _wgslsmith_clamp_vec4_u32(firstLeadingBit(abs(global1.a.b)), vec4<u32>(arg_1.a, arg_1.c.x, arg_0, 37892u) & ~global1.c, vec4<u32>(51759u, ~arg_1.b.x, 1u, _wgslsmith_add_u32(3036u, 104768u))), func_2(true, -34892i).c & firstLeadingBit(vec2<u32>(0u, arg_0) ^ global2[_wgslsmith_index_u32(91928u, 1u)]), global1.b.d), arg_1, _wgslsmith_mod_vec4_u32(arg_1.b, ~vec4<u32>(~33465u, ~arg_0, 0u, ~arg_0)), vec3<bool>(all(!select(vec4<bool>(true, false, global1.d.x, false), vec4<bool>(true, global1.d.x, false, true), false)), global1.d.x, all(select(!vec4<bool>(false, global1.d.x, global1.d.x, global1.d.x), !vec4<bool>(false, global1.d.x, true, false), vec4<bool>(true, global1.d.x, global1.d.x, global1.d.x)))), 0i);
    global1 = Struct_2(global1.b, func_2(global1.d.x, -global1.e), ~(~firstTrailingBit(global1.a.b << (vec4<u32>(1u, arg_1.b.x, 1u, 0u) % vec4<u32>(32u)))), global1.d, _wgslsmith_dot_vec4_i32(u_input.a, (u_input.a & reverseBits(u_input.a)) & u_input.a));
    var var_2 = Struct_1(0u, vec4<u32>(arg_0, ~arg_0, 20990u | reverseBits(_wgslsmith_dot_vec2_u32(global1.a.c, arg_1.b.zw)), _wgslsmith_clamp_u32(firstTrailingBit(42778u), arg_0, global1.a.a)), ~abs(~abs(arg_1.c)), global1.b.d);
    return reverseBits(~7073u);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>, arg_2: i32, arg_3: f32) -> vec4<i32> {
    var var_0 = Struct_1(global1.c.x, ~abs(~(~global1.a.b)), max(~vec2<u32>(~global1.c.x, global1.a.a), _wgslsmith_mult_vec2_u32(vec2<u32>(~35909u, ~global1.a.a), global1.a.c)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global1.b.d.x), _wgslsmith_f_op_f32(-1612f * -132f), _wgslsmith_f_op_f32(trunc(-366f)), _wgslsmith_div_f32(arg_3, -104f)))));
    let var_1 = Struct_1(func_3(~0u, func_2(false, -_wgslsmith_add_i32(-1i, global1.e))), ~min(max(~var_0.b, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 3398u, 0u, 75817u), vec4<u32>(46105u, global1.b.b.x, 26079u, global1.b.b.x))), (vec4<u32>(var_0.a, 59559u, 4294967295u, 4425u) >> (var_0.b % vec4<u32>(32u))) << (~global1.c % vec4<u32>(32u))), global1.c.yy, global1.b.d);
    let var_2 = global1.c.yxy;
    let var_3 = _wgslsmith_mult_u32(5096u, var_0.c.x);
    let var_4 = -_wgslsmith_mult_vec4_i32(-vec4<i32>(_wgslsmith_div_i32(69871i, u_input.b), _wgslsmith_clamp_i32(global1.e, arg_2, u_input.b), ~2147483647i, _wgslsmith_mult_i32(16573i, 431i)), ~u_input.a);
    return _wgslsmith_sub_vec4_i32(u_input.a, min(-vec4<i32>(var_4.x, global1.e, -40325i, var_4.x), vec4<i32>(reverseBits(52465i), abs(-1i), abs(-37440i), ~arg_2))) << (max(reverseBits(reverseBits(vec4<u32>(4294967295u, var_0.a, var_3, var_0.a))), _wgslsmith_sub_vec4_u32(~vec4<u32>(4294967295u, 1u, var_3, var_0.a), reverseBits(_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 18417u, 1u, var_1.a), vec4<u32>(global1.c.x, var_0.a, 97893u, 0u))))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<i32>, 27>();
    let var_0 = ~_wgslsmith_div_vec4_i32(countOneBits(u_input.a & vec4<i32>(-2313i, -2147483647i, u_input.b, 2147483647i)) | func_1(global1.b.d.x, global1.b.d, ~2147483647i, global1.b.d.x), vec4<i32>(~firstLeadingBit(u_input.a.x), 1i, 1i, _wgslsmith_dot_vec2_i32(-global0[_wgslsmith_index_u32(global1.a.a, 27u)], vec2<i32>(global1.e, -28123i) ^ vec2<i32>(global1.e, -2147483647i))));
    var var_1 = global1.e >> (select(51531u, global1.a.c.x, global1.d.x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(302f);
}

