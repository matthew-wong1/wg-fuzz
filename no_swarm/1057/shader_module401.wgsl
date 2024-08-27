struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_3,
    c: vec2<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(-1i, 2147483647i, 1i, 2147483647i, 55853i, 0i, -24831i, -33795i);

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(vec4<u32>(36720u, 10904u, 4294967295u, 71168u), vec2<bool>(false, true)), 42883u, Struct_1(vec4<u32>(0u, 0u, 3912u, 44386u), vec2<bool>(true, true))), true, vec2<bool>(true, false), 0u, 4294967295u);

var<private> global2: u32 = 1479u;

var<private> global3: array<vec3<bool>, 13>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec3<bool>, arg_1: i32) -> vec3<i32> {
    global0 = array<i32, 8>();
    var var_0 = global1.a.a;
    global3 = array<vec3<bool>, 13>();
    global0 = array<i32, 8>();
    let var_1 = Struct_3(Struct_2(Struct_1(var_0.a ^ u_input.d, global1.c), abs(_wgslsmith_mod_u32(14876u >> (global1.d % 32u), var_0.a.x)), global1.a.c), !all(vec3<bool>(true, global0[_wgslsmith_index_u32(1u, 8u)] != u_input.b, arg_0.x)), !select(vec2<bool>(false | arg_0.x, arg_0.x), select(vec2<bool>(global1.c.x, true), var_0.b, global1.a.c.b), var_0.b), global1.e, 1u);
    return vec3<i32>(~47349i, u_input.a, ~reverseBits(i32(-1i) * -27433i) | -_wgslsmith_mod_i32(min(arg_1, u_input.b), firstLeadingBit(10752i)));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    let var_0 = -(vec3<i32>(~_wgslsmith_mult_i32(-2147483647i, global0[_wgslsmith_index_u32(19550u, 8u)]), -(~u_input.a), 38062i) & _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.b, u_input.a), -func_3(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], -2147483647i)));
    return 1u;
}

fn func_4(arg_0: Struct_1) -> u32 {
    global3 = array<vec3<bool>, 13>();
    var var_0 = true;
    let var_1 = select(vec3<bool>(global1.c.x, (!global1.b & (false || arg_0.b.x)) && true, global1.c.x), global3[_wgslsmith_index_u32(19861u, 13u)], select(!(!select(vec3<bool>(global1.a.c.b.x, false, false), global3[_wgslsmith_index_u32(arg_0.a.x, 13u)], true)), select(select(select(global3[_wgslsmith_index_u32(u_input.d.x, 13u)], global3[_wgslsmith_index_u32(25000u, 13u)], false), vec3<bool>(false, false, arg_0.b.x), true), select(global3[_wgslsmith_index_u32(global1.a.a.a.x, 13u)], select(global3[_wgslsmith_index_u32(4490u, 13u)], global3[_wgslsmith_index_u32(global1.a.c.a.x, 13u)], vec3<bool>(false, false, false)), any(vec3<bool>(global1.b, global1.c.x, global1.c.x))), global1.b), select(select(!global3[_wgslsmith_index_u32(0u, 13u)], vec3<bool>(false, global1.a.c.b.x, false), arg_0.a.x < 1u), !global3[_wgslsmith_index_u32(_wgslsmith_div_u32(55563u, 18589u), 13u)], true)));
    global1 = Struct_3(Struct_2(Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(16225u, 51560u, 4294967295u, u_input.d.x), ~vec4<u32>(0u, global1.e, 64725u, 70676u)), arg_0.b), ~_wgslsmith_add_u32(~4294967295u, max(global1.d, global1.d)), Struct_1(vec4<u32>(global1.d, global1.d, arg_0.a.x ^ 2962u, ~0u), !(!global1.c))), 71490u <= u_input.c, vec2<bool>(true, !((-2099i << (u_input.c % 32u)) < 1i)), _wgslsmith_mod_u32(~(_wgslsmith_add_u32(global1.d, 1429u) >> (~1u % 32u)), ~max(_wgslsmith_mult_u32(u_input.d.x, u_input.d.x), ~4622u)), ~arg_0.a.x);
    var_0 = all(!vec3<bool>(any(global3[_wgslsmith_index_u32(max(u_input.d.x, 0u), 13u)]), all(vec4<bool>(global1.a.c.b.x, true, false, var_1.x)), global0[_wgslsmith_index_u32(31307u, 8u)] > _wgslsmith_mult_i32(25500i, 1i)));
    return ~arg_0.a.x;
}

fn func_1(arg_0: Struct_4) -> u32 {
    global2 = _wgslsmith_mod_u32(func_4(Struct_1(vec4<u32>(1u, func_2(vec3<f32>(arg_0.c.x, -790f, -1064f), Struct_3(Struct_2(arg_0.d.a, arg_0.b.a.b, Struct_1(arg_0.b.a.c.a, arg_0.b.c)), true, vec2<bool>(global1.b, true), global1.d, arg_0.b.a.c.a.x)), min(1u, u_input.d.x), arg_0.b.a.a.a.x), global1.a.a.b)), ~(~(~(u_input.d.x ^ 4294967295u))));
    let var_0 = global1.a;
    var var_1 = 750f;
    let var_2 = all(select(select(!vec4<bool>(var_0.a.b.x, arg_0.b.b, true, true), vec4<bool>(true, global1.a.a.b.x, true, false), global1.a.a.b.x | var_0.c.b.x), select(!vec4<bool>(false, arg_0.b.a.c.b.x, global1.c.x, false), select(vec4<bool>(false, var_0.c.b.x, arg_0.d.c.b.x, true), vec4<bool>(false, true, arg_0.b.b, arg_0.d.a.b.x), vec4<bool>(arg_0.d.a.b.x, false, true, global1.c.x)), true), select(vec4<bool>(arg_0.d.a.b.x, var_0.c.b.x, false, arg_0.d.c.b.x), vec4<bool>(true, true, false, false), arg_0.b.b))) && arg_0.d.c.b.x;
    let var_3 = _wgslsmith_f_op_f32(floor(147f)) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-584f - _wgslsmith_div_f32(arg_0.c.x, arg_0.c.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - 1000f))));
    return ~(~_wgslsmith_add_u32(arg_0.b.e, max(_wgslsmith_mod_u32(u_input.c, 1u), _wgslsmith_div_u32(arg_0.b.d, 0u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    var var_0 = 33318u;
    global2 = min(_wgslsmith_mult_u32(_wgslsmith_add_u32(4294967295u, u_input.c), 1u), _wgslsmith_div_u32(_wgslsmith_div_u32(func_1(Struct_4(vec3<i32>(global0[_wgslsmith_index_u32(u_input.c, 8u)], global0[_wgslsmith_index_u32(global1.a.a.a.x, 8u)], -2147483647i), Struct_3(Struct_2(Struct_1(vec4<u32>(global1.e, 1u, 28444u, global1.d), vec2<bool>(false, false)), global1.a.c.a.x, global1.a.a), global1.a.c.b.x, vec2<bool>(global1.c.x, false), global1.d, 0u), vec2<f32>(-562f, -282f), Struct_2(global1.a.c, u_input.c, global1.a.c))), ~u_input.c), _wgslsmith_sub_u32(52852u, 1u))) << (func_4(Struct_1(min(vec4<u32>(global1.d, 46547u, global1.d, global1.d), vec4<u32>(global1.a.a.a.x, 28402u, global1.e, global1.a.a.a.x) << (vec4<u32>(global1.a.c.a.x, u_input.d.x, 1u, 76460u) % vec4<u32>(32u))), vec2<bool>(true, false))) % 32u);
    global0 = array<i32, 8>();
    global0 = array<i32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(-vec4<i32>(1i, 36809i, -46421i, 2147483647i) | ~vec4<i32>(u_input.b, global0[_wgslsmith_index_u32(global1.d, 8u)], u_input.b, 0i)), -1874f, _wgslsmith_sub_i32(19987i, i32(-1i) * -2147483647i));
}

