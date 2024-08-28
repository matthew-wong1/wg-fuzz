struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(true, true), true);

var<private> global1: i32 = 7041i;

var<private> global2: vec4<bool>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> i32 {
    let var_0 = true;
    let var_1 = abs(-vec2<i32>(20461i, u_input.b.x));
    var var_2 = arg_1.x;
    var_2 = u_input.b.x;
    global1 = var_1.x;
    return ~firstLeadingBit(_wgslsmith_mod_i32(max(var_1.x, -51862i), 0i));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = vec3<u32>(0u, u_input.a, u_input.a);
    global1 = ~func_1(true, select(countOneBits(vec4<i32>(-2147483647i, u_input.b.x, 21910i, -41101i)), vec4<i32>(2147483647i, u_input.b.x, -2147483647i, u_input.b.x), select(vec4<bool>(true, arg_0.x, false, arg_0.x), vec4<bool>(true, true, global0.b, global2.x), vec4<bool>(arg_0.x, false, global0.a.x, false)))) & -2147483647i;
    var_0 = firstTrailingBit(vec3<u32>(~4294967295u, ~u_input.a >> (abs(4294967295u) % 32u), u_input.a));
    let var_1 = u_input.a;
    var_0 = vec3<u32>(~(1u | var_0.x) << (0u % 32u), min(~max(var_0.x, reverseBits(6998u)), ~select(4294967295u, 1u, true) >> (_wgslsmith_clamp_u32(~var_0.x, _wgslsmith_div_u32(var_1, 93777u), var_0.x ^ var_0.x) % 32u)), u_input.a);
    return 2114u;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec4<bool>) -> bool {
    var var_0 = u_input.b.zwy;
    let var_1 = u_input.a;
    var_0 = ~u_input.b.zxz;
    var var_2 = vec3<u32>(max(abs(select(var_1, ~1u, arg_2.x)), func_3(!vec3<bool>(global0.a.x, arg_1.a, false), Struct_2(!vec2<bool>(arg_2.x, true), global0.a.x))), 20024u, abs(u_input.a));
    var_0 = vec3<i32>(u_input.b.x, ~u_input.b.x, u_input.b.x);
    return select(true, !all(arg_2.yxw), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -7856i;
    var var_1 = vec4<bool>((true || all(select(global2.zw, vec2<bool>(true, global0.a.x), global0.b))) & (func_1(true, u_input.b) > -u_input.b.x), true, false, global0.b);
    let var_2 = Struct_1(var_1.x, vec4<u32>(_wgslsmith_sub_u32(max(0u, _wgslsmith_mod_u32(79476u, 1u)), countOneBits(u_input.a)), ~_wgslsmith_sub_u32(firstLeadingBit(u_input.a), firstTrailingBit(u_input.a)), firstTrailingBit(45547u), abs(~u_input.a) & u_input.a), !(!vec4<bool>(func_2(871f, Struct_1(global2.x, vec4<u32>(48266u, 1u, 31602u, u_input.a), vec4<bool>(var_1.x, var_1.x, false, false)), vec4<bool>(false, true, true, false)), false, true, any(vec3<bool>(var_1.x, var_1.x, global0.a.x)))));
    var_0 = u_input.b.x;
    let var_3 = vec3<bool>(false, any(select(!select(vec2<bool>(true, false), vec2<bool>(false, global2.x), global2.zx), select(!global2.xx, vec2<bool>(global0.a.x, var_1.x), global2.yw), vec2<bool>(true, !global0.b))), u_input.b.x <= abs(_wgslsmith_add_i32(max(u_input.b.x, 41558i), u_input.b.x)));
    var var_4 = _wgslsmith_dot_vec3_i32(u_input.b.yxx, ~_wgslsmith_mod_vec3_i32(u_input.b.wyz, u_input.b.yzy)) < 2147483647i;
    global0 = Struct_2(global2.yw, !(!var_3.x || false));
    global0 = Struct_2(global0.a, 1262f > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(120f, -693f, var_2.a)))) + 725f));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, var_2.b.x, ~var_2.b.xw, _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(u_input.b.x), ~reverseBits(u_input.b.x), u_input.b.x, u_input.b.x), ~u_input.b), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - -565f))));
}

