struct Struct_1 {
    a: bool,
    b: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: u32,
    c: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct Struct_5 {
    a: Struct_2,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
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

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 30>;

var<private> global2: array<u32, 26>;

var<private> global3: array<Struct_4, 21>;

var<private> global4: array<Struct_4, 27>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1(arg_0: vec2<f32>, arg_1: u32) -> u32 {
    global0 = abs(_wgslsmith_div_i32(~(-2147483647i), u_input.c));
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x)));
    global3 = array<Struct_4, 21>();
    global4 = array<Struct_4, 27>();
    let var_1 = 412f;
    return ~(~_wgslsmith_div_u32(_wgslsmith_clamp_u32(4294967295u, arg_1, 4294967295u), max(arg_1, 4294967295u))) ^ 0u;
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: bool) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(~_wgslsmith_mod_i32(2147483647i, 78826i), _wgslsmith_add_i32(_wgslsmith_sub_i32(arg_0, arg_0), abs(-1i)), 1i, u_input.c), ~global1[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(35399u, 26u)], 30u)], firstTrailingBit(vec4<i32>(_wgslsmith_sub_i32(2147483647i, 2147483647i), arg_0, ~1i, -arg_0))), ~(~vec4<i32>(-1i, ~337i, u_input.c, u_input.c)));
    global2 = array<u32, 26>();
    let var_2 = global4[_wgslsmith_index_u32(var_0.b.x, 27u)];
    global2 = array<u32, 26>();
    return var_2.a.c;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_3) -> u32 {
    var var_0 = arg_3.c;
    let var_1 = arg_3.a.x;
    var var_2 = ~(~firstLeadingBit(reverseBits(23091u)));
    var var_3 = ~0u;
    global0 = 23789i;
    return 1u;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = global4[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.a.b.x, max(54887u, ~(arg_1 & (4294967295u << (u_input.a % 32u))))), 27u)];
    let var_1 = select(max(-38146i, _wgslsmith_mod_i32(_wgslsmith_add_i32(-713i, var_0.a.a.x) | var_0.a.a.x, ~_wgslsmith_add_i32(-75471i, 2147483647i))), countOneBits(1i), ~(arg_0.a.b.x >> (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(arg_0.a.b.x, 26u)], global2[_wgslsmith_index_u32(4294967295u, 26u)]) % 32u)) < (~global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0.a.b.x, arg_2.a.b.x), 26u)] >> (countOneBits(var_0.a.c.a.b.x) % 32u)));
    var var_2 = global3[_wgslsmith_index_u32(1u, 21u)];
    var var_3 = ~arg_1;
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -434f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.d.x)) + _wgslsmith_div_f32(167f, var_0.d.x)))) - var_0.d.x);
    return Struct_3(select(select(~vec4<i32>(25532i, var_0.a.a.x, 26857i, 1i), ~(-var_0.a.a), true), select(var_0.a.a, firstTrailingBit(global1[_wgslsmith_index_u32(42664u, 30u)]) >> (u_input.b % vec4<u32>(32u)), true), arg_0.a.a), ~(~func_3(any(vec3<bool>(var_2.b.a, true, false)), func_3(arg_0.a.a, 0u, vec3<f32>(-1941f, -1000f, var_0.d.x), Struct_3(vec4<i32>(-3579i, u_input.c, -1i, var_1), global2[_wgslsmith_index_u32(6517u, 26u)], arg_0)), _wgslsmith_div_vec3_f32(var_2.d, vec3<f32>(534f, var_4, 1000f)), var_0.a)), var_0.a.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 30>();
    let var_0 = vec2<i32>(u_input.c ^ _wgslsmith_sub_i32(u_input.c, u_input.c), ~u_input.c);
    var var_1 = ~(u_input.b.yy | vec2<u32>(~(u_input.a ^ 44243u), _wgslsmith_add_u32(global2[_wgslsmith_index_u32(u_input.b.x, 26u)], ~0u)));
    let var_2 = func_4(Struct_2(Struct_1(all(vec4<bool>(false, false, false, true)), countOneBits(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(20078u, 26u)], 26u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_1.x, 26u)], 26u)])))), max(func_3(true, global2[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(func_1(vec2<f32>(-1785f, 206f), u_input.a), 26u)], 26u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-625f, -1000f, 1000f)))), Struct_3(vec4<i32>(var_0.x, u_input.c, var_0.x, -27457i) >> (u_input.b % vec4<u32>(32u)), 4294967295u, func_2(28939i, Struct_1(false, vec2<u32>(77176u, u_input.b.x)), false))), u_input.b.x), Struct_2(Struct_1(true, max(_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, 1u), u_input.b.ww), abs(vec2<u32>(0u, 63163u))))));
    global3 = array<Struct_4, 21>();
    global4 = array<Struct_4, 27>();
    var_1 = u_input.b.zx;
    global2 = array<u32, 26>();
    let x = u_input.a;
    s_output = StorageBuffer(~(((u_input.b.xwx & vec3<u32>(u_input.a, 55991u, 0u)) & ~vec3<u32>(var_2.c.a.b.x, var_1.x, 42184u)) & firstLeadingBit(vec3<u32>(29629u, var_1.x, global2[_wgslsmith_index_u32(30925u, 26u)]) << (vec3<u32>(var_1.x, var_1.x, var_2.b) % vec3<u32>(32u)))));
}

