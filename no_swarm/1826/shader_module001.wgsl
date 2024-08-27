struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
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

var<private> global0: bool = true;

var<private> global1: Struct_3 = Struct_3(false, vec3<bool>(false, true, false));

var<private> global2: array<Struct_2, 26>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec2<f32>) -> f32 {
    global1 = Struct_3(false, select(!arg_1.a.wyx, !select(vec3<bool>(global1.b.x, arg_1.a.x, false), arg_1.a.zwx, all(arg_1.a.xz)), global1.b));
    var var_0 = arg_2;
    global2 = array<Struct_2, 26>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2.x, var_0.x, true))));
}

fn func_2(arg_0: bool, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2161f, _wgslsmith_f_op_f32(796f - 1000f), _wgslsmith_f_op_f32(305f - 951f), _wgslsmith_f_op_f32(f32(-1f) * -702f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-517f, 364f, -824f, 1000f), vec4<f32>(-1000f, -116f, -186f, -1191f), arg_0)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1844f, -196f, -884f, 266f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -608f), _wgslsmith_f_op_f32(f32(-1f) * -714f), _wgslsmith_div_f32(1184f, 171f), _wgslsmith_div_f32(985f, 183f))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-387f - _wgslsmith_f_op_f32(1000f * 838f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(1u, global2[_wgslsmith_index_u32(u_input.a, 26u)], vec2<f32>(-2080f, -653f))) + _wgslsmith_f_op_f32(971f * -1497f))), 242f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -426f) - -2109f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1316f * 3105f))))));
    let var_1 = global2[_wgslsmith_index_u32(u_input.a, 26u)];
    global0 = false;
    return Struct_2(var_1.a, -vec2<i32>(~_wgslsmith_div_i32(var_1.b.x, 1i), var_1.b.x & arg_1.x), var_1.c);
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(vec4<u32>(11489u, 44515u, 0u, 30921u), (!all(global1.b) && global1.b.x) && true);
    global0 = false;
    let var_1 = func_2(all(global1.b), vec3<i32>(abs(select(u_input.d, u_input.d | 1i, true)), ~(u_input.d ^ ~u_input.c), u_input.c));
    var var_2 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(~firstTrailingBit(var_0.a.x), ~(~var_0.a.x)), _wgslsmith_dot_vec3_u32(func_2(any(vec2<bool>(var_1.a.x, var_1.a.x)), abs(vec3<i32>(-1i, 16968i, 6112i))).c.a.yyz, _wgslsmith_mod_vec3_u32(vec3<u32>(8854u, var_1.c.a.x, u_input.a), min(vec3<u32>(4294967295u, 31388u, 19957u), vec3<u32>(u_input.b.x, var_1.c.a.x, 3139u)))));
    var_2 = countOneBits(u_input.b.x);
    return func_2(var_0.b, -_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(53085i, 1i), -2147483647i >> (var_1.c.a.x % 32u), 1i), -(vec3<i32>(1i, 19287i, u_input.c) & vec3<i32>(var_1.b.x, u_input.c, var_1.b.x)), max(vec3<i32>(var_1.b.x, -37647i, u_input.d), vec3<i32>(var_1.b.x, var_1.b.x, -72587i)) & vec3<i32>(var_1.b.x, var_1.b.x, -32561i))).c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~u_input.b.x, 645u, ~(u_input.a | abs(u_input.a)), ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.e.x), abs(u_input.e))) ^ abs(~vec4<u32>(u_input.e.x, 1u, ~66009u, 1u >> (u_input.e.x % 32u)));
    let var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(countOneBits(i32(-1i) * -1i), u_input.d), u_input.d);
}

