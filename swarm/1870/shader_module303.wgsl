struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 23627u;

var<private> global1: array<u32, 11> = array<u32, 11>(0u, 8767u, 1u, 13423u, 1u, 4294967295u, 21180u, 4294967295u, 1u, 43544u, 1u);

var<private> global2: Struct_3;

var<private> global3: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(-2036f, -509f), vec2<f32>(-942f, 1585f), vec2<f32>(120f, -273f), vec2<f32>(-1770f, 1678f), vec2<f32>(1316f, -2110f), vec2<f32>(1000f, 517f), vec2<f32>(2138f, -1000f), vec2<f32>(-1701f, -1061f), vec2<f32>(-1694f, -608f), vec2<f32>(791f, 1000f), vec2<f32>(1186f, 461f), vec2<f32>(397f, -336f), vec2<f32>(-1032f, -401f), vec2<f32>(451f, 893f), vec2<f32>(-1000f, 2324f), vec2<f32>(-1232f, 2421f), vec2<f32>(-641f, -621f), vec2<f32>(663f, 284f), vec2<f32>(1625f, 283f), vec2<f32>(-1248f, -166f), vec2<f32>(268f, -1987f), vec2<f32>(-777f, -633f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: vec3<u32>, arg_3: u32) -> Struct_1 {
    return Struct_1(true, u_input.a.x, select(u_input.a.xy, ~(-vec2<i32>(2147483647i, -8979i) ^ (u_input.a.xy | vec2<i32>(global2.a.x, global2.a.x))), vec2<bool>(all(vec2<bool>(true, false)), false)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -730f, 1134f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 317f, 157f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(806f, -953f, -624f)) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1018f, 1324f, 1000f), vec3<f32>(577f, -1000f, 1214f), vec3<bool>(true, true, true)))))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.d.x, arg_1.d.x, arg_1.d.x, 1000f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, -627f, 638f, -1168f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 1545f, -1580f, arg_1.d.x)) - _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-784f, arg_1.d.x, arg_1.d.x, 927f), vec4<f32>(arg_1.d.x, 665f, arg_1.d.x, -1972f)))))) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(-417f + _wgslsmith_div_f32(-326f, arg_1.d.x)), _wgslsmith_f_op_f32(select(782f, _wgslsmith_f_op_f32(f32(-1f) * -1486f), arg_1.a | arg_1.a)), _wgslsmith_f_op_f32(-871f + -199f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -470f)))))));
    var var_1 = abs(vec4<i32>(-44581i, reverseBits(~(~1i)), arg_1.b, global2.a.x));
    let var_2 = _wgslsmith_add_vec3_i32(~(~max(~vec3<i32>(var_1.x, -1i, 0i), var_1.wwz ^ vec3<i32>(arg_0, 10005i, 18772i))), var_1.xyw);
    let var_3 = 0u;
    var var_4 = -(-u_input.a.yx & vec2<i32>(_wgslsmith_add_i32(countOneBits(u_input.a.x), min(global2.a.x, 4944i)), global2.a.x));
    return vec4<i32>(countOneBits(arg_1.c.x), ~(~_wgslsmith_add_i32(47092i | var_1.x, var_2.x)), -(arg_1.c.x ^ arg_0), var_4.x);
}

fn func_4(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    global1 = array<u32, 11>();
    global1 = array<u32, 11>();
    var var_0 = Struct_2(~global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(min(~35322u, global1[_wgslsmith_index_u32(59282u, 11u)] & global1[_wgslsmith_index_u32(0u, 11u)]), 11u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(10839u & global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(51462u, 11u)], 11u)]), 11u)], 11u)]), 11u)]);
    let var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -43962i, -global2.a.x), firstTrailingBit(select(arg_1.zxz, _wgslsmith_mult_vec3_i32(max(arg_1.zzy, vec3<i32>(global2.a.x, 1i, 0i)), min(vec3<i32>(arg_1.x, arg_1.x, arg_1.x), arg_1.wyz)), (u_input.a.x != arg_1.x) & !arg_0)));
    var var_2 = Struct_3(~(~_wgslsmith_add_vec3_i32(vec3<i32>(-14059i, u_input.a.x, -1i), -vec3<i32>(38078i, -2147483647i, u_input.a.x))));
    return Struct_1(arg_0, ~(~1i), vec2<i32>(-(~(-arg_1.x)), -(var_2.a.x & 36134i) ^ ~(14694i | var_2.a.x)), vec3<f32>(1f, 1f, 1f));
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    var var_0 = global2.a.x;
    let var_1 = ~1i;
    let var_2 = func_4(all(!vec4<bool>(arg_0.x, all(vec3<bool>(true, false, false)), arg_0.x, true)), func_3(-2147483647i, func_2(Struct_2(_wgslsmith_sub_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)])), ~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 11u)], 11u)], 11u)], 17490u), vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(0u, 11u)], 11u)], 11u)], 57490u, global1[_wgslsmith_index_u32(max(54039u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(79169u, 11u)], 11u)], 11u)]), 11u)]), ~global1[_wgslsmith_index_u32(80490u, 11u)] | global1[_wgslsmith_index_u32(1u, 11u)])));
    var var_3 = Struct_3(firstTrailingBit(-(~global2.a)));
    var var_4 = Struct_4(Struct_2(_wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(27449u, 11u)], 11u)], 11u)], 11u)], ~(~global1[_wgslsmith_index_u32(4294967295u, 11u)]))));
    return Struct_2(63772u);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_3(min(_wgslsmith_add_vec3_i32(firstTrailingBit(global2.a), ~(~u_input.a)), ~select(u_input.a, -vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x), true)));
    let var_0 = func_1(select(vec3<bool>(true, true, true), !vec3<bool>(select(true, true, false), true, true), !vec3<bool>(any(vec2<bool>(false, true)), true, true)));
    var var_1 = global1[_wgslsmith_index_u32(4294967295u, 11u)];
    var var_2 = Struct_1(true, func_3(1i << (global1[_wgslsmith_index_u32(1u, 11u)] % 32u), func_2(Struct_2(var_0.a), abs(global1[_wgslsmith_index_u32(1u, 11u)]), _wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a, 4294967295u, var_0.a), vec3<u32>(global1[_wgslsmith_index_u32(14737u, 11u)], 1u, global1[_wgslsmith_index_u32(1u, 11u)])), global1[_wgslsmith_index_u32(~105598u, 11u)])).x & ((-36449i & func_3(2147483647i, Struct_1(true, u_input.a.x, vec2<i32>(1232i, global2.a.x), vec3<f32>(-542f, -423f, -321f))).x) & ~(-1i)), u_input.a.zz, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(832f, 773f, -955f)), _wgslsmith_div_vec3_f32(vec3<f32>(-204f, 675f, 1854f), vec3<f32>(-151f, -1306f, -725f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1073f, 2038f, 1000f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1636f, -1155f, -1000f) + vec3<f32>(-478f, 1023f, 444f))))));
    global2 = Struct_3(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(~vec3<i32>(0i, u_input.a.x, 0i), -vec3<i32>(var_2.c.x, 36009i, var_2.b)), global2.a) >> ((~select(vec3<u32>(4294967295u, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.a, 11u)], 11u)]), vec3<u32>(1u, var_0.a, 1u), vec3<bool>(var_2.a, var_2.a, false)) >> (firstLeadingBit(vec3<u32>(global1[_wgslsmith_index_u32(1u, 11u)], 19704u, 13889u)) % vec3<u32>(32u))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(select(439f, var_2.d.x, var_2.a)), func_2(var_0, _wgslsmith_sub_u32(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(35510u, 11u)], 55908u), abs(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(74467u, 11u)], 11u)])), ~max(vec3<u32>(var_0.a, 117974u, 34100u), vec3<u32>(var_0.a, 4294967295u, var_0.a)), _wgslsmith_mult_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(47502u, global1[_wgslsmith_index_u32(var_0.a, 11u)])), 36627u)).d, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.d.x, -227f, var_2.d.x))))));
}

