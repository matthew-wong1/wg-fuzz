struct Struct_1 {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, 8954u, vec4<u32>(4690u, 56833u, 4294967295u, 15113u), vec3<i32>(-11257i, i32(-2147483648), -1i), 1i);

var<private> global1: array<vec4<bool>, 7> = array<vec4<bool>, 7>(vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true));

var<private> global2: array<vec4<u32>, 21>;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec2<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.x) * 112f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-496f, 2141f))))));
    global0 = Struct_1(36752u, ~global0.b, ~vec4<u32>(~30933u, global0.c.x, _wgslsmith_dot_vec4_u32(global2[_wgslsmith_index_u32(0u, 21u)], vec4<u32>(71988u, 7954u, global0.a, global0.b)), 39454u) & select(global0.c, global0.c, vec4<bool>(any(vec2<bool>(arg_1, arg_1)), arg_1, all(global1[_wgslsmith_index_u32(global0.a, 7u)]), arg_1 && arg_1)), vec3<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(global0.d, global0.d), -arg_0.d), ~(-13324i), ~_wgslsmith_dot_vec2_i32(arg_0.d.xy, global0.d.yx)), 6957i, (i32(-1i) * -2147483647i) << (arg_0.c.x % 32u)), global0.d.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) * vec3<f32>(-1163f, 745f, 2117f)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_2.x, arg_2.x, arg_2.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, arg_2.x, arg_2.x) + vec3<f32>(arg_2.x, -910f, 521f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-143f, arg_2.x, -108f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.x, arg_2.x, arg_2.x)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(890f, 965f, arg_2.x))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2.x, 2096f, -516f) + _wgslsmith_div_vec3_f32(vec3<f32>(arg_2.x, -827f, arg_2.x), vec3<f32>(1101f, arg_2.x, -948f))))));
    let var_2 = arg_0;
    global0 = Struct_1(reverseBits(_wgslsmith_sub_u32(0u, var_2.b)), abs(~max(_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a, arg_0.c.x), vec2<u32>(56070u, 32839u)), reverseBits(1u))), ~vec4<u32>(_wgslsmith_add_u32(10993u, 54539u), arg_0.b, 21314u, var_2.b) << (~vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, arg_0.c.x, 4294967295u), global0.c), 1u, max(var_2.c.x, 4294967295u), 4725u) % vec4<u32>(32u)), vec3<i32>(-1i, arg_0.d.x, u_input.a) >> (_wgslsmith_add_vec3_u32(~arg_0.c.xzx, ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 0u, global0.c.x), global0.c.zzx, arg_0.c.yyy)) % vec3<u32>(32u)), -_wgslsmith_mod_i32(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(global0.e, 18207i), 1i, 2147483647i), -1971i));
    return var_1.x;
}

fn func_2() -> vec3<i32> {
    let var_0 = ~(~global0.c.x);
    let var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1617f, 2082f)) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(743f, -564f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1725f, 1117f)), vec2<bool>(true, false)))) * _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-491f * -1362f), _wgslsmith_f_op_f32(func_3(Struct_1(global0.b, var_0, vec4<u32>(global0.a, global0.a, 1u, var_0), vec3<i32>(485i, u_input.a, u_input.a), 0i), false, vec2<f32>(1758f, 1168f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-224f, -1401f), vec2<f32>(-1208f, -843f))))));
    let var_2 = Struct_1(39416u, var_0 & (var_0 << (0u % 32u)), _wgslsmith_clamp_vec4_u32(global2[_wgslsmith_index_u32(min(var_0 ^ global0.a, ~4294967295u), 21u)], reverseBits(global2[_wgslsmith_index_u32(21114u, 21u)]), ~select(global0.c, ~vec4<u32>(14147u, var_0, global0.c.x, var_0), false)), _wgslsmith_add_vec3_i32(global0.d, vec3<i32>(_wgslsmith_mod_i32(u_input.a, 35731i), i32(-1i) * -2147483647i, -2147483647i)) | global0.d, reverseBits(-(i32(-1i) * -1i)) >> (global0.c.x % 32u));
    var var_3 = global0.c.zw;
    var var_4 = all(select(vec2<bool>(true, true), vec2<bool>(true, all(!global1[_wgslsmith_index_u32(1u, 7u)])), vec2<bool>(true, true)));
    return ~_wgslsmith_clamp_vec3_i32(var_2.d, -vec3<i32>(-20936i, u_input.a, -11325i), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(var_2.d, var_2.d) ^ (var_2.d ^ var_2.d), vec3<i32>(global0.e, u_input.a ^ 2147483647i, -1i)));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: Struct_1) -> u32 {
    global2 = array<vec4<u32>, 21>();
    var var_0 = Struct_1(_wgslsmith_dot_vec4_u32(~arg_2.c, max(abs(arg_2.c & vec4<u32>(global0.a, 4294967295u, 1u, 0u)), vec4<u32>(66688u, global0.c.x, 1u, ~1u))), 45929u, vec4<u32>(select(arg_1.a.b.a, ~0u | _wgslsmith_mod_u32(arg_1.a.c.b, global0.b), any(vec3<bool>(false, true, true))), ~(~(~45109u)), 1u, _wgslsmith_clamp_u32(~(47593u | arg_2.c.x), ~(~global0.c.x), 6050u)), ~vec3<i32>(arg_1.a.c.d.x, 1i, -2147483647i), global0.d.x);
    global0 = Struct_1(select(34255u, 0u, true), 1u, vec4<u32>(_wgslsmith_mod_u32(max(global0.a, 1u), ~_wgslsmith_mod_u32(global0.b, global0.c.x)), arg_2.c.x, ~2135u, select(firstTrailingBit(var_0.a), 97531u, select(true, u_input.a < arg_1.a.b.d.x, any(vec2<bool>(false, true))))), firstTrailingBit(_wgslsmith_add_vec3_i32(~arg_2.d, firstLeadingBit(firstTrailingBit(vec3<i32>(-48461i, -62198i, -2147483647i))))), arg_1.a.b.e);
    var var_1 = vec2<f32>(arg_0.x, arg_0.x);
    let var_2 = !all(select(vec4<bool>(false, true, false, false), select(global1[_wgslsmith_index_u32(13649u, 7u)], global1[_wgslsmith_index_u32(global0.b, 7u)], vec4<bool>(false, true, true, false)), true)) && (any(vec3<bool>(true, true, true)) & (_wgslsmith_f_op_f32(f32(-1f) * -1732f) > var_1.x));
    return ~arg_2.a;
}

fn func_1() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1168f), vec2<f32>(711f, 905f), false)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(384f, -1000f), -1270f)), true)));
    var var_1 = global0.c.zw;
    let var_2 = Struct_3(i32(-1i) * -2147483647i, Struct_1(global0.b, firstTrailingBit(_wgslsmith_div_u32(countOneBits(global0.c.x), ~1u)), ~vec4<u32>(43811u, firstLeadingBit(global0.c.x), 0u, 90245u), global0.d, global0.e), Struct_1(func_4(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(exp2(var_0.x)), var_0.x, _wgslsmith_f_op_f32(-1619f - var_0.x)), Struct_4(Struct_3(0i, Struct_1(global0.c.x, global0.b, global0.c, vec3<i32>(u_input.a, 18655i, global0.d.x), -10324i), Struct_1(4294967295u, global0.c.x, global2[_wgslsmith_index_u32(8943u, 21u)], global0.d, u_input.a), Struct_2(Struct_1(4294967295u, 19601u, global2[_wgslsmith_index_u32(var_1.x, 21u)], global0.d, u_input.a)))), Struct_1(_wgslsmith_mod_u32(1910u, global0.b), ~var_1.x, _wgslsmith_div_vec4_u32(vec4<u32>(global0.a, var_1.x, global0.b, 72907u), global2[_wgslsmith_index_u32(global0.a, 21u)]), func_2(), 1i)), 0u, global2[_wgslsmith_index_u32(1u, 21u)], _wgslsmith_add_vec3_i32(global0.d, ~(~vec3<i32>(u_input.a, u_input.a, global0.d.x))), ~(-global0.e)), Struct_2(Struct_1(~1u, ~103597u | firstTrailingBit(32748u), ~vec4<u32>(var_1.x, 14796u, var_1.x, 0u), reverseBits(global0.d ^ global0.d), -25166i)));
    let var_3 = select(!vec3<bool>(all(vec2<bool>(true, true)), any(select(vec4<bool>(false, true, true, false), global1[_wgslsmith_index_u32(global0.a, 7u)], global1[_wgslsmith_index_u32(4294967295u, 7u)])), any(!global1[_wgslsmith_index_u32(1u, 7u)])), vec3<bool>(_wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(var_1.x, global0.c.x, 7771u, 6678u)), var_2.b.c) < ~(~0u), any(global1[_wgslsmith_index_u32(~112856u, 7u)]), !(!all(vec3<bool>(false, false, true)))), false && !(!select(true, false, false)));
    let var_4 = select(select(var_3, !var_3, !select(!vec3<bool>(false, var_3.x, var_3.x), !vec3<bool>(var_3.x, false, true), select(var_3, var_3, false))), vec3<bool>(var_3.x, ~_wgslsmith_dot_vec2_u32(global0.c.yy, var_2.c.c.wy) >= _wgslsmith_clamp_u32(~16150u, _wgslsmith_mod_u32(var_1.x, 4696u), 1u), var_3.x), select(vec3<bool>(select(true | var_3.x, any(var_3), var_3.x), var_3.x, var_0.x < _wgslsmith_f_op_f32(step(var_0.x, 520f))), select(var_3, select(var_3, !var_3, !vec3<bool>(var_3.x, var_3.x, false)), u_input.a < 37413i), false));
    return Struct_1(select(4294967295u << (abs(var_1.x) % 32u), var_2.c.a, var_3.x), var_1.x, max(vec4<u32>(0u, _wgslsmith_mult_u32(var_2.d.a.c.x, 8646u), reverseBits(var_2.c.a ^ 29437u), 17958u), ~_wgslsmith_div_vec4_u32(var_2.d.a.c, vec4<u32>(7069u, 47802u, global0.a, 42287u)) & ~vec4<u32>(global0.c.x, var_1.x, var_1.x, global0.b)), -(select(_wgslsmith_mod_vec3_i32(global0.d, vec3<i32>(2147483647i, global0.d.x, global0.e)), countOneBits(global0.d), false) << ((~vec3<u32>(var_2.b.c.x, 4294967295u, 55059u) ^ var_2.c.c.yxy) % vec3<u32>(32u))), u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -12124i;
    global0 = func_1();
    var var_1 = !(true == (any(vec3<bool>(true, true, true)) | true));
    var_1 = !(-(~(-16559i)) != var_0);
    global0 = Struct_1(24048u, global0.a, vec4<u32>(_wgslsmith_dot_vec3_u32(global0.c.ywz, abs(~vec3<u32>(0u, 4294967295u, 4294967295u))), ~_wgslsmith_dot_vec3_u32(global0.c.xyw | global0.c.xxz, global0.c.xwy), ~_wgslsmith_dot_vec2_u32(global0.c.yy, global0.c.xy | vec2<u32>(global0.a, global0.c.x)), ~(1u >> ((4294967295u & global0.c.x) % 32u))), global0.d | (reverseBits(vec3<i32>(u_input.a, -2144i, var_0)) >> (vec3<u32>(1u & global0.a, abs(0u), _wgslsmith_clamp_u32(global0.b, 1u, 0u)) % vec3<u32>(32u))), var_0);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b, 1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1000f)) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1147f + -2245f))))));
}

