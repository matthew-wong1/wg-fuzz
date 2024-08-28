struct Struct_1 {
    a: f32,
    b: f32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<bool, 23>;

var<private> global2: array<vec2<u32>, 25> = array<vec2<u32>, 25>(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(23553u, 50292u), vec2<u32>(51737u, 4294967295u), vec2<u32>(10365u, 1u), vec2<u32>(4294967295u, 1u), vec2<u32>(0u, 18999u), vec2<u32>(3463u, 52119u), vec2<u32>(53299u, 1u), vec2<u32>(54812u, 28489u), vec2<u32>(0u, 36732u), vec2<u32>(7079u, 32298u), vec2<u32>(1u, 111511u), vec2<u32>(59186u, 1u), vec2<u32>(33927u, 20428u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 16124u), vec2<u32>(43862u, 57511u), vec2<u32>(0u, 4294967295u), vec2<u32>(75571u, 60728u), vec2<u32>(7361u, 4294967295u), vec2<u32>(10184u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(125063u, 85450u), vec2<u32>(1u, 0u), vec2<u32>(1125u, 6889u));

var<private> global3: vec2<i32> = vec2<i32>(-18619i, 9309i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2() -> bool {
    global2 = array<vec2<u32>, 25>();
    global2 = array<vec2<u32>, 25>();
    global3 = -u_input.a;
    global1 = array<bool, 23>();
    var var_0 = Struct_1(global0.x, -743f);
    return global1[_wgslsmith_index_u32(~abs(42121u), 23u)];
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: bool) -> Struct_2 {
    global3 = vec2<i32>(arg_2 | (-1i >> (_wgslsmith_dot_vec3_u32(select(u_input.e, vec3<u32>(28835u, u_input.c.x, 26977u), global1[_wgslsmith_index_u32(1u, 23u)]), firstLeadingBit(vec3<u32>(14586u, 15699u, 117238u))) % 32u)), _wgslsmith_mod_i32(1i, arg_2));
    var var_0 = Struct_1(global0.x, _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.x - -1000f), _wgslsmith_f_op_f32(-1839f + 1000f))))));
    global1 = array<bool, 23>();
    var var_1 = _wgslsmith_dot_vec2_i32(~(~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.x, arg_2) | arg_0.a.xz, select(vec2<i32>(u_input.d, -13647i), vec2<i32>(4176i, 1i), vec2<bool>(false, true)))), _wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(11256i, arg_2, 2147483647i) & arg_0.a.xxw, vec3<i32>(u_input.d, 1i, 55977i)), 46480i), arg_0.a.xy));
    global0 = vec4<f32>(-345f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1038f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, -844f, true))), var_0.b)) * _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b)), -2149f)))));
    return arg_0;
}

fn func_1() -> Struct_2 {
    var var_0 = global1[_wgslsmith_index_u32(~u_input.e.x, 23u)];
    let var_1 = u_input.e.x;
    var var_2 = vec4<f32>(205f, -180f, global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1000f, global0.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-590f)))));
    let var_3 = Struct_1(_wgslsmith_f_op_f32(global0.x * global0.x), global0.x);
    let var_4 = Struct_1(var_3.b, var_3.b);
    return func_3(Struct_2(firstTrailingBit(vec4<i32>(-30279i, global3.x, global3.x, global3.x)) << (u_input.b % vec4<u32>(32u))), firstLeadingBit(~0u), 16596i, any(!vec2<bool>(!global1[_wgslsmith_index_u32(var_1, 23u)], func_2())));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1();
    global2 = array<vec2<u32>, 25>();
    var var_1 = Struct_1(665f, _wgslsmith_f_op_f32(f32(-1f) * -1000f));
    var var_2 = countOneBits(vec2<u32>(1u, ~(~(u_input.c.x >> (1u % 32u)))));
    var var_3 = abs(~4294967295u);
    let var_4 = true;
    var var_5 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-158f, 857f)))), var_1.b, 210f), vec4<u32>(126493u, var_2.x, _wgslsmith_sub_u32(var_2.x, abs(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.c.x, u_input.e.x, u_input.e.x, u_input.b.x)))), 0u), ~(4241u & ~(~var_2.x)));
}

