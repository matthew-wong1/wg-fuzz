struct Struct_1 {
    a: vec2<f32>,
    b: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: f32,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 4>;

var<private> global1: array<vec4<u32>, 3> = array<vec4<u32>, 3>(vec4<u32>(1u, 0u, 0u, 42356u), vec4<u32>(7976u, 4294967295u, 91296u, 4294967295u), vec4<u32>(1u, 4294967295u, 56283u, 51591u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(arg_0.yw, abs(~(~vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], global0[_wgslsmith_index_u32(16902u, 4u)])))), 1960f, vec4<u32>(14062u, 1u, ~u_input.c.x, ~_wgslsmith_div_u32(firstLeadingBit(4294967295u), 4294967295u)));
    let var_1 = 889f;
    let var_2 = Struct_2(1u, var_0.a, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(var_0.a.a)), var_0.a.a)) * _wgslsmith_div_vec2_f32(vec2<f32>(1000f, 111f), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_0.b, 130f))))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(var_0.a.a)))), vec2<bool>(true, true))));
    global0 = array<i32, 4>();
    let var_3 = vec3<f32>(var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) - var_0.a.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-210f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.a.x)))));
    return ~var_0.c;
}

fn func_2(arg_0: u32, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: f32) -> Struct_3 {
    var var_0 = min(-1i, -2147483647i);
    let var_1 = arg_2;
    global1 = array<vec4<u32>, 3>();
    global1 = array<vec4<u32>, 3>();
    global1 = array<vec4<u32>, 3>();
    return Struct_3(var_1.b, 2433f, ~func_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-536f, var_1.b.a.x, arg_3, var_1.c.x)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_2.c.x, var_1.b.a.x, arg_3, arg_3))))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: vec3<bool>) -> u32 {
    var var_0 = arg_1;
    var var_1 = Struct_1(vec2<f32>(var_0.a.a.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f + arg_1.a.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -800f) + _wgslsmith_div_f32(arg_1.a.a.x, var_0.a.a.x))))), -(_wgslsmith_add_vec2_i32(~vec2<i32>(var_0.a.b.x, var_0.a.b.x), -var_0.a.b) ^ _wgslsmith_clamp_vec2_i32(-var_0.a.b, vec2<i32>(u_input.a, -1i) & var_0.a.b, arg_1.a.b)));
    let var_2 = arg_1.c.zyw;
    var_0 = arg_1;
    let var_3 = ~reverseBits(firstLeadingBit(~vec4<u32>(arg_1.c.x, 0u, arg_1.c.x, 0u))) & vec4<u32>(_wgslsmith_dot_vec2_u32(var_2.zy, select(max(var_2.yz, var_2.yx), vec2<u32>(u_input.c.x, 4294967295u), arg_2.yy)), _wgslsmith_mod_u32(var_2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(u_input.c.yx, vec2<u32>(80491u, arg_1.c.x), vec2<u32>(1717u, var_2.x)), var_0.c.xw)), var_2.x, 0u);
    return var_3.x ^ var_2.x;
}

fn func_1(arg_0: vec2<f32>) -> bool {
    global0 = array<i32, 4>();
    var var_0 = _wgslsmith_sub_vec2_i32(max(_wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a, u_input.a), vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a)), vec2<i32>(2147483647i, ~u_input.a)), -vec2<i32>(u_input.a, -2147483647i) & vec2<i32>(_wgslsmith_add_i32(global0[_wgslsmith_index_u32(66214u, 4u)], -30794i), ~0i)) | vec2<i32>((u_input.a ^ (-1i ^ u_input.a)) << (u_input.c.x % 32u), global0[_wgslsmith_index_u32(~func_4(true, func_2(u_input.b.x, vec2<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], -22560i), Struct_2(u_input.c.x, Struct_1(arg_0, vec2<i32>(u_input.a, u_input.a)), arg_0), arg_0.x), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true))), 4u)]);
    var_0 = vec2<i32>(-1i) * -_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_add_i32(u_input.a, var_0.x), firstTrailingBit(var_0.x)), ~select(vec2<i32>(-1i, u_input.a), vec2<i32>(2147483647i, -7791i), vec2<bool>(false, false)));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(519f, -1000f, 1303f))), vec3<f32>(-853f, arg_0.x, 661f))), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, arg_0.x, arg_0.x)), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 764f, arg_0.x), vec3<f32>(1000f, arg_0.x, arg_0.x)))))))));
    var_0 = vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], _wgslsmith_clamp_i32(~(-var_0.x), ~abs(-2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0[_wgslsmith_index_u32(u_input.c.x, 4u)], 14041i, var_0.x, 38010i), vec4<i32>(var_0.x | 1i, abs(-41078i), -1i, -2520i & u_input.a))));
    return any(!select(vec3<bool>(any(vec3<bool>(true, true, true)), true, all(vec3<bool>(true, false, false))), vec3<bool>(any(vec4<bool>(true, false, false, false)), true, false), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(203f, 908f)))) & (global0[_wgslsmith_index_u32(11211u, 4u)] >= (1i << (func_2(4294967295u, select(vec2<i32>(u_input.a, u_input.a), vec2<i32>(-6604i, u_input.a), vec2<bool>(true, true)), Struct_2(102176u, Struct_1(vec2<f32>(171f, -625f), vec2<i32>(0i, 49794i)), vec2<f32>(1387f, -872f)), _wgslsmith_f_op_f32(max(1000f, 1000f))).c.x % 32u)));
    global0 = array<i32, 4>();
    var_0 = !all(select(vec2<bool>(any(vec4<bool>(true, false, true, true)), any(vec3<bool>(false, false, true))), vec2<bool>(true, true), all(vec3<bool>(true, true, true))));
    global0 = array<i32, 4>();
    let var_1 = Struct_4(u_input.a, func_1(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(-1000f, -1000f), _wgslsmith_f_op_f32(-302f - 1282f))))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1265f, -1000f)), firstTrailingBit(_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(-38076i, global0[_wgslsmith_index_u32(35810u, 4u)]), vec2<i32>(3263i, -40487i), vec2<i32>(-5245i, 1i)), abs(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], 41581i)), _wgslsmith_div_vec2_i32(vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], u_input.a), vec2<i32>(27199i, global0[_wgslsmith_index_u32(1u, 4u)]))))), 328f);
    let var_2 = -5052i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_i32((select(var_1.c.b, var_1.c.b, var_1.b) & var_1.c.b) >> (func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_1.d, -1718f, var_1.c.a.x, var_1.d)))).yy % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(vec2<i32>(_wgslsmith_dot_vec2_i32(var_1.c.b, var_1.c.b), _wgslsmith_dot_vec2_i32(vec2<i32>(var_2, 2147483647i), var_1.c.b)), vec2<i32>(abs(2147483647i), 0i))), -reverseBits(var_1.c.b));
}

