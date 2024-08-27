struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: vec3<u32>,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32>;

var<private> global1: vec4<u32> = vec4<u32>(116965u, 25423u, 0u, 4294967295u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: Struct_1, arg_3: Struct_4) -> vec4<i32> {
    let var_0 = vec2<bool>(true, true);
    return ~vec4<i32>(59286i, _wgslsmith_mult_i32(-921i, 1i), _wgslsmith_mult_i32(_wgslsmith_mult_i32(~arg_1.a.d.a.x, -25573i), 49463i), arg_3.a.x);
}

fn func_2() -> vec4<i32> {
    let var_0 = Struct_3(Struct_2(Struct_1(~func_3(false, Struct_3(Struct_2(Struct_1(vec4<i32>(u_input.a.x, 28949i, u_input.a.x, u_input.a.x), -217f, vec3<f32>(-1439f, 1778f, 936f)), true, Struct_1(vec4<i32>(-1i, u_input.a.x, u_input.a.x, -1i), -1183f, vec3<f32>(1000f, -894f, 1496f)), Struct_1(vec4<i32>(u_input.a.x, -1i, 0i, -2147483647i), -1853f, vec3<f32>(-720f, 1205f, 1550f))), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, -2147483647i), 309f, vec3<f32>(-980f, 383f, -1086f))), Struct_1(vec4<i32>(u_input.a.x, -15607i, u_input.a.x, u_input.a.x), 1488f, vec3<f32>(-1856f, -204f, -1000f)), Struct_4(vec2<i32>(-28241i, u_input.a.x), -191f, global1.wxy)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(542f, -1105f) * _wgslsmith_f_op_f32(f32(-1f) * -1633f)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1014f, 441f, -925f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1615f, -1380f, -669f), vec3<f32>(-1333f, 545f, -602f), vec3<bool>(false, true, false))))), countOneBits(~global1.x) != global1.x, Struct_1(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 1i), ~vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(800f)) * _wgslsmith_f_op_f32(f32(-1f) * -1415f)), vec3<f32>(_wgslsmith_div_f32(-238f, 993f), _wgslsmith_f_op_f32(f32(-1f) * -1043f), 1814f)), Struct_1(~vec4<i32>(44498i, -2147483647i, u_input.a.x, 2147483647i), 345f, _wgslsmith_f_op_vec3_f32(vec3<f32>(443f, -382f, 1000f) - _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-728f, -224f, 2049f)))))), Struct_1(vec4<i32>(u_input.a.x & ~u_input.a.x, ~u_input.a.x, -1i ^ (20043i << (global1.x % 32u)), _wgslsmith_mod_i32(u_input.a.x, u_input.a.x)), -719f, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1922f, 1391f, -813f) + vec3<f32>(-584f, 603f, -246f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1202f, -882f, -199f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-815f, -279f, -788f)) - _wgslsmith_div_vec3_f32(vec3<f32>(1493f, 730f, 1000f), vec3<f32>(-707f, 687f, -740f))))));
    var var_1 = ~(~_wgslsmith_add_vec2_u32(global1.yw, firstLeadingBit(global1.wy << (global1.xx % vec2<u32>(32u)))));
    let var_2 = var_0.a.d.a.x >= _wgslsmith_mult_i32(var_0.b.a.x, 0i);
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0.a.a.c.x, var_0.b.c.x)) * var_0.b.b)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.b.c.x))))) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b.c.x + var_0.a.c.b), _wgslsmith_f_op_f32(-1092f - var_0.a.a.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1848f)) * -1000f)));
    var_3 = all(select(vec4<bool>(var_0.a.b, all(vec2<bool>(false, true)), all(vec3<bool>(true, false, var_0.a.b)), any(vec4<bool>(true, true, true, true))), select(vec4<bool>(all(vec3<bool>(true, var_0.a.b, var_2)), any(vec4<bool>(var_0.a.b, var_0.a.b, var_0.a.b, true)), false, true), vec4<bool>(any(vec3<bool>(var_0.a.b, var_0.a.b, true)), false, all(vec4<bool>(var_0.a.b, var_0.a.b, var_2, var_0.a.b)), var_2), vec4<bool>(select(false, var_0.a.b, false), var_0.a.b, var_2 | true, true)), !var_0.a.b));
    return var_0.a.c.a;
}

fn func_1(arg_0: Struct_2) -> Struct_4 {
    global0 = array<vec2<bool>, 32>();
    var var_0 = arg_0.c.a.x;
    global1 = vec4<u32>(global1.x, ~(global1.x >> ((81203u >> (reverseBits(0u) % 32u)) % 32u)), 85522u, abs(global1.x));
    var var_1 = Struct_3(arg_0, Struct_1(func_2(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(328f * -510f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(456f - 2028f), -626f, -431f) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_0.d.c)))));
    let var_2 = Struct_4(arg_0.a.a.zz, arg_0.c.b, ~(max(abs(global1.wxw), ~vec3<u32>(global1.x, 1u, global1.x)) & (abs(global1.xwx) | (vec3<u32>(global1.x, 4294967295u, 1u) ^ global1.yzx))));
    return Struct_4(select(vec2<i32>(var_2.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(42083i, 1i, var_2.a.x), select(vec3<i32>(var_1.b.a.x, u_input.a.x, var_1.b.a.x), u_input.a, var_1.a.b))), u_input.a.yy | -arg_0.c.a.yw, select(!select(global0[_wgslsmith_index_u32(global1.x, 32u)], global0[_wgslsmith_index_u32(global1.x, 32u)], false), global0[_wgslsmith_index_u32(4294967295u, 32u)], vec2<bool>(var_1.a.b != var_1.a.b, true))), _wgslsmith_f_op_f32(-var_1.a.a.c.x), var_2.c);
}

fn func_4(arg_0: Struct_4) -> f32 {
    let var_0 = vec2<bool>(true, !all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false))) & false);
    let var_1 = ~reverseBits(arg_0.c);
    var var_2 = firstTrailingBit(vec3<u32>(global1.x, var_1.x, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_0.c.x, var_1.x, global1.x, 12687u) & vec4<u32>(0u, arg_0.c.x, 32528u, 0u)), (vec4<u32>(1u, global1.x, 14074u, global1.x) >> (vec4<u32>(55967u, global1.x, 9926u, var_1.x) % vec4<u32>(32u))) ^ ~vec4<u32>(arg_0.c.x, 26226u, arg_0.c.x, 4294967295u))));
    var_2 = firstLeadingBit(select(firstLeadingBit(vec3<u32>(1u, 43903u, 12385u)), arg_0.c, !select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, false, true), var_0.x))) | ~(vec3<u32>(~4294967295u, var_1.x, var_1.x | var_1.x) << (vec3<u32>(firstLeadingBit(1u), ~4294967295u, firstLeadingBit(var_1.x)) % vec3<u32>(32u)));
    var var_3 = arg_0.b;
    return -150f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-416f - 844f) + -971f), _wgslsmith_f_op_f32(func_4(func_1(Struct_2(Struct_1(vec4<i32>(u_input.a.x, 30959i, u_input.a.x, u_input.a.x), 895f, vec3<f32>(-501f, -401f, 469f)), true, Struct_1(vec4<i32>(-64713i, -2147483647i, 37907i, -1i), 1000f, vec3<f32>(889f, 2133f, 901f)), Struct_1(vec4<i32>(u_input.a.x, 2147483647i, 0i, -2991i), -126f, vec3<f32>(-178f, 185f, 495f))))))) > 906f);
    var var_1 = _wgslsmith_add_u32(global1.x & firstTrailingBit(0u), global1.x);
    let var_2 = !global0[_wgslsmith_index_u32((0u | global1.x) >> (4294967295u % 32u), 32u)];
    var var_3 = Struct_1(vec4<i32>(-1i, u_input.a.x, u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 49097i), u_input.a.xz) | _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)), countOneBits(0i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -353f))) + func_1(Struct_2(Struct_1(vec4<i32>(2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), -1029f, vec3<f32>(915f, 601f, -1277f)), true, Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, 0i), 447f, vec3<f32>(-2356f, 644f, 236f)), Struct_1(vec4<i32>(23468i, 25770i, -2147483647i, u_input.a.x), -646f, vec3<f32>(-321f, 1038f, 1633f)))).b), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(493f, -845f, -1735f)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(690f, -1061f, -1086f)))))))));
    let var_4 = _wgslsmith_add_u32(~(~global1.x), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(global1.x, 1u), vec2<u32>(global1.x, 109967u)), vec2<u32>(global1.x, 4294967295u) & vec2<u32>(74840u, 1u), var_0), ~vec2<u32>(global1.x, global1.x)), vec2<u32>(~global1.x, global1.x) | (abs(vec2<u32>(66950u, 43059u)) << (firstTrailingBit(vec2<u32>(0u, 70998u)) % vec2<u32>(32u)))));
    let var_5 = ~0i;
    let var_6 = vec2<u32>(7388u, ~firstLeadingBit(var_4));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.x, 42803u, reverseBits(_wgslsmith_div_vec3_u32(global1.yxy, vec3<u32>(1u, 0u, var_6.x) >> ((global1.yyx ^ vec3<u32>(1u, var_6.x, 1u)) % vec3<u32>(32u)))), var_5);
}

