struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1089f, -1304f, 2594f);

var<private> global1: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-159f, 362f, -1573f, 275f), vec4<f32>(-894f, 927f, 1324f, 664f), vec4<f32>(424f, -154f, -1165f, 980f), vec4<f32>(144f, -996f, 322f, 523f), vec4<f32>(362f, 1344f, 283f, -553f), vec4<f32>(121f, 2060f, -1000f, -205f), vec4<f32>(-1645f, -583f, -380f, -929f), vec4<f32>(795f, 1510f, 484f, -865f), vec4<f32>(-892f, -868f, 734f, -968f), vec4<f32>(488f, 1665f, 1130f, -434f));

var<private> global2: Struct_2 = Struct_2(Struct_1(vec3<u32>(1u, 0u, 1u), 46512i, 4294967295u), vec3<f32>(-1415f, 1270f, 261f), false, 10498i, Struct_1(vec3<u32>(4294967295u, 0u, 11990u), -2626i, 1u));

var<private> global3: array<vec3<u32>, 13> = array<vec3<u32>, 13>(vec3<u32>(11461u, 95238u, 4294967295u), vec3<u32>(4294967295u, 42323u, 24291u), vec3<u32>(54896u, 0u, 6899u), vec3<u32>(10593u, 0u, 4294967295u), vec3<u32>(11364u, 99174u, 1u), vec3<u32>(1u, 0u, 56682u), vec3<u32>(780u, 4294967295u, 47203u), vec3<u32>(24879u, 52981u, 46747u), vec3<u32>(31966u, 0u, 14891u), vec3<u32>(15058u, 10183u, 1u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(84593u, 1u, 18635u), vec3<u32>(54174u, 86679u, 22490u));

var<private> global4: vec3<u32> = vec3<u32>(33780u, 1u, 34110u);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec4<bool>) -> u32 {
    let var_0 = select(arg_2.xx, !select(select(!vec2<bool>(arg_1, global2.c), arg_2.zw, true), !arg_2.yy, 1u <= arg_0.a.x), !(!(!global2.c)));
    let var_1 = vec2<u32>(global4.x, 14437u) << (select(global4.zy, global4.yz & vec2<u32>(~arg_0.c, 63359u), false) % vec2<u32>(32u));
    var var_2 = Struct_3(global2.a, Struct_1(_wgslsmith_sub_vec3_u32(firstTrailingBit(abs(vec3<u32>(1u, global2.e.c, 12641u))), ~_wgslsmith_div_vec3_u32(vec3<u32>(38944u, var_1.x, 12129u), u_input.a.yww)), _wgslsmith_dot_vec3_i32(firstLeadingBit(abs(vec3<i32>(arg_0.b, u_input.b.x, -10840i))), vec3<i32>(~(-88330i), -20067i, 25263i)), ~_wgslsmith_mod_u32(1u, ~arg_0.c)));
    let var_3 = global2.a;
    var var_4 = var_2.a;
    return 52643u;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_3(global2.a, Struct_1(reverseBits(vec3<u32>(global2.e.a.x >> (global4.x % 32u), ~1u, global4.x)), -(_wgslsmith_sub_i32(global2.a.b, 2147483647i) ^ ~global2.e.b), 0u));
    var_0 = Struct_3(Struct_1(vec3<u32>(0u, _wgslsmith_div_u32(firstLeadingBit(global4.x), _wgslsmith_mult_u32(global2.a.a.x, 4294967295u)), ~1u), _wgslsmith_mult_i32(global2.e.b, -6115i), _wgslsmith_div_u32(func_3(Struct_1(u_input.a.www, var_0.b.b, global4.x), true, vec4<bool>(global2.c, global2.c, global2.c, global2.c)), abs(global2.a.a.x))), Struct_1(global3[_wgslsmith_index_u32(min(_wgslsmith_mod_u32(~global2.e.c, ~13745u), _wgslsmith_add_u32(~u_input.a.x, select(global4.x, u_input.a.x, true))), 13u)], 0i >> ((max(1u, global2.a.c) | ~34467u) % 32u), 1u));
    var var_1 = abs(~vec4<u32>(_wgslsmith_dot_vec2_u32(global2.a.a.xx, vec2<u32>(55679u, global2.a.c) ^ global4.zy), _wgslsmith_add_u32(var_0.a.a.x, abs(var_0.b.a.x)), global4.x, _wgslsmith_clamp_u32(1u, 2620u, select(4294967295u, var_0.a.c, global2.c))));
    var var_2 = Struct_2(Struct_1(u_input.a.wzy, ~countOneBits(~(-1i)), 1u), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(global2.b)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-730f, -430f, 1003f) + vec3<f32>(global2.b.x, global2.b.x, global0.x)))))), !select(!any(vec4<bool>(true, false, true, global2.c)), true, true), _wgslsmith_sub_i32(countOneBits(-22004i) >> (1u % 32u), global2.e.b), Struct_1(global3[_wgslsmith_index_u32(select(firstLeadingBit(~4294967295u), _wgslsmith_dot_vec2_u32(var_0.a.a.xy, var_0.b.a.zx) | (global4.x >> (6769u % 32u)), global0.x != -141f), 13u)], 0i, _wgslsmith_dot_vec2_u32(vec2<u32>(abs(u_input.a.x), 19350u), ~(global2.a.a.xx | vec2<u32>(4294967295u, 0u)))));
    let var_3 = _wgslsmith_div_vec2_i32((u_input.b & u_input.b) >> (var_1.zw % vec2<u32>(32u)), abs(-vec2<i32>(u_input.b.x, global2.a.b) >> ((_wgslsmith_add_vec2_u32(var_2.a.a.xx, vec2<u32>(1u, u_input.a.x)) | ~var_0.b.a.xy) % vec2<u32>(32u))));
    return Struct_3(Struct_1(global2.a.a, u_input.b.x, 1u), Struct_1(u_input.a.yyx, -1i, 97908u));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: u32, arg_3: Struct_3) -> Struct_2 {
    let var_0 = func_2();
    let var_1 = func_2().b;
    global2 = Struct_2(Struct_1(max(~max(u_input.a.wxy, var_1.a), reverseBits(_wgslsmith_clamp_vec3_u32(var_0.a.a, vec3<u32>(global4.x, 1u, 1u), global2.e.a))), 1i, max(~firstTrailingBit(0u), 4294967295u << (_wgslsmith_div_u32(57148u, global2.e.a.x) % 32u))), global2.b, true, _wgslsmith_mod_i32(-arg_3.b.b, _wgslsmith_div_i32(7597i, -(~(-2147483647i)))), arg_1.b);
    return Struct_2(arg_3.a, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -130f), _wgslsmith_f_op_f32(ceil(-175f)), 610f)), global2.b)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1967f, global0.x)) * global0.x))) > 645f, _wgslsmith_dot_vec3_i32(abs(~_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, arg_1.a.b, var_1.b), vec3<i32>(arg_3.b.b, var_0.b.b, 1i))), _wgslsmith_div_vec3_i32(firstTrailingBit(vec3<i32>(-4390i, global2.a.b, -5558i)), firstTrailingBit(-vec3<i32>(global2.a.b, u_input.b.x, u_input.b.x)))), global2.e);
}

fn func_1(arg_0: f32, arg_1: vec4<u32>, arg_2: vec3<f32>) -> Struct_1 {
    global1 = array<vec4<f32>, 10>();
    global2 = func_4(global2.b.x, func_2(), 13261u, func_2());
    let var_0 = Struct_1(global3[_wgslsmith_index_u32(~(firstTrailingBit(_wgslsmith_mod_u32(u_input.a.x, u_input.a.x)) << (1u % 32u)), 13u)], i32(-1i) * -global2.d, select(select(~(53171u | u_input.a.x), 1u, 2106f != _wgslsmith_f_op_f32(-global0.x)), 18924u, all(vec3<bool>(!global2.c, global2.c, any(vec4<bool>(false, global2.c, true, global2.c))))));
    var var_1 = Struct_2(var_0, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(step(820f, arg_0)), func_2(), 1u, Struct_3(Struct_1(u_input.a.xzw, 1i, u_input.a.x), global2.a)).b + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2.b), global2.b)), _wgslsmith_f_op_vec3_f32(global2.b * vec3<f32>(276f, global2.b.x, arg_0)))), true, _wgslsmith_sub_i32(~_wgslsmith_mod_i32(select(u_input.b.x, 11328i, global2.c), -20365i), i32(-1i) * -(~global2.e.b)), var_0);
    var var_2 = select(select(!(!(!vec3<bool>(false, global2.c, var_1.c))), select(vec3<bool>(!var_1.c, select(global2.c, true, true), !var_1.c), select(select(vec3<bool>(global2.c, false, global2.c), vec3<bool>(var_1.c, global2.c, var_1.c), vec3<bool>(var_1.c, global2.c, var_1.c)), select(vec3<bool>(var_1.c, true, var_1.c), vec3<bool>(var_1.c, true, true), true), global2.c), !var_1.c), select(vec3<bool>(!global2.c, true, select(false, false, global2.c)), vec3<bool>(true, all(vec2<bool>(true, false)), !global2.c), vec3<bool>(false, !global2.c, all(vec3<bool>(false, var_1.c, var_1.c))))), !vec3<bool>(all(select(vec3<bool>(true, var_1.c, false), vec3<bool>(false, true, true), vec3<bool>(false, true, global2.c))), true, false), !vec3<bool>(false, global2.c, global2.c));
    return Struct_1(_wgslsmith_div_vec3_u32(~(~vec3<u32>(28752u, 17710u, 0u)), ~vec3<u32>(0u, global4.x, 17351u)), ~(-2147483647i), global2.e.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_2(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.x - global0.x))), _wgslsmith_sub_vec4_u32(u_input.a, abs(_wgslsmith_add_vec4_u32(u_input.a, vec4<u32>(0u, 1u, global2.a.c, 1u)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global2.b))) - vec3<f32>(_wgslsmith_f_op_f32(-1265f - global0.x), -912f, _wgslsmith_div_f32(1860f, global2.b.x)))), global2.b, all(vec4<bool>(true, global2.c, global2.c, true)), _wgslsmith_mult_i32(u_input.b.x << (firstLeadingBit(global4.x) % 32u), _wgslsmith_mod_i32(global2.a.b | -2147483647i, select(0i, u_input.b.x, global2.c))) >> (~(40614u | ~u_input.a.x) % 32u), func_2().a);
    var var_0 = vec4<i32>(-1i) * -(~(~(~vec4<i32>(0i, -40442i, 19496i, u_input.b.x))));
    var var_1 = func_2();
    global0 = _wgslsmith_f_op_vec3_f32(-global2.b);
    let var_2 = ~global4.xz;
    global2 = Struct_2(var_1.b, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x * 175f))), Struct_3(func_4(_wgslsmith_f_op_f32(min(-1105f, global0.x)), Struct_3(Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, 29921u), global2.e.b, global2.e.c), var_1.a), var_2.x, func_2()).e, func_4(_wgslsmith_f_op_f32(f32(-1f) * -1217f), Struct_3(global2.a, Struct_1(vec3<u32>(1u, 4294967295u, 7148u), var_0.x, global4.x)), reverseBits(var_2.x), Struct_3(global2.e, Struct_1(u_input.a.wwx, -922i, 15431u))).a), 4294967295u, func_2()).b, _wgslsmith_mult_u32(0u, var_1.b.c) > _wgslsmith_sub_u32(func_2().b.a.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 19312u), vec2<u32>(global4.x, var_1.b.c))), 2147483647i, var_1.a);
    let x = u_input.a;
    s_output = StorageBuffer(global2.b.x);
}

