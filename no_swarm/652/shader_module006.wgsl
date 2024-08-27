struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec4<bool>,
    d: i32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<f32>,
    c: vec3<bool>,
    d: f32,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<f32>;

var<private> global2: array<i32, 5> = array<i32, 5>(2147483647i, -1i, -41553i, -1i, 13852i);

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> vec2<bool> {
    global1 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global1.x, _wgslsmith_f_op_f32(1289f + -1473f), _wgslsmith_f_op_f32(f32(-1f) * -2760f), 1539f), _wgslsmith_f_op_vec4_f32(-global0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1300f, -1175f, 1127f, 220f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2058f, global1.x, -1105f, global0.a.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(659f, 1000f, 1163f, global0.e.x)) * vec4<f32>(global0.a.x, 1087f, 1201f, 335f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.x, 2423f, global1.x, 1099f))), _wgslsmith_f_op_vec4_f32(round(global0.a)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, 1734f, -327f, global1.x)) - global0.a)), vec4<bool>(all(global0.c) && false, true && !global0.b.x, true, all(!global0.b)))));
    global0 = Struct_1(vec4<f32>(global1.x, _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-426f)))) * _wgslsmith_f_op_f32(-global0.e.x)), _wgslsmith_f_op_f32(min(-765f, global1.x))), !global0.b, select(global0.c, vec4<bool>(!(global2[_wgslsmith_index_u32(0u, 5u)] != 19645i), !any(global0.b), _wgslsmith_mod_i32(2147483647i, global2[_wgslsmith_index_u32(arg_0, 5u)]) > u_input.b, !global0.c.x & true), false), -48015i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.zy) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -945f)))));
    var var_0 = Struct_2(~vec3<u32>(_wgslsmith_clamp_u32(reverseBits(u_input.a.x), _wgslsmith_div_u32(2753u, arg_0), u_input.a.x), ~(~1u), ~u_input.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f + 744f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1838f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.x)) * _wgslsmith_f_op_f32(global1.x + -1263f)), global0.b.x))));
    let var_1 = Struct_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(var_0.b)), 728f) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-524f, -1085f, false)), _wgslsmith_f_op_f32(-var_0.b), global0.a.x == global0.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-var_0.b)))))), ~(~1u), max(_wgslsmith_clamp_vec4_i32(vec4<i32>(47232i, u_input.b, ~(-9301i), ~(-59996i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-43757i, -1i, 14405i, -2147483647i) & vec4<i32>(u_input.b, global0.d, global2[_wgslsmith_index_u32(var_0.a.x, 5u)], 7052i), vec4<i32>(u_input.b, 13360i, -6360i, global0.d)), vec4<i32>(~global2[_wgslsmith_index_u32(u_input.a.x, 5u)], countOneBits(global2[_wgslsmith_index_u32(4294967295u, 5u)]), u_input.b ^ -5304i, global0.d)), abs(firstLeadingBit(vec4<i32>(2147483647i, 43099i, global2[_wgslsmith_index_u32(var_0.a.x, 5u)], 30660i)) << (~vec4<u32>(4294967295u, 14722u, var_0.a.x, arg_0) % vec4<u32>(32u)))));
    var_0 = Struct_2(vec3<u32>(1u, var_0.a.x, 1u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -413f)))));
    return !select(global0.c.xw, select(global0.c.yy, vec2<bool>(true, true), all(global0.c)), vec2<bool>(_wgslsmith_f_op_f32(trunc(global1.x)) != global1.x, !(!global0.c.x)));
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: i32) -> i32 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(583f - global0.e.x))))), 1u, min(-vec4<i32>(global0.d, -10289i, 17046i, -68197i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, arg_1.a.x), ~vec4<u32>(arg_1.a.x, 10386u, arg_1.a.x, 6936u)) % vec4<u32>(32u)), vec4<i32>(-global0.d, firstLeadingBit(firstLeadingBit(-44373i)), max(global2[_wgslsmith_index_u32(4294967295u, 5u)], 1i), 1i)));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(-arg_1.b))), _wgslsmith_f_op_f32(ceil(909f))));
    var var_2 = arg_1;
    global0 = Struct_1(vec4<f32>(-423f, _wgslsmith_f_op_f32(f32(-1f) * -2090f), _wgslsmith_f_op_f32(sign(global1.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.x) + _wgslsmith_f_op_f32(sign(-162f))), _wgslsmith_f_op_f32(round(-806f)), arg_0.x))), global0.b, select(global0.c, !vec4<bool>(false, select(true, arg_0.x, true), global0.c.x, !global0.b.x), any(vec4<bool>(arg_0.x, true, select(global0.c.x, false, arg_0.x), all(global0.c)))), global2[_wgslsmith_index_u32(56908u, 5u)], global1.zx);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.b, _wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(554f))))));
    return ~(~(-96203i) ^ select(_wgslsmith_sub_i32(global2[_wgslsmith_index_u32(var_0.b, 5u)], var_0.c.x), -u_input.b, global2[_wgslsmith_index_u32(110319u, 5u)] > 2147483647i)) ^ (-1i >> ((_wgslsmith_dot_vec2_u32(u_input.a | vec2<u32>(arg_1.a.x, var_0.b), ~u_input.a) >> (_wgslsmith_dot_vec3_u32(var_2.a, var_2.a) % 32u)) % 32u));
}

fn func_2(arg_0: f32, arg_1: Struct_3, arg_2: Struct_1, arg_3: vec3<i32>) -> bool {
    var var_0 = Struct_1(global0.a, !select(vec3<bool>(arg_2.c.x, arg_2.b.x | arg_2.c.x, global0.c.x), vec3<bool>(false, arg_2.b.x, all(vec4<bool>(true, false, global0.b.x, global0.b.x))), arg_2.b.x), !vec4<bool>(!(!arg_2.b.x), arg_2.c.x || true, !(global1.x < arg_2.e.x), arg_2.c.x), ~func_4(func_3(_wgslsmith_div_u32(arg_1.b, 20160u)), Struct_2(vec3<u32>(4294967295u, arg_1.b, 4294967295u), _wgslsmith_f_op_f32(-772f - -1464f)), ~(~arg_3.x)), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a)) - global0.a.x), arg_2.a.x));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_2.a - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(arg_2.a * vec4<f32>(global0.e.x, 1000f, arg_1.a, arg_0)), _wgslsmith_f_op_vec4_f32(select(var_0.a, arg_2.a, arg_2.c.x)), select(vec4<bool>(true, var_0.c.x, var_0.b.x, arg_2.c.x), global0.c, false))))), select(!vec3<bool>(global0.c.x, !arg_2.b.x, !var_0.b.x), !vec3<bool>(arg_2.b.x | var_0.b.x, any(vec4<bool>(global0.c.x, false, var_0.b.x, true)), any(vec3<bool>(true, false, false))), select(arg_2.b, select(arg_2.b, var_0.c.ywy, any(vec2<bool>(var_0.b.x, false))), global0.b.x)), select(vec4<bool>(false, all(arg_2.c.ww), var_0.c.x, false), !(!select(arg_2.c, vec4<bool>(false, true, var_0.b.x, global0.b.x), global0.c.x)), !select(var_0.c, !vec4<bool>(var_0.c.x, global0.b.x, false, true), false)), countOneBits(global0.d), global1.wy);
    global1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), arg_0, 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global1.x, -1761f, var_0.c.x)), _wgslsmith_div_f32(var_0.a.x, _wgslsmith_f_op_f32(round(arg_0)))))) + _wgslsmith_f_op_vec4_f32(-var_1.a));
    let var_2 = firstLeadingBit(~countOneBits(vec2<u32>(~79794u, ~40460u)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-938f - var_0.a.x), -1509f))), 16605u, arg_1.c);
    return any(!vec2<bool>(any(!var_0.c.xxw), var_0.c.x));
}

fn func_1() -> Struct_2 {
    let var_0 = -select(~firstLeadingBit(_wgslsmith_mod_vec4_i32(vec4<i32>(-74616i, -9901i, -20461i, global0.d), vec4<i32>(u_input.b, global0.d, global0.d, 1i))), ~(-vec4<i32>(0i, 0i, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 1i)), global0.c);
    global0 = Struct_1(global0.a, vec3<bool>(all(global0.b.zx), all(select(vec3<bool>(false, false, true), global0.c.wzx, vec3<bool>(global0.b.x, global0.b.x, global0.c.x))), true), vec4<bool>((u_input.a.x >> (abs(u_input.a.x) % 32u)) < 4294967295u, global0.c.x, !global0.c.x, !(func_2(-2536f, Struct_3(-286f, 4294967295u, var_0), Struct_1(vec4<f32>(global1.x, global0.a.x, 803f, global0.a.x), global0.b, global0.c, global2[_wgslsmith_index_u32(4294967295u, 5u)], global1.wz), vec3<i32>(var_0.x, 0i, -2147483647i)) || true)), _wgslsmith_clamp_i32(u_input.b, -(2147483647i >> (~u_input.a.x % 32u)), 2147483647i), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global0.a.x, -963f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.e)) * vec2<f32>(_wgslsmith_f_op_f32(ceil(global1.x)), global0.a.x)))));
    global1 = vec4<f32>(-709f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(178f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) + global1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-190f))))), _wgslsmith_f_op_f32(1292f * -1041f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -566f)));
    global2 = array<i32, 5>();
    let var_1 = max(-vec4<i32>(u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, -11812i, 0i), vec3<i32>(19764i, 37758i, var_0.x)), global2[_wgslsmith_index_u32(select(14336u >> (u_input.a.x % 32u), 32400u, true), 5u)], global0.d), -countOneBits(var_0 << (vec4<u32>(u_input.a.x, 1u, u_input.a.x, 1760u) % vec4<u32>(32u))));
    return Struct_2(abs(~vec3<u32>(32852u, ~u_input.a.x, min(u_input.a.x, u_input.a.x))), global0.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, !(!(!global0.c.x)), _wgslsmith_mod_i32(8543i, countOneBits(min(17566i, -13413i))) < (~_wgslsmith_dot_vec4_i32(vec4<i32>(global0.d, global0.d, u_input.b, global2[_wgslsmith_index_u32(15197u, 5u)]), vec4<i32>(1i, u_input.b, global2[_wgslsmith_index_u32(u_input.a.x, 5u)], 24489i)) << (u_input.a.x % 32u)));
    let var_1 = func_1();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2058f);
    var var_3 = vec4<bool>(global0.b.x, global0.c.x, !all(global0.c) && var_0.x, false && !global0.b.x);
    var var_4 = Struct_3(1f, var_1.a.x, vec4<i32>(68821i, -(~min(-20721i, 1i)), 1i >> (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(u_input.a.x, u_input.a.x, 5223u, u_input.a.x)), vec4<u32>(var_1.a.x, var_1.a.x, 4294967295u, var_1.a.x)) % 32u), global2[_wgslsmith_index_u32(~(~1u) << ((var_1.a.x << (_wgslsmith_sub_u32(21766u, u_input.a.x) % 32u)) % 32u), 5u)]));
    var var_5 = Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_1.b * global1.x), _wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.x, global0.e.x)), 306f), select(select(var_0, vec3<bool>(true, var_3.x, false), !var_0), vec3<bool>(all(select(global0.c, global0.c, vec4<bool>(true, var_3.x, global0.b.x, var_3.x))), func_3(~u_input.a.x).x, var_3.x), true && all(!vec3<bool>(true, var_3.x, false))), global0.c, -global2[_wgslsmith_index_u32(4294967295u, 5u)], _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.a.yw) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(461f, -385f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global1.x * global0.e.x), _wgslsmith_f_op_f32(-var_4.a)) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(global1.wz, global1.xx) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(var_1.b, var_1.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c);
}

