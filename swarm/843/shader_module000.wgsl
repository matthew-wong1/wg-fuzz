struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<vec4<bool>, 8> = array<vec4<bool>, 8>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false));

var<private> global2: vec2<u32> = vec2<u32>(0u, 1u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_2() -> i32 {
    let var_0 = global0[_wgslsmith_index_u32(global2.x, 8u)];
    global0 = array<Struct_1, 8>();
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(global2.x, ~global2.x), _wgslsmith_sub_u32(~min(1u, ~global2.x), global2.x)), 8u)];
    let var_2 = Struct_1(_wgslsmith_div_i32(0i, var_1.a), select(var_1.b, !select(vec3<bool>(var_1.b.x, true, var_0.b.x), var_0.b, var_1.b.x), !vec3<bool>(true, all(var_1.b), var_1.b.x)));
    global1 = array<vec4<bool>, 8>();
    return _wgslsmith_mod_i32(var_2.a, _wgslsmith_mult_i32(var_2.a, max(var_0.a, _wgslsmith_sub_i32(1i, -1i))));
}

fn func_3() -> vec3<bool> {
    global1 = array<vec4<bool>, 8>();
    let var_0 = global0[_wgslsmith_index_u32(abs(0u), 8u)];
    global1 = array<vec4<bool>, 8>();
    global2 = vec2<u32>(global2.x, 84026u) << (reverseBits(min(~vec2<u32>(global2.x, 80362u), select(firstLeadingBit(vec2<u32>(17158u, 20576u)), ~vec2<u32>(15188u, global2.x), select(var_0.b.yx, var_0.b.zx, var_0.b.zy)))) % vec2<u32>(32u));
    var var_1 = vec2<i32>(_wgslsmith_dot_vec3_i32(~(~vec3<i32>(-1i, u_input.a, u_input.b)), min(vec3<i32>(-1i, 2147483647i, -1i) & vec3<i32>(-5331i, u_input.b, -2147483647i), abs(vec3<i32>(u_input.a, -5925i, 2147483647i)))) << (global2.x % 32u), _wgslsmith_sub_i32(-var_0.a, (_wgslsmith_sub_i32(var_0.a, -39249i) | -7079i) >> (global2.x % 32u)));
    return var_0.b;
}

fn func_1(arg_0: Struct_1) -> bool {
    let var_0 = firstLeadingBit(~select(vec3<u32>(~120u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 87099u, 0u), vec3<u32>(31035u, global2.x, global2.x)), global2.x), vec3<u32>(global2.x, global2.x, ~43922u), !select(vec3<bool>(true, arg_0.b.x, arg_0.b.x), arg_0.b, arg_0.b)));
    var var_1 = _wgslsmith_mod_i32(1i, func_2());
    var var_2 = vec3<u32>(~(~(~_wgslsmith_mult_u32(var_0.x, 59370u))), global2.x, 28280u);
    var var_3 = Struct_1(1i, arg_0.b);
    var_3 = Struct_1(select(func_2() >> (0u % 32u), arg_0.a, true), func_3());
    return !(any(select(vec2<bool>(var_3.b.x, var_3.b.x), select(vec2<bool>(true, true), var_3.b.xy, vec2<bool>(true, true)), vec2<bool>(false, false))) && var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec2<bool>(true, func_1(Struct_1(u_input.b, vec3<bool>(true, true, false)))), func_3().yy, false);
    var var_1 = vec3<bool>(!(!var_0.x) && var_0.x, ~_wgslsmith_mod_u32(~4294967295u, global2.x >> (23780u % 32u)) > (4294967295u | ~global2.x), var_0.x);
    var var_2 = 1u;
    global1 = array<vec4<bool>, 8>();
    var var_3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(1721f)), -645f, _wgslsmith_f_op_f32(trunc(444f)), _wgslsmith_f_op_f32(abs(1004f)))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(869f, -1486f, 1177f, 333f), vec4<f32>(1601f, -1413f, -903f, 256f)) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(146f, 420f, -1040f, -316f))))), vec4<f32>(_wgslsmith_div_f32(-305f, _wgslsmith_f_op_f32(floor(657f))), _wgslsmith_f_op_f32(1f + -184f), 235f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + 889f) * _wgslsmith_div_f32(-108f, 580f)))));
    let var_4 = all(func_3()) != any(select(select(vec3<bool>(false, false, var_1.x), select(vec3<bool>(true, var_0.x, var_1.x), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, var_0.x, var_1.x)), vec3<bool>(true, true, true)), func_3(), true));
    var_1 = vec3<bool>(all(select(vec3<bool>(true, false, false), !vec3<bool>(var_4, var_1.x, var_0.x), select(func_3(), vec3<bool>(var_0.x, true, var_1.x), select(vec3<bool>(var_0.x, var_1.x, true), vec3<bool>(true, true, true), vec3<bool>(false, var_4, true))))), false, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(1000f)), _wgslsmith_mod_vec2_i32((~vec2<i32>(u_input.b, u_input.a) & _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a, 2147483647i), vec2<i32>(-1i, 54887i))) >> (max(_wgslsmith_sub_vec2_u32(vec2<u32>(0u, 16610u), vec2<u32>(global2.x, 99u)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, global2.x), vec2<u32>(49636u, 12215u))) % vec2<u32>(32u)), select(vec2<i32>(u_input.a, u_input.a), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b, u_input.a), countOneBits(vec2<i32>(0i, u_input.a))), vec2<bool>(true, false))), _wgslsmith_f_op_f32(f32(-1f) * -845f));
}

