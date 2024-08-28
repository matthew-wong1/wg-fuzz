struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 8>;

var<private> global2: f32;

var<private> global3: array<Struct_1, 23>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = vec2<u32>(19641u, arg_0.a);
    var var_1 = -firstLeadingBit(select(u_input.d.zz, _wgslsmith_mod_vec2_i32(u_input.d.zy, u_input.d.zy), true) >> (firstLeadingBit(vec2<u32>(28793u, arg_1.x)) % vec2<u32>(32u)));
    var_1 = vec2<i32>(1i, _wgslsmith_mod_i32(u_input.d.x, abs(-1i))) >> (vec2<u32>(abs(arg_0.e.x), 1u) % vec2<u32>(32u));
    global1 = array<f32, 8>();
    let var_2 = Struct_1(~var_0.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(~2147483647i, 0i, _wgslsmith_mult_i32(arg_0.b, -46414i)), vec3<i32>(min(u_input.a, 2147483647i), arg_0.d.x, u_input.d.x)), 1216f, ~arg_0.d, abs(u_input.c));
    return 14047u;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<i32>) -> Struct_2 {
    global2 = -304f;
    global2 = global0.a.x;
    global1 = array<f32, 8>();
    var var_0 = _wgslsmith_div_u32(~(~(~(86497u << (u_input.b % 32u)))), func_3(Struct_1(12133u, ~u_input.a, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 8u)]), abs(_wgslsmith_sub_vec3_i32(u_input.d.zxy, vec3<i32>(-30046i, arg_1.x, -40110i))), _wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, 48549u, u_input.e), u_input.c), _wgslsmith_mod_vec3_u32(u_input.c, vec3<u32>(1u, 65930u, u_input.b)))), vec2<u32>(u_input.c.x, u_input.b)));
    var var_1 = abs(u_input.c.x << (u_input.c.x % 32u));
    return arg_0;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec4<f32>) -> u32 {
    global1 = array<f32, 8>();
    global1 = array<f32, 8>();
    global0 = Struct_2(global0.a);
    let var_0 = arg_1;
    let var_1 = func_2(func_2(func_2(Struct_2(vec2<f32>(1486f, -552f)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d.x, arg_1.b), select(vec2<i32>(2147483647i, var_0.d.x), vec2<i32>(-15513i, arg_1.b), vec2<bool>(arg_0, false)), -vec2<i32>(var_0.b, var_0.d.x))), abs(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, var_0.d.x, arg_1.d.x), vec3<i32>(61786i, -1i, -48482i)), -26680i))), _wgslsmith_clamp_vec2_i32(u_input.d.xx, firstTrailingBit(u_input.d.zw), vec2<i32>(47063i, max(_wgslsmith_clamp_i32(-1i, 25784i, 0i), i32(-1i) * -2147483647i))));
    return u_input.c.x;
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1(~(~_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.e, u_input.c.x), ~25894u)), u_input.d.x, global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(~reverseBits(49431u), u_input.e), 8u)], vec3<i32>(u_input.d.x, _wgslsmith_div_i32(0i, min(~21059i, 1i)), u_input.a << (func_4(false, Struct_1(u_input.e, 2147483647i, global0.a.x, u_input.d.xwx, u_input.c), func_2(Struct_2(global0.a), u_input.d.yz), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 8u)], global1[_wgslsmith_index_u32(1u, 8u)], -675f, global1[_wgslsmith_index_u32(1652u, 8u)])))) % 32u)), ~abs(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.b, 4294967295u), abs(vec3<u32>(u_input.c.x, 9064u, 4294967295u)))));
    let var_1 = global3[_wgslsmith_index_u32(var_0.e.x, 23u)];
    global1 = array<f32, 8>();
    var var_2 = !select(!vec3<bool>(any(vec3<bool>(false, true, true)), true, var_1.a != 1u), select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), any(vec3<bool>(false, true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, false))), vec3<bool>(any(vec4<bool>(true, true, true, true)), true, false));
    global1 = array<f32, 8>();
    return Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(global0.a, global0.a, vec2<bool>(var_2.x, true))), global0.a, global0.a.x <= -1093f))) + _wgslsmith_f_op_vec2_f32(-global0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    let var_1 = global3[_wgslsmith_index_u32(u_input.c.x, 23u)];
    global0 = func_1();
    global2 = -472f;
    var var_2 = var_1.e.x;
    global1 = array<f32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(min(firstTrailingBit(vec4<i32>(-40038i, var_0, var_1.b, var_1.d.x)) << (~vec4<u32>(0u, 54579u, var_1.a, 84526u) % vec4<u32>(32u)), vec4<i32>(_wgslsmith_sub_i32(-2147483647i, var_0), ~1i, _wgslsmith_mult_i32(0i, var_0), var_1.b << (var_1.e.x % 32u))), _wgslsmith_clamp_vec4_i32(u_input.d, vec4<i32>(1i, var_1.b, -2147483647i, var_1.d.x), _wgslsmith_mult_vec4_i32(select(u_input.d, vec4<i32>(-21077i, var_1.d.x, u_input.a, u_input.a), vec4<bool>(false, false, true, true)), vec4<i32>(var_1.b, -1i, -2147483647i, 2147483647i)))), abs(~countOneBits(vec3<i32>(var_1.d.x, 9893i, u_input.a)) & vec3<i32>(-2147483647i, u_input.a, -1i)), -901i, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.x, global1[_wgslsmith_index_u32(u_input.c.x, 8u)], var_1.c), vec3<f32>(global0.a.x, -379f, global1[_wgslsmith_index_u32(7235u, 8u)]))) - _wgslsmith_div_vec3_f32(vec3<f32>(-1164f, global1[_wgslsmith_index_u32(37197u, 8u)], 2330f), vec3<f32>(global0.a.x, global1[_wgslsmith_index_u32(var_1.e.x, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-530f, var_1.c, -877f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.e, 8u)], -408f, 423f) * vec3<f32>(global0.a.x, var_1.c, 819f))), any(vec2<bool>(true, true)))));
}

