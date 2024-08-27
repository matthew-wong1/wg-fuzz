struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(4294967295u, 2855u, 4294967295u, 39897u), vec3<u32>(1u, 50442u, 62158u), vec2<i32>(i32(-2147483648), 1i), vec4<i32>(0i, -1i, -42170i, 2147483647i)), vec2<i32>(-1i, -39793i), -787f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<bool>, arg_1: u32, arg_2: Struct_3, arg_3: vec2<f32>) -> f32 {
    global0 = Struct_2(global0.a, u_input.a.zy, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(283f + _wgslsmith_div_f32(arg_3.x, global0.c))) + 1f));
    let var_0 = Struct_3(Struct_2(global0.a, max(_wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(global0.a.d.xy, u_input.b, vec2<i32>(-6151i, arg_2.a.a.c.x)), vec2<i32>(global0.b.x, arg_2.a.b.x)), vec2<i32>(abs(39247i), _wgslsmith_mult_i32(global0.a.d.x, 29107i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    return -1000f;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.c, _wgslsmith_f_op_f32(func_3(vec2<bool>(arg_1, arg_1), global0.a.a.x, Struct_3(Struct_2(global0.a, u_input.a.zx, 970f)), vec2<f32>(1311f, -910f))), arg_2, _wgslsmith_f_op_f32(arg_2 - global0.c)))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2, 2166f, global0.c, -1000f))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, arg_2, arg_2, -143f), vec4<f32>(arg_2, 779f, global0.c, global0.c), vec4<bool>(true, true, false, false)))))));
    let var_1 = Struct_1(vec4<u32>(54642u, 18356u << (_wgslsmith_mult_u32(max(global0.a.b.x, arg_0), _wgslsmith_add_u32(global0.a.a.x, arg_0)) % 32u), arg_0, ~_wgslsmith_add_u32(~arg_0, max(arg_0, 0u))), ~(~global0.a.b), u_input.b, u_input.a);
    return Struct_2(var_1, ~vec2<i32>(-25333i, firstTrailingBit(_wgslsmith_clamp_i32(2147483647i, 1i, global0.b.x))), arg_2);
}

fn func_1() -> StorageBuffer {
    let var_0 = false;
    global0 = func_2(abs(4294967295u), var_0, _wgslsmith_f_op_f32(f32(-1f) * -1000f), false);
    var var_1 = 67061u << (~global0.a.a.x % 32u);
    var var_2 = vec2<i32>(~(-abs(~u_input.b.x)), -(i32(-1i) * -u_input.a.x));
    var_2 = vec2<i32>(32338i, 2147483647i);
    return StorageBuffer(global0.a.d, ~6980u, vec3<u32>(~(~(~25926u)), global0.a.a.x, global0.a.a.x ^ global0.a.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1();
}

