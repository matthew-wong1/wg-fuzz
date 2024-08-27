struct Struct_1 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 54771u;

var<private> global1: array<i32, 7> = array<i32, 7>(0i, 2147483647i, 1i, i32(-2147483648), 2147483647i, 0i, i32(-2147483648));

var<private> global2: vec3<i32> = vec3<i32>(22943i, 0i, -38443i);

var<private> global3: array<Struct_1, 8>;

var<private> global4: array<vec4<f32>, 23>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>) -> vec3<bool> {
    let var_0 = u_input.e;
    var var_1 = arg_0;
    global1 = array<i32, 7>();
    var_1 = Struct_2(Struct_1(arg_0.a.b.yxx, select(vec4<bool>(!arg_0.a.b.x, var_1.a.b.x, !var_1.a.a.x, arg_1.x < 2022f), select(vec4<bool>(true, var_1.a.a.x, var_1.a.a.x, arg_0.a.a.x), vec4<bool>(false, false, true, false), vec4<bool>(arg_0.a.a.x, true, false, var_1.a.a.x)), arg_0.a.b.x), ~arg_0.a.c));
    var var_2 = firstTrailingBit(_wgslsmith_mod_vec4_i32(-((vec4<i32>(2147483647i, var_0, global1[_wgslsmith_index_u32(4294967295u, 7u)], global1[_wgslsmith_index_u32(arg_0.a.c.x, 7u)]) | vec4<i32>(global1[_wgslsmith_index_u32(11459u, 7u)], 4309i, global1[_wgslsmith_index_u32(arg_0.a.c.x, 7u)], -17296i)) >> (u_input.a % vec4<u32>(32u))), select(select(vec4<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], -41908i, -31528i, u_input.e), vec4<i32>(0i, u_input.d, 2147483647i, 1i), false) & (vec4<i32>(-1i, -2147483647i, -5222i, u_input.e) & vec4<i32>(u_input.e, -5990i, global2.x, -22620i)), vec4<i32>(var_0 >> (var_1.a.c.x % 32u), firstTrailingBit(-1i), 1932i, -2147483647i), !(!vec4<bool>(arg_0.a.b.x, var_1.a.b.x, var_1.a.b.x, var_1.a.a.x)))));
    return !arg_0.a.b.wwz;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = arg_2.a.a.x || true;
    global4 = array<vec4<f32>, 23>();
    let var_1 = u_input.a.zy;
    var var_2 = arg_2.a;
    let var_3 = ~select(abs(reverseBits(vec3<i32>(1i, -1307i, arg_1.x))) ^ ~vec3<i32>(arg_1.x, -2147483647i, 15847i), vec3<i32>(u_input.e, global1[_wgslsmith_index_u32(21182u, 7u)] << (4294967295u % 32u), u_input.e) << (arg_2.a.c % vec3<u32>(32u)), select(!vec3<bool>(false, true, arg_2.a.b.x), vec3<bool>(true, var_2.a.x, arg_2.a.b.x), select(var_2.a, !var_2.a, false)));
    return Struct_4(!func_3(arg_2, vec2<f32>(774f, -1153f)));
}

fn func_1(arg_0: u32, arg_1: i32) -> vec2<f32> {
    var var_0 = Struct_5(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true), false), func_2(~global2.x, vec2<i32>(~u_input.d, -72277i) ^ _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(global2.xx, global2.xy), global2.zy), Struct_2(global3[_wgslsmith_index_u32(arg_0, 8u)])));
    let var_1 = !vec3<bool>(func_3(Struct_2(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(arg_0, 4294967295u), 8u)]), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(113f, -734f), vec2<f32>(339f, -2116f)))))).x, false, -abs(global1[_wgslsmith_index_u32(5534u, 7u)]) > _wgslsmith_mod_i32(_wgslsmith_add_i32(-2147483647i, 1i), -1i));
    global3 = array<Struct_1, 8>();
    let var_2 = global3[_wgslsmith_index_u32(~27848u, 8u)];
    let var_3 = Struct_3(Struct_2(Struct_1(select(vec3<bool>(var_2.a.x, var_1.x, var_2.a.x), vec3<bool>(false, var_1.x, false), !var_1), vec4<bool>(!var_1.x, true, all(var_2.b), !var_0.b.a.x), firstLeadingBit(vec3<u32>(var_2.c.x, 0u, u_input.b) << (var_2.c % vec3<u32>(32u))))));
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1248f, -851f)), vec2<f32>(-1207f, _wgslsmith_f_op_f32(276f * -405f)), vec2<bool>(var_0.a.x & false, true))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(518f, -364f), vec2<f32>(-1400f, -554f))), vec2<f32>(1f, 1f))) * vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1236f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-983f))))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<i32, 7>();
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(~_wgslsmith_clamp_u32(0u, u_input.a.x, 8084u) & ~u_input.b, -15298i)));
    global2 = ~min(-vec3<i32>(global2.x, 0i, -1i), reverseBits(abs(vec3<i32>(12562i, global1[_wgslsmith_index_u32(0u, 7u)], 0i)))) ^ -vec3<i32>(global1[_wgslsmith_index_u32(u_input.a.x, 7u)], ~_wgslsmith_mult_i32(global1[_wgslsmith_index_u32(u_input.b, 7u)], 0i), firstTrailingBit(global2.x));
    global4 = array<vec4<f32>, 23>();
    global0 = countOneBits(22057u);
    var var_1 = abs(abs(~_wgslsmith_mult_u32(min(u_input.b, u_input.a.x), 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b, var_0.x);
}

