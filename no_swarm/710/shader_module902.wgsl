struct Struct_1 {
    a: vec3<u32>,
    b: vec3<i32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec2<bool>,
    d: f32,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec3<bool>;

var<private> global2: array<vec3<u32>, 20>;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = !(!(!any(select(vec4<bool>(true, true, true, global1.x), vec4<bool>(global1.x, true, global1.x, true), false))));
    global1 = !vec3<bool>(false, false | !(var_0 & var_0), all(global1.yx));
    let var_1 = vec4<i32>(u_input.a.x, i32(-1i) * -max(_wgslsmith_clamp_i32(-20232i, 338i, u_input.a.x), select(u_input.a.x, 1i, global1.x)), -5051i, -(~u_input.a.x));
    global0 = firstLeadingBit(2147483647i) <= ~_wgslsmith_dot_vec3_i32(~vec3<i32>(65474i, var_1.x, -39126i), min(vec3<i32>(-28202i, -30539i, -1i) | var_1.zyw, var_1.yzy | u_input.a));
    var var_2 = Struct_3(Struct_1(~(~(~global2[_wgslsmith_index_u32(u_input.b, 20u)])), u_input.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(597f, -1040f, -1000f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1071f, 243f, -338f) - vec3<f32>(-1074f, -123f, -921f)))), max(var_1.zzz, reverseBits(vec3<i32>(-1i << (u_input.b % 32u), var_1.x, var_1.x))), !select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(global1.x, var_0, false)), var_1.x < 17617i), true), 1f);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-489f - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_2.a.c.x * var_2.a.c.x), _wgslsmith_f_op_f32(ceil(-265f))))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1000f - var_2.a.c.x))) + _wgslsmith_f_op_f32(-561f + var_2.a.c.x)));
}

fn func_2(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_mult_vec3_u32(vec3<u32>(7877u, reverseBits(u_input.b), u_input.b), min(~vec3<u32>(4144u, u_input.b, 0u), _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, u_input.b, 4294967295u), global2[_wgslsmith_index_u32(0u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)]))), max(vec3<i32>(firstLeadingBit(u_input.a.x), ~u_input.a.x, 1i), _wgslsmith_clamp_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32(vec3<i32>(-1i, 1i, -29498i), u_input.a), -u_input.a)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-180f + -1000f), _wgslsmith_f_op_f32(1352f - -1272f), -316f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1284f, -414f, 173f) * vec3<f32>(1000f, 489f, -590f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-705f, -765f, 1255f))), select(select(arg_0, arg_0, global1.x), arg_0, true)))), ~vec3<i32>(u_input.a.x ^ max(0i, -38360i), -max(0i, u_input.a.x), _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(0i, u_input.a.x, -1i)) << (_wgslsmith_div_u32(u_input.b, u_input.b) % 32u)), vec2<bool>(any(global1.zx), arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -204f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-463f)))) * _wgslsmith_f_op_f32(func_3())));
    var var_1 = Struct_4(_wgslsmith_f_op_f32(min(var_0.a.c.x, 325f)));
    var_0 = Struct_3(Struct_1(~_wgslsmith_div_vec3_u32(firstLeadingBit(global2[_wgslsmith_index_u32(var_0.a.a.x, 20u)]), ~global2[_wgslsmith_index_u32(u_input.b, 20u)]), _wgslsmith_mod_vec3_i32(var_0.b, vec3<i32>(1i, -u_input.a.x, -u_input.a.x)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(select(var_1.a, 318f, true)), var_0.d, _wgslsmith_f_op_f32(ceil(var_1.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, 359f, var_0.d))))), u_input.a, arg_0.xx, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_0.a.c.x)) + var_1.a));
    var var_2 = vec4<u32>(u_input.b, 0u ^ select(~6249u << (u_input.b % 32u), 1u, any(arg_0)), reverseBits(min(u_input.b, abs(24293u))), ~max(_wgslsmith_mod_u32(25910u, u_input.b), u_input.b));
    let var_3 = firstLeadingBit(vec2<u32>(u_input.b | var_0.a.a.x, ~countOneBits(~var_2.x)));
    return Struct_2(var_0.a, var_0.a.b.x);
}

fn func_1(arg_0: Struct_4, arg_1: Struct_1, arg_2: i32) -> vec3<bool> {
    var var_0 = u_input.b;
    var var_1 = func_2(vec3<bool>(_wgslsmith_f_op_f32(max(arg_0.a, _wgslsmith_f_op_f32(f32(-1f) * -250f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1.c.x, 347f)) + _wgslsmith_div_f32(arg_0.a, arg_1.c.x)), false, true & (_wgslsmith_mult_i32(u_input.a.x, 1i) > arg_1.b.x)));
    let var_2 = (vec2<i32>(u_input.a.x, min(~(-55851i), _wgslsmith_clamp_i32(arg_1.b.x, -9636i, u_input.a.x))) >> (~var_1.a.a.zz % vec2<u32>(32u))) << (arg_1.a.zy % vec2<u32>(32u));
    let var_3 = 1262f > arg_1.c.x;
    let var_4 = func_2(vec3<bool>(false, any(vec3<bool>(false, true, true)), true));
    return !select(!vec3<bool>(var_3 & global1.x, var_3, true), !vec3<bool>(true, true, global1.x || false), true);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<u32>, 20>();
    var var_0 = select(select(vec3<bool>(true, all(func_1(Struct_4(-2560f), Struct_1(global2[_wgslsmith_index_u32(u_input.b, 20u)], vec3<i32>(u_input.a.x, 1i, u_input.a.x), vec3<f32>(-1079f, 1102f, 128f)), u_input.a.x)), global1.x), vec3<bool>(false, !all(global1.zz), ~34390u <= u_input.b), true), select(select(select(select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, global1.x, false), global1.x), vec3<bool>(global1.x, global1.x, global1.x), !vec3<bool>(global1.x, global1.x, true)), !select(vec3<bool>(true, false, true), vec3<bool>(true, global1.x, true), true), any(select(vec4<bool>(global1.x, true, global1.x, true), vec4<bool>(true, global1.x, true, true), vec4<bool>(false, true, true, false)))), select(func_1(Struct_4(-179f), Struct_1(global2[_wgslsmith_index_u32(u_input.b, 20u)], vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(-2357f, 839f, -561f)), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 26722i), vec2<i32>(u_input.a.x, 0i))), select(select(vec3<bool>(global1.x, true, global1.x), vec3<bool>(global1.x, global1.x, global1.x), false), vec3<bool>(global1.x, false, global1.x), vec3<bool>(global1.x, false, true)), vec3<bool>(true, global1.x, global1.x)), select(func_1(Struct_4(-1892f), Struct_1(vec3<u32>(u_input.b, u_input.b, 0u), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<f32>(-1078f, 1759f, 1000f)), max(16729i, -2147483647i)), !vec3<bool>(false, global1.x, false), select(vec3<bool>(true, global1.x, true), !vec3<bool>(global1.x, true, false), func_1(Struct_4(-1464f), Struct_1(global2[_wgslsmith_index_u32(u_input.b, 20u)], u_input.a, vec3<f32>(-1612f, 470f, -1136f)), 2822i)))), vec3<bool>(global1.x, u_input.a.x < ~_wgslsmith_div_i32(u_input.a.x, u_input.a.x), true));
    global0 = func_1(Struct_4(1f), func_2(vec3<bool>(false, var_0.x & true, select(false, global1.x, var_0.x))).a, 0i).x | var_0.x;
    let var_1 = !vec4<bool>(true, var_0.x, true, all(!(!vec4<bool>(true, false, false, global1.x))));
    let var_2 = ~(-19779i);
    let var_3 = func_2(vec3<bool>(_wgslsmith_sub_u32(1u, u_input.b) > _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b, 0u), 1u << (u_input.b % 32u), 25547u), true, any(select(var_1, vec4<bool>(var_0.x, var_1.x, false, true), var_1)) || !(!var_1.x))).a;
    let var_4 = global1.x;
    let var_5 = Struct_4(175f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(var_3.b.x, -90631i));
}

