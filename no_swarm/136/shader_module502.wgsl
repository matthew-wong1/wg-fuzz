struct Struct_1 {
    a: i32,
    b: vec3<i32>,
    c: vec3<f32>,
    d: i32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec3<u32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32>;

var<private> global1: Struct_1;

var<private> global2: array<Struct_1, 26>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_2(arg_0: vec2<bool>) -> f32 {
    var var_0 = 56542u;
    var var_1 = 60909u;
    var_1 = global1.e.x;
    global2 = array<Struct_1, 26>();
    var var_2 = _wgslsmith_f_op_f32(-global1.c.x);
    return global1.c.x;
}

fn func_3() -> vec3<f32> {
    let var_0 = global2[_wgslsmith_index_u32(global1.e.x, 26u)];
    let var_1 = global2[_wgslsmith_index_u32(reverseBits(min(_wgslsmith_dot_vec4_u32(var_0.e, var_0.e) ^ reverseBits(5211u), u_input.b.x)), 26u)];
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_0.c.x), global1.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1252f, _wgslsmith_f_op_f32(sign(645f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.c.x), global1.c.x)) + vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1114f, var_0.c.x)) + global1.c.x))), _wgslsmith_f_op_f32(-699f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2329f))), _wgslsmith_f_op_f32(-global1.c.x), _wgslsmith_f_op_f32(f32(-1f) * -129f)));
    var var_3 = _wgslsmith_add_vec3_u32(reverseBits(select(~min(vec3<u32>(1u, var_1.e.x, var_1.e.x), global1.e.wzy), ~(~global1.e.xyw), false)), ~global1.e.zwy);
    var var_4 = Struct_1(_wgslsmith_add_i32(var_1.b.x >> (~8774u % 32u), _wgslsmith_clamp_i32(abs(reverseBits(var_0.d)), -1i, 2147483647i)), global1.b, _wgslsmith_f_op_vec3_f32(-global1.c), ~u_input.a.x, select(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(21202u, 4294967295u), global1.e.wz), var_0.e.x | u_input.b.x, 4294967295u, abs(var_3.x)), vec4<u32>(4294967295u, ~4294967295u, 0u, var_1.e.x)), vec4<u32>(~min(4294967295u, u_input.b.x), global1.e.x, ~_wgslsmith_clamp_u32(global1.e.x, 1u, var_1.e.x), ~(~26080u)), true));
    return vec3<f32>(_wgslsmith_f_op_f32(round(-936f)), -458f, var_4.c.x);
}

fn func_1(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = _wgslsmith_add_vec2_u32(min(~arg_1.ww, countOneBits(firstTrailingBit(vec2<u32>(u_input.b.x, global1.e.x)) >> (~vec2<u32>(25317u, global1.e.x) % vec2<u32>(32u)))), firstLeadingBit(vec2<u32>(~93888u, 47191u)));
    var var_1 = global2[_wgslsmith_index_u32(0u, 26u)];
    let var_2 = ~(~1u & u_input.b.x);
    var var_3 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1563f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(select(vec2<bool>(false, true), vec2<bool>(arg_2.x, false), arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1547f, global1.c.x))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-176f, global1.c.x, _wgslsmith_f_op_f32(var_1.c.x - -462f))) * _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c) + vec3<f32>(global1.c.x, var_1.c.x, 453f)), _wgslsmith_f_op_vec3_f32(func_3()))))));
    var var_4 = min(~(~(vec3<u32>(4294967295u, u_input.b.x, arg_1.x) & ~vec3<u32>(arg_1.x, 5511u, 4294967295u))), vec3<u32>(5086u, ~4294967295u, 1u << ((~global1.e.x | u_input.b.x) % 32u)));
    return global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(abs(~u_input.b.x) ^ _wgslsmith_mod_u32(4294967295u, _wgslsmith_mod_u32(var_0.x, var_4.x | u_input.b.x)), 0u), 26u)];
}

fn func_4(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    var var_0 = vec4<bool>(any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), select(false, true, true)), vec3<bool>(true, true, all(vec4<bool>(false, true, true, false))))), all(vec4<bool>(true, true, true, true)), true, select(false, true, !(any(vec4<bool>(false, false, false, true)) == true)));
    var var_1 = arg_2.c.x;
    let var_2 = func_1(~firstLeadingBit(~arg_1.b.xx | (u_input.a.zy >> (u_input.b.zz % vec2<u32>(32u)))), func_1(_wgslsmith_mult_vec2_i32(firstTrailingBit(~u_input.a.yx), func_1(vec2<i32>(u_input.a.x, arg_2.b.x), arg_2.e, var_0.zw).b.xx ^ (u_input.a.xy & global1.b.zx)), ~max(countOneBits(vec4<u32>(u_input.b.x, 36057u, 31825u, 72574u)), _wgslsmith_mod_vec4_u32(arg_1.e, global1.e)), !var_0.zz).e, !select(select(!var_0.wx, var_0.yw, select(var_0.wx, vec2<bool>(var_0.x, true), false)), var_0.wy, false));
    let var_3 = abs(vec3<i32>(_wgslsmith_mod_i32(22321i, i32(-1i) * -1i), _wgslsmith_sub_i32(var_2.b.x, ~(arg_1.b.x >> (arg_1.e.x % 32u))), -var_2.d));
    var var_4 = func_1(global1.b.yz, func_1(var_3.yz >> (abs(firstTrailingBit(arg_1.e.zw)) % vec2<u32>(32u)), vec4<u32>(abs(~global1.e.x), ~59510u, 62432u, abs(28666u)), select(var_0.yw, !select(vec2<bool>(var_0.x, true), var_0.xz, var_0.x), true)).e, vec2<bool>(all(var_0.yzy), true));
    return var_4.e.x;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 26>();
    var var_0 = _wgslsmith_f_op_f32(min(-636f, -869f));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(reverseBits(firstTrailingBit(u_input.a.wz)), vec2<i32>(u_input.a.x, global1.a & global1.b.x)), max(global1.b.xz, u_input.a.xx)), _wgslsmith_sub_vec3_i32(firstTrailingBit(_wgslsmith_clamp_vec3_i32(select(vec3<i32>(14326i, global1.d, global1.d), vec3<i32>(-13092i, u_input.a.x, global1.a), false), max(vec3<i32>(2030i, global1.b.x, u_input.a.x), global1.b), u_input.a.xyy)), vec3<i32>(global1.a << (_wgslsmith_sub_u32(71281u, u_input.b.x) % 32u), 13397i, 12838i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(-690f + 620f), _wgslsmith_f_op_f32(-1000f - global1.c.x), -1042f))) * vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), _wgslsmith_f_op_f32(global1.c.x + global1.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2821f)))), ~(~(-_wgslsmith_sub_i32(0i, 14446i))), vec4<u32>(u_input.b.x, firstLeadingBit(~1u) >> (func_4(861f, func_1(global1.b.zy, global1.e, vec2<bool>(true, true)), global2[_wgslsmith_index_u32(74741u, 26u)]) % 32u), _wgslsmith_mod_u32(_wgslsmith_add_u32(global1.e.x, 0u), 4294967295u << (global1.e.x % 32u)) | reverseBits(1u), _wgslsmith_dot_vec2_u32(reverseBits(~u_input.b.xy), ~(~vec2<u32>(41834u, u_input.b.x)))));
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(var_1.e.x, func_1(abs(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), var_1.b.yx)), global1.e, select(vec2<bool>(false, true), vec2<bool>(false, true), true)).e.x & global1.e.x, _wgslsmith_mult_u32(select(u_input.b.x, _wgslsmith_div_u32(u_input.b.x, ~u_input.b.x), true), var_1.e.x)), 32u)];
    let var_3 = 1118f;
    var var_4 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(14243u, u_input.b.x), ~u_input.b.x);
    var var_5 = 71651u;
    var var_6 = true;
    let x = u_input.a;
    s_output = StorageBuffer(116565u, -u_input.a.zxz, u_input.b, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(572f, 858f, var_1.c.x, -1110f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c.x, -505f, -955f, 1207f) * vec4<f32>(global1.c.x, -1050f, -1439f, 232f))))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1258f, _wgslsmith_f_op_f32(func_2(vec2<bool>(true, true))), 1f, _wgslsmith_f_op_f32(abs(-1053f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, global1.c.x, 941f, -1131f) + vec4<f32>(var_3, var_1.c.x, 973f, var_2.c.x))), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), true))))));
}

