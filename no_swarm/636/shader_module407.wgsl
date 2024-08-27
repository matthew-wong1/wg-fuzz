struct Struct_1 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: bool,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 18>;

var<private> global3: bool;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(global1.b, Struct_1(_wgslsmith_f_op_vec4_f32(global0.a * global0.a), select(_wgslsmith_mod_vec3_u32(global1.b.b, vec3<u32>(global1.b.b.x, 39032u, global0.b.x)), _wgslsmith_clamp_vec3_u32(~global0.b, _wgslsmith_div_vec3_u32(vec3<u32>(global1.b.b.x, 4294967295u, 0u), global1.b.b), global1.a.b), select(!vec3<bool>(global1.a.c, global0.c, global0.c), vec3<bool>(global1.a.c, false, global0.c), vec3<bool>(global1.b.c, global0.c, global0.c))), all(select(vec3<bool>(false, false, global0.c), vec3<bool>(true, true, global1.b.c), vec3<bool>(global1.b.c, true, global1.b.c))) && (abs(global1.b.b.x) == _wgslsmith_dot_vec3_u32(global1.a.b, vec3<u32>(global1.b.b.x, 4294967295u, global0.b.x))), ~select(abs(vec4<i32>(2147483647i, u_input.b, global1.b.d.x, -1i)), global1.b.d, vec4<bool>(global1.a.c, true, true, false))));
    let var_1 = Struct_3(abs(_wgslsmith_dot_vec4_i32(min(global0.d, ~u_input.a), global1.a.d | vec4<i32>(38770i, global0.d.x, global0.d.x, 0i))), _wgslsmith_sub_i32(19446i << (1u % 32u), global1.b.d.x), vec3<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1000f * -1369f))) - global0.a.x), -132f));
    let var_2 = var_1.a;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-451f, _wgslsmith_f_op_f32(min(var_0.a.a.x, 1385f)), _wgslsmith_f_op_f32(ceil(var_1.c.x)), -940f)))));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_div_vec4_i32(~(~(-vec4<i32>(u_input.a.x, 2147483647i, -19037i, -30982i))) ^ firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, 40079i, 1i, u_input.a.x), vec4<i32>(-22659i, u_input.a.x, 0i, 49162i)), 1i, 1i, -u_input.a.x)), vec4<i32>(~u_input.b << (47052u % 32u), -2147483647i, ~(~(-30844i)) & reverseBits(reverseBits(global0.d.x)), u_input.b));
    let var_1 = global1.b;
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a - global1.a.a)), reverseBits(abs(var_1.b)), -746f > _wgslsmith_f_op_f32(step(global0.a.x, global0.a.x)), -reverseBits(var_1.d)), global1.b);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(select(global1.b.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3())), false)), vec3<u32>(global0.b.x, var_2.a.b.x, global1.a.b.x), global0.c, -vec4<i32>(_wgslsmith_sub_i32(min(var_0.x, var_2.a.d.x), -1i), global0.d.x | ~global0.d.x, 66409i & _wgslsmith_dot_vec2_i32(global1.b.d.zz, vec2<i32>(var_0.x, 6242i)), -40579i));
    let var_3 = vec3<bool>(false, 1u > _wgslsmith_sub_u32(global0.b.x, abs(firstLeadingBit(8253u))), !(!var_1.c & any(vec4<bool>(false, false, true, global1.a.c))));
    return var_2;
}

fn func_1() -> bool {
    global2 = array<Struct_3, 18>();
    global0 = global1.b;
    global3 = false;
    global1 = func_2();
    var var_0 = _wgslsmith_sub_u32((global0.b.x & 29572u) & 24444u, ~_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(15002u, global1.a.b.x, 4294967295u)), _wgslsmith_mult_vec3_u32(global1.b.b, vec3<u32>(global0.b.x, 17707u, 4294967295u)))) | ~global0.b.x;
    return ~(global1.a.b.x & global0.b.x) >= global0.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(global0.a, ~global1.b.b, !(any(vec4<bool>(global1.b.c, global1.b.c, true, true)) | func_1()), vec4<i32>(global1.b.d.x, global1.b.d.x, _wgslsmith_dot_vec3_i32(-global1.b.d.zyz, func_2().a.d.yyz), abs(i32(-1i) * -1i)) | vec4<i32>(0i, -1i, u_input.a.x, -2147483647i));
    var var_0 = select(!(!vec2<bool>(all(vec2<bool>(global1.a.c, false)), any(vec3<bool>(false, global1.b.c, false)))), select(vec2<bool>(!select(false, global1.b.c, false), !global1.b.c), vec2<bool>(_wgslsmith_f_op_f32(global1.a.a.x * -2208f) == _wgslsmith_f_op_f32(-global1.a.a.x), !(!global1.a.c)), func_1()), global1.b.c);
    let var_1 = global1.b.b ^ vec3<u32>(global0.b.x, global1.a.b.x, 4294967295u ^ global1.a.b.x);
    global0 = global1.b;
    global0 = func_2().a;
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(global0.a.x)), global1.a.a.x, _wgslsmith_f_op_f32(select(334f, 730f, false)), _wgslsmith_f_op_f32(min(global0.a.x, global0.a.x))) - global1.a.a))), global1.b.a);
    let var_3 = ~_wgslsmith_clamp_vec4_u32((vec4<u32>(3205u, global1.b.b.x, 0u, var_1.x) | _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.b.x, 22539u, 4294967295u, var_1.x), vec4<u32>(global0.b.x, global0.b.x, 0u, global0.b.x), vec4<u32>(global1.a.b.x, global1.b.b.x, 7553u, global1.a.b.x))) ^ _wgslsmith_sub_vec4_u32(~vec4<u32>(1u, global1.a.b.x, 4294967295u, 1u), abs(vec4<u32>(25508u, global0.b.x, global0.b.x, 31115u))), select(select(vec4<u32>(global0.b.x, 4294967295u, global0.b.x, 0u), ~vec4<u32>(global0.b.x, global1.b.b.x, 0u, var_1.x), !vec4<bool>(var_0.x, global1.b.c, global0.c, true)), _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(0u, global0.b.x, global0.b.x, global1.b.b.x), vec4<u32>(global0.b.x, global0.b.x, 0u, 40416u)), vec4<u32>(6648u, 12189u, 29084u, 79043u)), !global1.b.c), max(vec4<u32>(1u >> (var_1.x % 32u), ~global0.b.x, 70793u, countOneBits(var_1.x)), ~abs(vec4<u32>(82960u, global1.b.b.x, var_1.x, global1.a.b.x))));
    let var_4 = Struct_3(-_wgslsmith_mult_i32(~42238i, u_input.b), global0.d.x, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-133f, var_2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(var_2.x)), global1.b.a.x)))));
    let var_5 = Struct_1(global1.a.a, _wgslsmith_mod_vec3_u32(vec3<u32>(select(_wgslsmith_add_u32(32516u, global1.b.b.x), abs(var_1.x), func_2().a.c), func_2().a.b.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global0.b.x, 18706u, 1u, 4294967295u), vec4<u32>(24021u, global1.a.b.x, var_3.x, 1u))), global0.b), true, global1.b.d);
    let x = u_input.a;
    s_output = StorageBuffer(max(~40489i, -min(1i, var_5.d.x)), global1.b.d.x);
}

