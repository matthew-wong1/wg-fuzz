struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 14>;

var<private> global1: vec3<i32>;

var<private> global2: Struct_1;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<f32> {
    let var_0 = vec2<f32>(-1000f, -1000f);
    var var_1 = _wgslsmith_add_u32(34447u, ~4294967295u);
    var var_2 = ~(min(vec3<u32>(~1u, 12248u, abs(global2.a)), vec3<u32>(global2.a, global2.a, global2.a)) & abs(reverseBits(vec3<u32>(26665u, global2.a, 29714u)) | ~vec3<u32>(45724u, 1u, 26913u)));
    let var_3 = false;
    let var_4 = Struct_1(1u, select(vec3<bool>(global2.b.x, all(global2.b.yy) & true, !(var_3 || true)), vec3<bool>(!var_3 & var_3, var_3, abs(global2.c.x) < -2147483647i), _wgslsmith_f_op_f32(max(-860f, var_0.x)) >= _wgslsmith_f_op_f32(f32(-1f) * -1162f)), u_input.a.xx);
    return vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-929f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x))), var_0.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(468f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(126f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(112f)))), _wgslsmith_f_op_f32(round(-377f)), true)))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.x)))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1182f, 1203f, 130f, 1016f), vec4<f32>(839f, -590f, 579f, 793f)))) - _wgslsmith_f_op_vec4_f32(func_3()))))));
    let var_1 = ~_wgslsmith_add_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(1i, 0i), global1.xz) & ~_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 1i), vec2<i32>(-16732i, 15235i)), ~arg_0.c);
    var var_2 = global2.b;
    let var_3 = !arg_0.b;
    let var_4 = Struct_1(global2.a, vec3<bool>(arg_1.b.x & false, all(!(!var_2.zx)), any(var_2.yz)), u_input.a.xz);
    return abs(-(~vec2<i32>(4541i, global2.c.x))) | ~u_input.a.ww;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(countOneBits(global2.a), select(global2.b, select(vec3<bool>(!global2.b.x, true, global2.b.x), vec3<bool>(!global2.b.x, any(global2.b.xz), any(vec4<bool>(false, global2.b.x, global2.b.x, true))), true), select(global2.b, global2.b, select(global2.b, !global2.b, false))), _wgslsmith_mult_vec2_i32(-func_2(Struct_1(4294967295u, vec3<bool>(global2.b.x, global2.b.x, true), vec2<i32>(8161i, global2.c.x)), Struct_1(7308u, global2.b, global2.c)), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.c.x, global2.c.x), vec2<i32>(75929i, global1.x)), 1i) & abs(_wgslsmith_add_vec2_i32(global1.zy, vec2<i32>(0i, 2147483647i)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -700f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(2202f)) - 452f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -952f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-887f + -1239f) + 907f)), _wgslsmith_f_op_vec4_f32(func_3()).x) * _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1768f - -342f) + 1f), -209f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(603f * 452f))), 1327f), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -468f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(403f - 145f))), _wgslsmith_f_op_f32(f32(-1f) * -106f), _wgslsmith_f_op_f32(max(331f, _wgslsmith_f_op_f32(round(-451f))))))));
    return Struct_1(min(~(~_wgslsmith_mult_u32(global2.a, 48832u)), ~max(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 1u), vec2<u32>(0u, 0u)), _wgslsmith_add_u32(global2.a, 63544u))), vec3<bool>(true, global2.b.x, global2.b.x), vec2<i32>(-abs(u_input.a.x), countOneBits(abs(_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, -15416i, global2.c.x, 1i))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 14>();
    global2 = func_1();
    global0 = array<vec3<f32>, 14>();
    let var_0 = _wgslsmith_sub_i32(~27158i, ~_wgslsmith_mult_i32(func_2(Struct_1(25792u, global2.b, global2.c), Struct_1(68666u, global2.b, u_input.a.wz)).x, ~global2.c.x) >> (_wgslsmith_add_u32(0u, ~(41923u << (global2.a % 32u))) % 32u));
    var var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(-u_input.a.xyz, _wgslsmith_div_vec3_i32(-u_input.a.xzz, u_input.a.zxw)), vec2<u32>(~_wgslsmith_add_u32(45262u, 0u) ^ global2.a, abs(69017u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -544f) - _wgslsmith_f_op_f32(f32(-1f) * -1297f)))), var_1.a);
}

