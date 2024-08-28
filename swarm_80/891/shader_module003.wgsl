struct Struct_1 {
    a: u32,
    b: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: Struct_1,
    d: f32,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec3<bool>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(false, vec3<u32>(41015u, 0u, 52581u));

var<private> global1: Struct_1 = Struct_1(1u, vec2<i32>(2147483647i, -23843i));

var<private> global2: array<u32, 14>;

var<private> global3: bool;

var<private> global4: array<vec2<i32>, 12> = array<vec2<i32>, 12>(vec2<i32>(13244i, -15117i), vec2<i32>(i32(-2147483648), 1201i), vec2<i32>(1i, i32(-2147483648)), vec2<i32>(i32(-2147483648), -14100i), vec2<i32>(i32(-2147483648), -19425i), vec2<i32>(-46292i, 1i), vec2<i32>(-11947i, -9492i), vec2<i32>(34450i, -4796i), vec2<i32>(-73990i, 42330i), vec2<i32>(-1i, 52341i), vec2<i32>(12042i, 45578i), vec2<i32>(0i, 0i));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<u32> {
    var var_0 = Struct_1(reverseBits(~(~(4294967295u << (global1.a % 32u)))), vec2<i32>(reverseBits(_wgslsmith_mult_i32(u_input.a, -1i)), _wgslsmith_clamp_i32(_wgslsmith_sub_i32(~u_input.a, u_input.a >> (0u % 32u)), u_input.b.x >> (global1.a % 32u), u_input.b.x)));
    global1 = Struct_1(1u, _wgslsmith_mult_vec2_i32(-select(~vec2<i32>(19110i, 44486i), _wgslsmith_mod_vec2_i32(u_input.b.xy, vec2<i32>(28945i, u_input.b.x)), any(vec2<bool>(false, false))), ~vec2<i32>(var_0.b.x, 28019i)));
    global0 = Struct_2(global0.a, ~vec3<u32>(_wgslsmith_dot_vec3_u32(global0.b << (global0.b % vec3<u32>(32u)), vec3<u32>(3187u, 1u, 4294967295u)), global0.b.x, 1u));
    var var_1 = Struct_1(_wgslsmith_sub_u32(1u, ~_wgslsmith_dot_vec4_u32(~vec4<u32>(global0.b.x, global1.a, var_0.a, 1u), abs(vec4<u32>(var_0.a, var_0.a, 1u, global2[_wgslsmith_index_u32(19766u, 14u)])))), -abs(vec2<i32>(-1530i, -2147483647i)));
    let var_2 = firstLeadingBit(_wgslsmith_div_i32(-14042i, 1i));
    return vec4<u32>((global2[_wgslsmith_index_u32(global0.b.x, 14u)] << (1u % 32u)) | _wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.a, 32842u, global2[_wgslsmith_index_u32(75074u, 14u)], 1u), vec4<u32>(global0.b.x, 13930u, 0u, global0.b.x)), vec4<u32>(var_1.a, ~1u, _wgslsmith_sub_u32(4294967295u, 23828u), min(global1.a, 4294967295u))), ~max(global1.a, var_0.a), _wgslsmith_sub_u32(global1.a, 41343u), global1.a >> (_wgslsmith_mod_u32(var_1.a, _wgslsmith_clamp_u32(~var_0.a, _wgslsmith_mult_u32(59326u, 1u), select(global1.a, 4294967295u, true))) % 32u));
}

fn func_2() -> i32 {
    var var_0 = vec4<u32>(62966u, ~54765u, ~global1.a, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(~firstLeadingBit(84677u) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(global0.b.yx, vec2<u32>(global1.a, 4294967295u)), 19154u) % 32u), 14u)], global1.a));
    global4 = array<vec2<i32>, 12>();
    let var_1 = vec3<bool>(true, true, global0.a);
    var_0 = countOneBits(func_3());
    let var_2 = select(var_1.x, any(!(!(!vec4<bool>(global0.a, true, global0.a, false)))), global0.a);
    return global1.b.x;
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_4, arg_3: vec3<f32>) -> Struct_2 {
    var var_0 = ~global0.b;
    var var_1 = Struct_4(max(_wgslsmith_div_i32(_wgslsmith_mult_i32(global1.b.x, 2147483647i), ~(-21835i)) << ((var_0.x ^ 19854u) % 32u), arg_1.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_3.x))), arg_2.b), arg_2.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.x, arg_0.d) - _wgslsmith_f_op_f32(abs(arg_2.d)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x))));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-648f * _wgslsmith_f_op_f32(trunc(arg_2.b)))) + 1000f)));
    let var_3 = vec4<bool>(arg_0.e.a, all(!select(vec3<bool>(true, true, false), vec3<bool>(arg_2.c.x, true, var_1.c.x), true)), !(arg_3.x > _wgslsmith_f_op_f32(-1f)), false);
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1270f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-903f * -669f)))))) + _wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_2.d)))));
    return Struct_2(~(~(~47561u)) >= func_3().x, ~(~(~vec3<u32>(1u, arg_0.e.b.x, 0u)) & min(countOneBits(vec3<u32>(33762u, arg_0.e.b.x, 78601u)), func_3().yxx)));
}

fn func_1(arg_0: Struct_1) -> bool {
    global0 = func_4(Struct_3(i32(-1i) * -2147483647i, ~_wgslsmith_sub_i32(-2147483647i, u_input.b.x), arg_0, -192f, Struct_2(!(!global0.a), vec3<u32>(~global0.b.x, global0.b.x, ~global2[_wgslsmith_index_u32(global0.b.x, 14u)]))), select(vec4<i32>(0i, firstTrailingBit(u_input.a), reverseBits(_wgslsmith_mod_i32(-48799i, arg_0.b.x)), firstLeadingBit(arg_0.b.x)), vec4<i32>(~(-3988i), ~(2594i ^ global1.b.x), ~(~u_input.b.x), -_wgslsmith_mod_i32(-37578i, -1i)), global0.a), Struct_4(-_wgslsmith_div_i32(_wgslsmith_sub_i32(-1i, -2147483647i), func_2()), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f))))), !(!vec3<bool>(false, global0.a, global0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 536f, 1000f) - vec3<f32>(-303f, -1670f, 764f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-164f, 1181f, -1128f) - vec3<f32>(100f, 1939f, 517f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1376f, -133f, -114f))))))));
    let var_0 = ~vec4<u32>(~0u, arg_0.a, 11841u, 1u);
    global2 = array<u32, 14>();
    let var_1 = Struct_4(u_input.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -748f) - -1000f), !(!vec3<bool>(true, global0.a && global0.a, global0.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(1297f)), -244f, global0.a)))));
    let var_2 = 44290u;
    return true;
}

fn func_5(arg_0: bool, arg_1: f32, arg_2: Struct_2) -> Struct_4 {
    global0 = func_4(Struct_3(-1i, 5766i, Struct_1(~func_4(Struct_3(u_input.a, 16298i, Struct_1(56510u, vec2<i32>(1i, global1.b.x)), arg_1, Struct_2(false, global0.b)), vec4<i32>(global1.b.x, u_input.a, 1i, u_input.a), Struct_4(global1.b.x, 830f, vec3<bool>(arg_2.a, arg_2.a, arg_0), 860f), vec3<f32>(-207f, -558f, arg_1)).b.x, global1.b), arg_1, arg_2), vec4<i32>(18722i << (~arg_2.b.x % 32u), 1i, (_wgslsmith_add_i32(global1.b.x, global1.b.x) >> ((global0.b.x & global1.a) % 32u)) << (_wgslsmith_dot_vec2_u32(arg_2.b.zx, ~vec2<u32>(35477u, global1.a)) % 32u), u_input.a), Struct_4(_wgslsmith_div_i32(1i, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-602f)) - 688f), vec3<bool>(all(!vec2<bool>(true, arg_0)), all(select(vec4<bool>(global0.a, false, arg_0, false), vec4<bool>(true, false, false, true), arg_2.a)), true), -1348f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_div_f32(1000f, arg_1), -126f, -261f))))));
    let var_0 = Struct_4(select(-27291i, -u_input.a, arg_0) | global1.b.x, _wgslsmith_f_op_f32(sign(769f)), select(vec3<bool>(all(select(vec2<bool>(arg_2.a, arg_0), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0))), abs(8984u) <= arg_2.b.x, arg_2.b.x < global2[_wgslsmith_index_u32(12987u, 14u)]), select(select(vec3<bool>(true, true, true), select(vec3<bool>(arg_2.a, arg_0, true), vec3<bool>(arg_2.a, true, global0.a), arg_2.a), vec3<bool>(global0.a, true, true)), select(!vec3<bool>(true, arg_2.a, arg_2.a), select(vec3<bool>(arg_2.a, false, arg_0), vec3<bool>(arg_2.a, true, arg_2.a), vec3<bool>(arg_0, true, false)), !vec3<bool>(false, arg_0, false)), select(vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, true), false)), select(vec3<bool>(!arg_2.a, !global0.a, !arg_0), !(!vec3<bool>(false, global0.a, arg_0)), !select(vec3<bool>(global0.a, arg_2.a, arg_0), vec3<bool>(false, global0.a, true), false))), arg_1);
    global0 = arg_2;
    let var_1 = reverseBits(_wgslsmith_sub_vec3_u32(~arg_2.b, func_4(Struct_3(reverseBits(-1i), global1.b.x, Struct_1(46161u, global4[_wgslsmith_index_u32(global0.b.x, 12u)]), arg_1, func_4(Struct_3(u_input.a, u_input.b.x, Struct_1(arg_2.b.x, global4[_wgslsmith_index_u32(arg_2.b.x, 12u)]), -481f, arg_2), vec4<i32>(var_0.a, u_input.b.x, 1i, 0i), var_0, vec3<f32>(arg_1, var_0.b, 882f))), vec4<i32>(var_0.a, u_input.a, 0i, global1.b.x) >> ((vec4<u32>(42369u, global1.a, 31717u, 5201u) & vec4<u32>(21298u, 14155u, 14127u, global2[_wgslsmith_index_u32(0u, 14u)])) % vec4<u32>(32u)), Struct_4(-9775i, _wgslsmith_f_op_f32(-466f - var_0.b), !vec3<bool>(true, true, global0.a), 1267f), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-772f, -270f, 285f) - vec3<f32>(var_0.d, var_0.d, var_0.d))))).b));
    let var_2 = ~(vec4<i32>(-1i) * -vec4<i32>(0i, 33089i, u_input.a, 10983i)) ^ vec4<i32>(-_wgslsmith_sub_i32(u_input.a, ~(-1i)), _wgslsmith_dot_vec4_i32(~firstTrailingBit(vec4<i32>(global1.b.x, -6216i, 7587i, -28878i)), _wgslsmith_add_vec4_i32(abs(vec4<i32>(global1.b.x, 1i, 23003i, var_0.a)), _wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.x, -1i, u_input.b.x, global1.b.x), vec4<i32>(0i, var_0.a, var_0.a, var_0.a)))), var_0.a, _wgslsmith_mod_i32(929i, global1.b.x) ^ (-6496i & -u_input.b.x));
    return Struct_4(~((_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, -2839i), var_2.zw) << (global2[_wgslsmith_index_u32(4294967295u, 14u)] % 32u)) << (~global1.a % 32u)), 1127f, vec3<bool>(true, var_0.c.x, all(var_0.c.zy)), 794f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!global0.a | true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1377f))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(424f - -1461f))))), Struct_2(func_1(Struct_1(_wgslsmith_add_u32(59777u, 77473u), global1.b)), global0.b));
    global2 = array<u32, 14>();
    var var_1 = vec4<u32>(1u, global2[_wgslsmith_index_u32(abs(77161u), 14u)], ~func_4(Struct_3(_wgslsmith_sub_i32(-2147483647i, -1i), _wgslsmith_mod_i32(var_0.a, u_input.b.x), Struct_1(global2[_wgslsmith_index_u32(17036u, 14u)], vec2<i32>(-20628i, var_0.a)), _wgslsmith_f_op_f32(sign(var_0.b)), Struct_2(global0.a, global0.b)), vec4<i32>(func_2(), var_0.a, max(0i, global1.b.x), max(var_0.a, u_input.b.x)), Struct_4(u_input.b.x, _wgslsmith_f_op_f32(var_0.d * -1628f), select(vec3<bool>(false, false, global0.a), var_0.c, vec3<bool>(true, global0.a, var_0.c.x)), var_0.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-396f, var_0.b, 1240f))).b.x, ~max(~(~global2[_wgslsmith_index_u32(global0.b.x, 14u)]), global1.a));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-900f, var_0.d, -344f, var_0.d), vec4<f32>(var_0.d, -474f, var_0.d, 974f), vec4<bool>(true, false, false, var_0.c.x))))))));
    let var_3 = Struct_3(0i, 46328i, Struct_1(11001u, global1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d) * var_2.x) * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1316f - _wgslsmith_f_op_f32(290f * var_2.x)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(var_2.x, var_2.x))))))), Struct_2(var_0.c.x, vec3<u32>(4294967295u, var_1.x, ~_wgslsmith_dot_vec4_u32(vec4<u32>(21821u, global2[_wgslsmith_index_u32(0u, 14u)], 4294967295u, 45656u), vec4<u32>(41081u, var_1.x, 242u, global2[_wgslsmith_index_u32(var_1.x, 14u)])))));
    var var_4 = var_3.c.b;
    var var_5 = ~global2[_wgslsmith_index_u32(_wgslsmith_add_u32(~func_3().x, ~(_wgslsmith_dot_vec2_u32(vec2<u32>(47184u, 11612u), vec2<u32>(4294967295u, 7192u)) >> (38143u % 32u))), 14u)];
    var var_6 = _wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(19349u, 50922u), 4294967295u), var_1.xx) >= 0u;
    var var_7 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(8231u, ~firstTrailingBit(global1.a), 10392u, _wgslsmith_dot_vec3_u32(var_3.e.b, vec3<u32>(global0.b.x, 1u, var_3.c.a)) ^ 1u) | _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(var_1.x, global2[_wgslsmith_index_u32(global1.a, 14u)], global1.a, 1u)), ~(vec4<u32>(global2[_wgslsmith_index_u32(11166u, 14u)], global2[_wgslsmith_index_u32(0u, 14u)], 0u, 0u) ^ vec4<u32>(1u, var_1.x, var_1.x, 1u)), vec4<u32>(26201u, ~global0.b.x, reverseBits(global2[_wgslsmith_index_u32(0u, 14u)]), abs(global2[_wgslsmith_index_u32(var_1.x, 14u)]))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1f, -804f, _wgslsmith_f_op_f32(sign(-1188f)), _wgslsmith_f_op_f32(277f * -1169f)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, 814f, var_0.d, var_0.d) * vec4<f32>(-860f, var_0.d, 491f, var_0.d)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(170f, var_7.b, 461f, 1229f), vec4<f32>(-910f, 376f, 690f, var_7.b)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(trunc(var_7.d)), 809f, _wgslsmith_f_op_f32(round(var_7.b))))), ~48825u);
}

