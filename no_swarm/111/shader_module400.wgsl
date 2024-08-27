struct Struct_1 {
    a: vec2<bool>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec4<i32>,
    c: u32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: Struct_2,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec2<i32>, 25> = array<vec2<i32>, 25>(vec2<i32>(2147483647i, 2147483647i), vec2<i32>(-11381i, 1i), vec2<i32>(24676i, 0i), vec2<i32>(-1231i, 2147483647i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-15116i, 0i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-58129i, -1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, 2147483647i), vec2<i32>(0i, -28366i), vec2<i32>(i32(-2147483648), -2465i), vec2<i32>(16693i, 3309i), vec2<i32>(-1820i, 1i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-2775i, -1i), vec2<i32>(62161i, 0i), vec2<i32>(17705i, 2147483647i), vec2<i32>(i32(-2147483648), 1i), vec2<i32>(28124i, 31002i), vec2<i32>(i32(-2147483648), -1i), vec2<i32>(-10932i, 5594i), vec2<i32>(0i, 1i), vec2<i32>(2147483647i, -19334i), vec2<i32>(-28128i, 1i));

var<private> global2: array<vec3<bool>, 2> = array<vec3<bool>, 2>(vec3<bool>(false, true, true), vec3<bool>(true, false, false));

var<private> global3: Struct_3;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec2<bool> {
    global3 = Struct_3(global3.a, global3.b ^ vec4<i32>(u_input.a.x >> (max(4294967295u, 1u) % 32u), 1i, abs(55440i), u_input.c), max(firstTrailingBit(u_input.b.x), _wgslsmith_div_u32(4294967295u, 4294967295u)));
    global2 = array<vec3<bool>, 2>();
    let var_0 = global3.b.x;
    let var_1 = -global3.b.yy;
    return select(select(select(select(select(vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, true), select(false, false, true)), !select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(true, false), vec2<bool>(false, true), true)), vec2<bool>(true, true), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(_wgslsmith_f_op_f32(global3.a.x - global3.a.x) < _wgslsmith_f_op_f32(-global3.a.x), false), any(select(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3.c, 31972u), 2u)], select(global2[_wgslsmith_index_u32(global3.c, 2u)], global2[_wgslsmith_index_u32(u_input.b.x, 2u)], false), select(vec3<bool>(true, false, true), global2[_wgslsmith_index_u32(global3.c, 2u)], false)))), any(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, false), true, true, all(vec4<bool>(false, true, true, false))), select(true, false, all(vec4<bool>(true, true, true, true))))));
}

fn func_2() -> u32 {
    let var_0 = any(!select(vec2<bool>(global3.c < 34205u, all(global2[_wgslsmith_index_u32(u_input.b.x, 2u)])), !func_3(), !select(vec2<bool>(true, false), vec2<bool>(true, true), false)));
    let var_1 = select(vec3<u32>(global3.c, _wgslsmith_add_u32(firstTrailingBit(abs(38987u)), max(~0u, u_input.b.x)), global3.c), select(min(~vec3<u32>(global3.c, global3.c, 4294967295u) ^ (vec3<u32>(global3.c, 4294967295u, u_input.b.x) >> (vec3<u32>(31026u, 18250u, u_input.b.x) % vec3<u32>(32u))), vec3<u32>(u_input.b.x ^ global3.c, u_input.b.x, firstTrailingBit(u_input.b.x))), firstLeadingBit(_wgslsmith_add_vec3_u32(~vec3<u32>(global3.c, 0u, 86046u), ~vec3<u32>(global3.c, u_input.b.x, 1451u))), vec3<bool>(!var_0, select(true, true, false), global3.a.x <= -1000f)), !(!select(vec3<bool>(true, var_0, var_0), select(global2[_wgslsmith_index_u32(global3.c, 2u)], vec3<bool>(var_0, false, var_0), vec3<bool>(true, var_0, true)), var_0)));
    return ~(~(~u_input.b.x)) | _wgslsmith_mult_u32(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, var_1.x, var_1.x), var_1)), 111643u & firstTrailingBit(53526u));
}

fn func_1(arg_0: i32) -> vec3<u32> {
    let var_0 = -u_input.a;
    let var_1 = true;
    return vec3<u32>(~_wgslsmith_add_u32(max(50718u | global3.c, ~94802u), func_2()), 4294967295u, _wgslsmith_add_u32(global3.c, 1u));
}

fn func_4(arg_0: vec3<u32>) -> Struct_1 {
    global1 = array<vec2<i32>, 25>();
    global0 = _wgslsmith_div_u32(0u, firstLeadingBit(global3.c));
    global3 = Struct_3(global3.a, -select(global3.b, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a.x, 39472i, global3.b.x, -54448i), global3.b), !select(false, true, false)), global3.c);
    global3 = Struct_3(global3.a, vec4<i32>(abs(firstLeadingBit(1i)), 0i, ~36200i, 1i), _wgslsmith_mod_u32(~(~u_input.b.x), arg_0.x ^ _wgslsmith_sub_u32(37778u, 0u)));
    global0 = u_input.b.x;
    return Struct_1(select(vec2<bool>(true, true), !vec2<bool>(true, any(vec2<bool>(false, false))), !any(select(global2[_wgslsmith_index_u32(arg_0.x, 2u)], global2[_wgslsmith_index_u32(global3.c, 2u)], true))), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<bool>, 2>();
    let var_0 = func_4(~func_1(~global3.b.x) >> (~vec3<u32>(0u, 72968u, ~25118u) % vec3<u32>(32u)));
    var var_1 = !(!(!vec3<bool>(true, true, all(vec2<bool>(true, var_0.a.x)))));
    let var_2 = u_input.c;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.a.x, global3.a.x)), 917f) - global3.a.x);
    global2 = array<vec3<bool>, 2>();
    let var_4 = Struct_1(var_1.xz, true);
    var var_5 = ~_wgslsmith_div_vec4_u32(max(firstTrailingBit(vec4<u32>(4294967295u, 4294967295u, u_input.b.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 4294967295u, global3.c, 47849u), vec4<u32>(4294967295u, 48999u, u_input.b.x, 4294967295u)) >> (vec4<u32>(8393u, u_input.b.x, 4294967295u, global3.c) % vec4<u32>(32u))), max(vec4<u32>(~u_input.b.x, 21909u, global3.c, 90005u), vec4<u32>(abs(0u), 1u, _wgslsmith_clamp_u32(0u, 20451u, 4294967295u), firstTrailingBit(u_input.b.x))));
    var_1 = !vec3<bool>(var_4.b & var_1.x, ((var_2 | u_input.c) >= ~var_2) | var_4.b, true);
    let x = u_input.a;
    s_output = StorageBuffer(-4226i);
}

