struct Struct_1 {
    a: vec2<bool>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec2<i32>,
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

var<private> global0: array<Struct_3, 7>;

var<private> global1: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(6450i, Struct_1(vec2<bool>(false, true), true, vec4<i32>(1i, 0i, 1i, -38017i))), Struct_2(-1i, Struct_1(vec2<bool>(true, true), true, vec4<i32>(-22453i, -1i, 0i, 0i))), Struct_2(-41809i, Struct_1(vec2<bool>(true, true), true, vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 42550i))), Struct_2(i32(-2147483648), Struct_1(vec2<bool>(true, true), false, vec4<i32>(22766i, 2147483647i, 1i, -1i))), Struct_2(2147483647i, Struct_1(vec2<bool>(false, true), false, vec4<i32>(-1i, 0i, i32(-2147483648), -1i))), Struct_2(56517i, Struct_1(vec2<bool>(false, false), false, vec4<i32>(-69770i, 47271i, 0i, i32(-2147483648)))), Struct_2(i32(-2147483648), Struct_1(vec2<bool>(false, false), true, vec4<i32>(-25030i, -29618i, 1i, 2216i))), Struct_2(35754i, Struct_1(vec2<bool>(false, false), true, vec4<i32>(24553i, 2147483647i, 1i, 0i))), Struct_2(-1i, Struct_1(vec2<bool>(false, true), true, vec4<i32>(1i, 42702i, -6601i, 8168i))), Struct_2(-23006i, Struct_1(vec2<bool>(true, false), true, vec4<i32>(0i, -1i, i32(-2147483648), 9988i))), Struct_2(0i, Struct_1(vec2<bool>(true, true), false, vec4<i32>(0i, 79910i, 2147483647i, 1i))), Struct_2(1i, Struct_1(vec2<bool>(false, false), false, vec4<i32>(2147483647i, i32(-2147483648), 7157i, -29467i))), Struct_2(-1i, Struct_1(vec2<bool>(true, true), true, vec4<i32>(-1i, 30047i, 0i, 1i))), Struct_2(42562i, Struct_1(vec2<bool>(false, false), true, vec4<i32>(-27759i, 20168i, 1i, 2147483647i))), Struct_2(30049i, Struct_1(vec2<bool>(false, true), true, vec4<i32>(2905i, 48896i, -819i, -1i))), Struct_2(1i, Struct_1(vec2<bool>(true, true), false, vec4<i32>(1i, 7376i, i32(-2147483648), 1i))), Struct_2(-17249i, Struct_1(vec2<bool>(true, false), true, vec4<i32>(14642i, 58429i, 74936i, -1i))), Struct_2(-1i, Struct_1(vec2<bool>(true, true), false, vec4<i32>(-36328i, -23682i, i32(-2147483648), i32(-2147483648)))), Struct_2(-23114i, Struct_1(vec2<bool>(false, true), true, vec4<i32>(-1i, -1i, 16568i, 16297i))), Struct_2(1i, Struct_1(vec2<bool>(false, false), false, vec4<i32>(19736i, 24478i, 6766i, -14285i))), Struct_2(1i, Struct_1(vec2<bool>(true, false), true, vec4<i32>(2147483647i, 15420i, 2147483647i, -410i))), Struct_2(-1i, Struct_1(vec2<bool>(true, false), false, vec4<i32>(35478i, -44547i, i32(-2147483648), -6741i))), Struct_2(i32(-2147483648), Struct_1(vec2<bool>(true, true), true, vec4<i32>(2147483647i, 2147483647i, -10107i, -36067i))), Struct_2(16458i, Struct_1(vec2<bool>(false, true), true, vec4<i32>(2147483647i, 0i, 14099i, 21544i))), Struct_2(1i, Struct_1(vec2<bool>(false, false), false, vec4<i32>(47614i, 58053i, -15271i, i32(-2147483648)))), Struct_2(245i, Struct_1(vec2<bool>(true, true), false, vec4<i32>(0i, 0i, 1i, i32(-2147483648)))), Struct_2(-4501i, Struct_1(vec2<bool>(false, false), true, vec4<i32>(-14431i, 1013i, 2147483647i, -24707i))));

var<private> global2: Struct_3 = Struct_3(vec4<f32>(-623f, -1000f, -1117f, 1246f), vec4<u32>(1u, 1u, 21963u, 0u));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    global1 = array<Struct_2, 27>();
    global1 = array<Struct_2, 27>();
    let var_0 = vec4<bool>(all(select(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), any(vec2<bool>(false, true))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true)), true)), true, true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.a.x)) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f + -1357f))));
    global1 = array<Struct_2, 27>();
    var var_1 = Struct_2(-2420i, Struct_1(!var_0.ww, select(var_0.x, select(any(vec4<bool>(true, var_0.x, false, false)), true, all(var_0.zxz)), var_0.x), select(~(~vec4<i32>(-19588i, 11509i, -731i, u_input.b)), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(24763i, u_input.b, u_input.b, u_input.e.x), vec4<i32>(u_input.e.x, 1i, -6008i, -1i)), -vec4<i32>(u_input.e.x, u_input.e.x, u_input.e.x, u_input.e.x)), (u_input.e.x < u_input.b) | any(vec4<bool>(var_0.x, var_0.x, true, var_0.x)))));
    return -35588i;
}

fn func_2(arg_0: Struct_3) -> bool {
    var var_0 = min(-2147483647i, firstLeadingBit(u_input.e.x));
    var var_1 = Struct_1(vec2<bool>(any(vec3<bool>(true, true, true)), all(vec3<bool>(any(vec2<bool>(true, true)), any(vec4<bool>(true, true, false, true)), true))), true, _wgslsmith_mod_vec4_i32(~(vec4<i32>(-1i) * -vec4<i32>(1i, 2147483647i, u_input.e.x, u_input.b)), vec4<i32>(u_input.e.x, abs(i32(-1i) * -48372i), abs(u_input.e.x), func_3() | u_input.b)));
    let var_2 = _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -select(reverseBits(var_1.c), _wgslsmith_mult_vec4_i32(var_1.c, vec4<i32>(2147483647i, u_input.b, 1i, -15540i)), true & var_1.b), vec4<i32>(_wgslsmith_mult_i32(reverseBits(2147483647i), 23657i ^ u_input.b) ^ u_input.e.x, ~(-31491i), u_input.e.x, u_input.e.x));
    global1 = array<Struct_2, 27>();
    global0 = array<Struct_3, 7>();
    return !all(vec4<bool>(true, var_1.a.x, global2.b.x <= 4294967295u, true)) & (var_1.b & true);
}

fn func_4(arg_0: i32, arg_1: bool, arg_2: vec4<i32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = select(select(vec3<bool>(arg_1, true, true), vec3<bool>(func_2(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4294967295u, 2124u), 7u)]), select(arg_1, arg_1, arg_1 || true), arg_1), vec3<bool>(arg_1, false, arg_1)), select(vec3<bool>(true, true, true), vec3<bool>(false, 1i == arg_2.x, arg_1), !(true && arg_1)), vec3<bool>(arg_1, true | func_2(global0[_wgslsmith_index_u32(1u, 7u)]), u_input.a.x >= u_input.d));
    let var_1 = u_input.c;
    var var_2 = vec4<u32>(max(global2.b.x, ~(~1u)), abs(_wgslsmith_dot_vec3_u32(global2.b.wyy, ~global2.b.yzw)) | abs(~var_1), u_input.a.x, _wgslsmith_add_u32(~47668u, min(global2.b.x, ~1u)));
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(755f, arg_3.x, arg_3.x, _wgslsmith_div_f32(-1685f, -670f)))), _wgslsmith_f_op_vec4_f32(sign(global2.a)), any(!(!select(vec3<bool>(arg_1, false, arg_1), vec3<bool>(false, true, arg_1), false)))));
    let var_4 = select(vec3<bool>((_wgslsmith_div_i32(2147483647i, arg_0) > _wgslsmith_add_i32(arg_0, arg_0)) | all(select(vec4<bool>(false, true, arg_1, var_0.x), vec4<bool>(false, var_0.x, false, true), vec4<bool>(false, var_0.x, false, var_0.x))), true, var_0.x), !vec3<bool>(false, var_1 <= 4294967295u, true), arg_1);
    return Struct_1(vec2<bool>(((u_input.e.x ^ -1i) != -arg_0) | true, true), !(!any(var_4)), arg_2);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = Struct_2(-56713i, func_4(abs(u_input.b), func_2(arg_2), countOneBits(abs(arg_1.c)), global2.a.yx));
    global0 = array<Struct_3, 7>();
    var var_1 = ~(firstLeadingBit(reverseBits(_wgslsmith_sub_u32(103678u, u_input.c))) << (~26632u % 32u));
    global1 = array<Struct_2, 27>();
    let var_2 = vec2<bool>(true, !(arg_0.b.a.x || !(var_0.b.b && var_0.b.b)));
    return !arg_0.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 27>();
    let var_0 = vec3<bool>(!(true == (true || func_1(Struct_2(1i, Struct_1(vec2<bool>(false, true), false, vec4<i32>(u_input.e.x, u_input.e.x, 2147483647i, u_input.b))), Struct_1(vec2<bool>(false, false), true, vec4<i32>(-233i, u_input.e.x, 58640i, 2147483647i)), Struct_3(vec4<f32>(-385f, global2.a.x, 326f, global2.a.x), global2.b)))), !(select(false, true, global2.b.x == 4294967295u) | (u_input.e.x <= u_input.e.x)), true);
    global0 = array<Struct_3, 7>();
    let var_1 = select(vec2<bool>(var_0.x, false), var_0.yx, !var_0.xy);
    let var_2 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~(~(~vec3<u32>(0u, global2.b.x, 4294967295u))), select(_wgslsmith_add_vec3_u32(~global2.b.yyw, global2.b.wxz & global2.b.wwz), vec3<u32>(~u_input.a.x, ~global2.b.x, global2.b.x >> (global2.b.x % 32u)), var_0)), 7u)];
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec3<u32>(var_2.b.x, u_input.c, global2.b.x | u_input.d)) << (_wgslsmith_mod_vec3_u32(global2.b.xyy, _wgslsmith_div_vec3_u32(global2.b.zxz, vec3<u32>(4294967295u, global2.b.x, global2.b.x))) % vec3<u32>(32u)));
}

