struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec3<u32>(0u, 55355u, 93291u), 4294967295u);

var<private> global1: array<Struct_2, 10>;

var<private> global2: Struct_1 = Struct_1(vec3<u32>(1u, 44352u, 4294967295u), 14832u);

var<private> global3: array<vec2<i32>, 32> = array<vec2<i32>, 32>(vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(-1i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(51450i, 2147483647i), vec2<i32>(-6410i, -13586i), vec2<i32>(0i, 15643i), vec2<i32>(-5295i, 22724i), vec2<i32>(0i, 0i), vec2<i32>(4897i, -1i), vec2<i32>(-47003i, -124522i), vec2<i32>(-50758i, 1i), vec2<i32>(i32(-2147483648), 2147483647i), vec2<i32>(0i, 14531i), vec2<i32>(-70699i, -1i), vec2<i32>(-27747i, -15866i), vec2<i32>(-45409i, 24055i), vec2<i32>(-1i, -1i), vec2<i32>(36124i, 2147483647i), vec2<i32>(1i, 28124i), vec2<i32>(2147483647i, 4137i), vec2<i32>(1447i, 22550i), vec2<i32>(11537i, -29053i), vec2<i32>(-1i, 15126i), vec2<i32>(0i, i32(-2147483648)), vec2<i32>(0i, -1i), vec2<i32>(-1i, -4907i), vec2<i32>(11937i, -1i), vec2<i32>(-31451i, -1i), vec2<i32>(-6687i, 11077i), vec2<i32>(27046i, 2147483647i), vec2<i32>(24i, -7502i), vec2<i32>(17626i, 1i));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: i32) -> bool {
    return !(select(true, true, false) & false);
}

fn func_3(arg_0: vec4<bool>, arg_1: f32, arg_2: vec3<f32>) -> Struct_2 {
    let var_0 = Struct_1(global0.a, _wgslsmith_dot_vec3_u32(u_input.a.yxz, ~u_input.a.zyz));
    let var_1 = _wgslsmith_mult_vec3_i32(~reverseBits(_wgslsmith_sub_vec3_i32(vec3<i32>(-49120i, 2147483647i, 54239i), vec3<i32>(-1i, u_input.c, 12552i))) ^ -(firstLeadingBit(vec3<i32>(1i, u_input.c, u_input.c)) | ~vec3<i32>(u_input.c, u_input.c, 3158i)), reverseBits(-vec3<i32>(u_input.c, u_input.c, u_input.c) & abs(vec3<i32>(u_input.c, u_input.c, 0i))) & -(vec3<i32>(-1i) * -vec3<i32>(53953i, -2147483647i, 0i)));
    global2 = Struct_1(~countOneBits(~u_input.a.ywz), _wgslsmith_sub_u32(global0.b, u_input.d));
    global3 = array<vec2<i32>, 32>();
    global3 = array<vec2<i32>, 32>();
    return global1[_wgslsmith_index_u32(~global0.b, 10u)];
}

fn func_1(arg_0: f32, arg_1: vec3<f32>, arg_2: Struct_1) -> vec4<bool> {
    var var_0 = !vec2<bool>((1u >> (_wgslsmith_dot_vec3_u32(u_input.a.wzy, vec3<u32>(18286u, global2.a.x, 13447u)) % 32u)) != 15796u, select(true, any(vec3<bool>(true, false, true)) && all(vec2<bool>(false, false)), true));
    var var_1 = -1i;
    global2 = arg_2;
    var var_2 = func_3(vec4<bool>(true, func_2(43715u, global1[_wgslsmith_index_u32(1u, 10u)], reverseBits(u_input.c)), var_0.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * -1444f)))), _wgslsmith_f_op_vec3_f32(-arg_1));
    return !vec4<bool>(!var_0.x, !var_0.x, var_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(select(vec4<bool>(true, true, true, true), func_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-143f, -1000f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1921f, -1384f, -1357f)) - _wgslsmith_div_vec3_f32(vec3<f32>(259f, 607f, -660f), vec3<f32>(-1513f, -976f, 1000f))), Struct_1(~u_input.a.zxy, global2.b)), true), func_1(_wgslsmith_f_op_f32(exp2(1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(495f, 368f, -1195f), vec3<f32>(-779f, -1106f, 672f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-187f, -860f, -1302f), vec3<f32>(1616f, 648f, -213f), vec3<bool>(false, true, false)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(546f, 1173f, -577f))))), Struct_1(global2.a, 4294967295u)), func_1(-706f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1215f, 1410f)))), Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(3598u, global0.a.x, u_input.d), u_input.a.yxy), _wgslsmith_clamp_u32(81521u, countOneBits(u_input.b.x), 1u))));
    var var_1 = Struct_1(~vec3<u32>(4294967295u, global0.a.x, u_input.a.x), 1u);
    var var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1623f, -436f, 442f, _wgslsmith_div_f32(365f, 1f)));
    let var_3 = 35140u;
    var var_4 = _wgslsmith_dot_vec2_u32(global2.a.xx, _wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(7054u, global0.a.x)) >> (~var_1.a.xy % vec2<u32>(32u)), vec2<u32>(4294967295u, var_1.b)), vec2<u32>(4294967295u, u_input.b.x) ^ ~_wgslsmith_clamp_vec2_u32(var_1.a.xy, vec2<u32>(4294967295u, 4294967295u), vec2<u32>(global0.b, var_1.b))));
    global1 = array<Struct_2, 10>();
    var var_5 = ~_wgslsmith_mod_vec2_u32(global0.a.yy, u_input.a.xz);
    let var_6 = global1[_wgslsmith_index_u32(~firstTrailingBit(~_wgslsmith_sub_u32(_wgslsmith_add_u32(0u, 51539u), global0.a.x | global2.a.x)), 10u)];
    global2 = func_3(select(vec4<bool>(var_0.x, true, any(vec2<bool>(true, false)), true), vec4<bool>((var_0.x || false) || (1u >= u_input.a.x), any(func_1(var_2.x, var_2.xxx, Struct_1(vec3<u32>(38734u, 4642u, 1u), 4294967295u)).zz), !any(vec4<bool>(false, var_0.x, false, false)), (0i >> (0u % 32u)) >= ~u_input.c), func_1(_wgslsmith_f_op_f32(select(-1025f, _wgslsmith_f_op_f32(select(-432f, var_2.x, false)), all(var_0.xw))), vec3<f32>(_wgslsmith_f_op_f32(trunc(-1546f)), _wgslsmith_f_op_f32(var_2.x + var_2.x), _wgslsmith_f_op_f32(-614f + var_2.x)), func_3(select(vec4<bool>(false, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, var_0.x, var_0.x), var_0), _wgslsmith_f_op_f32(round(var_2.x)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_2.x, var_2.x, -325f), vec3<f32>(-514f, -1000f, -1000f)))).a)), -1503f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_2.wxw * _wgslsmith_f_op_vec3_f32(min(var_2.yzy, var_2.wzw))) * _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_2.x, _wgslsmith_f_op_f32(1485f - var_2.x), _wgslsmith_f_op_f32(-var_2.x)))))).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(_wgslsmith_sub_i32(1i, i32(-1i) * -2147483647i), u_input.c, firstTrailingBit(1i & u_input.c)), vec3<f32>(_wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1156f + 609f) + -502f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-728f))), 1973f), vec2<u32>(var_5.x, u_input.d), countOneBits(abs(u_input.c)));
}

