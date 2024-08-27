struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: Struct_3,
    d: f32,
    e: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_1(vec4<u32>(4294967295u, 4294967295u, 4294967295u, 42000u), true, vec2<bool>(true, true)), Struct_1(vec4<u32>(0u, 47046u, 1u, 0u), true, vec2<bool>(true, true)), Struct_2(vec3<i32>(1i, -2924i, 671i), Struct_1(vec4<u32>(20256u, 59685u, 4294967295u, 0u), true, vec2<bool>(false, true)), true, 0u));

var<private> global1: array<Struct_3, 9>;

var<private> global2: bool = true;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> i32 {
    let var_0 = global0.c.a.x;
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -194f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-645f)))))));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(303f * 1512f), _wgslsmith_div_f32(246f, var_1.x)) + vec2<f32>(-441f, 937f))));
    let var_3 = vec3<bool>(select(global0.c.c, (false && any(global0.b.c)) & false, false), !(_wgslsmith_f_op_f32(trunc(-881f)) <= -178f), !any(arg_0));
    var var_4 = Struct_4(_wgslsmith_sub_u32(u_input.a.x, u_input.a.x), -10788i, Struct_3(Struct_1(select(reverseBits(global0.a.a), vec4<u32>(global0.b.a.x, arg_1.x, u_input.a.x, 73598u), vec4<bool>(arg_0.x, false, var_3.x, var_3.x)), all(select(arg_0, vec4<bool>(true, arg_2.b, arg_0.x, false), arg_0)), select(vec2<bool>(arg_0.x, arg_0.x), global0.c.b.c, true)), Struct_1(firstTrailingBit(reverseBits(arg_2.a)), global0.a.b, !global0.b.c), Struct_2(global0.c.a, Struct_1(~vec4<u32>(12300u, 34590u, 33238u, global0.a.a.x), arg_0.x, !arg_2.c), all(vec4<bool>(arg_0.x, var_3.x, true, false)), arg_1.x)), _wgslsmith_f_op_f32(-var_2.x), !global0.c.b.c.x);
    return 2147483647i;
}

fn func_2() -> Struct_4 {
    var var_0 = global0.c.b;
    var var_1 = global1[_wgslsmith_index_u32(~48677u, 9u)];
    var var_2 = 2110f;
    var_0 = global0.b;
    var_1 = global1[_wgslsmith_index_u32(var_1.c.b.a.x, 9u)];
    return Struct_4(var_0.a.x & abs(~4294967295u), func_3(!vec4<bool>(any(vec3<bool>(var_1.a.c.x, global0.b.c.x, true)), all(vec4<bool>(false, true, var_1.c.b.c.x, true)), var_0.c.x, false), vec2<u32>(_wgslsmith_sub_u32(global0.b.a.x, 4294967295u), 0u), global0.b), global1[_wgslsmith_index_u32(~select(62283u, 89282u, var_1.c.c || global0.b.b) & 39353u, 9u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-314f))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-103f)))), 1522f))), global0.c.c);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<f32>) -> i32 {
    let var_0 = global0.b.b;
    let var_1 = Struct_2(global0.c.a, Struct_1(countOneBits(firstLeadingBit(global0.c.b.a)), !((u_input.b > 1u) || any(vec3<bool>(global0.b.c.x, global0.b.c.x, false))), global0.a.c), true, 32108u);
    let var_2 = func_2();
    var var_3 = max(var_1.a.x, -func_3(!vec4<bool>(var_2.c.c.b.b, true, global0.a.b, true), max(vec2<u32>(30473u, var_2.a), vec2<u32>(global0.b.a.x, u_input.a.x)), var_2.c.c.b)) >= (var_1.a.x ^ (~(-7996i) >> (~(~u_input.b) % 32u)));
    var_3 = global0.c.c;
    return _wgslsmith_clamp_i32(_wgslsmith_mult_i32(-11854i, var_2.c.c.a.x), var_1.a.x ^ 31677i, global0.c.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = all(vec2<bool>(!global0.c.b.b, func_1(vec4<f32>(-170f, -1770f, 888f, -960f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1615f, 285f, -804f) - vec3<f32>(765f, 1805f, -1935f))) == -_wgslsmith_mod_i32(global0.c.a.x, global0.c.a.x)));
    var var_0 = func_2().c.b.c;
    var var_1 = all(!select(!vec3<bool>(var_0.x, true, var_0.x), select(vec3<bool>(var_0.x, true, true), select(vec3<bool>(false, global0.a.b, false), vec3<bool>(true, var_0.x, var_0.x), false), select(vec3<bool>(true, false, global0.c.c), vec3<bool>(global0.a.c.x, global0.b.b, var_0.x), false)), global0.c.a.x < ~(-7967i)));
    var_1 = all(vec2<bool>(true, any(!vec4<bool>(global0.c.b.c.x, global0.c.b.c.x, true, global0.a.b))));
    global2 = !(true == all(vec2<bool>(false, var_0.x))) && true;
    let x = u_input.a;
    s_output = StorageBuffer(global0.c.b.a.yz, vec4<i32>(func_1(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(843f, -487f, 1049f, 459f), vec4<f32>(1017f, 2171f, -220f, -1183f)))), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(614f, 993f, -115f) + vec3<f32>(693f, -725f, -562f))))), 2147483647i, ~(-1019i), global0.c.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-827f, _wgslsmith_f_op_f32(f32(-1f) * -742f), -328f)), global0.c.a.yz, _wgslsmith_f_op_f32(select(1142f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(-1918f)), 184f)), !(any(vec4<bool>(false, var_0.x, var_0.x, true)) == !var_0.x))));
}

