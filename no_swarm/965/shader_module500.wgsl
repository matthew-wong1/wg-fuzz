struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
    c: u32,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_2,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<bool>;

var<private> global2: Struct_3;

var<private> global3: vec3<f32> = vec3<f32>(980f, -363f, -1922f);

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec4<bool> {
    var var_0 = _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(global2.d.e, -vec4<i32>(~(-3221i), global2.d.d.a, global2.e.a, countOneBits(-19519i))), ~_wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(12903i, global2.e.a, global2.d.e.x, -2147483647i), _wgslsmith_sub_vec4_i32(global2.d.e, vec4<i32>(global2.d.b, global2.d.d.a, global2.e.a, 1i))), reverseBits(global2.d.e)));
    var var_1 = (countOneBits(abs(~u_input.a)) << (u_input.a % 32u)) | ~(~u_input.a);
    var var_2 = Struct_3(all(select(!select(vec3<bool>(true, global1.x, global2.a), vec3<bool>(global2.a, global1.x, false), false), select(vec3<bool>(true, global1.x, global2.e.b.x), select(vec3<bool>(true, false, false), vec3<bool>(false, true, global2.a), vec3<bool>(true, false, global1.x)), !global2.d.d.b.x), global2.e.b.x)), global2.b, 4294967295u, global2.d, Struct_1(-32032i >> (_wgslsmith_clamp_u32(u_input.a, 22745u, 65749u) % 32u), vec2<bool>(all(vec4<bool>(global1.x, false, false, global1.x)), global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1369f - 1883f) + -172f)), ~global2.e.d));
    let var_3 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1191f, global2.b.x))))), _wgslsmith_f_op_f32(min(var_2.b.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global2.d.d.c))))), _wgslsmith_f_op_f32(trunc(global2.b.x))), -_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 0i, -2632i), global2.d.e.zwx) == _wgslsmith_mult_i32(-1i, _wgslsmith_add_i32(max(-28390i, 29091i), ~65942i)), countOneBits(_wgslsmith_dot_vec2_i32(var_0.wz, abs(firstTrailingBit(vec2<i32>(var_2.e.a, var_0.x))))), -1i);
    let var_4 = all(select(select(vec4<bool>(var_3.b, true, any(vec3<bool>(false, var_3.b, var_2.e.b.x)), true), select(select(vec4<bool>(false, global1.x, var_3.b, false), vec4<bool>(true, true, var_2.a, global2.d.d.b.x), vec4<bool>(true, global2.d.a, var_3.b, false)), select(vec4<bool>(true, var_3.b, var_2.d.a, false), vec4<bool>(true, true, false, global1.x), vec4<bool>(global1.x, false, false, false)), false & var_3.b), (var_2.e.c == var_3.a.x) | (global1.x | true)), !(!(!vec4<bool>(true, global2.d.d.b.x, true, true))), !select(!vec4<bool>(var_3.b, global1.x, false, true), vec4<bool>(global1.x, true, false, global1.x), !vec4<bool>(global2.d.d.b.x, false, true, true))));
    return !(!select(vec4<bool>(false, global1.x, true, any(vec4<bool>(global1.x, false, true, global2.e.b.x))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, var_4, global1.x, true), vec4<bool>(var_2.d.a, var_3.b, true, true), true), false), !select(vec4<bool>(true, global1.x, false, var_2.e.b.x), vec4<bool>(false, global2.e.b.x, global1.x, true), var_2.e.b.x)));
}

fn func_2(arg_0: vec3<bool>, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    let var_0 = 40859i;
    global3 = arg_2.b;
    global0 = 0i;
    let var_1 = !vec4<bool>(true, all(!vec4<bool>(false, arg_0.x, true, true)), arg_0.x, arg_2.e.b.x);
    global0 = 1i;
    return Struct_2(arg_2.a, _wgslsmith_dot_vec2_i32(-vec2<i32>(firstTrailingBit(global2.e.a), i32(-1i) * -1i), min(~_wgslsmith_mult_vec2_i32(vec2<i32>(arg_2.e.a, -12195i), vec2<i32>(var_0, var_0)), arg_2.d.e.zx)), ~vec3<u32>(4294967295u, arg_1.x, arg_2.d.d.d.x), global2.e, select(_wgslsmith_sub_vec4_i32(vec4<i32>(-15063i, -2147483647i, _wgslsmith_mod_i32(1i, var_0), 1i), arg_2.d.e), ~(~abs(global2.d.e)), func_3()));
}

fn func_1() -> Struct_3 {
    let var_0 = Struct_4(Struct_3(!(!(!global2.d.d.b.x)), global2.b, 68037u, func_2(vec3<bool>(true, !global2.d.a, true), ~global2.e.d, Struct_3(global1.x, global2.b, 49435u, Struct_2(false, 1i, vec3<u32>(global2.c, 7949u, global2.d.d.d.x), global2.d.d, vec4<i32>(global2.e.a, global2.e.a, global2.d.d.a, global2.d.b)), Struct_1(-57848i, global2.d.d.b, global3.x, vec4<u32>(0u, u_input.a, 32748u, global2.e.d.x)))), Struct_1(global2.e.a | _wgslsmith_mult_i32(-5543i, 56208i), func_3().xw, global3.x, ~_wgslsmith_sub_vec4_u32(global2.e.d, global2.d.d.d))), Struct_3(!(true & select(true, true, global2.d.d.b.x)), global2.b, reverseBits(firstLeadingBit(abs(u_input.a))), global2.d, global2.e), global2.d);
    global2 = Struct_3(true, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(global2.b)))))), _wgslsmith_add_u32(func_2(vec3<bool>(global1.x, func_3().x, !global2.d.d.b.x), firstLeadingBit(~global2.e.d), var_0.b).c.x, 1u), Struct_2(true, var_0.a.e.a, firstLeadingBit(global2.e.d.xwx), func_2(select(select(vec3<bool>(false, true, true), vec3<bool>(true, var_0.c.d.b.x, var_0.a.e.b.x), vec3<bool>(true, true, true)), vec3<bool>(global1.x, true, global2.e.b.x), vec3<bool>(true, global1.x, false)), firstLeadingBit(reverseBits(vec4<u32>(4294967295u, var_0.b.d.c.x, var_0.c.c.x, u_input.a))), Struct_3(global2.a, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-2643f, global3.x, 485f))), 0u, func_2(vec3<bool>(false, global2.d.a, global1.x), vec4<u32>(4294967295u, 1u, u_input.a, global2.d.c.x), var_0.a), global2.e)).d, var_0.a.d.e), Struct_1(reverseBits(_wgslsmith_sub_i32(select(2147483647i, global2.d.e.x, global1.x), ~45990i)), select(vec2<bool>(false, global2.d.a), var_0.b.e.b, global2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.x)), _wgslsmith_sub_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(global2.c, var_0.b.d.c.x, 4294967295u, 1u), vec4<u32>(42039u, 7866u, 15109u, var_0.b.c)), global2.d.d.d | vec4<u32>(var_0.b.e.d.x, global2.c, u_input.a, 19635u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, u_input.a, global2.e.d.x, 26214u), vec4<u32>(global2.d.c.x, 0u, 1u, 53320u)))));
    let var_1 = global2.e.b;
    let var_2 = ~(~vec2<u32>(41620u, max(u_input.a, global2.c)) | global2.e.d.zx);
    var var_3 = vec4<u32>(firstLeadingBit(abs(~(~u_input.a))), ~0u, ~(~u_input.a), u_input.a);
    return Struct_3(global2.e.b.x && true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.d.d.c, -160f, global2.b.x), vec3<f32>(var_0.b.b.x, global3.x, global3.x), vec3<bool>(var_0.b.e.b.x, global2.d.a, global2.d.a))))))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.a.b + var_0.a.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a.b, var_0.a.b)))), var_3.x, var_0.a.d, var_0.c.d);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = func_1();
    global1 = func_3().ywz;
    var var_0 = Struct_4(func_1(), Struct_3(((0u | u_input.a) > ~77015u) || (_wgslsmith_f_op_f32(step(-251f, -583f)) >= global2.e.c), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.e.c, global2.e.c, 1638f))), ~reverseBits(u_input.a | u_input.a), func_1().d, global2.e), func_1().d);
    let var_1 = var_0.a.e.d.x;
    global0 = global2.e.a;
    var_0 = Struct_4(func_1(), func_1(), global2.d);
    let var_2 = firstLeadingBit(-var_0.c.b);
    let x = u_input.a;
    s_output = StorageBuffer(-553f);
}

