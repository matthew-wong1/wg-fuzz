struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<u32>,
    d: i32,
    e: u32,
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

var<private> global0: vec4<i32> = vec4<i32>(0i, 58142i, 0i, 17974i);

var<private> global1: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(10840u, 1i), Struct_2(0u, 8135i), Struct_2(1u, -8777i), Struct_2(4294967295u, -29099i), Struct_2(1u, i32(-2147483648)), Struct_2(24007u, 0i), Struct_2(4294967295u, 0i), Struct_2(0u, -27106i));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: i32, arg_2: Struct_4) -> bool {
    var var_0 = -max((-2147483647i & (u_input.d & global0.x)) >> (~(~u_input.b) % 32u), ~(_wgslsmith_sub_i32(-2147483647i, 0i) >> (arg_0 % 32u)));
    global0 = vec4<i32>(min(firstTrailingBit(2611i), countOneBits(5286i)), -(_wgslsmith_dot_vec3_i32(global0.yyx, global0.xzy) >> (u_input.b % 32u)), arg_1, global0.x) | vec4<i32>(abs(abs(global0.x)), 2147483647i, _wgslsmith_clamp_i32(reverseBits(-3686i), 20081i | _wgslsmith_mult_i32(arg_1, u_input.d), _wgslsmith_sub_i32(global0.x, arg_1)), max(u_input.d, firstLeadingBit(2147483647i)));
    let var_1 = Struct_3(_wgslsmith_mult_vec2_i32(global0.xz, global0.yz), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1127f)), -1160f, -1274f))));
    let var_2 = ~vec4<u32>(4294967295u, ~4294967295u, 4294967295u, arg_0);
    var var_3 = ~1u;
    return arg_2.a;
}

fn func_2(arg_0: i32, arg_1: f32) -> i32 {
    global1 = array<Struct_2, 8>();
    var var_0 = ~min(abs(vec2<u32>(4561u, _wgslsmith_mod_u32(u_input.b, u_input.a.x))), u_input.a.yy);
    var var_1 = arg_0;
    var_1 = _wgslsmith_div_i32(35133i, arg_0);
    let var_2 = !func_3(min(_wgslsmith_add_u32(abs(var_0.x), ~var_0.x), ~0u), 9067i, Struct_4(all(vec2<bool>(false, true)), vec4<bool>(true, true, true, true)));
    return -(~(-global0.x));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec4<i32> {
    global1 = array<Struct_2, 8>();
    let var_0 = ~func_2(_wgslsmith_div_i32(~u_input.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(10461u, 32898u, u_input.e), vec3<u32>(u_input.e, arg_0.x, u_input.b)) % 32u), _wgslsmith_div_i32(_wgslsmith_add_i32(2147483647i, global0.x), _wgslsmith_clamp_i32(-8448i, u_input.d, u_input.d))), arg_1.x);
    global1 = array<Struct_2, 8>();
    let var_1 = any(vec4<bool>(!any(vec3<bool>(false, true, true)), (u_input.e & arg_0.x) <= reverseBits(1029u), false, true)) || (!(_wgslsmith_div_f32(arg_1.x, arg_1.x) > arg_1.x) || (!any(vec4<bool>(true, true, false, false)) | ((arg_1.x > 1000f) || any(vec3<bool>(false, true, false)))));
    var var_2 = Struct_1(!(!select(select(vec2<bool>(true, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), vec2<bool>(true, var_1), !vec2<bool>(var_1, var_1))), ~(~global0.xx));
    return vec4<i32>(_wgslsmith_add_i32(-func_2(43088i, arg_1.x), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.b.x, 22821i), ~vec2<i32>(2147483647i, var_2.b.x)), _wgslsmith_dot_vec2_i32(~global0.yz, -vec2<i32>(3484i, var_0)))), -var_2.b.x, _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d, reverseBits(var_0)), var_0), u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = abs(-vec4<i32>(u_input.d, u_input.d | u_input.d, global0.x, 1i));
    global0 = func_1(u_input.c.www, vec3<f32>(_wgslsmith_div_f32(-1183f, _wgslsmith_div_f32(729f, 1408f)), _wgslsmith_f_op_f32(select(1f, 308f, all(vec2<bool>(true, true)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(112f)), _wgslsmith_f_op_f32(trunc(-710f)))));
    global1 = array<Struct_2, 8>();
    let var_0 = Struct_4(true, vec4<bool>(true, true, true, true));
    global0 = (vec4<i32>(-1i) * -(vec4<i32>(-1i) * -vec4<i32>(55228i, u_input.d, u_input.d, u_input.d))) ^ reverseBits(_wgslsmith_sub_vec4_i32(-vec4<i32>(2147483647i, u_input.d, global0.x, 0i), -vec4<i32>(u_input.d, 1i, global0.x, global0.x)) << (countOneBits(u_input.a ^ u_input.c) % vec4<u32>(32u)));
    let var_1 = global1[_wgslsmith_index_u32(u_input.e, 8u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(u_input.c.wzw, vec3<u32>(~45304u, var_1.a, 1u >> (1u % 32u))) << (firstTrailingBit(u_input.a.wwz) % vec3<u32>(32u)));
}

