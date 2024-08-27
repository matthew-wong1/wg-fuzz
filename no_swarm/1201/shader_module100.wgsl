struct Struct_1 {
    a: vec2<bool>,
    b: vec2<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec4<f32>,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: Struct_1 = Struct_1(vec2<bool>(true, false), vec2<i32>(-1i, -61973i), vec3<bool>(true, true, false));

var<private> global2: array<i32, 17>;

var<private> global3: f32;

var<private> global4: array<vec3<f32>, 25>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: bool) -> vec2<i32> {
    return -(vec2<i32>(abs(global1.b.x) & global1.b.x, global1.b.x ^ 1i) & vec2<i32>(0i, -global1.b.x));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_1 {
    let var_0 = countOneBits(vec3<u32>(u_input.b.x << (_wgslsmith_sub_u32(45842u, _wgslsmith_dot_vec3_u32(vec3<u32>(78936u, 1u, 24688u), vec3<u32>(4294967295u, 1u, 58436u))) % 32u), u_input.a.x, select(~_wgslsmith_clamp_u32(u_input.c.x, 59880u, u_input.a.x), u_input.b.x, select(true, all(global1.c), arg_0.c.x))));
    global0 = array<Struct_3, 1>();
    global2 = array<i32, 17>();
    var var_1 = _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(arg_0.b.x, _wgslsmith_add_i32(_wgslsmith_div_i32(global2[_wgslsmith_index_u32(4294967295u, 17u)], 0i), global2[_wgslsmith_index_u32(abs(u_input.d.x), 17u)])), firstTrailingBit(~2147483647i)), arg_0.b, abs(vec2<i32>(-2147483647i, 1i)));
    let var_2 = !(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, ~1i, arg_0.b.x), reverseBits(vec3<i32>(global1.b.x, arg_0.b.x, 65157i)) | vec3<i32>(1i, global1.b.x, arg_0.b.x)) == ~(-arg_0.b.x));
    return Struct_1(arg_0.a, countOneBits(-arg_0.b << (~var_0.zz % vec2<u32>(32u))), select(!arg_0.c, global1.c, arg_0.c));
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-397f, -1611f)) - _wgslsmith_f_op_f32(-552f + _wgslsmith_f_op_f32(f32(-1f) * -2951f))))));
    let var_1 = func_3(Struct_1(vec2<bool>(true, true | all(global1.c.zy)), max(_wgslsmith_sub_vec2_i32(vec2<i32>(global2[_wgslsmith_index_u32(0u, 17u)], -16027i), vec2<i32>(-1i, -1i)), func_2(false)), select(global1.c, !select(global1.c, vec3<bool>(false, false, false), global1.c), !vec3<bool>(global1.c.x, false, global1.c.x))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(639f, -1290f), -439f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1225f)) * -1015f)))), -778f, 537f);
    let var_2 = func_3(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(297f, -467f), -813f)) - _wgslsmith_f_op_f32(round(-350f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -221f) + -556f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_div_f32(2488f, 1348f) * _wgslsmith_f_op_f32(f32(-1f) * -246f)), -1719f, any(!vec3<bool>(false, var_1.c.x, false)))))));
    var var_3 = max(-vec3<i32>(global1.b.x << (u_input.d.x % 32u), var_1.b.x & global1.b.x, -2147483647i), vec3<i32>(0i, firstLeadingBit(_wgslsmith_mult_i32(-1i, global1.b.x)), _wgslsmith_dot_vec3_i32(-vec3<i32>(var_1.b.x, var_2.b.x, -28768i), vec3<i32>(-1i, global2[_wgslsmith_index_u32(u_input.a.x, 17u)], -2147483647i)))) ^ firstTrailingBit(-firstTrailingBit(vec3<i32>(global2[_wgslsmith_index_u32(u_input.d.x, 17u)], -15336i, var_2.b.x)));
    global1 = Struct_1(select(global1.a, !vec2<bool>(false, global1.c.x), var_2.a), func_2(!(!all(var_2.c))), !func_3(var_1, 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-340f * -481f) + -266f), _wgslsmith_f_op_f32(f32(-1f) * -1000f)).c);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(1040f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(1048f, -168f)), _wgslsmith_div_f32(1214f, -1769f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(627f)) + _wgslsmith_f_op_f32(select(1185f, -135f, false))))) - -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1187f * -647f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -457f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1512f)))), _wgslsmith_f_op_f32(f32(-1f) * -526f), !(!(global1.b.x > global1.b.x)))));
    global3 = _wgslsmith_f_op_f32(-var_0.x);
    global4 = array<vec3<f32>, 25>();
    global1 = func_1();
    var var_1 = Struct_1(select(global1.c.zx, !func_1().c.zx, !select(!global1.c.yy, vec2<bool>(global1.a.x, global1.c.x), !global1.c.xx)), select(abs(_wgslsmith_div_vec2_i32(global1.b, _wgslsmith_mult_vec2_i32(vec2<i32>(795i, global2[_wgslsmith_index_u32(108730u, 17u)]), vec2<i32>(46138i, global2[_wgslsmith_index_u32(4294967295u, 17u)])))), reverseBits(vec2<i32>(-2147483647i | global2[_wgslsmith_index_u32(21881u, 17u)], global1.b.x | -2147483647i)), global1.a.x && !(false && global1.c.x)), vec3<bool>(global1.c.x, all(global1.c), (global1.c.x != (true & global1.c.x)) & select(true, func_1().a.x, func_3(Struct_1(vec2<bool>(false, true), vec2<i32>(2147483647i, -12724i), vec3<bool>(global1.c.x, global1.c.x, global1.c.x)), 713f, 1000f, -1137f).a.x)));
    let var_2 = ~abs(u_input.a.xz) & abs(vec2<u32>(max(4294967295u, u_input.a.x) << (106344u % 32u), min(~u_input.b.x, select(0u, u_input.b.x, var_1.a.x))));
    var var_3 = u_input.d.x & 1u;
    var var_4 = max(max(vec3<i32>(~firstLeadingBit(var_1.b.x), ~28800i, var_1.b.x), vec3<i32>(global2[_wgslsmith_index_u32(~24542u, 17u)], ~var_1.b.x, ~7136i) << (vec3<u32>(~4294967295u, var_2.x & 1u, ~0u) % vec3<u32>(32u))), reverseBits(vec3<i32>(~(~(-30270i)), -(~53826i), _wgslsmith_mod_i32(func_3(Struct_1(var_1.c.yy, global1.b, var_1.c), var_0.x, -1075f, var_0.x).b.x, var_1.b.x ^ global1.b.x))));
    global0 = array<Struct_3, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1018f, var_0.x)), var_0.x) - _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-253f, var_0.x))))))));
}

