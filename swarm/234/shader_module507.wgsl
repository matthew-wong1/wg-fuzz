struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: u32,
    d: vec4<bool>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: f32,
    d: bool,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: f32,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 21>;

var<private> global1: vec4<i32>;

var<private> global2: u32 = 4294967295u;

var<private> global3: array<vec4<i32>, 14>;

var<private> global4: array<vec3<i32>, 17>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec4<i32>, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<f32>) -> f32 {
    let var_0 = !select(vec4<bool>(all(vec4<bool>(true, global0[_wgslsmith_index_u32(1u, 21u)], false, arg_1)), _wgslsmith_f_op_f32(-arg_3.x) > arg_3.x, true, true && (u_input.b == 2917i)), select(select(!vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], false, global0[_wgslsmith_index_u32(arg_2.x, 21u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false, arg_1), !vec4<bool>(arg_1, arg_1, arg_1, global0[_wgslsmith_index_u32(u_input.c.x, 21u)])), select(select(vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true), vec4<bool>(false, arg_1, true, false), global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), select(vec4<bool>(true, global0[_wgslsmith_index_u32(0u, 21u)], false, true), vec4<bool>(true, arg_1, false, arg_1), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false, global0[_wgslsmith_index_u32(0u, 21u)])), all(vec3<bool>(true, true, global0[_wgslsmith_index_u32(4294967295u, 21u)]))), true), true);
    let var_1 = _wgslsmith_div_vec3_u32(~(~u_input.c), ~(~u_input.c));
    let var_2 = Struct_3(Struct_2(var_0, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(962f, -1295f, arg_3.x, -3703f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1119f, -1000f, 327f, -100f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(arg_3.x)))), _wgslsmith_f_op_f32(abs(973f)))), !(_wgslsmith_f_op_f32(-1447f * -425f) >= _wgslsmith_f_op_f32(-arg_3.x)), countOneBits(min(max(vec3<i32>(-77989i, u_input.a, 7719i), vec3<i32>(43981i, global1.x, 29588i)), ~global1.xzz))), _wgslsmith_mult_i32(firstLeadingBit(arg_0.x), _wgslsmith_dot_vec4_i32(-_wgslsmith_mod_vec4_i32(vec4<i32>(2147483647i, u_input.a, global1.x, 1i), arg_0), min(arg_0 | vec4<i32>(573i, u_input.a, arg_0.x, -1i), ~vec4<i32>(global1.x, u_input.b, global1.x, 12827i)))));
    let var_3 = var_2.a;
    global2 = countOneBits(1u) << (abs(u_input.c.x) % 32u);
    return _wgslsmith_f_op_f32(sign(var_2.a.b.x));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> Struct_2 {
    var var_0 = vec2<f32>(arg_0.a.b.x, _wgslsmith_f_op_f32(arg_1.a.c - 1991f));
    var var_1 = Struct_4(u_input.b, ~(-_wgslsmith_mult_i32(global1.x << (4294967295u % 32u), ~arg_0.a.e.x)), arg_1.a.e.zx, reverseBits(countOneBits(u_input.c.xx)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -629f);
    global2 = 35996u;
    var_1 = Struct_4(global1.x, firstTrailingBit(-arg_1.b), arg_0.a.e.zy, vec2<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, var_1.d.x, 4294967295u, var_1.d.x), vec4<u32>(u_input.c.x, 4294967295u, var_1.d.x, var_1.d.x)) << (var_1.d.x % 32u), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, var_1.d.x), vec2<u32>(12677u, var_1.d.x)), 1u)));
    return Struct_2(!select(!select(vec4<bool>(false, arg_0.a.d, false, true), arg_1.a.a, vec4<bool>(arg_0.a.d, false, global0[_wgslsmith_index_u32(4294967295u, 21u)], arg_1.a.a.x)), vec4<bool>(true, true, true, all(vec3<bool>(true, arg_1.a.d, true))), any(!arg_0.a.a)), _wgslsmith_f_op_vec4_f32(-arg_1.a.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.a.b.x))) * 1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -871f) + _wgslsmith_f_op_f32(arg_1.a.c * _wgslsmith_f_op_f32(-arg_1.a.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(922f + arg_1.a.b.x) + _wgslsmith_f_op_f32(f32(-1f) * -644f)) == _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) + _wgslsmith_f_op_f32(func_3(global3[_wgslsmith_index_u32(32269u, 14u)], true, vec2<u32>(u_input.c.x, 0u), arg_0.a.b.wwx))))), ~global1.xyz);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec4<f32>, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = all(func_2(Struct_3(arg_3, ~_wgslsmith_mod_i32(0i, arg_0.a)), Struct_3(arg_3, 0i)).a.xxw);
    let var_1 = Struct_5(arg_1.a, arg_3.a.x, arg_1.a.d, func_2(Struct_3(arg_3, _wgslsmith_div_i32(~global1.x, arg_1.e.x)), Struct_3(arg_3, u_input.a | 17834i)).c, global1.xwz);
    let var_2 = abs(arg_0.c);
    let var_3 = _wgslsmith_mod_vec3_i32(global1.xyw & vec3<i32>(-2147483647i, var_1.e.x, -(~arg_1.e.x)), vec3<i32>(max((2147483647i & var_2.x) ^ _wgslsmith_mult_i32(-2573i, arg_3.e.x), func_2(Struct_3(Struct_2(arg_3.a, arg_2, var_1.d, false, arg_3.e), -2147483647i), Struct_3(arg_3, -28284i)).e.x), var_1.e.x, -reverseBits(u_input.a)));
    var_0 = !(!arg_3.a.x);
    return _wgslsmith_div_vec3_f32(arg_2.xzz, _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_3.b.xyx))))));
}

fn func_5(arg_0: bool, arg_1: vec3<f32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_sub_vec3_u32(u_input.c, _wgslsmith_div_vec3_u32(u_input.c, vec3<u32>(_wgslsmith_div_u32(1u, ~22173u), u_input.c.x, ~37392u)));
    var var_1 = select(!(!(!(!vec4<bool>(arg_0, global0[_wgslsmith_index_u32(20326u, 21u)], false, arg_0)))), !(!(!vec4<bool>(false, false, arg_0, true))), select(select(!func_2(Struct_3(Struct_2(vec4<bool>(true, true, true, global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), vec4<f32>(-291f, 1103f, -428f, arg_1.x), arg_1.x, false, vec3<i32>(u_input.b, u_input.b, 1i)), 1i), Struct_3(Struct_2(vec4<bool>(false, true, true, global0[_wgslsmith_index_u32(0u, 21u)]), vec4<f32>(-324f, arg_2, arg_1.x, 1248f), -1890f, false, global4[_wgslsmith_index_u32(23911u, 17u)]), u_input.b)).a, select(select(vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 21u)], global0[_wgslsmith_index_u32(var_0.x, 21u)], false, arg_0), vec4<bool>(global0[_wgslsmith_index_u32(var_0.x, 21u)], false, arg_0, false), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(var_0.x, 21u)])), vec4<bool>(global0[_wgslsmith_index_u32(15892u, 21u)], arg_0, arg_0, arg_0), any(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)]))), !vec4<bool>(arg_0, false, false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)])), func_2(Struct_3(func_2(Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(31018u, 21u)], false, true, arg_0), vec4<f32>(arg_1.x, arg_1.x, -612f, 1661f), -445f, false, vec3<i32>(-17320i, global1.x, u_input.a)), 1i), Struct_3(Struct_2(vec4<bool>(false, false, true, global0[_wgslsmith_index_u32(var_0.x, 21u)]), vec4<f32>(arg_2, -641f, -1397f, arg_1.x), arg_1.x, true, global1.www), 89839i)), ~global1.x), Struct_3(Struct_2(vec4<bool>(true, true, arg_0, true), vec4<f32>(407f, -1570f, arg_2, arg_2), -749f, arg_0, global1.xwy), -23587i)).a, -657f <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))));
    let var_2 = ~abs(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_0.x, u_input.c.x, u_input.c.x), vec4<u32>(var_0.x, var_0.x, u_input.c.x, 4294967295u))));
    var var_3 = (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -691f)) - arg_1.x) <= arg_2) && any(vec4<bool>(false, false, true, var_1.x));
    let var_4 = false;
    return 0u;
}

fn func_1() -> Struct_2 {
    global3 = array<vec4<i32>, 14>();
    global0 = array<bool, 21>();
    global2 = ~u_input.c.x;
    global2 = ~func_5(false, _wgslsmith_f_op_vec3_f32(func_4(Struct_4(~7747i, global1.x, select(global1.yw, vec2<i32>(u_input.b, u_input.b), vec2<bool>(global0[_wgslsmith_index_u32(1u, 21u)], false)), ~u_input.c.zx), Struct_5(Struct_1(false, vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), u_input.c.x, vec4<bool>(global0[_wgslsmith_index_u32(89724u, 21u)], global0[_wgslsmith_index_u32(57741u, 21u)], global0[_wgslsmith_index_u32(998u, 21u)], true)), true, select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(22031u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(19786u, 21u)]), vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(40904u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), false), _wgslsmith_f_op_f32(-195f - 688f), global1.zzx | global4[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec4<f32>(-102f, _wgslsmith_f_op_f32(154f - 138f), _wgslsmith_f_op_f32(-796f + 555f), -353f), func_2(Struct_3(Struct_2(vec4<bool>(true, false, global0[_wgslsmith_index_u32(44799u, 21u)], true), vec4<f32>(589f, -490f, -157f, -1129f), 431f, false, vec3<i32>(global1.x, -2147483647i, u_input.b)), u_input.a), Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true, global0[_wgslsmith_index_u32(4294967295u, 21u)]), vec4<f32>(118f, -403f, -1905f, -1271f), -172f, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global4[_wgslsmith_index_u32(u_input.c.x, 17u)]), global1.x)))), _wgslsmith_f_op_vec3_f32(func_4(Struct_4(u_input.b, -global1.x, global1.xw, ~u_input.c.yz), Struct_5(Struct_1(true, vec3<bool>(global0[_wgslsmith_index_u32(0u, 21u)], false, false), u_input.c.x, vec4<bool>(true, false, false, false)), true, vec4<bool>(false, false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true), _wgslsmith_f_op_f32(f32(-1f) * -838f), global1.xyz), vec4<f32>(1f, -242f, -1000f, -386f), Struct_2(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)], true), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(263f, 704f, 1531f, -193f), vec4<f32>(-1559f, 2281f, 186f, 490f), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false, false))), -934f, true, vec3<i32>(global1.x, 0i, 29331i) >> (vec3<u32>(u_input.c.x, 2751u, 0u) % vec3<u32>(32u))))).x);
    let var_0 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, u_input.c.x), 14u)];
    return func_2(Struct_3(Struct_2(func_2(Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true, false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)]), vec4<f32>(1476f, -629f, -893f, -474f), -134f, global0[_wgslsmith_index_u32(4294967295u, 21u)], var_0.wxw), -2147483647i), Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false, true, false), vec4<f32>(-947f, -447f, 1011f, 1000f), -602f, true, vec3<i32>(var_0.x, global1.x, 2147483647i)), 12070i)).a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1959f, 2628f, -2090f, 145f))), _wgslsmith_f_op_vec3_f32(func_4(Struct_4(u_input.a, var_0.x, vec2<i32>(u_input.a, global1.x), vec2<u32>(u_input.c.x, u_input.c.x)), Struct_5(Struct_1(global0[_wgslsmith_index_u32(36240u, 21u)], vec3<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], false), 4294967295u, vec4<bool>(true, global0[_wgslsmith_index_u32(4294967295u, 21u)], false, global0[_wgslsmith_index_u32(486u, 21u)])), true, vec4<bool>(false, global0[_wgslsmith_index_u32(81408u, 21u)], false, false), 1016f, vec3<i32>(-11761i, u_input.a, u_input.b)), vec4<f32>(1085f, -1415f, 955f, -411f), func_2(Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global0[_wgslsmith_index_u32(4294967295u, 21u)], global0[_wgslsmith_index_u32(39086u, 21u)]), vec4<f32>(-764f, 282f, -1578f, -2420f), 878f, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], global1.wyx), -1i), Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false, true), vec4<f32>(1012f, -1029f, 367f, 472f), -181f, true, global1.yxx), u_input.b)))).x, true, abs(vec3<i32>(-24387i, u_input.a, global1.x))), -var_0.x), Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)] || global0[_wgslsmith_index_u32(u_input.c.x, 21u)], false, select(false, true, false), !global0[_wgslsmith_index_u32(69668u, 21u)]), vec4<f32>(_wgslsmith_f_op_f32(ceil(300f)), -793f, -1000f, -378f), -442f, 1u >= u_input.c.x, min(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.b, -56293i, u_input.b), vec3<i32>(global1.x, global1.x, u_input.a)), -vec3<i32>(43600i, global1.x, 46660i))), u_input.b));
}

fn func_6(arg_0: Struct_3, arg_1: bool) -> Struct_5 {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_0.c)), 401f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.a.c, 1289f))), var_0.c, _wgslsmith_f_op_f32(exp2(func_1().b.x))) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-814f, _wgslsmith_f_op_f32(-arg_0.a.b.x), _wgslsmith_f_op_f32(-347f - _wgslsmith_f_op_vec3_f32(func_4(Struct_4(u_input.a, -1i, var_0.e.zz, vec2<u32>(u_input.c.x, u_input.c.x)), Struct_5(Struct_1(var_0.a.x, arg_0.a.a.yxy, 65202u, var_0.a), true, var_0.a, var_0.c, vec3<i32>(2147483647i, global1.x, global1.x)), arg_0.a.b, Struct_2(var_0.a, vec4<f32>(var_0.b.x, 1019f, 1624f, -1453f), var_0.b.x, var_0.d, vec3<i32>(global1.x, var_0.e.x, 0i)))).x), _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, arg_0.a.b.x, var_0.b.x, 2408f) * vec4<f32>(-338f, 689f, var_0.c, -2859f))), var_0.e.x == 1i)));
    var var_2 = -2572f;
    return Struct_5(Struct_1(false, func_1().a.xzz, _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.c.x, 4294967295u), u_input.c.zx), ~_wgslsmith_div_u32(9331u, 42923u)), !(!(!var_0.a))), any(vec4<bool>(func_1().a.x, false, global0[_wgslsmith_index_u32(u_input.c.x, 21u)], !func_1().a.x)), arg_0.a.a, _wgslsmith_f_op_f32(f32(-1f) * -274f), vec3<i32>(_wgslsmith_dot_vec3_i32(arg_0.a.e, vec3<i32>(min(2147483647i, 0i), global1.x, var_0.e.x)), 1i, _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(global1.zw, ~global1.wx), ~vec2<i32>(var_0.e.x, arg_0.b))));
}

fn func_7(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_5) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d + _wgslsmith_f_op_f32(-381f - -731f)) - arg_2.d);
    var_0 = arg_0;
    var var_1 = Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 21u)] | !global0[_wgslsmith_index_u32(~(~u_input.c.x), 21u)], !vec3<bool>(any(vec4<bool>(global0[_wgslsmith_index_u32(70123u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)], global0[_wgslsmith_index_u32(64367u, 21u)], global0[_wgslsmith_index_u32(0u, 21u)])) | true, false, !global0[_wgslsmith_index_u32(73315u, 21u)]), 13651u, !vec4<bool>(arg_2.a.c <= 1u, false, arg_2.b, global0[_wgslsmith_index_u32(23448u, 21u)]));
    global3 = array<vec4<i32>, 14>();
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~(~34243u);
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_7(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-2160f, -924f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1680f, 2176f, 947f)))), func_6(Struct_3(func_1(), 47255i), global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~4294967295u, abs(u_input.c.x)), 21u)])))));
    global4 = array<vec3<i32>, 17>();
    global2 = 0u;
    var var_1 = -1000f;
    let var_2 = func_2(Struct_3(func_2(Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 21u)], true, true, false), vec4<f32>(262f, var_0, var_0, var_0), -257f, false, global4[_wgslsmith_index_u32(4294967295u, 17u)]), -63577i), Struct_3(Struct_2(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 21u)], true, false, false), vec4<f32>(896f, 1160f, 1325f, var_0), var_0, true, global1.xzx), _wgslsmith_add_i32(2147483647i, -37136i))), 2147483647i), Struct_3(func_1(), _wgslsmith_sub_i32(-u_input.a, -countOneBits(85618i)))).e.zz;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_i32(i32(-1i) * -global1.x, firstLeadingBit(-2147483647i)), _wgslsmith_sub_vec2_u32(vec2<u32>(~4294967295u, 4294967295u) | reverseBits(reverseBits(vec2<u32>(0u, u_input.c.x))), u_input.c.yz), -global3[_wgslsmith_index_u32(u_input.c.x, 14u)]);
}

