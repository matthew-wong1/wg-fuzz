struct Struct_1 {
    a: f32,
    b: vec3<i32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: f32,
    d: vec3<i32>,
}

struct Struct_4 {
    a: bool,
}

struct Struct_5 {
    a: vec2<f32>,
    b: u32,
    c: Struct_4,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<f32, 20>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec3<u32>, arg_1: f32, arg_2: bool, arg_3: Struct_5) -> bool {
    let var_0 = 6963u;
    var var_1 = Struct_2(Struct_1(-1132f, countOneBits(vec3<i32>(u_input.a.x, 50702i, u_input.b)) << (vec3<u32>(58030u, var_0, arg_3.b & var_0) % vec3<u32>(32u)), select(!(!vec3<bool>(true, arg_2, arg_2)), select(select(vec3<bool>(false, arg_2, arg_2), vec3<bool>(true, false, arg_3.c.a), vec3<bool>(false, arg_3.c.a, arg_2)), vec3<bool>(false, false, true), false & arg_3.c.a), select(!vec3<bool>(arg_3.c.a, false, arg_2), vec3<bool>(arg_3.c.a, false, arg_3.c.a), select(vec3<bool>(true, false, arg_2), vec3<bool>(arg_3.c.a, arg_3.c.a, arg_3.c.a), arg_3.c.a)))), Struct_1(_wgslsmith_div_f32(arg_3.a.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(f32(-1f) * -296f)))), u_input.a.wwz, !(!vec3<bool>(true, arg_2, arg_3.c.a))), !arg_3.c.a, Struct_1(_wgslsmith_f_op_f32(arg_3.d.x - arg_3.d.x), -u_input.a.zyz, vec3<bool>(true, true, all(!vec2<bool>(false, arg_3.c.a)))), -331f);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(418f))), -(~(vec3<i32>(8428i, u_input.a.x, u_input.a.x) >> (vec3<u32>(23607u, 4294967295u, 43286u) % vec3<u32>(32u)))), vec3<bool>(all(select(vec4<bool>(false, arg_2, arg_3.c.a, arg_2), vec4<bool>(true, arg_2, false, false), vec4<bool>(true, false, var_1.d.c.x, arg_2))), !all(vec4<bool>(arg_2, false, arg_3.c.a, true)), all(vec2<bool>(arg_3.c.a, true)) && select(false, false, true))), Struct_1(global1[_wgslsmith_index_u32(~4294967295u, 20u)], -u_input.a.yzw, select(var_1.d.c, vec3<bool>(all(vec2<bool>(true, arg_3.c.a)), arg_3.c.a, !var_1.c), !select(vec3<bool>(true, var_1.d.c.x, false), var_1.d.c, var_1.b.c))), _wgslsmith_mod_u32(~(~1u), ~1u) != firstLeadingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(12193u, var_0, var_0, 115654u), ~vec4<u32>(10990u, var_0, 0u, global0.x))), var_1.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_3.a.x, 1f)), _wgslsmith_f_op_f32(-var_1.d.a))));
    var_1 = Struct_2(Struct_1(arg_1, var_2.a.b, !vec3<bool>(false, !var_1.b.c.x, !arg_3.c.a)), var_1.b, any(var_1.a.c.zz) || false, var_1.d, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.d.x) + -871f) - -1297f))));
    global0 = abs(abs(~min(arg_0.yz, arg_0.yx)));
    return false;
}

fn func_2(arg_0: u32, arg_1: u32) -> vec3<bool> {
    var var_0 = all(vec3<bool>(true, true, true)) & select(select(false, false, all(vec2<bool>(true, true))), !func_3(select(vec3<u32>(68491u, 1u, 1u), vec3<u32>(arg_1, arg_1, 0u), vec3<bool>(true, false, false)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(arg_1, 71491u, arg_0), 20u)], any(vec4<bool>(true, false, false, true)), Struct_5(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 20u)], -1000f), 69566u, Struct_4(false), vec4<f32>(1056f, 2930f, -785f, global1[_wgslsmith_index_u32(27209u, 20u)]))), all(vec2<bool>(select(true, true, false), true)));
    var_0 = (u_input.a.x & _wgslsmith_clamp_i32(_wgslsmith_sub_i32(1i, -1i), -1i, 28007i ^ firstLeadingBit(u_input.b))) == (i32(-1i) * -(reverseBits(u_input.a.x) >> (1u % 32u)));
    global1 = array<f32, 20>();
    var var_1 = Struct_2(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(300f, global1[_wgslsmith_index_u32(~global0.x, 20u)]) + _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(arg_0, 20u)])), vec3<i32>(_wgslsmith_clamp_i32(-2147483647i, abs(u_input.a.x), u_input.a.x & u_input.b), select(-2147483647i, _wgslsmith_div_i32(u_input.a.x, u_input.b), true), firstLeadingBit(u_input.b) ^ -21148i), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 20u)] + global1[_wgslsmith_index_u32(arg_1, 20u)])), -515f, true)), select(select(~u_input.a.wxz, u_input.a.wzz, u_input.b <= u_input.a.x), u_input.a.wxz, vec3<bool>(true, true, true)), select(vec3<bool>(true, func_3(vec3<u32>(arg_1, 0u, arg_1), 759f, true, Struct_5(vec2<f32>(global1[_wgslsmith_index_u32(arg_1, 20u)], 1706f), 40033u, Struct_4(false), vec4<f32>(-772f, 800f, global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(arg_1, 20u)]))), true), vec3<bool>(u_input.a.x != u_input.a.x, true, false), false)), all(vec4<bool>(true, true, true, true)), Struct_1(412f, firstTrailingBit(~u_input.a.www), select(vec3<bool>(global1[_wgslsmith_index_u32(0u, 20u)] > -1310f, true, true), vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), _wgslsmith_div_f32(-506f, 1f));
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(arg_0, 20u)], 1402f) + -214f))), var_1.b.b, select(vec3<bool>(all(var_1.d.c), var_1.b.c.x, true), select(vec3<bool>(var_1.a.c.x, var_1.c, var_1.d.c.x), var_1.d.c, true), false && (var_1.b.c.x & var_1.a.c.x))), var_1.a, var_1.a.c.x, Struct_1(_wgslsmith_f_op_f32(floor(2077f)), _wgslsmith_sub_vec3_i32(reverseBits(~vec3<i32>(u_input.a.x, -9906i, var_1.a.b.x)), select(u_input.a.xxx, vec3<i32>(u_input.a.x, -4815i, -48619i), true) | countOneBits(vec3<i32>(21636i, 464i, 0i))), select(vec3<bool>(any(vec2<bool>(true, var_1.d.c.x)), any(var_1.b.c), all(var_1.a.c.xy)), var_1.d.c, select(var_1.b.c, vec3<bool>(var_1.d.c.x, var_1.b.c.x, var_1.a.c.x), var_1.b.c))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(~1u, 20u)], -3273f) * global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_1, firstTrailingBit(~arg_0)), 20u)]));
    return vec3<bool>(true, any(var_1.d.c) | false, false);
}

fn func_1(arg_0: Struct_5) -> Struct_1 {
    global1 = array<f32, 20>();
    var var_0 = 8404i;
    let var_1 = !vec2<bool>(all(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, arg_0.c.a, false), arg_0.c.a)) | all(select(vec3<bool>(arg_0.c.a, arg_0.c.a, arg_0.c.a), vec3<bool>(arg_0.c.a, false, true), arg_0.c.a)), false);
    var var_2 = !vec4<bool>(false, var_1.x, all(func_2(global0.x & 62920u, countOneBits(global0.x))), 52503u > ~arg_0.b);
    var var_3 = arg_0.c;
    return Struct_1(_wgslsmith_f_op_f32(105f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(40974u, 20u)]) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(arg_0.b, 20u)] + -516f))))), _wgslsmith_div_vec3_i32(~max(vec3<i32>(2147483647i, u_input.b, u_input.a.x) & u_input.a.xwx, u_input.a.xxw), ~firstLeadingBit(vec3<i32>(22263i, 32253i, -1178i))), vec3<bool>((global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global0.x, arg_0.b), 20u)] >= -248f) || var_1.x, true, arg_0.a.x > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(global0.x, 20u)]))))));
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> Struct_2 {
    let var_0 = func_1(Struct_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2535f), _wgslsmith_f_op_f32(304f * _wgslsmith_f_op_f32(trunc(arg_0.a.a)))), 3623u, Struct_4(arg_0.d.c.x), _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(1618f, 190f, arg_0.b.a, global1[_wgslsmith_index_u32(arg_1, 20u)]), vec4<f32>(-305f, arg_0.e, global1[_wgslsmith_index_u32(arg_1, 20u)], global1[_wgslsmith_index_u32(arg_1, 20u)])), vec4<f32>(1595f, _wgslsmith_f_op_f32(arg_0.d.a - arg_0.e), arg_0.e, 1950f)))).c;
    let var_1 = Struct_4(true);
    let var_2 = ~arg_1;
    global1 = array<f32, 20>();
    return Struct_2(arg_0.b, arg_0.a, true, Struct_1(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 20u)] + 946f), _wgslsmith_sub_vec3_i32(vec3<i32>(20217i, arg_0.d.b.x, select(arg_0.d.b.x, -2147483647i, true)), vec3<i32>(reverseBits(u_input.b), arg_0.b.b.x, _wgslsmith_dot_vec2_i32(arg_0.d.b.yy, arg_0.b.b.xx))), var_0), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_2, 20u)]));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(Struct_2(func_1(Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(0u, 20u)]) - vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(30902u, 20u)])), global0.x, Struct_4(true), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(global0.x, 20u)], global1[_wgslsmith_index_u32(global0.x, 20u)]))))), Struct_1(-990f, -u_input.a.yxx, vec3<bool>(false, any(vec2<bool>(true, false)), all(vec2<bool>(false, false)))), select(func_3(~vec3<u32>(24926u, 13431u, 0u), _wgslsmith_f_op_f32(trunc(664f)), true, Struct_5(vec2<f32>(global1[_wgslsmith_index_u32(global0.x, 20u)], -620f), 3494u, Struct_4(false), vec4<f32>(208f, global1[_wgslsmith_index_u32(global0.x, 20u)], 1095f, global1[_wgslsmith_index_u32(1983u, 20u)]))), true, true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1371f), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(u_input.b, -14952i, u_input.b)), u_input.a.wwz), vec3<bool>(all(vec4<bool>(true, true, true, false)), any(vec2<bool>(true, false)), all(vec4<bool>(false, false, true, true)))), _wgslsmith_f_op_f32(floor(-480f))), 0u);
    var var_1 = func_4(Struct_2(var_0.b, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -782f), vec3<i32>(-1i) * -vec3<i32>(var_0.b.b.x, var_0.d.b.x, u_input.b), var_0.d.c), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_0.e - 1561f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.x, 20u)]), func_4(Struct_2(var_0.d, var_0.a, true, var_0.d, -839f), global0.x).b.c.x)) >= global1[_wgslsmith_index_u32(firstTrailingBit(0u), 20u)], var_0.b, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~global0.x, reverseBits(global0.x)), 20u)] + _wgslsmith_f_op_f32(f32(-1f) * -394f))), 78326u).d.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(~0u, 1u, ~min(7245u, global0.x)) << (vec3<u32>(~abs(12332u), select(_wgslsmith_div_u32(53049u, 17337u), global0.x ^ 5604u, all(vec4<bool>(false, false, false, true))), 109369u) % vec3<u32>(32u)), 2147483647i & ~func_1(Struct_5(vec2<f32>(675f, var_0.d.a), 51074u, Struct_4(false), vec4<f32>(var_0.e, 1407f, -1000f, 1836f))).b.x, _wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a.x, 1i, reverseBits(-52783i), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, var_0.d.b.x, var_0.b.b.x), u_input.a.zyy)), ~(u_input.a & u_input.a)), ~vec4<i32>(firstTrailingBit(var_0.a.b.x), 0i, var_0.d.b.x | 0i, max(-22696i, 2147483647i))));
}

