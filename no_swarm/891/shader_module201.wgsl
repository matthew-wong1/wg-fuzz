struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec4<f32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: i32;

var<private> global2: Struct_1;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> u32 {
    var var_0 = arg_2.c.yyz;
    let var_1 = -196f;
    global0 = !vec2<bool>(select(!arg_1 == all(vec2<bool>(false, false)), select(true, true, true), global0.x), true);
    return 4294967295u;
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: i32) -> f32 {
    var var_0 = reverseBits(abs(vec3<i32>(_wgslsmith_clamp_i32(global2.d.x, u_input.a.x, 9261i), ~u_input.d.x, -12310i) | _wgslsmith_mod_vec3_i32(-vec3<i32>(28633i, 14278i, arg_2), firstTrailingBit(u_input.d))));
    var var_1 = 15535u;
    global2 = Struct_1(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, _wgslsmith_sub_u32(global2.a.x, 52525u), ~arg_0.a.x), vec3<u32>(50168u | global2.a.x, firstTrailingBit(global2.e.x), ~18406u))), _wgslsmith_sub_u32(min(~firstTrailingBit(arg_0.e.x), select(arg_0.a.x >> (1u % 32u), 6141u, any(vec3<bool>(true, true, true)))), _wgslsmith_dot_vec3_u32(abs(min(vec3<u32>(arg_0.b, u_input.b.x, 0u), global2.a)), u_input.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_0.c)) + _wgslsmith_f_op_vec4_f32(select(arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(global2.c))), any(vec2<bool>(true, global0.x))))), vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-u_input.d, ~u_input.d), min(global2.d.x, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -23274i, 2147483647i), u_input.d))), global2.d.x), ~(~max(abs(arg_0.e), ~vec4<u32>(38427u, 1u, global2.e.x, 0u))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.c.x)))) * global2.c.x), global2.c.x);
    var var_3 = arg_0;
    return _wgslsmith_f_op_f32(-2049f - _wgslsmith_f_op_f32(-var_3.c.x));
}

fn func_1() -> vec2<bool> {
    let var_0 = _wgslsmith_mod_u32(select(u_input.e, _wgslsmith_clamp_u32(_wgslsmith_clamp_u32(31679u, global2.a.x, 23065u), _wgslsmith_dot_vec3_u32(global2.a, vec3<u32>(0u, 0u, 28940u)), func_2(Struct_1(vec3<u32>(9200u, 100041u, global2.a.x), global2.e.x, global2.c, vec2<i32>(global2.d.x, 1i), global2.e), true, Struct_1(vec3<u32>(u_input.e, 35921u, 4294967295u), global2.a.x, vec4<f32>(global2.c.x, 2294f, global2.c.x, 908f), vec2<i32>(global2.d.x, global2.d.x), vec4<u32>(u_input.e, u_input.b.x, global2.a.x, u_input.b.x)))), global0.x), 1u) > min(u_input.b.x, ~_wgslsmith_add_u32(u_input.b.x << (55834u % 32u), abs(global2.a.x)));
    var var_1 = Struct_1(~vec3<u32>(~u_input.b.x, select(global2.b, 1u, true), global2.b), ~(~abs(reverseBits(global2.a.x))), global2.c, _wgslsmith_clamp_vec2_i32(global2.d, vec2<i32>(-12482i, firstTrailingBit(u_input.a.x)), vec2<i32>(~u_input.a.x, 1i)), vec4<u32>(~1u, 1u, ~reverseBits(global2.e.x), firstLeadingBit(~u_input.b.x) ^ ~(~u_input.b.x)));
    var_1 = Struct_1(vec3<u32>(~13384u, select(~_wgslsmith_div_u32(30681u, 12747u), u_input.e, !var_0), ~_wgslsmith_sub_u32(~u_input.b.x, 4294967295u)), var_1.b, vec4<f32>(508f, _wgslsmith_f_op_f32(-var_1.c.x), global2.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x + -1681f)) - _wgslsmith_f_op_f32(func_3(Struct_1(vec3<u32>(1u, 65693u, u_input.e), 4294967295u, global2.c, global2.d, vec4<u32>(49951u, 0u, u_input.e, 4294967295u)), !vec2<bool>(true, var_0), -2147483647i)))), u_input.d.yz, vec4<u32>(firstLeadingBit(0u), 0u, var_1.a.x, 6807u));
    let var_2 = 935f;
    var_1 = Struct_1(global2.a, reverseBits(~0u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.c.x, _wgslsmith_f_op_f32(-879f * 1413f), var_1.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2 * var_1.c.x))))), vec2<i32>(_wgslsmith_mod_i32(global2.d.x, 0i), 22842i), abs(~vec4<u32>(global2.a.x, 61123u, ~4294967295u, ~1u)));
    return select(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.c.x * var_2)) != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2 + -2773f), global2.c.x)), false), vec2<bool>(global2.b < global2.e.x, true), var_0);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.c.x, global2.c.x, 1271f, global2.c.x), vec4<f32>(global2.c.x, -743f, -1141f, -1953f), vec4<bool>(global0.x, false, global0.x, false))) - global2.c)))) + global2.c);
    global0 = vec2<bool>(false, all(vec2<bool>(true, global0.x)));
    var var_1 = !select(select(func_1(), func_1(), true), vec2<bool>(true, !any(vec2<bool>(false, false))), global0.x);
    let var_2 = global2.d.x;
    var_1 = vec2<bool>(global0.x, 1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-316f * _wgslsmith_f_op_f32(ceil(global2.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(var_0, vec4<f32>(-2187f, 488f, 1120f, global2.c.x))))) * vec4<f32>(_wgslsmith_f_op_f32(global2.c.x * var_0.x), _wgslsmith_div_f32(-1000f, 1276f), var_0.x, _wgslsmith_f_op_f32(-global2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.x))), _wgslsmith_mod_vec3_u32(vec3<u32>(reverseBits(~global2.a.x), min(_wgslsmith_add_u32(54839u, global2.a.x), 15929u), 36934u), _wgslsmith_clamp_vec3_u32(select(~u_input.b, min(global2.e.wxz, u_input.b), vec3<bool>(var_1.x, var_1.x, true)), ~global2.e.zzx, global2.e.xyx)));
}

