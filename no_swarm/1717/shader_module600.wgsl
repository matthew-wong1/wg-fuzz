struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
    d: vec3<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: vec3<u32>;

var<private> global2: array<i32, 21>;

var<private> global3: i32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<i32>) -> vec2<bool> {
    let var_0 = Struct_2(~(~u_input.c.zzz), !(true | select(false, arg_1.a, true)) | (arg_1.a | any(vec2<bool>(true, arg_1.a))));
    let var_1 = abs(~firstLeadingBit(_wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.c.x, 67689u))));
    let var_2 = u_input.c.x;
    let var_3 = !(!var_0.b);
    let var_4 = vec4<bool>(var_3, !(_wgslsmith_f_op_f32(-arg_2) >= _wgslsmith_f_op_f32(max(1598f, _wgslsmith_div_f32(-881f, arg_2)))), arg_1.a, all(select(vec4<bool>(true, true, true, true), select(!vec4<bool>(var_0.b, true, var_0.b, var_3), vec4<bool>(false, var_0.b, arg_1.a, var_3), 4294967295u == var_0.a.x), !vec4<bool>(var_0.b, false, arg_1.a, false))));
    return var_4.wx;
}

fn func_2() -> bool {
    global2 = array<i32, 21>();
    let var_0 = 25171u;
    let var_1 = global0[_wgslsmith_index_u32(var_0, 30u)];
    global3 = min(var_1.b.x, var_1.b.x);
    let var_2 = !var_1.a;
    return all(select(func_3(~2147483647i, Struct_1(select(var_1.a, false, true), _wgslsmith_mult_vec2_i32(var_1.b, var_1.b)), -420f, _wgslsmith_div_vec3_i32(vec3<i32>(12336i, -1i, -2147483647i) & vec3<i32>(u_input.b, u_input.a.x, 56203i), ~vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 21u)], -2147483647i, var_1.b.x))), vec2<bool>(false, var_1.a), !select(func_3(1i, global0[_wgslsmith_index_u32(global1.x, 30u)], 1643f, vec3<i32>(u_input.b, -1i, var_1.b.x)), vec2<bool>(true, true), true)));
}

fn func_1() -> Struct_2 {
    global1 = select(vec3<u32>(~1u, u_input.c.x, global1.x), vec3<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.c.xw), _wgslsmith_mod_vec2_u32(global1.yx, vec2<u32>(global1.x, 1u)) << (vec2<u32>(u_input.c.x, 1u) % vec2<u32>(32u))), ~(~6475u & u_input.c.x), ~(~1u)), true);
    global2 = array<i32, 21>();
    let var_0 = 580f;
    global2 = array<i32, 21>();
    let var_1 = Struct_1(any(vec3<bool>(true, true, true)), u_input.a);
    return Struct_2(vec3<u32>(u_input.c.x, ~(~_wgslsmith_mult_u32(u_input.c.x, global1.x)), _wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(global1.x, ~1u))), any(vec4<bool>(!any(vec3<bool>(true, true, var_1.a)), var_1.a, func_2(), var_1.a)));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<i32, 21>();
    let var_0 = func_1();
    let var_1 = abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.c.x, 21u)], u_input.b, ~max(u_input.a.x, _wgslsmith_mult_i32(global2[_wgslsmith_index_u32(global1.x, 21u)], u_input.a.x))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(-164f, -2322f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1934f - -1416f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1273f))));
    var var_3 = any(select(select(select(vec3<bool>(var_0.b, true, true), vec3<bool>(var_0.b, false, true), select(vec3<bool>(var_0.b, var_0.b, true), vec3<bool>(false, false, var_0.b), var_0.b)), !vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(false, true, var_0.b)), select(vec3<bool>(false, 504f >= var_2, true), !vec3<bool>(false, true, var_0.b), vec3<bool>(!var_0.b, !var_0.b, func_1().b)), var_1.x != -u_input.a.x));
    let var_4 = !(!select(vec2<bool>(var_0.b != var_0.b, true), select(select(vec2<bool>(true, var_0.b), vec2<bool>(var_0.b, true), vec2<bool>(false, var_0.b)), !vec2<bool>(var_0.b, false), var_2 <= 408f), !(!vec2<bool>(false, var_0.b))));
    var var_5 = _wgslsmith_sub_i32(u_input.a.x, -41984i);
    var var_6 = var_0;
    global0 = array<Struct_1, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(var_2, (_wgslsmith_add_u32(var_6.a.x, ~0u) & 22389u) ^ 1u, vec4<i32>(_wgslsmith_mod_i32(35613i, var_1.x), global2[_wgslsmith_index_u32(~((0u & var_6.a.x) | 67495u), 21u)], (_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -96367i), u_input.a) >> (~34354u % 32u)) ^ global2[_wgslsmith_index_u32(21373u, 21u)], _wgslsmith_mult_i32(firstLeadingBit(u_input.b), ~global2[_wgslsmith_index_u32(global1.x, 21u)]) | countOneBits(var_1.x)), min(_wgslsmith_mod_vec3_i32(var_1, var_1), _wgslsmith_sub_vec3_i32(reverseBits(var_1), abs(var_1))), i32(-1i) * -10782i);
}

