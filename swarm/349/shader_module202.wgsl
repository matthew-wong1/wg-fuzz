struct Struct_1 {
    a: u32,
    b: vec3<u32>,
    c: bool,
    d: f32,
    e: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: u32,
}

struct Struct_3 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<f32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1498f;

var<private> global1: bool;

var<private> global2: u32 = 46552u;

var<private> global3: Struct_1 = Struct_1(0u, vec3<u32>(0u, 26600u, 0u), true, 1116f, vec2<bool>(false, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1) -> bool {
    global0 = arg_1.d;
    global1 = true;
    let var_0 = -arg_0.a;
    let var_1 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.d)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.c.d)))), !arg_0.c.e.x);
    var var_2 = ~(-((vec2<i32>(1i, var_0) ^ vec2<i32>(u_input.b, 6384i)) << (~vec2<u32>(arg_0.b.b.x, global3.b.x) % vec2<u32>(32u)))) ^ abs(vec2<i32>(select(abs(-42388i), u_input.c.x, false), _wgslsmith_mult_i32(-35897i, 39828i)));
    return global3.c;
}

fn func_2() -> vec4<bool> {
    global2 = 4294967295u;
    global0 = _wgslsmith_f_op_f32(max(global3.d, _wgslsmith_f_op_f32(step(449f, global3.d))));
    global1 = true && !any(vec4<bool>(true, true, true, true));
    var var_0 = Struct_1(1u, vec3<u32>(4294967295u >> ((36380u ^ global3.b.x) % 32u), _wgslsmith_div_u32(_wgslsmith_mod_u32(global3.a, 4294967295u), global3.b.x), reverseBits(~global3.a)) >> (min(vec3<u32>(45229u, ~global3.b.x, _wgslsmith_mod_u32(1u, 1u)), firstLeadingBit(global3.b) | _wgslsmith_sub_vec3_u32(vec3<u32>(0u, global3.b.x, global3.b.x), vec3<u32>(0u, global3.a, 20525u))) % vec3<u32>(32u)), true, -1775f, global3.e);
    global1 = !(!(!(false || (1u <= global3.b.x))));
    return select(select(vec4<bool>(global3.e.x, !any(vec3<bool>(true, true, false)), !all(vec4<bool>(global3.e.x, true, false, var_0.c)), all(vec3<bool>(var_0.e.x, global3.c, global3.c)) & !var_0.c), !vec4<bool>(global3.c, 1i <= u_input.d, func_3(Struct_2(u_input.a.x, Struct_1(var_0.b.x, vec3<u32>(47322u, global3.a, 4294967295u), var_0.e.x, -1857f, var_0.e), Struct_1(var_0.b.x, vec3<u32>(1u, 4294967295u, var_0.a), global3.e.x, -402f, vec2<bool>(true, global3.c)), global3.a, var_0.b.x), Struct_1(0u, vec3<u32>(var_0.b.x, global3.a, 4294967295u), var_0.c, 517f, var_0.e)), global3.c), true), !select(select(!vec4<bool>(var_0.e.x, var_0.e.x, var_0.c, var_0.c), select(vec4<bool>(true, false, false, global3.c), vec4<bool>(true, true, var_0.c, false), global3.e.x), u_input.b > u_input.c.x), !(!vec4<bool>(global3.e.x, true, false, global3.c)), vec4<bool>(any(vec4<bool>(global3.e.x, false, true, global3.c)), true, !global3.c, global3.e.x)), vec4<bool>(any(select(vec3<bool>(true, global3.e.x, var_0.c), vec3<bool>(true, false, false), select(vec3<bool>(var_0.c, var_0.c, true), vec3<bool>(var_0.e.x, true, true), vec3<bool>(var_0.e.x, true, true)))), true, global3.c, true));
}

fn func_1() -> u32 {
    global2 = 1u;
    var var_0 = true;
    let var_1 = select(func_2(), func_2(), all(select(vec3<bool>(true, true | global3.c, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, global3.e.x), !vec3<bool>(global3.e.x, false, global3.e.x)), func_2().x)));
    var var_2 = vec4<i32>(firstTrailingBit(u_input.b | abs(_wgslsmith_mult_i32(1i, u_input.a.x))), u_input.c.x, 30983i, countOneBits(u_input.a.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-737f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(1242f, -697f), _wgslsmith_f_op_f32(floor(969f))) - global3.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3.d), _wgslsmith_f_op_f32(global3.d - -2066f)))))));
    return ~29849u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(65920i, -67318i) >> ((_wgslsmith_add_u32(min(4294967295u, 1u), (0u >> (global3.b.x % 32u)) ^ global3.b.x) & func_1()) % 32u);
    var var_1 = -1000f;
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(global3.d, -784f))));
    global0 = global3.d;
    global3 = Struct_1(global3.b.x, ~global3.b >> (~global3.b % vec3<u32>(32u)), false, _wgslsmith_f_op_f32(-global3.d), vec2<bool>(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) + 1354f) == _wgslsmith_f_op_f32(floor(global3.d))));
    let var_2 = any(vec2<bool>(false, any(vec4<bool>(4294967295u >= global3.a, true, true, func_2().x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(u_input.c.x, u_input.d), _wgslsmith_div_i32(-4008i, -1i), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.d, -1674f, -331f, 557f) + vec4<f32>(-215f, global3.d, global3.d, global3.d)))))))), 1u, vec3<i32>(-17263i, -22752i, _wgslsmith_sub_i32(u_input.a.x, _wgslsmith_add_i32(~0i, u_input.b))));
}

