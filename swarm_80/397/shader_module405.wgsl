struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7>;

var<private> global1: array<u32, 3>;

var<private> global2: Struct_2;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_2(!global2.a, global2.b, vec4<f32>(_wgslsmith_f_op_f32(global2.c.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1649f - global2.c.x) - _wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), global2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(345f + global2.c.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_f_op_f32(global2.c.x - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -221f))))));
    let var_1 = -58377i;
    let var_2 = ~_wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, reverseBits(firstTrailingBit(var_0.b)), var_0.b, abs(53683u) << (var_0.b % 32u)), vec4<u32>(firstTrailingBit(1u), ~4294967295u, countOneBits(var_0.b), 1u));
    let var_3 = Struct_1(countOneBits(var_2.ww), 461f);
    let var_4 = -35524i;
    return var_2.wwz;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_2) -> i32 {
    let var_0 = -606f;
    global1 = array<u32, 3>();
    var var_1 = arg_1;
    global1 = array<u32, 3>();
    let var_2 = _wgslsmith_mult_u32(_wgslsmith_div_u32(global2.b, 19046u ^ global2.b), 12738u);
    return _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(19982i, reverseBits(u_input.a.x), min(u_input.a.x, 2147483647i)), vec3<i32>(_wgslsmith_add_i32(36667i, u_input.b), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, u_input.d, -2147483647i), vec3<i32>(-536i, -21224i, u_input.b)), -2147483647i)), -_wgslsmith_mod_vec3_i32(~vec3<i32>(u_input.b, u_input.d, -1i), _wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.d, u_input.a.x), vec3<i32>(u_input.d, u_input.b, u_input.a.x)))), 3660i);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_2, arg_2: Struct_2, arg_3: vec3<bool>) -> Struct_2 {
    var var_0 = Struct_2(!vec4<bool>(!any(vec2<bool>(true, true)), true, false, false), ~global2.b, arg_2.c);
    var var_1 = func_2() << (vec3<u32>(global2.b, ~_wgslsmith_mult_u32(global2.b, 0u) >> (~global1[_wgslsmith_index_u32(arg_2.b, 3u)] % 32u), arg_2.b) % vec3<u32>(32u));
    var var_2 = global2.c;
    let var_3 = vec2<i32>(-(_wgslsmith_add_i32(func_3(Struct_1(var_1.yy, arg_1.c.x), arg_1, arg_2), u_input.d) & 25968i), 78516i);
    let var_4 = _wgslsmith_dot_vec3_u32(vec3<u32>(abs(global1[_wgslsmith_index_u32(1u, 3u)]), var_0.b, countOneBits(reverseBits(1u)) ^ _wgslsmith_mod_u32(arg_2.b, _wgslsmith_dot_vec2_u32(var_1.zx, vec2<u32>(global2.b, arg_2.b)))), ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(22820u, var_1.x, global1[_wgslsmith_index_u32(1316u, 3u)])), ~vec3<u32>(global2.b, 4294967295u, 0u)));
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec2<i32>(u_input.b, select(u_input.a.x, u_input.a.x, _wgslsmith_f_op_f32(-global2.c.x) > _wgslsmith_f_op_f32(abs(539f)))), Struct_2(!global2.a, 1u, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1368f + global2.c.x)), global2.c.x, 361f)), Struct_2(vec4<bool>(global2.a.x, true, true, global2.a.x), ~global1[_wgslsmith_index_u32(abs(0u), 3u)], _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global2.c, global2.c, global2.a.x))))), vec3<bool>(-2147483647i == u_input.a.x, !global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.c.x, global2.c.x)) + global2.c.x) <= -450f));
    var var_1 = var_0.a.zww;
    var var_2 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global2.c.yxw), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(var_0.c.zyz, vec3<f32>(-423f, global2.c.x, global2.c.x), vec3<bool>(var_0.a.x, var_0.a.x, false))))), _wgslsmith_f_op_vec3_f32(max(var_0.c.yxy, global2.c.xyz)), global2.a.x))))));
    var var_3 = Struct_1(firstTrailingBit(~vec2<u32>(global2.b, 1u) ^ ~vec2<u32>(4294967295u, global2.b)), var_0.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-((i32(-1i) * -12198i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global2.b, 3u)], global1[_wgslsmith_index_u32(12297u, 3u)]), var_3.a) % 32u)) >> (global1[_wgslsmith_index_u32((0u << (_wgslsmith_mod_u32(0u, var_3.a.x) % 32u)) | var_3.a.x, 3u)] % 32u));
}

