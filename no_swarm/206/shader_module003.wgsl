struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 2147483647i;

var<private> global2: vec4<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> u32 {
    var var_0 = u_input.b;
    var_0 = 2147483647i;
    let var_1 = Struct_1(_wgslsmith_sub_i32(abs(14520i), _wgslsmith_mult_i32(14976i, max(u_input.b, -global0.a))));
    var var_2 = ~75956u;
    var var_3 = var_1;
    return _wgslsmith_clamp_u32(~20377u, ~u_input.a, 23911u);
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = select(~(~(~(~vec4<i32>(u_input.c, global0.a, -1i, 0i)))), -vec4<i32>(104306i, arg_0.a, arg_0.a, 50349i), vec4<bool>(false, true, u_input.a <= u_input.a, true));
    var var_1 = arg_0;
    var var_2 = func_3();
    return u_input.a;
}

fn func_1(arg_0: vec4<u32>, arg_1: f32, arg_2: bool) -> vec4<bool> {
    var var_0 = vec2<u32>(0u << (arg_0.x % 32u), func_2(Struct_1(-1262i)));
    var var_1 = reverseBits(abs(arg_0.zz));
    let var_2 = ~_wgslsmith_div_vec3_u32(abs(select(_wgslsmith_add_vec3_u32(arg_0.xwx, vec3<u32>(6397u, arg_0.x, arg_0.x)), arg_0.yxx, global2.x)), arg_0.xxz);
    var var_3 = !(!select(select(select(vec4<bool>(arg_2, global2.x, true, false), vec4<bool>(global2.x, global2.x, arg_2, arg_2), true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, arg_2, true)), !(!vec4<bool>(arg_2, false, global2.x, true)), arg_2));
    let var_4 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-652f)))), arg_1)));
    return select(vec4<bool>(false, true, false, global2.x), !(!select(vec4<bool>(true, true, arg_2, true), vec4<bool>(true, false, global2.x, var_3.x), all(vec4<bool>(true, true, false, false)))), select(select(!(!vec4<bool>(global2.x, arg_2, global2.x, var_3.x)), vec4<bool>(true, !global2.x, true, false), select(global2.x, arg_2, arg_0.x > u_input.a)), vec4<bool>(true, _wgslsmith_f_op_f32(-512f - arg_1) >= _wgslsmith_f_op_f32(trunc(arg_1)), false, !any(var_3.zx)), select((global0.a | -1i) <= -22238i, true, global2.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<u32>(77061u, max(57262u, 67294u));
    let var_1 = -1538f;
    let var_2 = !vec4<bool>(!(!global2.x), false, true, all(func_1(vec4<u32>(u_input.a, u_input.a, var_0.x, 63322u), var_1, global2.x)) | false);
    global0 = Struct_1(-35445i);
    let var_3 = Struct_1(u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(min(~firstLeadingBit(vec4<u32>(86001u, 0u, 4294967295u, var_0.x) & vec4<u32>(var_0.x, u_input.a, u_input.a, u_input.a)), vec4<u32>(77165u, var_0.x, abs(u_input.a), countOneBits(max(var_0.x, 41137u)))), vec3<u32>(abs(~u_input.a), u_input.a, ~(var_0.x & var_0.x)) | ~vec3<u32>(firstTrailingBit(0u), u_input.a, ~var_0.x), countOneBits(54696u), firstTrailingBit(_wgslsmith_mult_vec2_u32(reverseBits(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(u_input.a, var_0.x))), vec2<u32>(_wgslsmith_mult_u32(var_0.x, var_0.x), 82659u ^ var_0.x))), ~var_3.a);
}

