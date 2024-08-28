struct Struct_1 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 22>;

var<private> global1: Struct_1;

var<private> global2: vec2<u32>;

var<private> global3: f32;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32) -> vec4<u32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_0) + 1416f);
    let var_1 = -min(31758i, u_input.b);
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(arg_0, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-160f + arg_0))))), arg_0, arg_0, _wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(-arg_0)));
    global2 = vec2<u32>(global2.x, ~select(~u_input.c, ~(~u_input.a.x), global1.a.x));
    var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, arg_0, arg_0, _wgslsmith_div_f32(var_2.x, arg_0)) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_2.x, var_2.x, var_2.x, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(633f, arg_0, -612f, 985f)))) * vec4<f32>(var_2.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(-1478f, 1624f, true)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), -2065f, false)), 1334f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-290f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_0))), _wgslsmith_f_op_f32(max(679f, _wgslsmith_div_f32(1000f, 1402f))), _wgslsmith_f_op_f32(f32(-1f) * -491f))));
    return vec4<u32>(~_wgslsmith_sub_u32(0u, global2.x), _wgslsmith_mult_u32(abs(~4294967295u), 0u), 4912u, firstTrailingBit(1u));
}

fn func_2(arg_0: Struct_1) -> u32 {
    var var_0 = _wgslsmith_div_i32(0i, 1i);
    var var_1 = _wgslsmith_clamp_vec4_u32((abs(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, u_input.c, global2.x, 1u), vec4<u32>(4216u, 72618u, 113u, 1u))) | vec4<u32>(_wgslsmith_mult_u32(global2.x, 1u), 53851u, min(1u, 1u), 79426u)) | func_3(609f), vec4<u32>(88544u, 4294967295u, 67694u, ~62506u), abs(vec4<u32>(global2.x, 47831u, ~8919u, 0u)) >> (_wgslsmith_add_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, 40897u, u_input.c, u_input.a.x), vec4<u32>(0u, u_input.c, u_input.c, global2.x)), countOneBits(vec4<u32>(u_input.c, 3215u, 1u, 0u))) % vec4<u32>(32u)));
    let var_2 = global0[_wgslsmith_index_u32(~(~32366u), 22u)];
    global1 = Struct_1(global1.a);
    var var_3 = ~vec4<u32>(_wgslsmith_mult_u32(min(abs(4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(55035u, var_1.x, global2.x, global2.x), vec4<u32>(52406u, u_input.a.x, u_input.c, 22088u))), ~8621u), 61351u, var_1.x, 1u);
    return select(14514u, ~(~(~(~64755u))), global1.a.x);
}

fn func_1(arg_0: f32) -> bool {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-573f + _wgslsmith_f_op_f32(min(arg_0, -1171f)))) + arg_0)));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0), -660f, -967f);
    var var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(25322u, 4294967295u, u_input.c, 21728u), _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global2.x, _wgslsmith_div_u32(10527u, u_input.c), abs(global2.x), func_2(Struct_1(vec4<bool>(global1.a.x, true, false, global1.a.x)))), vec4<u32>(firstLeadingBit(1u), ~4294967295u, _wgslsmith_clamp_u32(u_input.a.x, global2.x, global2.x), abs(u_input.c))), vec4<u32>(u_input.a.x, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(33737u, u_input.a.x), u_input.a.zz)), _wgslsmith_mult_u32(global2.x, global2.x), 35805u)));
    global0 = array<vec4<i32>, 22>();
    global2 = vec2<u32>(u_input.c, abs(_wgslsmith_div_u32(abs(17498u), ~(1u & var_2.x))));
    return any(!vec4<bool>(true, global1.a.x, any(global1.a.ywz), (-4298i ^ u_input.b) <= 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.a.x && all(!global1.a.xz);
    var var_1 = Struct_1(select(!(!vec4<bool>(false, global1.a.x, true, global1.a.x)), vec4<bool>(true, true, global1.a.x, any(select(vec4<bool>(global1.a.x, global1.a.x, false, true), global1.a, global1.a.x))), func_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -698f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f));
    var var_3 = Struct_1(!select(select(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, global1.a.x), select(vec4<bool>(global1.a.x, global1.a.x, var_1.a.x, var_1.a.x), var_1.a, global1.a), select(vec4<bool>(global1.a.x, true, false, var_1.a.x), global1.a, vec4<bool>(true, true, global1.a.x, true))), !select(var_1.a, vec4<bool>(true, global1.a.x, var_1.a.x, var_1.a.x), true), global1.a.x));
    let var_4 = Struct_1(!(!select(select(vec4<bool>(true, false, true, false), var_3.a, true), select(vec4<bool>(false, var_3.a.x, true, true), vec4<bool>(global1.a.x, false, var_3.a.x, global1.a.x), global1.a), all(vec2<bool>(var_1.a.x, global1.a.x)))));
    let var_5 = 37118u;
    global3 = -1420f;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_sub_u32(~var_5, 1u | var_5) | ~(~(~0u)), _wgslsmith_f_op_f32(sign(1146f)), _wgslsmith_f_op_f32(abs(var_2.x)), vec4<u32>(0u, reverseBits(var_5), 0u, 4294967295u));
}

