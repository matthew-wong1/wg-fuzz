struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<f32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<bool, 5>;

var<private> global2: Struct_3 = Struct_3(Struct_2(false, Struct_1(vec3<bool>(true, false, false), false, vec3<f32>(1112f, -262f, 761f))), vec3<f32>(-1407f, -817f, -234f), 1i);

var<private> global3: Struct_2;

var<private> global4: array<bool, 5>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2) -> vec3<f32> {
    var var_0 = 1i;
    let var_1 = Struct_3(Struct_2(any(select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, true, arg_0.a.x, arg_0.b), vec4<bool>(global1[_wgslsmith_index_u32(5149u, 5u)], false, false, global0.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global3.a, global0.x, global1[_wgslsmith_index_u32(86444u, 5u)])), all(vec2<bool>(true, false)))), global3.b), _wgslsmith_div_vec3_f32(arg_0.c, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.b.c.x, _wgslsmith_div_f32(global2.a.b.c.x, arg_0.c.x), _wgslsmith_f_op_f32(ceil(global3.b.c.x))), vec3<f32>(_wgslsmith_f_op_f32(global2.a.b.c.x * 344f), arg_0.c.x, arg_1.b.c.x)))), 0i >> (~u_input.c.x % 32u));
    global1 = array<bool, 5>();
    var var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -536f), -1436f));
    var var_3 = var_1.a.b;
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.c - global3.b.c) + _wgslsmith_f_op_vec3_f32(ceil(arg_0.c)))))));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global3.b.c.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(global2.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -998f)), true)), -776f, global2.a.b.c.x)));
    global3 = global2.a;
    global2 = Struct_3(global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(!global2.a.b.a, global0.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(-753f, global3.b.c.x, global2.a.b.c.x) * vec3<f32>(global3.b.c.x, var_0.x, 1471f))), Struct_2(true || global1[_wgslsmith_index_u32(u_input.c.x, 5u)], global3.b))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-454f, 256f, 429f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global3.b.c.x, 769f, 1099f), global2.a.b.c)) - var_0.xzx))), 1i);
    global0 = select(global2.a.b.a, vec3<bool>(false & !any(global2.a.b.a.yz), global4[_wgslsmith_index_u32(17819u, 5u)], global3.a), false || all(vec3<bool>(true, any(vec2<bool>(global1[_wgslsmith_index_u32(22373u, 5u)], true)), true)));
    var var_1 = Struct_3(Struct_2(true, global2.a.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(global3.b.c)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(702f, var_0.x, global2.a.b.c.x) + var_0.zwy) + global2.a.b.c) + global2.b)), arg_0);
    return var_1.a.b;
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = ~(~vec2<u32>(~1u, u_input.c.x));
    var var_1 = _wgslsmith_f_op_f32(-global3.b.c.x);
    var var_2 = 1i;
    var_0 = u_input.d.zy;
    var var_3 = 1000f;
    return Struct_2(any(vec3<bool>(global2.a.a, select(global4[_wgslsmith_index_u32(0u, 5u)] | false, any(vec4<bool>(false, arg_0.x, global2.a.b.b, global0.x)), global0.x), true && any(vec2<bool>(global1[_wgslsmith_index_u32(20411u, 5u)], global3.a)))), func_2(~firstTrailingBit(-arg_1.c), _wgslsmith_add_vec4_i32(vec4<i32>(arg_1.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -88108i), vec2<i32>(global2.c, arg_1.c)), ~arg_1.c, ~arg_1.c), ~(vec4<i32>(global2.c, arg_1.c, arg_1.c, 1590i) | vec4<i32>(-72624i, -30493i, global2.c, 0i)))));
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    global3 = func_4(arg_0.a.b.a, Struct_3(Struct_2(arg_0.a.b.b, func_2(_wgslsmith_mod_i32(global2.c, -1i), -vec4<i32>(37417i, 2147483647i, global2.c, global2.c))), global3.b.c, _wgslsmith_mult_i32(_wgslsmith_div_i32(max(global2.c, global2.c), ~global2.c), _wgslsmith_dot_vec2_i32(vec2<i32>(13334i, -32935i), vec2<i32>(28338i, 34751i)))));
    var var_0 = vec4<bool>(select(global2.c > (~1i & min(global2.c, global2.c)), false, true), any(!select(select(vec4<bool>(true, false, global4[_wgslsmith_index_u32(u_input.c.x, 5u)], true), vec4<bool>(false, true, global3.a, global1[_wgslsmith_index_u32(u_input.c.x, 5u)]), global0.x), select(vec4<bool>(arg_0.a.b.a.x, global3.b.b, true, global1[_wgslsmith_index_u32(0u, 5u)]), vec4<bool>(true, global0.x, global0.x, true), vec4<bool>(false, true, arg_0.a.a, false)), true)), firstTrailingBit(_wgslsmith_div_i32(global2.c, _wgslsmith_mod_i32(global2.c, -1i))) <= -firstTrailingBit(~global2.c), any(func_4(arg_0.a.b.a, Struct_3(Struct_2(false, global2.a.b), _wgslsmith_f_op_vec3_f32(global3.b.c + global3.b.c), global2.c)).b.a));
    global3 = Struct_2(abs(~max(global2.c, global2.c)) <= _wgslsmith_mod_i32(-firstLeadingBit(0i), _wgslsmith_div_i32(_wgslsmith_sub_i32(global2.c, -19556i), 1i)), global2.a.b);
    global0 = !vec3<bool>(func_2(0i, -abs(vec4<i32>(3568i, global2.c, -37471i, global2.c))).b, any(vec2<bool>(any(vec4<bool>(true, true, false, true)), true == global4[_wgslsmith_index_u32(4294967295u, 5u)])), !func_2(max(global2.c, -26381i), vec4<i32>(global2.c, 13822i, global2.c, -1i) << (vec4<u32>(4294967295u, 1u, 24082u, u_input.c.x) % vec4<u32>(32u))).a.x);
    let var_1 = vec3<f32>(global2.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global3.b.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.b.c.x - -993f)), _wgslsmith_f_op_f32(-585f * global2.a.b.c.x) != func_4(global3.b.a, Struct_3(Struct_2(var_0.x, Struct_1(vec3<bool>(true, global1[_wgslsmith_index_u32(u_input.d.x, 5u)], global3.a), global4[_wgslsmith_index_u32(u_input.c.x, 5u)], vec3<f32>(1000f, -768f, -245f))), global3.b.c, 0i)).b.c.x)) - func_2(_wgslsmith_dot_vec4_i32(~vec4<i32>(global2.c, global2.c, global2.c, 0i), max(vec4<i32>(global2.c, global2.c, 0i, global2.c), vec4<i32>(0i, global2.c, 2147483647i, 2147483647i))), vec4<i32>(global2.c, global2.c, -23135i, 15746i) << (u_input.d % vec4<u32>(32u))).c.x), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(234f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(global2.a.b.c.x)), 1777f))));
    return arg_0.a;
}

fn func_5(arg_0: Struct_2, arg_1: Struct_4, arg_2: Struct_2, arg_3: u32) -> Struct_2 {
    var var_0 = Struct_4(func_1(arg_1));
    global4 = array<bool, 5>();
    global4 = array<bool, 5>();
    let var_1 = Struct_3(arg_0, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.a.b.c) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2.b.c + arg_2.b.c) * _wgslsmith_f_op_vec3_f32(global2.b * arg_1.a.b.c)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_1.a.b.c.x, global2.a.b.c.x, 687f), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.c.x, global3.b.c.x, global2.a.b.c.x))), var_0.a.b.a)))), firstLeadingBit(global2.c));
    var_0 = arg_1;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, Struct_1(vec3<bool>(global3.a, !all(vec3<bool>(global3.a, false, global3.b.b)), any(vec2<bool>(global2.a.b.b, false))), !all(!global3.b.a), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(1659f, global2.a.b.c.x, 391f) - global2.a.b.c), global2.b))))));
    global2 = Struct_3(func_5(var_0, Struct_4(func_1(Struct_4(Struct_2(global2.a.a, Struct_1(vec3<bool>(false, global3.a, false), var_0.b.b, vec3<f32>(1889f, global3.b.c.x, global3.b.c.x)))))), func_4(!(!vec3<bool>(false, global1[_wgslsmith_index_u32(94769u, 5u)], false)), Struct_3(var_0, _wgslsmith_f_op_vec3_f32(-global2.b), -22522i)), ~(~(~u_input.c.x))), _wgslsmith_f_op_vec3_f32(select(var_0.b.c, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.c.x, global3.b.c.x, var_0.b.c.x) - vec3<f32>(1409f, global3.b.c.x, -1000f))))), func_1(Struct_4(Struct_2(true, Struct_1(global3.b.a, global3.a, global3.b.c)))).b.a)), -1i);
    global4 = array<bool, 5>();
    let var_1 = select(select(!(!select(vec4<bool>(true, global1[_wgslsmith_index_u32(u_input.a, 5u)], global3.b.b, global1[_wgslsmith_index_u32(1u, 5u)]), vec4<bool>(true, false, false, global0.x), vec4<bool>(false, false, false, var_0.a))), select(vec4<bool>(true, var_0.a, any(vec4<bool>(false, global0.x, true, false)), true), !(!vec4<bool>(true, global3.a, global4[_wgslsmith_index_u32(46553u, 5u)], global3.a)), var_0.a), func_1(Struct_4(Struct_2(true, Struct_1(global2.a.b.a, global2.a.a, vec3<f32>(global3.b.c.x, global2.a.b.c.x, -714f))))).a), select(select(select(vec4<bool>(global0.x, global2.a.b.a.x, global4[_wgslsmith_index_u32(u_input.b.x, 5u)], false), vec4<bool>(var_0.a, true, false, global4[_wgslsmith_index_u32(10768u, 5u)]), true & global0.x), !(!vec4<bool>(false, true, global0.x, false)), !func_1(Struct_4(Struct_2(global3.a, global3.b))).a), select(!vec4<bool>(global2.a.b.a.x, false, global2.a.a, true), !vec4<bool>(false, global0.x, global0.x, true), true), vec4<bool>(false, true, any(vec3<bool>(false, true, true)), !(!var_0.b.a.x))), true);
    let var_2 = -firstLeadingBit(~(~abs(vec2<i32>(2147483647i, -19811i))));
    var var_3 = _wgslsmith_div_vec2_f32(global3.b.c.yx, _wgslsmith_f_op_vec2_f32(exp2(global3.b.c.xy)));
    let var_4 = Struct_4(Struct_2(all(vec2<bool>(true, global2.c != 13168i)), func_5(global2.a, Struct_4(Struct_2(global4[_wgslsmith_index_u32(u_input.d.x, 5u)], global3.b)), func_5(Struct_2(global0.x, global3.b), Struct_4(var_0), Struct_2(global0.x, Struct_1(var_1.xwx, true, vec3<f32>(1203f, var_0.b.c.x, 276f))), ~u_input.b.x), u_input.a).b));
    var var_5 = select(!select(vec4<bool>(true, true, true, true), !var_1, true), !var_1, !(!select(var_1, vec4<bool>(global2.a.b.b, true, global3.a, false), true)));
    var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -888f) + _wgslsmith_f_op_f32(trunc(-375f)))), global2.a.b.c.x) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.a.b.c.zy) * func_4(!vec3<bool>(false, global3.b.a.x, false), Struct_3(Struct_2(var_5.x, var_4.a.b), vec3<f32>(global2.a.b.c.x, -478f, var_4.a.b.c.x), -1i)).b.c.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.b.c.zx - var_4.a.b.c.zz) + global3.b.c.yx)))));
    let x = u_input.a;
    s_output = StorageBuffer(329f, -1740f);
}

