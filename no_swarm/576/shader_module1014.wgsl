struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<i32>(-34856i, -40148i, 2147483647i), 10177u), Struct_1(vec3<i32>(2147483647i, -20803i, -32306i), 4294967295u), Struct_1(vec3<i32>(-38463i, -3544i, -1i), 4294967295u), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 1i), 1u), Struct_1(vec3<i32>(-30770i, 1i, -1i), 4294967295u), Struct_1(vec3<i32>(-23934i, -5984i, -42038i), 57484u), Struct_1(vec3<i32>(1i, 0i, 38023i), 28654u), Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -7197i), 0u), Struct_1(vec3<i32>(1i, -1i, -1i), 60636u), Struct_1(vec3<i32>(-48705i, 0i, 30296i), 13492u), Struct_1(vec3<i32>(20305i, 0i, 9080i), 17392u), Struct_1(vec3<i32>(-34040i, 1395i, -1i), 744u), Struct_1(vec3<i32>(-1i, 79687i, -1i), 11362u));

var<private> global1: array<bool, 9>;

var<private> global2: array<Struct_2, 10> = array<Struct_2, 10>(Struct_2(Struct_1(vec3<i32>(0i, 17060i, 2147483647i), 1u), 2147483647i, Struct_1(vec3<i32>(-87464i, 35540i, 2147483647i), 21707u), vec3<u32>(21126u, 43507u, 1u)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), -92113i, 20377i), 0u), -1i, Struct_1(vec3<i32>(-16075i, i32(-2147483648), 2147483647i), 0u), vec3<u32>(1u, 1u, 0u)), Struct_2(Struct_1(vec3<i32>(1i, -87316i, 2675i), 20594u), -10471i, Struct_1(vec3<i32>(2147483647i, 63618i, -16910i), 1u), vec3<u32>(0u, 37821u, 4294967295u)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i), 83532u), -1i, Struct_1(vec3<i32>(55324i, 46153i, 1i), 24467u), vec3<u32>(1u, 16408u, 9161u)), Struct_2(Struct_1(vec3<i32>(i32(-2147483648), 3770i, i32(-2147483648)), 1u), 25481i, Struct_1(vec3<i32>(-4883i, 2147483647i, 2147483647i), 4294967295u), vec3<u32>(1u, 1u, 1u)), Struct_2(Struct_1(vec3<i32>(0i, 0i, 4483i), 1u), 2147483647i, Struct_1(vec3<i32>(68223i, -55807i, 11293i), 0u), vec3<u32>(13373u, 1u, 1u)), Struct_2(Struct_1(vec3<i32>(14234i, 0i, i32(-2147483648)), 16735u), 35119i, Struct_1(vec3<i32>(32456i, 0i, i32(-2147483648)), 0u), vec3<u32>(62943u, 74156u, 28766u)), Struct_2(Struct_1(vec3<i32>(2147483647i, -72714i, 1i), 9338u), 0i, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), -5205i), 37339u), vec3<u32>(3886u, 4294967295u, 22657u)), Struct_2(Struct_1(vec3<i32>(-38149i, i32(-2147483648), -1442i), 15804u), 25335i, Struct_1(vec3<i32>(-55538i, 0i, i32(-2147483648)), 37553u), vec3<u32>(7149u, 42705u, 11358u)), Struct_2(Struct_1(vec3<i32>(22083i, 12639i, 9488i), 4294967295u), -22922i, Struct_1(vec3<i32>(59726i, 43195i, 2147483647i), 4294967295u), vec3<u32>(0u, 30868u, 1445u)));

var<private> global3: vec4<u32> = vec4<u32>(0u, 70605u, 14580u, 4294967295u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0;
    return 887u;
}

fn func_2(arg_0: Struct_1, arg_1: vec2<i32>) -> vec3<i32> {
    let var_0 = !vec4<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1782f * -802f), _wgslsmith_f_op_f32(max(-298f, 1229f)))) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1000f)))), !global1[_wgslsmith_index_u32(1u, 9u)], true, false != !global1[_wgslsmith_index_u32(global3.x ^ arg_0.b, 9u)]);
    let var_1 = Struct_1(u_input.a << (vec3<u32>(func_3(global2[_wgslsmith_index_u32(~44118u, 10u)]), ~(~42087u), global3.x) % vec3<u32>(32u)), _wgslsmith_dot_vec2_u32(select(min(~vec2<u32>(4294967295u, arg_0.b), firstTrailingBit(global3.zx)), global3.zx, select(var_0.yz, select(vec2<bool>(true, false), var_0.xz, var_0.wz), var_0.x)), global3.xw));
    let var_2 = ~abs(1u | _wgslsmith_mod_u32(select(arg_0.b, 4294967295u, false), var_1.b));
    var var_3 = !var_0.x | !any(!select(var_0.zy, vec2<bool>(global1[_wgslsmith_index_u32(global3.x, 9u)], false), vec2<bool>(false, var_0.x)));
    global0 = array<Struct_1, 13>();
    return countOneBits(min(select(~var_1.a, -var_1.a, -13355i == u_input.a.x) | var_1.a, vec3<i32>(~(u_input.a.x & 0i), min(var_1.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(arg_0.a.x, -42478i, 12594i, var_1.a.x), vec4<i32>(28398i, u_input.a.x, arg_1.x, var_1.a.x))), _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_add_i32(arg_0.a.x, arg_0.a.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> u32 {
    let var_0 = Struct_2(Struct_1(u_input.a, 1u), _wgslsmith_dot_vec3_i32(countOneBits(func_2(arg_0.a, vec2<i32>(u_input.a.x, arg_1.x))), reverseBits(-vec3<i32>(arg_1.x, arg_0.c.a.x, 1i))), Struct_1(select(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(10368i, 2147483647i, 51774i), vec3<i32>(u_input.a.x, -54028i, -11212i)), 1706i, 2147483647i | u_input.a.x), vec3<i32>(-arg_1.x, countOneBits(2147483647i), arg_0.c.a.x), any(!vec3<bool>(false, global1[_wgslsmith_index_u32(global3.x, 9u)], global1[_wgslsmith_index_u32(arg_0.c.b, 9u)]))), select(1u, 1707u, all(vec4<bool>(false, false, true, false)) & global1[_wgslsmith_index_u32(global3.x, 9u)])), ~_wgslsmith_sub_vec3_u32(vec3<u32>(reverseBits(global3.x), abs(global3.x), u_input.b), global3.xyx));
    var var_1 = all(vec3<bool>(-2889i > ~countOneBits(arg_0.b), true, global1[_wgslsmith_index_u32(_wgslsmith_div_u32(global3.x, _wgslsmith_mult_u32(select(1u, arg_0.d.x, global1[_wgslsmith_index_u32(var_0.a.b, 9u)]), u_input.b)), 9u)]));
    let var_2 = false;
    var var_3 = global2[_wgslsmith_index_u32(global3.x, 10u)];
    global3 = select(~(~reverseBits(~vec4<u32>(var_3.c.b, var_0.a.b, u_input.b, 4294967295u))), vec4<u32>(u_input.b, ~countOneBits(global3.x << (21876u % 32u)), ~(~0u) ^ _wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_3.d.x, var_0.c.b, 1u), vec4<u32>(global3.x, 1u, arg_0.a.b, 68482u)), 1u), reverseBits(48427u | ~u_input.b)), !select(vec4<bool>(false, arg_0.b == -41249i, all(vec2<bool>(global1[_wgslsmith_index_u32(global3.x, 9u)], false)), !global1[_wgslsmith_index_u32(var_0.c.b, 9u)]), !(!vec4<bool>(global1[_wgslsmith_index_u32(u_input.b, 9u)], var_2, var_2, var_2)), !select(vec4<bool>(false, var_2, false, global1[_wgslsmith_index_u32(0u, 9u)]), vec4<bool>(var_2, false, var_2, var_2), true)));
    return 56128u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(sign(1222f)), 183f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -622f))) + _wgslsmith_div_f32(-979f, -320f)))));
    var var_1 = vec2<i32>(-(~_wgslsmith_mod_i32(u_input.a.x, 14563i)), u_input.a.x) >> (global3.wz % vec2<u32>(32u));
    var var_2 = global3.zyz;
    var var_3 = _wgslsmith_mult_u32(_wgslsmith_sub_u32(firstTrailingBit(49877u), abs(u_input.b)), func_1(Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(17318u), ~global3.x), 13u)], u_input.a.x, global0[_wgslsmith_index_u32(var_2.x, 13u)], vec3<u32>(~global3.x, _wgslsmith_div_u32(var_2.x, 0u), var_2.x | 0u)), ~vec2<i32>(32959i & u_input.a.x, u_input.a.x)));
    let var_4 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-984f, 1605f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(656f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(118f + -670f), _wgslsmith_f_op_f32(var_0.x * 275f))))), vec4<u32>(global3.x, u_input.b, min(20674u, 1u), countOneBits(_wgslsmith_add_u32(reverseBits(18564u), u_input.b))), min(vec4<i32>(_wgslsmith_add_i32(-2147483647i, 44826i), ~var_1.x, 27431i | var_1.x, countOneBits(-1i)) | vec4<i32>(1i, var_1.x, u_input.a.x, -35276i), max(~vec4<i32>(var_1.x, -71700i, u_input.a.x, -2147483647i), -vec4<i32>(27443i, u_input.a.x, -1i, u_input.a.x)) | vec4<i32>(u_input.a.x, i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_1.x, u_input.a.x), vec3<i32>(1i, -33213i, 44178i)), _wgslsmith_add_i32(1i, u_input.a.x))), _wgslsmith_mult_vec2_i32(firstTrailingBit(vec2<i32>(var_1.x, var_1.x) >> (vec2<u32>(u_input.b, global3.x) % vec2<u32>(32u))), u_input.a.zy));
}

