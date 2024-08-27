struct Struct_1 {
    a: u32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(false, true, false, true);

var<private> global1: Struct_1 = Struct_1(1u, vec3<f32>(140f, -577f, 624f));

var<private> global2: i32;

var<private> global3: array<vec2<bool>, 19>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: vec3<i32>) -> vec4<bool> {
    global2 = ~(-23458i);
    let var_0 = arg_1;
    var var_1 = Struct_1(arg_1.a, vec3<f32>(_wgslsmith_f_op_f32(round(arg_2.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-383f * arg_1.b.x)), _wgslsmith_f_op_f32(max(var_0.b.x, _wgslsmith_f_op_f32(trunc(-692f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_2.x))) + -1000f)));
    var var_2 = arg_3.yz;
    var var_3 = _wgslsmith_f_op_f32(ceil(-527f));
    return !(!(!select(vec4<bool>(true, global0.x, true, true), !vec4<bool>(global0.x, false, global0.x, global0.x), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, true, global0.x), global0.x))));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    var var_0 = Struct_1(4294967295u, global1.b);
    global0 = select(!vec4<bool>(global0.x, all(vec4<bool>(global0.x, true, false, global0.x)), !(!global0.x), global0.x), vec4<bool>(all(!select(vec4<bool>(false, global0.x, true, true), vec4<bool>(true, false, global0.x, global0.x), true)), global0.x, !global0.x, true), select(select(func_3(firstTrailingBit(-22652i), Struct_1(0u, var_0.b), global1.b, vec3<i32>(83450i, 7368i, -1i)), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), global0.x), !vec4<bool>(true, global0.x, false, false), all(vec2<bool>(global0.x, false))), false), !(!select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(false, true, true, false), vec4<bool>(false, global0.x, true, true))), vec4<bool>(true, any(!global0.xwz), global0.x, true)));
    var var_1 = func_3(_wgslsmith_mult_i32(-1i, i32(-1i) * -(~(-2147483647i))), Struct_1(arg_0.x, vec3<f32>(global1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.b.x)) - _wgslsmith_f_op_f32(trunc(var_0.b.x))), var_0.b.x)), _wgslsmith_f_op_vec3_f32(-var_0.b), _wgslsmith_mod_vec3_i32(vec3<i32>(20364i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-6639i, -3920i), i32(-1i) * -20777i, _wgslsmith_sub_i32(-27449i, 9751i)), _wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i)), ~vec3<i32>(i32(-1i) * -1i, 0i, 0i >> (arg_0.x % 32u)))).x;
    let var_2 = ~(~abs(vec3<i32>(1i, 1i, 1i))) ^ (max(-_wgslsmith_mod_vec3_i32(vec3<i32>(-4163i, -2147483647i, 2147483647i), vec3<i32>(-2147483647i, 2147483647i, -2147483647i)), _wgslsmith_sub_vec3_i32(-vec3<i32>(10506i, 1i, 6242i), _wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, -41129i, 2147483647i), vec3<i32>(1i, 2147483647i, -1i)))) << (abs((vec3<u32>(0u, arg_0.x, var_0.a) & vec3<u32>(global1.a, 26491u, global1.a)) ^ abs(vec3<u32>(u_input.a, arg_0.x, u_input.a))) % vec3<u32>(32u)));
    var var_3 = _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(-15996i, ~2147483647i, 1i), _wgslsmith_div_i32(var_2.x, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, var_2.x, 2147483647i, 44504i), vec4<i32>(var_2.x, -2147483647i, 2147483647i, var_2.x))), -1i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, -var_2.x, -10148i), ~var_2 & vec3<i32>(54720i, -1i, var_2.x))), -2048i);
    return -1415f;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1;
    var var_1 = arg_1;
    global1 = Struct_1(1u, arg_1.b);
    global3 = array<vec2<bool>, 19>();
    let var_2 = global1.b.x;
    return var_0;
}

fn func_1() -> Struct_1 {
    let var_0 = global1.a;
    var var_1 = select(!select(!select(vec4<bool>(false, global0.x, true, global0.x), vec4<bool>(global0.x, global0.x, false, true), false), !vec4<bool>(true, global0.x, global0.x, global0.x), select(vec4<bool>(false, global0.x, global0.x, global0.x), !vec4<bool>(global0.x, global0.x, false, false), all(global0.wzz))), vec4<bool>(any(global0.zxx), true, true, global1.a != (~19586u >> (max(global1.a, global1.a) % 32u))), !vec4<bool>(false, !all(vec4<bool>(global0.x, false, global0.x, global0.x)), all(select(vec4<bool>(global0.x, global0.x, true, false), vec4<bool>(true, true, global0.x, global0.x), false)), false));
    var var_2 = func_4(-1i, Struct_1(18142u << (1u % 32u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(~vec2<u32>(u_input.a, 32726u))))));
    var var_3 = vec2<bool>(!(false & all(vec4<bool>(global0.x, global0.x, var_1.x, false))) && global0.x, true);
    var var_4 = Struct_1(u_input.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-686f, global1.b.x, var_2.b.x), _wgslsmith_f_op_vec3_f32(-var_2.b), all(global0.xzx)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1384f), _wgslsmith_f_op_f32(-932f + 356f), 1407f)))));
    return Struct_1(38645u, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(var_4.b, _wgslsmith_f_op_vec3_f32(-func_4(34524i, Struct_1(var_2.a, var_4.b), var_4.b.x).b))))));
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> u32 {
    let var_0 = select(1i, arg_1, global0.x);
    let var_1 = arg_0;
    global2 = ~(-_wgslsmith_sub_i32(var_0, 2147483647i));
    global0 = vec4<bool>(all(vec4<bool>(false, var_1.b.x > arg_2.b.x, true, false)) | !global0.x, true, all(func_3(var_0, var_1, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(arg_0.b.x, arg_0.b.x, -561f), arg_0.b) - vec3<f32>(820f, arg_0.b.x, -380f)), vec3<i32>(arg_1, var_0, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, arg_1, -1i), vec3<i32>(arg_1, arg_1, arg_1)))).yy), !global0.x);
    var var_2 = vec2<u32>(firstTrailingBit(~global1.a), firstLeadingBit(_wgslsmith_sub_u32(~36065u, arg_0.a & var_1.a)) | 4294967295u);
    return _wgslsmith_clamp_u32(0u, ~(64884u ^ var_2.x) & ~global1.a, firstTrailingBit(func_4(-2147483647i, Struct_1(29367u, vec3<f32>(2139f, global1.b.x, global1.b.x)), _wgslsmith_f_op_f32(exp2(arg_2.b.x))).a)) ^ ~_wgslsmith_sub_u32(~firstTrailingBit(var_1.a), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, 4294967295u, arg_2.a, 21468u), vec4<u32>(arg_0.a, var_1.a, 0u, 1u), vec4<u32>(var_1.a, 1u, 0u, 42219u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(43224u, 4294967295u, 0u, 13130u), vec4<u32>(var_2.x, 85254u, var_2.x, 0u), vec4<u32>(var_2.x, u_input.a, var_2.x, u_input.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    var var_1 = true;
    let var_2 = _wgslsmith_mod_u32(func_5(Struct_1(global1.a, vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), -658f, _wgslsmith_f_op_f32(step(global1.b.x, -778f)))), reverseBits(1i), func_1()), 1u);
    let var_3 = Struct_1(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(69228u, 21619u, 0u, 1u)), _wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(4294967295u, 4294967295u, var_2, u_input.a)), _wgslsmith_mult_vec4_u32(vec4<u32>(16232u, 0u, 18731u, u_input.a), vec4<u32>(global1.a, var_2, 143682u, var_2)))) & (abs(_wgslsmith_mod_u32(global1.a, u_input.a)) & ~_wgslsmith_sub_u32(34954u, 11550u)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(global1.b * _wgslsmith_f_op_vec3_f32(-global1.b)))));
    global2 = -_wgslsmith_sub_i32(_wgslsmith_mod_i32(reverseBits(i32(-1i) * -25541i), 1i), -abs(max(1i, -7883i)));
    let var_4 = Struct_1(((var_3.a << ((19463u & var_2) % 32u)) & _wgslsmith_mult_u32(1u, 1u)) << (~_wgslsmith_mult_u32(func_5(var_3, -1i, var_3), 10930u >> (var_3.a % 32u)) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.b.x * -156f)), 683f, global1.b.x));
    var_0 = firstTrailingBit(~_wgslsmith_dot_vec4_u32(~vec4<u32>(var_3.a, var_4.a, var_3.a, 4294967295u), ~firstTrailingBit(vec4<u32>(4294967295u, u_input.a, 0u, u_input.a))));
    let var_5 = reverseBits(2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(var_5, -2147483647i, var_5), -1i) >> (~48297u % 32u)), _wgslsmith_f_op_vec3_f32(max(var_4.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b.x, 443f, 581f))))));
}

