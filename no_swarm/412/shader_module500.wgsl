struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: i32,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
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

var<private> global0: u32 = 0u;

var<private> global1: array<vec4<bool>, 2>;

var<private> global2: vec2<u32> = vec2<u32>(13327u, 17830u);

var<private> global3: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global4: array<vec3<f32>, 3> = array<vec3<f32>, 3>(vec3<f32>(783f, 968f, 317f), vec3<f32>(1580f, -1516f, -330f), vec3<f32>(-1000f, 374f, 737f));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec4<bool> {
    return !vec4<bool>(_wgslsmith_mod_i32(firstTrailingBit(u_input.d.x), ~(-1i)) == 47451i, false, true, false);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = -(~max(vec2<i32>(min(-2147483647i, 8519i), -18068i), reverseBits(~vec2<i32>(-2147483647i, 0i))));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-arg_2.a), arg_3.c <= _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_3.c))), _wgslsmith_f_op_f32(floor(670f))), -47453i);
    var var_2 = Struct_4(firstLeadingBit(~(countOneBits(u_input.e.xy) & max(u_input.e.xy, vec2<u32>(arg_1, arg_3.d.x)))), Struct_1(vec3<i32>(~(37750i << (1u % 32u)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(21293i, arg_0.x, var_1.c), arg_0.x), -_wgslsmith_mult_i32(-1i, 8139i)), arg_3.b, -526f, vec2<u32>(1u, global2.x)));
    var_2 = Struct_4(var_2.a, arg_3);
    var var_3 = ~vec2<u32>(u_input.e.x, var_2.b.d.x);
    return global1[_wgslsmith_index_u32(u_input.a.x << (countOneBits(reverseBits(firstLeadingBit(reverseBits(global2.x)))) % 32u), 2u)];
}

fn func_1(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    var var_0 = select(select(global1[_wgslsmith_index_u32(min(19601u, max(_wgslsmith_mod_u32(64327u, 50u), _wgslsmith_div_u32(u_input.a.x, arg_0.b.d.x))), 2u)], !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(u_input.e, vec4<u32>(arg_0.b.d.x, global2.x, 112432u, u_input.a.x)), 2u)], !global1[_wgslsmith_index_u32(0u, 2u)]), func_2(), select(func_3(max(~u_input.d, _wgslsmith_add_vec3_i32(arg_0.a.a, vec3<i32>(-558i, arg_1.c, arg_1.c))), _wgslsmith_mod_u32(arg_0.a.d.x, firstTrailingBit(u_input.e.x)), arg_1, Struct_1(-vec3<i32>(1i, -42949i, u_input.d.x), ~arg_0.d.b, _wgslsmith_div_f32(arg_1.a.x, arg_0.c), vec2<u32>(u_input.a.x, 58117u))), !(!select(global1[_wgslsmith_index_u32(arg_0.b.d.x, 2u)], vec4<bool>(arg_1.b, false, arg_1.b, arg_1.b), true)), global1[_wgslsmith_index_u32(~countOneBits(arg_0.a.d.x), 2u)]));
    let var_1 = vec2<i32>(-30994i, i32(-1i) * -2147483647i);
    let var_2 = arg_0.d;
    let var_3 = select(var_0.x, true, all(vec3<bool>(true, !var_0.x, _wgslsmith_f_op_f32(floor(397f)) >= _wgslsmith_f_op_f32(select(arg_1.a.x, var_2.c, var_0.x)))));
    global3 = array<vec2<bool>, 22>();
    return 8749i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    global3 = array<vec2<bool>, 22>();
    var var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d.x, 1i), u_input.d.yz) | firstLeadingBit(vec2<i32>(u_input.d.x, u_input.d.x)), u_input.d.xz), vec2<i32>(~1i, _wgslsmith_sub_i32(-u_input.d.x, func_1(Struct_2(Struct_1(u_input.d, vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -3951i), -688f, vec2<u32>(global2.x, 1u)), Struct_1(vec3<i32>(u_input.d.x, 47189i, u_input.d.x), vec4<i32>(1997i, u_input.d.x, 2147483647i, u_input.d.x), var_0, vec2<u32>(31708u, 0u)), var_0, Struct_1(vec3<i32>(u_input.d.x, 8146i, u_input.d.x), vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x), var_0, u_input.e.yw)), Struct_3(vec4<f32>(var_0, 234f, var_0, var_0), false, 2147483647i))))), u_input.d.x, ~u_input.d.x);
    global0 = ~u_input.e.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0));
}

