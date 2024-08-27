struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 22>;

var<private> global1: vec4<i32> = vec4<i32>(i32(-2147483648), -40535i, 0i, 0i);

var<private> global2: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false));

var<private> global3: u32 = 32994u;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_1() -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(431f, 1000f, -322f, -585f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-103f, -979f, -1287f, 1617f) - vec4<f32>(340f, -1282f, 885f, 1233f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-135f, _wgslsmith_f_op_f32(1000f - 912f), _wgslsmith_f_op_f32(727f * 333f), _wgslsmith_f_op_f32(-1241f + 226f)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(249f, -1303f, 1061f, -947f), vec4<f32>(133f, 1702f, 1999f, 170f), true))))))));
    return -vec4<i32>(-(38198i << (u_input.a.x % 32u)) ^ firstTrailingBit(global1.x), 0i, _wgslsmith_sub_i32(global1.x >> (4294967295u % 32u), _wgslsmith_mult_i32(2087i, 1i)), 2147483647i);
}

fn func_3(arg_0: u32) -> u32 {
    let var_0 = _wgslsmith_div_i32(global1.x, ~global1.x);
    global2 = array<Struct_1, 24>();
    let var_1 = _wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_div_i32(-u_input.b, min(u_input.b, u_input.b)), reverseBits(~(-2147483647i)), _wgslsmith_sub_i32(global1.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, global1.x, 17300i, var_0), vec4<i32>(-36609i, 2147483647i, var_0, -2147483647i))), _wgslsmith_add_i32(1i, -var_0)), vec4<i32>(_wgslsmith_div_i32(_wgslsmith_mult_i32(global0[_wgslsmith_index_u32(arg_0, 22u)], global1.x), firstLeadingBit(global1.x)), i32(-1i) * -u_input.b, u_input.b, -_wgslsmith_sub_i32(var_0, 2147483647i))) | ((min(_wgslsmith_mult_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(68057u, 22u)], u_input.b, 3615i, 2147483647i), vec4<i32>(-1i, global0[_wgslsmith_index_u32(36434u, 22u)], var_0, global1.x)), vec4<i32>(14883i, var_0, -1i, -19767i) >> (vec4<u32>(arg_0, 1477u, 1u, arg_0) % vec4<u32>(32u))) & -(~vec4<i32>(-2147483647i, 0i, var_0, 53910i))) ^ vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(global1.x, u_input.b, 37655i), vec3<i32>(u_input.b, var_0, -3936i)), _wgslsmith_sub_i32(u_input.b, abs(-64937i)), _wgslsmith_sub_i32(-1i, 10154i << (u_input.a.x % 32u)), -2147483647i));
    global2 = array<Struct_1, 24>();
    global3 = 40054u >> (~(23222u ^ arg_0) % 32u);
    return _wgslsmith_clamp_u32(u_input.a.x, _wgslsmith_mult_u32(~1u, u_input.a.x | _wgslsmith_add_u32(_wgslsmith_div_u32(21478u, arg_0), u_input.a.x & 27949u)), ~reverseBits(_wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_0, u_input.a.x, 0u, u_input.a.x), vec4<u32>(u_input.a.x, 1735u, u_input.a.x, 97465u)), select(vec4<u32>(u_input.a.x, 27046u, arg_0, 0u), vec4<u32>(54918u, arg_0, 71523u, arg_0), vec4<bool>(false, false, true, true)))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, _wgslsmith_f_op_f32(min(-286f, -1388f)), -699f)))));
    var var_1 = global2[_wgslsmith_index_u32(max(~_wgslsmith_div_u32(_wgslsmith_sub_u32(func_3(u_input.a.x), ~13283u), _wgslsmith_div_u32(~u_input.a.x, _wgslsmith_clamp_u32(u_input.a.x, u_input.a.x, 49643u))), 57117u), 24u)];
    var var_2 = reverseBits(-global1.yyz);
    let var_3 = Struct_1(any(vec4<bool>(all(vec3<bool>(var_1.a, true, false)), var_1.a, false, var_1.a || var_1.a)));
    let var_4 = global2[_wgslsmith_index_u32(u_input.a.x, 24u)];
    return ~(~(~abs(reverseBits(u_input.a.x))));
}

fn func_4(arg_0: vec4<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> Struct_1 {
    global0 = array<i32, 22>();
    let var_0 = Struct_1(true);
    let var_1 = var_0;
    let var_2 = _wgslsmith_mod_i32(func_1().x << (_wgslsmith_add_u32(_wgslsmith_sub_u32(arg_0.x, ~u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, abs(4294967295u))) % 32u), _wgslsmith_mod_i32(0i ^ global1.x, -func_1().x));
    var var_3 = countOneBits(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.x, 5517u, arg_1, arg_0.x) | reverseBits(vec4<u32>(arg_1, 1u, 29145u, arg_0.x)), arg_0), ~(~vec4<u32>(arg_0.x, 1u, 15174u, arg_0.x) >> (~arg_0 % vec4<u32>(32u)))), 22u)]);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec4<i32>(u_input.b >> ((u_input.a.x >> (~u_input.a.x % 32u)) % 32u), -global1.x, max(_wgslsmith_dot_vec2_i32(countOneBits(~vec2<i32>(-1i, global1.x)), global1.xw), i32(-1i) * -49074i), -2147483647i);
    global1 = _wgslsmith_div_vec4_i32(-reverseBits(_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.b, -1i, global1.x, 5867i), ~vec4<i32>(global1.x, -2147483647i, global1.x, global1.x))), func_1());
    let var_0 = ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, 1i, 12556i, 2147483647i), vec4<i32>(-38974i, 14244i, 2147483647i, 0i)), vec4<i32>(-45530i, 21529i, global1.x, -1i)), -vec4<i32>(global1.x, -2147483647i, -63163i, -2147483647i)), vec4<i32>(~2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(global1.x, u_input.b, 19046i, -2801i), vec4<i32>(6041i, -12531i, global1.x, global1.x)), 40241i, abs(u_input.b)) << (vec4<u32>(~4294967295u, u_input.a.x, abs(85511u), ~u_input.a.x) % vec4<u32>(32u)));
    let var_1 = vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(global1.x, -1i), _wgslsmith_add_vec2_i32(select(vec2<i32>(var_0.x, global0[_wgslsmith_index_u32(2493u, 22u)]), vec2<i32>(u_input.b, var_0.x), vec2<bool>(true, true)), var_0.yx))) & -(~global1.wx);
    let var_2 = func_4(reverseBits(countOneBits(abs(vec4<u32>(u_input.a.x, u_input.a.x, 28651u, u_input.a.x))) << (~min(vec4<u32>(u_input.a.x, 13283u, u_input.a.x, u_input.a.x), vec4<u32>(1u, 0u, 1u, u_input.a.x)) % vec4<u32>(32u))), ~(func_2(global2[_wgslsmith_index_u32(22586u, 24u)]) << (_wgslsmith_mod_u32(1u | u_input.a.x, u_input.a.x) % 32u)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), select(select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), true), vec4<bool>(true, true, false, true), false), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true)), vec4<bool>(true, true, true, true)), vec4<bool>(true, all(vec2<bool>(false, false)), false, true))), true);
    global1 = var_0;
    var var_3 = global0[_wgslsmith_index_u32(~(~_wgslsmith_add_u32(~4294967295u, u_input.a.x)), 22u)] & _wgslsmith_dot_vec2_i32(-vec2<i32>(~var_0.x, 38927i ^ global1.x), vec2<i32>(~(i32(-1i) * -2147483647i), -1i));
    let var_4 = var_2;
    var var_5 = func_4(vec4<u32>(~abs(4294967295u), abs(1u), func_2(func_4(vec4<u32>(4294967295u, u_input.a.x, 61457u, 1u), 1u, vec4<bool>(false, false, var_4.a, var_4.a), var_4.a)), (u_input.a.x & 7198u) & select(11366u, u_input.a.x, var_4.a)) | min(vec4<u32>(u_input.a.x, u_input.a.x >> (0u % 32u), 1u, 8468u), vec4<u32>(reverseBits(u_input.a.x), u_input.a.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a), 0u)), max(~4294967295u, abs(u_input.a.x)), !vec4<bool>(any(vec2<bool>(true, var_2.a)), any(vec4<bool>(true, var_4.a, var_4.a, var_2.a)), all(select(vec3<bool>(false, var_4.a, var_4.a), vec3<bool>(var_2.a, var_4.a, false), var_2.a)), var_4.a), select(func_4(~(~vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_sub_u32(12648u, u_input.a.x) << (u_input.a.x % 32u), !vec4<bool>(var_2.a, true, true, var_4.a), select(true, any(vec2<bool>(var_2.a, true)), true)).a, global0[_wgslsmith_index_u32(7518u, 22u)] <= _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_1.x, global0[_wgslsmith_index_u32(u_input.a.x, 22u)], 3151i), var_0), var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(select(max(u_input.a.x, 137707u), ~(~(~7695u)), func_4(vec4<u32>(_wgslsmith_div_u32(0u, u_input.a.x), ~1u, u_input.a.x, ~u_input.a.x), ~(~u_input.a.x), vec4<bool>(var_2.a, var_2.a, func_4(vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x), 53910u, vec4<bool>(var_2.a, var_5.a, var_2.a, false), var_2.a).a, var_2.a), !var_2.a).a), 2147483647i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(514f * 325f), 545f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(128f - -177f), 770f)))));
}

