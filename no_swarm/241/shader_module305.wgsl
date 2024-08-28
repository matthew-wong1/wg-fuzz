struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: Struct_2,
    d: Struct_2,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<bool> = vec2<bool>(true, true);

var<private> global2: array<u32, 30>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_2, arg_3: Struct_3) -> bool {
    return arg_2.b;
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_5 {
    let var_0 = arg_1;
    global1 = !arg_1.d.a.b.xx;
    let var_1 = Struct_5(var_0, Struct_2(Struct_1(abs(var_0.d.a.a), select(select(arg_1.c.a.b, var_0.d.a.b, var_0.c.a.b), vec3<bool>(arg_1.c.b, true, true), arg_1.d.b), abs(arg_1.a.a.x), all(arg_0)), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * -1235f) - -193f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-1313f)), _wgslsmith_f_op_f32(var_0.b * arg_1.d.c))))), select(arg_2.xxw, ~vec3<i32>(~u_input.e, -29219i, _wgslsmith_div_i32(25441i, var_0.c.a.a)), all(arg_1.c.a.b.zy)));
    let var_2 = firstTrailingBit(-var_1.c.xx);
    global2 = array<u32, 30>();
    return Struct_5(Struct_4(Struct_3(min(vec4<u32>(global2[_wgslsmith_index_u32(0u, 30u)], 1u, u_input.a.x, arg_1.d.a.c), arg_1.a.a >> (u_input.a % vec4<u32>(32u)))), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.c.c))), arg_1.d, Struct_2(var_0.c.a, (arg_1.c.b || false) || false, _wgslsmith_f_op_f32(exp2(arg_1.c.c))), -1i < var_0.c.a.a), Struct_2(Struct_1(1i, select(select(vec3<bool>(global1.x, var_1.a.e, true), var_1.b.a.b, false), vec3<bool>(global1.x, var_0.e, false), arg_1.e), ~reverseBits(u_input.b.x), false), any(!select(vec4<bool>(arg_0.x, global1.x, true, global1.x), vec4<bool>(false, false, false, arg_1.d.b), vec4<bool>(var_0.d.b, var_1.b.a.d, arg_0.x, global1.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(183f, _wgslsmith_f_op_f32(1036f + arg_1.b))))), vec3<i32>(1i, u_input.e, -1i) & var_1.c);
}

fn func_1(arg_0: vec2<bool>, arg_1: bool, arg_2: i32) -> Struct_1 {
    var var_0 = func_3(select(select(arg_0, vec2<bool>(true, true), true), vec2<bool>(!func_2(vec3<i32>(arg_2, u_input.e, 0i), global2[_wgslsmith_index_u32(1u, 30u)], Struct_2(Struct_1(u_input.e, vec3<bool>(false, global1.x, false), u_input.b.x, false), arg_0.x, 1635f), Struct_3(u_input.a)), global1.x), arg_0), Struct_4(Struct_3(~u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1516f, 179f)))), Struct_2(Struct_1(-20168i, vec3<bool>(global1.x, arg_0.x, false), 0u, true), false, -570f), Struct_2(Struct_1(firstLeadingBit(u_input.e), select(vec3<bool>(false, arg_0.x, false), vec3<bool>(false, global1.x, arg_1), arg_0.x), ~82346u, arg_1 | true), false, -1300f), true), _wgslsmith_mult_vec4_i32(vec4<i32>(select(arg_2, _wgslsmith_mod_i32(-2663i, u_input.e), false), -_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.e, -2147483647i), vec2<i32>(arg_2, -6333i)), u_input.e, _wgslsmith_add_i32(-arg_2, _wgslsmith_mult_i32(-1i, 2340i))), vec4<i32>(min(-30234i, -31141i) >> (1u % 32u), ~_wgslsmith_mod_i32(u_input.e, -1i), 0i, 33868i)));
    let var_1 = firstLeadingBit(-var_0.a.d.a.a);
    let var_2 = true;
    var var_3 = ~u_input.a;
    let var_4 = Struct_4(func_3(!select(var_0.a.d.a.b.xy, func_3(arg_0, var_0.a, vec4<i32>(u_input.e, arg_2, arg_2, 1i)).b.a.b.zy, select(vec2<bool>(true, arg_1), var_0.b.a.b.yz, var_0.b.a.b.xy)), func_3(var_0.a.d.a.b.xx, Struct_4(Struct_3(vec4<u32>(44697u, var_0.a.d.a.c, 1u, var_3.x)), _wgslsmith_f_op_f32(-var_0.a.c.c), func_3(arg_0, Struct_4(Struct_3(vec4<u32>(8376u, global2[_wgslsmith_index_u32(58586u, 30u)], u_input.c, 1u)), 777f, var_0.a.c, var_0.b, var_2), vec4<i32>(var_1, var_1, u_input.e, -1i)).a.d, func_3(vec2<bool>(true, global1.x), var_0.a, vec4<i32>(-2147483647i, 601i, var_0.b.a.a, 1i)).a.d, arg_0.x), -vec4<i32>(33168i, 14979i, -10495i, -2147483647i)).a, vec4<i32>(var_0.b.a.a >> (4294967295u % 32u), _wgslsmith_mult_i32(var_1, 1i), 0i, _wgslsmith_sub_i32(arg_2, -2147483647i)) >> (_wgslsmith_mult_vec4_u32(~u_input.a, _wgslsmith_mod_vec4_u32(vec4<u32>(45204u, global2[_wgslsmith_index_u32(4294967295u, 30u)], var_3.x, 49762u), vec4<u32>(12892u, u_input.c, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.b.x, 30u)], 30u)], var_3.x))) % vec4<u32>(32u))).a.a, var_0.a.d.c, var_0.a.c, func_3(select(arg_0, func_3(var_0.b.a.b.xy, var_0.a, ~vec4<i32>(var_0.a.d.a.a, var_0.a.c.a.a, 1i, 40465i)).a.d.a.b.yy, arg_1), Struct_4(Struct_3(func_3(vec2<bool>(var_0.b.b, var_2), var_0.a, vec4<i32>(-2147483647i, -42445i, -1i, arg_2)).a.a.a), var_0.b.c, var_0.a.d, var_0.b, (var_2 & true) && false), -abs(~vec4<i32>(var_0.a.d.a.a, 20704i, 0i, var_0.a.c.a.a))).a.c, arg_2 < _wgslsmith_sub_i32(countOneBits(max(u_input.e, 2270i)), arg_2));
    return Struct_1(~var_4.d.a.a, var_0.b.a.b, _wgslsmith_mod_u32(max(max(2307u, 4294967295u) << (min(u_input.c, u_input.b.x) % 32u), abs(~1u)), var_0.b.a.c), select(arg_0.x, all(!var_0.b.a.b), var_2 & (_wgslsmith_f_op_f32(-var_0.a.b) == _wgslsmith_f_op_f32(-var_0.a.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 1u;
    let var_0 = Struct_2(func_1(!vec2<bool>(true, global1.x), any(!select(vec3<bool>(true, false, global1.x), vec3<bool>(false, true, global1.x), false)), -494i), !global1.x, _wgslsmith_f_op_f32(abs(-1020f)));
    var var_1 = ~16640u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_0.c), _wgslsmith_f_op_f32(-var_0.c))))));
}

