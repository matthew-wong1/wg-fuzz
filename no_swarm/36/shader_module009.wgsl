struct Struct_1 {
    a: f32,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec3<bool>,
    d: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: i32,
    b: vec2<i32>,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec3<f32>(-1146f, 834f, -193f), Struct_1(-921f, -789f, vec3<f32>(374f, 503f, -171f)), vec3<bool>(true, false, true), vec2<i32>(-2514i, -49673i));

var<private> global1: vec3<bool>;

var<private> global2: vec3<f32>;

var<private> global3: Struct_3 = Struct_3(Struct_1(821f, 210f, vec3<f32>(-1000f, 919f, -1108f)), Struct_1(-216f, -1155f, vec3<f32>(-402f, 1185f, -1674f)), 45606u);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32) -> vec4<f32> {
    global2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(global0.b.c, _wgslsmith_f_op_vec3_f32(global0.b.c + vec3<f32>(global0.a.x, global0.b.b, global3.a.c.x))))));
    global2 = global3.a.c;
    global0 = Struct_2(vec3<f32>(317f, _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2028f), _wgslsmith_f_op_f32(abs(arg_0))))), 905f), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-657f + _wgslsmith_f_op_f32(max(global0.a.x, 143f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, global0.b.a))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.a * global0.a.x), arg_0))), global3.a.c), global0.c, firstTrailingBit(firstLeadingBit(vec2<i32>(1i, _wgslsmith_add_i32(12563i, global0.d.x)))));
    return vec4<f32>(-284f, _wgslsmith_f_op_f32(min(-237f, _wgslsmith_div_f32(-392f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1354f, global3.b.b)))))), _wgslsmith_f_op_f32(f32(-1f) * -504f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1208f + 1000f) - _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(-1f)), 1259f, global0.c.x)));
}

fn func_2(arg_0: Struct_4) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.b + -1102f)))), 1f, -846f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(631f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-929f * global3.b.c.x)))) + _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global0.b.b - -1619f), -1036f, global3.a.a, _wgslsmith_f_op_f32(global2.x + global2.x)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.b, global0.b.c.x, -808f, 1027f)), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1591f, global0.a.x, global0.a.x, -137f))))), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.a.b))))))));
    var var_1 = abs(~((u_input.c.x >> (~arg_0.a % 32u)) | ~1u));
    var var_2 = global1.x;
    var var_3 = Struct_5(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), ~u_input.a.yw) & u_input.b, max(_wgslsmith_mod_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(global0.d, global0.d), _wgslsmith_sub_i32(global0.d.x, 2147483647i)), reverseBits(min(vec2<i32>(0i, 1723i), vec2<i32>(0i, global0.d.x)))), (_wgslsmith_clamp_vec2_i32(global0.d, vec2<i32>(5023i, 14213i), global0.d) << (vec2<u32>(0u, 0u) % vec2<u32>(32u))) << (abs(_wgslsmith_add_vec2_u32(u_input.c, u_input.c)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(1398f - global3.b.c.x))))), global3.a);
    var var_4 = ~u_input.a.zw;
    return -2147483647i;
}

fn func_4(arg_0: i32, arg_1: vec3<bool>) -> Struct_4 {
    global3 = Struct_3(Struct_1(global0.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(661f + -507f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global0.b.c)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1185f, global0.a.x, -672f), vec3<f32>(1668f, global3.b.c.x, global0.a.x)))))), global3.a, _wgslsmith_add_u32(u_input.c.x, 3345u));
    let var_0 = -1000f;
    var var_1 = arg_1.x;
    let var_2 = u_input.a.xzz;
    let var_3 = Struct_1(global3.a.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1054f) * _wgslsmith_f_op_f32(828f - -1000f)))), _wgslsmith_f_op_vec3_f32(-global3.b.c));
    return Struct_4(4294967295u);
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_3) -> f32 {
    var var_0 = _wgslsmith_mod_i32(global0.d.x, ~(firstTrailingBit(-1i) >> (1u % 32u))) << (global3.c % 32u);
    var var_1 = func_4(func_2(Struct_4(26066u)), vec3<bool>(!(global0.c.x || true), any(vec3<bool>(!global1.x, arg_3.a.c.x != global0.b.c.x, !global0.c.x)), !(_wgslsmith_mod_i32(u_input.a.x, 0i) < _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 14844i, global0.d.x), vec3<i32>(global0.d.x, u_input.b, -12553i)))));
    var var_2 = arg_2;
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-1421f, -469f, global1.x)), -1215f, -352f)) + vec3<f32>(_wgslsmith_div_f32(-945f, _wgslsmith_f_op_f32(step(global0.a.x, -988f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1020f + global2.x) * _wgslsmith_f_op_f32(step(global0.b.b, 542f))), arg_0.x)), global3.b, !(!(!global0.c)), ~(~global0.d & u_input.a.xy));
    var_2 = func_4(global0.d.x, !vec3<bool>(-26102i >= global0.d.x, global1.x, all(!global0.c)));
    return -439f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(_wgslsmith_clamp_u32(0u << (global3.c % 32u), ~u_input.c.x >> (_wgslsmith_clamp_u32(37657u, global3.c, 1121u) % 32u), firstLeadingBit(4294967295u & global3.c)) & ~max(u_input.c.x, 1u << (0u % 32u)));
    global2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.x * global3.b.b) + _wgslsmith_f_op_f32(func_1(vec2<f32>(global2.x, global0.b.a), u_input.c.x, Struct_4(1u), Struct_3(global0.b, Struct_1(-390f, global3.a.b, global0.b.c), 11545u)))))) - -1000f), global2.x);
    var var_1 = global2.x;
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(global3.b.c))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global3.a.c)))));
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(358f, global0.a.x, global2.x), vec3<f32>(2239f, -1158f, 597f)))), global0.a) + vec3<f32>(_wgslsmith_f_op_f32(-266f - _wgslsmith_f_op_f32(f32(-1f) * -490f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.c.x * -1000f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global2.x))))) + global3.a.c);
    global1 = vec3<bool>(global0.c.x, !global1.x, global1.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-global0.a.x), ~select(u_input.a, ~max(u_input.a, u_input.a), select(vec4<bool>(global0.c.x, true, global1.x, false), !vec4<bool>(true, global1.x, false, global1.x), false | global0.c.x)), -(~_wgslsmith_div_vec4_i32(vec4<i32>(8399i, global0.d.x, u_input.b, 0i), vec4<i32>(1i, global0.d.x, -4692i, -46986i)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 4294967295u), min(vec4<u32>(4294967295u, 4294967295u, 0u, global3.c), vec4<u32>(global3.c, global3.c, 0u, global3.c))) % vec4<u32>(32u))), _wgslsmith_mod_vec3_u32(reverseBits(~vec3<u32>(u_input.c.x, 0u, u_input.c.x) | vec3<u32>(4294967295u, global3.c, global3.c)), firstLeadingBit(min(vec3<u32>(global3.c, 27802u, global3.c), vec3<u32>(u_input.c.x, 5350u, u_input.c.x)))), vec3<u32>(_wgslsmith_dot_vec2_u32(abs(~vec2<u32>(10072u, global3.c)), ~u_input.c), ~34212u, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(u_input.c << (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u)), firstTrailingBit(vec2<u32>(global3.c, 4294967295u))), ~(~1u))));
}

