struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec3<u32>,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3;

var<private> global2: Struct_1 = Struct_1(true, vec2<f32>(-2469f, -962f), 1i);

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> i32 {
    global2 = Struct_1(false, _wgslsmith_f_op_vec2_f32(ceil(global2.b)), global2.c);
    global0 = 8038u;
    return -1i;
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec3<i32>) -> i32 {
    let var_0 = ~(~_wgslsmith_div_vec3_u32(arg_0.c, ~(vec3<u32>(arg_0.a.x, 0u, 1u) & vec3<u32>(52201u, arg_1.a.x, global1.a.x))));
    var var_1 = arg_1.b;
    return var_1.c;
}

fn func_1() -> bool {
    let var_0 = Struct_2(~vec2<u32>(~global1.a.x | global1.a.x, global1.a.x), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global2.b.x))) < global2.b.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-639f, global2.b.x)), func_2()), ~(_wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 0u, global1.a.x), vec3<u32>(0u, 41334u, 4834u)), ~vec3<u32>(global1.a.x, global1.a.x, global1.a.x), vec3<u32>(global1.a.x, 124003u, global1.a.x) & vec3<u32>(global1.a.x, 4294967295u, 0u)) >> (_wgslsmith_add_vec3_u32(vec3<u32>(89955u, global1.a.x, global1.a.x), vec3<u32>(18849u, global1.a.x, global1.a.x) | vec3<u32>(0u, global1.a.x, global1.a.x)) % vec3<u32>(32u))), global1.a.x >= ~12802u, -vec3<i32>(_wgslsmith_mult_i32(~u_input.a, 1i), u_input.a, func_3(Struct_2(vec2<u32>(global1.a.x, global1.a.x), Struct_1(false, global2.b, global2.c), vec3<u32>(global1.a.x, global1.a.x, 0u), false, vec3<i32>(1i, u_input.a, -2147483647i)), Struct_2(global1.a, Struct_1(global2.a, vec2<f32>(global2.b.x, global2.b.x), global2.c), vec3<u32>(1u, global1.a.x, global1.a.x), true, vec3<i32>(-31729i, 73633i, 2147483647i)), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -1i), vec3<i32>(u_input.a, u_input.a, global2.c)))));
    global2 = Struct_1(any(select(!vec2<bool>(global2.a, false), vec2<bool>(all(vec3<bool>(global2.a, var_0.b.a, var_0.b.a)), true), vec2<bool>(select(true, global2.a, false), all(vec4<bool>(true, var_0.d, var_0.b.a, var_0.d))))), vec2<f32>(_wgslsmith_f_op_f32(sign(var_0.b.b.x)), global2.b.x), func_2());
    var var_1 = Struct_3(global1.a << (min(max(vec2<u32>(1u, 1u) << (var_0.a % vec2<u32>(32u)), global1.a | vec2<u32>(1u, 66291u)), vec2<u32>(min(4294967295u, var_0.a.x), 4294967295u)) % vec2<u32>(32u)));
    var var_2 = Struct_3(~(~vec2<u32>(29745u ^ var_0.c.x, 68021u)));
    let var_3 = global1.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_add_u32(global1.a.x, 0u);
    global0 = 82105u;
    global2 = Struct_1(any(select(vec2<bool>(true, any(vec2<bool>(global2.a, false))), vec2<bool>(global2.a, func_1()), all(!vec4<bool>(global2.a, false, true, global2.a)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(global2.b.x, -1242f, false))))) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1208f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.b.x - -498f) + -318f))), ~firstTrailingBit(0i));
    global1 = Struct_3(abs(_wgslsmith_mod_vec2_u32(~global1.a, global1.a) ^ global1.a));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~(~global1.a))), 332f);
}

