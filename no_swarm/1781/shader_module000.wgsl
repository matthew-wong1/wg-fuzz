struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-785f, vec2<i32>(59319i, 31471i), vec3<f32>(732f, -293f, 693f), vec2<f32>(1007f, 1170f));

var<private> global1: bool = false;

var<private> global2: Struct_2;

var<private> global3: array<vec2<bool>, 23> = array<vec2<bool>, 23>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> u32 {
    global1 = false;
    return ~9288u;
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec4<i32>) -> Struct_3 {
    global2 = Struct_2(_wgslsmith_add_u32(~1u, firstTrailingBit(func_3(Struct_2(global2.a, arg_0)))), global2.b);
    global2 = Struct_2(global2.a, arg_1);
    var var_0 = Struct_4(global0.a < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.c.x, global0.a)), 1f)), vec2<i32>(global0.b.x, ~firstTrailingBit(_wgslsmith_add_i32(global0.b.x, 1i))));
    global1 = any(!vec2<bool>(any(select(vec3<bool>(arg_0, false, false), vec3<bool>(arg_1, true, var_0.a), true)), all(select(global3[_wgslsmith_index_u32(global2.a, 23u)], global3[_wgslsmith_index_u32(0u, 23u)], vec2<bool>(global2.b, true)))));
    var var_1 = Struct_4(false, u_input.a.zx);
    return Struct_3(global2.a, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.a)))))), Struct_2(_wgslsmith_dot_vec4_u32(min(_wgslsmith_div_vec4_u32(vec4<u32>(global2.a, global2.a, global2.a, 4294967295u), vec4<u32>(0u, 56706u, u_input.b.x, 1u)), ~vec4<u32>(49002u, 1u, global2.a, u_input.b.x)), vec4<u32>(global2.a, 4294967295u >> (global2.a % 32u), global2.a, 0u)), false));
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<u32>, arg_2: bool, arg_3: Struct_3) -> Struct_5 {
    global0 = Struct_1(_wgslsmith_div_f32(func_2(!all(vec2<bool>(arg_3.c.b, arg_2)), ~arg_1.x < arg_1.x, _wgslsmith_clamp_vec4_i32(~vec4<i32>(4068i, global0.b.x, global0.b.x, 49275i), firstLeadingBit(u_input.a), u_input.a >> (vec4<u32>(32717u, 0u, 76139u, global2.a) % vec4<u32>(32u)))).b, arg_3.b), firstLeadingBit(firstTrailingBit(~global0.b)) << (min(firstTrailingBit(arg_1.zy), ~(~arg_1.yy)) % vec2<u32>(32u)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.c), vec3<f32>(_wgslsmith_f_op_f32(global0.c.x * _wgslsmith_f_op_f32(-global0.a)), global0.d.x, arg_3.b)), global0.d);
    global0 = Struct_1(836f, -(~_wgslsmith_mod_vec2_i32(u_input.a.xz, vec2<i32>(28725i, -20309i)) ^ vec2<i32>(~0i, -9985i)), vec3<f32>(1000f, _wgslsmith_div_f32(-113f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.x * arg_3.b) + -948f)), _wgslsmith_f_op_f32(round(arg_3.b))), vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(398f * global0.d.x) * _wgslsmith_f_op_f32(round(global0.a))), _wgslsmith_f_op_f32(ceil(348f)), arg_3.c.b)), global0.c.x));
    global1 = -1143f >= _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-439f)) - arg_3.b))));
    let var_0 = arg_0.wwy;
    var var_1 = -vec4<i32>(firstTrailingBit(2147483647i), 22907i, global0.b.x, 1i);
    return Struct_5(Struct_4(false, var_1.xy), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.c.zy - vec2<f32>(1000f, -649f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(global0.c.x + global0.d.x), _wgslsmith_f_op_f32(round(arg_3.b))))), func_2(true && (global0.b.x <= _wgslsmith_mod_i32(u_input.c, u_input.c)), true, ~u_input.a).c, Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(trunc(arg_3.b))) * -289f), global0.b, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-199f, arg_3.b, -506f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, arg_3.b, global0.d.x) - global0.c))), global0.c, 0i == var_1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global0.c.zx, global0.c.zy, arg_0.yy)) - _wgslsmith_f_op_vec2_f32(max(global0.d, vec2<f32>(arg_3.b, -719f)))))), Struct_3(abs(~_wgslsmith_add_u32(1u, u_input.b.x)), arg_3.b, func_2(false, arg_0.x, vec4<i32>(i32(-1i) * -30777i, -2147483647i, -2147483647i, var_1.x)).c));
}

fn func_5(arg_0: Struct_5) -> Struct_4 {
    global1 = false;
    var var_0 = !vec4<bool>(true, arg_0.a.a, !global2.b, all(!vec2<bool>(global2.b, arg_0.c.b)));
    var var_1 = arg_0.e;
    var_1 = arg_0.e;
    let var_2 = _wgslsmith_f_op_f32(arg_0.e.b - 265f);
    return Struct_4(false, reverseBits(-(~_wgslsmith_clamp_vec2_i32(global0.b, u_input.a.xz, arg_0.a.b))));
}

fn func_6(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4) -> Struct_2 {
    var var_0 = min(_wgslsmith_mult_i32(global0.b.x, 1916i), 33476i);
    let var_1 = -975f;
    global0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_1 - -1124f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global0.a, var_1)) * _wgslsmith_f_op_f32(1701f * 1750f)))))), vec2<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -23037i, -34504i), countOneBits(~vec2<i32>(8588i, global0.b.x)))), global0.c, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-547f - 1594f) * 1862f), arg_1.a)));
    global1 = any(select(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~u_input.b.yy | vec2<u32>(global2.a, global2.a), u_input.b.zz), 23u)], !select(global3[_wgslsmith_index_u32(1u, 23u)], !global3[_wgslsmith_index_u32(9564u, 23u)], var_1 < global0.a), select(vec2<bool>(!global2.b, !arg_2.a), select(select(vec2<bool>(global2.b, true), vec2<bool>(true, arg_2.a), arg_2.a), select(global3[_wgslsmith_index_u32(u_input.b.x, 23u)], vec2<bool>(false, false), false), !vec2<bool>(arg_2.a, arg_2.a)), select(false, global2.a >= global2.a, !global2.b))));
    let var_2 = arg_2;
    return Struct_2(~global2.a, false);
}

fn func_1() -> Struct_2 {
    global3 = array<vec2<bool>, 23>();
    global2 = func_6(firstTrailingBit((i32(-1i) * -2147483647i) & abs(global0.b.x)) << (~(~0u) % 32u), Struct_1(-778f, _wgslsmith_div_vec2_i32(vec2<i32>(global0.b.x, -86i), -global0.b), vec3<f32>(-849f, _wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.d.x - global0.c.x) * _wgslsmith_f_op_f32(step(-1250f, 1215f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(global0.d - global0.d))))), func_5(func_4(!(!vec4<bool>(global2.b, true, true, global2.b)), vec3<u32>(global2.a, 1u, 1u) ^ u_input.b, any(!global3[_wgslsmith_index_u32(u_input.b.x, 23u)]), func_2(true, true, -u_input.a))));
    var var_0 = Struct_3(u_input.b.x, 564f, Struct_2(u_input.b.x, true));
    var var_1 = Struct_3(var_0.c.a, 1056f, Struct_2(_wgslsmith_mult_u32(abs(~u_input.b.x), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, 21698u), ~1u)), !(true && any(vec2<bool>(global2.b, var_0.c.b)))));
    var var_2 = !vec4<bool>(any(select(vec3<bool>(true, var_0.c.b, var_0.c.b), vec3<bool>(true, false, false), !vec3<bool>(var_0.c.b, false, true))), any(global3[_wgslsmith_index_u32(0u, 23u)]), any(global3[_wgslsmith_index_u32(u_input.b.x, 23u)]) || func_2(any(vec2<bool>(false, true)), !var_0.c.b, vec4<i32>(70227i, u_input.a.x, 2295i, -9378i)).c.b, var_1.c.b);
    return func_4(select(!(!(!vec4<bool>(true, var_2.x, var_1.c.b, var_0.c.b))), vec4<bool>(true, func_6(global0.b.x, Struct_1(global0.c.x, global0.b, vec3<f32>(global0.a, var_1.b, -634f), vec2<f32>(var_0.b, 674f)), func_5(Struct_5(Struct_4(var_2.x, vec2<i32>(-2147483647i, u_input.a.x)), vec2<f32>(var_1.b, var_1.b), Struct_2(u_input.b.x, var_1.c.b), Struct_1(var_1.b, vec2<i32>(u_input.c, 40968i), global0.c, vec2<f32>(150f, -1000f)), Struct_3(17757u, 361f, Struct_2(global2.a, var_0.c.b))))).b, all(vec3<bool>(true, var_2.x, var_2.x)), true), false), u_input.b, !((i32(-1i) * -global0.b.x) >= u_input.c), Struct_3(func_2(false, (50047i == u_input.c) & true, _wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, -2147483647i, u_input.a.x, global0.b.x), vec4<i32>(2147483647i, 36546i, global0.b.x, 25817i)), vec4<i32>(-6803i, -15031i, 0i, u_input.a.x))).c.a, var_1.b, func_6(global0.b.x, Struct_1(var_0.b, vec2<i32>(global0.b.x, global0.b.x), vec3<f32>(1863f, var_1.b, var_0.b), _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_1.b))), func_4(vec4<bool>(false, true, false, global2.b), firstLeadingBit(u_input.b), true, func_2(var_2.x, var_0.c.b, vec4<i32>(44288i, global0.b.x, -17141i, -1i))).a))).c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-375f, _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(180f + -1000f))), _wgslsmith_div_f32(805f, -1461f))))));
    global2 = func_1();
    var var_1 = ~vec3<u32>(global2.a, 21271u, ~u_input.b.x);
    let var_2 = global2.a;
    let var_3 = global0.b.x;
    var var_4 = func_6(reverseBits(0i), Struct_1(var_0, vec2<i32>(-59793i, 1i) << ((vec2<u32>(u_input.b.x, 8232u) << (u_input.b.xy % vec2<u32>(32u))) % vec2<u32>(32u)), vec3<f32>(_wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(-global0.c.x), _wgslsmith_f_op_f32(step(var_0, -1069f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1364f, global0.c.x)))), Struct_4(any(!global3[_wgslsmith_index_u32(0u, 23u)]), vec2<i32>(global0.b.x, 1i))).b & (1u > func_1().a);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, abs(-1i) & ~((global0.b.x & u_input.a.x) << (58150u % 32u)));
}

