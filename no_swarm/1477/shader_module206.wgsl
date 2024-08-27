struct Struct_1 {
    a: u32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec3<u32>(1u, 43673u, 60592u));

var<private> global1: array<f32, 4> = array<f32, 4>(-667f, 1004f, 2480f, -1000f);

var<private> global2: Struct_2 = Struct_2(1u);

var<private> global3: array<i32, 28> = array<i32, 28>(i32(-2147483648), 9298i, -1i, -28414i, -1i, -56154i, i32(-2147483648), 0i, -15902i, i32(-2147483648), 34618i, 1i, 6080i, 23814i, -1i, -60551i, -1i, 7030i, 11509i, 1i, 0i, -23735i, 0i, 10677i, 0i, 26388i, -1i, 79513i);

var<private> global4: i32 = 19648i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2(arg_0: i32, arg_1: vec4<bool>, arg_2: f32) -> Struct_2 {
    var var_0 = u_input.c;
    let var_1 = vec2<bool>(true, arg_1.x);
    global4 = ~u_input.a.x;
    let var_2 = Struct_2(global2.a);
    var var_3 = -285f;
    return var_2;
}

fn func_3(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    global2 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u, 36160u) << (~u_input.d.x % 32u), arg_0), global0.b.xx));
    var var_0 = !(!any(vec4<bool>(any(vec4<bool>(true, false, true, false)), true, select(true, true, false), true)));
    global4 = global3[_wgslsmith_index_u32(firstTrailingBit(~(~(~14663u) | u_input.d.x)), 28u)];
    global0 = Struct_1(global2.a, ~u_input.d);
    let var_1 = Struct_1(arg_0, global0.b);
    return Struct_1(_wgslsmith_mult_u32(_wgslsmith_div_u32(func_2(_wgslsmith_mod_i32(2147483647i, u_input.c), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), true), _wgslsmith_f_op_f32(-arg_1.x)).a, 0u), 329u), ~(~(var_1.b << (select(u_input.d, vec3<u32>(u_input.d.x, u_input.b.x, 18979u), true) % vec3<u32>(32u)))));
}

fn func_1(arg_0: f32) -> vec4<bool> {
    var var_0 = func_3(~(~_wgslsmith_sub_u32(2973u, abs(0u))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(201f, global1[_wgslsmith_index_u32(90719u, 4u)])))))), func_2(_wgslsmith_add_i32(_wgslsmith_mod_i32(2147483647i, u_input.a.x) | (i32(-1i) * -1i), i32(-1i) * -global3[_wgslsmith_index_u32(0u, 28u)]), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false)), arg_0));
    global2 = Struct_2(~u_input.b.x);
    let var_1 = Struct_2(u_input.b.x);
    let var_2 = abs(abs(_wgslsmith_mod_vec3_u32(global0.b, _wgslsmith_mult_vec3_u32(min(vec3<u32>(38799u, 1u, 75281u), vec3<u32>(0u, u_input.d.x, 85196u)), vec3<u32>(u_input.b.x, 4294967295u, global0.a)))));
    var var_3 = 0u;
    return select(vec4<bool>(false, !(global3[_wgslsmith_index_u32(u_input.b.x << (17910u % 32u), 28u)] > -global3[_wgslsmith_index_u32(22097u, 28u)]), true, any(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), true), vec4<bool>(false, false, true, true), true))), vec4<bool>(true, true, true, true), any(select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, true))), select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global0 = Struct_1(39153u, global0.b);
    var_0 = false;
    var_0 = any(select(select(func_1(-415f), vec4<bool>(any(vec2<bool>(false, false)), true, true, true), _wgslsmith_f_op_f32(1388f + 743f) >= _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.b.x, 4u)])), select(select(func_1(global1[_wgslsmith_index_u32(global2.a, 4u)]), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, true, true, true)), vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 4u)] <= global1[_wgslsmith_index_u32(global2.a, 4u)], true, all(vec4<bool>(false, false, false, false))), true), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true)), !select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), false), vec4<bool>(any(vec3<bool>(true, false, false)), true, all(vec2<bool>(false, true)), true))));
    var_0 = true;
    global0 = Struct_1(_wgslsmith_mult_u32(18332u, abs(_wgslsmith_mult_u32(_wgslsmith_mult_u32(8008u, global0.b.x), _wgslsmith_dot_vec2_u32(vec2<u32>(14061u, 0u), vec2<u32>(u_input.d.x, u_input.b.x))))), ~u_input.d);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec4<i32>(-1i) * -vec4<i32>(u_input.c, global3[_wgslsmith_index_u32(u_input.b.x, 28u)], 6357i, 38952i)) | (min(vec4<i32>(1i, u_input.c, u_input.c, global3[_wgslsmith_index_u32(0u, 28u)]) | vec4<i32>(-4968i, global3[_wgslsmith_index_u32(1u, 28u)], u_input.a.x, 1i), vec4<i32>(2147483647i, -2147483647i, 1i, -2147483647i) >> (vec4<u32>(global2.a, 1u, 4294967295u, 4294967295u) % vec4<u32>(32u))) | _wgslsmith_add_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(global3[_wgslsmith_index_u32(0u, 28u)], global3[_wgslsmith_index_u32(4294967295u, 28u)], -4651i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, -3926i, -39520i), vec4<i32>(global3[_wgslsmith_index_u32(98216u, 28u)], u_input.c, global3[_wgslsmith_index_u32(47534u, 28u)], u_input.a.x)), vec4<i32>(-7424i, global3[_wgslsmith_index_u32(global2.a, 28u)], 1i, 1i) & vec4<i32>(17372i, global3[_wgslsmith_index_u32(global0.b.x, 28u)], global3[_wgslsmith_index_u32(1u, 28u)], global3[_wgslsmith_index_u32(global0.a, 28u)]))), _wgslsmith_div_vec3_u32((vec3<u32>(global0.b.x, 4294967295u, global0.a) ^ ~vec3<u32>(4294967295u, global2.a, u_input.b.x)) >> (u_input.d % vec3<u32>(32u)), ~(~(vec3<u32>(global0.b.x, global0.a, 89998u) << (vec3<u32>(u_input.b.x, global2.a, 2339u) % vec3<u32>(32u))))), -2147483647i, -abs(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, u_input.d.x, global2.a, global0.a) & vec4<u32>(4294967295u, global2.a, 4294967295u, 4294967295u), ~vec4<u32>(global2.a, u_input.d.x, 53934u, 59256u)), 28u)]));
}

