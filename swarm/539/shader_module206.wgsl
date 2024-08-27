struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 30>;

var<private> global1: Struct_2;

var<private> global2: array<f32, 7> = array<f32, 7>(1411f, 1100f, -134f, -977f, -370f, -1233f, 472f);

var<private> global3: Struct_5;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4) -> vec2<u32> {
    global1 = Struct_2(firstLeadingBit(global1.a) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(1u, 25713u, arg_0.b, 1u), select(global3.b, global3.b, vec4<bool>(global3.a.x, global1.b.x, false, arg_0.a))) % vec4<u32>(32u)), global3.a);
    var var_0 = !any(!(!(!global1.b.xw)));
    global0 = array<Struct_4, 30>();
    var var_1 = Struct_5(!(!vec4<bool>(all(global3.a.xwy), !global1.b.x, !global3.a.x, all(global3.a.wyz))), ~(~_wgslsmith_sub_vec4_u32(global3.b, select(global3.b, global3.b, vec4<bool>(true, false, false, global1.b.x)))), ~(global1.a.zw >> (global3.b.yw % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.d.x, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], -1000f, -311f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(global3.d)))))));
    let var_2 = Struct_3(any(select(!vec3<bool>(false, global3.a.x, var_1.a.x), vec3<bool>(!global3.a.x, true, false), arg_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(var_1.d.xxz, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, var_1.d.x, global2[_wgslsmith_index_u32(arg_0.b, 7u)]) + vec3<f32>(var_1.d.x, global2[_wgslsmith_index_u32(0u, 7u)], var_1.d.x)), false)) - global3.d.wyw)));
    return vec2<u32>(u_input.a.x, ~u_input.a.x);
}

fn func_2(arg_0: f32) -> Struct_1 {
    var var_0 = max(vec2<i32>(global1.a.x, global3.c.x) >> (u_input.a % vec2<u32>(32u)), (_wgslsmith_add_vec2_i32(-global1.a.yz, abs(global3.c)) >> (vec2<u32>(global3.b.x, global3.b.x >> (u_input.a.x % 32u)) % vec2<u32>(32u))) << (vec2<u32>(~(u_input.a.x & u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(7889u, 63763u), reverseBits(vec2<u32>(13105u, 1u)))) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-466f, arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -832f) + global2[_wgslsmith_index_u32(~4294967295u, 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_0))))));
    var var_2 = ~u_input.a & func_3(global0[_wgslsmith_index_u32(global3.b.x, 30u)]);
    let var_3 = Struct_2(~_wgslsmith_mod_vec4_i32(-global1.a, _wgslsmith_mod_vec4_i32(abs(vec4<i32>(2147483647i, var_0.x, global1.a.x, -2147483647i)), vec4<i32>(global1.a.x, -1i, global3.c.x, 1i))), !global1.b);
    return Struct_1(true, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -289f, 261f, global2[_wgslsmith_index_u32(74423u, 7u)]) * vec4<f32>(142f, global2[_wgslsmith_index_u32(u_input.a.x, 7u)], 1583f, 1252f)))) - vec4<f32>(532f, _wgslsmith_f_op_f32(min(global3.d.x, 555f)), _wgslsmith_f_op_f32(105f - -716f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0, 972f, false)) * -145f))), all(select(vec4<bool>(global3.a.x, true, true, global3.c.x > var_0.x), !vec4<bool>(true, global3.a.x, false, var_3.b.x), 845f <= _wgslsmith_f_op_f32(-arg_0))), 0u, _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(var_1.x, global3.d.x, var_1.x), _wgslsmith_f_op_vec3_f32(-global3.d.zww))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_1, arg_3: bool) -> bool {
    let var_0 = select(arg_1, select(countOneBits(_wgslsmith_sub_u32(max(56414u, arg_2.d), arg_2.d)), _wgslsmith_clamp_u32(arg_2.d, 37167u, _wgslsmith_mult_u32(47711u | arg_1, arg_1)), all(global1.b.zy)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.d.x + 148f) - -1588f) - _wgslsmith_f_op_f32(f32(-1f) * -1176f))).a);
    var var_1 = ~(arg_2.d << (1u % 32u));
    let var_2 = -1541f;
    var var_3 = -arg_0.a.x;
    var var_4 = Struct_5(!arg_0.b, ~reverseBits(global3.b), vec2<i32>(arg_0.a.x, _wgslsmith_div_i32(global3.c.x, ~global1.a.x)) ^ arg_0.a.wy, _wgslsmith_f_op_vec4_f32(-vec4<f32>(func_2(_wgslsmith_f_op_f32(-396f * global2[_wgslsmith_index_u32(1u, 7u)])).e.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_2, 136f)), 1053f)), global2[_wgslsmith_index_u32(38945u, 7u)], func_2(global3.d.x).e.x)));
    return true;
}

fn func_1(arg_0: f32) -> vec4<bool> {
    global3 = Struct_5(select(vec4<bool>(true, func_4(Struct_2(global1.a, vec4<bool>(global3.a.x, false, global1.b.x, global1.b.x)), u_input.a.x >> (u_input.a.x % 32u), func_2(global2[_wgslsmith_index_u32(global3.b.x, 7u)]), global3.d.x >= global2[_wgslsmith_index_u32(0u, 7u)]), !(global3.d.x > global3.d.x), global3.a.x), select(global1.b, select(!vec4<bool>(global3.a.x, false, global1.b.x, true), vec4<bool>(true, global3.a.x, global1.b.x, false), true), !any(vec3<bool>(global1.b.x, false, false))), (global1.b.x || false) || true), max(_wgslsmith_clamp_vec4_u32(global3.b, _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(54674u, u_input.a.x, 1u, 0u), global3.b), global3.b), vec4<u32>(1u, 1u, _wgslsmith_sub_u32(global3.b.x, u_input.a.x), max(global3.b.x, u_input.a.x))), vec4<u32>(44645u, 1u, u_input.a.x, abs(global3.b.x)) & vec4<u32>(60293u, max(global3.b.x, global3.b.x), ~4294967295u, ~global3.b.x)), global1.a.yw, vec4<f32>(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(21250u, 20731u), _wgslsmith_div_u32(~47387u, ~global3.b.x), _wgslsmith_mod_u32(abs(19521u), 40386u)), 7u)], _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(global3.b.x, 7u)], 1968f))), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~u_input.a.x, 7u)]))), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(~(~global3.b.x), 7u)] - -292f), _wgslsmith_f_op_f32(trunc(-386f))));
    return vec4<bool>(true, true, global3.a.x, all(!(!global1.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<f32, 7>();
    global1 = Struct_2(abs(abs(vec4<i32>(_wgslsmith_div_i32(0i, 1i), _wgslsmith_div_i32(global1.a.x, 2147483647i), _wgslsmith_sub_i32(global1.a.x, -1i), -54462i ^ global1.a.x))), func_1(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(~_wgslsmith_sub_u32(global3.b.x, global3.b.x), 7u)]))));
    global0 = array<Struct_4, 30>();
    let var_0 = Struct_3(global1.b.x, _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-2519f, 930f, global2[_wgslsmith_index_u32(u_input.a.x, 7u)]), _wgslsmith_f_op_vec3_f32(-global3.d.zzy)), func_2(global3.d.x).b.ywz));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(i32(-1i) * -28676i, -18476i), 1u, ~global1.a << (~global3.b % vec4<u32>(32u)));
}

