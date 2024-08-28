struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24> = array<u32, 24>(120744u, 2840u, 60734u, 1u, 4294967295u, 1u, 34680u, 9980u, 4294967295u, 23352u, 0u, 1u, 1u, 1u, 1u, 20373u, 25990u, 49832u, 1u, 21628u, 14772u, 1u, 0u, 0u);

var<private> global1: Struct_1;

var<private> global2: Struct_3 = Struct_3(0u, Struct_1(1i));

var<private> global3: Struct_2;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
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

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> u32 {
    global3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(max(global3.a, global3.a))), _wgslsmith_f_op_f32(sign(arg_0))) * _wgslsmith_f_op_f32(-global3.a)), arg_1, global3.c, arg_2);
    let var_0 = !vec4<bool>(arg_0 >= _wgslsmith_div_f32(global3.a, _wgslsmith_f_op_f32(sign(global3.a))), true, false, any(vec4<bool>(true, true, true, true)));
    return ~arg_1;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_1) -> Struct_3 {
    let var_0 = ~(~1i);
    var var_1 = var_0;
    let var_2 = global3.a;
    let var_3 = Struct_3(669u, arg_3);
    let var_4 = Struct_3(global0[_wgslsmith_index_u32(func_3(_wgslsmith_f_op_f32(floor(global3.a)), 0u, global3.d), 24u)] ^ abs(1u), Struct_1(max(arg_3.a, ~(var_3.b.a ^ arg_3.a))));
    return var_3;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = Struct_1(firstTrailingBit(_wgslsmith_mult_i32(~(~(-1i)), ~global3.c.a)));
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(global3.a)), -1853f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-2779f - _wgslsmith_f_op_f32(select(global3.a, global3.a, false))))), 836f));
    let var_2 = ~(~vec4<i32>(-47083i, countOneBits(arg_0.b.a), -(global3.d.a << (46847u % 32u)), ~(1i << (arg_0.a % 32u))));
    var var_3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a, var_1.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -2788f), _wgslsmith_f_op_f32(-global3.a)))), reverseBits(~abs(global3.b)), global3.c, func_2(!select(vec2<bool>(true, true), vec2<bool>(true, true), all(vec4<bool>(true, true, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, true, true), true, true, select(false, true, true)), vec4<bool>(true, true, true, true)), vec2<bool>(any(vec2<bool>(true, true)), all(vec2<bool>(true, true))), func_2(select(vec2<bool>(false, false), vec2<bool>(true, true), true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true)), all(vec4<bool>(true, false, true, true))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_1(16194i)).b).b);
    var var_4 = all(select(!select(vec2<bool>(true, false), vec2<bool>(false, true), true), select(vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(true, false), false), all(vec2<bool>(true, false))), select(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), true))) || !(29096i > global1.a);
    return Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1700f)) - _wgslsmith_f_op_f32(floor(global3.a)))))), ~(~(~71713u >> (0u % 32u))), func_2(select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), !select(vec2<bool>(true, true), vec2<bool>(false, true), true), all(vec4<bool>(false, true, false, true)) && select(false, true, false)), vec4<bool>(false, false, all(vec3<bool>(true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(false, false), true))), vec2<bool>(false, false), func_2(select(vec2<bool>(true, false), vec2<bool>(true, true), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false))), vec4<bool>(true, true, true, true), vec2<bool>(true, true), func_2(select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec4<bool>(false, false, false, false), vec2<bool>(true, true), global3.c).b).b).b, global3.c);
}

fn func_5(arg_0: Struct_2) -> bool {
    let var_0 = any(vec3<bool>(false, select(false, false, select(true, global0[_wgslsmith_index_u32(global2.a, 24u)] > arg_0.b, true)), true));
    var var_1 = func_2(vec2<bool>(~min(global3.c.a, 6013i) == -_wgslsmith_div_i32(arg_0.c.a, 2147483647i), all(vec3<bool>(false, var_0, var_0)) & !(true && var_0)), !select(select(!vec4<bool>(false, var_0, var_0, var_0), select(vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(var_0, false, false, var_0), var_0), all(vec2<bool>(true, false))), select(vec4<bool>(true, var_0, false, true), vec4<bool>(var_0, true, true, var_0), select(vec4<bool>(var_0, true, true, true), vec4<bool>(false, true, true, var_0), false)), false), select(select(vec2<bool>(false, false), select(select(vec2<bool>(true, var_0), vec2<bool>(true, var_0), vec2<bool>(true, var_0)), select(vec2<bool>(var_0, var_0), vec2<bool>(true, var_0), vec2<bool>(var_0, false)), select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), true)), any(!vec4<bool>(true, var_0, false, var_0))), select(vec2<bool>(true, !var_0), !vec2<bool>(var_0, var_0), vec2<bool>(all(vec3<bool>(true, var_0, var_0)), all(vec3<bool>(var_0, var_0, true)))), !(!select(vec2<bool>(true, var_0), vec2<bool>(false, true), var_0))), arg_0.d);
    let var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-522f, arg_0.a, 350f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(108f, arg_0.a, arg_0.a) * vec3<f32>(global3.a, arg_0.a, -618f))))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-127f)) * arg_0.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_0.a, global3.a, false))), global3.a)))));
    let var_3 = arg_0;
    global1 = Struct_1(u_input.a);
    return _wgslsmith_dot_vec4_i32(vec4<i32>(~(0i & global1.a), ~_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, arg_0.d.a, 1i, var_1.b.a), vec4<i32>(global1.a, 11885i, global1.a, var_3.d.a)), abs(2147483647i) >> (~var_3.b % 32u), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(global2.b.a, global3.c.a), vec2<i32>(global1.a, 0i)), 1i)), ~(vec4<i32>(-1i) * -vec4<i32>(var_3.d.a, -58908i, global2.b.a, global3.d.a))) == (countOneBits(~global3.c.a) << (~_wgslsmith_mod_u32(49234u, ~57964u) % 32u));
}

fn func_1(arg_0: Struct_3) -> u32 {
    global0 = array<u32, 24>();
    global0 = array<u32, 24>();
    let var_0 = any(vec4<bool>(any(select(select(vec2<bool>(false, false), vec2<bool>(false, true), true), select(vec2<bool>(false, true), vec2<bool>(true, false), true), true)), any(vec4<bool>(any(vec4<bool>(false, true, true, true)), true, true, true)), func_5(func_4(func_2(vec2<bool>(true, false), vec4<bool>(false, true, false, false), vec2<bool>(false, false), Struct_1(38285i)))), any(!select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1f, global3.a))), 28677u, Struct_1(-func_2(select(vec2<bool>(var_0, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec4<bool>(var_0, var_0, false, false), vec4<bool>(false, var_0, true, var_0), vec4<bool>(var_0, false, false, false)), !vec2<bool>(var_0, true), Struct_1(global1.a)).b.a), global2.b);
    global3 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -803f) - global3.a)), _wgslsmith_mod_u32(firstTrailingBit(func_4(func_2(vec2<bool>(false, var_0), vec4<bool>(false, var_0, var_0, var_0), vec2<bool>(var_0, true), Struct_1(-1i))).b), 0u), func_2(vec2<bool>(all(select(vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, var_0, true), vec3<bool>(var_0, true, var_0))), var_0), vec4<bool>(all(vec2<bool>(true, true)), false, true, !var_0), select(!vec2<bool>(var_0, false), select(!vec2<bool>(var_0, false), select(vec2<bool>(false, true), vec2<bool>(var_0, true), vec2<bool>(var_0, true)), !vec2<bool>(var_0, var_0)), max(global2.b.a, global1.a) == -u_input.a), Struct_1(select(u_input.a, 0i, var_0) & abs(global2.b.a))).b, func_2(vec2<bool>(false, select(var_0, global3.a == -449f, true)), !vec4<bool>(true, !var_0, var_0, var_0), select(select(vec2<bool>(false, true), vec2<bool>(var_0, false), true), select(vec2<bool>(true, true), select(vec2<bool>(var_0, var_0), vec2<bool>(true, true), var_0), !vec2<bool>(false, var_0)), var_0), func_4(arg_0).d).b);
    return 1u;
}

fn func_6(arg_0: vec4<f32>, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = _wgslsmith_mod_vec4_u32(select(~_wgslsmith_sub_vec4_u32(vec4<u32>(49370u, 0u, 66024u, global2.a), select(vec4<u32>(global2.a, 13756u, global0[_wgslsmith_index_u32(3052u, 24u)], global0[_wgslsmith_index_u32(18877u, 24u)]), vec4<u32>(0u, 32998u, 4294967295u, 16873u), false)), _wgslsmith_add_vec4_u32(select(vec4<u32>(53698u, 4294967295u, global3.b, global3.b), _wgslsmith_add_vec4_u32(vec4<u32>(global2.a, 4294967295u, 77927u, 1u), vec4<u32>(27475u, 52017u, global3.b, 69016u)), arg_1.a <= 1095f), ~(vec4<u32>(global2.a, global0[_wgslsmith_index_u32(4294967295u, 24u)], global2.a, arg_1.b) << (vec4<u32>(1u, 0u, 4294967295u, 4294967295u) % vec4<u32>(32u)))), vec4<bool>(true, max(global1.a, 0i) < 66393i, all(vec3<bool>(true, true, true)), true)), firstTrailingBit(~abs(vec4<u32>(global0[_wgslsmith_index_u32(23711u, 24u)], 128653u, global3.b, 65074u))) & vec4<u32>(firstTrailingBit(8673u), 27209u, global2.a ^ arg_1.b, ~(13855u | global2.a)));
    global1 = arg_1.c;
    var_0 = vec4<u32>(~1u, ~(_wgslsmith_add_u32(global3.b, 0u) | global0[_wgslsmith_index_u32(~var_0.x, 24u)]), global2.a, ~min(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(var_0.x, 24u)], 24u)], global3.b)) << (firstLeadingBit(vec4<u32>(arg_1.b, 58435u, func_2(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true)), vec4<bool>(true, true, true, false), vec2<bool>(true, true), Struct_1(global2.b.a)).a, _wgslsmith_mod_u32(arg_1.b, ~1u))) % vec4<u32>(32u));
    let var_1 = func_2(select(!select(vec2<bool>(false, false), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(true, true)), !(!select(vec2<bool>(false, false), vec2<bool>(false, true), true)), !select(all(vec2<bool>(true, false)), all(vec4<bool>(false, true, false, false)), 0i < u_input.a)), vec4<bool>((firstTrailingBit(27019u) < countOneBits(54665u)) && true, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(432f - global3.a), _wgslsmith_f_op_f32(-209f + 1211f))) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a)), false, true), !select(vec2<bool>(true, true), !select(vec2<bool>(false, true), vec2<bool>(true, true), false), any(vec3<bool>(true, true, true))), arg_1.c);
    let var_2 = vec3<bool>(true, all(!(!select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true)))), !(global3.a >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f + arg_1.a), _wgslsmith_f_op_f32(step(858f, 529f))))));
    return abs(~(reverseBits(_wgslsmith_add_vec2_u32(var_0.zw, vec2<u32>(arg_1.b, global2.a))) ^ (var_0.zx & vec2<u32>(0u, var_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1833f, global3.a, 568f, -1263f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-865f, global3.a, 1908f, global3.a) * vec4<f32>(global3.a, global3.a, global3.a, 1000f))))))), Struct_2(-421f, ~func_1(Struct_3(14284u, global3.d)), Struct_1(44405i), Struct_1(global3.c.a)));
    global3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(-1144f)), 296f)), 2150f)) + 198f), 1u, func_2(vec2<bool>(!any(vec2<bool>(false, true)), all(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true)))), vec4<bool>(_wgslsmith_f_op_f32(abs(global3.a)) < _wgslsmith_div_f32(global3.a, global3.a), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), true, true), vec2<bool>(true, true), Struct_1(_wgslsmith_sub_i32(-2147483647i, 1i))).b, global2.b);
    let var_1 = any(select(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true)), vec2<bool>(true, true), true));
    global3 = Struct_2(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-373f - 534f))), 0u, func_4(func_2(!select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), vec2<bool>(var_1, var_1)), vec4<bool>(all(vec4<bool>(false, var_1, true, var_1)), func_5(Struct_2(674f, 32143u, global3.c, global3.c)), false, false), select(!vec2<bool>(var_1, var_1), select(vec2<bool>(false, var_1), vec2<bool>(true, var_1), vec2<bool>(false, var_1)), vec2<bool>(false, true)), func_4(Struct_3(global2.a, global2.b)).c)).d, global3.d);
    var var_2 = select(select(select(~vec3<u32>(32068u, 54831u, var_0.x), max(vec3<u32>(76740u, var_0.x, 1u), vec3<u32>(global3.b, global3.b, global0[_wgslsmith_index_u32(var_0.x, 24u)])), select(vec3<bool>(false, var_1, var_1), vec3<bool>(true, var_1, var_1), vec3<bool>(true, var_1, var_1))) ^ ~abs(vec3<u32>(32671u, global0[_wgslsmith_index_u32(4294967295u, 24u)], global2.a)), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(global0[_wgslsmith_index_u32(global3.b, 24u)], global2.a, global2.a), _wgslsmith_add_vec3_u32(vec3<u32>(global2.a, 0u, 5957u), vec3<u32>(1u, 1u, 33894u))), select(select(vec3<bool>(var_1, var_1, false), select(vec3<bool>(false, var_1, var_1), vec3<bool>(var_1, true, false), vec3<bool>(var_1, true, false)), var_1 & true), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), var_1), global0[_wgslsmith_index_u32(global2.a, 24u)] != global2.a)), ~_wgslsmith_mod_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(global2.a, var_0.x, 41626u) ^ vec3<u32>(global3.b, global3.b, global3.b), vec3<u32>(global0[_wgslsmith_index_u32(global3.b, 24u)], var_0.x, global3.b) << (vec3<u32>(36464u, 1u, 74984u) % vec3<u32>(32u))), vec3<u32>(func_3(global3.a, 4294967295u, Struct_1(u_input.a)), global2.a, select(global3.b, 1u, var_1))), select(select(!select(vec3<bool>(var_1, false, var_1), vec3<bool>(var_1, var_1, var_1), var_1), !(!vec3<bool>(var_1, false, false)), vec3<bool>(var_1, -77304i < global1.a, true)), vec3<bool>(var_1, any(select(vec2<bool>(var_1, false), vec2<bool>(true, var_1), true)), var_1), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), !vec3<bool>(var_1, false, true), vec3<bool>(var_1, false, true)), vec3<bool>(true, true, true))));
    var_2 = ~vec3<u32>(min(func_6(vec4<f32>(-297f, global3.a, -694f, global3.a), func_4(Struct_3(global0[_wgslsmith_index_u32(6269u, 24u)], global2.b))).x, firstTrailingBit(var_2.x)), 4294967295u, _wgslsmith_add_u32((global0[_wgslsmith_index_u32(75516u, 24u)] | 4294967295u) | _wgslsmith_mod_u32(var_0.x, 3060u), ~26819u));
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global3.a, global3.a, 529f), vec3<f32>(-622f, global3.a, 528f), vec3<bool>(var_1, false, var_1))) * _wgslsmith_f_op_vec3_f32(max(vec3<f32>(global3.a, -719f, -1445f), vec3<f32>(global3.a, global3.a, -1537f)))) * _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.a, 1163f, -732f)), _wgslsmith_div_vec3_f32(vec3<f32>(1611f, global3.a, global3.a), vec3<f32>(-1000f, global3.a, 1949f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-611f, global3.a, global3.a) * vec3<f32>(-724f, -674f, global3.a)), _wgslsmith_div_vec3_f32(vec3<f32>(global3.a, 1001f, -1175f), vec3<f32>(global3.a, global3.a, -654f)), true)))));
    let var_4 = func_4(Struct_3(~var_2.x, func_4(func_2(select(vec2<bool>(false, var_1), vec2<bool>(var_1, var_1), true), !vec4<bool>(var_1, false, var_1, true), select(vec2<bool>(false, false), vec2<bool>(var_1, var_1), vec2<bool>(true, var_1)), Struct_1(2147483647i))).d)).c;
    let var_5 = Struct_1(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.zz) - var_3.zz)), firstLeadingBit((-var_4.a << (global3.b % 32u)) ^ -1i), var_2.yx);
}

