struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec4<bool>,
    c: vec2<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 17>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: u32) -> u32 {
    var var_0 = vec2<u32>(max(~(~countOneBits(u_input.b)), arg_0), ~4294967295u);
    let var_1 = select(~_wgslsmith_mod_vec2_u32(min(~vec2<u32>(0u, arg_1), max(vec2<u32>(arg_2, 107091u), vec2<u32>(18206u, 0u))), ~vec2<u32>(60496u, var_0.x)), abs(vec2<u32>(35053u, arg_1 & 58422u) | ~min(vec2<u32>(var_0.x, arg_2), vec2<u32>(1u, 1u))), any(vec4<bool>(true, false, true, any(vec4<bool>(false, false, true, false)))) | (~(~2486u) == arg_1));
    global0 = array<f32, 17>();
    let var_2 = 24412u;
    var var_3 = Struct_1(~(select(reverseBits(vec3<u32>(var_2, 1112u, 49493u)), vec3<u32>(arg_2, u_input.b, var_2), true) & select(_wgslsmith_clamp_vec3_u32(vec3<u32>(10350u, 4294967295u, 8847u), vec3<u32>(u_input.b, 0u, arg_0), vec3<u32>(0u, arg_0, var_0.x)), reverseBits(vec3<u32>(arg_2, arg_0, var_2)), true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(1206f, global0[_wgslsmith_index_u32(var_2, 17u)], global0[_wgslsmith_index_u32(arg_2, 17u)], global0[_wgslsmith_index_u32(var_1.x, 17u)]), vec4<f32>(361f, global0[_wgslsmith_index_u32(4294967295u, 17u)], 575f, 129f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(901f, -1000f, global0[_wgslsmith_index_u32(var_2, 17u)], global0[_wgslsmith_index_u32(arg_1, 17u)])))), all(vec3<bool>(true, true, true)))));
    return 4294967295u;
}

fn func_2(arg_0: vec2<f32>, arg_1: i32) -> Struct_2 {
    let var_0 = vec4<u32>(~_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(12991u, u_input.b)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, u_input.b), firstLeadingBit(vec2<u32>(u_input.b, u_input.b)))), _wgslsmith_add_u32(func_3(u_input.b, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4080u, 4294967295u, u_input.b, 0u), vec4<u32>(u_input.b, 126u, 1u, u_input.b)), countOneBits(_wgslsmith_mod_u32(u_input.b, u_input.b))), _wgslsmith_add_u32(firstLeadingBit(54899u), ~(~u_input.b))), 0u & u_input.b, 29054u);
    let var_1 = ~(var_0.x | 52341u);
    var var_2 = Struct_1(var_0.wxy, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(arg_0.x, -1270f, 2729f, -558f), vec4<f32>(-1682f, arg_0.x, -1419f, -1000f)))) + vec4<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(var_1, 17u)]), 1331f, global0[_wgslsmith_index_u32(u_input.b, 17u)], _wgslsmith_f_op_f32(max(-1359f, global0[_wgslsmith_index_u32(var_0.x, 17u)])))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-843f, 844f, global0[_wgslsmith_index_u32(u_input.b, 17u)], 246f))) * vec4<f32>(arg_0.x, arg_0.x, -551f, global0[_wgslsmith_index_u32(35547u, 17u)])), vec4<f32>(1000f, -1333f, _wgslsmith_div_f32(arg_0.x, -993f), _wgslsmith_f_op_f32(-arg_0.x)))));
    let var_3 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(1939f, global0[_wgslsmith_index_u32(var_2.a.x, 17u)]), var_2.b.zy) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(arg_0.x, arg_0.x))))))));
    var var_4 = var_0.x;
    return Struct_2(all(vec3<bool>(true, true, true)), !vec4<bool>(any(vec3<bool>(false, false, true)), false, true, all(vec2<bool>(false, false))), var_3, Struct_1(var_0.yyw, vec4<f32>(1207f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-814f * var_3.x)), _wgslsmith_f_op_f32(371f - 348f), _wgslsmith_f_op_f32(f32(-1f) * -302f))));
}

fn func_4(arg_0: i32, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: Struct_1) -> vec4<i32> {
    var var_0 = u_input.a;
    var var_1 = i32(-1i) * -3941i;
    let var_2 = vec2<bool>(arg_2.b.x || ((_wgslsmith_f_op_f32(f32(-1f) * -1000f) <= _wgslsmith_f_op_f32(1000f * arg_3.b.x)) | (arg_2.a | all(vec4<bool>(true, arg_2.b.x, arg_2.b.x, arg_2.a)))), true);
    let var_3 = arg_2.d.a;
    var_1 = _wgslsmith_clamp_i32(max(u_input.c.x, u_input.a.x) ^ ~firstTrailingBit(-2147483647i), ~arg_0, i32(-1i) * -33047i);
    return select(vec4<i32>(reverseBits(_wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.c.x, 1i), -2147483647i & var_0.x)), -arg_0, var_0.x, var_0.x), vec4<i32>(max(arg_0 >> (1u % 32u), firstTrailingBit(u_input.c.x) ^ firstTrailingBit(-3285i)), abs(countOneBits(~(-1i))), -arg_0, 0i), -firstTrailingBit(i32(-1i) * -1371i) == arg_0);
}

fn func_5(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_2(true || select(all(select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), false)), true, 295f < _wgslsmith_f_op_f32(floor(817f))), !(!vec4<bool>(true, true, true, all(vec2<bool>(false, false)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(0u, 17u)], 571f))))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(183f, global0[_wgslsmith_index_u32(31018u, 17u)]))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global0[_wgslsmith_index_u32(54764u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)]), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], 1762f))))), Struct_1(select(firstTrailingBit(max(vec3<u32>(u_input.b, 13612u, 0u), vec3<u32>(17911u, u_input.b, u_input.b))), vec3<u32>(_wgslsmith_mult_u32(u_input.b, 1303u), func_2(vec2<f32>(global0[_wgslsmith_index_u32(0u, 17u)], -262f), arg_0.x).d.a.x, _wgslsmith_sub_u32(1u, u_input.b)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(142f, 799f, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(10472u, 17u)]), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b, 17u)] * 2759f))))));
    let var_1 = select(var_0.b.xw, !vec2<bool>(true, var_0.a), select(!vec2<bool>(true, !var_0.b.x), var_0.b.yy, var_0.b.zx));
    var var_2 = 130f;
    var var_3 = var_0.b.wyz;
    var_2 = 506f;
    return Struct_2(var_3.x, var_0.b, var_0.c, var_0.d);
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.b.x), _wgslsmith_f_op_f32(ceil(arg_1.b.x))), !func_5(countOneBits(vec4<i32>(u_input.c.x, -2147483647i, 40205i, u_input.a.x))).a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_f_op_f32(round(-1155f)));
    var var_1 = arg_1;
    var_1 = Struct_1(~_wgslsmith_mod_vec3_u32(~(arg_0.d.a << (var_1.a % vec3<u32>(32u))), ~vec3<u32>(83111u, arg_1.a.x, 4294967295u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(arg_1.b - _wgslsmith_f_op_vec4_f32(-func_2(arg_1.b.zy, 2147483647i).d.b)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, 898f, 424f, -1848f), vec4<f32>(-1589f, -573f, var_0.x, global0[_wgslsmith_index_u32(0u, 17u)]), false)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-555f, 827f, -1000f, global0[_wgslsmith_index_u32(u_input.b, 17u)]))))));
    let var_2 = arg_0;
    var var_3 = func_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1949f, -1396f)) + _wgslsmith_f_op_f32(arg_1.b.x + -541f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -939f)))), u_input.c.x).d.a.x;
    return func_2(_wgslsmith_f_op_vec2_f32(-arg_1.b.yw), _wgslsmith_dot_vec3_i32(vec3<i32>(abs(0i), 50108i, u_input.a.x), firstTrailingBit(u_input.a.wzy) ^ -vec3<i32>(u_input.c.x, u_input.a.x, u_input.a.x)) << ((abs(_wgslsmith_sub_u32(44113u, 33496u)) ^ var_2.d.a.x) % 32u));
}

fn func_1(arg_0: vec2<f32>) -> Struct_1 {
    global0 = array<f32, 17>();
    let var_0 = func_6(func_5(countOneBits(func_4(24201i, vec3<u32>(4294967295u, 4294967295u, u_input.b), func_2(arg_0, u_input.a.x), func_2(arg_0, u_input.c.x).d))), func_5(_wgslsmith_sub_vec4_i32(~min(u_input.a, u_input.a), u_input.a)).d);
    return Struct_1(~vec3<u32>(~52667u, _wgslsmith_dot_vec2_u32(func_5(vec4<i32>(-37582i, 2147483647i, u_input.a.x, u_input.c.x)).d.a.yy, firstLeadingBit(vec2<u32>(u_input.b, 47254u))), var_0.d.a.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-625f, var_0.d.b.x, 828f, -415f), _wgslsmith_f_op_vec4_f32(-var_0.d.b), vec4<bool>(false, var_0.b.x, var_0.b.x, var_0.b.x))))) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, 120f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-501f, 997f)) - _wgslsmith_f_op_f32(max(arg_0.x, 741f))), _wgslsmith_div_f32(func_2(var_0.d.b.yz, -2147483647i).d.b.x, 982f), -216f)));
}

fn func_7(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2) -> Struct_2 {
    var var_0 = func_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.wx - func_2(_wgslsmith_div_vec2_f32(arg_2.d.b.xz, arg_2.c), -13789i).d.b.yx) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(arg_1.b.zz * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d.b.x, -652f))) - _wgslsmith_f_op_vec2_f32(floor(func_5(u_input.a).c)))), firstLeadingBit(0i)).d;
    let var_1 = vec3<bool>(true, select(false, arg_2.b.x, arg_2.a) & !arg_2.a, arg_2.a);
    var var_2 = false;
    let var_3 = 0i;
    var var_4 = max(_wgslsmith_mult_i32(firstLeadingBit(-2147483647i), u_input.a.x >> ((~arg_1.a.x ^ 1u) % 32u)), 11686i);
    return Struct_2(select(func_5(u_input.a >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(arg_1.a.x, var_0.a.x, arg_1.a.x, arg_1.a.x), vec4<u32>(var_0.a.x, u_input.b, 4294967295u, u_input.b), vec4<u32>(69042u, 1u, 8164u, u_input.b)) % vec4<u32>(32u))).b.x, true, false), vec4<bool>(false, true, !arg_2.b.x, arg_2.b.x), _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c.x, -101f) - var_0.b.yy), Struct_1(~func_2(var_0.b.ww, 0i).d.a & vec3<u32>(func_3(67007u, u_input.b, arg_2.d.a.x), ~var_0.a.x, var_0.a.x), arg_2.d.b));
}

fn func_8(arg_0: Struct_2, arg_1: bool) -> Struct_1 {
    global0 = array<f32, 17>();
    let var_0 = -u_input.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(func_6(Struct_2(arg_1, vec4<bool>(true, arg_0.b.x, true, arg_1), vec2<f32>(global0[_wgslsmith_index_u32(u_input.b, 17u)], -316f), arg_0.d), arg_0.d).c.x, _wgslsmith_f_op_f32(arg_0.c.x - global0[_wgslsmith_index_u32(arg_0.d.a.x, 17u)]))))) * _wgslsmith_f_op_f32(f32(-1f) * -115f)));
    var_1 = -1292f;
    var var_2 = var_0.x;
    return arg_0.d;
}

fn func_9(arg_0: Struct_1, arg_1: u32, arg_2: vec4<i32>) -> vec2<u32> {
    let var_0 = func_5(firstLeadingBit(vec4<i32>(u_input.c.x, -18307i, _wgslsmith_dot_vec3_i32(u_input.a.zxy, u_input.a.xzz), -7193i)));
    let var_1 = Struct_1(vec3<u32>(func_6(var_0, func_2(vec2<f32>(-838f, arg_0.b.x), -45168i).d).d.a.x, func_5(-u_input.a).d.a.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 31529u, 4294967295u, 4294967295u), ~vec4<u32>(4294967295u, 0u, arg_0.a.x, arg_1))) | vec3<u32>(u_input.b, _wgslsmith_mod_u32(_wgslsmith_mult_u32(102560u, arg_0.a.x), ~4294967295u), select(var_0.d.a.x, 44672u, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-func_6(var_0, arg_0).d.b)));
    let var_2 = arg_0;
    var var_3 = -1242f;
    return ~var_2.a.yy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~func_9(func_8(func_7(-8994i, func_1(vec2<f32>(global0[_wgslsmith_index_u32(77366u, 17u)], 197f)), func_2(vec2<f32>(352f, global0[_wgslsmith_index_u32(0u, 17u)]), u_input.c.x)), func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1034f, global0[_wgslsmith_index_u32(1u, 17u)]) + vec2<f32>(1021f, 992f)), 2147483647i).b.x), min(~5596u, 7744u), ~_wgslsmith_add_vec4_i32(-u_input.a, -u_input.a));
    let var_1 = -u_input.c.x;
    let var_2 = vec4<i32>(-1i, ~firstLeadingBit(_wgslsmith_dot_vec4_i32(~u_input.a, abs(u_input.a))), firstLeadingBit(max(_wgslsmith_clamp_i32(u_input.c.x, func_4(1i, vec3<u32>(u_input.b, var_0.x, 0u), Struct_2(false, vec4<bool>(false, true, false, false), vec2<f32>(global0[_wgslsmith_index_u32(7488u, 17u)], -1772f), Struct_1(vec3<u32>(0u, 4294967295u, u_input.b), vec4<f32>(global0[_wgslsmith_index_u32(var_0.x, 17u)], 809f, 710f, -1691f))), Struct_1(vec3<u32>(0u, 4294967295u, u_input.b), vec4<f32>(global0[_wgslsmith_index_u32(83233u, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)], global0[_wgslsmith_index_u32(u_input.b, 17u)], 1000f))).x, -13946i ^ u_input.a.x), -34044i)), _wgslsmith_clamp_i32(var_1 & countOneBits(39775i), var_1, var_1));
    var_0 = ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(~0u, ~0u), func_7(_wgslsmith_mult_i32(1i, u_input.c.x), Struct_1(vec3<u32>(97790u, var_0.x, var_0.x), vec4<f32>(-325f, global0[_wgslsmith_index_u32(var_0.x, 17u)], global0[_wgslsmith_index_u32(49894u, 17u)], 1100f)), func_7(u_input.a.x, Struct_1(vec3<u32>(var_0.x, 0u, 0u), vec4<f32>(global0[_wgslsmith_index_u32(4294967295u, 17u)], -775f, 898f, global0[_wgslsmith_index_u32(22869u, 17u)])), Struct_2(false, vec4<bool>(true, false, true, false), vec2<f32>(126f, 132f), Struct_1(vec3<u32>(var_0.x, 4294967295u, u_input.b), vec4<f32>(-573f, global0[_wgslsmith_index_u32(var_0.x, 17u)], global0[_wgslsmith_index_u32(var_0.x, 17u)], 1292f))))).d.a.xx));
    let var_3 = abs(u_input.b);
    global0 = array<f32, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(u_input.a.xyy, var_2.yxw), _wgslsmith_sub_vec4_i32(var_2, vec4<i32>(u_input.a.x, var_1, max(abs(u_input.c.x), u_input.a.x << (var_3 % 32u)), 35392i)), reverseBits(select(_wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), vec2<i32>(var_1, 36043i), vec2<i32>(u_input.c.x, var_2.x)), vec2<i32>(var_2.x, u_input.c.x)), vec2<i32>(u_input.a.x, -var_1), vec2<bool>(true, true))), ~(-var_2));
}

