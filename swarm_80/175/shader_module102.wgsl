struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<i32>,
    d: vec3<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(Struct_1(vec3<u32>(0u, 17191u, 0u), false, vec4<u32>(19493u, 76696u, 0u, 4294967295u), vec3<i32>(0i, 1i, 22508i), 2147483647i), Struct_2(Struct_1(vec3<u32>(45449u, 0u, 50643u), false, vec4<u32>(0u, 1u, 1u, 1u), vec3<i32>(-8925i, 1i, 3351i), 1i)), Struct_1(vec3<u32>(114809u, 0u, 169459u), true, vec4<u32>(4294967295u, 21824u, 4294967295u, 9315u), vec3<i32>(-1i, 0i, 1i), 5271i), Struct_2(Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), false, vec4<u32>(17210u, 0u, 4294967295u, 1u), vec3<i32>(-31606i, -16985i, 2147483647i), 0i)));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: bool, arg_3: Struct_3) -> f32 {
    var var_0 = select(global1.c & arg_3.a.c, ~vec4<u32>(_wgslsmith_sub_u32(u_input.e.x, 0u), _wgslsmith_dot_vec2_u32(~arg_3.c.c.zw, arg_3.a.a.yz | global2.a.a.yx), firstLeadingBit(1u), abs(firstLeadingBit(1u))), vec4<bool>(global2.b.a.b, false, global2.b.a.b, !all(select(vec2<bool>(false, arg_3.b.a.b), vec2<bool>(false, global2.b.a.b), false))));
    return _wgslsmith_f_op_f32(step(-229f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1188f), arg_0, any(!vec4<bool>(false, global2.b.a.b, arg_2, true)))) - _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, arg_0, true)), -2492f), _wgslsmith_f_op_f32(-496f + _wgslsmith_f_op_f32(sign(-714f))))))));
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1274f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)) * _wgslsmith_f_op_f32(max(1036f, _wgslsmith_f_op_f32(func_3(984f, 1i, any(vec2<bool>(global2.b.a.b, true)), Struct_3(Struct_1(global1.a, global1.b, vec4<u32>(global1.c.x, global1.a.x, 71017u, 1u), vec3<i32>(8835i, 2147483647i, 13227i), global2.d.a.d.x), Struct_2(global2.a), global2.a, global2.d)))))));
    let var_1 = !global1.b;
    var var_2 = Struct_1(vec3<u32>(~1u, 47388u, 1u), all(vec2<bool>(global2.c.b, any(vec4<bool>(true, true, true, false)) && (global2.a.c.x == global2.b.a.c.x))), ~vec4<u32>(_wgslsmith_mult_u32(1u ^ u_input.a.x, 1u), u_input.e.x, 14945u ^ ~global2.c.a.x, _wgslsmith_clamp_u32(abs(32325u), 0u, 12454u)), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, 5650i, -2147483647i), -vec3<i32>(global1.d.x, global2.c.d.x, global2.d.a.e)), _wgslsmith_add_vec3_i32(global1.d, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, 0i, global2.b.a.e), vec3<i32>(0i, -17214i, global1.e)))), -global2.a.d), u_input.c.x);
    let var_3 = ~abs(_wgslsmith_mod_vec4_i32(countOneBits(vec4<i32>(8598i, 2147483647i, global1.d.x, 52411i) << (vec4<u32>(var_2.c.x, 57678u, 4294967295u, u_input.a.x) % vec4<u32>(32u))), _wgslsmith_sub_vec4_i32(-vec4<i32>(-1i, global2.a.e, -10036i, -13476i), vec4<i32>(-102i, var_2.e, global1.d.x, 50266i))));
    var var_4 = global2.b.a;
    return Struct_3(global2.a, Struct_2(Struct_1(firstTrailingBit(vec3<u32>(0u, var_4.a.x, var_4.a.x) & var_2.c.wxz), all(select(vec2<bool>(global1.b, var_2.b), vec2<bool>(true, global2.c.b), vec2<bool>(true, global2.b.a.b))), ~vec4<u32>(0u, 36035u, global1.c.x, u_input.a.x), vec3<i32>(_wgslsmith_clamp_i32(var_3.x, var_2.e, 9450i), global2.c.d.x, -67069i), var_3.x)), global2.c, global2.d);
}

fn func_1() -> Struct_3 {
    let var_0 = 1659f;
    var var_1 = func_2();
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(var_0)))))));
    let var_3 = vec3<i32>(func_2().a.d.x, var_1.c.d.x, ~u_input.b);
    var var_4 = ~abs(~(~_wgslsmith_div_vec2_u32(vec2<u32>(global1.a.x, 24277u), var_1.c.c.yz)));
    return func_2();
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<u32>) -> vec4<u32> {
    let var_0 = -vec4<i32>(abs(-global2.b.a.d.x), 1i, 1i, _wgslsmith_clamp_i32(max(global1.e, arg_0), arg_0, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global2.b.a.d.zx, vec2<i32>(-1i, arg_0)), -vec2<i32>(global1.d.x, global1.e))));
    let var_1 = select(~(arg_1.c.a.x >> (4294967295u % 32u)), u_input.a.x, _wgslsmith_add_i32(9724i, countOneBits(1i)) != max(_wgslsmith_div_i32(var_0.x, 25005i), _wgslsmith_mult_i32(var_0.x, global2.b.a.d.x))) & ~global2.c.c.x;
    global2 = Struct_3(func_2().d.a, arg_2, Struct_1(vec3<u32>(5397u, select(1u, ~arg_3.x, func_2().b.a.b), ~min(arg_2.a.c.x, 10426u)), arg_1.a.b, vec4<u32>(2364u, ~_wgslsmith_div_u32(global1.a.x, arg_3.x), ~arg_2.a.c.x, ~(~global1.c.x)), -_wgslsmith_mult_vec3_i32(vec3<i32>(global2.d.a.e, arg_2.a.d.x, 16021i), vec3<i32>(u_input.c.x, global2.a.e, global1.d.x)), var_0.x), func_2().d);
    global1 = global2.c;
    let var_2 = arg_1.b;
    return var_2.a.c;
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: vec4<u32>) -> bool {
    global2 = func_2();
    global1 = arg_1.a;
    var var_0 = reverseBits(~u_input.a);
    let var_1 = Struct_3(func_2().a, func_2().b, arg_1.a, arg_1);
    global0 = global1.b;
    return all(vec4<bool>(global1.b, 1u < var_0.x, !global2.b.a.b, !(true & var_1.b.a.b))) && all(vec3<bool>(true, select(arg_1.a.b, true, global2.d.a.b), global1.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(func_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-722f)), -458f) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-676f, -2480f))), vec2<f32>(-157f, -373f))), Struct_2(Struct_1(~global2.c.a, any(vec4<bool>(true, global2.a.b, global2.a.b, true)), global1.c & vec4<u32>(56879u, u_input.e.x, 19305u, 4294967295u), vec3<i32>(-11197i, u_input.d.x, global2.c.e), ~0i)), func_4(~_wgslsmith_dot_vec3_i32(u_input.c, global2.c.d), func_1(), global2.d, ~global1.c)), false, !(!(!all(vec3<bool>(false, global2.d.a.b, false)))));
    let var_1 = -1800f;
    var var_2 = -7936i;
    var var_3 = func_2().d.a.b;
    global0 = !global2.a.b;
    var var_4 = reverseBits(-_wgslsmith_div_i32(2147483647i, u_input.b));
    let var_5 = u_input.c.x;
    var var_6 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -776f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1675f, -824f)) * _wgslsmith_f_op_f32(var_1 - 981f))), -486f, _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1089f * 237f) + _wgslsmith_f_op_f32(-var_1))), -524f));
}

