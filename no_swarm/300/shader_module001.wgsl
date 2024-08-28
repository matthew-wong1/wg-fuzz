struct Struct_1 {
    a: vec3<i32>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec4<i32>,
    c: Struct_2,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<i32>,
    c: vec4<i32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec3<i32>(i32(-2147483648), 28982i, i32(-2147483648)), vec2<bool>(true, true), vec3<u32>(0u, 19269u, 1u), vec4<u32>(0u, 70883u, 1387u, 34490u), vec4<i32>(-1i, 1i, 21780i, 7421i)), Struct_1(vec3<i32>(-1i, -1i, -28031i), vec2<bool>(false, false), vec3<u32>(25529u, 4294967295u, 0u), vec4<u32>(1u, 3343u, 5863u, 1u), vec4<i32>(i32(-2147483648), 34672i, 3335i, i32(-2147483648))), Struct_1(vec3<i32>(18878i, 2147483647i, -29923i), vec2<bool>(true, false), vec3<u32>(4294967295u, 4294967295u, 1u), vec4<u32>(4408u, 1u, 1u, 33646u), vec4<i32>(17773i, 262i, 13605i, 51571i)));

var<private> global1: Struct_3 = Struct_3(vec4<u32>(41402u, 4294967295u, 26384u, 1792u), vec4<i32>(13080i, -33349i, 13717i, -12542i), Struct_2(true, -1i), Struct_2(false, 51092i));

var<private> global2: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: Struct_3) -> vec4<i32> {
    var var_0 = Struct_3(abs(firstTrailingBit(countOneBits(vec4<u32>(0u, global1.a.x, 4294967295u, global1.a.x)))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(arg_1.b, 0i, -arg_1.b, arg_3.c.b)), min(_wgslsmith_mod_vec4_i32(reverseBits(global1.b), select(arg_3.b, global1.b, false)), vec4<i32>(_wgslsmith_add_i32(global1.c.b, u_input.a), arg_1.b, select(u_input.a, global1.b.x, true), -global1.b.x))), Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0 + 599f))) >= _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(arg_0, arg_0))), 1i | u_input.a), arg_1);
    global2 = max(_wgslsmith_dot_vec4_i32(arg_3.b, vec4<i32>(-1i) * -global1.b) << (global1.a.x % 32u), _wgslsmith_dot_vec4_i32(vec4<i32>(-(~1i), ~(~33073i), u_input.a, ~2147483647i), _wgslsmith_sub_vec4_i32(vec4<i32>(-27105i >> (global1.a.x % 32u), arg_3.b.x, _wgslsmith_div_i32(0i, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.b.x, -1i, 1i), var_0.b)), arg_3.b)));
    global0 = array<Struct_1, 3>();
    global2 = 0i;
    let var_1 = var_0.a.x & 6374u;
    return -vec4<i32>(u_input.a, _wgslsmith_dot_vec3_i32(reverseBits(var_0.b.wyz >> (vec3<u32>(79023u, 42544u, arg_3.a.x) % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(-arg_3.b.zzz, _wgslsmith_add_vec3_i32(var_0.b.yxy, var_0.b.zyy))), firstTrailingBit(1i), arg_1.b);
}

fn func_2(arg_0: i32) -> Struct_4 {
    global1 = Struct_3(reverseBits(reverseBits(~select(global1.a, vec4<u32>(0u, 4294967295u, global1.a.x, 73506u), vec4<bool>(global1.c.a, global1.d.a, global1.d.a, false)))), _wgslsmith_div_vec4_i32(~firstLeadingBit(-global1.b), ~func_3(_wgslsmith_f_op_f32(max(679f, -118f)), global1.c, _wgslsmith_mult_u32(3888u, global1.a.x), Struct_3(vec4<u32>(global1.a.x, 94955u, global1.a.x, 1u), global1.b, Struct_2(global1.d.a, arg_0), global1.d))), Struct_2(!global1.c.a, u_input.a), global1.c);
    global0 = array<Struct_1, 3>();
    return Struct_4(global0[_wgslsmith_index_u32(0u >> (global1.a.x % 32u), 3u)]);
}

fn func_1(arg_0: f32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1513f, arg_0, arg_0)))))));
    global0 = array<Struct_1, 3>();
    return func_2(i32(-1i) * -3470i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -473f)));
    let var_1 = func_1(_wgslsmith_f_op_f32(f32(-1f) * -272f)).a;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(478f, -101f, -1704f, 658f))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(659f, 1598f, 1000f, -2929f) * vec4<f32>(-819f, 1000f, -1000f, 826f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(752f, 1000f, 1000f, -2105f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(475f, -350f, -965f, 127f))) * vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(885f * 2100f), _wgslsmith_f_op_f32(-748f * 615f), 579f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(423f, -191f, -797f, 582f) - vec4<f32>(559f, -970f, 743f, -1000f)))) - _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1935f + 1000f), _wgslsmith_div_f32(-671f, -229f), -757f, _wgslsmith_div_f32(491f, -720f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1005f, 1000f, -179f, 246f))) + vec4<f32>(-1000f, 466f, 494f, 1937f))))));
    let var_3 = ~var_0.a.e.x;
    global1 = Struct_3(var_1.d, min(~_wgslsmith_div_vec4_i32(var_1.e, select(vec4<i32>(var_3, var_1.a.x, 0i, var_3), vec4<i32>(68223i, global1.c.b, var_3, 0i), var_0.a.b.x)), func_2(-(~21632i)).a.e), Struct_2(global1.c.a, -1i), global1.d);
    let var_4 = var_2.zx;
    var var_5 = vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.x - 1511f), _wgslsmith_f_op_f32(var_4.x + -2174f))), 239f))), 444f, _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, var_4.x), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2054f + var_4.x))))), var_4.x);
    let var_6 = _wgslsmith_f_op_f32(-var_4.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * 1018f) * 1000f))), -vec2<i32>(u_input.a, global1.b.x), -_wgslsmith_add_vec4_i32(var_1.e << ((var_1.d ^ global1.a) % vec4<u32>(32u)), vec4<i32>(var_1.a.x, abs(2147483647i), global1.c.b, global1.b.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_4.x), 2196f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.x + -1592f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(var_5.x, _wgslsmith_div_f32(-2094f, _wgslsmith_f_op_f32(step(var_5.x, -877f))))), _wgslsmith_f_op_f32(-955f + _wgslsmith_f_op_f32(select(-554f, _wgslsmith_f_op_f32(floor(656f)), true)))));
}

