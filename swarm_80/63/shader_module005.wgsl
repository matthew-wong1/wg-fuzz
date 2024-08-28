struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: vec4<bool>,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(14865u, 76484u, 0u, 4294967295u);

var<private> global1: bool = true;

var<private> global2: f32 = -1445f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_1(!(!all(vec4<bool>(false, true, true, true))) && ((_wgslsmith_dot_vec2_i32(u_input.c, u_input.c) ^ firstLeadingBit(u_input.a.x)) >= ((u_input.c.x | 3137i) >> (global0.x % 32u))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 1000f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(1638f, 1353f), _wgslsmith_div_f32(-906f, -1000f))), !select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), false & var_0.a))) - _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-329f, -1480f) * vec2<f32>(596f, -857f))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(598f, 1116f)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(825f, -1140f), vec2<f32>(1304f, -386f)))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(374f)), -578f)), var_0.a)));
    let var_2 = Struct_1(_wgslsmith_add_u32(u_input.d, _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 24089u, u_input.d), 47360u)) < ~0u);
    global2 = _wgslsmith_div_f32(-1040f, _wgslsmith_f_op_f32(max(-924f, _wgslsmith_f_op_f32(abs(905f)))));
    let var_3 = var_1;
    return vec3<u32>(u_input.b, abs(~abs(~15320u)), 0u);
}

fn func_2(arg_0: f32) -> u32 {
    var var_0 = arg_0 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0), arg_0))));
    let var_1 = u_input.a.x;
    let var_2 = vec4<u32>(global0.x, 11495u, abs(_wgslsmith_dot_vec3_u32(~func_3(), global0.wyw)), global0.x);
    global1 = any(select(vec3<bool>(false, true, true), select(vec3<bool>(all(vec3<bool>(true, true, false)), true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), any(vec2<bool>(true, false)))));
    let var_3 = Struct_1(false);
    return _wgslsmith_div_u32(~_wgslsmith_mult_u32(1u, ~1u), _wgslsmith_sub_u32(~min(32743u, u_input.b), u_input.e));
}

fn func_1() -> u32 {
    let var_0 = func_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -785f), _wgslsmith_f_op_f32(f32(-1f) * -400f)))) >> (~4294967295u % 32u);
    global1 = !select((all(vec3<bool>(false, true, false)) & true) | any(vec4<bool>(true, true, true, true)), false, select(all(vec3<bool>(false, true, false)), true, true));
    global2 = _wgslsmith_f_op_f32(-1f);
    var var_1 = Struct_1(true);
    let var_2 = Struct_1(var_1.a);
    return ~(~(~(select(global0.x, u_input.d, var_2.a) ^ func_3().x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec4<u32>(u_input.b, ~0u, u_input.b, func_1());
    var var_0 = true;
    var var_1 = Struct_4(countOneBits(~func_2(_wgslsmith_f_op_f32(min(-391f, 396f)))), Struct_3(Struct_1(all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), Struct_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec3<u32>(global0.x, global0.x, 18921u), ~vec3<u32>(global0.x, 42977u, u_input.b), vec3<bool>(true, true, false)), Struct_1(all(vec2<bool>(false, true))), _wgslsmith_div_vec4_i32(-u_input.a, vec4<i32>(-8078i, -1104i, u_input.c.x, 46641i))), reverseBits(countOneBits(~79216u))));
    let var_2 = _wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(select(countOneBits(var_1.b.b.d.x), var_1.b.b.d.x, !var_1.b.b.a.x), 45838i, -var_1.b.b.d.x, var_1.b.b.d.x & var_1.b.b.d.x), -var_1.b.b.d), vec4<i32>(var_1.b.b.d.x, firstTrailingBit(min(_wgslsmith_div_i32(75463i, -10480i), _wgslsmith_dot_vec4_i32(var_1.b.b.d, vec4<i32>(u_input.a.x, -2147483647i, u_input.c.x, -2147483647i)))), countOneBits(-var_1.b.b.d.x) ^ _wgslsmith_mult_i32(18636i, var_1.b.b.d.x), -9540i));
    global0 = countOneBits(~vec4<u32>(countOneBits(~global0.x), 1u, select(_wgslsmith_mod_u32(35149u, global0.x), 0u >> (var_1.b.b.b.x % 32u), var_1.b.b.c.a & var_1.b.a.a), u_input.e));
    var var_3 = var_1.b.b.a.x == !(~1u <= ~_wgslsmith_mod_u32(var_1.b.b.b.x, var_1.b.c));
    let var_4 = Struct_4(47483u, Struct_3(var_1.b.b.c, var_1.b.b, ~1u));
    var_0 = all(vec3<bool>(!((60861u >= var_4.b.b.b.x) & all(vec3<bool>(true, var_1.b.b.c.a, var_1.b.b.c.a))), true, var_1.b.b.a.x));
    var_1 = Struct_4(var_4.b.c, var_4.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1480f, 385f), vec2<f32>(552f, 2306f), var_4.b.b.a)))))));
}

