struct Struct_1 {
    a: bool,
    b: u32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<vec3<u32>, 20> = array<vec3<u32>, 20>(vec3<u32>(0u, 1u, 26898u), vec3<u32>(132625u, 57834u, 39899u), vec3<u32>(0u, 52540u, 0u), vec3<u32>(40522u, 0u, 1u), vec3<u32>(9656u, 1u, 18822u), vec3<u32>(4294967295u, 9256u, 69150u), vec3<u32>(1u, 1u, 25661u), vec3<u32>(4977u, 1u, 26404u), vec3<u32>(1u, 4294967295u, 10856u), vec3<u32>(29882u, 25868u, 1u), vec3<u32>(52627u, 718u, 11971u), vec3<u32>(35074u, 76017u, 1u), vec3<u32>(1u, 0u, 15134u), vec3<u32>(53543u, 52429u, 60474u), vec3<u32>(4294967295u, 77701u, 1u), vec3<u32>(22603u, 1u, 39879u), vec3<u32>(0u, 1u, 8056u), vec3<u32>(71130u, 88718u, 1u), vec3<u32>(12128u, 4294967295u, 29448u), vec3<u32>(4294967295u, 0u, 36091u));

var<private> global2: vec4<bool> = vec4<bool>(false, false, true, false);

var<private> global3: array<bool, 25>;

var<private> global4: vec3<u32> = vec3<u32>(0u, 31455u, 1u);

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> vec4<i32> {
    global3 = array<bool, 25>();
    global1 = array<vec3<u32>, 20>();
    global2 = vec4<bool>(all(!global2.yzx), !global2.x, abs(firstTrailingBit(arg_1.b) & ~global4.x) <= min((global4.x & 5404u) ^ arg_1.b, 69670u), !global3[_wgslsmith_index_u32(4294967295u, 25u)]);
    var var_0 = Struct_2(Struct_1((_wgslsmith_mult_i32(arg_1.c, -2147483647i) | -arg_1.c) <= 16556i, u_input.d.x, _wgslsmith_sub_i32(0i, u_input.b)), vec4<i32>(abs(1i), _wgslsmith_mult_i32(reverseBits(1i), -min(u_input.e, -2147483647i)), u_input.e << (1u % 32u), _wgslsmith_mod_i32(~u_input.e, -2147483647i)), max(vec2<i32>(firstLeadingBit(2147483647i), max(u_input.e, 0i)) << (_wgslsmith_add_vec2_u32(u_input.d.xx ^ global4.xx, vec2<u32>(u_input.c, arg_0) & global4.zz) % vec2<u32>(32u)), vec2<i32>(u_input.b >> (arg_1.b % 32u), u_input.b) & countOneBits(firstTrailingBit(vec2<i32>(9552i, arg_1.c)))));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(1190f)), -672f, any(vec3<bool>(global2.x, global3[_wgslsmith_index_u32(29585u, 25u)], global2.x))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1741f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(1f)), 1907f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1902f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-269f * _wgslsmith_f_op_f32(step(-609f, _wgslsmith_f_op_f32(1000f * 1000f)))), _wgslsmith_f_op_f32(ceil(226f))));
    return -vec4<i32>(6231i, ~((u_input.b & var_0.c.x) >> (u_input.c % 32u)), countOneBits(1i), u_input.e);
}

fn func_2(arg_0: vec4<u32>) -> bool {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(619f + 815f), _wgslsmith_div_f32(1871f, -1504f))) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(365f)), _wgslsmith_f_op_f32(1846f - -185f)))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -519f))), ~firstLeadingBit(firstLeadingBit(u_input.a)), -7430i);
    var var_1 = var_0;
    global2 = vec4<bool>(any(vec3<bool>(!all(vec4<bool>(var_0.a, var_0.a, var_0.a, false)), all(!vec4<bool>(var_0.a, var_1.a, global3[_wgslsmith_index_u32(arg_0.x, 25u)], var_1.a)), true)), var_0.a, !global3[_wgslsmith_index_u32(u_input.c, 25u)], false);
    let var_2 = Struct_2(Struct_1(any(vec2<bool>(false, !global3[_wgslsmith_index_u32(0u, 25u)])), _wgslsmith_mult_u32(u_input.c, _wgslsmith_div_u32(1u, var_1.b)) & 1u, 1428i), select(~func_3(~global4.x, Struct_1(false, var_0.b, var_0.c)), ~vec4<i32>(_wgslsmith_clamp_i32(u_input.e, var_0.c, -1i), u_input.b, -1i, _wgslsmith_mod_i32(var_1.c, var_1.c)), false), -(((vec2<i32>(u_input.e, 2942i) & vec2<i32>(1i, 25484i)) << ((u_input.d.yw & arg_0.zy) % vec2<u32>(32u))) << (~u_input.d.zy % vec2<u32>(32u))));
    var_1 = var_2.a;
    return var_1.a;
}

fn func_1(arg_0: f32) -> Struct_1 {
    global2 = select(select(vec4<bool>(any(global2.ww) && any(vec4<bool>(global2.x, false, global2.x, false)), select(global2.x, any(vec2<bool>(false, global2.x)), global4.x == 1u), any(select(vec2<bool>(true, false), global2.zw, vec2<bool>(true, false))), false), !select(!vec4<bool>(global2.x, global3[_wgslsmith_index_u32(global4.x, 25u)], global2.x, global3[_wgslsmith_index_u32(u_input.a, 25u)]), !vec4<bool>(true, global2.x, true, false), !vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 25u)], false, global3[_wgslsmith_index_u32(global4.x, 25u)], true)), func_2(vec4<u32>(u_input.a, global4.x, _wgslsmith_add_u32(0u, global4.x), ~global4.x))), select(!select(!vec4<bool>(global3[_wgslsmith_index_u32(u_input.c, 25u)], false, false, global2.x), vec4<bool>(true, true, true, true), vec4<bool>(global2.x, false, false, false)), vec4<bool>(true, true, false, any(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.a, 25u)]))), true), func_2(countOneBits(select(u_input.d, vec4<u32>(global4.x, 0u, 0u, global4.x), any(vec4<bool>(global3[_wgslsmith_index_u32(global4.x, 25u)], global3[_wgslsmith_index_u32(1u, 25u)], false, global2.x))))));
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-323f))), 103f))));
    let var_1 = firstTrailingBit(vec2<i32>(_wgslsmith_mod_i32(1i, select(u_input.e, u_input.b, false)), -_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -2147483647i, u_input.e), vec3<i32>(-1i, u_input.b, u_input.e)))) >> (global4.yx % vec2<u32>(32u));
    var var_2 = global2.yzz;
    let var_3 = Struct_1(false, select(u_input.c, global4.x, var_0.x > _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(arg_0, arg_0)))), i32(-1i) * -1i);
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 20>();
    var var_0 = Struct_2(func_1(-1000f), select(firstLeadingBit(_wgslsmith_mult_vec4_i32(select(vec4<i32>(-5057i, 60659i, 45340i, -1i), vec4<i32>(0i, u_input.b, u_input.e, u_input.b), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.d.x, 25u)], false, true)), _wgslsmith_sub_vec4_i32(vec4<i32>(-37749i, 43924i, 2147483647i, 34211i), vec4<i32>(-1i, -1i, 1i, u_input.b)))), _wgslsmith_add_vec4_i32(countOneBits(vec4<i32>(u_input.e, u_input.b, 23272i, u_input.b) & vec4<i32>(-20823i, -2147483647i, u_input.b, u_input.b)), (vec4<i32>(u_input.e, 1i, 2147483647i, u_input.e) | vec4<i32>(u_input.b, u_input.b, u_input.e, u_input.b)) ^ vec4<i32>(u_input.e, u_input.b, u_input.b, -15421i)), !vec4<bool>(global3[_wgslsmith_index_u32(1u, 25u)], global2.x, global2.x, true)), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e, -7768i), select(vec2<i32>(-42611i, 68603i), vec2<i32>(-1416i, 0i), vec2<bool>(global2.x, true))), vec2<i32>(~2147483647i, u_input.b)), ~_wgslsmith_mult_vec2_i32(vec2<i32>(-35022i, -8707i), vec2<i32>(8525i, 1i))));
    let var_1 = !global2.xyy;
    global1 = array<vec3<u32>, 20>();
    let var_2 = vec4<i32>(-2147483647i, 0i, 39008i, var_0.a.c);
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(1385f, -789f)))) * 986f)));
    let var_4 = global4.zz | u_input.d.yx;
    let x = u_input.a;
    s_output = StorageBuffer(min(vec2<u32>(global4.x, ~var_4.x), reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(var_0.a.b, 4294967295u)))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-346f)))), _wgslsmith_f_op_f32(select(988f, -1917f, global3[_wgslsmith_index_u32(19457u, 25u)] && var_0.a.a))), vec2<f32>(610f, -562f))));
}

