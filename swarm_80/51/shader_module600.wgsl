struct Struct_1 {
    a: u32,
    b: bool,
    c: bool,
    d: vec2<i32>,
    e: bool,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: i32,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
    c: u32,
}

struct Struct_5 {
    a: f32,
    b: vec4<bool>,
    c: f32,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: vec3<bool> = vec3<bool>(false, true, true);

var<private> global1: vec3<u32> = vec3<u32>(7069u, 58418u, 31061u);

var<private> global2: array<i32, 11>;

var<private> global3: array<Struct_4, 16>;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: vec2<f32>) -> u32 {
    var var_0 = vec3<f32>(267f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.x * -478f), _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -837f)))), arg_1.x);
    global0 = !select(vec3<bool>(false, global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(global1.x, global1.x), 11u)] <= 1i, global0.x), vec3<bool>(any(select(vec4<bool>(true, true, global0.x, false), vec4<bool>(global0.x, true, global0.x, global0.x), vec4<bool>(true, true, true, true))), global1.x < ~16290u, true), any(!vec4<bool>(global0.x, global0.x, true, false)) | !all(vec4<bool>(false, false, true, false)));
    let var_1 = Struct_1(~(~(~(~67995u))), false && !(!(global0.x & global0.x)), any(!select(vec3<bool>(global0.x, global0.x, true), vec3<bool>(global0.x, false, global0.x), global0.x)) | global0.x, vec2<i32>(-1i) * -vec2<i32>(~1i, ~u_input.a), global0.x);
    let var_2 = Struct_3(Struct_2(global0.x, min(-2147483647i, ~var_1.d.x), -13623i, var_1.a), global0.x);
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1611f) >= _wgslsmith_f_op_f32(-var_0.x);
    return 4294967295u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<i32>, arg_2: f32) -> Struct_5 {
    global1 = vec3<u32>(global1.x, _wgslsmith_sub_u32(global1.x, 0u), 5619u);
    var var_0 = Struct_2(arg_0.x, _wgslsmith_dot_vec4_i32(min(abs(vec4<i32>(u_input.a, -62173i, -2147483647i, -18952i)), arg_1), arg_1), 6403i, ~(func_3(1i, vec2<f32>(881f, arg_2)) << (_wgslsmith_div_u32(~2320u, 25439u) % 32u)));
    let var_1 = Struct_2(var_0.a, 2147483647i, -arg_1.x, (min(global1.x, var_0.d) >> (var_0.d % 32u)) >> (~(var_0.d ^ ~45952u) % 32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + -328f) - _wgslsmith_f_op_f32(arg_2 + arg_2))));
    global3 = array<Struct_4, 16>();
    return Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-595f * -493f)), vec4<bool>(true, any(arg_0), true, true), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -217f))));
}

fn func_4(arg_0: Struct_5, arg_1: Struct_1, arg_2: vec3<f32>) -> Struct_3 {
    let var_0 = abs(firstTrailingBit(~1i)) >= u_input.a;
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-156f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -633f))), 2763f, var_0)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * -792f) - arg_0.c)))));
    var var_2 = vec4<u32>(_wgslsmith_sub_u32(~(~global1.x), ~func_3(global2[_wgslsmith_index_u32(4294967295u, 11u)], arg_2.zz) >> (max(6511u, arg_1.a) % 32u)), 0u, (0u ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(101892u, 4294967295u), ~arg_1.a)) ^ _wgslsmith_mod_u32(global1.x ^ arg_1.a, ~global1.x), global1.x);
    global0 = arg_0.b.wyy;
    let var_3 = vec4<bool>(!(!any(!arg_0.b.xxy)), all(arg_0.b), !(_wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(536f + arg_2.x)) > _wgslsmith_f_op_f32(-402f * arg_0.c)), false);
    return Struct_3(Struct_2(global0.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, global2[_wgslsmith_index_u32(1u, 11u)]), arg_1.d), arg_1.d), arg_1.d.x, arg_1.a), true);
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_3) -> vec3<bool> {
    let var_0 = func_2(select(global0.xx, global0.yz, func_2(vec2<bool>(arg_1.a.a, true), ~select(vec4<i32>(u_input.a, u_input.a, global2[_wgslsmith_index_u32(4294967295u, 11u)], 1i), vec4<i32>(arg_1.a.b, -4247i, -59008i, -1i), vec4<bool>(global0.x, arg_1.b, false, global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -1368f)).b.zx), firstTrailingBit(vec4<i32>(30857i, ~(~2253i), u_input.a, -1i)), -2381f);
    let var_1 = firstTrailingBit(abs(1u));
    let var_2 = global0.zz;
    return vec3<bool>(global0.x, all(global0.xx), func_4(Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.x))), var_0.b, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1705f), -383f))), Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(3608u, 1u, 4294967295u), vec3<u32>(arg_1.a.d, 1u, global1.x) << (vec3<u32>(79126u, global1.x, var_1) % vec3<u32>(32u))), true, (true | var_2.x) && (var_0.b.x | arg_1.b), countOneBits(~vec2<i32>(0i, arg_1.a.c)), arg_1.a.a), arg_0).b);
}

fn func_1(arg_0: u32, arg_1: vec2<f32>, arg_2: u32, arg_3: vec4<bool>) -> vec3<u32> {
    global2 = array<i32, 11>();
    global0 = !select(vec3<bool>(true, any(!vec4<bool>(global0.x, arg_3.x, arg_3.x, global0.x)), !global0.x || select(arg_3.x, arg_3.x, global0.x)), func_5(vec3<f32>(_wgslsmith_div_f32(arg_1.x, arg_1.x), _wgslsmith_f_op_f32(f32(-1f) * -523f), arg_1.x), func_4(func_2(vec2<bool>(arg_3.x, global0.x), vec4<i32>(u_input.a, global2[_wgslsmith_index_u32(1u, 11u)], global2[_wgslsmith_index_u32(arg_2, 11u)], -1i), arg_1.x), Struct_1(99213u, false, true, vec2<i32>(global2[_wgslsmith_index_u32(arg_0, 11u)], 27297i), global0.x), _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.x, -302f, -268f), vec3<f32>(-641f, arg_1.x, arg_1.x)))), any(arg_3));
    var var_0 = arg_3.x;
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(reverseBits(72845u), ~52741u, 1u)), min(firstTrailingBit(vec3<u32>(4692u, 4294967295u, 1u) << (vec3<u32>(arg_0, global1.x, arg_0) % vec3<u32>(32u))) & max(~vec3<u32>(123825u, arg_0, global1.x), _wgslsmith_add_vec3_u32(vec3<u32>(17667u, global1.x, 1u), vec3<u32>(105367u, 0u, arg_2))), vec3<u32>(~(63248u >> (0u % 32u)), 34851u, firstLeadingBit(abs(1u))))), 11u)];
    global0 = arg_3.ywz;
    return select(~_wgslsmith_mult_vec3_u32(select(vec3<u32>(global1.x, global1.x, arg_2), ~vec3<u32>(4294967295u, arg_0, arg_0), arg_3.xyy), ~vec3<u32>(global1.x, 1356u, 4294967295u)), ~vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, arg_2, 7782u), vec3<u32>(36654u, arg_0, global1.x) << (vec3<u32>(1u, arg_0, 0u) % vec3<u32>(32u))), arg_0, arg_2), select(!vec3<bool>(!arg_3.x, func_5(vec3<f32>(1000f, -898f, arg_1.x), Struct_3(Struct_2(global0.x, 1656i, 46340i, arg_0), arg_3.x)).x, arg_1.x < arg_1.x), select(!arg_3.yxw, arg_3.zzx, !select(arg_3.zxz, vec3<bool>(true, true, true), global0.x)), (arg_1.x < _wgslsmith_f_op_f32(-arg_1.x)) & (all(vec2<bool>(false, arg_3.x)) | any(arg_3.xw))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<Struct_4, 16>();
    global1 = _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(countOneBits(54492u), 83237u, global1.x), reverseBits(vec3<u32>(1u, 40572u, global1.x))), vec3<u32>(~global1.x & abs(36031u), _wgslsmith_add_u32(~1u, global1.x), abs(1u))), reverseBits(select(select(vec3<u32>(global1.x, 0u, global1.x), vec3<u32>(global1.x, 71077u, global1.x), vec3<bool>(true, global0.x, global0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, global1.x, global1.x), vec3<u32>(7453u, 4294967295u, global1.x)), true)) ^ func_1(global1.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 820f))), global1.x, vec4<bool>(true, global0.x, false, any(vec3<bool>(false, false, global0.x)))));
    global0 = vec3<bool>(!global0.x, any(!(!vec3<bool>(global0.x, global0.x, global0.x))), global0.x);
    let var_0 = all(vec3<bool>(all(!(!vec4<bool>(global0.x, global0.x, true, global0.x))), false, !(!(u_input.a < 0i))));
    global3 = array<Struct_4, 16>();
    var var_1 = func_4(Struct_5(-1256f, select(select(!vec4<bool>(var_0, true, false, var_0), !vec4<bool>(true, global0.x, true, global0.x), vec4<bool>(var_0, var_0, var_0, true)), vec4<bool>(global1.x >= 1u, func_5(vec3<f32>(516f, -1695f, -479f), Struct_3(Struct_2(global0.x, global2[_wgslsmith_index_u32(23586u, 11u)], u_input.a, 1u), var_0)).x, !global0.x, global0.x), func_2(vec2<bool>(true, true), select(vec4<i32>(13471i, u_input.a, -77224i, global2[_wgslsmith_index_u32(4294967295u, 11u)]), vec4<i32>(global2[_wgslsmith_index_u32(global1.x, 11u)], 52892i, 35189i, 2147483647i), vec4<bool>(global0.x, true, global0.x, var_0)), _wgslsmith_f_op_f32(step(405f, 431f))).b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1392f + 919f))) - 100f)), Struct_1(func_1(global1.x, vec2<f32>(574f, -128f), global1.x, vec4<bool>(false, true, var_0, false)).x | ~(20398u & global1.x), (global1.x >> ((global1.x | global1.x) % 32u)) <= reverseBits(global1.x), var_0, ~abs(-vec2<i32>(-24327i, global2[_wgslsmith_index_u32(global1.x, 11u)])), (u_input.a == -global2[_wgslsmith_index_u32(0u, 11u)]) & false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1177f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1882f)))), _wgslsmith_f_op_f32(sign(-1579f)))));
    let var_2 = Struct_4(Struct_1(~_wgslsmith_add_u32(10110u, _wgslsmith_add_u32(1095u, var_1.a.d)), 48345u > _wgslsmith_sub_u32(89881u, var_1.a.d), !select(false, global0.x || global0.x, var_1.a.a != var_1.a.a), ~vec2<i32>(-global2[_wgslsmith_index_u32(var_1.a.d, 11u)], i32(-1i) * -25336i), any(vec3<bool>(all(vec3<bool>(var_0, global0.x, var_0)), var_1.a.a, true))), Struct_1(~(countOneBits(global1.x) ^ var_1.a.d), false, global0.x, ((vec2<i32>(16663i, var_1.a.b) | vec2<i32>(-4705i, var_1.a.b)) ^ ~vec2<i32>(global2[_wgslsmith_index_u32(global1.x, 11u)], -15779i)) & vec2<i32>(global2[_wgslsmith_index_u32(func_3(10217i, vec2<f32>(-783f, -867f)), 11u)], global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(50550u, 35283u), 11u)]), func_2(func_2(func_2(vec2<bool>(false, true), vec4<i32>(-2147483647i, 0i, 41384i, global2[_wgslsmith_index_u32(var_1.a.d, 11u)]), -664f).b.xy, vec4<i32>(var_1.a.b, -16420i, -1i, 2147483647i) << (vec4<u32>(global1.x, 147725u, 4294967295u, var_1.a.d) % vec4<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1043f)).b.xz, vec4<i32>(global2[_wgslsmith_index_u32(reverseBits(65783u), 11u)], ~u_input.a, ~u_input.a, 1054i), _wgslsmith_f_op_f32(-1258f * 1f)).b.x), ~1u);
    let x = u_input.a;
    s_output = StorageBuffer(1f);
}

