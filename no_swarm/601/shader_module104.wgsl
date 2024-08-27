struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: Struct_2,
    c: Struct_2,
    d: vec2<i32>,
    e: Struct_3,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_4,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 23> = array<vec4<u32>, 23>(vec4<u32>(68311u, 0u, 1u, 5281u), vec4<u32>(1u, 1u, 1u, 5095u), vec4<u32>(11474u, 16445u, 4294967295u, 24009u), vec4<u32>(43865u, 2499u, 0u, 18266u), vec4<u32>(4294967295u, 47907u, 0u, 18201u), vec4<u32>(5957u, 0u, 4294967295u, 56497u), vec4<u32>(23432u, 66971u, 1u, 4294967295u), vec4<u32>(42312u, 25888u, 13501u, 11422u), vec4<u32>(95682u, 4294967295u, 1u, 1u), vec4<u32>(14269u, 39768u, 47916u, 4294967295u), vec4<u32>(0u, 73994u, 40739u, 1u), vec4<u32>(4294967295u, 36497u, 1u, 23500u), vec4<u32>(28779u, 43783u, 4294967295u, 1u), vec4<u32>(46472u, 0u, 60912u, 20558u), vec4<u32>(0u, 56119u, 78044u, 1u), vec4<u32>(11462u, 0u, 4294967295u, 14369u), vec4<u32>(0u, 1u, 4179u, 1u), vec4<u32>(25241u, 0u, 0u, 1u), vec4<u32>(0u, 4294967295u, 9222u, 12995u), vec4<u32>(1u, 60175u, 103187u, 1u), vec4<u32>(0u, 5453u, 30986u, 21490u), vec4<u32>(4294967295u, 4294967295u, 6581u, 26629u), vec4<u32>(3013u, 1u, 22813u, 4294967295u));

var<private> global1: vec2<i32>;

var<private> global2: array<i32, 23>;

var<private> global3: f32 = -248f;

var<private> global4: i32 = 20546i;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_5) -> bool {
    var var_0 = 4294967295u << (~min(~arg_3.e.a.x ^ 1u, _wgslsmith_clamp_u32(u_input.b.x, 0u, firstTrailingBit(65042u))) % 32u);
    let var_1 = vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) - arg_0.x)), _wgslsmith_f_op_f32(trunc(2390f)), arg_2);
    var var_2 = Struct_4(u_input.b.x, arg_3.c.b, arg_3.c.b, -vec2<i32>(14828i, ~abs(-2147483647i)), Struct_3(select(true, any(vec3<bool>(arg_3.c.b.a.x, true, false)), any(arg_3.c.c.a)), arg_3.c.c.b));
    return u_input.b.x <= 1u;
}

fn func_2(arg_0: f32) -> Struct_5 {
    var var_0 = Struct_3(all(select(vec2<bool>(true, true), vec2<bool>(true, 8146i < global1.x), !select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)))), Struct_1(select(vec2<u32>(0u, u_input.b.x), ~u_input.b, false) ^ vec2<u32>(21427u, 4294967295u)));
    global0 = array<vec4<u32>, 23>();
    var_0 = Struct_3((var_0.a | func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(156f, 263f, -479f)), select(vec3<bool>(true, var_0.a, false), vec3<bool>(true, true, true), vec3<bool>(false, var_0.a, true)), _wgslsmith_f_op_f32(-arg_0), Struct_5(u_input.a, vec3<i32>(-2147483647i, global2[_wgslsmith_index_u32(u_input.b.x, 23u)], global2[_wgslsmith_index_u32(var_0.b.a.x, 23u)]), Struct_4(6906u, Struct_2(vec4<bool>(var_0.a, var_0.a, false, true), var_0.b, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), Struct_2(vec4<bool>(false, true, var_0.a, true), var_0.b, global0[_wgslsmith_index_u32(u_input.b.x, 23u)]), vec2<i32>(u_input.a.x, 0i), Struct_3(true, Struct_1(vec2<u32>(42886u, 172773u)))), Struct_3(true, Struct_1(var_0.b.a)), var_0.b))) && ((max(global2[_wgslsmith_index_u32(u_input.b.x, 23u)], u_input.a.x) != -u_input.a.x) && true), Struct_1(vec2<u32>(~(~4294967295u), ~0u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, arg_0, -1242f)))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(-var_1.x)), 604f) - _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(step(arg_0, -676f)), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(361f - var_1.x), _wgslsmith_f_op_f32(-284f + 891f))))));
    return Struct_5(vec2<i32>(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(-36790i, -global2[_wgslsmith_index_u32(36605u, 23u)]), u_input.a)), ~vec3<i32>(2147483647i, max(35601i, u_input.a.x) ^ -32514i, 1i), Struct_4(1u, Struct_2(vec4<bool>(any(vec3<bool>(true, var_0.a, var_0.a)), true, false & var_0.a, !var_0.a), var_0.b, ~(global0[_wgslsmith_index_u32(1u, 23u)] | vec4<u32>(var_0.b.a.x, 1u, 101862u, 40471u))), Struct_2(vec4<bool>(var_1.x == 778f, u_input.b.x <= u_input.b.x, var_0.a, true), Struct_1(select(var_0.b.a, u_input.b, true)), ~vec4<u32>(4294967295u, 60504u, 4294967295u, var_0.b.a.x) & vec4<u32>(0u, u_input.b.x, 0u, u_input.b.x)), min(-abs(u_input.a), _wgslsmith_mult_vec2_i32(~u_input.a, firstLeadingBit(u_input.a))), Struct_3(true | !var_0.a, var_0.b)), Struct_3(var_0.a, var_0.b), Struct_1(vec2<u32>(4294967295u, ~firstTrailingBit(u_input.b.x))));
}

fn func_1(arg_0: f32) -> u32 {
    let var_0 = ~(~4294967295u);
    let var_1 = func_2(-2695f);
    var var_2 = all(select(func_2(arg_0).c.c.a, !select(select(var_1.c.b.a, vec4<bool>(var_1.d.a, var_1.d.a, true, var_1.c.b.a.x), false), var_1.c.c.a, any(var_1.c.c.a.yy)), var_1.c.c.a.x));
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(715f * 2264f))))));
    var var_2 = u_input.a >> (vec2<u32>(u_input.b.x >> (u_input.b.x % 32u), _wgslsmith_add_u32(func_1(655f) | _wgslsmith_add_u32(u_input.b.x, 0u), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, u_input.b.x)), firstLeadingBit(u_input.b)))) % vec2<u32>(32u));
    let var_3 = 1000f;
    global1 = ~_wgslsmith_mult_vec2_i32(vec2<i32>(16856i, var_2.x), u_input.a & _wgslsmith_add_vec2_i32(u_input.a, u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(1u, 0u, u_input.b.x), abs(u_input.b), var_3, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(171f, var_3)), -2089f) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -983f), _wgslsmith_f_op_f32(abs(var_3))))), _wgslsmith_sub_u32((u_input.b.x & 66778u) ^ (69456u | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x), vec3<u32>(u_input.b.x, 8685u, u_input.b.x))), _wgslsmith_dot_vec3_u32((vec3<u32>(u_input.b.x, 0u, u_input.b.x) >> (vec3<u32>(58461u, u_input.b.x, 29876u) % vec3<u32>(32u))) & (vec3<u32>(32843u, 14321u, u_input.b.x) & vec3<u32>(0u, u_input.b.x, u_input.b.x)), _wgslsmith_clamp_vec3_u32(~vec3<u32>(4294967295u, u_input.b.x, u_input.b.x), min(vec3<u32>(u_input.b.x, 14579u, u_input.b.x), vec3<u32>(4294967295u, 39436u, 28751u)), vec3<u32>(u_input.b.x, 4294967295u, 0u)))));
}

