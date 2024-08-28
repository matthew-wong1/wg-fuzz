struct Struct_1 {
    a: f32,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 17> = array<u32, 17>(15964u, 0u, 1u, 1u, 30839u, 1u, 1u, 34679u, 0u, 0u, 0u, 68854u, 0u, 0u, 0u, 0u, 52130u);

var<private> global1: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(1018f, 0u), Struct_1(1051f, 0u), Struct_1(1199f, 29535u), Struct_1(-2000f, 4294967295u), Struct_1(1334f, 18133u));

var<private> global2: vec3<u32>;

var<private> global3: Struct_1;

var<private> global4: vec2<i32> = vec2<i32>(12065i, 1i);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: Struct_1) -> Struct_1 {
    global3 = arg_0;
    var var_0 = firstLeadingBit(arg_2.x);
    var var_1 = global1[_wgslsmith_index_u32(abs(global2.x), 5u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a * 250f), _wgslsmith_f_op_f32(min(-1761f, var_1.a))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1795f, arg_0.a)))))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_mult_u32(abs(arg_0.b >> (global3.b % 32u)), arg_2.x));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> vec3<u32> {
    var var_0 = global2.zz | global2.yx;
    let var_1 = ~reverseBits(u_input.a.x);
    let var_2 = !(!(2147483647i < max(u_input.c.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-24987i, -2147483647i), vec2<i32>(u_input.c.x, 2147483647i)))));
    var var_3 = 4294967295u;
    var_3 = ~firstLeadingBit(u_input.a.x);
    return ~(~(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, u_input.a.x, arg_2.b), u_input.a.wzy))));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(func_1(Struct_1(-380f, 0u), func_1(Struct_1(-569f, global3.b), arg_0, vec4<u32>(global0[_wgslsmith_index_u32(81968u, 17u)], global0[_wgslsmith_index_u32(0u, 17u)], 22492u, 76093u), Struct_1(arg_0.a, arg_1.x)), vec4<u32>(global2.x, 9072u, 4294967295u, global2.x), func_1(arg_0, Struct_1(1301f, global0[_wgslsmith_index_u32(67021u, 17u)]), u_input.a, arg_0)).a)) + _wgslsmith_f_op_f32(f32(-1f) * -233f)), global0[_wgslsmith_index_u32(~global3.b, 17u)]);
    var var_1 = vec4<u32>(select(arg_1.x, ~(~_wgslsmith_mult_u32(arg_1.x, 1u)), true), 1u, ~(~global2.x), global2.x << (6076u % 32u));
    global2 = firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, firstLeadingBit(_wgslsmith_dot_vec2_u32(var_1.yx, var_1.xx)), _wgslsmith_clamp_u32(11557u, u_input.a.x, 4294967295u) | (var_1.x & global3.b)), ~(~u_input.a.wwy)));
    var var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.a, 256f), 1000f))), 149f), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1530f - -1160f)), _wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(f32(-1f) * -1666f))), -1406f), !select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(true, true), false), select(select(vec2<bool>(false, false), vec2<bool>(true, true), false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), any(vec4<bool>(false, true, true, true))))));
    let var_3 = firstTrailingBit(~vec3<u32>(arg_1.x, 74386u << (u_input.a.x % 32u), min(select(1u, arg_0.b, false), var_1.x)));
    return var_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -2147483647i;
    global2 = _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(u_input.a.wyz, func_2(vec4<f32>(-3076f, 275f, -1744f, -244f), Struct_1(-1120f, global2.x), func_1(Struct_1(-164f, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 17u)], 17u)]), global1[_wgslsmith_index_u32(0u, 5u)], vec4<u32>(u_input.a.x, 0u, 34703u, 0u), Struct_1(118f, 24802u)), global4.x & global4.x)) >> (u_input.a.xyz % vec3<u32>(32u)), ~(u_input.a.xxz | _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(global2.x, global0[_wgslsmith_index_u32(60408u, 17u)], 1u), vec3<u32>(16711u, global2.x, 35894u)), min(u_input.a.xyy, vec3<u32>(0u, global0[_wgslsmith_index_u32(global2.x, 17u)], global3.b)))));
    var_0 = global4.x;
    let var_1 = vec4<i32>(u_input.b, -21916i, ~global4.x, 59799i);
    var var_2 = false;
    var var_3 = ~var_1.x;
    global0 = array<u32, 17>();
    var var_4 = _wgslsmith_div_vec3_f32(vec3<f32>(func_1(Struct_1(_wgslsmith_f_op_f32(-global3.a), func_3(Struct_1(610f, 4294967295u), vec2<u32>(1654u, global2.x))), Struct_1(_wgslsmith_f_op_f32(global3.a - global3.a), ~55687u), firstLeadingBit(vec4<u32>(49252u, u_input.a.x, 1u, global0[_wgslsmith_index_u32(10694u, 17u)])) >> (vec4<u32>(0u, 1u, global3.b, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2.x, 17u)], 17u)]) % vec4<u32>(32u)), global1[_wgslsmith_index_u32(~global3.b | global3.b, 5u)]).a, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.a))), _wgslsmith_f_op_f32(global3.a + _wgslsmith_f_op_f32(min(global3.a, 1000f))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global3.a + global3.a)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a) * -1220f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-377f * global3.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, _wgslsmith_dot_vec4_i32(var_1, _wgslsmith_mult_vec4_i32(var_1, vec4<i32>(1i, _wgslsmith_add_i32(21645i, var_1.x), u_input.c.x, 40801i))));
}

