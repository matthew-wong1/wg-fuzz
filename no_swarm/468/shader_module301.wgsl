struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(-19076i)), Struct_2(Struct_1(2147483647i)), Struct_2(Struct_1(1i)), Struct_2(Struct_1(0i)));

var<private> global2: u32;

var<private> global3: Struct_2 = Struct_2(Struct_1(0i));

var<private> global4: array<Struct_2, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    global1 = array<Struct_2, 4>();
    global1 = array<Struct_2, 4>();
    let var_0 = _wgslsmith_f_op_f32(-759f - _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -166f), _wgslsmith_div_f32(-605f, _wgslsmith_f_op_f32(max(422f, -620f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-784f, _wgslsmith_f_op_f32(f32(-1f) * -210f))))));
    var var_1 = Struct_3(global0.c.a, Struct_2(Struct_1(-2147483647i)), global4[_wgslsmith_index_u32(min(4294967295u, _wgslsmith_mult_u32(countOneBits(~0u), 1u)), 8u)]);
    var var_2 = Struct_2(arg_0);
    return select(!vec4<bool>(_wgslsmith_f_op_f32(var_0 - var_0) >= 1263f, any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), true), !vec4<bool>(false, !(global3.a.a >= global3.a.a), select(true, false, true), false), true);
}

fn func_2(arg_0: i32) -> Struct_3 {
    var var_0 = Struct_4(Struct_2(Struct_1(global0.b.a.a)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(-685f, 1028f)), -1487f, true)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1441f, 1047f)))), 243f, -1665f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(515f + 1054f)), 1143f))));
    var var_1 = !func_3(global0.c.a);
    var_0 = Struct_4(global4[_wgslsmith_index_u32(~(~(~(~75896u))), 8u)], var_0.b);
    global0 = Struct_3(var_0.a.a, var_0.a, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(countOneBits(3346u), ~_wgslsmith_mult_u32(16859u, 0u), ~4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), ~(~vec4<u32>(1u, 1u, 1u, 1u))), 4u)]);
    let var_2 = Struct_4(Struct_2(global3.a), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -125f), -1901f, _wgslsmith_div_f32(var_0.b.x, var_0.b.x), _wgslsmith_f_op_f32(f32(-1f) * -956f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.x, var_0.b.x, var_0.b.x, 2012f), var_0.b, vec4<bool>(var_1.x, var_1.x, var_1.x, var_1.x)))))), _wgslsmith_f_op_vec4_f32(var_0.b * var_0.b))));
    return Struct_3(global0.b.a, Struct_2(Struct_1(~(-var_0.a.a.a))), Struct_2(Struct_1(1410i)));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    global0 = func_2(~max(~1i, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-2147483647i, global0.c.a.a), ~(-27108i), u_input.a)));
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.x)) * 1214f)))));
    global1 = array<Struct_2, 4>();
    global2 = reverseBits(countOneBits(_wgslsmith_div_u32(4294967295u, ~(~22225u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, 1018f, -525f, 494f)))), vec4<f32>(var_0, arg_0.x, -133f, -170f)))));
    return 926f;
}

fn func_4(arg_0: vec2<f32>, arg_1: f32) -> bool {
    global0 = Struct_3(func_2(2147483647i).a, func_2(abs(-20138i)).b, func_2(global0.b.a.a).b);
    let var_0 = Struct_4(Struct_2(func_2(-2147483647i).c.a), vec4<f32>(_wgslsmith_div_f32(-1087f, 2116f), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(1381f, _wgslsmith_f_op_f32(-1270f * arg_0.x))), -646f, 767f));
    let var_1 = Struct_2(func_2(~global0.c.a.a).b.a);
    let var_2 = false;
    var var_3 = -542f;
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -224f;
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-781f, 1000f)))))))));
    global3 = Struct_2(Struct_1(0i));
    global2 = ~(~countOneBits(reverseBits(reverseBits(42256u))));
    var var_2 = Struct_1(global0.a.a);
    let var_3 = vec2<bool>(func_4(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.x)) + _wgslsmith_f_op_f32(f32(-1f) * -677f)), var_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(-var_1))) * var_1.x)), true);
    global2 = _wgslsmith_mod_u32(25488u, abs(countOneBits(~(~4294967295u))));
    var var_4 = func_2(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(-_wgslsmith_mod_vec2_i32(u_input.b, u_input.b), _wgslsmith_mult_vec2_i32(u_input.b, ~u_input.b)), _wgslsmith_dot_vec4_i32(-vec4<i32>(0i, global0.c.a.a, u_input.a, 1i), -vec4<i32>(global0.a.a, 14031i, -3250i, global0.b.a.a))));
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_vec2_i32(-vec2<i32>(var_2.a, global3.a.a), vec2<i32>(var_4.b.a.a, -1i) | vec2<i32>(global3.a.a, 13543i)), global0.b.a.a);
}

