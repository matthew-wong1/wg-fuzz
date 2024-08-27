struct Struct_1 {
    a: vec2<bool>,
    b: vec3<f32>,
    c: f32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: bool,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<Struct_1, 31>;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(false, false), vec3<f32>(-1960f, 127f, 828f), -541f);

var<private> global3: array<f32, 23>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec4<u32> {
    global2 = global1[_wgslsmith_index_u32(reverseBits(11528u & u_input.b), 31u)];
    return countOneBits(_wgslsmith_mod_vec4_u32(~(~vec4<u32>(u_input.b, u_input.b, 50422u, u_input.b)), abs(select(vec4<u32>(u_input.b, u_input.b, 0u, u_input.b), vec4<u32>(u_input.b, u_input.b, u_input.b, 21267u), global2.a.x))) & _wgslsmith_sub_vec4_u32(vec4<u32>(firstTrailingBit(63401u), ~20116u, 14941u, select(u_input.b, 107480u, false)), countOneBits(vec4<u32>(u_input.b, u_input.b, 40140u, u_input.b) << (vec4<u32>(u_input.b, u_input.b, 65000u, 17398u) % vec4<u32>(32u)))));
}

fn func_2() -> Struct_1 {
    global0 = 1u;
    let var_0 = _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b), _wgslsmith_div_vec4_u32(~vec4<u32>(36388u, u_input.b, 4294967295u, 0u) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(144660u, 14721u, u_input.b, u_input.b), vec4<u32>(4294967295u, 4294967295u, 33739u, u_input.b), vec4<u32>(4294967295u, 1305u, u_input.b, u_input.b)) % vec4<u32>(32u)), firstTrailingBit(~vec4<u32>(4294967295u, u_input.b, u_input.b, 14853u)))), reverseBits(func_3(Struct_2(vec2<i32>(u_input.c, 24833i), true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(281f, -293f), global2.b.yy, global2.a))), Struct_2(u_input.d.xx, global2.a.x, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b, 23u)], -879f)))))));
    var var_1 = min(_wgslsmith_dot_vec2_i32(vec2<i32>(~(~u_input.d.x), u_input.e), vec2<i32>(_wgslsmith_mult_i32(u_input.e & -64780i, 1i), ~(-u_input.d.x))), i32(-1i) * -1i);
    var var_2 = !(!select(!select(vec3<bool>(false, false, global2.a.x), vec3<bool>(global2.a.x, true, global2.a.x), vec3<bool>(true, global2.a.x, false)), vec3<bool>(any(vec2<bool>(false, true)), global2.a.x, true), select(vec3<bool>(true, true, false), vec3<bool>(global2.a.x, global2.a.x, false), true)));
    let var_3 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.x, min(var_0.x, 0u)), 31u)];
    return global1[_wgslsmith_index_u32(u_input.b, 31u)];
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: i32) -> vec2<bool> {
    global3 = array<f32, 23>();
    let var_0 = Struct_2(~vec2<i32>(arg_1.x, _wgslsmith_mod_i32(11214i, -32634i)), true, arg_0.b.xx);
    var var_1 = Struct_2(select(vec2<i32>(-2147483647i, (i32(-1i) * -49459i) << (0u % 32u)), vec2<i32>(-2147483647i, var_0.a.x | -2147483647i) | ~reverseBits(arg_1.wx), !global2.a), false, _wgslsmith_f_op_vec2_f32(-global2.b.yz));
    var var_2 = var_0;
    let var_3 = var_0;
    return select(select(global2.a, select(!select(arg_0.a, vec2<bool>(true, var_0.b), vec2<bool>(true, true)), global2.a, all(vec4<bool>(true, false, arg_0.a.x, var_1.b)) && var_1.b), arg_0.a.x || var_2.b), vec2<bool>(global2.a.x, any(global2.a)), select(vec2<bool>(_wgslsmith_f_op_f32(round(global3[_wgslsmith_index_u32(u_input.b, 23u)])) < _wgslsmith_div_f32(arg_0.b.x, 301f), false), vec2<bool>(true, var_3.b), ~_wgslsmith_add_u32(u_input.b, 1019u) != u_input.b));
}

fn func_1() -> u32 {
    global1 = array<Struct_1, 31>();
    var var_0 = ~(-1i);
    global2 = global1[_wgslsmith_index_u32(4294967295u, 31u)];
    var var_1 = Struct_1(func_4(func_2(), ~vec4<i32>(1i, u_input.d.x, -u_input.a, u_input.a), 87098i), vec3<f32>(global3[_wgslsmith_index_u32(~_wgslsmith_add_u32(1u, _wgslsmith_div_u32(u_input.b, 28804u)), 23u)], _wgslsmith_div_f32(505f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-428f))))), 405f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.x)) + _wgslsmith_f_op_f32(-global2.c)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1056f, var_1.b.x, var_1.b.x)) * var_1.b));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = global1[_wgslsmith_index_u32(u_input.b, 31u)];
    var var_0 = u_input.d;
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.c))), -407f, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, 1u, 0u), reverseBits(vec3<u32>(38146u, 18125u, u_input.b))), 23u)]))), _wgslsmith_f_op_f32(abs(global2.c)));
    var_0 = -_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(-min(vec3<i32>(var_0.x, u_input.c, 65i), u_input.d), -firstLeadingBit(u_input.d)), -select(firstTrailingBit(vec3<i32>(u_input.e, 104754i, 14550i)), u_input.d, all(global2.a)));
    global3 = array<f32, 23>();
    global0 = ~max(~(~func_1()), ~func_3(Struct_2(vec2<i32>(0i, var_0.x), global2.a.x, vec2<f32>(global2.c, 2243f)), Struct_2(u_input.d.xy, true, global2.b.yx)).x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, countOneBits(vec2<i32>(2147483647i, u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(-40506i, 7153i), max(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, var_0.x), u_input.d.zy | vec2<i32>(-2147483647i, var_0.x)), ~(~var_0.xz))));
}

