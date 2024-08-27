struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 23> = array<vec4<bool>, 23>(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(vec3<f32>(-230f, -278f, -399f), 67627u, vec3<u32>(4294967295u, 0u, 45848u)));

var<private> global2: vec3<bool> = vec3<bool>(false, false, true);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: vec2<u32>) -> vec4<i32> {
    global1 = array<Struct_1, 1>();
    let var_0 = false;
    var var_1 = reverseBits(vec4<i32>(_wgslsmith_dot_vec3_i32(~reverseBits(vec3<i32>(19640i, -30172i, -2147483647i)), -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, 0i, u_input.b), vec3<i32>(u_input.b, 1309i, 0i), vec3<i32>(-9390i, u_input.b, u_input.b))), u_input.b, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(abs(vec2<i32>(u_input.b, u_input.b)), vec2<i32>(33904i, -2147483647i) ^ vec2<i32>(-1i, u_input.b), vec2<i32>(1i, 1i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, -17250i, 1i), vec3<i32>(2147483647i, u_input.b, u_input.b)), -1i)), u_input.b));
    global1 = array<Struct_1, 1>();
    var var_2 = var_1.x;
    return _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, _wgslsmith_mod_i32(u_input.b, -46956i), var_1.x, u_input.b), vec4<i32>(-var_1.x, u_input.b | var_1.x, _wgslsmith_mult_i32(u_input.b, u_input.b), var_1.x)), max(vec4<i32>(var_1.x, 2147483647i, 0i, u_input.b), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.x, -2147483647i, 1i, 8891i), vec4<i32>(var_1.x, 1i, 4019i, -31219i), vec4<i32>(-2147483647i, -1i, var_1.x, 56028i))) >> ((vec4<u32>(arg_0.x, 1u, u_input.a.x, 24832u) ^ vec4<u32>(1u, arg_0.x, arg_0.x, 48768u)) % vec4<u32>(32u))), vec4<i32>(2147483647i, -19259i, _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(var_1.x, -403i, u_input.b, 6438i), _wgslsmith_add_vec4_i32(~vec4<i32>(-62493i, var_1.x, u_input.b, -27572i), vec4<i32>(-60493i, -10882i, -5137i, var_1.x))), -2147483647i));
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    let var_0 = min(~abs(-vec4<i32>(u_input.b, -17505i, -2147483647i, arg_0.x)), vec4<i32>(max(arg_0.x, 2147483647i), u_input.b >> (4294967295u % 32u), u_input.b, -_wgslsmith_mod_i32(arg_0.x, -2147483647i))) | min(vec4<i32>(arg_0.x, 1i, select(1i, u_input.b, global2.x), u_input.b), firstLeadingBit(_wgslsmith_clamp_vec4_i32(func_3(vec2<u32>(u_input.a.x, u_input.c)), select(vec4<i32>(u_input.b, 34740i, u_input.b, 1i), vec4<i32>(u_input.b, -40925i, -35896i, 0i), global0[_wgslsmith_index_u32(u_input.a.x, 23u)]), _wgslsmith_sub_vec4_i32(vec4<i32>(-32503i, arg_0.x, arg_0.x, 36307i), vec4<i32>(0i, 15284i, u_input.b, u_input.b)))));
    global2 = !select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(false, !(!global2.x), global2.x), true);
    global0 = array<vec4<bool>, 23>();
    global2 = select(select(!(!vec3<bool>(false, global2.x, false)), vec3<bool>(all(vec4<bool>(false, global2.x, false, true)) && global2.x, false, false | global2.x), select(!select(vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), global2.x)), !vec3<bool>(global2.x, true || (false || global2.x), true), global2.x);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1281f - -246f) + _wgslsmith_f_op_f32(min(-253f, -894f))), -377f, _wgslsmith_f_op_f32(-727f * _wgslsmith_f_op_f32(select(1488f, -467f, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(172f)) - _wgslsmith_f_op_f32(893f - 828f)))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f));
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(273f, 978f, -916f))), vec3<f32>(381f, -867f, 353f))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(564f, 1523f, -1017f))))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(238f, 222f, _wgslsmith_f_op_f32(func_2(vec3<i32>(u_input.b, u_input.b, u_input.b)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1551f, 2285f, -238f) + vec3<f32>(1410f, 1431f, -1062f))))), u_input.c, ~vec3<u32>(~u_input.c, 30367u, u_input.a.x) & (u_input.a ^ ~vec3<u32>(u_input.a.x, u_input.c, u_input.c)));
    let var_1 = -2147483647i;
    global0 = array<vec4<bool>, 23>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2052f, _wgslsmith_f_op_f32(min(var_0.a.x, -468f)), _wgslsmith_div_f32(938f, -1474f)))), u_input.c, vec3<u32>(select(var_0.b, _wgslsmith_mod_u32(var_0.b, u_input.a.x), var_0.c.x == var_0.c.x) << (~min(60346u, u_input.a.x) % 32u), 88957u, abs(~u_input.c)));
    global1 = array<Struct_1, 1>();
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = select(!(!select(!vec3<bool>(global2.x, false, global2.x), vec3<bool>(true, global2.x, true), select(vec3<bool>(false, global2.x, global2.x), vec3<bool>(true, true, global2.x), true))), select(!select(select(vec3<bool>(true, global2.x, global2.x), vec3<bool>(true, global2.x, true), true), !vec3<bool>(true, false, global2.x), !global2.x), !vec3<bool>(all(vec3<bool>(false, false, false)), true, all(global0[_wgslsmith_index_u32(4294967295u, 23u)])), vec3<bool>(false, false, global2.x)), vec3<bool>(global2.x & any(!vec3<bool>(global2.x, global2.x, global2.x)), false, all(global2.yy)));
    var var_0 = ~(~(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, u_input.c, 0u, u_input.a.x), vec4<u32>(u_input.c, u_input.c, u_input.c, u_input.a.x)), u_input.a.x, func_1(), countOneBits(u_input.a.x)) | (max(vec4<u32>(u_input.c, u_input.a.x, 17720u, 4294967295u), vec4<u32>(u_input.a.x, u_input.c, u_input.a.x, u_input.a.x)) ^ vec4<u32>(u_input.c, u_input.a.x, 33959u, u_input.a.x))));
    global0 = array<vec4<bool>, 23>();
    var var_1 = global1[_wgslsmith_index_u32((~firstLeadingBit(~u_input.c) >> (_wgslsmith_div_u32(var_0.x, u_input.a.x) % 32u)) ^ u_input.c, 1u)];
    global0 = array<vec4<bool>, 23>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_div_u32(17405u, _wgslsmith_mod_u32(var_1.b, ~0u)), var_1.c.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec3<i32>(0i, -53228i, u_input.b)))), -717f, var_1.a.x), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(763f, var_1.a.x, -207f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1026f, var_1.a.x, var_1.a.x))) - vec3<f32>(-452f, 1112f, var_1.a.x)))))));
}

