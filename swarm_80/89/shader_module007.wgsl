struct Struct_1 {
    a: vec3<u32>,
    b: vec3<f32>,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<bool>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: u32;

var<private> global1: vec4<f32>;

var<private> global2: array<Struct_1, 11> = array<Struct_1, 11>(Struct_1(vec3<u32>(71998u, 20957u, 11235u), vec3<f32>(546f, -727f, -400f), 2147483647i, true, 0u), Struct_1(vec3<u32>(1u, 26231u, 13505u), vec3<f32>(-758f, -1336f, -1247f), -11118i, true, 0u), Struct_1(vec3<u32>(1u, 1u, 1u), vec3<f32>(1183f, -314f, -1090f), 0i, true, 59248u), Struct_1(vec3<u32>(0u, 9103u, 20027u), vec3<f32>(-2374f, -2360f, 1760f), 12263i, false, 0u), Struct_1(vec3<u32>(91370u, 16868u, 4294967295u), vec3<f32>(1172f, 988f, 303f), 2147483647i, true, 14962u), Struct_1(vec3<u32>(4294967295u, 0u, 4294967295u), vec3<f32>(-704f, -596f, 528f), -18871i, false, 1u), Struct_1(vec3<u32>(4294967295u, 94104u, 25650u), vec3<f32>(751f, -1288f, -140f), 19031i, false, 29029u), Struct_1(vec3<u32>(5152u, 0u, 0u), vec3<f32>(192f, 1000f, -1583f), -1i, false, 31243u), Struct_1(vec3<u32>(0u, 233u, 45049u), vec3<f32>(1000f, 729f, -2717f), 0i, false, 1u), Struct_1(vec3<u32>(0u, 52745u, 0u), vec3<f32>(421f, 348f, -1642f), -69646i, false, 35929u), Struct_1(vec3<u32>(7390u, 4294967295u, 33153u), vec3<f32>(1374f, -877f, 532f), 929i, true, 28650u));

var<private> global3: array<vec4<bool>, 10>;

var<private> global4: vec3<u32> = vec3<u32>(4294967295u, 34296u, 18055u);

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> vec2<u32> {
    var var_0 = firstTrailingBit(_wgslsmith_add_vec4_i32(vec4<i32>(_wgslsmith_dot_vec2_i32(arg_2.b.wx | vec2<i32>(-2147483647i, 2147483647i), arg_2.b.zx), _wgslsmith_dot_vec3_i32(reverseBits(arg_2.b.yyy), vec3<i32>(arg_0.c, -1819i, arg_0.c)), 29600i, arg_2.c), arg_2.b));
    global2 = array<Struct_1, 11>();
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_2.a.b.x)), arg_2.a.b.x);
    var_0 = ~countOneBits(arg_2.b >> (~max(vec4<u32>(1u, arg_1, 0u, 51995u), vec4<u32>(0u, arg_0.e, arg_0.e, arg_2.a.e)) % vec4<u32>(32u)));
    var_0 = ~arg_2.b;
    return arg_2.a.a.zy;
}

fn func_4(arg_0: vec3<u32>, arg_1: vec2<i32>) -> u32 {
    global4 = ~_wgslsmith_sub_vec3_u32(arg_0, _wgslsmith_mult_vec3_u32(~vec3<u32>(19203u, 4294967295u, 849u), vec3<u32>(global4.x, max(u_input.a, u_input.a), global4.x)));
    var var_0 = global3[_wgslsmith_index_u32(arg_0.x, 10u)];
    global1 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(856f, -1196f, 589f, 408f) - vec4<f32>(-1620f, 571f, 543f, -1313f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-375f, -637f, 1000f, global1.x) - vec4<f32>(global1.x, global1.x, global1.x, global1.x))))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1477f, -629f, -375f, global1.x) * vec4<f32>(global1.x, 668f, 134f, global1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1757f, -709f, global1.x))))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(global1.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(sign(global1.x)))), 793f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1000f)))))));
    var var_1 = countOneBits(_wgslsmith_clamp_i32(((arg_1.x >> (global4.x % 32u)) ^ _wgslsmith_mod_i32(arg_1.x, -64706i)) ^ 0i, arg_1.x, _wgslsmith_sub_i32(max(48786i, reverseBits(arg_1.x)), firstLeadingBit(i32(-1i) * -6516i))));
    let var_2 = ~(~reverseBits(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a) << (arg_0.yz % vec2<u32>(32u)), _wgslsmith_clamp_vec2_u32(global4.xy, vec2<u32>(u_input.a, 0u), vec2<u32>(u_input.a, 5385u)))));
    return reverseBits(4778u);
}

fn func_2(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<u32>) -> u32 {
    var var_0 = Struct_1(vec3<u32>(abs(~arg_2.x), u_input.a, _wgslsmith_dot_vec2_u32(global4.yz, _wgslsmith_mult_vec2_u32(global4.yy, ~vec2<u32>(global4.x, arg_2.x)))), global1.xxw, arg_0.x, any(vec2<bool>(false, true)), select(~14747u, arg_2.x, ~_wgslsmith_clamp_i32(arg_0.x, arg_0.x, arg_0.x) < ~(-2147483647i)));
    let var_1 = Struct_3(any(!vec3<bool>(true, true, all(vec2<bool>(var_0.d, false)))), _wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(23892i, -arg_0.x | var_0.c, -2147483647i << (~u_input.a % 32u))), vec4<bool>(!arg_1, true, true, _wgslsmith_f_op_f32(f32(-1f) * -1953f) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-187f, -1000f, 520f)))))), -1i);
    let var_2 = func_4(vec3<u32>(_wgslsmith_dot_vec2_u32(func_3(global2[_wgslsmith_index_u32(1u, 11u)], u_input.a, Struct_2(Struct_1(var_0.a, vec3<f32>(-2268f, -1202f, global1.x), 6034i, false, global4.x), vec4<i32>(-74284i, -2147483647i, -1i, var_0.c), var_1.e)), _wgslsmith_add_vec2_u32(reverseBits(arg_2), vec2<u32>(var_0.a.x, 33169u))), _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.e << (70916u % 32u), abs(global4.x)), vec2<u32>(51943u, 419u) >> (_wgslsmith_sub_vec2_u32(vec2<u32>(var_0.a.x, u_input.a), vec2<u32>(u_input.a, arg_2.x)) % vec2<u32>(32u))), u_input.a), ~abs(vec2<i32>(_wgslsmith_mult_i32(1i, -5342i), 1i)));
    let var_3 = _wgslsmith_add_i32(reverseBits(firstTrailingBit(max(1i, -var_1.b))), -(~(-2147483647i)));
    global3 = array<vec4<bool>, 10>();
    return 49237u;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<u32>, arg_2: i32, arg_3: f32) -> u32 {
    var var_0 = Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, min(countOneBits(global4.x | 0u), firstTrailingBit(~0u))), 11u)], ~vec4<i32>(_wgslsmith_mult_i32(arg_0.b, ~2147483647i), firstLeadingBit(arg_2), 2147483647i, reverseBits(~arg_2)), arg_2);
    global3 = array<vec4<bool>, 10>();
    global2 = array<Struct_1, 11>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_0.a.b.xx))) * _wgslsmith_f_op_vec2_f32(-arg_0.d.zz));
    let var_2 = all(select(select(arg_0.c, select(!vec4<bool>(arg_0.a, arg_0.c.x, false, arg_0.c.x), arg_0.c, global3[_wgslsmith_index_u32(func_2(var_0.b.wxw, false, vec2<u32>(var_0.a.e, global4.x)), 10u)]), true && all(vec2<bool>(true, var_0.a.d))), vec4<bool>(arg_0.c.x, any(arg_0.c.wxw), var_0.a.d, var_0.a.d), any(select(arg_0.c, vec4<bool>(var_0.a.d, true, true, var_0.a.d), true))));
    return arg_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(1135f + 1000f))))), 1577f, _wgslsmith_sub_u32(reverseBits(_wgslsmith_div_u32(u_input.a, 1u)), ~51333u) > _wgslsmith_div_u32(~(~49101u), ~(global4.x ^ global4.x))));
    global4 = _wgslsmith_add_vec3_u32(vec3<u32>(50084u, _wgslsmith_clamp_u32(func_1(Struct_3(true, 48567i, global3[_wgslsmith_index_u32(global4.x, 10u)], vec3<f32>(global1.x, var_0, global1.x), -13256i), vec4<u32>(global4.x, global4.x, 4294967295u, u_input.a), -12574i, -1179f), global4.x, abs(_wgslsmith_mult_u32(u_input.a, u_input.a))), ~4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(abs(2233u), _wgslsmith_sub_u32(~0u, func_1(Struct_3(true, 1i, global3[_wgslsmith_index_u32(u_input.a, 10u)], vec3<f32>(-1497f, var_0, global1.x), -14312i), vec4<u32>(48338u, u_input.a, u_input.a, global4.x), -7386i, var_0)), ~(~global4.x)), ~(vec3<u32>(11806u, global4.x, 4294967295u) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(global4.x, 58865u, 0u), vec3<u32>(global4.x, 4294967295u, 1u)) % vec3<u32>(32u)))));
    global3 = array<vec4<bool>, 10>();
    var var_1 = (((~u_input.a == min(global4.x, global4.x)) | select(global1.x >= global1.x, any(vec2<bool>(false, false)), all(vec4<bool>(true, false, true, false)))) | any(vec3<bool>(true, true, true))) && true;
    var var_2 = Struct_2(global2[_wgslsmith_index_u32(~firstLeadingBit(_wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(u_input.a, 27039u, 1u)), vec3<u32>(u_input.a, 13938u, 9206u) << (vec3<u32>(0u, 1u, 1u) % vec3<u32>(32u)))), 11u)], ~firstTrailingBit(vec4<i32>(6865i, abs(-32112i), 11643i, 1i)), firstLeadingBit(abs(~(-13306i))));
    global3 = array<vec4<bool>, 10>();
    global1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_f_op_f32(1063f - var_2.a.b.x), _wgslsmith_f_op_f32(step(var_2.a.b.x, global1.x)), _wgslsmith_f_op_f32(global1.x - var_0)))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1u << (var_2.a.a.x % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-var_0), -1024f)))));
}

