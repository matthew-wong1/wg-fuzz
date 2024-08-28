struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
    d: u32,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = -1839i;

var<private> global2: Struct_3 = Struct_3(vec4<u32>(12233u, 4294967295u, 0u, 13865u), 51625i);

var<private> global3: array<vec2<f32>, 26> = array<vec2<f32>, 26>(vec2<f32>(1965f, -342f), vec2<f32>(165f, 1862f), vec2<f32>(697f, 1190f), vec2<f32>(-1473f, -623f), vec2<f32>(-723f, -811f), vec2<f32>(-1206f, -1311f), vec2<f32>(-1309f, -863f), vec2<f32>(185f, 462f), vec2<f32>(1616f, 613f), vec2<f32>(1000f, -504f), vec2<f32>(-2209f, -841f), vec2<f32>(1275f, -1266f), vec2<f32>(-418f, -1586f), vec2<f32>(-573f, -1529f), vec2<f32>(140f, 1000f), vec2<f32>(596f, -127f), vec2<f32>(-1000f, 667f), vec2<f32>(-2030f, -1886f), vec2<f32>(-145f, -1428f), vec2<f32>(-390f, -1321f), vec2<f32>(295f, -262f), vec2<f32>(868f, 662f), vec2<f32>(1982f, -1386f), vec2<f32>(-2029f, -1792f), vec2<f32>(-282f, -1222f), vec2<f32>(-342f, -1389f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    var var_0 = Struct_3(abs(vec4<u32>(min(~global0.a.x, ~1u), 3834u, 0u, 50871u)), ~global2.b);
    var var_1 = global2.b;
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) >= _wgslsmith_f_op_f32(-global0.b), select(true, true, any(vec2<bool>(true, true))), global3[_wgslsmith_index_u32(abs(global2.a.x), 26u)]);
    let var_3 = var_2;
    let var_4 = abs(vec3<i32>(firstLeadingBit(10692i) ^ min(23998i, global2.b), select(-global2.b, var_0.b, var_3.a), 1i));
    return ~global2.b ^ -_wgslsmith_dot_vec3_i32(~(-var_4), abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(-18771i, var_0.b, -1i), vec3<i32>(6629i, global2.b, var_0.b), vec3<i32>(var_4.x, 23418i, 34789i))));
}

fn func_2() -> Struct_1 {
    global1 = ~global2.b;
    global1 = func_3();
    global3 = array<vec2<f32>, 26>();
    var var_0 = Struct_2(countOneBits(vec3<u32>(0u, _wgslsmith_dot_vec3_u32(min(vec3<u32>(58595u, u_input.a, global0.a.x), global2.a.zyw), vec3<u32>(22708u, 2448u, 4294967295u)), 1u)), -1419f);
    let var_1 = global0.b;
    return Struct_1(true, !all(select(select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(657f, -1923f) + vec2<f32>(-1033f, var_0.b)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -1000f)), false)) - _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1893f, global0.b), _wgslsmith_div_vec2_f32(vec2<f32>(var_0.b, var_0.b), global3[_wgslsmith_index_u32(1u, 26u)])), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(global3[_wgslsmith_index_u32(var_0.a.x, 26u)])), _wgslsmith_div_vec2_f32(vec2<f32>(222f, -1230f), global3[_wgslsmith_index_u32(1u, 26u)])))));
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> bool {
    global0 = Struct_2(select(abs(global0.a), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, global2.a.x, global0.a.x) ^ global0.a, global0.a), !vec3<bool>(all(vec3<bool>(true, true, false)), any(vec3<bool>(arg_0.b, true, false)), arg_0.b)), -203f);
    global3 = array<vec2<f32>, 26>();
    global2 = Struct_3(_wgslsmith_div_vec4_u32(~select(global2.a, min(global2.a, global2.a), !vec4<bool>(false, arg_1, false, arg_0.b)), _wgslsmith_div_vec4_u32(countOneBits(global2.a) >> (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 30767u, 1u, u_input.a), vec4<u32>(global0.a.x, 30164u, u_input.a, u_input.a)) % vec4<u32>(32u)), ~(global2.a << (vec4<u32>(1u, u_input.a, global2.a.x, 29559u) % vec4<u32>(32u))))), select(-global2.b, 3947i, arg_0.a));
    let var_0 = _wgslsmith_dot_vec3_u32(global0.a, ~global0.a) | 4294967295u;
    var var_1 = abs(~(select(~vec4<u32>(u_input.a, global0.a.x, 108888u, var_0), select(global2.a, global2.a, false), arg_1) >> (vec4<u32>(~global2.a.x, _wgslsmith_dot_vec2_u32(global0.a.zx, vec2<u32>(u_input.a, var_0)), 17166u, ~22700u) % vec4<u32>(32u))));
    return true;
}

fn func_1() -> vec4<f32> {
    let var_0 = -41737i;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1282f);
    var var_2 = select(vec3<bool>(func_4(func_2(), func_2().b), (~global0.a.x > _wgslsmith_mod_u32(92181u, 29728u)) | !func_4(Struct_1(true, true, global3[_wgslsmith_index_u32(1u, 26u)]), true), false), select(select(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), false), select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), false), true), vec3<bool>(true, false, true)), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), false), all(vec2<bool>(true, var_1 <= -1302f))), vec3<bool>(true, all(vec2<bool>(true, true)), true));
    let var_3 = select(!(!(!(!var_2.yz))), select(select(var_2.zz, !(!var_2.xx), false), var_2.zx, func_4(Struct_1(!var_2.x, false && var_2.x, global3[_wgslsmith_index_u32(u_input.a, 26u)]), true)), select(select(vec2<bool>(true, true), !(!var_2.xx), true), vec2<bool>((global2.b == global2.b) && var_2.x, all(!vec3<bool>(var_2.x, false, var_2.x))), true));
    var var_4 = global2.a;
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(1775f * global0.b)), -156f, global0.b, _wgslsmith_div_f32(-128f, _wgslsmith_f_op_f32(step(-1514f, var_1)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, 842f, global0.b, global0.b), vec4<f32>(-1922f, -1108f, -1375f, 352f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1548f, var_1, -953f, 746f)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1771f, global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b - var_1) + -2203f), _wgslsmith_div_f32(var_1, 668f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-465f, var_1, 314f, -480f), vec4<f32>(global0.b, -1853f, -201f, var_1))))))));
}

fn func_5(arg_0: i32, arg_1: u32, arg_2: vec2<f32>, arg_3: vec4<f32>) -> Struct_2 {
    global0 = Struct_2(global0.a, _wgslsmith_f_op_f32(-global0.b));
    var var_0 = func_2().a | false;
    global2 = Struct_3(vec4<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_sub_vec3_u32(vec3<u32>(41466u, 28021u, 1u), global0.a), reverseBits(select(vec3<u32>(18624u, global0.a.x, 7744u), vec3<u32>(global0.a.x, 33743u, global2.a.x), true))), abs(~global0.a.x), (_wgslsmith_add_u32(global0.a.x, 21752u) >> (~global2.a.x % 32u)) ^ 14315u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, _wgslsmith_add_u32(global0.a.x, 8110u)), global0.a.zy)), -2147483647i ^ global2.b);
    var var_1 = vec2<u32>(~56188u << (global2.a.x % 32u), _wgslsmith_sub_u32(u_input.a, 1314u));
    let var_2 = Struct_3(global2.a, arg_0);
    return Struct_2(firstLeadingBit(_wgslsmith_mod_vec3_u32(var_2.a.zzz, global2.a.yzz)), 1580f);
}

fn func_6(arg_0: Struct_2, arg_1: bool) -> vec3<f32> {
    var var_0 = vec3<i32>(1i, _wgslsmith_div_i32(global2.b, global2.b), _wgslsmith_mod_i32(-430i, 2051i));
    global3 = array<vec2<f32>, 26>();
    global0 = Struct_2(vec3<u32>(arg_0.a.x, 0u, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -869f))) - 1861f));
    let var_1 = vec4<u32>(0u, min(~countOneBits(u_input.a), 12900u) >> (global2.a.x % 32u), global2.a.x, global2.a.x);
    let var_2 = Struct_2(_wgslsmith_mult_vec3_u32(global0.a, abs(arg_0.a)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.b, arg_0.b)) * _wgslsmith_f_op_f32(step(global0.b, arg_0.b))), _wgslsmith_f_op_f32(global0.b - _wgslsmith_f_op_f32(trunc(-132f))))))));
    return vec3<f32>(var_2.b, -1585f, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(true, false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, -1300f) + vec2<f32>(global0.b, global0.b))))));
    let var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(func_5(global2.b, ~_wgslsmith_sub_u32(u_input.a, u_input.a), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_0.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(103f, 1487f, 1000f, var_0.c.x), vec4<f32>(var_0.c.x, -1964f, global0.b, 871f)) - _wgslsmith_f_op_vec4_f32(func_1()))), var_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(f32(-1f) * -481f), var_0.c.x)))));
    global0 = Struct_2(vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(108397u, u_input.a, 51727u)), global0.a), _wgslsmith_sub_vec3_u32(select(global2.a.xxz, global2.a.wyz, true), reverseBits(global0.a))), _wgslsmith_add_u32(global2.a.x, u_input.a), global0.a.x), _wgslsmith_f_op_f32(var_1.x - var_1.x));
    let var_2 = ~(~global0.a);
    var var_3 = reverseBits(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(firstTrailingBit(abs(vec2<i32>(global2.b, global2.b))), _wgslsmith_mod_vec2_i32(vec2<i32>(global2.b, -2745i), ~vec2<i32>(21221i, -22547i))), ~(~vec2<i32>(global2.b, global2.b) ^ (vec2<i32>(-2147483647i, global2.b) & vec2<i32>(global2.b, global2.b)))));
    global1 = ~(-38221i);
    let var_4 = ~(-2968i);
    let var_5 = !vec3<bool>(true, var_0.b, false);
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(global2.b, -80548i, 0i), vec3<i32>(-42278i, global2.b, 19640i)), vec3<i32>(-1i, var_4, var_3.x))) & firstLeadingBit(vec3<i32>(var_3.x, global2.b, _wgslsmith_clamp_i32(var_4, global2.b, 35330i))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(global2.a, _wgslsmith_add_vec4_u32(vec4<u32>(0u, global2.a.x, 21675u, global2.a.x), global2.a)), global0.a.x), ~4294967295u), global2.a.xw, reverseBits(_wgslsmith_mod_u32(abs(_wgslsmith_div_u32(1u, global2.a.x)), abs(26566u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, global0.b, var_1.x, -1000f)))))));
}

