struct Struct_1 {
    a: vec3<f32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 2>;

var<private> global1: i32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global0 = array<bool, 2>();
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-1704f, -299f), -736f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(169f, -621f, false))))));
    return 1871f;
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> vec3<f32> {
    var var_0 = vec2<i32>(~(-2147483647i), u_input.a);
    let var_1 = vec4<bool>(1166f > _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(step(arg_0.a.x, _wgslsmith_f_op_f32(abs(344f)))))), !(~(~u_input.c) != ~4294967295u), global0[_wgslsmith_index_u32(~abs(u_input.c), 2u)], false);
    global1 = ~var_0.x;
    let var_2 = vec2<u32>(9331u, select(abs(u_input.b.x), 0u, any(select(var_1.xw, var_1.xx, false))));
    let var_3 = 38919u;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), _wgslsmith_f_op_vec3_f32(-arg_0.a))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(arg_0.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, 212f, 1122f) - arg_0.a))))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-390f, _wgslsmith_f_op_f32(f32(-1f) * -447f), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(334f + -800f))), _wgslsmith_f_op_f32(func_2(vec2<u32>(var_2.x, u_input.c))), _wgslsmith_f_op_f32(ceil(arg_0.a.x)))));
}

fn func_1() -> vec3<f32> {
    var var_0 = Struct_1(vec3<f32>(-283f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 10020u), vec2<u32>(56058u, 19704u)))), 112f), 395f));
    let var_1 = -41129i != u_input.a;
    global1 = u_input.a;
    var var_2 = vec2<bool>(_wgslsmith_mult_i32(~u_input.a, _wgslsmith_sub_i32(1i, reverseBits(-20645i))) > _wgslsmith_mod_i32(-_wgslsmith_clamp_i32(-25291i, u_input.a, -1i), u_input.a), !global0[_wgslsmith_index_u32(min(4294967295u, ~abs(u_input.b.x)), 2u)]);
    var var_3 = Struct_2(vec2<i32>(u_input.a, u_input.a), _wgslsmith_f_op_f32(-149f + 491f), (u_input.b.xyw << (~_wgslsmith_clamp_vec3_u32(vec3<u32>(17570u, 52113u, u_input.b.x), u_input.b.xyw, vec3<u32>(u_input.b.x, u_input.c, u_input.c)) % vec3<u32>(32u))) << (vec3<u32>(~u_input.b.x, u_input.b.x, ~min(u_input.c, 1u)) % vec3<u32>(32u)), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x) - vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)) + _wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(var_0.a.x, var_0.a.x, var_0.a.x)), 21926i))))));
    return _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(-1617f, var_3.b)), _wgslsmith_f_op_f32(round(-1781f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(vec3<f32>(641f, 1202f, -1773f)), -2147483647i)).x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-168f - var_3.d.a.x) - _wgslsmith_f_op_f32(round(var_3.b))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(580f, -1265f, -314f) - vec3<f32>(-1100f, 461f, 492f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-225f, 525f, -1000f) - vec3<f32>(-283f, -1301f, -131f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1038f, -347f, 1000f) + vec3<f32>(-2208f, 878f, 263f)) * _wgslsmith_f_op_vec3_f32(func_1()))))));
    let var_1 = ~u_input.b.zz;
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(var_0.a - var_0.a)), _wgslsmith_mod_i32(-1i | u_input.a, -16206i))).x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a.x) * 1460f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(var_0.a.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x)));
    global1 = abs(u_input.a);
    global0 = array<bool, 2>();
    var var_3 = Struct_2((select(-vec2<i32>(-2147483647i, -40040i), countOneBits(vec2<i32>(u_input.a, u_input.a)), select(global0[_wgslsmith_index_u32(var_1.x, 2u)], false, global0[_wgslsmith_index_u32(var_1.x, 2u)])) << (_wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1, u_input.b.zx, vec2<u32>(var_1.x, var_1.x)), vec2<u32>(var_1.x, 1u)) % vec2<u32>(32u))) << ((select(vec2<u32>(u_input.c, var_1.x), u_input.b.zz, select(vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 2u)], global0[_wgslsmith_index_u32(4294967295u, 2u)]), vec2<bool>(global0[_wgslsmith_index_u32(3210u, 2u)], global0[_wgslsmith_index_u32(u_input.c, 2u)]), global0[_wgslsmith_index_u32(21363u, 2u)])) >> (vec2<u32>(abs(0u), ~var_1.x) % vec2<u32>(32u))) % vec2<u32>(32u)), 660f, vec3<u32>(4294967295u, _wgslsmith_add_u32(~var_1.x, u_input.c), ~var_1.x), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(549f)), var_0.a.x, _wgslsmith_f_op_f32(var_0.a.x * var_0.a.x)))));
    let var_4 = Struct_1(var_0.a);
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(var_2, vec4<f32>(var_3.b, 810f, var_4.a.x, -1025f))) + var_2) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-var_2)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_2.x, -253f, -1572f) - var_2), vec4<f32>(-559f, var_2.x, var_0.a.x, 711f)))));
}

