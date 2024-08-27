struct Struct_1 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: i32;

var<private> global2: vec2<u32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> u32 {
    let var_0 = -16679i;
    var var_1 = Struct_1(~_wgslsmith_mult_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 1u, 1u), vec4<u32>(u_input.a.x, 58737u, 4294967295u, 1u)), vec4<u32>(u_input.a.x, global0.x, 0u, u_input.a.x) << (max(vec4<u32>(59584u, global2.x, global0.x, global0.x), vec4<u32>(u_input.a.x, global2.x, 0u, global0.x)) % vec4<u32>(32u))), (vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(var_0, -1i, -2147483647i), vec3<i32>(var_0, var_0, 17042i))) << (select(vec3<u32>(u_input.a.x, 0u, u_input.a.x) | ~vec3<u32>(global0.x, global2.x, 4250u), vec3<u32>(_wgslsmith_mod_u32(1u, 1u), max(global2.x, 17388u), 13699u), select(vec3<bool>(false, false, false), vec3<bool>(false, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, false)))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-238f, 710f)) * 1520f));
    global1 = -(~var_0 >> (~(~max(1u, 0u)) % 32u));
    let var_2 = Struct_1(firstLeadingBit(~firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(var_1.a.x, u_input.a.x, u_input.a.x, 0u), var_1.a))), var_1.b, _wgslsmith_f_op_f32(114f - var_1.c));
    return 15556u >> (u_input.a.x % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: vec2<u32>) -> i32 {
    var var_0 = arg_1.c;
    global0 = select(~_wgslsmith_mod_vec2_u32(~arg_0.a.wy | arg_0.a.zz, _wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(arg_3, arg_1.a.zx), vec2<u32>(4294967295u, 0u))), vec2<u32>(func_3(), 42052u), !(arg_2.x || true));
    var var_1 = Struct_1(_wgslsmith_sub_vec4_u32(arg_1.a, min(firstLeadingBit(vec4<u32>(arg_1.a.x, 88691u, global2.x, arg_1.a.x)), min(arg_0.a, _wgslsmith_mult_vec4_u32(arg_0.a, arg_1.a)))), _wgslsmith_mod_vec3_i32(max(-_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.b.x, -47275i, arg_0.b.x), vec3<i32>(-34474i, arg_0.b.x, arg_1.b.x)), arg_0.b), vec3<i32>(min(arg_1.b.x, arg_1.b.x), arg_0.b.x, arg_1.b.x)), arg_0.c);
    var_1 = arg_0;
    var_1 = arg_0;
    return min(min(-7720i, 0i), arg_0.b.x);
}

fn func_1() -> i32 {
    global1 = _wgslsmith_mult_i32(~_wgslsmith_sub_i32(~(-38743i), -_wgslsmith_div_i32(-1626i, 13815i)), countOneBits(_wgslsmith_div_i32(~(-1i), ~11248i & func_2(Struct_1(vec4<u32>(8357u, global2.x, 9296u, 1u), vec3<i32>(-4949i, 2318i, -12647i), 1299f), Struct_1(vec4<u32>(4294967295u, global0.x, global0.x, 39267u), vec3<i32>(-2147483647i, -2147483647i, 0i), 1000f), vec4<bool>(false, false, false, true), u_input.a))));
    var var_0 = 388f;
    let var_1 = ~(~4294967295u);
    global1 = ~(-(i32(-1i) * -1576i) ^ max(min(-14860i, -2147483647i) >> (select(1u, global2.x, true) % 32u), i32(-1i) * -26810i));
    let var_2 = 1f;
    return 32602i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a.x ^ 0u;
    global0 = vec2<u32>(0u, global2.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(-abs(firstLeadingBit(-9994i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-274f, -1350f, 364f, 910f), vec4<f32>(684f, -447f, 1180f, -676f))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(select(612f, -292f, true)), _wgslsmith_f_op_f32(-1058f * -1000f), _wgslsmith_f_op_f32(-431f - -102f), 1f))), func_1(), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(154f))))));
}

