struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: f32 = -378f;

var<private> global2: vec3<bool> = vec3<bool>(true, true, true);

var<private> global3: array<u32, 7>;

var<private> global4: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<u32>(84641u, 50738u, 17547u, 1u), vec2<bool>(false, true), 20175u, vec3<u32>(12024u, 4294967295u, 37743u)), Struct_1(vec4<u32>(0u, 6354u, 27764u, 8092u), vec2<bool>(true, true), 36379u, vec3<u32>(68727u, 0u, 0u)), Struct_1(vec4<u32>(4294967295u, 5474u, 51023u, 47288u), vec2<bool>(true, false), 1928u, vec3<u32>(1u, 9443u, 0u)), Struct_1(vec4<u32>(8690u, 24835u, 16905u, 0u), vec2<bool>(false, true), 2843u, vec3<u32>(46182u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 28826u), vec2<bool>(false, false), 1u, vec3<u32>(42457u, 4294967295u, 0u)), Struct_1(vec4<u32>(1u, 45138u, 52840u, 0u), vec2<bool>(true, true), 1630u, vec3<u32>(4294967295u, 9200u, 0u)), Struct_1(vec4<u32>(1u, 85435u, 4294967295u, 1u), vec2<bool>(true, true), 0u, vec3<u32>(43860u, 0u, 0u)), Struct_1(vec4<u32>(14374u, 0u, 0u, 63474u), vec2<bool>(true, true), 0u, vec3<u32>(1u, 0u, 4294967295u)), Struct_1(vec4<u32>(22329u, 106553u, 67692u, 4294967295u), vec2<bool>(true, true), 24438u, vec3<u32>(60396u, 1u, 48053u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32, arg_1: vec4<u32>) -> vec3<f32> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -731f));
    let var_1 = global4[_wgslsmith_index_u32(firstLeadingBit(global3[_wgslsmith_index_u32(37326u, 7u)]), 9u)];
    global3 = array<u32, 7>();
    global3 = array<u32, 7>();
    global3 = array<u32, 7>();
    return _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, var_0, var_0)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-749f, 1283f, var_0))), select(vec3<bool>(global2.x, global0.b.x, global0.b.x), vec3<bool>(var_1.b.x, global0.b.x, var_1.b.x), vec3<bool>(global0.b.x, global0.b.x, global0.b.x)))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(var_0 + var_0), -831f, _wgslsmith_f_op_f32(-138f * var_0)), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0, 848f, var_0), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0, -595f, var_0))))))))));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = ~firstTrailingBit(vec3<u32>(97287u, 4294967295u, global3[_wgslsmith_index_u32(1u, 7u)]) ^ ~global0.d) & ~_wgslsmith_div_vec3_u32(global0.a.yyx, global0.d | _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, global0.c, 81500u), vec3<u32>(33618u, 0u, global0.c), global0.d));
    var var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * arg_0.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f), _wgslsmith_f_op_f32(sign(arg_0.x))), _wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(-1401f, arg_0.x))), _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_mod_u32(4294967295u, var_0.x), global0.a)), !select(!vec3<bool>(false, false, global0.b.x), !vec3<bool>(global0.b.x, global0.b.x, global2.x), select(vec3<bool>(true, global0.b.x, true), vec3<bool>(global2.x, global2.x, false), false)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, arg_0.x, arg_0.x), arg_0, vec3<bool>(false, false, true))) - arg_0), _wgslsmith_f_op_vec3_f32(vec3<f32>(1364f, 1414f, arg_0.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(138f, arg_0.x, arg_0.x))))));
    global3 = array<u32, 7>();
    var var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(global0.a, ~(~global0.a)), 9u)];
    return global4[_wgslsmith_index_u32(~_wgslsmith_dot_vec3_u32(~global0.d, vec3<u32>(var_3.a.x >> (firstTrailingBit(global0.d.x) % 32u), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, global0.d.x), abs(global0.c)), ~u_input.c << (global3[_wgslsmith_index_u32(~3402u, 7u)] % 32u))), 9u)];
}

fn func_4(arg_0: vec2<f32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: bool) -> vec4<f32> {
    let var_0 = -37157i;
    var var_1 = _wgslsmith_sub_i32(-(~min(2147483647i, u_input.b)), u_input.a);
    var var_2 = arg_0.x;
    var var_3 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(400f - 402f), 767f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1872f, -1054f) - arg_0.x)))));
    var var_4 = firstLeadingBit(arg_2.a.yzz);
    return vec4<f32>(_wgslsmith_f_op_f32(abs(682f)), -184f, 1418f, 254f);
}

fn func_1() -> u32 {
    global1 = -174f;
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(865f, -150f) + vec2<f32>(-1000f, -431f)), vec3<i32>(-1i, -2554i, u_input.a) ^ vec3<i32>(u_input.d.x, u_input.b, u_input.b), func_2(vec3<f32>(859f, -1257f, 464f)), global0.b.x)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-693f, 522f, -372f, -1047f), vec4<f32>(-2091f, -148f, 776f, -1326f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(177f, 970f, -469f, 733f)))) * vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = !global2.x;
    var var_2 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.xwy)));
    var_2 = func_2(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(var_0.yyy)))));
    return ~0u;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = vec2<i32>(-_wgslsmith_dot_vec4_i32(-select(vec4<i32>(0i, -2147483647i, u_input.d.x, 2147483647i), vec4<i32>(u_input.a, 1i, 1i, u_input.d.x), global0.b.x), vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.b, 1i, u_input.b), vec4<i32>(u_input.d.x, 1i, -31276i, u_input.d.x)), 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 10545i, u_input.a), vec3<i32>(u_input.d.x, 1i, 1i)), -39995i)), 0i);
    let var_1 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-670f, -1000f, 1000f), vec3<f32>(-293f, -957f, -655f))))))));
    var var_2 = u_input.d;
    global2 = !vec3<bool>(true, true, !(!arg_0.b.x));
    let var_3 = Struct_1(_wgslsmith_mod_vec4_u32(arg_0.a, ((vec4<u32>(global0.c, arg_0.c, 58539u, arg_0.a.x) ^ arg_0.a) << (~vec4<u32>(arg_1.a.x, 9512u, global3[_wgslsmith_index_u32(72113u, 7u)], 60282u) % vec4<u32>(32u))) ^ select(firstTrailingBit(arg_1.a), vec4<u32>(1u, u_input.c, global0.d.x, u_input.c), !arg_0.b.x)), !var_1.b, 4294967295u, vec3<u32>(48982u, global3[_wgslsmith_index_u32(func_2(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1246f), _wgslsmith_f_op_f32(step(-625f, 1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1117f))).c, 7u)], 21378u));
    return select(select(select(vec4<bool>(global0.b.x, func_2(vec3<f32>(560f, 860f, -1823f)).b.x, !var_1.b.x, var_3.b.x), vec4<bool>(all(vec2<bool>(arg_1.b.x, var_1.b.x)), arg_1.b.x != arg_1.b.x, var_1.b.x, var_3.b.x), true | var_1.b.x), vec4<bool>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 8485u, var_1.a.x), vec3<u32>(global0.d.x, var_1.d.x, 0u)) == max(1u, 0u), global0.b.x, true, global2.x), vec4<bool>(all(vec3<bool>(false, true, arg_1.b.x)), true, !(!var_1.b.x), arg_1.b.x)), !select(vec4<bool>(true, false, true, !global2.x), !(!vec4<bool>(var_3.b.x, arg_1.b.x, false, false)), vec4<bool>(true, !var_1.b.x, true, true)), any(!select(vec3<bool>(true, true, true), vec3<bool>(false, global2.x, arg_0.b.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec3<bool>(global2.x, select(true, all(!vec4<bool>(global2.x, false, global0.b.x, true)), true), ~countOneBits(global3[_wgslsmith_index_u32(4294967295u, 7u)]) > ~reverseBits(global0.d.x)), select(!(!(!vec3<bool>(false, global2.x, global0.b.x))), select(vec3<bool>(32005u > u_input.c, all(vec4<bool>(global2.x, true, true, global0.b.x)), true), vec3<bool>(u_input.c > global3[_wgslsmith_index_u32(4294967295u, 7u)], any(vec4<bool>(true, true, true, false)), true), !(!global2.x)), false), all(func_5(global4[_wgslsmith_index_u32(func_1(), 9u)], global4[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(59978u, global0.c), 7u)], 9u)])));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1639f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-901f, -555f)))));
    var_1 = -869f;
    var var_2 = _wgslsmith_f_op_vec3_f32(func_3(1u, ~abs(firstLeadingBit(select(global0.a, vec4<u32>(u_input.c, u_input.c, 4294967295u, 4294967295u), false))))).x;
    let var_3 = func_2(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-475f, 150f, 1515f) - _wgslsmith_div_vec3_f32(vec3<f32>(-447f, 2285f, -1055f), vec3<f32>(-1000f, 688f, 536f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-388f, 134f, 479f), vec3<f32>(-1740f, -1513f, -426f), vec3<bool>(true, global0.b.x, false)))))));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -1880f);
    let var_4 = func_2(vec3<f32>(-1396f, _wgslsmith_f_op_f32(-203f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(1127f, 343f), vec3<i32>(0i, u_input.b, 0i), var_3, var_0.x)).x))), -1667f));
    let x = u_input.a;
    s_output = StorageBuffer(func_1(), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-813f, 1000f))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(2014f, 213f))))), var_4.d.x >= 4294967295u)), vec2<bool>(select(all(vec3<bool>(true, var_4.b.x, var_4.b.x)), false, select(true, false, false)), var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(752f, -2373f, 1071f, -954f))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(368f, 586f, 1000f, -970f)))))))));
}

