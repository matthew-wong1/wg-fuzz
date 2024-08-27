struct Struct_1 {
    a: u32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, true);

var<private> global1: vec2<u32>;

var<private> global2: array<bool, 12> = array<bool, 12>(true, true, true, false, false, true, true, true, true, false, true, true);

var<private> global3: bool;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> u32 {
    global2 = array<bool, 12>();
    var var_0 = arg_2.b;
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -566f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-280f * _wgslsmith_div_f32(-1150f, 716f)) - _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(-1234f)))), 1000f);
    var var_2 = Struct_1(arg_1.x, false);
    var var_3 = arg_3;
    return ~4294967295u & arg_2.a;
}

fn func_3(arg_0: u32, arg_1: vec3<f32>) -> u32 {
    return 0u;
}

fn func_1(arg_0: f32, arg_1: u32) -> u32 {
    global1 = ~_wgslsmith_clamp_vec2_u32(vec2<u32>(func_2(true, vec4<u32>(global0.a, global0.a, 1u, 0u), Struct_1(u_input.c, global0.b), Struct_2(Struct_1(55749u, global0.b))), arg_1), firstTrailingBit(vec2<u32>(global0.a, 1u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(2226u, 17947u), vec2<u32>(global0.a, 8858u))) | vec2<u32>(28728u, 0u);
    var var_0 = !global2[_wgslsmith_index_u32(~0u, 12u)];
    var_0 = global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.x, countOneBits(69365u) << (_wgslsmith_div_u32((global1.x << (global0.a % 32u)) ^ min(global1.x, u_input.b), func_2(all(vec2<bool>(false, false)), _wgslsmith_div_vec4_u32(vec4<u32>(global1.x, 35432u, 0u, global1.x), vec4<u32>(u_input.b, 1u, u_input.c, 4294967295u)), Struct_1(21172u, global2[_wgslsmith_index_u32(58818u, 12u)]), Struct_2(Struct_1(27356u, global0.b)))) % 32u)), 12u)];
    global2 = array<bool, 12>();
    let var_1 = vec3<u32>(1u & (~5758u << (global1.x % 32u)), global0.a | _wgslsmith_mult_u32(1u, ~u_input.b), func_3(~reverseBits(_wgslsmith_mod_u32(1u, global1.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, _wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(step(360f, arg_0))))));
    return reverseBits(_wgslsmith_div_u32(func_3(~countOneBits(4294967295u), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0, 500f, arg_0), vec3<f32>(-1226f, -1876f, arg_0))), 4294967295u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~u_input.a.x >> (~39734u % 32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1234f - -993f))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -987f), -953f)), _wgslsmith_f_op_f32(-1960f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(202f - -687f))), _wgslsmith_f_op_f32(sign(1585f)))));
    let var_2 = _wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(global1.x), func_1(var_1.x, 90103u)), abs(vec2<u32>(global1.x, select(105206u, global1.x, !global0.b))));
    var var_3 = Struct_2(Struct_1(1u, false));
    var var_4 = !global2[_wgslsmith_index_u32(~6130u, 12u)];
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec4<i32>(~(u_input.a.x ^ -19025i), 0i, firstTrailingBit(u_input.a.x >> (global1.x % 32u)), -1i)), vec3<f32>(var_1.x, _wgslsmith_div_f32(var_1.x, 1241f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-884f * -1516f)))), vec3<i32>(select(var_0, -2147483647i, all(select(vec2<bool>(false, true), vec2<bool>(global2[_wgslsmith_index_u32(22167u, 12u)], true), vec2<bool>(false, global0.b)))), _wgslsmith_sub_i32(firstTrailingBit(-7606i), var_0) << (func_1(_wgslsmith_f_op_f32(abs(var_1.x)), abs(35349u)) % 32u), var_0));
}

