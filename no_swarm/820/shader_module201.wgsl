struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 11> = array<vec2<u32>, 11>(vec2<u32>(56170u, 4294967295u), vec2<u32>(11264u, 1u), vec2<u32>(0u, 1u), vec2<u32>(27481u, 4294967295u), vec2<u32>(1u, 24514u), vec2<u32>(0u, 18029u), vec2<u32>(1u, 46143u), vec2<u32>(42538u, 66486u), vec2<u32>(64395u, 38526u), vec2<u32>(1u, 4294967295u), vec2<u32>(1u, 1u));

var<private> global1: f32;

var<private> global2: array<vec4<u32>, 6>;

var<private> global3: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(1u, vec3<bool>(true, false, false), vec4<f32>(-685f, 1000f, -700f, 831f)), Struct_1(1u, vec3<bool>(false, true, true), vec4<f32>(-543f, -468f, 619f, -691f)), Struct_1(4294967295u, vec3<bool>(false, false, true), vec4<f32>(1947f, 1342f, -441f, -1000f)), Struct_1(31258u, vec3<bool>(true, true, false), vec4<f32>(1000f, -1000f, -536f, -199f)), Struct_1(4323u, vec3<bool>(false, false, false), vec4<f32>(-659f, -1100f, 577f, 1468f)), Struct_1(1u, vec3<bool>(true, true, true), vec4<f32>(-603f, -168f, -142f, 482f)), Struct_1(0u, vec3<bool>(false, true, false), vec4<f32>(659f, -427f, -1395f, -1135f)), Struct_1(17002u, vec3<bool>(true, false, false), vec4<f32>(1000f, -1000f, 607f, -377f)), Struct_1(1662u, vec3<bool>(true, true, false), vec4<f32>(-968f, 921f, -3626f, 1289f)), Struct_1(0u, vec3<bool>(false, false, false), vec4<f32>(-189f, -1077f, 259f, -915f)), Struct_1(2013u, vec3<bool>(true, true, false), vec4<f32>(2759f, -111f, 888f, -108f)), Struct_1(1u, vec3<bool>(true, true, true), vec4<f32>(-537f, 243f, -1622f, -2682f)), Struct_1(4294967295u, vec3<bool>(false, true, false), vec4<f32>(-1000f, -113f, -750f, -513f)), Struct_1(42483u, vec3<bool>(false, true, true), vec4<f32>(383f, -1102f, 1215f, -411f)), Struct_1(6754u, vec3<bool>(true, true, false), vec4<f32>(-1610f, 1583f, -1000f, 600f)), Struct_1(4294967295u, vec3<bool>(false, true, false), vec4<f32>(-2240f, -729f, 1036f, -1000f)), Struct_1(40172u, vec3<bool>(true, true, true), vec4<f32>(1264f, 196f, 743f, -886f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<u32>) -> bool {
    global3 = array<Struct_1, 17>();
    var var_0 = Struct_2(Struct_1(~0u, vec3<bool>(arg_1.b.x, any(!vec4<bool>(arg_1.b.x, arg_1.b.x, false, arg_1.b.x)), _wgslsmith_div_f32(arg_1.c.x, -1208f) == _wgslsmith_f_op_f32(ceil(arg_1.c.x))), _wgslsmith_f_op_vec4_f32(-arg_1.c)));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1487f);
    var var_1 = arg_1.b.x;
    var var_2 = (vec3<u32>(arg_1.a >> (0u % 32u), countOneBits(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(arg_1.a, arg_1.a, arg_2.x))), 69828u) << (vec3<u32>(_wgslsmith_add_u32(u_input.a.x, ~0u), 20741u, _wgslsmith_dot_vec2_u32(~arg_2, ~vec2<u32>(32668u, 0u))) % vec3<u32>(32u))) | abs(~_wgslsmith_sub_vec3_u32(select(u_input.a, u_input.a, arg_1.b.x), vec3<u32>(58970u, arg_1.a, arg_1.a) << (u_input.a % vec3<u32>(32u))));
    return select(true, !(~1u < ~var_2.x), var_0.a.b.x);
}

fn func_3(arg_0: i32, arg_1: f32, arg_2: Struct_2) -> bool {
    global3 = array<Struct_1, 17>();
    global1 = -496f;
    var var_0 = Struct_2(arg_2.a);
    let var_1 = firstTrailingBit(arg_0);
    global3 = array<Struct_1, 17>();
    return true & (false && var_0.a.b.x);
}

fn func_1(arg_0: u32, arg_1: vec2<i32>, arg_2: bool, arg_3: vec4<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_sub_i32(~48808i, i32(-1i) * -arg_3.x);
    global1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(-1432f * 118f))))), -352f))));
    global3 = array<Struct_1, 17>();
    let var_1 = any(vec4<bool>(!all(!vec3<bool>(arg_2, arg_2, arg_2)), true, arg_2, any(vec4<bool>(true, func_2(vec3<f32>(-431f, -2102f, -1898f), Struct_1(arg_0, vec3<bool>(true, arg_2, arg_2), vec4<f32>(-1579f, 1193f, 333f, 481f)), vec2<u32>(44331u, u_input.a.x)), true, func_3(arg_3.x, -563f, Struct_2(Struct_1(u_input.a.x, vec3<bool>(arg_2, arg_2, arg_2), vec4<f32>(1461f, -708f, 418f, 340f))))))));
    let var_2 = global3[_wgslsmith_index_u32(0u, 17u)];
    return Struct_1(53233u, vec3<bool>(true, !(!(arg_3.x > 0i)), true), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(205f, -990f, var_2.c.x, var_2.c.x)), _wgslsmith_div_vec4_f32(var_2.c, vec4<f32>(-292f, -377f, -1000f, 701f)))))));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global2 = array<vec4<u32>, 6>();
    let var_0 = u_input.a.x << (arg_1.a % 32u);
    var var_1 = Struct_2(Struct_1(26251u, select(arg_1.b, arg_1.b, arg_1.b), vec4<f32>(-1000f, _wgslsmith_f_op_f32(-697f - _wgslsmith_f_op_f32(1412f + arg_1.c.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-762f + 403f))), arg_1.c.x)));
    global2 = array<vec4<u32>, 6>();
    let var_2 = var_1.a.c.x;
    return firstTrailingBit(max(arg_1.a, min(_wgslsmith_mult_u32(~u_input.a.x, 1u), _wgslsmith_div_u32(firstLeadingBit(var_1.a.a), firstTrailingBit(var_1.a.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(reverseBits(func_4(select(vec2<bool>(true, false), vec2<bool>(true, true), false), func_1(0u, vec2<i32>(-1i, -1i), false, vec4<i32>(25264i, 2147483647i, 2147483647i, -2147483647i))) >> (_wgslsmith_mult_u32(u_input.a.x, u_input.a.x) % 32u)), u_input.a.x, _wgslsmith_clamp_u32(~1u, u_input.a.x, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(31532u, u_input.a.x, u_input.a.x, 9310u), countOneBits(global2[_wgslsmith_index_u32(u_input.a.x, 6u)])), ~(vec2<i32>(-48565i, 16074i) << (u_input.a.yx % vec2<u32>(32u))), true, vec4<i32>(1i, 1i, 1i, 1i)).a), u_input.a.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-func_1(_wgslsmith_mult_u32(~31196u, 1u), -(~vec2<i32>(-2147483647i, -24412i)), false, vec4<i32>(_wgslsmith_div_i32(-2147483647i, -22389i), countOneBits(2147483647i), i32(-1i) * -57239i, -40518i)).c.ww));
    var var_2 = _wgslsmith_sub_vec4_i32(max(reverseBits(-(~vec4<i32>(-2147483647i, -7901i, 24019i, 10744i))), -(select(vec4<i32>(9947i, -2147483647i, -25723i, 5437i), vec4<i32>(0i, 9886i, -16564i, -1i), vec4<bool>(true, false, false, false)) ^ abs(vec4<i32>(36244i, 1i, -16257i, -45891i)))), vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(1i, 1i)), -(~vec2<i32>(0i, 0i))), -36675i, countOneBits(_wgslsmith_div_i32(1i, _wgslsmith_mult_i32(9992i, 12916i))), -35694i));
    let var_3 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(~var_0.x, min(~1u, var_0.x & u_input.a.x)), _wgslsmith_clamp_vec2_u32(var_0.xw, vec2<u32>(~u_input.a.x, abs(u_input.a.x)), ~(vec2<u32>(var_0.x, 4294967295u) & vec2<u32>(var_0.x, 0u)))), ~global0[_wgslsmith_index_u32(_wgslsmith_add_u32(max(~var_0.x, var_0.x), 1u >> ((var_0.x >> (var_0.x % 32u)) % 32u)), 11u)]), 17u)];
    var var_4 = func_1(_wgslsmith_dot_vec4_u32(~_wgslsmith_add_vec4_u32(min(vec4<u32>(var_3.a, var_3.a, var_0.x, var_0.x), vec4<u32>(var_0.x, 838u, 2395u, var_3.a)), var_0 >> (vec4<u32>(var_3.a, 4294967295u, var_3.a, 74198u) % vec4<u32>(32u))), ~abs(firstTrailingBit(global2[_wgslsmith_index_u32(u_input.a.x, 6u)]))), firstLeadingBit(_wgslsmith_mod_vec2_i32(var_2.yy, vec2<i32>(3075i, ~var_2.x))), var_3.b.x, vec4<i32>(-(~(-var_2.x)), ~_wgslsmith_clamp_i32(-44421i << (u_input.a.x % 32u), -29655i, -1i), var_2.x, -1i));
    let var_5 = _wgslsmith_div_f32(-605f, _wgslsmith_f_op_f32(ceil(var_4.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(~func_1(_wgslsmith_dot_vec2_u32(var_0.yz, _wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(var_3.a, 11u)], vec2<u32>(var_4.a, var_4.a), vec2<u32>(68112u, u_input.a.x))), var_2.yw, (var_2.x ^ var_2.x) == 18414i, _wgslsmith_mod_vec4_i32(vec4<i32>(-1i, 53834i, -2147483647i, 2147483647i), vec4<i32>(var_2.x, var_2.x, var_2.x, 26030i)) | vec4<i32>(var_2.x, -2147483647i, var_2.x, var_2.x)).a, countOneBits(countOneBits(vec3<u32>(~0u, 7599u, ~u_input.a.x))), max(_wgslsmith_dot_vec2_i32(select(vec2<i32>(var_2.x, var_2.x), var_2.ww, true), vec2<i32>(var_2.x, 1i)) | var_2.x, countOneBits(~var_2.x) >> (var_4.a % 32u)));
}

