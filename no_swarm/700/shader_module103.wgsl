struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: vec3<u32>,
    e: vec4<bool>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: vec4<i32>,
    d: vec2<u32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 10> = array<vec4<i32>, 10>(vec4<i32>(-54383i, i32(-2147483648), 36693i, -44467i), vec4<i32>(i32(-2147483648), 0i, -1i, -5017i), vec4<i32>(13663i, 1i, 4448i, -37078i), vec4<i32>(0i, 27284i, 1i, 1i), vec4<i32>(0i, 1i, 19712i, 0i), vec4<i32>(-40736i, i32(-2147483648), -34472i, -12170i), vec4<i32>(1i, i32(-2147483648), i32(-2147483648), 48404i), vec4<i32>(-18215i, 44924i, i32(-2147483648), 1i), vec4<i32>(10219i, i32(-2147483648), i32(-2147483648), 42319i), vec4<i32>(2147483647i, 1898i, -1i, -65484i));

var<private> global1: vec2<f32> = vec2<f32>(-1071f, 394f);

var<private> global2: array<vec2<f32>, 18> = array<vec2<f32>, 18>(vec2<f32>(-1191f, -957f), vec2<f32>(-701f, 1579f), vec2<f32>(-181f, 290f), vec2<f32>(-331f, -2304f), vec2<f32>(836f, 459f), vec2<f32>(-1000f, -552f), vec2<f32>(2171f, 196f), vec2<f32>(1397f, 271f), vec2<f32>(1000f, 1759f), vec2<f32>(-1201f, 264f), vec2<f32>(1073f, 518f), vec2<f32>(480f, 740f), vec2<f32>(-683f, -806f), vec2<f32>(-1909f, -739f), vec2<f32>(776f, -1422f), vec2<f32>(-353f, -830f), vec2<f32>(-1000f, -1000f), vec2<f32>(-810f, 209f));

var<private> global3: array<bool, 26> = array<bool, 26>(false, false, true, true, true, false, false, true, false, false, true, false, true, false, false, false, true, true, false, true, true, true, false, true, true, false);

var<private> global4: array<vec3<i32>, 32> = array<vec3<i32>, 32>(vec3<i32>(-24240i, 1i, 54071i), vec3<i32>(-1i, 0i, -53881i), vec3<i32>(-1i, -29482i, 25437i), vec3<i32>(i32(-2147483648), 2147483647i, i32(-2147483648)), vec3<i32>(-19743i, 2147483647i, -5301i), vec3<i32>(2147483647i, 2147483647i, 36199i), vec3<i32>(-1i, 2147483647i, 27044i), vec3<i32>(-21655i, 35233i, -31061i), vec3<i32>(2147483647i, 1i, 2147483647i), vec3<i32>(24381i, 2147483647i, 2147483647i), vec3<i32>(-47405i, -36787i, -28589i), vec3<i32>(-44433i, 2147483647i, -5249i), vec3<i32>(1i, -20270i, 1i), vec3<i32>(-8344i, i32(-2147483648), -1i), vec3<i32>(31290i, 1i, 41787i), vec3<i32>(-4124i, i32(-2147483648), 2147483647i), vec3<i32>(44597i, -1i, -13501i), vec3<i32>(-2867i, 1i, -27535i), vec3<i32>(2147483647i, i32(-2147483648), -1i), vec3<i32>(60265i, 1i, -18453i), vec3<i32>(37193i, -56089i, 0i), vec3<i32>(1i, 1i, i32(-2147483648)), vec3<i32>(i32(-2147483648), -164i, -5517i), vec3<i32>(-1i, -102261i, 2147483647i), vec3<i32>(736i, 18918i, 6693i), vec3<i32>(10679i, 51465i, -1i), vec3<i32>(-54908i, 1i, 2147483647i), vec3<i32>(-1i, 33700i, 14221i), vec3<i32>(-57462i, 0i, -31260i), vec3<i32>(4775i, 52787i, 2147483647i), vec3<i32>(0i, i32(-2147483648), -31583i), vec3<i32>(58347i, 26931i, 1426i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: i32) -> bool {
    global4 = array<vec3<i32>, 32>();
    var var_0 = !(!arg_0);
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-578f - arg_1.x))), -1000f, _wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1.x))));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -527f, global1.x, arg_1.x) * vec4<f32>(var_1.x, global1.x, arg_1.x, 2132f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1000f, 2525f, global1.x)))), vec4<f32>(-1467f, 530f, var_1.x, global1.x), !select(!vec4<bool>(false, false, arg_0, true), select(vec4<bool>(true, arg_0, true, false), vec4<bool>(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(55451u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)], true), true), !arg_0))));
    let var_3 = ~vec2<i32>(~((arg_3 & 1i) | firstLeadingBit(2147483647i)), _wgslsmith_mult_i32(arg_3 << (~26476u % 32u), 37135i));
    return true;
}

fn func_2(arg_0: vec2<i32>) -> vec4<bool> {
    return select(vec4<bool>(func_3(_wgslsmith_f_op_f32(sign(120f)) < _wgslsmith_f_op_f32(min(global1.x, 533f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global1.x, 1360f))))), vec3<i32>(u_input.a.x, u_input.a.x, 1i) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), 1i), !any(vec3<bool>(global3[_wgslsmith_index_u32(24138u, 26u)], true, false)) || global3[_wgslsmith_index_u32(~countOneBits(24159u), 26u)], global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~firstLeadingBit(41547u), ~_wgslsmith_mod_u32(4294967295u, 4294967295u)), 26u)], all(select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(1u, 26u)], false, false), vec4<bool>(true, global3[_wgslsmith_index_u32(49710u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(13741u, 26u)]), select(vec4<bool>(global3[_wgslsmith_index_u32(11827u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)], global3[_wgslsmith_index_u32(26348u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)]), vec4<bool>(false, false, global3[_wgslsmith_index_u32(0u, 26u)], true), false)))), !(!vec4<bool>(global1.x >= global1.x, true, !global3[_wgslsmith_index_u32(31926u, 26u)], false)), !any(select(select(vec2<bool>(true, true), vec2<bool>(global3[_wgslsmith_index_u32(1u, 26u)], global3[_wgslsmith_index_u32(4294967295u, 26u)]), vec2<bool>(global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(11270u, 26u)])), select(vec2<bool>(false, true), vec2<bool>(global3[_wgslsmith_index_u32(39944u, 26u)], global3[_wgslsmith_index_u32(0u, 26u)]), vec2<bool>(global3[_wgslsmith_index_u32(47814u, 26u)], global3[_wgslsmith_index_u32(45383u, 26u)])), vec2<bool>(global3[_wgslsmith_index_u32(62384u, 26u)], global3[_wgslsmith_index_u32(52060u, 26u)]))));
}

fn func_1(arg_0: vec2<i32>, arg_1: bool) -> u32 {
    let var_0 = _wgslsmith_div_f32(-566f, -1037f);
    var var_1 = !select(vec3<bool>(true, any(vec3<bool>(false, arg_1, global3[_wgslsmith_index_u32(4294967295u, 26u)])), arg_1), vec3<bool>(true, arg_1, global3[_wgslsmith_index_u32(firstTrailingBit(~15390u), 26u)]), any(select(vec4<bool>(arg_1, false, true, true), !vec4<bool>(arg_1, true, false, arg_1), func_2(vec2<i32>(-3430i, 0i)))));
    var var_2 = 1u;
    let var_3 = -708f;
    var var_4 = Struct_2(vec3<i32>(~(~_wgslsmith_clamp_i32(-9682i, arg_0.x, -6722i)), arg_0.x, ~(-25856i)), -1612f, abs(~0u), vec2<i32>(u_input.b.x, ~64920i), Struct_1(-14748i, var_0, global3[_wgslsmith_index_u32(29429u, 26u)] || any(func_2(u_input.a.zy).xy), select(abs(vec3<u32>(17674u, 96524u, 4294967295u)), vec3<u32>(0u, 30981u, 4294967295u), u_input.b.x == u_input.b.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 4416u, 4294967295u), vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u)), vec4<bool>(true, global3[_wgslsmith_index_u32(abs(_wgslsmith_clamp_u32(4294967295u, 4294967295u, 0u)), 26u)], var_1.x, all(vec3<bool>(var_1.x, global3[_wgslsmith_index_u32(1u, 26u)], false)) & false)));
    return _wgslsmith_dot_vec2_u32(vec2<u32>(44328u, ~var_4.e.d.x), select(min(max(var_4.e.d.zx << (var_4.e.d.zy % vec2<u32>(32u)), var_4.e.d.yz << (vec2<u32>(var_4.e.d.x, var_4.e.d.x) % vec2<u32>(32u))), vec2<u32>(var_4.c, var_4.e.d.x)), vec2<u32>(87800u, var_4.c), select(select(func_2(u_input.b.xx).wx, var_4.e.e.xw, select(vec2<bool>(arg_1, global3[_wgslsmith_index_u32(var_4.e.d.x, 26u)]), vec2<bool>(true, false), vec2<bool>(var_1.x, false))), vec2<bool>(true, select(var_1.x, false, true)), var_4.e.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~vec3<i32>(1i, 1i, 1i);
    var var_1 = false & select(global3[_wgslsmith_index_u32(~(~86961u), 26u)] & global3[_wgslsmith_index_u32(1u, 26u)], all(vec2<bool>(global3[_wgslsmith_index_u32(0u, 26u)] && global3[_wgslsmith_index_u32(0u, 26u)], true & global3[_wgslsmith_index_u32(32256u, 26u)])), true);
    var var_2 = Struct_2(vec3<i32>(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-var_0.x, -14803i), _wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(var_0.yx, u_input.b.xz, var_0.zx), reverseBits(vec2<i32>(u_input.b.x, u_input.a.x)), vec2<i32>(var_0.x, 10879i))), _wgslsmith_dot_vec3_i32(global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(52803u, 4294967295u, 11187u), 32u)], -u_input.b) >> (1u % 32u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, global1.x))), global1.x))), 1u, var_0.xy, Struct_1(select(~(~2147483647i), var_0.x, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global1.x, 1000f)) + _wgslsmith_f_op_f32(-global1.x))), true, vec3<u32>(abs(func_1(vec2<i32>(var_0.x, u_input.b.x), true)), _wgslsmith_div_u32(~1u, ~15832u), 1u), select(func_2(vec2<i32>(var_0.x, 8114i) | vec2<i32>(0i, u_input.b.x)), vec4<bool>(false, func_3(global3[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(81363u, 18u)], vec3<i32>(2147483647i, 20231i, u_input.a.x), -43374i), global3[_wgslsmith_index_u32(0u << (1u % 32u), 26u)], true), select(!vec4<bool>(false, global3[_wgslsmith_index_u32(0u, 26u)], global3[_wgslsmith_index_u32(1952u, 26u)], true), vec4<bool>(global3[_wgslsmith_index_u32(54654u, 26u)], global3[_wgslsmith_index_u32(63649u, 26u)], global3[_wgslsmith_index_u32(9790u, 26u)], true), !global3[_wgslsmith_index_u32(43284u, 26u)]))));
    var_0 = var_2.a;
    let var_3 = var_2.e;
    var var_4 = global4[_wgslsmith_index_u32(1u, 32u)];
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_3.b)))));
    var_4 = -var_2.a;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, u_input.a.x << (0u % 32u)), ~var_2.a.zx), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_2.e.b, global1.x)), -2956f), _wgslsmith_f_op_f32(-112f + _wgslsmith_f_op_f32(floor(global1.x))), -568f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -218f), var_3.b))))));
}

