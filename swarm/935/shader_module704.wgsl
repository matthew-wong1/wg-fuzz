struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec2<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: array<vec4<f32>, 21>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> i32 {
    var var_0 = !select(vec2<bool>(true, true), vec2<bool>(false, true), select(vec2<bool>(u_input.d == u_input.a, all(vec3<bool>(false, false, false))), select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, false), true)), vec2<bool>(true, true)));
    var_0 = select(select(select(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), true), vec2<bool>(all(vec2<bool>(false, var_0.x)), all(vec4<bool>(var_0.x, var_0.x, true, var_0.x))), vec2<bool>(select(var_0.x, true, var_0.x), false)), select(vec2<bool>(select(var_0.x, true, true), select(false, true, true)), select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), select(false, var_0.x, false)), vec2<bool>(var_0.x, false)), !(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, false), true))), select(select(!select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(false, true)), vec2<bool>(true, true), !select(vec2<bool>(true, false), vec2<bool>(true, true), true)), select(select(select(vec2<bool>(false, var_0.x), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x), select(vec2<bool>(var_0.x, false), vec2<bool>(true, var_0.x), vec2<bool>(false, true))), select(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x)), !vec2<bool>(true, var_0.x), all(vec2<bool>(true, var_0.x))), !var_0.x), true), select(select(!(!vec2<bool>(false, var_0.x)), select(!vec2<bool>(var_0.x, var_0.x), vec2<bool>(true, true), select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, var_0.x), var_0.x)), vec2<bool>(var_0.x, 0i != global0.a)), vec2<bool>(~u_input.a != ~u_input.c.x, ~u_input.a <= 4294967295u), var_0.x));
    let var_1 = Struct_1(-34822i);
    var_0 = !vec2<bool>(!(!var_0.x || true), -46379i <= _wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 0i, global0.a, 30525i), vec4<i32>(var_1.a, 1i, -3320i, var_1.a)));
    global2 = array<vec4<f32>, 21>();
    return select(global0.a, _wgslsmith_div_i32(firstLeadingBit(-15789i), -20470i), !any(!vec4<bool>(true, var_0.x, var_0.x, true)));
}

fn func_2(arg_0: vec4<i32>, arg_1: bool) -> i32 {
    let var_0 = Struct_1(global0.a);
    let var_1 = arg_1;
    var var_2 = _wgslsmith_add_vec3_u32(reverseBits(u_input.b.zxw), u_input.b.xww);
    let var_3 = vec4<bool>(any(vec4<bool>(false, any(vec4<bool>(arg_1, true, arg_1, arg_1)), false, true)), true, false, var_1);
    var var_4 = Struct_1(max(1i, func_3()));
    return var_4.a;
}

fn func_1() -> vec2<u32> {
    global2 = array<vec4<f32>, 21>();
    global0 = Struct_1(-2147483647i ^ global0.a);
    var var_0 = min(vec2<i32>(_wgslsmith_sub_i32(func_2(vec4<i32>(10230i, global0.a, 53290i, global0.a), false), -21399i), global0.a), select(max(-_wgslsmith_div_vec2_i32(vec2<i32>(global0.a, global0.a), vec2<i32>(global0.a, global0.a)), -vec2<i32>(2147483647i, 17111i)), firstLeadingBit(vec2<i32>(-34291i, global0.a) >> (vec2<u32>(u_input.c.x, 3904u) % vec2<u32>(32u))) >> (vec2<u32>(u_input.a, u_input.a ^ u_input.c.x) % vec2<u32>(32u)), false));
    var var_1 = !(!vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, false))), all(vec4<bool>(true, false, false, true)) || select(true, false, false), true, true));
    var var_2 = Struct_1(-(-_wgslsmith_sub_i32(var_0.x, 17918i) ^ _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_0.x, -1i, 47578i), vec4<i32>(-2147483647i, -6189i, global0.a, var_0.x) >> (vec4<u32>(37872u, u_input.c.x, 0u, 4294967295u) % vec4<u32>(32u)))));
    return select(u_input.c, u_input.b.zx, select(select(!(!vec2<bool>(true, var_1.x)), select(select(var_1.yz, var_1.wz, vec2<bool>(var_1.x, var_1.x)), vec2<bool>(true, false), var_1.xy), true), vec2<bool>(!all(var_1.ywx), true), var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -reverseBits(vec2<i32>(0i, 34591i) << (func_1() % vec2<u32>(32u)));
    var var_1 = Struct_1(var_0.x);
    global1 = _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(~30651u << ((countOneBits(u_input.b.x) ^ firstTrailingBit(1u)) % 32u), 21u)]);
    let var_2 = vec3<bool>(true, true, true);
    let var_3 = var_2.x;
    let var_4 = 36809u;
    let var_5 = Struct_1(min(-12677i ^ ~max(var_1.a, 1i), 0i << (countOneBits(abs(1u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec4<i32>(1i, global0.a >> (u_input.c.x % 32u), i32(-1i) * -2065i, var_0.x)) >> (~_wgslsmith_sub_vec4_u32(~u_input.b, u_input.b) % vec4<u32>(32u)), global1.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1622f) * _wgslsmith_f_op_f32(-global1.x)));
}

