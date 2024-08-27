struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: Struct_3,
    d: Struct_3,
    e: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec4<i32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 28> = array<vec4<bool>, 28>(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false));

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 30>;

var<private> global3: array<u32, 25> = array<u32, 25>(4294967295u, 1u, 8502u, 4294967295u, 34081u, 8201u, 0u, 4294967295u, 1u, 14419u, 31872u, 0u, 11407u, 4294967295u, 33853u, 50501u, 0u, 5798u, 1u, 1u, 1u, 66890u, 0u, 0u, 4294967295u);

var<private> global4: Struct_3;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> i32 {
    let var_0 = arg_1;
    var var_1 = all(select(vec2<bool>(true, true), select(vec2<bool>(true, arg_0.a.x >= global3[_wgslsmith_index_u32(32053u, 25u)]), vec2<bool>(true, true), any(select(vec4<bool>(false, false, true, true), global0[_wgslsmith_index_u32(57972u, 28u)], vec4<bool>(true, true, true, true)))), false && (min(1u, global3[_wgslsmith_index_u32(4294967295u, 25u)]) >= ~0u)));
    let var_2 = false;
    let var_3 = Struct_3(vec2<u32>(global4.a.x, _wgslsmith_mult_u32(1u, abs(~51943u))));
    let var_4 = _wgslsmith_sub_vec4_i32(u_input.c, ~select(u_input.c, u_input.c, select(global0[_wgslsmith_index_u32(u_input.d.x, 28u)], !global0[_wgslsmith_index_u32(53445u, 28u)], vec4<bool>(false, var_2, true, var_2))));
    return u_input.b;
}

fn func_2(arg_0: i32) -> Struct_4 {
    var var_0 = abs(~(-func_3(Struct_2(vec3<u32>(15486u, global4.a.x, u_input.d.x)), Struct_3(vec2<u32>(20630u, 8343u)))));
    var var_1 = vec3<bool>(!all(!global0[_wgslsmith_index_u32(0u, 28u)]), true, true);
    var var_2 = var_1.yy;
    var var_3 = ~(~_wgslsmith_sub_u32(~u_input.d.x, reverseBits(~61301u)));
    var_1 = select(!vec3<bool>(false, var_2.x, true), vec3<bool>(all(!var_1.xy), var_2.x, (true || all(vec3<bool>(true, true, true))) | false), vec3<bool>(false, !var_2.x, !any(vec3<bool>(true, var_2.x, false))));
    return Struct_4(-(vec2<i32>(~arg_0, -1i) >> (abs(vec2<u32>(22208u, u_input.d.x) | vec2<u32>(46468u, u_input.d.x)) % vec2<u32>(32u))), vec4<bool>(any(select(!var_1.xy, !vec2<bool>(var_2.x, true), u_input.d.x > 4294967295u)), !select(var_1.x, var_1.x, false), (_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(-3290i, arg_0, -1i, -29915i)) >> (_wgslsmith_clamp_u32(u_input.d.x, global1.a.x, 0u) % 32u)) > _wgslsmith_div_i32(firstTrailingBit(31759i), u_input.b), !(!var_1.x)), Struct_3(_wgslsmith_sub_vec2_u32(~firstLeadingBit(vec2<u32>(1u, u_input.d.x)), global4.a ^ ~global1.a.zz)), Struct_3(vec2<u32>(34687u, global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(global3[_wgslsmith_index_u32(abs(1817u), 25u)], 1u), 25u)])), _wgslsmith_mult_i32(arg_0, 2147483647i));
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_3) -> vec3<bool> {
    global3 = array<u32, 25>();
    let var_0 = func_2(u_input.c.x);
    var var_1 = var_0.d;
    let var_2 = Struct_1(~_wgslsmith_add_u32(global3[_wgslsmith_index_u32(var_0.c.a.x, 25u)], global3[_wgslsmith_index_u32(abs(var_1.a.x), 25u)]), vec3<f32>(_wgslsmith_f_op_f32(step(-149f, _wgslsmith_f_op_f32(f32(-1f) * -352f))), _wgslsmith_f_op_f32(f32(-1f) * -1176f), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1366f), -435f)))), vec3<i32>(_wgslsmith_dot_vec4_i32(firstLeadingBit(u_input.a), ~vec4<i32>(-43317i, 3006i, -17160i, 76479i)), 2147483647i, var_0.e) | _wgslsmith_add_vec3_i32(vec3<i32>(arg_0.x, ~(-28329i), -u_input.a.x), arg_0));
    var var_3 = countOneBits(abs(reverseBits(firstLeadingBit(var_0.d.a.x)))) >> (36500u % 32u);
    return vec3<bool>(select(false, true && (53275u <= abs(var_0.d.a.x)), !all(select(vec2<bool>(var_0.b.x, false), vec2<bool>(false, false), var_0.b.wz))), (select(_wgslsmith_mod_u32(global3[_wgslsmith_index_u32(0u, 25u)], arg_1.a.x), _wgslsmith_mult_u32(global4.a.x, global3[_wgslsmith_index_u32(global4.a.x, 25u)]), false) != _wgslsmith_mult_u32(~u_input.d.x, 1u)) || all(vec2<bool>(var_0.b.x, true)), all(var_0.b.ww));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<bool>, 28>();
    var var_0 = select(vec3<bool>(true, true, true), select(!select(func_1(u_input.a.xzw, Struct_3(vec2<u32>(global3[_wgslsmith_index_u32(global1.a.x, 25u)], u_input.d.x))), vec3<bool>(true, false, true), all(vec4<bool>(false, false, false, false))), func_2(u_input.a.x).b.xyz, vec3<bool>(all(vec2<bool>(true, true)), true, select(any(vec2<bool>(false, true)), true, false))), func_2(-u_input.e).b.zxz);
    global0 = array<vec4<bool>, 28>();
    global1 = Struct_2(reverseBits(~max(u_input.d.yyy, vec3<u32>(83793u, 4294967295u, 13392u))) << (u_input.d.zxx % vec3<u32>(32u)));
    var var_1 = vec4<bool>(any(global0[_wgslsmith_index_u32(15039u, 28u)]), var_0.x, all(func_1(u_input.a.zyz, Struct_3(~vec2<u32>(40812u, 14131u))).zx), any(!func_2(_wgslsmith_sub_i32(-15837i, -1i)).b));
    let var_2 = _wgslsmith_mod_u32(u_input.d.x, global1.a.x);
    var var_3 = Struct_1(1u, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1643f, -476f, -1000f))), vec3<f32>(-674f, 870f, 1742f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(416f, 433f, 1112f) + vec3<f32>(337f, -1000f, -1000f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-500f, -175f, 947f) * vec3<f32>(351f, 263f, 526f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1168f, -146f, 748f)))), vec3<f32>(1f, 1f, 1f))), u_input.a.xxz);
    global3 = array<u32, 25>();
    var var_4 = ~u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_clamp_vec3_i32(~u_input.a.yyy, _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, 1i, var_3.c.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, var_3.c.x, var_3.c.x), var_3.c, u_input.a.ywy)), u_input.a.zww)), ~global1.a.x, abs(select(u_input.d, u_input.d, _wgslsmith_mod_i32(8537i, -18439i) < (var_3.c.x ^ 2147483647i))), vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.b.x)))), var_3.b.x, var_3.b.x, var_3.b.x));
}

