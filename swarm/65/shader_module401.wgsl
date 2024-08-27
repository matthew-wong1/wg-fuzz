struct Struct_1 {
    a: f32,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, false);

var<private> global1: array<vec2<i32>, 14>;

var<private> global2: i32;

var<private> global3: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(24173i, 2147483647i), vec2<i32>(0i, -10644i), vec2<i32>(1i, 22959i), vec2<i32>(0i, 2147483647i), vec2<i32>(2147483647i, -1i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(32814i, i32(-2147483648)), vec2<i32>(0i, 40475i), vec2<i32>(-9430i, -11448i), vec2<i32>(2147483647i, 6324i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(2147483647i, 40444i), vec2<i32>(25184i, -53507i), vec2<i32>(1i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(1i, 0i), vec2<i32>(51065i, -39833i), vec2<i32>(45091i, 45159i), vec2<i32>(i32(-2147483648), -4793i), vec2<i32>(-16550i, 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: f32) -> bool {
    global0 = !(!(!select(!vec2<bool>(global0.x, global0.x), select(vec2<bool>(true, true), vec2<bool>(true, true), false), select(vec2<bool>(arg_0, true), vec2<bool>(true, false), true))));
    global0 = select(vec2<bool>(false, true), !(!vec2<bool>(all(vec2<bool>(global0.x, arg_0)), u_input.d >= u_input.b)), true);
    global2 = abs(~_wgslsmith_mult_i32(i32(-1i) * -arg_2.x, arg_2.x));
    global0 = select(!select(!vec2<bool>(arg_0, true), !(!vec2<bool>(true, arg_0)), !vec2<bool>(arg_0, false)), !vec2<bool>(false, !(!arg_0)), select(arg_0, (672f < arg_1.a) & !global0.x, all(vec2<bool>(true, true))) | !((u_input.c >> (u_input.a % 32u)) >= abs(u_input.c)));
    let var_0 = true;
    return false;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32, arg_2: vec3<bool>, arg_3: bool) -> f32 {
    global1 = array<vec2<i32>, 14>();
    var var_0 = Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -650f) * _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1114f, 301f)))))), any(select(select(vec3<bool>(arg_2.x, false, true), arg_2, vec3<bool>(global0.x, arg_2.x, global0.x)), vec3<bool>(global0.x, arg_2.x, global0.x), vec3<bool>(false, false, false))), Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-640f + -867f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1653f)), -720f), firstTrailingBit(min(vec4<i32>(-2147483647i, u_input.c, 51118i, 42024i), vec4<i32>(u_input.c, 27634i, 2147483647i, arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -192f)))), -_wgslsmith_div_vec2_i32(select(global3[_wgslsmith_index_u32(~1u, 20u)], reverseBits(global1[_wgslsmith_index_u32(u_input.e.x, 14u)]), select(vec2<bool>(true, false), vec2<bool>(false, false), false)), vec2<i32>(-41336i, 1i)));
    var var_1 = var_0.a.a;
    var_1 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -686f), _wgslsmith_f_op_f32(trunc(var_1.x))), _wgslsmith_f_op_f32(select(var_0.a.c.d, -1231f, true))), _wgslsmith_div_f32(-479f, 937f))));
    global1 = array<vec2<i32>, 14>();
    return 1127f;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-636f, _wgslsmith_f_op_f32(func_4(-global3[_wgslsmith_index_u32(u_input.a, 20u)], _wgslsmith_dot_vec2_i32(global3[_wgslsmith_index_u32(0u, 20u)], vec2<i32>(-2147483647i, u_input.c)), !vec3<bool>(global0.x, true, global0.x), func_3(global0.x, Struct_1(-394f, 347f, vec4<i32>(0i, -1i, 2147483647i, 48147i), -424f), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), -1365f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-683f))) + 545f)), ~vec4<i32>(max(26840i | u_input.c, max(u_input.c, 0i)), _wgslsmith_dot_vec3_i32(vec3<i32>(17812i, u_input.c, 8960i), ~vec3<i32>(26834i, u_input.c, 0i)), countOneBits(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(2147483647i, u_input.c))), _wgslsmith_add_i32(~u_input.c, -2147483647i)), -1718f);
    let var_1 = u_input.d & u_input.e.x;
    let var_2 = Struct_1(var_0.d, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_0.d - _wgslsmith_f_op_f32(func_4(vec2<i32>(var_0.c.x, var_0.c.x), -var_0.c.x, vec3<bool>(global0.x, false, global0.x), true))))), firstLeadingBit(countOneBits(var_0.c & min(vec4<i32>(u_input.c, 0i, var_0.c.x, u_input.c), var_0.c))), _wgslsmith_f_op_f32(sign(480f)));
    var var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1000f, _wgslsmith_f_op_f32(-397f * _wgslsmith_f_op_f32(var_0.b - var_0.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, var_2.d)) * vec2<f32>(var_2.d, _wgslsmith_f_op_f32(round(var_0.a)))))), false, var_0);
    global1 = array<vec2<i32>, 14>();
    return var_2;
}

fn func_5(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_4 {
    let var_0 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0.x, u_input.c), select(arg_0.x, ~48538i << (min(u_input.a, u_input.e.x) % 32u), any(select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), vec2<bool>(global0.x, true))))), 50048i);
    global3 = array<vec2<i32>, 20>();
    return Struct_4(Struct_2(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_f_op_f32(min(-1750f, arg_1.d))))), any(!select(vec2<bool>(global0.x, false), vec2<bool>(false, global0.x), vec2<bool>(true, true))), arg_1), ~(~var_0) << (vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)));
}

fn func_6(arg_0: Struct_4) -> f32 {
    var var_0 = (select(select(~vec3<u32>(4294967295u, 42353u, u_input.a), ~vec3<u32>(u_input.d, 6529u, 0u), true), vec3<u32>(72416u, 103817u, _wgslsmith_clamp_u32(1u, 4294967295u, 0u)), any(vec2<bool>(true, true)) & all(vec3<bool>(global0.x, true, global0.x))) ^ ~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.d, 12259u, 6035u), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, u_input.d, u_input.e.x), vec3<u32>(1u, 0u, u_input.d)))) >> (vec3<u32>(51763u >> ((min(u_input.e.x, u_input.a) & u_input.e.x) % 32u), u_input.b, ~countOneBits(4294967295u >> (u_input.a % 32u))) % vec3<u32>(32u));
    var var_1 = !select(!select(select(vec2<bool>(false, true), vec2<bool>(true, true), arg_0.a.b), !vec2<bool>(global0.x, false), false), vec2<bool>(true, arg_0.a.b), !func_5(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), arg_0.a.c).a.b);
    global1 = array<vec2<i32>, 14>();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1931f);
    let var_3 = _wgslsmith_dot_vec3_i32(arg_0.a.c.c.yww, arg_0.a.c.c.zyy) <= _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 5073i), vec2<i32>(~0i, u_input.c));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.c.b) + _wgslsmith_f_op_f32(f32(-1f) * -1173f));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec3<f32>, arg_2: u32) -> Struct_1 {
    global0 = vec2<bool>(false, global0.x);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(978f))))) + _wgslsmith_f_op_f32(func_6(func_5(abs(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c)), func_2())))));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-829f, arg_0.x)))), arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-335f)) * _wgslsmith_div_f32(arg_1.x, arg_0.x))))));
    var var_2 = Struct_2(arg_0, func_3(false, Struct_1(_wgslsmith_div_f32(-1297f, _wgslsmith_f_op_f32(arg_1.x * -1131f)), 374f, vec4<i32>(-3105i << (arg_2 % 32u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, u_input.c), global1[_wgslsmith_index_u32(4294967295u, 14u)]), u_input.c, _wgslsmith_mult_i32(u_input.c, 2147483647i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1597f + arg_1.x))), max(vec4<i32>(-1i) * -vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c), vec4<i32>(u_input.c & 2147483647i, _wgslsmith_div_i32(u_input.c, u_input.c), reverseBits(u_input.c), -8810i)), var_0), Struct_1(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x))), countOneBits(countOneBits(vec4<i32>(-2147483647i, u_input.c, -82731i, u_input.c))) & -(~vec4<i32>(-1i, u_input.c, u_input.c, -1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0))));
    let var_3 = func_5(_wgslsmith_mult_vec4_i32(var_2.c.c, func_2().c), func_2());
    return var_3.a.c;
}

fn func_7(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: i32) -> bool {
    let var_0 = func_5(max(vec4<i32>(arg_2, arg_2 << (_wgslsmith_dot_vec3_u32(vec3<u32>(68750u, arg_0.x, u_input.d), arg_0) % 32u), u_input.c, u_input.c), ~_wgslsmith_mult_vec4_i32(arg_1.c ^ vec4<i32>(-2147483647i, 0i, 0i, arg_1.c.x), ~arg_1.c)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-250f, func_1(vec2<f32>(arg_1.b, arg_1.a), vec3<f32>(-614f, arg_1.d, arg_1.a), arg_0.x).d), _wgslsmith_f_op_f32(func_4(-vec2<i32>(1i, 4122i), 0i, vec3<bool>(global0.x, global0.x, global0.x), any(vec3<bool>(global0.x, false, true)))), !(arg_2 >= u_input.c))), 475f, func_2().c, -1664f)).a;
    let var_1 = global0.x;
    global0 = vec2<bool>(var_0.b, !global0.x);
    global2 = ~(-49330i);
    global2 = 1i;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0.x & !func_7(vec3<u32>(63562u, u_input.e.x, 17885u) << (vec3<u32>(68368u, 0u, u_input.d) % vec3<u32>(32u)), func_1(vec2<f32>(-2170f, -1187f), vec3<f32>(-520f, 215f, 651f), 4294967295u), 0i), func_5(~((vec4<i32>(u_input.c, u_input.c, -37459i, 1i) << (vec4<u32>(0u, u_input.a, 10065u, 0u) % vec4<u32>(32u))) ^ countOneBits(vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-526f * -1527f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -111f), -435f), abs(max(vec4<i32>(-6510i, 8945i, u_input.c, u_input.c), vec4<i32>(2147483647i, -7642i, u_input.c, -9389i))), _wgslsmith_div_f32(-424f, -655f))).a, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -643f)))))));
    global2 = _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c, abs(reverseBits(var_0.b.c.c.x | var_0.b.c.c.x))), 1i);
    var var_1 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.c.c.x, ~(~0u), 1u);
}

