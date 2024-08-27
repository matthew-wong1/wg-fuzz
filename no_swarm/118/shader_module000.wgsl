struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_2 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 27>;

var<private> global1: f32 = -814f;

var<private> global2: vec2<bool>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> i32 {
    global0 = array<vec4<u32>, 27>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global3.a.x)));
    var var_0 = Struct_3(0u ^ (~abs(35380u) ^ ~(u_input.d.x >> (u_input.d.x % 32u))), !(!select(vec4<bool>(arg_0.b, false, global2.x, false), vec4<bool>(global2.x, true, arg_0.b, true), vec4<bool>(false, false, arg_0.b, false))), u_input.e.xx | countOneBits(u_input.e.zz | _wgslsmith_add_vec2_i32(vec2<i32>(arg_1, arg_1), u_input.e.xz)));
    var var_1 = arg_1;
    var var_2 = _wgslsmith_add_u32(4294967295u, firstLeadingBit(~(~_wgslsmith_dot_vec3_u32(u_input.d, vec3<u32>(var_0.a, u_input.d.x, 0u)))));
    return -8763i;
}

fn func_2(arg_0: bool) -> Struct_3 {
    global0 = array<vec4<u32>, 27>();
    var var_0 = Struct_2(u_input.e.x, u_input.b, u_input.d.xx, Struct_1(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.a.x))), global3.a.x), func_3(Struct_1(vec3<f32>(859f, 434f, global3.a.x), true), -2147483647i) != firstTrailingBit(1i)), any(select(vec3<bool>(true, arg_0, !global2.x), !vec3<bool>(arg_0, false, false), select(vec3<bool>(global3.b, global3.b, true), vec3<bool>(global2.x, arg_0, global3.b), all(vec4<bool>(true, true, arg_0, true))))));
    var_0 = Struct_2(reverseBits(-2147483647i), ~(-u_input.a) & func_3(var_0.d, u_input.c), select(~u_input.d.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(abs(4294967295u), 4294967295u), reverseBits(~u_input.d.zz)), false), var_0.d, global2.x);
    let var_1 = _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(~_wgslsmith_dot_vec2_i32(firstLeadingBit(u_input.e.xx), u_input.e.xy), u_input.a));
    var var_2 = true;
    return Struct_3(_wgslsmith_dot_vec3_u32(~((vec3<u32>(0u, 0u, 82u) << (vec3<u32>(var_0.c.x, 59620u, 1u) % vec3<u32>(32u))) >> (firstLeadingBit(vec3<u32>(var_0.c.x, 4294967295u, 15257u)) % vec3<u32>(32u))), vec3<u32>(42930u, _wgslsmith_div_u32(~14471u, var_0.c.x), ~var_0.c.x)), vec4<bool>(!global3.b, !all(vec3<bool>(arg_0, true, false)), all(select(vec4<bool>(false, global2.x, true, true), vec4<bool>(global2.x, false, true, var_0.e), select(vec4<bool>(global2.x, true, global3.b, true), vec4<bool>(false, var_0.e, arg_0, global2.x), true))), true), vec2<i32>(~(~(u_input.e.x << (4294967295u % 32u))), ~(var_1 | -812i)));
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(select(global3.a, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-global3.a))), all(!arg_3.yyz))), false & any(!vec2<bool>(arg_3.x, global2.x)));
    global3 = Struct_1(global3.a, !(!any(arg_2.b.xxx)));
    global3 = Struct_1(global3.a, firstLeadingBit(abs(arg_2.a)) >= (select(~17160u, 4294967295u ^ arg_2.a, !arg_2.b.x) ^ ~_wgslsmith_clamp_u32(0u, 4294967295u, 1u)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(var_0.a))), !global2.x);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.x))) - -423f);
    return func_2(arg_2.b.x);
}

fn func_5(arg_0: u32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec2<u32>) -> vec2<f32> {
    global0 = array<vec4<u32>, 27>();
    let var_0 = func_4(abs(vec3<i32>(-36241i, func_2(false).c.x, u_input.b)), vec2<i32>(arg_1.c.x, arg_1.c.x), Struct_3(1u, arg_1.b, -vec2<i32>(_wgslsmith_add_i32(38042i, arg_1.c.x), ~u_input.b)), arg_1.b).b;
    global3 = Struct_1(vec3<f32>(-1294f, _wgslsmith_f_op_f32(-arg_2.a.x), arg_2.a.x), !var_0.x);
    global2 = !var_0.zz;
    global2 = var_0.xy;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_2.a.xx, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(341f, -869f)))), select(true, any(vec4<bool>(global3.b, false, true, false)), false))) * global3.a.yz));
}

fn func_1() -> u32 {
    var var_0 = u_input.e;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(func_5(u_input.d.x, func_4(countOneBits(vec3<i32>(0i, 2675i, 2147483647i)), ~var_0.xx, func_2(true), !vec4<bool>(global2.x, global2.x, global3.b, false)), Struct_1(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(941f, 1838f, global3.a.x))), select(false, global2.x, global3.b)), ~vec2<u32>(u_input.d.x, u_input.d.x))))));
    let var_2 = ~0u;
    var var_3 = 1u;
    global2 = !func_4(_wgslsmith_sub_vec3_i32(min(select(vec3<i32>(var_0.x, -1i, u_input.b), u_input.e, vec3<bool>(true, true, global2.x)), u_input.e), u_input.e), reverseBits(var_0.zx), func_4(~u_input.e, _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, 0i), u_input.e.xy), u_input.e.xy), func_4(firstLeadingBit(u_input.e), -u_input.e.xx, Struct_3(var_2, vec4<bool>(false, global3.b, global3.b, false), vec2<i32>(-59i, 15495i)), vec4<bool>(global3.b, global2.x, global2.x, global2.x)), !func_4(vec3<i32>(u_input.c, 1105i, u_input.a), var_0.zy, Struct_3(var_2, vec4<bool>(true, global3.b, global2.x, global2.x), vec2<i32>(-12933i, 1i)), vec4<bool>(global3.b, global3.b, true, global2.x)).b), vec4<bool>(global2.x, select(!global2.x, global2.x, var_1.x != global3.a.x), true, false)).b.zy;
    return u_input.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~29547i;
    global0 = array<vec4<u32>, 27>();
    var var_1 = Struct_3(firstTrailingBit(_wgslsmith_div_u32(1u, firstTrailingBit(49505u & u_input.d.x))), vec4<bool>(true, any(!(!vec3<bool>(false, global2.x, false))), global3.b, global3.b), _wgslsmith_mult_vec2_i32(reverseBits(~_wgslsmith_sub_vec2_i32(u_input.e.xz, vec2<i32>(10710i, u_input.b))), vec2<i32>(_wgslsmith_dot_vec3_i32(u_input.e, reverseBits(vec3<i32>(u_input.e.x, -1i, u_input.c))), abs(u_input.b))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1229f - _wgslsmith_f_op_f32(-global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1024f, global3.a.x))))));
    var_0 = -2147483647i;
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2080f, global3.a.x));
    let var_3 = _wgslsmith_mult_i32(u_input.a ^ reverseBits(_wgslsmith_clamp_i32(var_1.c.x, 0i, -2147483647i)), ~_wgslsmith_div_i32(var_1.c.x, firstLeadingBit(1i))) & -(~(-var_1.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec2_u32(u_input.d.zx, firstTrailingBit(select(u_input.d.xy, vec2<u32>(u_input.d.x, 1u), u_input.c >= -39685i))), ~countOneBits(min(_wgslsmith_div_vec4_u32(global0[_wgslsmith_index_u32(47731u, 27u)], global0[_wgslsmith_index_u32(48770u, 27u)]), global0[_wgslsmith_index_u32(func_1(), 27u)])), _wgslsmith_dot_vec2_u32(~select(u_input.d.yx | vec2<u32>(1u, var_1.a), select(vec2<u32>(u_input.d.x, var_1.a), u_input.d.xy, global2.x), 16767i > var_3), ~u_input.d.yx));
}

