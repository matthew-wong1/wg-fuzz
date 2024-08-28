struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 197f;

var<private> global1: Struct_2;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = select(select(select(vec4<bool>(!global1.c.x, global1.c.x, global1.c.x, true), select(!vec4<bool>(false, global1.c.x, global1.c.x, true), select(vec4<bool>(global1.c.x, false, false, global1.c.x), vec4<bool>(global1.c.x, global1.c.x, true, global1.c.x), true), vec4<bool>(false, global1.c.x, false, global1.c.x)), select(select(vec4<bool>(global1.c.x, global1.c.x, false, global1.c.x), vec4<bool>(global1.c.x, false, true, global1.c.x), global1.c.x), vec4<bool>(global1.c.x, global1.c.x, global1.c.x, false), true)), select(select(select(vec4<bool>(global1.c.x, false, global1.c.x, global1.c.x), vec4<bool>(true, global1.c.x, global1.c.x, global1.c.x), true), vec4<bool>(false, global1.c.x, false, global1.c.x), !vec4<bool>(global1.c.x, false, global1.c.x, false)), select(!vec4<bool>(global1.c.x, global1.c.x, true, true), vec4<bool>(global1.c.x, true, false, true), vec4<bool>(false, global1.c.x, global1.c.x, global1.c.x)), true), vec4<bool>(!(-533f >= global1.a.c), any(global1.c), global1.c.x, any(global1.c))), vec4<bool>(global1.c.x, !(!global1.c.x), true, !all(global1.c) && true), !vec4<bool>(false, true, any(vec3<bool>(global1.c.x, false, global1.c.x)), global1.c.x));
    let var_1 = global1.a;
    var var_2 = all(vec2<bool>(any(vec4<bool>(true, all(var_0), all(vec2<bool>(global1.c.x, true)), true)), global1.c.x));
    let var_3 = 3458i;
    let var_4 = global1.a;
    return select(vec3<bool>(true, var_0.x, all(select(!var_0.zwz, var_0.wyy, var_0.x))), select(vec3<bool>(var_0.x, true & any(var_0), any(vec4<bool>(var_0.x, var_0.x, false, false))), vec3<bool>(!any(vec3<bool>(false, global1.c.x, global1.c.x)), any(var_0.zwx) & global1.c.x, select(true, select(false, false, global1.c.x), !global1.c.x)), var_0.zzz), -2147483647i != var_3);
}

fn func_2(arg_0: u32) -> Struct_2 {
    global0 = -1000f;
    global1 = Struct_2(global1.a, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(global1.b, global1.b, vec4<i32>(global1.b.x, 0i, -45723i, u_input.d)), vec4<i32>(reverseBits(0i), firstLeadingBit(-37775i) >> (arg_0 % 32u), u_input.d << (~u_input.b % 32u), -1i)), vec3<bool>(true, true, !global1.c.x));
    let var_0 = ~u_input.a;
    global1 = Struct_2(global1.a, firstTrailingBit(global1.b), !(!func_3(vec2<i32>(47730i, var_0.x), vec2<f32>(-336f, 1207f))));
    return Struct_2(Struct_1(-firstLeadingBit(-var_0), _wgslsmith_sub_i32(25468i | u_input.d, u_input.a.x), _wgslsmith_f_op_f32(-264f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1245f)))), ~(~(u_input.b << (u_input.b % 32u)))), max(countOneBits(vec4<i32>(abs(-17156i), ~global1.a.b, reverseBits(global1.a.b), -45657i)), select(_wgslsmith_sub_vec4_i32(global1.b, global1.b), global1.b, vec4<bool>(true, all(vec3<bool>(true, false, global1.c.x)), any(vec3<bool>(true, false, false)), global1.c.x | true))), func_3(var_0.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.a.c, 1000f), vec2<f32>(global1.a.c, global1.a.c))) * _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global1.a.c, global1.a.c)))))));
}

fn func_1() -> Struct_2 {
    global1 = func_2(3968u);
    var var_0 = _wgslsmith_f_op_f32(global1.a.c * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.a.c)) + _wgslsmith_f_op_f32(f32(-1f) * -1127f)))));
    var var_1 = global1.a;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.a.c), _wgslsmith_f_op_f32(-global1.a.c), global1.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_1.c, 349f, true)) * _wgslsmith_f_op_f32(sign(var_1.c))))));
    let var_2 = 0i;
    return func_2(0u);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = _wgslsmith_clamp_u32(~129072u, 4760u, abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, 52998u, 1215u), vec4<u32>(countOneBits(2478u), u_input.b, global1.a.d, reverseBits(u_input.b)))));
    var var_1 = global1.a;
    var var_2 = vec4<bool>(any(!(!select(global1.c, global1.c, global1.c.x))), !(global1.a.d > u_input.b), select(all(vec4<bool>(var_1.c != global1.a.c, global1.c.x, false, !global1.c.x)), _wgslsmith_add_u32(var_0, _wgslsmith_clamp_u32(var_0, 4294967295u, var_0)) == ~global1.a.d, global1.c.x), _wgslsmith_f_op_f32(step(-560f, 571f)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.a.c), -573f)));
    global0 = _wgslsmith_f_op_f32(-414f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.c, global1.a.c) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(-420f, _wgslsmith_f_op_f32(ceil(-466f))) - _wgslsmith_f_op_f32(ceil(global1.a.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec4_u32(vec4<u32>(28018u, ~global1.a.d, countOneBits(abs(global1.a.d)), 132243u), _wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(var_1.d, 44765u, u_input.b, 4294967295u)), vec4<u32>(1u, 30689u, 12693u, 0u))), abs(u_input.b) << (u_input.b % 32u));
}

