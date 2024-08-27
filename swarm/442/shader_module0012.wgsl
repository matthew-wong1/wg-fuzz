struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: u32,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32> = vec2<i32>(-1015i, 21897i);

var<private> global1: array<vec3<u32>, 8>;

var<private> global2: i32 = i32(-2147483648);

var<private> global3: array<bool, 4> = array<bool, 4>(true, true, true, true);

var<private> global4: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(-24158i, i32(-2147483648), i32(-2147483648)), vec3<i32>(-49796i, 40046i, -44702i), vec3<i32>(2147483647i, -2178i, 4458i), vec3<i32>(0i, i32(-2147483648), 2147483647i), vec3<i32>(15534i, i32(-2147483648), -1i), vec3<i32>(-44466i, 49412i, i32(-2147483648)), vec3<i32>(2147483647i, 30768i, 38231i), vec3<i32>(1i, 10549i, 0i), vec3<i32>(-9185i, -6641i, 20482i), vec3<i32>(-1i, 16909i, -1i), vec3<i32>(-21659i, -39556i, -16982i), vec3<i32>(-54380i, 36681i, -3555i), vec3<i32>(-31855i, -1i, 26569i), vec3<i32>(56503i, 0i, -27632i), vec3<i32>(-1i, 16172i, 14811i), vec3<i32>(36629i, 1i, 2147483647i));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool, arg_3: Struct_1) -> f32 {
    var var_0 = !vec2<bool>(!any(!vec2<bool>(arg_2, false)), false);
    var var_1 = vec3<bool>(all(vec4<bool>(!(!arg_2), global3[_wgslsmith_index_u32(arg_3.a, 4u)], any(select(vec2<bool>(arg_2, true), vec2<bool>(false, var_0.x), var_0.x)), true)), false, true);
    var_0 = vec2<bool>(select(true, !(true && select(var_0.x, global3[_wgslsmith_index_u32(30902u, 4u)], arg_2)), true), !all(select(select(var_1.xx, vec2<bool>(true, true), vec2<bool>(false, false)), !vec2<bool>(true, global3[_wgslsmith_index_u32(1u, 4u)]), vec2<bool>(true, true))));
    let var_2 = Struct_1(u_input.b, ~_wgslsmith_dot_vec2_u32(select(vec2<u32>(1u, arg_3.d), vec2<u32>(u_input.b, u_input.b) & vec2<u32>(arg_1.b, arg_0.b), arg_1.d.c.x >= arg_3.c.x), ~vec2<u32>(27958u, arg_1.c)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_3.c + vec4<f32>(_wgslsmith_f_op_f32(step(-184f, -201f)), _wgslsmith_f_op_f32(arg_3.c.x + arg_1.d.c.x), arg_1.d.c.x, arg_3.c.x)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.c.x, 569f, arg_1.d.c.x, 1630f))))), 1u, -102888i);
    let var_3 = Struct_4(Struct_2(-17963i, var_2.b));
    return 1416f;
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-726f - _wgslsmith_f_op_f32(func_3(Struct_2(u_input.a.x, u_input.b), Struct_3(Struct_2(-1i, u_input.b), 0u, 4294967295u, Struct_1(u_input.b, u_input.b, vec4<f32>(-923f, -333f, 622f, -1484f), u_input.b, -30679i)), true, Struct_1(u_input.b, u_input.b, vec4<f32>(1000f, 343f, -1000f, -173f), 4294967295u, global0.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-1378f, _wgslsmith_f_op_f32(f32(-1f) * -957f))), -316f))));
    let var_1 = Struct_4(Struct_2(global0.x, _wgslsmith_mult_u32(reverseBits(1u ^ u_input.b), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, 19478u, 0u), vec4<u32>(u_input.b, 1u, u_input.b, u_input.b)) ^ 32765u)));
    var var_2 = true;
    global0 = u_input.a.xz;
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, var_0.x, -1127f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 536f, var_0.x) + vec3<f32>(var_0.x, -1681f, var_0.x)), vec3<bool>(true, global3[_wgslsmith_index_u32(62619u, 4u)], false))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(115f, -1659f, var_0.x)))), vec3<bool>(any(vec4<bool>(false, true, global3[_wgslsmith_index_u32(u_input.b, 4u)], false)), global3[_wgslsmith_index_u32(~u_input.b, 4u)], true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(ceil(1798f)), 476f, -1354f))), vec3<bool>(any(vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 4u)], false, global3[_wgslsmith_index_u32(4294967295u, 4u)])), true, global3[_wgslsmith_index_u32(u_input.b, 4u)]))) * _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1313f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1532f * var_0.x) * _wgslsmith_f_op_f32(-var_0.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -860f), _wgslsmith_f_op_f32(select(var_0.x, 1000f, false))))))));
    return Struct_2(~(-2147483647i >> (firstLeadingBit(36898u & u_input.b) % 32u)), var_1.a.b);
}

fn func_1() -> Struct_3 {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1f, _wgslsmith_div_f32(1467f, _wgslsmith_f_op_f32(-173f - 690f))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1165f, 1714f))))))));
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(160f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + var_1.x)), 1f) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-887f, _wgslsmith_f_op_f32(trunc(119f)), var_1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, var_1.x)))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(min(-2253f, _wgslsmith_f_op_f32(var_1.x - 424f))), var_1.x, _wgslsmith_f_op_f32(step(-1037f, -151f))))));
    var var_3 = var_2.zz;
    var var_4 = abs(u_input.a.x);
    return Struct_3(func_2(), var_0.b, ~0u, Struct_1(~select(~0u, ~var_0.b, !global3[_wgslsmith_index_u32(u_input.b, 4u)]), ~35345u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-356f, 351f, -1633f, var_1.x)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1380f, var_2.x, var_1.x, 1865f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-745f, 353f, 1661f, var_3.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-536f, var_2.x, 724f, 332f))))), _wgslsmith_mod_u32(9493u, var_0.b) << (0u % 32u), -2147483647i));
}

fn func_4(arg_0: vec2<bool>, arg_1: i32, arg_2: Struct_3) -> vec3<i32> {
    var var_0 = -(~min(arg_2.d.e, select(reverseBits(u_input.a.x), _wgslsmith_mod_i32(global0.x, -22428i), all(vec4<bool>(arg_0.x, arg_0.x, global3[_wgslsmith_index_u32(arg_2.a.b, 4u)], false)))));
    let var_1 = func_1().d;
    global1 = array<vec3<u32>, 8>();
    return _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(2843i, global0.x, arg_2.a.a), u_input.a) << (vec3<u32>(max(0u, var_1.a), arg_2.b, 13419u) % vec3<u32>(32u)), global4[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(u_input.b, 4294967295u) | 0u), 16u)]), ~vec3<i32>(-func_1().a.a, global0.x << (~4294967295u % 32u), ~u_input.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_4(select(vec2<bool>(false, false), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 4u)], global3[_wgslsmith_index_u32(0u, 4u)]), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 4u)]), global3[_wgslsmith_index_u32(u_input.b, 4u)]), !global3[_wgslsmith_index_u32(4294967295u, 4u)]), 2147483647i, func_1())) | global4[_wgslsmith_index_u32(0u, 16u)];
    var var_1 = Struct_2(select(firstTrailingBit(15974i), u_input.a.x, var_0.x > ((i32(-1i) * -1i) ^ (var_0.x ^ 1i))), _wgslsmith_sub_u32(func_2().b, u_input.b));
    let var_2 = select(_wgslsmith_sub_vec3_i32(-(vec3<i32>(-1i) * -var_0), select(-max(vec3<i32>(var_1.a, u_input.c.x, -15398i), u_input.a), vec3<i32>(-2147483647i, -1i, 20322i), select(vec3<bool>(global3[_wgslsmith_index_u32(5546u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(4294967295u, 4u)]), !vec3<bool>(true, false, global3[_wgslsmith_index_u32(4294967295u, 4u)]), vec3<bool>(true, global3[_wgslsmith_index_u32(6071u, 4u)], true)))), ~vec3<i32>(var_1.a, ~7740i << (var_1.b % 32u), -(~(-35864i))), !(!(!global3[_wgslsmith_index_u32(~4294967295u, 4u)])));
    global4 = array<vec3<i32>, 16>();
    global3 = array<bool, 4>();
    var var_3 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(-449f, 1596f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f + 1080f), _wgslsmith_f_op_f32(-func_1().d.c.x))), -368f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(abs(i32(-1i) * -1i), ~(-15047i)) | reverseBits(-global0.x), 118f, -u_input.c.x);
}

