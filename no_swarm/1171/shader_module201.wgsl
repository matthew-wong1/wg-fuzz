struct Struct_1 {
    a: bool,
    b: vec4<f32>,
    c: bool,
    d: f32,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 1>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) + _wgslsmith_f_op_f32(f32(-1f) * -278f))) >= _wgslsmith_f_op_f32(1892f + _wgslsmith_f_op_f32(ceil(1000f))), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1692f + 511f) * _wgslsmith_f_op_f32(trunc(-179f))), -986f)), _wgslsmith_f_op_f32(trunc(-130f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-883f, _wgslsmith_div_f32(-495f, -1166f))), 210f)), 797f), true, -1547f, _wgslsmith_div_i32((1i ^ reverseBits(u_input.a.x)) >> (~select(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], true) % 32u), -(firstTrailingBit(u_input.a.x) << (1u % 32u))));
    var var_1 = _wgslsmith_clamp_vec3_u32((abs(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(44124u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26274u, 1u)], 1u)], 0u, 9574u))) << ((~vec3<u32>(8955u, 0u, global0[_wgslsmith_index_u32(0u, 1u)]) ^ vec3<u32>(global0[_wgslsmith_index_u32(19022u, 1u)], 4889u, 4294967295u)) % vec3<u32>(32u))) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(0u, 2664u, 1u) & ~vec3<u32>(40603u, global0[_wgslsmith_index_u32(1u, 1u)], 0u), _wgslsmith_div_vec3_u32(vec3<u32>(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(90109u, 1u)], 20832u), select(vec3<u32>(64082u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(79977u, 1u)], 1u)], global0[_wgslsmith_index_u32(22124u, 1u)]), vec3<u32>(53813u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]), vec3<bool>(false, true, var_0.c))), firstLeadingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(905u, 1u)], 1u)]), vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 38336u, 1u)))), max(vec3<u32>(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 48726u, 2634u), ~vec3<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14600u, 1u)], 1u)], 45383u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)])) | ~vec3<u32>(global0[_wgslsmith_index_u32(0u, 1u)] << (global0[_wgslsmith_index_u32(4430u, 1u)] % 32u), ~27390u, ~23235u), vec3<u32>(3550u, global0[_wgslsmith_index_u32(select(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(60541u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)]), 1u)], 1u)], true), 1u)], _wgslsmith_div_u32(global0[_wgslsmith_index_u32(select(4294967295u, 10221u, var_0.a), 1u)], 20575u)) >> (vec3<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(48539u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(26696u, 1u)], 1u)]), vec2<u32>(global0[_wgslsmith_index_u32(55707u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(9571u, 1u)], 1u)], 1u)])), firstLeadingBit(48789u), ~(~1u)) % vec3<u32>(32u)));
    var var_2 = reverseBits(-countOneBits(select(vec3<i32>(var_0.e, 0i, 2147483647i) | vec3<i32>(var_0.e, var_0.e, u_input.a.x), u_input.a, select(vec3<bool>(true, false, false), vec3<bool>(false, var_0.c, false), vec3<bool>(var_0.c, var_0.a, var_0.a)))));
    var var_3 = Struct_1(var_0.a, var_0.b, var_0.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, 597f))) * -1012f), -_wgslsmith_sub_i32(-1i, 0i));
    let var_4 = !(!select(select(select(vec3<bool>(true, false, false), vec3<bool>(var_0.c, false, var_3.c), true), !vec3<bool>(var_3.c, var_3.c, var_3.a), !var_3.a), select(!vec3<bool>(true, var_3.c, var_3.a), select(vec3<bool>(var_3.a, true, false), vec3<bool>(true, var_0.c, true), vec3<bool>(false, var_3.a, true)), vec3<bool>(true, true, true)), true));
    return var_0.e;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    global0 = array<u32, 1>();
    var var_0 = all(!vec4<bool>(arg_1.a, true, all(select(vec2<bool>(arg_1.a, true), vec2<bool>(true, true), vec2<bool>(arg_1.c, true))), any(vec2<bool>(false, false)) != (arg_1.e >= -47600i)));
    let var_1 = Struct_1(arg_1.c, _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1567f, 2110f, -232f, arg_1.d)))))), true, _wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_dot_vec3_i32(u_input.a, u_input.a));
    var var_2 = -60601i;
    var var_3 = var_1;
    return select(select(!(!select(vec3<bool>(false, arg_1.a, false), vec3<bool>(arg_1.c, arg_1.a, false), vec3<bool>(arg_1.a, true, false))), vec3<bool>(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_1.e, 39859i, 34926i), vec4<i32>(2147483647i, 0i, arg_1.e, arg_0)) <= abs(arg_1.e), false, var_1.c), !(!vec3<bool>(var_3.c, true, var_3.a))), !select(select(!vec3<bool>(arg_1.a, var_1.c, var_3.a), !vec3<bool>(true, true, var_3.c), select(vec3<bool>(true, var_3.a, var_3.c), vec3<bool>(arg_1.c, false, var_3.a), vec3<bool>(arg_1.a, true, var_1.c))), !vec3<bool>(var_1.c, var_1.c, var_1.a), any(vec4<bool>(var_3.a, true, var_3.a, true))), true);
}

fn func_2() -> vec4<u32> {
    var var_0 = func_4(~(~(~(~7230i))), Struct_1(true, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-980f, -1000f, 1206f, -1512f))))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -854f)), _wgslsmith_clamp_i32(-2147483647i, func_3(), -1i)));
    var_0 = !vec3<bool>(true, var_0.x, any(!(!var_0.zx)));
    var_0 = vec3<bool>(true, all(func_4(firstTrailingBit(u_input.a.x), Struct_1(any(var_0.zx), vec4<f32>(750f, 577f, 379f, -353f), var_0.x, 1000f, -u_input.a.x))), var_0.x);
    return vec4<u32>(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~8316u, 1u)], 1u)] << (global0[_wgslsmith_index_u32(1u, 1u)] % 32u)), 1u, ~global0[_wgslsmith_index_u32(4294967295u, 1u)], firstLeadingBit(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)]))) & vec4<u32>(4294967295u, abs(global0[_wgslsmith_index_u32(~1u, 1u)]), 4294967295u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(~1873u, 1u)], 1u)]);
}

fn func_5(arg_0: i32, arg_1: i32, arg_2: vec4<u32>) -> Struct_1 {
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    global0 = array<u32, 1>();
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-281f, -676f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-954f, 1580f) + vec2<f32>(1240f, -154f))))))));
    let var_1 = Struct_1(!all(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true)))), vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.x - var_0.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -988f) - _wgslsmith_f_op_f32(var_0.x + 1000f)), false)), _wgslsmith_f_op_f32(round(-832f)), 416f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(max(-600f, _wgslsmith_f_op_f32(var_0.x * var_0.x))))), select(all(select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true))) || true, true, false), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(-2966f)), _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(var_0.x * -913f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(667f + var_0.x)))))), 1i);
    return var_1;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec2<i32>) -> Struct_1 {
    global0 = array<u32, 1>();
    var var_0 = func_5(_wgslsmith_mod_i32(~(-12212i), _wgslsmith_mult_i32(2147483647i, firstLeadingBit(arg_2.x))), -2147483647i, _wgslsmith_clamp_vec4_u32(select(vec4<u32>(39901u, 4294967295u, global0[_wgslsmith_index_u32(36882u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)]), ~vec4<u32>(global0[_wgslsmith_index_u32(1105u, 1u)], 90931u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(0u, 1u)]), false) | ~(~vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(0u, 1u)], 57602u, 2572u)), min(countOneBits(vec4<u32>(18129u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(5581u, 1u)], 1u)], 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15008u, 1u)], 1u)], 0u)), func_2()), func_2()));
    let var_1 = vec3<bool>(var_0.a, func_5(-(~countOneBits(-30119i)), -9689i, (~vec4<u32>(0u, 0u, 1u, global0[_wgslsmith_index_u32(4294967295u, 1u)]) & _wgslsmith_mod_vec4_u32(vec4<u32>(13671u, global0[_wgslsmith_index_u32(0u, 1u)], global0[_wgslsmith_index_u32(5370u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31823u, 1u)], 1u)], 1u)]), vec4<u32>(0u, 9218u, 0u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(576u, 1u)], 1u)], 1u)]))) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 64798u, global0[_wgslsmith_index_u32(20806u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(6257u, 1u)], 1u)], 1u)], 1u)]), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(15824u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 68304u, 8993u))).a, any(select(select(vec4<bool>(var_0.a, true, false, false), !vec4<bool>(true, arg_0.c, var_0.a, arg_0.c), select(vec4<bool>(false, var_0.a, var_0.c, var_0.c), vec4<bool>(var_0.a, arg_0.a, arg_0.c, arg_0.a), vec4<bool>(false, var_0.a, var_0.a, arg_0.a))), select(!vec4<bool>(false, var_0.c, true, true), !vec4<bool>(true, arg_0.c, arg_0.a, var_0.c), false), vec4<bool>(true, false, arg_0.a, var_0.c))));
    let var_2 = arg_0;
    var var_3 = -vec4<i32>(-13029i, u_input.a.x, -((arg_1 << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)] % 32u)) ^ u_input.a.x), -1i);
    return Struct_1(var_0.c, _wgslsmith_f_op_vec4_f32(trunc(var_0.b)), !any(select(select(vec4<bool>(var_0.a, arg_0.a, true, var_2.a), vec4<bool>(false, false, false, true), vec4<bool>(arg_0.c, true, arg_0.a, var_2.c)), !vec4<bool>(true, var_1.x, false, var_0.a), vec4<bool>(arg_0.a, true, true, true))), arg_0.b.x, var_0.e);
}

fn func_6(arg_0: bool, arg_1: Struct_1) -> vec4<bool> {
    let var_0 = min(vec4<u32>(11926u, ~_wgslsmith_div_u32(_wgslsmith_div_u32(52759u, global0[_wgslsmith_index_u32(78886u, 1u)]), global0[_wgslsmith_index_u32(~51991u, 1u)]), 4294967295u, abs(~(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 1u)], 1u)] & 70826u))), vec4<u32>(countOneBits(~31549u) << (global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(73472u, 1u)], 1u)], 1u)], 1u)], 0u), 1u)], 1u)] % 32u), 1u, ~3803u, ~(~(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)]))));
    var var_1 = vec4<bool>(arg_0, false, !all(vec2<bool>(func_4(2645i, arg_1).x, true)), arg_0);
    let var_2 = arg_1.b.wwx;
    return select(vec4<bool>(true, 783f <= var_2.x, arg_0, !any(vec3<bool>(var_1.x, arg_1.a, arg_1.c)) == arg_1.a), select(!select(select(vec4<bool>(true, true, true, false), vec4<bool>(var_1.x, arg_1.a, false, false), false), vec4<bool>(true, true, arg_1.a, false), arg_1.a), select(!select(vec4<bool>(var_1.x, arg_0, true, arg_0), vec4<bool>(arg_0, arg_0, true, true), var_1.x), select(vec4<bool>(arg_1.c, var_1.x, true, false), select(vec4<bool>(arg_1.a, false, arg_1.a, false), vec4<bool>(arg_1.c, false, arg_1.a, true), vec4<bool>(var_1.x, true, var_1.x, false)), true), arg_1.e <= -48303i), !select(!vec4<bool>(arg_1.a, arg_0, arg_0, var_1.x), vec4<bool>(false, arg_1.a, arg_0, arg_0), arg_0 | arg_0)), all(vec4<bool>(func_1(arg_1, abs(1i), vec2<i32>(1i, arg_1.e)).a, true, true, false)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!select(select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), false), !vec4<bool>(true, true, any(vec2<bool>(false, true)) == true, false), select(vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), true), vec4<bool>(true, true, true, false), true), select(func_6(any(vec2<bool>(false, true)), func_1(Struct_1(false, vec4<f32>(-637f, 1294f, -1180f, -2774f), false, -2070f, 20860i), u_input.a.x, vec2<i32>(2147483647i, u_input.a.x))), !select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, false)), !func_6(true, Struct_1(true, vec4<f32>(-706f, 926f, -921f, 820f), false, -514f, u_input.a.x)))));
    var var_1 = func_1(Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(483f, 342f, -3005f, -288f)))), true, -1242f, ~u_input.a.x), u_input.a.x | 0i, -abs(u_input.a.zx) | ~vec2<i32>(-1i, 6670i | u_input.a.x));
    var var_2 = 171f;
    var var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-var_1.b)));
    var_1 = Struct_1(global0[_wgslsmith_index_u32(0u, 1u)] != ~1u, _wgslsmith_f_op_vec4_f32(sign(var_1.b)), true, _wgslsmith_f_op_f32(var_1.d + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.d))))), _wgslsmith_mod_i32(u_input.a.x, 26160i) & _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(u_input.a, -vec3<i32>(2147483647i, -46913i, var_1.e)), u_input.a));
    let var_4 = var_0.xx;
    var_2 = var_3.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(~1u, ~countOneBits(~global0[_wgslsmith_index_u32(1880u, 1u)])), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.d * var_1.d)) + _wgslsmith_f_op_f32(195f - _wgslsmith_f_op_f32(-var_3.x))))), -3137i, select(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(4294967295u, 1u)], 18145u), vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u, 41153u, global0[_wgslsmith_index_u32(0u, 1u)]) ^ vec4<u32>(57366u, 18623u, global0[_wgslsmith_index_u32(30744u, 1u)], global0[_wgslsmith_index_u32(27992u, 1u)]), firstTrailingBit(vec4<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(47542u, 1u)], 1u)], 1u, global0[_wgslsmith_index_u32(32268u, 1u)], 29319u)) | vec4<u32>(1u, 64255u, global0[_wgslsmith_index_u32(1u, 1u)], global0[_wgslsmith_index_u32(2179u, 1u)])), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(32736u, 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], global0[_wgslsmith_index_u32(1u, 1u)], 16599u), vec4<u32>(29399u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(35709u, 1u)], 1u)], 1u)], global0[_wgslsmith_index_u32(1u, 1u)], 54900u)) >> (_wgslsmith_add_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4777u, 1u)], 1u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]) % 32u), _wgslsmith_div_u32(select(4294967295u, global0[_wgslsmith_index_u32(19150u, 1u)], false), ~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)]), global0[_wgslsmith_index_u32(4294967295u, 1u)], _wgslsmith_dot_vec4_u32(~vec4<u32>(global0[_wgslsmith_index_u32(0u, 1u)], 93921u, 2223u, 87360u), vec4<u32>(9278u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], 0u, 15812u))), !(!vec4<bool>(false, var_1.a, true, true))));
}

