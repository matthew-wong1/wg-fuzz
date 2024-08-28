struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: i32,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_4,
    c: vec3<bool>,
    d: vec4<i32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(-14890i, 4408i, -8681i, 1i);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: u32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1() -> i32 {
    return _wgslsmith_add_i32(min(0i, _wgslsmith_div_i32((i32(-1i) * -2147483647i) << (_wgslsmith_dot_vec4_u32(vec4<u32>(44132u, 59744u, 2319u, 39454u), vec4<u32>(1u, 4294967295u, 8820u, 23751u)) % 32u), u_input.a)), 0i);
}

fn func_2(arg_0: vec4<f32>) -> u32 {
    var var_0 = -720f;
    return 0u;
}

fn func_3(arg_0: Struct_2, arg_1: f32, arg_2: u32, arg_3: i32) -> vec3<u32> {
    var var_0 = Struct_4(Struct_3(~(~vec3<u32>(arg_2, arg_2, 1u))));
    global1 = _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(-2147483647i, arg_3), global0.zz, false), global0.wy, max(vec2<i32>(arg_3, u_input.a), vec2<i32>(-35822i, arg_0.b))) ^ global0.zy, global0.yx) >> (arg_2 % 32u);
    let var_1 = Struct_4(Struct_3(max(select(var_0.a.a, var_0.a.a << (vec3<u32>(1u, arg_2, var_0.a.a.x) % vec3<u32>(32u)), true), vec3<u32>(47914u, ~arg_2, 1u))));
    let var_2 = u_input.a;
    var var_3 = min(-1i, func_1());
    return ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(reverseBits(var_0.a.a), var_1.a.a), vec3<u32>(~func_2(vec4<f32>(arg_1, -1204f, 450f, arg_1)), 4294967295u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 29142u, 27164u, var_0.a.a.x), vec4<u32>(var_1.a.a.x, var_0.a.a.x, 1u, 31520u)) % 32u), 113718u));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.a;
    global0 = min(vec4<i32>(8805i, -_wgslsmith_mult_i32(global0.x ^ global0.x, func_1()), -1i, _wgslsmith_sub_i32(u_input.a, _wgslsmith_mult_i32(global0.x, u_input.a)) ^ _wgslsmith_div_i32(u_input.a, _wgslsmith_sub_i32(global0.x, global0.x))), -vec4<i32>(~(-2147483647i << (0u % 32u)), ~_wgslsmith_sub_i32(u_input.a, 20937i), -(~84752i), ~u_input.a));
    global1 = global0.x;
    let var_0 = max(vec3<u32>(53035u, 4294967295u, ~(~_wgslsmith_mult_u32(0u, 48121u))), ~(~(select(vec3<u32>(34104u, 4524u, 1u), vec3<u32>(182u, 34976u, 1u), vec3<bool>(true, false, false)) & ~vec3<u32>(4294967295u, 1u, 88079u))));
    let var_1 = firstTrailingBit(~0u);
    global2 = func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-540f + -593f), _wgslsmith_f_op_f32(2612f + 467f), 246f, _wgslsmith_f_op_f32(step(3362f, 433f))))));
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_clamp_vec3_u32(var_0, ~(~vec3<u32>(var_1, var_1, 66164u)), func_3(Struct_2(1000f, global0.x), _wgslsmith_f_op_f32(f32(-1f) * -963f), var_0.x | var_0.x, global0.x)), ~select(~var_0, _wgslsmith_mult_vec3_u32(var_0, var_0), select(true, true, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, 1957f))) + vec2<f32>(-1160f, 1048f)))), _wgslsmith_dot_vec3_i32(global0.yxw, ~(-vec3<i32>(-24735i, global0.x, global0.x))), 1u);
}

