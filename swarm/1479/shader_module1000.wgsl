struct Struct_1 {
    a: vec4<f32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: i32 = -35500i;

var<private> global2: array<Struct_2, 4>;

var<private> global3: vec4<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3() -> u32 {
    global3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(vec4<f32>(985f, -1000f, global3.x, global3.x), vec4<f32>(global3.x, -1210f, global3.x, global3.x)))))))));
    global1 = i32(-1i) * -71131i;
    global2 = array<Struct_2, 4>();
    let var_0 = vec4<bool>(true, 4294967295u > max(~(~u_input.c.x), ~1u), (_wgslsmith_mod_u32(~u_input.a, _wgslsmith_add_u32(7373u, u_input.d)) & min(firstLeadingBit(u_input.d), _wgslsmith_clamp_u32(u_input.b.x, 4294967295u, 47135u))) >= u_input.a, !any(vec3<bool>(true, true, true)));
    var var_1 = -firstTrailingBit(-44127i);
    return u_input.c.x;
}

fn func_4(arg_0: f32, arg_1: u32, arg_2: f32, arg_3: vec2<u32>) -> bool {
    var var_0 = !select(vec4<bool>(true, any(vec3<bool>(false, true, true)), true, !any(vec3<bool>(true, true, false))), vec4<bool>(true, true, true, true), true || any(vec4<bool>(true, false, true, true)));
    global2 = array<Struct_2, 4>();
    global1 = abs(_wgslsmith_div_i32(max(1i, _wgslsmith_mult_i32(abs(-1i), _wgslsmith_mod_i32(-28456i, 3098i))), -1i << (reverseBits(~4294967295u) % 32u)));
    global0 = array<Struct_1, 6>();
    let var_1 = true;
    return !(511f != arg_2);
}

fn func_2() -> vec3<bool> {
    let var_0 = !select(any(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(true, true))), 1u == (u_input.d & 33247u), ~(1u >> (u_input.a % 32u)) != u_input.b.x);
    var var_1 = Struct_3(global2[_wgslsmith_index_u32(u_input.c.x, 4u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(62261u, u_input.d), 4u)], any(vec3<bool>(false, !all(vec3<bool>(false, var_0, var_0)), func_4(global3.x, func_3(), _wgslsmith_f_op_f32(-global3.x), vec2<u32>(u_input.c.x, 23386u) & u_input.b))));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global3.x, -2789f) - -443f))));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-468f)), _wgslsmith_f_op_f32(ceil(global3.x)))))));
    let var_4 = ~16060u;
    return !vec3<bool>(false, select(true, false, true), var_1.c);
}

fn func_1(arg_0: i32) -> vec4<f32> {
    let var_0 = select(true, select(true, true, select(false, true, true) | all(vec3<bool>(true, true, true))), true);
    let var_1 = select(!(!select(vec3<bool>(false, var_0, true), !vec3<bool>(true, var_0, false), func_2())), !vec3<bool>(var_0, false, (var_0 && true) != func_4(global3.x, u_input.d, global3.x, u_input.c.zx)), select(!vec3<bool>(true, func_4(global3.x, 41947u, global3.x, vec2<u32>(u_input.b.x, 0u)), var_0), vec3<bool>(select(arg_0, arg_0, var_0) >= 1i, select(var_0, func_2().x, var_0), var_0), true));
    global3 = vec4<f32>(global3.x, _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(global3.x - global3.x)), global3.x, _wgslsmith_f_op_f32(-1603f + -414f));
    var var_2 = arg_0;
    global3 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, global3.x, global3.x, -887f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, 1643f, 1148f, 1325f) + vec4<f32>(-1670f, global3.x, global3.x, global3.x))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, global3.x) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-206f, global3.x, global3.x, -396f)))))));
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global3.x, 511f)), _wgslsmith_div_f32(global3.x, global3.x), var_1.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(-1795f))))))), _wgslsmith_f_op_f32(f32(-1f) * -696f), global3.x, -1000f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global3.x;
    let var_1 = ~firstLeadingBit(~vec4<u32>(0u, select(45234u, u_input.d, true), 0u << (1u % 32u), ~u_input.b.x));
    var var_2 = -457f;
    let var_3 = u_input.d;
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.x, global3.x, 295f, -976f)))))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(~(-2147483647i))) * _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 161f, -1347f, global3.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, -427f, global3.x, -392f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1451f, global3.x, global3.x, global3.x) * vec4<f32>(-518f, global3.x, global3.x, global3.x))))));
    global3 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -535f), _wgslsmith_f_op_f32(max(294f, 1282f)), -435f, _wgslsmith_div_f32(271f, -278f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1043f, 1444f, global3.x, global3.x), vec4<f32>(1127f, -667f, global3.x, -459f))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.x, global3.x, global3.x, -1000f) + vec4<f32>(-899f, global3.x, -1453f, -218f)))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -868f))), -1736f, global3.x)));
    let var_4 = _wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(1i, 1i, 1i)), firstTrailingBit(min(-(~vec3<i32>(97828i, -38294i, 29776i)), _wgslsmith_clamp_vec3_i32(abs(vec3<i32>(8710i, 0i, 2147483647i)), abs(vec3<i32>(27730i, 48195i, -1i)), vec3<i32>(0i, -10865i, 0i)))));
    global1 = 127i;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_div_i32(-2147483647i, var_4.x) ^ var_4.x);
}

