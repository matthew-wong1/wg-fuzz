struct Struct_1 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: i32,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 24>;

var<private> global1: vec4<f32>;

var<private> global2: array<u32, 13>;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<bool> {
    global2 = array<u32, 13>();
    global0 = array<u32, 24>();
    global1 = vec4<f32>(_wgslsmith_div_f32(-682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1.x, global1.x)), 142f)))), _wgslsmith_f_op_f32(-global1.x), global1.x, global1.x);
    let var_0 = arg_0;
    var var_1 = vec4<u32>(39310u, global2[_wgslsmith_index_u32(max(24404u, global0[_wgslsmith_index_u32(~global2[_wgslsmith_index_u32(63092u, 13u)], 24u)]), 13u)], _wgslsmith_div_u32(~_wgslsmith_div_u32(max(53311u, global2[_wgslsmith_index_u32(0u, 13u)]), global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 24u)], 24u)]), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(~9912u, firstTrailingBit(global2[_wgslsmith_index_u32(4294967295u, 13u)])), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~(~9924u), 24u)], 13u)], 13u)]), 24u)]), global0[_wgslsmith_index_u32(firstTrailingBit(_wgslsmith_mult_u32(abs(global0[_wgslsmith_index_u32(0u, 24u)]), min(global2[_wgslsmith_index_u32(0u, 13u)], 12829u)) & _wgslsmith_mod_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 13u)], 24u)], global2[_wgslsmith_index_u32(0u, 13u)]), _wgslsmith_add_u32(0u, 54095u))), 24u)]);
    return vec3<bool>(true, 1u != _wgslsmith_mod_u32(_wgslsmith_div_u32(var_1.x, global2[_wgslsmith_index_u32(~0u, 13u)]), ~1u), any(select(!arg_0.a.zwx, var_0.a.yxx, arg_0.a.zzz)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<bool>) -> vec4<bool> {
    var var_0 = select(!arg_1.a.xyy, select(func_3(Struct_1(select(arg_1.a, vec4<bool>(arg_0.a.x, true, false, true), arg_0.a.x), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0.c, u_input.a.x), u_input.a.yw), -arg_0.c), firstTrailingBit(-vec3<i32>(u_input.a.x, u_input.a.x, 0i))), select(arg_0.a.wxw, !arg_1.a.yxz, arg_0.a.xxw), select(func_3(arg_0, vec3<i32>(u_input.a.x, arg_1.c, -1i)), !vec3<bool>(false, false, arg_1.a.x), true)), vec3<bool>(!(arg_1.a.x != arg_2.x), arg_1.c < -(~(-2147483647i)), 4294967295u > global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(10525u, 24867u, 1u), 24u)]));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(460f, global1.x, 1628f, -104f), vec4<f32>(811f, 709f, -568f, -600f), arg_0.a)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1266f, 1338f, 246f, 110f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(971f, global1.x, global1.x, global1.x))), vec4<f32>(global1.x, 759f, 136f, global1.x), vec4<bool>(var_0.x, false, false, true)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -554f) != _wgslsmith_f_op_f32(global1.x * 275f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.zw - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(1457f, global1.x))) - _wgslsmith_f_op_vec2_f32(global1.yx * global1.yz)))), all(vec4<bool>(max(12716u, 44252u) >= (0u & global0[_wgslsmith_index_u32(53925u, 24u)]), arg_2.x, true, func_3(Struct_1(arg_1.a, u_input.a.wy, 11739i), ~u_input.a.ywy).x)), _wgslsmith_clamp_vec3_i32(reverseBits(abs(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, arg_1.b.x, arg_0.b.x), vec3<i32>(-1i, 1i, -43948i)))), vec3<i32>(_wgslsmith_add_i32(arg_0.c, firstLeadingBit(u_input.a.x)), ~(i32(-1i) * -1i), firstTrailingBit(arg_0.c)), u_input.a.wzx));
    var var_2 = firstLeadingBit(_wgslsmith_sub_i32(_wgslsmith_add_i32(arg_0.c, abs(abs(arg_1.c))), firstTrailingBit(_wgslsmith_mod_i32(u_input.a.x, select(2147483647i, -28278i, true)))));
    return !select(!arg_0.a, select(arg_1.a, vec4<bool>(true | arg_1.a.x, true, select(arg_2.x, true, false), var_1.d.x != 23430i), vec4<bool>(!arg_1.a.x, any(vec2<bool>(var_1.c, true)), true, func_3(arg_0, var_1.d).x)), true);
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1, arg_2: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_2(func_2(Struct_1(arg_2, abs(-arg_1.b), abs(reverseBits(arg_1.b.x))), Struct_1(select(!vec4<bool>(false, arg_1.a.x, arg_2.x, true), !vec4<bool>(false, false, false, arg_2.x), !vec4<bool>(arg_1.a.x, arg_1.a.x, true, true)), ~arg_0.ww, u_input.a.x), arg_2.zyw).x, vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(428f, global1.x)), _wgslsmith_f_op_f32(global1.x * -1034f), arg_1.a.x)), 1f), true, vec3<i32>(min(_wgslsmith_clamp_i32(arg_1.c, -13799i, u_input.a.x), ~arg_1.c), -2147483647i, _wgslsmith_sub_i32(arg_0.x, arg_0.x)) & vec3<i32>(arg_0.x, _wgslsmith_dot_vec4_i32(arg_0, countOneBits(arg_0)), -select(arg_1.b.x, 13255i, arg_2.x)));
    let var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)));
    let var_2 = abs(vec4<u32>(1u, 23248u, 4294967295u, 3662u >> (max(~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)], 13u)], 24u)], 18020u) % 32u)));
    let var_3 = var_0;
    var var_4 = _wgslsmith_clamp_vec3_u32(vec3<u32>(~global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(1u, 13u)], 24u)] ^ var_2.x, var_2.x, global0[_wgslsmith_index_u32(countOneBits(var_2.x), 24u)]), var_2.wwy, abs(select(countOneBits(var_2.yyz), var_2.wxx, true))) >> (var_2.xzw % vec3<u32>(32u));
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = func_4(u_input.a, Struct_1(func_2(Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(-1i, u_input.a.x) >> (vec2<u32>(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], 24u)], 13u)], 0u) % vec2<u32>(32u)), -6278i), Struct_1(vec4<bool>(true, true, true, true), vec2<i32>(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(50226i, -14850i)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), _wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.a.x)), _wgslsmith_clamp_vec2_i32(u_input.a.xx, vec2<i32>(u_input.a.x, u_input.a.x), u_input.a.wx)) ^ u_input.a.wz, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, ~2147483647i, u_input.a.x), u_input.a.xww)), select(func_2(Struct_1(vec4<bool>(true, true, true, true), u_input.a.wx, abs(-27072i)), Struct_1(vec4<bool>(false, false, false, true), ~vec2<i32>(-1i, 0i), -2147483647i), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true)), vec4<bool>(true, false, true, true), !select(vec4<bool>(true, true, true, true), func_2(Struct_1(vec4<bool>(true, true, false, true), u_input.a.yx, 0i), Struct_1(vec4<bool>(true, true, false, true), u_input.a.xy, u_input.a.x), vec3<bool>(false, false, true)), true)));
    var var_1 = Struct_2(var_0.a.x, _wgslsmith_f_op_vec2_f32(-global1.zx), any(vec2<bool>(true, var_0.a.x)), ~select(u_input.a.wyx, u_input.a.xzz, true) << (reverseBits(max(countOneBits(vec3<u32>(1u, 1u, global2[_wgslsmith_index_u32(57204u, 13u)])), max(vec3<u32>(22964u, global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)], 24u)], 24u)], 13u)], global0[_wgslsmith_index_u32(39431u, 24u)]), vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3650u, 13u)], 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 39189u)))) % vec3<u32>(32u)));
    let var_2 = 0i;
    var_1 = Struct_2(false || !(var_1.d.x <= var_1.d.x), _wgslsmith_f_op_vec2_f32(ceil(var_1.b)), var_1.a, _wgslsmith_add_vec3_i32(u_input.a.xzz, max(vec3<i32>(0i, var_0.c, 31419i) ^ var_1.d, -vec3<i32>(-1i, var_1.d.x, var_2)) & -vec3<i32>(var_1.d.x, 41351i, -14625i)));
    let var_3 = func_4(vec4<i32>(-2147483647i, -_wgslsmith_sub_i32(1i, var_2), -_wgslsmith_add_i32(u_input.a.x, var_0.c), i32(-1i) * -1i), var_0, var_0.a);
    return Struct_1(vec4<bool>(var_3.a.x, !(false || (global1.x > global1.x)), any(func_3(var_0, vec3<i32>(45835i, 2147483647i, var_3.b.x)).yy), false), vec2<i32>(reverseBits(firstTrailingBit(var_0.b.x)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(2147483647i, 65817i), reverseBits(1i), -16807i)), _wgslsmith_dot_vec4_i32(vec4<i32>(select(u_input.a.x, 1i, var_1.a) & ~u_input.a.x, var_1.d.x, func_4(u_input.a, Struct_1(vec4<bool>(var_1.a, var_3.a.x, true, false), var_3.b, var_1.d.x), !var_3.a).c, u_input.a.x), vec4<i32>(_wgslsmith_mult_i32(var_1.d.x | var_1.d.x, -70958i ^ var_3.c), countOneBits(var_2), -2147483647i, var_1.d.x)));
}

fn func_5(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = Struct_2(arg_2.a.x, vec2<f32>(global1.x, global1.x), true, u_input.a.xzw);
    global2 = array<u32, 13>();
    global2 = array<u32, 13>();
    let var_1 = func_1();
    let var_2 = _wgslsmith_dot_vec2_u32(~(~firstLeadingBit(~vec2<u32>(global0[_wgslsmith_index_u32(41556u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)]))), _wgslsmith_mult_vec2_u32(max(~vec2<u32>(global2[_wgslsmith_index_u32(0u, 13u)], 0u), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 24u)], 24u)], global0[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 13u)], 13u)], 24u)])), ~(~vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47493u, 24u)], 24u)], 24u)], 0u))) & vec2<u32>(1u, 1u));
    return _wgslsmith_f_op_f32(floor(global1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global1.x))) - _wgslsmith_f_op_f32(func_5(_wgslsmith_mod_i32(_wgslsmith_add_i32(~u_input.a.x, ~u_input.a.x), 19423i), Struct_1(vec4<bool>(false, -1000f <= global1.x, all(vec4<bool>(false, false, true, false)), true), -u_input.a.wy, _wgslsmith_div_i32(~17454i, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x))), func_1())));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, 1000f, 783f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.x, -1193f, global1.x, 160f) * vec4<f32>(global1.x, global1.x, -888f, global1.x)) + vec4<f32>(-1815f, global1.x, 1000f, 888f))), vec4<f32>(_wgslsmith_f_op_f32(trunc(global1.x)), -350f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x * global1.x), 804f)), _wgslsmith_f_op_f32(step(-738f, _wgslsmith_f_op_f32(f32(-1f) * -700f))))) + vec4<f32>(global1.x, _wgslsmith_f_op_f32(global1.x * 644f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-567f * _wgslsmith_f_op_f32(exp2(global1.x))), 1000f), global1.x));
    var_1 = 824f;
    var var_3 = false && var_0;
    global1 = vec4<f32>(var_2.x, -378f, var_2.x, 2499f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, -1i, u_input.a.x) | vec3<i32>(4476i, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x >> (4294967295u % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -3996i, u_input.a.x), vec4<i32>(u_input.a.x, -31111i, -1i, -7090i)), _wgslsmith_dot_vec3_i32(u_input.a.wxz, u_input.a.ywy))) | u_input.a.yyz, u_input.a << (vec4<u32>(1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4355u, 13u)], 13u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, 4294967295u), 13u)] >> (~4294967295u % 32u), 13u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]) % vec4<u32>(32u)), vec3<u32>(~(~_wgslsmith_clamp_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(38700u, 24u)], 24u)], global2[_wgslsmith_index_u32(20623u, 13u)], 4294967295u)), global2[_wgslsmith_index_u32(115u, 13u)], 1u), max(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(320u, 24u)], 13u)], ~_wgslsmith_dot_vec2_u32(vec2<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(39056u, 24u)], 24u)], 13u)], 13u)], global0[_wgslsmith_index_u32(4294967295u, 24u)]), ~vec2<u32>(14330u, 23069u))), _wgslsmith_clamp_vec3_i32(-vec3<i32>(u_input.a.x >> (1u % 32u), u_input.a.x, ~u_input.a.x), vec3<i32>(-_wgslsmith_mod_i32(2147483647i, 2147483647i), u_input.a.x, -17495i), u_input.a.wyw));
}

