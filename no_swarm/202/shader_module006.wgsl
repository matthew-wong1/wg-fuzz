struct Struct_1 {
    a: vec4<bool>,
    b: f32,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(35489i, -27270i, -14721i);

var<private> global1: Struct_2 = Struct_2(-1523f);

var<private> global2: u32;

var<private> global3: array<vec4<u32>, 15> = array<vec4<u32>, 15>(vec4<u32>(5904u, 0u, 316u, 48838u), vec4<u32>(4294967295u, 57156u, 0u, 17891u), vec4<u32>(54619u, 20295u, 1u, 1u), vec4<u32>(0u, 0u, 0u, 1u), vec4<u32>(0u, 1u, 36882u, 4294967295u), vec4<u32>(53346u, 1u, 0u, 4294967295u), vec4<u32>(65994u, 14220u, 105056u, 0u), vec4<u32>(4294967295u, 30784u, 4294967295u, 51819u), vec4<u32>(13716u, 1u, 4294967295u, 22728u), vec4<u32>(11696u, 1u, 0u, 109057u), vec4<u32>(5190u, 0u, 1u, 51063u), vec4<u32>(20282u, 0u, 4294967295u, 4294967295u), vec4<u32>(47309u, 20372u, 42733u, 32773u), vec4<u32>(88220u, 0u, 5866u, 4294967295u), vec4<u32>(4294967295u, 0u, 85374u, 1u));

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3() -> vec4<bool> {
    let var_0 = !(u_input.b < u_input.b) || true;
    global0 = ~vec3<i32>(~(1i ^ u_input.a), -48150i, u_input.a);
    var var_1 = Struct_4(4294967295u, vec3<i32>(16252i, countOneBits(_wgslsmith_div_i32(22908i, max(2147483647i, u_input.a))), 2147483647i), select(vec2<i32>(~(-u_input.a), global0.x), global0.yz >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(39999u, 22315u) ^ vec2<u32>(42572u, u_input.b), vec2<u32>(19640u, u_input.b) << (vec2<u32>(u_input.b, 45313u) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, u_input.b)) % vec2<u32>(32u)), !var_0), Struct_1(!vec4<bool>(all(vec4<bool>(var_0, false, var_0, var_0)), 2147483647i <= global0.x, var_0, all(vec2<bool>(true, var_0))), global1.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1661f, -2221f, global1.a)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a, global1.a, -665f))), vec3<f32>(global1.a, _wgslsmith_f_op_f32(global1.a * -1840f), _wgslsmith_f_op_f32(trunc(1708f))), select(false, var_0, any(vec2<bool>(var_0, var_0)))))));
    global2 = 63143u;
    var var_2 = var_1.d;
    return vec4<bool>(any(!select(select(vec4<bool>(var_0, var_2.a.x, true, false), var_1.d.a, vec4<bool>(false, true, var_2.a.x, false)), select(vec4<bool>(var_2.a.x, false, var_2.a.x, var_1.d.a.x), vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, var_1.d.a.x, false, var_2.a.x)), vec4<bool>(var_2.a.x, false, var_2.a.x, true))), any(!vec4<bool>(var_2.a.x, true, any(var_2.a.yww), true)), var_1.d.a.x || var_2.a.x, true);
}

fn func_2() -> u32 {
    global2 = firstLeadingBit(u_input.b);
    global3 = array<vec4<u32>, 15>();
    global0 = ~_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-u_input.a, u_input.a, global0.x >> (45573u % 32u)), vec3<i32>(~global0.x, -18882i, u_input.a)), -select(-vec3<i32>(global0.x, u_input.a, 0i), ~vec3<i32>(-2147483647i, -15404i, 28705i), vec3<bool>(true, true, true)));
    let var_0 = vec2<bool>(true, true);
    var var_1 = Struct_1(func_3(), _wgslsmith_f_op_f32(global1.a + -428f));
    return 1u;
}

fn func_1(arg_0: Struct_3, arg_1: i32) -> vec4<bool> {
    let var_0 = u_input.b == _wgslsmith_mult_u32(~func_2(), ~u_input.b);
    global2 = u_input.b;
    let var_1 = 15473i;
    let var_2 = all(arg_0.a.a.zz);
    let var_3 = _wgslsmith_add_u32(71881u, min(min(u_input.b, abs(53244u) ^ _wgslsmith_mod_u32(u_input.b, 60786u)), u_input.b));
    return select(arg_0.a.a, vec4<bool>(true, true, false, true), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = 24182u;
    global1 = Struct_2(_wgslsmith_f_op_f32(global1.a - -1563f));
    let var_0 = !(!select(select(func_1(Struct_3(Struct_1(vec4<bool>(false, true, false, true), global1.a)), -10821i), vec4<bool>(true, false, false, true), false), vec4<bool>(u_input.a <= 2147483647i, true, any(vec4<bool>(false, true, false, true)), false), !any(vec4<bool>(true, true, true, true))));
    global2 = u_input.b << (u_input.b % 32u);
    var var_1 = Struct_3(Struct_1(vec4<bool>(any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x)), !select(var_0.x, false, true), _wgslsmith_div_u32(u_input.b, u_input.b) >= 4294967295u, -1000f > _wgslsmith_f_op_f32(floor(global1.a))), _wgslsmith_f_op_f32(-global1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(~1u, 1u, reverseBits(1u))));
}

