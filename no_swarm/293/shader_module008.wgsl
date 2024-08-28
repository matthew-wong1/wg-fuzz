struct Struct_1 {
    a: vec4<bool>,
    b: vec3<i32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(76454u, 0u, 27641u);

var<private> global1: i32 = i32(-2147483648);

var<private> global2: vec3<i32> = vec3<i32>(-14509i, 2147483647i, 8739i);

var<private> global3: array<u32, 32> = array<u32, 32>(1u, 9859u, 48702u, 8403u, 0u, 33434u, 25326u, 17953u, 22875u, 37918u, 94547u, 1u, 0u, 0u, 24762u, 1u, 0u, 4294967295u, 18891u, 27719u, 1u, 1u, 8215u, 4294967295u, 20744u, 4294967295u, 4294967295u, 0u, 1u, 1u, 27759u, 0u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> i32 {
    return countOneBits(global2.x);
}

fn func_2() -> Struct_1 {
    var var_0 = 122486u;
    var var_1 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, 1i, 1i), _wgslsmith_mod_vec4_i32(vec4<i32>(11269i, 15162i, global2.x, global2.x), vec4<i32>(-38093i, global2.x, global2.x, 67926i)), ~vec4<i32>(1i, global2.x, global2.x, 2147483647i)) >> (_wgslsmith_add_vec4_u32(firstTrailingBit(vec4<u32>(17947u, 0u, 1u, 0u)), vec4<u32>(15807u, global0.x, u_input.b, global3[_wgslsmith_index_u32(28243u, 32u)]) | vec4<u32>(global3[_wgslsmith_index_u32(global0.x, 32u)], 62177u, u_input.b, 49377u)) % vec4<u32>(32u)), vec4<i32>(global2.x, -2147483647i, global2.x, (global2.x & global2.x) ^ -global2.x)), vec4<i32>(-1i) * -vec4<i32>(global2.x | 2870i, ~2240i, max(global2.x, -1i), func_3(Struct_1(vec4<bool>(false, true, false, false), vec3<i32>(2147483647i, global2.x, global2.x), global0.x), Struct_1(vec4<bool>(false, false, true, false), vec3<i32>(global2.x, global2.x, global2.x), global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(64137u, 32u)], 32u)]))));
    let var_2 = abs(_wgslsmith_add_i32(-5330i ^ global2.x, select(_wgslsmith_sub_i32(1i, 1i), func_3(Struct_1(vec4<bool>(false, false, false, true), var_1.zzz, 4294967295u), Struct_1(vec4<bool>(false, true, true, false), vec3<i32>(2147483647i, global2.x, -39543i), 4294967295u)), true) | ~(var_1.x ^ var_1.x)));
    return Struct_1(vec4<bool>(!(false & any(vec2<bool>(false, false))), all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), true)) | any(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -683f))) < _wgslsmith_f_op_f32(f32(-1f) * -184f), true), var_1.yyx, firstTrailingBit(56850u));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = func_2();
    global0 = _wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(global0.zx, global0.yx) | ~global0.x, u_input.d.x, _wgslsmith_sub_u32(4294967295u, var_0.c))), ~select(~(~vec3<u32>(0u, var_0.c, global0.x)), vec3<u32>(global3[_wgslsmith_index_u32(max(38705u, u_input.d.x), 32u)], ~var_0.c, global0.x), !(0u == var_0.c)));
    let var_1 = Struct_1(func_2().a, firstTrailingBit(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(-vec3<i32>(0i, -18351i, global2.x), vec3<i32>(2147483647i, global2.x, 2291i) << (vec3<u32>(4294967295u, global0.x, 4294967295u) % vec3<u32>(32u)), vec3<i32>(var_0.b.x, -2147483647i, var_0.b.x)), ~var_0.b)), ~(~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.x, u_input.a, global0.x, var_0.c), ~vec4<u32>(global0.x, var_0.c, var_0.c, var_0.c))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-433f)) * _wgslsmith_f_op_f32(step(404f, -1000f)));
    var_0 = Struct_1(vec4<bool>(arg_0, false, var_0.a.x, var_1.a.x), vec3<i32>(-1i) * -select(var_1.b, var_0.b ^ var_1.b, func_2().a.yxw), ~(u_input.b | global3[_wgslsmith_index_u32(24391u, 32u)]));
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 32>();
    let var_0 = func_1(false);
    var var_1 = 72740u;
    var var_2 = !(true & !all(select(var_0.a, vec4<bool>(var_0.a.x, var_0.a.x, var_0.a.x, false), var_0.a)));
    let var_3 = func_1(true);
    global1 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(global2.x, func_3(Struct_1(var_3.a, vec3<i32>(global2.x, var_0.b.x, -1i), u_input.a), Struct_1(var_0.a, var_0.b, global3[_wgslsmith_index_u32(var_3.c, 32u)])) & global2.x) | global2.x, abs(_wgslsmith_clamp_i32(49422i, select(-2147483647i, -44806i, true), ~1i)), -53967i);
    var var_4 = var_3;
    global0 = vec3<u32>(37658u, ~1u, _wgslsmith_dot_vec3_u32(reverseBits(select(vec3<u32>(global0.x, 40470u, global0.x), vec3<u32>(17856u, var_4.c, global0.x), var_3.a.x)) >> (vec3<u32>(1u, _wgslsmith_sub_u32(global0.x, 91143u), 19109u) % vec3<u32>(32u)), abs(~_wgslsmith_sub_vec3_u32(vec3<u32>(0u, var_0.c, 101665u), vec3<u32>(var_0.c, global0.x, 4294967295u)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.zx, ~(~0u), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1f))));
}

