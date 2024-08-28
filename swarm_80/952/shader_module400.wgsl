struct Struct_1 {
    a: i32,
    b: u32,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(0i, 6285u, vec3<i32>(7063i, 2147483647i, i32(-2147483648))), Struct_1(-25633i, 34422u, vec3<i32>(-12082i, -29760i, -1i)), Struct_1(-44686i, 9030u, vec3<i32>(i32(-2147483648), 33586i, 26368i)));

var<private> global1: array<bool, 19>;

var<private> global2: Struct_1 = Struct_1(0i, 32629u, vec3<i32>(7826i, -2461i, 19129i));

var<private> global3: Struct_1 = Struct_1(1i, 54713u, vec3<i32>(1i, -9466i, -893i));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: bool) -> vec4<f32> {
    global3 = Struct_1(global3.c.x, global3.b, reverseBits(vec3<i32>(global3.a >> (~global2.b % 32u), _wgslsmith_add_i32(global3.c.x >> (global2.b % 32u), min(u_input.b.x, u_input.d.x)), firstLeadingBit(72640i))));
    global3 = Struct_1(_wgslsmith_mod_i32(max(-(global3.c.x ^ global2.c.x), -u_input.d.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.d.x, 2147483647i), ~firstLeadingBit(1i))), ~select(30100u >> ((u_input.e ^ global2.b) % 32u), u_input.e, arg_0), vec3<i32>(_wgslsmith_div_i32(abs(select(2147483647i, -64968i, true)), global2.a ^ _wgslsmith_mult_i32(u_input.b.x, global3.c.x)), global2.a, 49100i));
    let var_0 = Struct_1(u_input.d.x, 0u, vec3<i32>(-2147483647i, ~_wgslsmith_dot_vec2_i32(vec2<i32>(global3.a, global3.c.x), vec2<i32>(u_input.d.x, u_input.b.x)), ~1i));
    let var_1 = false && !arg_1;
    return vec4<f32>(-184f, _wgslsmith_f_op_f32(-136f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1480f + 476f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-958f - 380f), _wgslsmith_f_op_f32(511f - 1529f))) + _wgslsmith_div_f32(485f, 1611f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-497f, -667f, !arg_1))));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec3<i32>, arg_3: Struct_1) -> i32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(func_3(global1[_wgslsmith_index_u32(countOneBits(abs(global3.b)), 19u)], true));
    var var_1 = Struct_1(reverseBits(27797i), 0u, vec3<i32>(_wgslsmith_clamp_i32(59119i, 5524i, 1i), -45910i, 0i));
    let var_2 = arg_3;
    let var_3 = ~vec4<i32>(_wgslsmith_dot_vec3_i32(abs(vec3<i32>(global2.c.x, arg_3.a, -28941i) & vec3<i32>(arg_2.x, -1i, 2147483647i)), vec3<i32>(countOneBits(var_1.c.x), global2.a << (var_1.b % 32u), _wgslsmith_mult_i32(-2147483647i, var_2.c.x))), _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(arg_0.c.x, arg_0.a, global2.a, u_input.d.x), vec4<i32>(var_2.a, arg_2.x, -5603i, 22068i) ^ vec4<i32>(2147483647i, var_2.c.x, arg_2.x, arg_2.x)), (vec4<i32>(var_2.a, -1i, 6520i, arg_3.c.x) | vec4<i32>(-41929i, var_2.c.x, arg_2.x, global2.c.x)) >> (countOneBits(u_input.a) % vec4<u32>(32u))), ~_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -38927i, arg_0.c.x), u_input.d), 4771i), 2147483647i);
    var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), -707f, _wgslsmith_f_op_f32(round(var_0.x)), -100f), _wgslsmith_f_op_vec4_f32(vec4<f32>(1907f, arg_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * arg_1)), var_0.x) * vec4<f32>(322f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) * -725f), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x))));
    return 54064i;
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: i32, arg_3: vec2<i32>) -> Struct_1 {
    var var_0 = ~4294967295u;
    global2 = Struct_1(~arg_2, _wgslsmith_add_u32(firstLeadingBit(5763u), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(115486u, 8676u, 37320u, global2.b)), global2.b, _wgslsmith_mod_u32(8785u, u_input.c.x))), ~min(_wgslsmith_add_vec3_i32(~global3.c, vec3<i32>(arg_0.x, global3.c.x, global3.c.x)), ~vec3<i32>(2147483647i, global3.c.x, arg_3.x) & ~vec3<i32>(-33620i, 1i, 1i)));
    var var_1 = Struct_1(select(2147483647i, (i32(-1i) * -38312i) ^ firstLeadingBit(arg_3.x), all(select(!vec3<bool>(global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(global2.b, 19u)], global1[_wgslsmith_index_u32(4294967295u, 19u)]), vec3<bool>(arg_1, arg_1, global1[_wgslsmith_index_u32(global2.b, 19u)]), !global1[_wgslsmith_index_u32(2155u, 19u)]))), _wgslsmith_clamp_u32((~global3.b ^ 1u) << (0u % 32u), 52970u, _wgslsmith_dot_vec2_u32(abs(u_input.a.yw >> (vec2<u32>(26865u, 1u) % vec2<u32>(32u))), ~vec2<u32>(79127u, 8039u))), ~(-(~(global3.c ^ vec3<i32>(-6302i, global2.c.x, global2.a)))));
    global2 = Struct_1(_wgslsmith_mult_i32(u_input.b.x, reverseBits(firstTrailingBit(~arg_3.x))), countOneBits(3103u), ~vec3<i32>(firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(var_1.c >> (vec3<u32>(u_input.a.x, global2.b, u_input.e) % vec3<u32>(32u)), vec3<i32>(2814i, arg_0.x, 5926i)), -arg_0.x >> (_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.b, 2252u), u_input.c) % 32u)));
    var var_2 = 4294967295u;
    return global0[_wgslsmith_index_u32(~1u, 3u)];
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool, arg_3: vec3<i32>) -> bool {
    global1 = array<bool, 19>();
    let var_0 = func_4(vec3<i32>(func_4(firstLeadingBit(u_input.d << (vec3<u32>(global3.b, global2.b, arg_0.b) % vec3<u32>(32u))), arg_2, 1i, vec2<i32>(-global3.c.x, select(global2.c.x, -18222i, global1[_wgslsmith_index_u32(global2.b, 19u)]))).a, func_4(~vec3<i32>(u_input.b.x, 2147483647i, -1i), true, 0i, ~arg_3.yy).a, 0i << (arg_1.b % 32u)), !(!(false && select(global1[_wgslsmith_index_u32(arg_1.b, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], false))), 1i, vec2<i32>(arg_1.c.x, firstTrailingBit(global2.c.x)));
    var var_1 = global0[_wgslsmith_index_u32(0u >> ((0u << (arg_0.b % 32u)) % 32u), 3u)];
    var var_2 = ~_wgslsmith_dot_vec3_u32(~abs(u_input.a.yxx), firstLeadingBit(u_input.a.yyw));
    global3 = Struct_1(~_wgslsmith_mult_i32(7965i, _wgslsmith_mod_i32(arg_3.x, -1i)) >> (1u % 32u), 1u, global2.c);
    return true;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    global3 = func_4(vec3<i32>(arg_0.a, global2.a, _wgslsmith_add_i32(-2147483647i, countOneBits(abs(1i)))), any(vec2<bool>(any(select(vec2<bool>(false, true), vec2<bool>(arg_2, true), arg_2)), global1[_wgslsmith_index_u32(global3.b, 19u)])), 1i, u_input.d.yy);
    var var_0 = global0[_wgslsmith_index_u32(~firstLeadingBit(arg_0.b), 3u)];
    global2 = func_4(vec3<i32>(u_input.b.x, -func_4(global3.c, false, -global2.a, vec2<i32>(0i, 9958i)).c.x, arg_1.a), arg_2, ~global2.a, vec2<i32>(_wgslsmith_add_i32(-1i, max(arg_1.c.x, reverseBits(arg_0.a))), _wgslsmith_dot_vec2_i32(func_4(-u_input.b, global1[_wgslsmith_index_u32(abs(global2.b), 19u)], -2288i, global2.c.xz & vec2<i32>(13830i, 0i)).c.yy, vec2<i32>(_wgslsmith_clamp_i32(1i, -48430i, 2363i), -2147483647i))));
    var var_1 = func_4(vec3<i32>(u_input.d.x, arg_1.a, global3.a), any(!(!vec2<bool>(true, arg_2))), 1313i, global3.c.yy);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -1435f), arg_1.b <= arg_1.b)))));
    return arg_0;
}

fn func_7(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    var var_0 = global0[_wgslsmith_index_u32(53458u, 3u)];
    var var_1 = 828f;
    let var_2 = arg_1;
    let var_3 = arg_2;
    let var_4 = Struct_1(0i, ~countOneBits(abs(15776u)) >> (1u % 32u), vec3<i32>(1i, ~2147483647i, arg_2.c.x));
    return var_2;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: bool) -> u32 {
    var var_0 = !vec3<bool>(!(!all(vec3<bool>(global1[_wgslsmith_index_u32(1u, 19u)], arg_3, true))), 0u > max(~1u, 0u ^ arg_0), global1[_wgslsmith_index_u32(max(~1645u, firstTrailingBit(arg_1.b & arg_0)), 19u)]);
    var var_1 = ~(_wgslsmith_mod_u32(min(~u_input.e, ~global2.b), ~4294967295u) >> (45132u % 32u));
    global0 = array<Struct_1, 3>();
    var var_2 = arg_1;
    var var_3 = func_7(arg_1, func_6(Struct_1(global3.c.x >> (_wgslsmith_mult_u32(71038u, 11279u) % 32u), ~(~40450u), global3.c), Struct_1(17883i, abs(~11597u), vec3<i32>(2147483647i, 1i, global3.a) >> (select(vec3<u32>(global3.b, global2.b, 95094u), u_input.a.xwy, vec3<bool>(arg_3, arg_3, false)) % vec3<u32>(32u))), func_5(func_4(arg_1.c, false, func_2(Struct_1(-18412i, u_input.c.x, vec3<i32>(-2882i, arg_1.a, 938i)), 220f, vec3<i32>(global3.a, 2450i, arg_1.c.x), Struct_1(global2.c.x, 1u, arg_1.c)), abs(vec2<i32>(1i, -40290i))), Struct_1(0i, global2.b, -var_2.c), true, arg_1.c)), func_6(arg_1, arg_1, !var_0.x));
    return _wgslsmith_sub_u32(~reverseBits(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(29712u, 32656u, 25884u, 63014u))), ~func_4(global2.c, true, _wgslsmith_add_i32(global2.a, 2147483647i), var_2.c.yz ^ u_input.b.zx).b) | arg_1.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a;
    var_0 = _wgslsmith_mult_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(~0u, ~global2.b, ~u_input.e, func_1(4294967295u, global0[_wgslsmith_index_u32(var_0.x, 3u)], vec3<u32>(global2.b, 44150u, 0u), true)), ~_wgslsmith_add_vec4_u32(vec4<u32>(8346u, global3.b, 4294967295u, global3.b), u_input.a)), ~vec4<u32>(~global3.b, ~var_0.x, 1u, var_0.x), true), vec4<u32>(var_0.x, _wgslsmith_mod_u32(global3.b, 0u), 54311u, ~33526u));
    global2 = global0[_wgslsmith_index_u32(4294967295u, 3u)];
    var var_1 = 929f;
    let var_2 = _wgslsmith_div_vec3_u32(~(firstTrailingBit(u_input.a.ywz << (vec3<u32>(var_0.x, global3.b, 40894u) % vec3<u32>(32u))) >> (vec3<u32>(1u, ~49238u, 0u) % vec3<u32>(32u))), var_0.wyw);
    var var_3 = global0[_wgslsmith_index_u32(global2.b, 3u)];
    let x = u_input.a;
    s_output = StorageBuffer(-21679i << (global2.b % 32u), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-374f)))), _wgslsmith_f_op_f32(-574f + _wgslsmith_div_f32(264f, 1057f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(404f, 233f))) * _wgslsmith_f_op_f32(round(-432f))), 348f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(1094f)), 521f)) - 229f)), firstTrailingBit(11624u) << (683u % 32u), 1f);
}

