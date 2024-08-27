struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<bool>,
    c: Struct_3,
    d: f32,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24>;

var<private> global1: f32 = 502f;

var<private> global2: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> bool {
    let var_0 = select(vec2<bool>(arg_0.a.d, any(!select(vec2<bool>(false, true), vec2<bool>(arg_0.a.d, arg_0.a.d), vec2<bool>(true, true)))), vec2<bool>(any(vec3<bool>(!arg_0.a.d, !arg_0.a.d, false)), all(vec4<bool>(arg_0.a.d, arg_0.a.d, arg_0.a.d, true)) || all(vec2<bool>(arg_0.a.d, true))), select(vec2<bool>(arg_0.a.d, true | arg_0.a.d), select(vec2<bool>(global0[_wgslsmith_index_u32(arg_0.a.b, 24u)] > -197f, true), select(!vec2<bool>(true, arg_0.a.d), vec2<bool>(true, false), all(vec4<bool>(arg_0.a.d, true, true, arg_0.a.d))), ~u_input.b.x < countOneBits(arg_1.x)), false));
    var var_1 = Struct_4(Struct_3(arg_0.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(1u << (u_input.b.x % 32u), 24u)], 673f))), !vec4<bool>(all(var_0), arg_0.a.d, arg_0.a.d || true, true), Struct_3(Struct_2(arg_0.a.a, u_input.b.x, 2147483647i, all(vec3<bool>(var_0.x, false, var_0.x))), arg_0.b), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~arg_1.x, 24u)]), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, min(_wgslsmith_mod_u32(58992u, arg_0.a.b), ~arg_0.a.b)), max(~(u_input.b.x >> (1791u % 32u)), arg_1.x), ~arg_0.a.b, _wgslsmith_dot_vec4_u32(~(u_input.b << (vec4<u32>(arg_1.x, 19382u, arg_0.a.b, arg_0.a.b) % vec4<u32>(32u))), vec4<u32>(arg_0.a.b | arg_0.a.b, max(1u, u_input.b.x), arg_1.x << (u_input.b.x % 32u), _wgslsmith_dot_vec2_u32(arg_1.zy, vec2<u32>(4294967295u, 119791u))))));
    let var_2 = !all(var_1.b);
    global0 = array<f32, 24>();
    var var_3 = Struct_2(Struct_1(_wgslsmith_mult_vec3_i32(var_1.a.a.a.c.zxw, vec3<i32>(~(-2147483647i), ~1i, _wgslsmith_mult_i32(-23402i, u_input.e))), min(2147483647i, arg_0.a.a.d), vec4<i32>(_wgslsmith_mult_i32(u_input.a, -15278i) ^ _wgslsmith_div_i32(-1i, u_input.c), 1i, arg_0.a.c, -min(u_input.c, -2147483647i)), firstTrailingBit(~(-u_input.d)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~60461u, 24u)])))), 0u, -2147483647i, all(select(var_1.b.yw, vec2<bool>(all(vec4<bool>(false, true, true, true)), !var_2), vec2<bool>(false, false))));
    return _wgslsmith_f_op_f32(abs(-830f)) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-445f + _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, var_1.d)))) * _wgslsmith_f_op_f32(-948f + _wgslsmith_div_f32(-184f, global0[_wgslsmith_index_u32(var_1.c.a.b, 24u)])));
}

fn func_4(arg_0: bool) -> f32 {
    global0 = array<f32, 24>();
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(25560u, 24u)] + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.b.x, 24u)])) + _wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)], -569f))))));
}

fn func_5(arg_0: Struct_1) -> vec4<bool> {
    var var_0 = Struct_1(arg_0.a, u_input.d >> (0u % 32u), arg_0.c, abs(firstTrailingBit(_wgslsmith_mod_i32(i32(-1i) * -48084i, u_input.a ^ -2147483647i))), _wgslsmith_f_op_f32(floor(arg_0.e)));
    return select(vec4<bool>(!(_wgslsmith_f_op_f32(797f * arg_0.e) >= _wgslsmith_f_op_f32(-arg_0.e)), true, false, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, all(vec3<bool>(false, false, false))), vec4<bool>(true, true, true, true), true), true), !(!(!all(vec3<bool>(false, true, true)))));
}

fn func_2() -> vec3<bool> {
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -2525f);
    let var_0 = Struct_3(Struct_2(Struct_1(~reverseBits(vec3<i32>(u_input.c, 0i, 15821i)), _wgslsmith_mult_i32(0i, abs(u_input.c)), _wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, u_input.e, -2147483647i, u_input.c), vec4<i32>(1i, -15167i, 3669i, 0i)) | vec4<i32>(0i, u_input.a, u_input.a, u_input.d), -1369i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.b.x, 24u)] * global0[_wgslsmith_index_u32(u_input.b.x, 24u)]))), 43020u, 17211i, any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true))), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(global0[_wgslsmith_index_u32(~(~u_input.b.x), 24u)], _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(4294967295u, 24u)], -155f)))))));
    var var_1 = Struct_4(var_0, func_5(Struct_1(var_0.a.a.a >> (u_input.b.zxx % vec3<u32>(32u)), abs(1i), ~vec4<i32>(2147483647i, 2147483647i, 54850i, -3337i), -9339i, _wgslsmith_f_op_f32(func_4(func_3(var_0, vec3<u32>(u_input.b.x, 4294967295u, var_0.a.b)))))), var_0, global0[_wgslsmith_index_u32(~4294967295u, 24u)], max(abs(select(_wgslsmith_mod_vec4_u32(u_input.b, u_input.b), vec4<u32>(34018u, 60404u, var_0.a.b, 0u), !var_0.a.d)), select(vec4<u32>(firstTrailingBit(1u), select(u_input.b.x, var_0.a.b, false), var_0.a.b, u_input.b.x | 1u), vec4<u32>(u_input.b.x, countOneBits(var_0.a.b), ~u_input.b.x, 83479u), var_0.a.d & true)));
    var var_2 = vec3<u32>(~var_1.c.a.b, ~4294967295u, 1u);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a.a.e));
    return vec3<bool>(all(!vec4<bool>(var_1.c.a.d, u_input.b.x < 0u, func_5(Struct_1(vec3<i32>(var_0.a.c, u_input.a, var_0.a.a.c.x), 1i, vec4<i32>(var_0.a.c, 6058i, var_1.a.a.c, var_1.c.a.c), 24772i, var_1.c.b.x)).x, all(var_1.b.xw))), !(!var_1.b.x), all(select(select(func_5(Struct_1(var_0.a.a.c.wyz, 1i, var_1.c.a.a.c, var_0.a.c, var_0.a.a.e)), !vec4<bool>(var_1.c.a.d, var_0.a.d, true, true), func_5(var_1.a.a.a)), !vec4<bool>(var_1.c.a.d, var_1.c.a.d, true, true), !vec4<bool>(true, var_0.a.d, var_1.a.a.d, var_0.a.d))));
}

fn func_1(arg_0: vec2<u32>) -> StorageBuffer {
    let var_0 = _wgslsmith_div_vec4_i32(~(vec4<i32>(-1i) * -firstLeadingBit(vec4<i32>(u_input.a, u_input.e, 1i, -1i))), vec4<i32>(4073i, _wgslsmith_div_i32(u_input.e, -1i) & ~_wgslsmith_add_i32(-41864i, u_input.a), _wgslsmith_add_i32(_wgslsmith_mod_i32(-2147483647i, 1i), -u_input.e) | reverseBits(-u_input.e), countOneBits(2147483647i)));
    global1 = _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~1u, 24u)]);
    let var_1 = select(select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), func_2())), vec3<bool>(true, true, true), !vec3<bool>(true, 0u >= (arg_0.x | arg_0.x), true));
    var var_2 = var_1.yx;
    var var_3 = Struct_3(Struct_2(Struct_1(~vec3<i32>(var_0.x, -1i, u_input.e), _wgslsmith_dot_vec4_i32(vec4<i32>(-2038i, -4060i, u_input.a, 2147483647i), -vec4<i32>(0i, 0i, 6820i, -2136i)), var_0, var_0.x, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(1u, 24u)]))), ((u_input.b.x & 0u) >> (arg_0.x % 32u)) | 0u, u_input.c, true), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(arg_0.x, 24u)]), _wgslsmith_f_op_f32(-911f + -1124f)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global0[_wgslsmith_index_u32(16078u, 24u)], 1521f) * vec2<f32>(-1000f, global0[_wgslsmith_index_u32(4294967295u, 24u)])) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(43142u, 24u)], 280f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(6107u, 24u)])), global0[_wgslsmith_index_u32(~u_input.b.x, 24u)])))));
    return StorageBuffer(~(~_wgslsmith_mult_u32(countOneBits(u_input.b.x), 1u)), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = min(15735i, firstLeadingBit(-(~u_input.c))) ^ (i32(-1i) * -1i);
    var_0 = ~1i;
    var var_1 = u_input.c | (abs(148i) ^ -(~_wgslsmith_mod_i32(u_input.a, u_input.c)));
    var_0 = u_input.c;
    global0 = array<f32, 24>();
    global2 = global0[_wgslsmith_index_u32(4294967295u, 24u)];
    let x = u_input.a;
    s_output = func_1(firstTrailingBit(u_input.b.xx));
}

