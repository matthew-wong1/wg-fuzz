struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: u32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
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

var<private> global0: Struct_1;

var<private> global1: bool = false;

var<private> global2: array<u32, 28>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: i32, arg_1: vec4<f32>, arg_2: vec2<u32>) -> vec2<i32> {
    let var_0 = select(!select(select(!global0.a.yx, !vec2<bool>(global0.b.x, global0.a.x), vec2<bool>(true, true)), select(!global0.a.zx, vec2<bool>(false, global0.a.x), select(vec2<bool>(global0.a.x, global0.b.x), vec2<bool>(true, global0.b.x), true)), u_input.d >= max(-2147483647i, 16607i)), !(!global0.a.xz), false);
    global2 = array<u32, 28>();
    let var_1 = ~min(2147483647i, -3980i);
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x))) - -2792f), 451f));
    global2 = array<u32, 28>();
    return u_input.a.zx;
}

fn func_2() -> u32 {
    var var_0 = abs(u_input.a.x);
    let var_1 = ~(~(vec3<u32>(global0.c, global0.c, ~global0.c) >> (vec3<u32>(global2[_wgslsmith_index_u32(global0.d, 28u)] << (global0.d % 32u), 4294967295u, firstTrailingBit(4294967295u)) % vec3<u32>(32u))));
    var_0 = _wgslsmith_dot_vec2_i32(func_3(-1i, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-653f, 2234f, -3100f, 737f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-161f, -572f, -410f, 1000f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1678f, -877f, -317f, 804f) + vec4<f32>(2165f, -471f, 198f, -267f)) * vec4<f32>(1106f, -492f, -520f, 628f)), _wgslsmith_f_op_f32(min(-1007f, -1858f)) >= _wgslsmith_f_op_f32(ceil(-1180f)))), firstLeadingBit(_wgslsmith_mod_vec2_u32(u_input.b.yz, var_1.yy) ^ vec2<u32>(global0.c, 41558u))), min(vec2<i32>(_wgslsmith_mod_i32(2147483647i, u_input.a.x), 0i), vec2<i32>(max(-1i, 1i), firstTrailingBit(-2032i))) & vec2<i32>(_wgslsmith_sub_i32(u_input.c, 34671i) >> ((80696u | var_1.x) % 32u), _wgslsmith_clamp_i32(reverseBits(-11836i), countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), u_input.a.zy))));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-1000f * -216f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(619f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(526f, -1413f)) - _wgslsmith_f_op_f32(min(140f, 531f)))))));
    let var_3 = Struct_1(global0.a, select(!global0.a.yy, global0.b, abs(-u_input.a.x) <= -_wgslsmith_mult_i32(22856i, u_input.a.x)), 18697u, _wgslsmith_add_u32(~u_input.b.x, global2[_wgslsmith_index_u32(4294967295u, 28u)]));
    return var_1.x;
}

fn func_1() -> StorageBuffer {
    global0 = Struct_1(vec3<bool>(global0.a.x, true, global0.b.x), global0.b, 4294967295u, ~21923u);
    var var_0 = func_2();
    return StorageBuffer(_wgslsmith_f_op_f32(max(-562f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(699f)), _wgslsmith_f_op_f32(-137f * -1551f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

