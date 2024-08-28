struct Struct_1 {
    a: vec3<f32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: Struct_1 = Struct_1(vec3<f32>(-2179f, -1069f, 427f), vec3<i32>(68518i, 5842i, 1i), 733f, -1i);

var<private> global2: array<bool, 14>;

var<private> global3: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<f32>(-543f, -786f, -416f), vec3<i32>(15714i, 0i, -22923i), 124f, 1i), Struct_1(vec3<f32>(-1000f, 1000f, 214f), vec3<i32>(-37924i, -41341i, 40752i), 504f, -39737i), Struct_1(vec3<f32>(561f, -1000f, -913f), vec3<i32>(-1i, -59043i, -25896i), 1000f, -25774i), Struct_1(vec3<f32>(876f, 1177f, -175f), vec3<i32>(-19462i, 1i, -20984i), -1461f, 1i), Struct_1(vec3<f32>(-403f, 924f, 1392f), vec3<i32>(41226i, 11558i, -65740i), 1000f, 25880i), Struct_1(vec3<f32>(834f, 836f, 658f), vec3<i32>(45541i, -14196i, 8970i), -556f, 2147483647i), Struct_1(vec3<f32>(-852f, -1641f, 881f), vec3<i32>(-1i, -2588i, 2405i), 605f, -33127i), Struct_1(vec3<f32>(1360f, 1020f, -1045f), vec3<i32>(13038i, 12673i, -36273i), 1000f, -6184i), Struct_1(vec3<f32>(-266f, -591f, -1000f), vec3<i32>(-1i, -47889i, -1i), -200f, i32(-2147483648)));

var<private> global4: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<f32>(-1785f, -354f, 879f), vec3<i32>(2147483647i, 0i, -66963i), -2254f, -33182i), Struct_1(vec3<f32>(589f, 411f, 667f), vec3<i32>(0i, 1i, 0i), -196f, 22826i), Struct_1(vec3<f32>(-1704f, 1325f, -707f), vec3<i32>(1i, -25921i, -1i), -190f, 2147483647i), Struct_1(vec3<f32>(-264f, 1017f, 438f), vec3<i32>(0i, 2147483647i, 103545i), 451f, -2235i), Struct_1(vec3<f32>(252f, -1637f, 377f), vec3<i32>(5546i, 1i, i32(-2147483648)), 824f, 10824i));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1794f));
    global3 = array<Struct_1, 9>();
    global2 = array<bool, 14>();
    var var_1 = ~vec2<u32>(min(_wgslsmith_mod_u32(1u, 1u), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 18077u), countOneBits(vec2<u32>(4294967295u, 0u)))), 4294967295u);
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1594f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(214f)) - arg_1.x))), _wgslsmith_f_op_f32(var_0 - var_0));
    return !(!select(vec2<bool>(true | global0.x, true), !(!vec2<bool>(global0.x, true)), select(select(vec2<bool>(true, global0.x), vec2<bool>(global0.x, global0.x), global2[_wgslsmith_index_u32(40485u, 14u)]), select(vec2<bool>(false, global2[_wgslsmith_index_u32(var_1.x, 14u)]), vec2<bool>(false, global2[_wgslsmith_index_u32(53391u, 14u)]), global2[_wgslsmith_index_u32(var_1.x, 14u)]), !vec2<bool>(global0.x, global0.x))));
}

fn func_2() -> vec3<u32> {
    global3 = array<Struct_1, 9>();
    global0 = select(!select(func_3(u_input.b.zwz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, global1.c, 420f)), Struct_1(vec3<f32>(global1.a.x, 1157f, global1.a.x), vec3<i32>(53129i, -57473i, global1.d), global1.c, u_input.a)), vec2<bool>(global2[_wgslsmith_index_u32(~0u, 14u)], select(false, global0.x, true)), global2[_wgslsmith_index_u32(~(~0u), 14u)]), !select(vec2<bool>(func_3(u_input.b.wyx, global1.a, Struct_1(vec3<f32>(global1.c, 310f, global1.c), u_input.b.wyz, global1.a.x, 2147483647i)).x, true), select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(30779u, 14u)], global2[_wgslsmith_index_u32(51985u, 14u)]), !vec2<bool>(false, global2[_wgslsmith_index_u32(30709u, 14u)])), select(vec2<bool>(true, global0.x), func_3(u_input.b.wwy, vec3<f32>(global1.c, global1.a.x, 1819f), global4[_wgslsmith_index_u32(7893u, 5u)]), 1675f <= global1.a.x)), func_3(vec3<i32>(~_wgslsmith_mult_i32(31593i, u_input.a), 44717i, _wgslsmith_dot_vec2_i32(-global1.b.xy, u_input.b.zy ^ vec2<i32>(2147483647i, 16279i))), _wgslsmith_f_op_vec3_f32(-global1.a), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c, 476f, -413f)), (global1.b & global1.b) & vec3<i32>(global1.b.x, 2147483647i, 46088i), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1391f))), u_input.b.x)));
    global1 = Struct_1(global1.a, _wgslsmith_div_vec3_i32(-(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b.x, global1.b.x, -39410i), global1.b) ^ vec3<i32>(u_input.a, 2147483647i, 0i)), -u_input.b.yww), global1.c, _wgslsmith_div_i32(-(~u_input.b.x), u_input.b.x));
    let var_0 = Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(global1.a, _wgslsmith_f_op_vec3_f32(global1.a + global1.a), select(vec3<bool>(true, true, true), select(vec3<bool>(global2[_wgslsmith_index_u32(1u, 14u)], global2[_wgslsmith_index_u32(36638u, 14u)], global2[_wgslsmith_index_u32(1u, 14u)]), vec3<bool>(global2[_wgslsmith_index_u32(0u, 14u)], true, false), vec3<bool>(true, false, global0.x)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global2[_wgslsmith_index_u32(14803u, 14u)], false, global2[_wgslsmith_index_u32(1u, 14u)]), false)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(abs(1040f))))), u_input.b.xyz, 1000f, -1i);
    global3 = array<Struct_1, 9>();
    return ~select(vec3<u32>(1u, 1u, 1u), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(6140u, 78493u, 4294967295u)), ~vec3<u32>(13613u, 52508u, 1u)), firstTrailingBit(vec3<u32>(48979u, 77681u, 0u))), ((global1.a.x >= var_0.c) || true) && (false & any(vec4<bool>(global0.x, true, global2[_wgslsmith_index_u32(66158u, 14u)], false))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_sub_vec3_u32(~countOneBits(vec3<u32>(0u, ~4294967295u, 50739u)), (abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, arg_1), vec3<u32>(53248u, arg_1, 12280u))) & ~vec3<u32>(arg_1, 1u, 16965u)) ^ (func_2() | vec3<u32>(~arg_1, ~arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(80438u, arg_1, 20577u, arg_1), vec4<u32>(4294967295u, arg_1, arg_1, arg_1)))));
    global3 = array<Struct_1, 9>();
    let var_1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_2.x, arg_2.x))) - global1.a.yy))), _wgslsmith_div_vec2_f32(arg_2, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.a.xz)))))));
    let var_2 = var_0.x;
    global0 = vec2<bool>((!all(vec4<bool>(global0.x, global2[_wgslsmith_index_u32(var_0.x, 14u)], global2[_wgslsmith_index_u32(0u, 14u)], global0.x)) && func_3(u_input.b.yxx, _wgslsmith_f_op_vec3_f32(global1.a * vec3<f32>(-133f, arg_2.x, var_1.x)), Struct_1(vec3<f32>(370f, arg_2.x, -708f), vec3<i32>(arg_0.x, u_input.a, arg_0.x), -183f, 1i)).x) | (true | global2[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, ~11031u), 14u)]), true);
    return Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-742f, -1009f, global1.a.x) * vec3<f32>(-268f, 1354f, global1.c)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1716f, var_1.x, 1161f)))))) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(global1.a)) + _wgslsmith_f_op_vec3_f32(-global1.a)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-global1.a), _wgslsmith_f_op_vec3_f32(abs(global1.a)), all(vec3<bool>(global0.x, true, true)))), false))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-12838i, -59983i), abs(43097i), max(global1.d, global1.d)), ~(vec3<i32>(arg_0.x, -15828i, 2147483647i) | vec3<i32>(global1.d, global1.d, global1.d))) ^ vec3<i32>(arg_0.x, arg_0.x, -_wgslsmith_add_i32(62174i, 0i)), arg_2.x, arg_0.x >> (_wgslsmith_mult_u32(1u, 874u) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1000f;
    global3 = array<Struct_1, 9>();
    let var_1 = 22306u;
    let var_2 = func_1(~(u_input.b.yz << (select(~vec2<u32>(var_1, 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_1, var_1), vec2<u32>(34340u, 4294967295u)), any(vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 14u)], false))) % vec2<u32>(32u))), var_1, vec2<f32>(_wgslsmith_f_op_f32(-global1.c), global1.c));
    let var_3 = -vec3<i32>(global1.d, ~_wgslsmith_add_i32(i32(-1i) * -2147483647i, u_input.b.x), 1i);
    var var_4 = global3[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(44669u, ~_wgslsmith_sub_u32(4294967295u, var_1)), 1u) << ((~var_1 & var_1) % 32u), 9u)];
    var var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.zx - vec2<f32>(-646f, -2008f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a.zy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-295f, -520f) - vec2<f32>(162f, -477f))))));
    var_5 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a.zy - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_4.a.zx)))))));
    global4 = array<Struct_1, 5>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(firstLeadingBit(var_4.b.x), reverseBits(-1i)));
}

