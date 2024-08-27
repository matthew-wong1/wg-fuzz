struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 460f;

var<private> global1: array<vec3<f32>, 4> = array<vec3<f32>, 4>(vec3<f32>(-1000f, 1131f, 350f), vec3<f32>(-168f, -580f, 603f), vec3<f32>(-739f, -246f, -1858f), vec3<f32>(498f, 1000f, 1372f));

var<private> global2: vec3<bool>;

var<private> global3: vec2<bool> = vec2<bool>(true, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: vec3<f32>) -> vec3<bool> {
    var var_0 = Struct_3(_wgslsmith_clamp_i32(arg_0.a, u_input.a, ~u_input.c.x), 2201u, Struct_1(firstLeadingBit(firstTrailingBit(~vec3<u32>(4294967295u, 8132u, 13098u))), 797f, arg_0.a));
    let var_1 = vec3<bool>(!global2.x, true, ~var_0.b <= _wgslsmith_mod_u32(~arg_2, ~_wgslsmith_mod_u32(var_0.b, arg_2)));
    global2 = var_1;
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -276f), -1000f, arg_3.x), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_3.x)), var_0.c.b)), arg_3.x, var_0.c.b, 569f))));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(-197f, arg_3.x));
    return !var_1;
}

fn func_2(arg_0: Struct_3) -> Struct_3 {
    let var_0 = vec4<u32>(1u, ~1u << (max(u_input.d.x, 62630u) % 32u), _wgslsmith_mod_u32(arg_0.b >> (u_input.d.x % 32u), ~67265u) ^ 67737u, max(1u, ~u_input.d.x));
    var var_1 = Struct_3(-1i, (~var_0.x ^ 43971u) & ~u_input.d.x, Struct_1(arg_0.c.a, arg_0.c.b, _wgslsmith_mod_i32(_wgslsmith_div_i32(arg_0.a, -2147483647i), -24145i) | u_input.c.x));
    global2 = !select(!func_3(Struct_2(arg_0.c.c), false, ~47591u, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.c.b, 1188f, 1104f), vec3<f32>(684f, var_1.c.b, var_1.c.b)))), vec3<bool>(false, !global3.x, !any(vec2<bool>(global2.x, true))), false);
    let var_2 = arg_0;
    let var_3 = var_1.c;
    return var_2;
}

fn func_1(arg_0: Struct_3) -> f32 {
    global0 = 1929f;
    let var_0 = func_2(arg_0);
    global0 = -262f;
    let var_1 = _wgslsmith_clamp_vec3_u32(countOneBits(min(vec3<u32>(1u, 0u, 1u) ^ var_0.c.a, vec3<u32>(~var_0.c.a.x, 1u, ~var_0.c.a.x))), vec3<u32>(~func_2(Struct_3(u_input.c.x, 22131u, arg_0.c)).b, var_0.b >> ((reverseBits(var_0.c.a.x) | ~66301u) % 32u), ~_wgslsmith_mod_u32(0u & arg_0.b, abs(1u))), ~(~firstLeadingBit(select(u_input.d.yxx, vec3<u32>(0u, u_input.d.x, 5540u), vec3<bool>(false, false, false)))));
    let var_2 = Struct_2(_wgslsmith_sub_i32(-(i32(-1i) * -22439i), firstLeadingBit(~4087i)));
    return arg_0.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~(~(~_wgslsmith_mult_vec3_i32(u_input.c, u_input.c))));
    let var_1 = Struct_3(~u_input.a, 42314u, Struct_1(~max(abs(vec3<u32>(u_input.d.x, 4294967295u, u_input.d.x)), _wgslsmith_div_vec3_u32(vec3<u32>(0u, 33073u, u_input.d.x), vec3<u32>(1u, 21860u, u_input.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1170f, 513f) * _wgslsmith_f_op_f32(-1006f + 271f)) * 976f), i32(-1i) * -(~1i)));
    global2 = vec3<bool>(false, all(global2.yx), select(true, global2.x, global3.x));
    var var_2 = _wgslsmith_f_op_f32(func_1(var_1));
    global3 = vec2<bool>(!global3.x, true);
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(reverseBits(0u), 4u)] - global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(37269u, u_input.d.x), 4u)]) + vec3<f32>(var_1.c.b, _wgslsmith_f_op_f32(-427f - 1097f), -328f)) * global1[_wgslsmith_index_u32(firstTrailingBit(~(~66919u)), 4u)]));
    var var_4 = ~_wgslsmith_dot_vec3_u32(u_input.d.zyz, u_input.d.zww & ~(var_1.c.a | u_input.d.yzx));
    var_2 = _wgslsmith_f_op_f32(870f + _wgslsmith_f_op_f32(-var_1.c.b));
    let x = u_input.a;
    s_output = StorageBuffer(2147483647i, 4294967295u, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.c.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-var_3.x), -419f)), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(floor(696f))), -132f))));
}

