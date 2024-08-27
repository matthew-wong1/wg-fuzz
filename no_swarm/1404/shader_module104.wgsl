struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: f32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: vec4<bool>,
    c: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(131f, vec4<bool>(false, true, true, false), true);

var<private> global1: Struct_3;

var<private> global2: array<vec2<bool>, 31>;

var<private> global3: array<i32, 32> = array<i32, 32>(-1i, -8353i, 11848i, -12719i, 17344i, -6353i, -3251i, -1i, 0i, -39127i, 0i, 49171i, -96067i, i32(-2147483648), -1i, -59161i, 1i, 26029i, -12384i, -2998i, 1i, 20648i, 0i, 1i, 15941i, 21527i, 1i, -1i, -27419i, 34850i, 10251i, 2147483647i);

var<private> global4: Struct_5;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_2() -> i32 {
    global0 = Struct_3(global0.a, global1.b, true);
    var var_0 = abs(_wgslsmith_add_u32(global4.a.b.a, ~11575u)) >> (~global4.a.b.a % 32u);
    global2 = array<vec2<bool>, 31>();
    global3 = array<i32, 32>();
    let var_1 = vec3<i32>(-_wgslsmith_div_i32(reverseBits(_wgslsmith_mult_i32(28984i, 8588i)), _wgslsmith_sub_i32(_wgslsmith_div_i32(u_input.b, -33904i), abs(global3[_wgslsmith_index_u32(0u, 32u)]))), 54996i, -(u_input.b | global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global4.b, ~4294967295u), 32u)]));
    return u_input.b;
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: f32) -> bool {
    let var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global1.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.a, 697f) * _wgslsmith_f_op_f32(-1394f * 210f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1282f)))), _wgslsmith_div_f32(global0.a, _wgslsmith_f_op_f32(floor(arg_2.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(select(-480f, -219f, arg_2.d.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(734f * -689f) * global1.a))), Struct_1(arg_2.b.a), 1328f, !global1.b);
    let var_1 = arg_1.b.zy;
    global4 = Struct_5(global4.a, var_0.b.a << (global4.a.b.a % 32u));
    let var_2 = Struct_4(var_0.b);
    var var_3 = arg_2;
    return any(global0.b.yyy);
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_5, arg_3: i32) -> Struct_5 {
    let var_0 = Struct_3(1000f, vec4<bool>(!global0.c, any(!select(vec4<bool>(global1.c, global4.a.d.x, arg_0, arg_2.a.d.x), vec4<bool>(false, true, arg_0, true), arg_2.a.d)), all(!global1.b), (arg_3 | (i32(-1i) * -1i)) >= ~(i32(-1i) * -19548i)), all(vec2<bool>(any(vec4<bool>(true, arg_2.a.d.x, arg_2.a.d.x, true)), arg_0)));
    let var_1 = arg_2.a.d.zxx;
    let var_2 = min(vec3<u32>(4294967295u, 0u << (u_input.a.x % 32u), abs(arg_2.a.b.a)), vec3<u32>(~u_input.a.x, u_input.c, _wgslsmith_dot_vec3_u32(u_input.a.zzy | u_input.a.wzy, vec3<u32>(1u, arg_1.a.a, u_input.a.x))) >> ((~vec3<u32>(global4.a.b.a, u_input.a.x, arg_1.a.a) & ~(~vec3<u32>(u_input.a.x, 18068u, 1u))) % vec3<u32>(32u)));
    var var_3 = Struct_1(~var_2.x);
    var var_4 = var_0;
    return Struct_5(Struct_2(arg_2.a.a, arg_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.a - global1.a))), global4.a.d), 1u);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>) -> u32 {
    var var_0 = vec3<i32>(-29388i, global3[_wgslsmith_index_u32(global4.a.b.a, 32u)] | u_input.b, firstLeadingBit(1i));
    global4 = func_4(func_3(_wgslsmith_clamp_i32(func_2(), -2147483647i, 1i), Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a, 788f)), !select(global0.b, global1.b, vec4<bool>(false, global1.b.x, false, global1.c)), any(global0.b)), global4.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.a.x))), Struct_4(Struct_1(u_input.a.x)), Struct_5(global4.a, u_input.c ^ u_input.a.x), -u_input.b);
    var var_1 = countOneBits(~(~(~global3[_wgslsmith_index_u32(1u, 32u)] >> (_wgslsmith_clamp_u32(global4.b, global4.b, u_input.a.x) % 32u))));
    let var_2 = arg_1;
    let var_3 = 1107f;
    return 68302u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(reverseBits(~0u), ~(~(~global4.a.b.a | func_1(1i, vec3<i32>(global3[_wgslsmith_index_u32(0u, 32u)], 1i, u_input.b)))), false);
    let var_1 = Struct_1(45502u);
    global2 = array<vec2<bool>, 31>();
    let var_2 = -(_wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(global3[_wgslsmith_index_u32(var_1.a, 32u)], global3[_wgslsmith_index_u32(u_input.a.x, 32u)], global3[_wgslsmith_index_u32(71091u, 32u)], u_input.b)), reverseBits(vec4<i32>(-40893i, 29807i, -8682i, -11920i))) ^ -vec4<i32>(min(u_input.b, global3[_wgslsmith_index_u32(global4.b, 32u)]), -u_input.b, -46328i, 5172i));
    global1 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(global4.a.a.x)))), !global1.b, any(select(vec4<bool>(true, any(global4.a.d.yw), func_4(false, Struct_4(Struct_1(var_1.a)), Struct_5(Struct_2(vec4<f32>(941f, global4.a.c, global4.a.a.x, global0.a), Struct_1(15056u), -692f, vec4<bool>(true, global4.a.d.x, global1.c, global0.c)), u_input.c), u_input.b).a.d.x, true), !global1.b, vec4<bool>(!global1.b.x, true, global1.b.x, select(global4.a.d.x, global4.a.d.x, global1.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1187f, global0.a, global0.a, _wgslsmith_f_op_f32(global0.a * _wgslsmith_div_f32(global0.a, 882f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.a.c), _wgslsmith_f_op_f32(abs(-284f)), global0.a, global4.a.a.x)))), vec3<f32>(1583f, -600f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.a - global4.a.c) - -787f))));
}

