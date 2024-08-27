struct Struct_1 {
    a: u32,
    b: f32,
    c: f32,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: Struct_2 = Struct_2(Struct_1(29548u, -169f, -1060f, false, 0i));

var<private> global2: vec4<f32>;

var<private> global3: array<bool, 23>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: f32) -> f32 {
    global1 = Struct_2(Struct_1(~(~global1.a.a), _wgslsmith_f_op_f32(f32(-1f) * -1118f), _wgslsmith_f_op_f32(ceil(-1105f)), true, _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, arg_1.x), vec2<i32>(-1674i, -1802i)) & vec2<i32>(u_input.c.x, u_input.c.x), firstTrailingBit(~vec2<i32>(-3666i, 2147483647i)))));
    global1 = Struct_2(Struct_1(countOneBits(abs(23739u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(983f * _wgslsmith_f_op_f32(max(arg_2, global1.a.c)))), arg_2, global3[_wgslsmith_index_u32(arg_0.a, 23u)], countOneBits(_wgslsmith_sub_i32(arg_0.e, 0i))));
    let var_0 = 4294967295u;
    global1 = Struct_2(arg_0);
    global3 = array<bool, 23>();
    return global1.a.b;
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: i32, arg_3: vec2<i32>) -> Struct_2 {
    global2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.b, global2.x, -944f, global2.x))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global1.a.b, global1.a.c, global2.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1177f, 340f, global1.a.b, global2.x) - vec4<f32>(1242f, global1.a.b, 3517f, global2.x)))))))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(global1.a, u_input.c.xwy, 688f)), _wgslsmith_f_op_f32(-global2.x), -149f, 1000f)), vec4<f32>(_wgslsmith_f_op_f32(-310f * _wgslsmith_f_op_f32(global2.x * global1.a.c)), global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x + global1.a.b)), _wgslsmith_f_op_f32(-796f - -1382f))));
    let var_0 = !(!select(!vec3<bool>(false, false, global1.a.d), !(!vec3<bool>(true, true, arg_1)), _wgslsmith_f_op_f32(func_3(global1.a, u_input.c.wzx, 1225f)) == _wgslsmith_f_op_f32(abs(global2.x))));
    global2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.a.b))), _wgslsmith_f_op_f32(-412f * -600f), _wgslsmith_f_op_f32(min(global2.x, 1000f)), 1347f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.x, 797f, 607f, global2.x)))) - vec4<f32>(global1.a.b, _wgslsmith_f_op_f32(round(global2.x)), -482f, -1661f)), vec4<f32>(-926f, global2.x, _wgslsmith_f_op_f32(f32(-1f) * -1533f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f)))));
    var var_1 = Struct_2(global1.a);
    let var_2 = Struct_1(43441u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-929f + global2.x) - _wgslsmith_f_op_f32(global2.x * 1535f)), 846f, true, _wgslsmith_clamp_i32(var_1.a.e, -arg_3.x, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-1i, arg_3.x), vec2<i32>(-1i, var_1.a.e)), max(vec2<i32>(0i, var_1.a.e), arg_3)), arg_3)));
    return Struct_2(Struct_1(_wgslsmith_dot_vec4_u32((vec4<u32>(4660u, 4294967295u, 1u, var_2.a) << (vec4<u32>(73036u, 4294967295u, 1u, 0u) % vec4<u32>(32u))) & select(vec4<u32>(4294967295u, var_2.a, global1.a.a, u_input.d), vec4<u32>(0u, 4294967295u, var_2.a, 1u), true), select(reverseBits(vec4<u32>(u_input.b.x, var_2.a, arg_0, 4294967295u)), vec4<u32>(var_1.a.a, 40514u, var_1.a.a, arg_0), select(vec4<bool>(false, var_0.x, var_1.a.d, false), vec4<bool>(var_2.d, global1.a.d, arg_1, var_2.d), vec4<bool>(var_0.x, true, global3[_wgslsmith_index_u32(u_input.d, 23u)], true)))), var_2.b, -405f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -350f), _wgslsmith_f_op_f32(f32(-1f) * -1010f)) < _wgslsmith_f_op_f32(trunc(global2.x)), 1974i));
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<u32>, arg_3: Struct_3) -> Struct_1 {
    var var_0 = arg_3.c;
    var var_1 = vec3<bool>(false, all(vec2<bool>(arg_0, all(vec4<bool>(true, arg_1.a.d, true, false)))), ((arg_3.c.e > 0i) || (any(vec3<bool>(global3[_wgslsmith_index_u32(0u, 23u)], global1.a.d, false)) & true)) == true);
    return arg_1.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: u32, arg_2: Struct_3, arg_3: vec2<f32>) -> bool {
    global1 = Struct_2(arg_2.c);
    let var_0 = func_4(all(select(!select(vec3<bool>(true, global3[_wgslsmith_index_u32(1u, 23u)], true), vec3<bool>(false, global1.a.d, true), vec3<bool>(false, arg_2.a, false)), vec3<bool>(true, arg_2.a, any(vec2<bool>(global1.a.d, true))), arg_2.c.e != 0i)), func_2(arg_1, !(!arg_2.c.d) | true, select(u_input.c.x, firstLeadingBit(14358i), true), u_input.c.zw), vec3<u32>(~arg_2.b, global1.a.a, firstTrailingBit(arg_2.b) << (34079u % 32u)), arg_2);
    var var_1 = Struct_3(func_2(u_input.a.x, false, -firstTrailingBit(arg_2.c.e), select(-u_input.c.wz, countOneBits(-u_input.c.wx), vec2<bool>(true, true))).a.d, firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_add_u32(select(arg_2.c.a, var_0.a, var_0.d), var_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 59093u, 112978u, global1.a.a), vec4<u32>(arg_1, 0u, global1.a.a, 137101u)) >> (33141u % 32u))), func_4(arg_2.c.d, func_2(min(reverseBits(0u), ~0u), var_0.d, _wgslsmith_sub_i32(global1.a.e, u_input.c.x) & countOneBits(28189i), vec2<i32>(-1i) * -u_input.c.wz), vec3<u32>(1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(45970u, 0u, arg_1, u_input.a.x), vec4<u32>(var_0.a, 4294967295u, 1u, u_input.b.x)), ~(~arg_1)), arg_2));
    global3 = array<bool, 23>();
    global1 = func_2(1u, global3[_wgslsmith_index_u32(7413u, 23u)], _wgslsmith_mod_i32(global1.a.e, ~_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 35415i, 49318i), vec3<i32>(-4720i, 1i, -12862i))) ^ global1.a.e, u_input.c.xz);
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(~(-u_input.c.wyz));
    global3 = array<bool, 23>();
    global2 = vec4<f32>(global1.a.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(global1.a.c))))))), global2.x, _wgslsmith_f_op_f32(-global1.a.b));
    var var_1 = !select(select(vec4<bool>(true, any(vec4<bool>(false, false, global1.a.d, false)), !global3[_wgslsmith_index_u32(49591u, 23u)], true), !select(vec4<bool>(false, false, global1.a.d, false), vec4<bool>(false, false, global3[_wgslsmith_index_u32(global1.a.a, 23u)], global1.a.d), true), func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(558f, 1000f)), 4294967295u, Struct_3(global1.a.d, u_input.a.x, global1.a), global2.xy)), vec4<bool>(false, true, global1.a.d, true), !func_2(1u, !global1.a.d, -u_input.c.x, min(vec2<i32>(var_0.x, 0i), u_input.c.zz)).a.d);
    let var_2 = global1.a.a;
    var var_3 = 2936f;
    var var_4 = select(select(!vec4<bool>(!global1.a.d, all(vec3<bool>(true, global1.a.d, global3[_wgslsmith_index_u32(u_input.a.x, 23u)])), all(vec4<bool>(global3[_wgslsmith_index_u32(63682u, 23u)], false, true, false)), true), !vec4<bool>(!global1.a.d, !global3[_wgslsmith_index_u32(7606u, 23u)], true, !global1.a.d), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_1.x, true, global3[_wgslsmith_index_u32(u_input.a.x, 23u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.d, 23u)], true, global1.a.d), vec4<bool>(global3[_wgslsmith_index_u32(global1.a.a, 23u)], false, global1.a.d, global1.a.d)), select(vec4<bool>(global3[_wgslsmith_index_u32(55689u, 23u)], global3[_wgslsmith_index_u32(1u, 23u)], false, false), vec4<bool>(var_1.x, global1.a.d, true, true), global1.a.d))), select(vec4<bool>(!(!var_1.x), true, false, _wgslsmith_f_op_f32(-global1.a.b) < _wgslsmith_f_op_f32(-306f + -1280f)), select(vec4<bool>(func_4(global3[_wgslsmith_index_u32(global1.a.a, 23u)], Struct_2(Struct_1(13418u, -1000f, -421f, true, var_0.x)), vec3<u32>(global1.a.a, 1u, 1u), Struct_3(global1.a.d, 1u, global1.a)).d, var_1.x, false, !global1.a.d), vec4<bool>(true, global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(47883u, 4294967295u), 23u)], global3[_wgslsmith_index_u32(u_input.b.x, 23u)], false), global3[_wgslsmith_index_u32(u_input.d, 23u)]), select(!(!vec4<bool>(true, var_1.x, global1.a.d, true)), !select(vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b.x, 23u)], false, false), vec4<bool>(true, false, true, var_1.x), vec4<bool>(false, global1.a.d, false, false)), vec4<bool>(all(vec4<bool>(false, true, true, var_1.x)), !var_1.x, u_input.c.x < 67846i, false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) * _wgslsmith_f_op_f32(max(-1138f, -438f)))) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.a.c + -327f), global2.x));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(max(~_wgslsmith_add_i32(14040i, var_0.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.e, u_input.c.x), var_0.xy)), min(39604i, _wgslsmith_sub_i32(-u_input.c.x, global1.a.e)), var_0.x >> (~1u % 32u), _wgslsmith_mult_i32(func_4(!var_1.x, Struct_2(Struct_1(u_input.a.x, global1.a.b, global1.a.c, global1.a.d, var_0.x)), abs(vec3<u32>(1u, global1.a.a, 1u)), Struct_3(true, 22237u, global1.a)).e, _wgslsmith_mult_i32(u_input.c.x, -66071i))), vec4<u32>(2292u, u_input.d, 9784u >> (_wgslsmith_sub_u32(~16625u, _wgslsmith_sub_u32(global1.a.a, 60760u)) % 32u), select(u_input.d, ~1u, select(!global1.a.d, true, true && var_4.x))), 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x)), min(var_0, abs(var_0)));
}

