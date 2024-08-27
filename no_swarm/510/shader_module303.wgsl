struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec4<bool>,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<vec3<f32>, 14> = array<vec3<f32>, 14>(vec3<f32>(-376f, 204f, 936f), vec3<f32>(2010f, 767f, -223f), vec3<f32>(1063f, -1141f, 413f), vec3<f32>(-962f, 1194f, -2151f), vec3<f32>(-213f, -2376f, 326f), vec3<f32>(580f, -1083f, 416f), vec3<f32>(-759f, 1000f, -845f), vec3<f32>(-254f, 794f, -912f), vec3<f32>(979f, 1000f, -1324f), vec3<f32>(612f, 663f, -1121f), vec3<f32>(-510f, -108f, -762f), vec3<f32>(-867f, 520f, 582f), vec3<f32>(1233f, -950f, 1613f), vec3<f32>(1766f, 798f, -885f));

var<private> global1: array<vec2<f32>, 3>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> vec4<u32> {
    let var_0 = -2147483647i & reverseBits(_wgslsmith_add_i32(u_input.a, -1i));
    return vec4<u32>(arg_0.x, 50303u, arg_0.x | (~arg_0.x << (arg_0.x % 32u)), max(arg_0.x, 4294967295u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<bool>) -> vec3<bool> {
    global0 = array<vec3<f32>, 14>();
    global0 = array<vec3<f32>, 14>();
    let var_0 = ~arg_2.d.zwx;
    let var_1 = arg_2;
    let var_2 = var_1.c;
    return arg_1.c.wyz;
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec3<i32>) -> Struct_1 {
    var var_0 = func_2(_wgslsmith_add_vec3_u32(~vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, arg_1, arg_1, arg_1), vec4<u32>(arg_1, arg_1, arg_1, 2990u)), _wgslsmith_mult_u32(0u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_1, 0u), vec3<u32>(0u, arg_1, arg_1))), _wgslsmith_mod_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1) ^ firstLeadingBit(vec3<u32>(23158u, 1u, 50257u)), _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(arg_1, 0u, 47041u), vec3<u32>(0u, arg_1, arg_1)), min(vec3<u32>(84359u, 4294967295u, 4294967295u), vec3<u32>(arg_1, 11223u, 7532u))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1859f, 442f, 341f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(global0[_wgslsmith_index_u32(0u, 14u)], _wgslsmith_f_op_vec3_f32(vec3<f32>(-1182f, 453f, -1856f) * vec3<f32>(1274f, 151f, 2061f)))))));
    let var_1 = select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), false))), all(vec4<bool>(true, false, false, false)) || !all(vec2<bool>(true, true))), !select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), true), !func_3(Struct_2(true), Struct_1(arg_0, -153f, vec4<bool>(true, true, true, true), vec4<u32>(0u, 0u, 51923u, arg_1), var_0.x), Struct_1(arg_2.zx, 1000f, vec4<bool>(false, false, false, false), vec4<u32>(arg_1, var_0.x, 0u, 4294967295u), 0u), vec4<bool>(true, true, true, false)), vec3<bool>(true, true, true)), vec3<bool>(!any(vec4<bool>(false, true, false, false)), !any(vec4<bool>(true, false, false, true)), ~(1i & u_input.a) <= 1i));
    var_0 = vec4<u32>(12580u, 1u, abs(_wgslsmith_sub_u32(~(arg_1 | var_0.x), countOneBits(~arg_1))), arg_1);
    var var_2 = 1u;
    let var_3 = Struct_1(vec2<i32>(0i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, u_input.a), arg_0) ^ 16034i), -267f, !select(select(!vec4<bool>(var_1.x, true, var_1.x, false), select(vec4<bool>(var_1.x, false, var_1.x, true), vec4<bool>(true, false, true, false), var_1.x), true), !(!vec4<bool>(false, true, false, var_1.x)), true), ~vec4<u32>(firstTrailingBit(min(arg_1, 0u)), firstLeadingBit(min(3635u, arg_1)), 22861u, _wgslsmith_mod_u32(abs(20936u), ~arg_1)), _wgslsmith_dot_vec2_u32(func_2(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 82775u, arg_1, 1u), vec4<u32>(arg_1, 28981u, 46176u, var_0.x)), arg_1, 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(133f, -483f, 1560f)) * vec3<f32>(355f, -316f, 1196f))).yy, vec2<u32>(1u, var_0.x)));
    return var_3;
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> i32 {
    global1 = array<vec2<f32>, 3>();
    global1 = array<vec2<f32>, 3>();
    var var_0 = _wgslsmith_div_vec4_u32(vec4<u32>(~firstLeadingBit(~arg_1.d.x), arg_1.d.x, select(arg_1.d.x, countOneBits(1u), arg_1.c.x), 6389u), select(~(arg_1.d << (arg_1.d % vec4<u32>(32u))) >> (~arg_1.d % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(arg_1.d, vec4<u32>(abs(arg_1.e), 51391u, 0u, 88977u << (arg_1.d.x % 32u))), arg_1.c.x));
    let var_1 = !arg_1.c;
    var var_2 = _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1202f) - _wgslsmith_f_op_f32(arg_1.b - 303f)))))));
    return 2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 14>();
    let var_0 = Struct_1(vec2<i32>(func_4(-802f, func_1(~vec2<i32>(28843i, u_input.a), 11602u, abs(vec3<i32>(u_input.a, u_input.a, u_input.a)))), firstLeadingBit(-2147483647i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(559f))))) - 811f), func_1(-reverseBits(-vec2<i32>(-14109i, u_input.a)), 1u, -countOneBits(~vec3<i32>(1i, u_input.a, u_input.a))).c, vec4<u32>(~27621u, 0u, 1u, 9980u), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 8229u, 4294967295u, 36709u), vec4<u32>(16784u, 1u, 0u, 29923u), vec4<u32>(4294967295u, 4294967295u, 1u, 47978u)) >> (vec4<u32>(0u, 25731u, 78861u, 5514u) % vec4<u32>(32u)), vec4<u32>(1u, 1u, 1u, 1u) & select(vec4<u32>(1301u, 45681u, 4294967295u, 45728u), vec4<u32>(0u, 1u, 1u, 23954u), false)), vec4<u32>(reverseBits(1u), func_1(firstLeadingBit(vec2<i32>(u_input.a, 2147483647i)), 1u, vec3<i32>(u_input.a, u_input.a, u_input.a)).e, 3119u, firstLeadingBit(_wgslsmith_div_u32(31045u, 1u)))));
    let var_1 = var_0;
    let var_2 = !all(select(func_1(vec2<i32>(-1i, var_0.a.x), var_1.e, vec3<i32>(-2147483647i, u_input.a, u_input.a)).c.zxy, vec3<bool>(var_0.c.x, var_0.c.x, false), select(var_1.c.xzw, vec3<bool>(var_1.c.x, var_0.c.x, var_1.c.x), true))) != func_1(vec2<i32>(var_0.a.x & -23811i, -63951i), var_1.e, -vec3<i32>(_wgslsmith_mult_i32(var_1.a.x, var_0.a.x), var_1.a.x, i32(-1i) * -28847i)).c.x;
    var var_3 = func_1(vec2<i32>(~_wgslsmith_sub_i32(-1i, var_0.a.x), -u_input.a), var_1.d.x, vec3<i32>(2147483647i, 1i, 0i));
    let var_4 = false;
    let x = u_input.a;
    s_output = StorageBuffer(263f);
}

