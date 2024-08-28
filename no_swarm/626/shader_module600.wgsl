struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: vec2<f32>,
    d: u32,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<f32> = vec2<f32>(1001f, 1538f);

var<private> global2: Struct_4 = Struct_4(vec3<u32>(0u, 4294967295u, 24807u), vec3<u32>(51006u, 4294967295u, 1u), Struct_1(0i), Struct_2(-18812i, false, vec3<bool>(false, false, false)), vec3<f32>(-1000f, -2111f, -298f));

var<private> global3: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(74034i), Struct_1(-66200i), Struct_1(-30224i), Struct_1(-1532i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32) -> i32 {
    let var_0 = global2.d.b;
    global0 = vec4<i32>(global0.x, ~(-2147483647i), global0.x, firstTrailingBit(_wgslsmith_div_i32(_wgslsmith_sub_i32(6409i, -global0.x), -15923i)));
    global2 = Struct_4(global2.b, _wgslsmith_sub_vec3_u32(~max(vec3<u32>(u_input.d, u_input.d, 25196u), vec3<u32>(u_input.b.x, 33815u, global2.b.x)), u_input.c.yzz), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(4294967295u, _wgslsmith_div_u32(1u, ~1611u)), 4u)], Struct_2(global2.d.a | select(reverseBits(16037i), ~global2.d.a, global2.d.b), any(vec4<bool>(global2.d.c.x == false, any(vec4<bool>(true, false, false, global2.d.c.x)), any(vec2<bool>(true, global2.d.b)), true)), !select(global2.d.c, vec3<bool>(global2.d.c.x, false, false), global2.d.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -896f), _wgslsmith_f_op_f32(round(arg_0)), 1f), vec3<f32>(_wgslsmith_f_op_f32(-global2.e.x), arg_0, -569f)))));
    let var_1 = global2.b.x;
    let var_2 = vec2<u32>(~(~(~abs(global2.a.x))), u_input.c.x);
    return -55768i;
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> bool {
    var var_0 = _wgslsmith_div_i32(_wgslsmith_add_i32(~arg_0.e.x, reverseBits(arg_0.e.x)), func_3(global2.e.x));
    let var_1 = ~vec4<u32>(47058u, abs(85471u), 12606u, u_input.c.x);
    let var_2 = abs(u_input.b.yyy);
    var var_3 = Struct_2(-41551i, global2.d.c.x != all(global2.d.c.xy), vec3<bool>(true, all(!(!vec3<bool>(arg_0.b.b, global2.d.c.x, global2.d.b))), !arg_0.b.c.x));
    var_3 = global2.d;
    return false;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_1) -> vec4<i32> {
    var var_0 = _wgslsmith_sub_i32(-36836i, 0i);
    global2 = Struct_4(abs(vec3<u32>(~_wgslsmith_clamp_u32(arg_0.b.x, u_input.c.x, u_input.c.x), reverseBits(u_input.b.x) | 57235u, 0u)), _wgslsmith_div_vec3_u32(abs(vec3<u32>(arg_0.b.x, 43835u, 0u)) & u_input.b.www, vec3<u32>(22111u, global2.b.x, ~(~56745u))), arg_0.c, Struct_2(_wgslsmith_div_i32(2147483647i, -arg_0.c.a), global2.d.c.x, select(!select(vec3<bool>(true, global2.d.c.x, false), arg_0.d.c, global2.d.c), vec3<bool>(func_2(Struct_3(global2.d.c, Struct_2(-1i, arg_0.d.b, vec3<bool>(arg_0.d.b, arg_0.d.b, global2.d.b)), vec2<f32>(257f, arg_0.e.x), 44724u, global0.wxw), u_input.c.x, 0u), false, all(arg_0.d.c.zy)), arg_0.d.c)), vec3<f32>(629f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-532f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1093f + _wgslsmith_f_op_f32(-1000f + global2.e.x)))));
    global3 = array<Struct_1, 4>();
    let var_1 = Struct_2(reverseBits(~_wgslsmith_dot_vec3_i32(max(vec3<i32>(-1i, -2147483647i, global0.x), global0.zzy), vec3<i32>(-5612i, 2147483647i, arg_1.a))), 56507u > _wgslsmith_mult_u32(u_input.c.x, abs(reverseBits(112181u))), arg_0.d.c);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.e.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_0.e.x)))));
    return _wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.c.a, var_1.a, _wgslsmith_mult_i32(arg_0.c.a, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.a, arg_1.a), ~(-1i), global2.c.a)), _wgslsmith_dot_vec2_i32(~(-global0.zz), -global0.xz)), vec4<i32>(_wgslsmith_mod_i32(0i, -1i), arg_1.a, 0i, arg_1.a));
}

fn func_1(arg_0: vec2<u32>) -> vec3<u32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x - global1.x))) * 1769f), _wgslsmith_f_op_f32(-1309f - global2.e.x))), global1.x, 935f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * global2.e.x) * 242f)))));
    global3 = array<Struct_1, 4>();
    global0 = func_4(Struct_4(u_input.c.yyz, ~(~vec3<u32>(0u, u_input.a, 32633u)), Struct_1(-1i), Struct_2(-23470i, func_2(Struct_3(global2.d.c, global2.d, vec2<f32>(-926f, 914f), u_input.a, vec3<i32>(global2.c.a, 2147483647i, global0.x)), firstLeadingBit(u_input.b.x), u_input.d ^ global2.a.x), select(global2.d.c, global2.d.c, true)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, 1007f)) - _wgslsmith_f_op_f32(-1118f * var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-524f, 690f)), -492f)), Struct_1(-global0.x));
    var var_1 = max((~vec3<u32>(1u, 4294967295u, 1u) ^ u_input.c.wyx) | firstTrailingBit(_wgslsmith_div_vec3_u32(vec3<u32>(1u, u_input.c.x, arg_0.x), vec3<u32>(53388u, global2.a.x, 32263u))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.b.x, global2.b.x, 42905u), vec3<u32>(23971u, 23608u, global2.b.x)), max(u_input.b.yyx, global2.b)), vec3<u32>(u_input.d, 0u, global2.a.x) >> (_wgslsmith_mult_vec3_u32(u_input.c.wxx, global2.a) % vec3<u32>(32u)))) | (max(countOneBits(reverseBits(vec3<u32>(27259u, global2.b.x, 4294967295u))), ~firstLeadingBit(vec3<u32>(global2.a.x, 24721u, 0u))) ^ _wgslsmith_sub_vec3_u32(~_wgslsmith_mod_vec3_u32(global2.a, vec3<u32>(arg_0.x, 51040u, u_input.b.x)), vec3<u32>(u_input.c.x, 1u, _wgslsmith_mod_u32(u_input.b.x, 24780u))));
    var var_2 = -_wgslsmith_mod_i32(global2.c.a, _wgslsmith_div_i32(-global2.c.a, i32(-1i) * -56199i) | ~(-global2.d.a));
    return ~global2.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~firstTrailingBit(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, global2.d.a, global2.c.a, global0.x)), select(vec4<i32>(-17850i, 1i, global0.x, global2.d.a), vec4<i32>(-32729i, global2.d.a, 12117i, 2147483647i), vec4<bool>(global2.d.c.x, global2.d.b, false, global2.d.c.x)), -vec4<i32>(global2.c.a, global0.x, 25476i, 0i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(global2.d.a, 0i, 60459i, global0.x) ^ vec4<i32>(global2.d.a, global0.x, global2.d.a, global0.x), _wgslsmith_sub_vec4_i32(vec4<i32>(-5089i, -2147483647i, -1i, -1i), vec4<i32>(-20265i, global2.c.a, -2147483647i, -1i))));
    global2 = Struct_4(global2.b, min(~func_1(vec2<u32>(6814u, 1u)), vec3<u32>(~0u, ~(~u_input.a), global2.a.x)), global2.c, global2.d, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)), global1.x)), -826f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))));
    let var_0 = global2.e.zy;
    let var_1 = (-select(vec2<i32>(-1i, 1077i), global0.ww, select(global2.d.c.xy, global2.d.c.zy, vec2<bool>(true, true))) << (vec2<u32>(~u_input.a, global2.b.x) % vec2<u32>(32u))) >> (~(~(~abs(u_input.c.wy))) % vec2<u32>(32u));
    let var_2 = select(select(!(!(!vec4<bool>(global2.d.b, global2.d.c.x, false, true))), vec4<bool>(global1.x < _wgslsmith_f_op_f32(global2.e.x + var_0.x), func_2(Struct_3(vec3<bool>(global2.d.b, true, global2.d.c.x), global2.d, global2.e.yz, 0u, vec3<i32>(var_1.x, 2147483647i, global2.d.a)), ~u_input.c.x, ~4294967295u), false, all(vec4<bool>(global2.d.b, true, global2.d.b, true))), vec4<bool>(any(!global2.d.c), true, !all(vec4<bool>(global2.d.c.x, false, global2.d.b, false)), any(global2.d.c.xz) && false)), select(select(select(!vec4<bool>(true, true, global2.d.c.x, global2.d.c.x), vec4<bool>(true, global2.d.b, false, false), select(vec4<bool>(true, global2.d.b, global2.d.b, false), vec4<bool>(true, global2.d.c.x, global2.d.b, false), global2.d.b)), vec4<bool>(global2.d.b == true, true, u_input.d < global2.a.x, true), select(vec4<bool>(true, global2.d.c.x, true, false), !vec4<bool>(global2.d.b, global2.d.b, global2.d.c.x, true), !vec4<bool>(global2.d.c.x, global2.d.b, true, true))), !vec4<bool>(true, true, global2.d.c.x, global2.d.b), select(select(select(vec4<bool>(global2.d.b, false, global2.d.c.x, false), vec4<bool>(true, global2.d.c.x, global2.d.b, global2.d.b), vec4<bool>(false, global2.d.b, global2.d.b, false)), vec4<bool>(true, true, true, global2.d.b), true), select(!vec4<bool>(global2.d.b, true, false, global2.d.c.x), select(vec4<bool>(global2.d.c.x, false, global2.d.c.x, false), vec4<bool>(global2.d.b, global2.d.b, global2.d.b, true), vec4<bool>(global2.d.b, global2.d.b, false, global2.d.c.x)), !vec4<bool>(true, true, true, global2.d.c.x)), vec4<bool>(true, true, func_2(Struct_3(vec3<bool>(true, global2.d.c.x, global2.d.c.x), Struct_2(-3985i, global2.d.c.x, global2.d.c), global2.e.xy, 45600u, global0.xxw), global2.a.x, global2.b.x), global2.d.c.x))), select(!select(!vec4<bool>(global2.d.b, false, true, true), select(vec4<bool>(global2.d.c.x, false, true, true), vec4<bool>(true, global2.d.b, global2.d.c.x, false), global2.d.c.x), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, global2.d.c.x, true), global2.d.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(global2.a.x, 4294967295u, global2.a.x, 37887u)), vec4<u32>(4294967295u, u_input.d, 61681u, 32492u) >> (u_input.b % vec4<u32>(32u)))), u_input.a), _wgslsmith_f_op_f32(select(1376f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1166f + 1055f)), (true | var_2.x) & !(!var_2.x))));
}

