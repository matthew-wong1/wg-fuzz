struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(true, vec4<u32>(1u, 1u, 28634u, 27952u));

var<private> global1: vec3<bool> = vec3<bool>(false, true, false);

var<private> global2: vec3<f32> = vec3<f32>(1538f, -410f, -1000f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> bool {
    let var_0 = u_input.e;
    var var_1 = true;
    var var_2 = vec4<u32>(u_input.c, firstLeadingBit(_wgslsmith_mult_u32(_wgslsmith_mod_u32(~global0.b.x, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, 1u, 23052u, 1608u), vec4<u32>(34837u, u_input.c, global0.b.x, 7165u))), max(~13636u, u_input.c))), abs(_wgslsmith_div_u32(1u, global0.b.x)), _wgslsmith_dot_vec4_u32(firstTrailingBit(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, global0.b.x, global0.b.x, 1u), vec4<u32>(4294967295u, global0.b.x, u_input.a.x, 4294967295u))) & ~firstTrailingBit(vec4<u32>(u_input.c, 4294967295u, u_input.a.x, 43195u)), global0.b));
    var_2 = _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~(~(vec4<u32>(17435u, 0u, u_input.a.x, 8011u) >> (vec4<u32>(56606u, global0.b.x, u_input.a.x, var_2.x) % vec4<u32>(32u)))), min(~vec4<u32>(global0.b.x, 1u, 20683u, u_input.c), max(vec4<u32>(global0.b.x, 44808u, u_input.c, u_input.c) & vec4<u32>(44926u, global0.b.x, global0.b.x, u_input.b.x), ~vec4<u32>(71566u, global0.b.x, 59645u, var_2.x)))), global0.b);
    var_2 = global0.b;
    return select(!(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global2.x, global2.x))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.x)))), global1.x, global1.x);
}

fn func_2() -> vec3<f32> {
    global2 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1112f), _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_f_op_f32(-global2.x))), _wgslsmith_f_op_f32(trunc(-889f))) * vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.x), _wgslsmith_div_f32(780f, 1856f)), _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(step(global2.x, global2.x))), global2.x)), vec3<f32>(global2.x, global2.x, _wgslsmith_f_op_f32(min(global2.x, _wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1172f))))), select(vec3<bool>(~0u >= u_input.a.x, _wgslsmith_f_op_f32(ceil(823f)) == _wgslsmith_f_op_f32(-global2.x), 60799u <= _wgslsmith_sub_u32(global0.b.x, global0.b.x)), select(!vec3<bool>(false, global1.x, true), !(!vec3<bool>(false, true, global1.x)), !global1.x), vec3<bool>(!(!global0.a), !func_3(), select(global1.x || global0.a, false, true)))));
    var var_0 = _wgslsmith_f_op_f32(ceil(global2.x));
    var var_1 = Struct_2(any(!(!vec4<bool>(false, global1.x, false, global1.x))), _wgslsmith_mod_vec4_u32(~(~abs(vec4<u32>(7199u, global0.b.x, 0u, u_input.b.x))), abs(_wgslsmith_sub_vec4_u32(vec4<u32>(0u, u_input.b.x, 39030u, global0.b.x), ~vec4<u32>(u_input.c, u_input.b.x, 4294967295u, 1u)))));
    var var_2 = reverseBits(global0.b.xyw);
    global1 = select(!select(select(vec3<bool>(global1.x, false, false), !vec3<bool>(global1.x, true, global1.x), !vec3<bool>(var_1.a, false, true)), !select(vec3<bool>(global1.x, false, true), vec3<bool>(global0.a, global1.x, global0.a), global1.x), vec3<bool>(var_1.a, !var_1.a, false)), vec3<bool>(true, -2147483647i >= (-31388i | u_input.d), true), !(!select(!vec3<bool>(false, true, var_1.a), !vec3<bool>(false, var_1.a, true), any(vec4<bool>(true, var_1.a, global1.x, false)))));
    return _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -549f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -783f)), _wgslsmith_f_op_f32(-global2.x))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2) -> vec3<bool> {
    var var_0 = global0.a;
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.x)) * 869f))), _wgslsmith_div_f32(-420f, 1662f), _wgslsmith_div_f32(arg_0.a.x, global2.x)), _wgslsmith_add_i32(-52239i, i32(-1i) * -arg_1.b), !(!select(select(arg_0.c, vec3<bool>(global0.a, global0.a, false), global0.a), select(vec3<bool>(true, arg_2.a, true), vec3<bool>(global1.x, true, true), arg_0.c.x), arg_0.b < arg_0.b)));
    var var_2 = arg_2;
    var_2 = Struct_2(!global0.a, ~(~(~vec4<u32>(u_input.c, global0.b.x, global0.b.x, arg_2.b.x))));
    let var_3 = ~_wgslsmith_div_u32(13051u, arg_2.b.x);
    return arg_1.c;
}

fn func_1() -> Struct_1 {
    global1 = func_4(Struct_1(_wgslsmith_f_op_vec3_f32(func_2()), ~u_input.d, vec3<bool>(u_input.d <= countOneBits(-2147483647i), global0.a, global0.a)), Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global2.x, -1857f, global2.x) - vec3<f32>(global2.x, 316f, global2.x))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, -1000f, global2.x)))), _wgslsmith_mult_i32(_wgslsmith_clamp_i32(-u_input.d, firstLeadingBit(u_input.e), -29065i), 1i), vec3<bool>(false, any(vec2<bool>(true, global0.a)), true)), Struct_2(!global0.a, vec4<u32>(0u, ~min(70750u, global0.b.x), select(~global0.b.x, ~global0.b.x, all(vec4<bool>(global0.a, false, global0.a, true))), ~(~global0.b.x))));
    global2 = vec3<f32>(_wgslsmith_f_op_f32(round(global2.x)), -2000f, global2.x);
    let var_0 = u_input.e ^ 1i;
    let var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global2.x, -523f, global2.x))) + _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, global2.x, 249f))))))), _wgslsmith_sub_i32(i32(-1i) * -2907i, 21652i), !select(func_4(Struct_1(vec3<f32>(global2.x, global2.x, global2.x), 12863i, vec3<bool>(true, true, false)), Struct_1(vec3<f32>(901f, global2.x, global2.x), 1i, vec3<bool>(false, true, false)), Struct_2(global1.x, global0.b)), vec3<bool>(any(global1.yz), global0.a, !global0.a), func_4(Struct_1(vec3<f32>(global2.x, -870f, global2.x), u_input.e, vec3<bool>(false, false, global0.a)), Struct_1(vec3<f32>(global2.x, global2.x, global2.x), var_0, vec3<bool>(false, true, false)), Struct_2(true, global0.b))));
    global1 = !(!(!func_4(var_1, var_1, Struct_2(global0.a, vec4<u32>(11730u, global0.b.x, global0.b.x, 0u)))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * 1337f) + _wgslsmith_f_op_f32(global2.x * var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + -851f)), 1053f) - var_1.a), u_input.e, var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c;
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-461f + _wgslsmith_div_f32(global2.x, global2.x)))), _wgslsmith_f_op_f32(f32(-1f) * -170f)), vec2<f32>(global2.x, global2.x));
    var var_2 = func_1();
    var var_3 = func_1().c;
    let var_4 = ~global0.b.x;
    var var_5 = ~u_input.d;
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(global2.zy)), var_1));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_6.x), 785f, _wgslsmith_f_op_f32(var_1.x * var_6.x), _wgslsmith_f_op_f32(round(268f)))) * vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_2.a.x))), -214f, _wgslsmith_f_op_f32(-527f - 2875f), -1000f)), _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(1u, global0.b.x, _wgslsmith_mult_u32(global0.b.x, 15777u))), 4294967295u & var_4), 42149u, var_2.a, 2147483647i);
}

