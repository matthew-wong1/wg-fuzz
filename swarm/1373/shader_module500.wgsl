struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec3<f32>,
    d: bool,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    var var_0 = all(vec4<bool>(global0.d, !global0.d, false, global0.d));
    global0 = Struct_1(global0.a | _wgslsmith_add_vec3_i32(vec3<i32>(-global0.a.x, _wgslsmith_mod_i32(-2147483647i, global0.a.x), _wgslsmith_dot_vec2_i32(global0.a.xx, global0.a.yx)), reverseBits(global0.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-245f, global0.b))), vec3<f32>(-494f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x + 584f))), _wgslsmith_f_op_f32(-global0.b)), true);
    var var_1 = global0.a;
    var_0 = all(vec2<bool>(false, global0.d));
    var var_2 = _wgslsmith_f_op_vec3_f32(min(global0.c, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global0.c), global0.c, select(~u_input.a < (31707u & u_input.a), any(!vec2<bool>(global0.d, global0.d)), !all(vec3<bool>(false, global0.d, global0.d)))))));
    return _wgslsmith_f_op_f32(var_2.x - -517f);
}

fn func_2() -> Struct_1 {
    global0 = Struct_1(global0.a, -112f, global0.c, u_input.a < u_input.a);
    global0 = Struct_1(vec3<i32>(~(-46777i), -abs(global0.a.x >> (33694u % 32u)), 19809i), global0.b, global0.c, false);
    let var_0 = Struct_1(firstTrailingBit(-vec3<i32>(11288i, global0.a.x, global0.a.x) | vec3<i32>(_wgslsmith_sub_i32(2147483647i, global0.a.x), -10777i, ~global0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(817f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.c.x, _wgslsmith_div_f32(global0.c.x, -509f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(163f, global0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -143f) + global0.b)), global0.b), true);
    var var_1 = vec2<bool>(any(vec2<bool>(true, abs(-2147483647i) > (var_0.a.x << (1u % 32u)))), ~1u >= u_input.a);
    var var_2 = Struct_1(var_0.a ^ var_0.a, 581f, var_0.c, any(select(vec3<bool>(var_1.x, var_0.c.x > global0.c.x, true), !vec3<bool>(global0.d, var_1.x, global0.d), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, var_1.x), var_1.x))));
    return Struct_1(_wgslsmith_mod_vec3_i32(var_2.a, select(abs(-global0.a), vec3<i32>(~(-30067i), _wgslsmith_add_i32(18836i, var_0.a.x), 1i >> (1u % 32u)), vec3<bool>(var_0.b <= var_0.c.x, !var_2.d, true))), _wgslsmith_f_op_f32(-var_0.c.x), global0.c, false);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(-vec3<i32>(global0.a.x, 4497i, -2147483647i), -vec3<i32>(6079i, 2147483647i, arg_0.a.x)) | ~(~global0.a), global0.a), 1f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(arg_0.b, -706f))))), _wgslsmith_f_op_f32(abs(-810f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1182f, _wgslsmith_f_op_f32(exp2(global0.b))))), false);
    global0 = arg_0;
    var var_0 = func_2();
    let var_1 = arg_0.d;
    var var_2 = _wgslsmith_f_op_f32(-1391f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.c.x - 230f), 175f))));
    return Struct_1(_wgslsmith_clamp_vec3_i32(-reverseBits(var_0.a), var_0.a, ~vec3<i32>(arg_0.a.x, 34987i, 28527i)) << (_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(4294967295u, 1u, 110247u), vec3<u32>(u_input.a, 2716u, 1u) & vec3<u32>(0u, u_input.a, 4294967295u)), vec3<u32>(82038u >> (1u % 32u), firstTrailingBit(16551u), 1u), ~(~vec3<u32>(7697u, 0u, 0u))) % vec3<u32>(32u)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(var_0.c.x, -708f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1385f) * -1306f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.x * -533f) * _wgslsmith_f_op_f32(select(arg_0.b, arg_0.b, false))), _wgslsmith_f_op_f32(step(-1309f, _wgslsmith_f_op_f32(global0.c.x * global0.b))))), false);
}

fn func_1() -> Struct_1 {
    var var_0 = func_4(func_2());
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.b))))) + var_0.c.x);
    global0 = Struct_1(global0.a, 714f, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(-global0.c.x))), _wgslsmith_f_op_f32(trunc(var_1)), global0.c.x), false);
    var_0 = Struct_1(_wgslsmith_clamp_vec3_i32(min(~countOneBits(var_0.a), ~global0.a), -_wgslsmith_mult_vec3_i32(_wgslsmith_sub_vec3_i32(global0.a, var_0.a), global0.a), firstLeadingBit(vec3<i32>(-1i, var_0.a.x, 1i) | var_0.a)), 643f, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global0.c.x)) + _wgslsmith_f_op_f32(-global0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-515f)) + _wgslsmith_f_op_f32(-1288f - 592f))), -801f), global0.d);
    var var_2 = global0.d;
    return Struct_1(vec3<i32>(global0.a.x, _wgslsmith_add_i32(_wgslsmith_clamp_i32(global0.a.x, -2147483647i, -global0.a.x), 1i), ~global0.a.x), _wgslsmith_div_f32(561f, -732f), global0.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = Struct_1(global0.a, -1168f, vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), global0.c.x, -1725f), !(global0.a.x <= global0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c.x - -955f)), 355f, _wgslsmith_f_op_f32(max(1014f, global0.c.x)), _wgslsmith_f_op_f32(min(global0.c.x, global0.c.x)))), _wgslsmith_add_vec4_i32(vec4<i32>(-func_1().a.x, 1i >> (abs(1u) % 32u), ~2147483647i, ~_wgslsmith_mod_i32(1i, global0.a.x)), ~(-vec4<i32>(1i, global0.a.x, 16987i, 20524i))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(573f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * global0.c.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b + _wgslsmith_f_op_f32(f32(-1f) * -419f)), global0.c.x));
}

