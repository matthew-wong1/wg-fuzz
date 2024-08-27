struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: f32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: vec4<f32> = vec4<f32>(319f, -237f, -1204f, 150f);

var<private> global2: array<Struct_1, 31>;

var<private> global3: array<i32, 23> = array<i32, 23>(-17041i, 22421i, i32(-2147483648), 0i, 2147483647i, 0i, 30352i, 2147483647i, -51192i, -47145i, 2147483647i, 2147483647i, -52589i, -12957i, -82852i, 63676i, 1i, 14409i, -7150i, -20055i, 37580i, 0i, -1i);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: Struct_1, arg_3: f32) -> f32 {
    let var_0 = Struct_3(global3[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, u_input.c.x), 23u)], ~(_wgslsmith_mod_u32(22250u, u_input.c.x) << (~u_input.c.x % 32u)), vec2<f32>(2771f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-277f + _wgslsmith_f_op_f32(-arg_3)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(global1.x + global1.x))))), 188f);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.x)));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: u32, arg_3: Struct_3) -> i32 {
    var var_0 = arg_3;
    var var_1 = Struct_2(Struct_1(vec3<i32>(37059i, global3[_wgslsmith_index_u32(0u, 23u)], abs(arg_0)) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(-3784i, 0i, 27809i), _wgslsmith_sub_vec3_i32(global0.a.a, global0.a.a), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.a), global0.a.a))));
    var var_2 = _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(375f, _wgslsmith_f_op_f32(abs(var_0.d)), global1.x, _wgslsmith_f_op_f32(-arg_3.c.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-297f, 591f, 528f, arg_3.d))) - vec4<f32>(arg_3.d, 866f, var_0.d, 653f)), all(arg_1))))));
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_3.c.x + arg_3.d)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.c.x, 306f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1049f * var_2.x) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_div_f32(arg_3.c.x, _wgslsmith_f_op_f32(f32(-1f) * -125f)));
    global1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1147f, arg_3.d, arg_3.c.x, global1.x))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-900f, 1503f, 675f, global1.x))) * vec4<f32>(arg_3.c.x, var_0.c.x, var_0.c.x, _wgslsmith_f_op_f32(-arg_3.d)))));
    return ~25375i;
}

fn func_1(arg_0: vec4<f32>) -> Struct_4 {
    let var_0 = u_input.c.x;
    var var_1 = Struct_3(select(global3[_wgslsmith_index_u32(83912u, 23u)], _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, global0.a.a.x), _wgslsmith_mod_vec2_i32(min(global0.a.a.zz, vec2<i32>(global3[_wgslsmith_index_u32(u_input.c.x, 23u)], u_input.a)), ~vec2<i32>(1i, -1i))), (-1000f == _wgslsmith_f_op_f32(arg_0.x * arg_0.x)) && all(vec3<bool>(true, false, false))), 4294967295u, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.wz)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1.x, arg_0.x)) * arg_0.x)), _wgslsmith_f_op_f32(select(arg_0.x, 627f, true)))));
    let var_2 = vec3<f32>(global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1420f, 1713f)) + _wgslsmith_f_op_f32(func_2(true, _wgslsmith_f_op_f32(global1.x * -1835f), Struct_1(vec3<i32>(2147483647i, var_1.a, global0.a.a.x)), _wgslsmith_f_op_f32(round(var_1.d))))))));
    global3 = array<i32, 23>();
    var var_3 = !((_wgslsmith_dot_vec4_i32(-vec4<i32>(global3[_wgslsmith_index_u32(1u, 23u)], var_1.a, 1i, 1i), vec4<i32>(var_1.a, -2147483647i, global0.a.a.x, global0.a.a.x) ^ vec4<i32>(global0.a.a.x, var_1.a, 18303i, 0i)) ^ func_3(-global0.a.a.x, vec2<bool>(true, true), reverseBits(u_input.c.x), Struct_3(global0.a.a.x, u_input.c.x, vec2<f32>(global1.x, var_2.x), global1.x))) == -(~global0.a.a.x));
    return Struct_4(arg_0, ~(42565i | -min(-25246i, global3[_wgslsmith_index_u32(var_0, 23u)])));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(vec4<f32>(global1.x, -1153f, -2026f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global1.x * -1069f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-298f, global1.x, false))))));
    let var_1 = global3[_wgslsmith_index_u32(abs(~u_input.c.x), 23u)];
    var var_2 = _wgslsmith_mult_vec2_i32(vec2<i32>(-38119i, global3[_wgslsmith_index_u32(1u, 23u)]), vec2<i32>(u_input.a, -2147483647i));
    global0 = Struct_2(global2[_wgslsmith_index_u32(~u_input.c.x | min(28336u, firstTrailingBit(u_input.c.x)), 31u)]);
    var var_3 = global2[_wgslsmith_index_u32(u_input.c.x, 31u)];
    let var_4 = -1392f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(~u_input.c.x)), 18500u, ~(u_input.c.x & ~0u), var_0.a.wx, vec4<u32>(u_input.c.x, ~35138u, u_input.c.x, 37299u) ^ (~(vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, 4294967295u) & vec4<u32>(1u, 4294967295u, u_input.c.x, u_input.c.x)) & (~vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 29669u) >> (vec4<u32>(30753u, 17495u, 4294967295u, u_input.c.x) % vec4<u32>(32u)))));
}

