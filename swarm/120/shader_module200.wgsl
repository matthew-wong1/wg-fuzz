struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 31>;

var<private> global1: array<i32, 7> = array<i32, 7>(-18436i, 0i, 1i, 2147483647i, -42116i, i32(-2147483648), -15607i);

var<private> global2: Struct_4 = Struct_4(4294967295u, vec3<f32>(-1894f, 612f, -1508f), Struct_1(0u, vec4<u32>(9390u, 29580u, 4294967295u, 0u), vec2<bool>(true, false)), Struct_2(vec4<bool>(true, false, false, false), Struct_1(0u, vec4<u32>(23959u, 4294967295u, 3463u, 9492u), vec2<bool>(false, true)), 2147483647i));

var<private> global3: i32;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1(arg_0: vec4<u32>) -> Struct_1 {
    global1 = array<i32, 7>();
    return global2.d.b;
}

fn func_3(arg_0: bool, arg_1: vec4<u32>) -> u32 {
    global3 = -2147483647i;
    let var_0 = vec3<i32>(_wgslsmith_mult_i32(1i, global2.d.c), -7446i, ~(-3458i));
    var var_1 = vec2<i32>(u_input.c.x, global1[_wgslsmith_index_u32(~1u, 7u)]);
    let var_2 = u_input.b.x;
    let var_3 = Struct_4(4294967295u, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1171f, 244f, global2.b.x) + _wgslsmith_div_vec3_f32(global2.b, vec3<f32>(global2.b.x, -1066f, global2.b.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-716f, -275f, -935f)) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global2.b.x, global2.b.x, 149f)))), vec3<bool>(false, global2.c.c.x, false || !global2.d.a.x))), func_1(firstTrailingBit(min(max(vec4<u32>(var_2, 64815u, var_2, global2.c.a), arg_1), abs(vec4<u32>(arg_1.x, 1u, 35154u, global2.d.b.b.x))))), Struct_2(!select(!vec4<bool>(true, global2.c.c.x, arg_0, global2.c.c.x), !vec4<bool>(true, global2.c.c.x, false, global2.c.c.x), select(global2.d.a, global2.d.a, global2.d.a)), Struct_1(arg_1.x, min(vec4<u32>(31865u, var_2, 12794u, 21976u), global2.c.b), vec2<bool>(func_1(arg_1).c.x, true)), -11515i));
    return var_2;
}

fn func_2(arg_0: Struct_1) -> Struct_3 {
    let var_0 = -1809f;
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(385f, _wgslsmith_f_op_f32(max(global2.b.x, global2.b.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1494f, 1000f))))));
    let var_2 = vec4<i32>(~(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(func_3(true, vec4<u32>(arg_0.b.x, 12637u, 35446u, 82376u)), ~u_input.b.x), 31u)]), -1i, global0[_wgslsmith_index_u32(~(~u_input.b.x & ~arg_0.b.x), 31u)], 1050i);
    let var_3 = -646f;
    return Struct_3(Struct_1(~(6233u ^ func_3(false, u_input.b)), ~vec4<u32>(firstTrailingBit(global2.c.b.x), ~43287u, _wgslsmith_mult_u32(52312u, 1u), 20536u), arg_0.c), Struct_1(firstLeadingBit(32174u), _wgslsmith_div_vec4_u32(vec4<u32>(27753u, 0u, 15321u, 42501u), vec4<u32>(arg_0.b.x, ~global2.c.b.x, ~global2.d.b.b.x, u_input.b.x)), global2.d.a.xy), Struct_2(vec4<bool>(!global2.c.c.x, all(vec3<bool>(true, false, true)), true, select(!arg_0.c.x, true, func_1(arg_0.b).c.x)), Struct_1(~(58266u >> (0u % 32u)), vec4<u32>(min(arg_0.b.x, global2.c.a), global2.d.b.a, arg_0.a, 0u), !global2.d.a.zz), -31402i));
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_3) -> Struct_3 {
    let var_0 = vec2<bool>(true, arg_2.a.c.x);
    var var_1 = _wgslsmith_add_i32(-(i32(-1i) * -arg_2.c.c), 1i);
    let var_2 = arg_2.c.a.xwx;
    var var_3 = global0[_wgslsmith_index_u32(u_input.b.x, 31u)] >> (4605u % 32u);
    global3 = 1i;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, global2.b.x, global2.b.x, global2.b.x)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2.b.x, 344f, 102f, -1000f)))), select(select(global2.d.a, global2.d.a, vec4<bool>(global2.d.a.x, true, false, global2.c.c.x)), global2.d.a, global2.d.b.c.x))))));
    let var_1 = global2.d.a;
    let var_2 = ~_wgslsmith_mult_u32(~global2.d.b.a, firstLeadingBit(1u & u_input.b.x));
    var var_3 = Struct_2(!vec4<bool>(global2.c.c.x, all(var_1.zyy), global2.d.b.c.x, any(select(vec3<bool>(false, true, false), var_1.wzw, global2.c.c.x))), func_1(_wgslsmith_mod_vec4_u32(u_input.b, ~u_input.b)), -u_input.c.x);
    let var_4 = func_4(Struct_2(select(!(!var_3.a), global2.d.a, -1500f <= _wgslsmith_f_op_f32(-global2.b.x)), var_3.b, var_3.c), ~_wgslsmith_add_i32(reverseBits(i32(-1i) * -27709i), global2.d.c), func_2(global2.c));
    global3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 2069f), vec4<f32>(1000f, -1001f, global2.b.x, 118f)) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, -138f, -1000f, global2.b.x), vec4<f32>(global2.b.x, -1407f, global2.b.x, global2.b.x)))) * vec4<f32>(-1023f, var_0.x, _wgslsmith_div_f32(var_0.x, 1000f), _wgslsmith_f_op_f32(ceil(1940f))))));
}

