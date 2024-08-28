struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: vec4<bool>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(false, Struct_1(-2356f, vec2<bool>(true, true), vec3<bool>(false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, false)), -1000f, Struct_1(-356f, vec2<bool>(false, false), vec3<bool>(true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true))));

var<private> global1: vec3<f32>;

var<private> global2: vec4<i32> = vec4<i32>(2147483647i, 2147483647i, 1i, 1i);

var<private> global3: Struct_1 = Struct_1(-848f, vec2<bool>(true, false), vec3<bool>(true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true));

var<private> global4: array<bool, 4> = array<bool, 4>(true, false, false, true);

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3() -> vec3<f32> {
    let var_0 = !global0.a.b.e.ywy;
    let var_1 = vec4<i32>(global2.x, min(~reverseBits(u_input.e.x), u_input.e.x & _wgslsmith_dot_vec3_i32(u_input.e.wzx, -vec3<i32>(u_input.d, 24280i, 1i))), -u_input.d, abs(u_input.e.x));
    let var_2 = u_input.c.x;
    var var_3 = ~(-31342i);
    let var_4 = global0.a.d;
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, -1199f, global1.x) + _wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global3.a, -481f), vec3<f32>(global3.a, 1097f, var_4.a))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.a, 592f, var_4.a))), vec3<f32>(var_4.a, 970f, 2156f))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(max(global1.x, 1087f)), _wgslsmith_f_op_f32(f32(-1f) * -785f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(max(1429f, 1671f)), -360f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c, global0.a.b.a, global1.x)))));
}

fn func_2(arg_0: u32, arg_1: Struct_1, arg_2: u32) -> Struct_2 {
    global0 = Struct_3(global0.a);
    let var_0 = true;
    global1 = _wgslsmith_f_op_vec3_f32(func_3());
    let var_1 = _wgslsmith_div_u32(min(51351u, ~21019u >> (arg_0 % 32u)), countOneBits(arg_0));
    var var_2 = select(global2.x, ~u_input.d | 7827i, any(select(select(select(arg_1.c, vec3<bool>(global0.a.d.d.x, global0.a.d.d.x, global0.a.d.c.x), global0.a.b.b.x), select(arg_1.c, vec3<bool>(false, true, global4[_wgslsmith_index_u32(1u, 4u)]), global3.e.zyz), global4[_wgslsmith_index_u32(firstTrailingBit(arg_0), 4u)]), vec3<bool>(true && var_0, true, true), arg_1.e.zyy)));
    return Struct_2(true, Struct_1(arg_1.a, select(vec2<bool>(false, any(vec4<bool>(false, var_0, global3.c.x, global4[_wgslsmith_index_u32(1u, 4u)]))), !global0.a.d.e.zw, !select(global0.a.d.b, global0.a.d.d.yy, global0.a.d.e.wx)), !vec3<bool>(var_0, true | global4[_wgslsmith_index_u32(arg_0, 4u)], global4[_wgslsmith_index_u32(u_input.b.x, 4u)]), vec4<bool>(select(!var_0, select(global3.d.x, true, true), false), _wgslsmith_mult_i32(u_input.e.x, global2.x) < ~global2.x, global4[_wgslsmith_index_u32(1u, 4u)], arg_1.b.x), select(global3.d, global0.a.b.d, global0.a.d.d)), -1025f, Struct_1(global1.x, vec2<bool>(all(global3.c.zz), select(false, true, global0.a.b.e.x)), select(select(select(vec3<bool>(false, arg_1.d.x, false), arg_1.c, vec3<bool>(global4[_wgslsmith_index_u32(25151u, 4u)], false, var_0)), global0.a.b.d.xzz, global3.d.x), !select(vec3<bool>(global3.d.x, false, arg_1.d.x), vec3<bool>(true, false, arg_1.e.x), global0.a.a), true), global0.a.d.d, select(global0.a.d.e, !global0.a.d.d, all(vec4<bool>(true, false, true, global4[_wgslsmith_index_u32(37128u, 4u)])))));
}

fn func_4(arg_0: Struct_2, arg_1: f32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec4<bool> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.a, 176f))));
    let var_1 = abs(u_input.c.x);
    var var_2 = Struct_4(global0.a, arg_0.d, false, global0.a);
    global4 = array<bool, 4>();
    return vec4<bool>(!all(!func_2(51716u, arg_3.b, 0u).b.e.zzy), (_wgslsmith_clamp_u32(45458u, 4294967295u, 58014u << (var_1 % 32u)) == u_input.b.x) || var_2.c, false, u_input.c.x >= u_input.b.x);
}

fn func_1() -> Struct_5 {
    var var_0 = all(!func_4(Struct_2(false, global0.a.d, global1.x, global0.a.d), 795f, _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.b.a, global0.a.b.a, global3.a, 1455f) - vec4<f32>(global1.x, -1422f, 1136f, 1704f)), func_2(u_input.b.x, global0.a.d, 0u))) & false;
    var var_1 = 173f;
    global1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.c, global1.x, -887f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 227f, -1286f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.a.b.a, _wgslsmith_f_op_f32(round(global0.a.d.a)), _wgslsmith_f_op_f32(global1.x * -178f)), vec3<f32>(global3.a, _wgslsmith_f_op_f32(step(403f, 145f)), _wgslsmith_f_op_f32(round(global0.a.d.a))), func_2(~u_input.a, func_2(1u, global0.a.b, u_input.a).b, 1u).b.e.xyw)))));
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    let var_2 = global0.a.b.c.yx;
    return Struct_5(all(vec2<bool>(!var_2.x, !func_2(u_input.b.x, Struct_1(global0.a.c, global0.a.d.d.yx, vec3<bool>(false, global3.c.x, var_2.x), vec4<bool>(true, false, global3.c.x, global0.a.a), global0.a.d.d), 0u).d.d.x)), abs(u_input.c.xx));
}

fn func_5(arg_0: u32, arg_1: Struct_5, arg_2: Struct_5, arg_3: Struct_3) -> Struct_3 {
    global0 = arg_3;
    global4 = array<bool, 4>();
    let var_0 = Struct_1(-1000f, global0.a.b.d.xw, global0.a.d.e.xwz, vec4<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), -590f)) <= _wgslsmith_f_op_f32(1141f * _wgslsmith_f_op_f32(336f - 1723f)), any(global0.a.b.e), !any(global3.c), true), vec4<bool>(func_2(26853u, func_2(~arg_0, func_2(u_input.a, Struct_1(242f, vec2<bool>(false, false), vec3<bool>(true, true, false), global3.d, vec4<bool>(false, false, true, false)), arg_1.b.x).d, _wgslsmith_mod_u32(arg_1.b.x, u_input.b.x)).d, arg_2.b.x).d.e.x, true, _wgslsmith_f_op_f32(global0.a.b.a + _wgslsmith_f_op_f32(-global3.a)) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c) - _wgslsmith_f_op_f32(abs(-1445f))), !global3.b.x));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.d.a, -1805f));
    let var_2 = arg_3;
    return arg_3;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b;
    let var_1 = Struct_5(true, var_0.yz);
    let var_2 = func_5(var_1.b.x, Struct_5(true, ~firstLeadingBit(min(var_1.b, var_1.b))), func_1(), Struct_3(global0.a));
    let var_3 = func_2(_wgslsmith_div_u32(~max(_wgslsmith_dot_vec2_u32(var_0.zw, u_input.b.yy), var_1.b.x >> (var_0.x % 32u)), var_1.b.x), var_2.a.b, _wgslsmith_mod_u32(~(~abs(0u)), 33096u << (_wgslsmith_add_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.x, 33946u, u_input.c.x), u_input.c)) % 32u)));
    let var_4 = ~u_input.c.x;
    var var_5 = vec4<bool>(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(36663u, var_4, abs(1841u)), vec3<u32>(var_1.b.x, _wgslsmith_mult_u32(~38676u, _wgslsmith_dot_vec4_u32(u_input.b, var_0)), ~(~var_0.x))), 4u)], true, func_4(func_2(var_1.b.x, func_5(~1u, func_1(), var_1, var_2).a.d, ~_wgslsmith_add_u32(var_1.b.x, 0u)), 124f, vec4<f32>(var_3.c, func_5(~4294967295u, var_1, func_1(), var_2).a.b.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(404f, 332f)), _wgslsmith_f_op_f32(f32(-1f) * -635f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-561f + global3.a)))), func_5(abs(1u), Struct_5(var_3.d.a <= 257f, ~vec2<u32>(4294967295u, u_input.a)), Struct_5(any(vec3<bool>(true, var_3.a, true)), vec2<u32>(var_0.x, 73391u)), var_2).a).x, func_1().a);
    let var_6 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-978f * -404f) - -1166f), global0.a.b.b, func_2(~firstLeadingBit(abs(23526u)), func_5(var_4, func_1(), func_1(), var_2).a.d, var_1.b.x).b.d.zyx, vec4<bool>(select((var_0.x << (4294967295u % 32u)) < 21865u, false, select(true, true, all(vec2<bool>(global4[_wgslsmith_index_u32(0u, 4u)], global4[_wgslsmith_index_u32(u_input.a, 4u)])))), func_5(~(~var_4), func_1(), Struct_5(global0.a.b.e.x, select(vec2<u32>(var_4, var_0.x), vec2<u32>(u_input.c.x, u_input.a), var_2.a.d.d.yy)), var_2).a.a, all(var_3.d.d), countOneBits(~var_4) <= _wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c.x, 126816u)), firstLeadingBit(var_1.b))), !vec4<bool>(var_3.a, global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(4294967295u, 89667u)), _wgslsmith_mult_vec2_u32(var_0.xz, vec2<u32>(u_input.b.x, u_input.c.x))), 4u)], all(func_5(0u, var_1, var_1, Struct_3(var_3)).a.b.d), !(global3.b.x != global4[_wgslsmith_index_u32(u_input.c.x, 4u)])));
    let var_7 = _wgslsmith_add_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(14145i, global2.x), global2.xz), u_input.e.ww);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u >> (var_0.x % 32u), select(var_0.x >> (_wgslsmith_sub_u32(var_0.x, var_1.b.x) % 32u), firstTrailingBit(1u), -global2.x == -u_input.d), ~abs(max(var_4, var_1.b.x))));
}

