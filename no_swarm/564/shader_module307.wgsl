struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: Struct_2,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 21>;

var<private> global1: bool = false;

var<private> global2: array<vec4<u32>, 7> = array<vec4<u32>, 7>(vec4<u32>(37142u, 4294967295u, 23606u, 1u), vec4<u32>(4294967295u, 2909u, 4294967295u, 73778u), vec4<u32>(20742u, 4294967295u, 1u, 20450u), vec4<u32>(4294967295u, 1u, 86903u, 52498u), vec4<u32>(7353u, 4294967295u, 23276u, 0u), vec4<u32>(13764u, 1u, 82460u, 2852u), vec4<u32>(0u, 16762u, 4294967295u, 4294967295u));

var<private> global3: array<vec3<u32>, 7> = array<vec3<u32>, 7>(vec3<u32>(4294967295u, 28890u, 0u), vec3<u32>(1u, 0u, 1u), vec3<u32>(4294967295u, 23182u, 0u), vec3<u32>(29885u, 4294967295u, 7055u), vec3<u32>(0u, 25284u, 0u), vec3<u32>(27621u, 21948u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 68484u));

var<private> global4: array<u32, 1>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3) -> i32 {
    let var_0 = u_input.a.x;
    global4 = array<u32, 1>();
    global1 = !arg_0.c.a.c.x;
    return max(arg_0.c.a.a, arg_0.a);
}

fn func_2(arg_0: i32, arg_1: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-450f, 899f) - 329f) + 149f), _wgslsmith_f_op_f32(abs(-1039f)), _wgslsmith_f_op_f32(986f + _wgslsmith_f_op_f32(floor(-699f)))));
    let var_1 = _wgslsmith_dot_vec4_i32(max(vec4<i32>(1i, func_3(Struct_3(0i, 61400u, Struct_2(global0[_wgslsmith_index_u32(33132u, 21u)], u_input.b.zz, Struct_1(arg_0, var_0.zy, vec2<bool>(true, true), vec4<f32>(-1532f, var_0.x, var_0.x, var_0.x)), global0[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.b.x, 1u)], 1u)], 21u)], vec4<f32>(-1028f, var_0.x, -1536f, var_0.x)), true, global0[_wgslsmith_index_u32(u_input.b.x, 21u)])) << (~global4[_wgslsmith_index_u32(u_input.b.x, 1u)] % 32u), ~30353i, -(-2147483647i << (u_input.b.x % 32u))), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.a.x, 0i, arg_0, arg_1), vec4<i32>(20043i, arg_1, arg_0, 49877i), vec4<bool>(true, false, false, false)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_0, 2147483647i, arg_0, 16748i), vec4<i32>(arg_0, u_input.a.x, 1i, 28147i))), ~(-vec4<i32>(2147483647i, 2147483647i, -31560i, 39063i)))), ~firstLeadingBit(vec4<i32>(select(-4136i, 45580i, false), 0i, arg_1, abs(2147483647i))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(var_0.x))), 129f, 1f, var_0.x);
    var var_3 = ~max(abs(firstTrailingBit(select(u_input.b.zx, vec2<u32>(global4[_wgslsmith_index_u32(1u, 1u)], 42480u), false))), u_input.b.xx << (~vec2<u32>(4294967295u, u_input.b.x) % vec2<u32>(32u)));
    var var_4 = _wgslsmith_dot_vec2_u32(vec2<u32>(countOneBits(u_input.b.x), global4[_wgslsmith_index_u32(0u, 1u)]), u_input.b.xz);
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(trunc(1628f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1580f + -233f)) + _wgslsmith_f_op_f32(-var_0.x))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1f, 1f))), _wgslsmith_div_vec2_f32(vec2<f32>(261f, 153f), _wgslsmith_f_op_vec2_f32(-var_0.xy)))));
}

fn func_1() -> Struct_3 {
    global0 = array<Struct_1, 21>();
    let var_0 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_2(reverseBits(-2147483647i), u_input.a.x ^ u_input.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, -1593f)))), (global4[_wgslsmith_index_u32(4294967295u, 1u)] ^ u_input.b.x) <= (1u << (0u % 32u)))))));
    let var_1 = _wgslsmith_mod_u32(u_input.b.x, u_input.b.x);
    global0 = array<Struct_1, 21>();
    global4 = array<u32, 1>();
    return Struct_3(u_input.a.x, _wgslsmith_dot_vec2_u32(~(~firstTrailingBit(vec2<u32>(57995u, global4[_wgslsmith_index_u32(4294967295u, 1u)]))), vec2<u32>(_wgslsmith_dot_vec2_u32(select(u_input.b.yy, u_input.b.zx, true), ~u_input.b.xz), u_input.b.x)), Struct_2(global0[_wgslsmith_index_u32(9652u, 21u)], u_input.b.xy, Struct_1(_wgslsmith_sub_i32(u_input.a.x & u_input.a.x, countOneBits(u_input.a.x)), _wgslsmith_f_op_vec2_f32(floor(var_0)), !select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-836f, 284f, var_0.x, -322f), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1695f, 999f, var_0.x, -880f)))))), Struct_1(1i, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1243f, var_0.x) * _wgslsmith_f_op_vec2_f32(var_0 - vec2<f32>(var_0.x, 663f))), select(vec2<bool>(false, false), vec2<bool>(true, true), true), vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(249f * var_0.x), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.x, var_0.x, 1805f, 1000f), vec4<f32>(var_0.x, -914f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 802f, var_0.x, var_0.x) * vec4<f32>(var_0.x, var_0.x, -1536f, 526f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -1259f) - vec4<f32>(var_0.x, -645f, 1476f, 1030f))))))), !(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_0.x)))) != var_0.x), Struct_1(~u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-812f, _wgslsmith_f_op_vec2_f32(func_2(-1i, u_input.a.x)).x)), vec2<bool>(false, all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-984f, 469f, 294f, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-751f, var_0.x, var_0.x, -293f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = false;
    var var_0 = func_1();
    global4 = array<u32, 1>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.a.b.x * var_0.e.b.x)) - -506f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e.b.x)) - var_0.c.d.d.x) + _wgslsmith_f_op_f32(f32(-1f) * -301f)) + _wgslsmith_f_op_f32(f32(-1f) * -257f)));
    let x = u_input.a;
    s_output = StorageBuffer(-42530i, ~(~select(global2[_wgslsmith_index_u32(35120u, 7u)], global2[_wgslsmith_index_u32(reverseBits(52634u), 7u)], any(var_0.c.d.c))), -_wgslsmith_add_vec2_i32(~(-u_input.a.yy), vec2<i32>(2147483647i | var_0.e.a, u_input.a.x)));
}

