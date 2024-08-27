struct Struct_1 {
    a: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = 1i;

var<private> global2: vec3<bool>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: f32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> i32 {
    let var_0 = arg_2;
    global2 = !(!select(select(!vec3<bool>(true, global2.x, global2.x), !vec3<bool>(true, global2.x, false), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, global2.x, global2.x), false)), select(select(vec3<bool>(false, global2.x, true), vec3<bool>(true, global2.x, true), false), vec3<bool>(false, global2.x, global2.x), true), true));
    global0 = var_0;
    var var_1 = _wgslsmith_sub_vec3_i32(-arg_2.a ^ countOneBits((arg_2.a | vec3<i32>(21897i, 9984i, arg_2.a.x)) << (arg_3.xyy % vec3<u32>(32u))), vec3<i32>(~select(arg_2.a.x << (arg_3.x % 32u), firstLeadingBit(0i), global2.x), ~u_input.c.x ^ _wgslsmith_add_i32(1i, ~(-1i)), abs(-20876i)));
    global1 = global0.a.x;
    return abs(abs(var_1.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_div_vec3_i32(select(vec3<i32>(-1i & global0.a.x, -34449i, u_input.c.x), _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(global0.a, arg_1.a, vec3<i32>(arg_1.a.x, 2135i, -1i)), vec3<i32>(arg_1.a.x, arg_1.a.x, -49731i) | vec3<i32>(global0.a.x, global0.a.x, 0i)), vec3<bool>(!arg_0.x, false, !global2.x)), vec3<i32>(global0.a.x, func_3(_wgslsmith_f_op_f32(748f * 1000f), vec2<f32>(-886f, 1304f), arg_1, ~u_input.b), max(reverseBits(45456i), ~arg_1.a.x))));
    let var_1 = vec4<i32>(-2147483647i, var_0.a.x, 0i, ~(i32(-1i) * -58927i));
    let var_2 = Struct_1(~((vec3<i32>(-1i) * -global0.a) & vec3<i32>(u_input.c.x, u_input.c.x, -global0.a.x)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2247f)));
    var_0 = arg_1;
    return select(reverseBits(_wgslsmith_div_i32(func_3(_wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1316f, -1000f) - vec2<f32>(var_3, var_3)), var_2, select(u_input.b, vec4<u32>(16906u, u_input.b.x, 859u, 4294967295u), arg_0.x)), 25945i << (u_input.b.x % 32u))), countOneBits(u_input.a.x), all(vec3<bool>(any(vec4<bool>(global2.x, global2.x, global2.x, false)), true || any(vec3<bool>(true, global2.x, true)), false)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = Struct_1(-global0.a);
    var var_0 = vec4<bool>(!(func_2(!vec3<bool>(false, true, global2.x), Struct_1(global0.a)) >= -2147483647i), all(vec2<bool>(global2.x, any(!vec4<bool>(global2.x, true, true, global2.x)))), true, global2.x);
    var var_1 = arg_1;
    var var_2 = !(!any(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(false, true, true)))) || any(var_0.wz);
    let var_3 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(global0.a.x, arg_0.x, ~var_1.a.x), arg_1.a), ~(vec3<i32>(-1i) * -vec3<i32>(-33577i, -42867i, global0.a.x))));
    return var_3;
}

fn func_4(arg_0: bool, arg_1: Struct_1) -> i32 {
    global2 = !vec3<bool>(arg_0 | any(select(vec3<bool>(arg_0, arg_0, global2.x), vec3<bool>(global2.x, true, arg_0), vec3<bool>(arg_0, false, true))), any(select(vec3<bool>(false, false, global2.x), vec3<bool>(arg_0, global2.x, false), !global2.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-538f + 1918f))) < _wgslsmith_f_op_f32(f32(-1f) * -1903f));
    global0 = Struct_1(vec3<i32>(-global0.a.x, reverseBits(-15760i), 1i));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -452f)) - _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-229f, -1252f)) + _wgslsmith_f_op_f32(step(1000f, 705f))), 130f), -216f));
    var var_1 = ~0i;
    global1 = min(1i, -60952i);
    return arg_1.a.x >> (u_input.b.x % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(vec3<bool>(false, -u_input.a.x == func_4(all(vec4<bool>(false, global2.x, true, global2.x)), func_1(vec4<i32>(global0.a.x, 23039i, -25406i, u_input.c.x), Struct_1(global0.a))), true), !vec3<bool>(true, global2.x | !global2.x, !any(vec3<bool>(global2.x, global2.x, true))), true);
    global2 = !vec3<bool>(global2.x, true, global2.x || !(u_input.b.x <= 93714u));
    var var_0 = func_1(vec4<i32>(~u_input.c.x, _wgslsmith_mod_i32(u_input.c.x, i32(-1i) * -2794i), 0i, global0.a.x) << (~u_input.b % vec4<u32>(32u)), func_1((_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(global0.a.x, -23646i, u_input.a.x, u_input.a.x)) >> (vec4<u32>(u_input.b.x, 1u, 19733u, 4294967295u) % vec4<u32>(32u))) << (~u_input.b % vec4<u32>(32u)), func_1(vec4<i32>(-2147483647i, _wgslsmith_mult_i32(global0.a.x, global0.a.x), -u_input.a.x, 26912i), func_1(vec4<i32>(global0.a.x, u_input.a.x, global0.a.x, -26132i), func_1(u_input.a, Struct_1(vec3<i32>(global0.a.x, 15432i, u_input.a.x)))))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1027f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(132f, -740f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -384f))))) + _wgslsmith_f_op_f32(619f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -301f))))));
    global1 = 39405i;
    var var_2 = !select(global2.xz, select(global2.xx, !(!global2.zx), vec2<bool>(any(vec4<bool>(global2.x, true, global2.x, global2.x)), global2.x != true)), true);
    var var_3 = _wgslsmith_f_op_f32(-717f - -1453f);
    var_3 = _wgslsmith_f_op_f32(sign(-177f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.zx);
}

