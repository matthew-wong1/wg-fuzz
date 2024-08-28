struct Struct_1 {
    a: vec2<f32>,
    b: vec3<u32>,
    c: u32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<f32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 22>;

var<private> global1: array<u32, 13>;

var<private> global2: array<Struct_1, 1>;

var<private> global3: vec4<i32>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(u_input.a, 1u)];
    var var_1 = 1u;
    let var_2 = -1769f;
    var var_3 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(-916f, var_2) * vec2<f32>(_wgslsmith_f_op_f32(step(var_0.a.x, 1013f)), -517f)), u_input.b, ~_wgslsmith_add_u32(0u, global1[_wgslsmith_index_u32(reverseBits(4294967295u), 13u)]), max(vec2<u32>(u_input.d, 4294967295u), u_input.b.xy)), 0i);
    global2 = array<Struct_1, 1>();
    return abs(firstTrailingBit(4294967295u)) ^ 6823u;
}

fn func_2(arg_0: bool) -> i32 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1302f, _wgslsmith_div_f32(-874f, -965f))), vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(206f)) - _wgslsmith_f_op_f32(691f + 606f))))), vec3<u32>(countOneBits(~(~1u)), ~27790u, func_3(true)), func_3(all(select(vec3<bool>(arg_0, arg_0, arg_0), !vec3<bool>(true, true, arg_0), !vec3<bool>(arg_0, arg_0, true)))), u_input.b.xy & ((~u_input.b.xx & u_input.b.xx) ^ u_input.b.yx));
    var var_1 = global2[_wgslsmith_index_u32(~1u, 1u)];
    var_0 = global2[_wgslsmith_index_u32(~u_input.b.x, 1u)];
    let var_2 = !vec4<bool>(all(!(!vec3<bool>(true, true, arg_0))), true, true, arg_0);
    global3 = (-((vec4<i32>(12161i, -5651i, global3.x, u_input.c) >> (vec4<u32>(var_1.b.x, 4245u, 69348u, 6297u) % vec4<u32>(32u))) ^ ~vec4<i32>(global3.x, u_input.c, -36490i, 0i)) ^ vec4<i32>(~(u_input.c >> (var_0.d.x % 32u)), abs(abs(12778i)), _wgslsmith_mult_i32(u_input.c, 1i) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 20006u), vec2<u32>(var_1.c, global1[_wgslsmith_index_u32(4294967295u, 13u)])) % 32u), -countOneBits(u_input.c))) << (~_wgslsmith_mult_vec4_u32(~vec4<u32>(var_0.b.x, var_0.c, 7364u, global1[_wgslsmith_index_u32(12776u, 13u)]), firstLeadingBit(countOneBits(vec4<u32>(8802u, var_0.d.x, var_0.d.x, 1u)))) % vec4<u32>(32u));
    return -2147483647i;
}

fn func_1(arg_0: f32, arg_1: i32) -> f32 {
    global1 = array<u32, 13>();
    global3 = ~vec4<i32>(_wgslsmith_mod_i32(~(-8777i), max(arg_1, -1i)), func_2(true), global3.x, ~(-1i)) ^ vec4<i32>(-2147483647i, abs(arg_1), -14255i, global3.x);
    let var_0 = func_3(false);
    global2 = array<Struct_1, 1>();
    var var_1 = u_input.d;
    return _wgslsmith_div_f32(1000f, arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<u32, 13>();
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-674f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(376f * -456f), -2567f), _wgslsmith_f_op_f32(-926f * _wgslsmith_f_op_f32(func_1(537f, u_input.c)))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(927f)), -836f, _wgslsmith_f_op_f32(f32(-1f) * -363f)) + vec3<f32>(_wgslsmith_div_f32(-1344f, 1384f), -332f, -721f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1209f, 1160f, -330f), vec3<f32>(1826f, 1151f, 579f), false)))), _wgslsmith_div_vec3_f32(vec3<f32>(1000f, 178f, 341f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-982f, -514f, -508f), vec3<f32>(1943f, -406f, -364f), true)))))));
    let var_1 = 0i;
    let var_2 = firstTrailingBit(vec3<u32>(~55548u, 0u, ~0u));
    global3 = select(vec4<i32>(1i, global3.x, global3.x, u_input.c), vec4<i32>(var_1, -abs(u_input.c) << (~(~global1[_wgslsmith_index_u32(14167u, 13u)]) % 32u), var_1, -_wgslsmith_add_i32(_wgslsmith_mult_i32(var_1, 14145i), 1i)), true);
    global1 = array<u32, 13>();
    let var_3 = Struct_3(u_input.c, Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x + var_0.x) * _wgslsmith_f_op_f32(var_0.x - -595f))), firstTrailingBit(vec3<u32>(1u, 1u, 1u)), reverseBits(~(var_2.x << (u_input.b.x % 32u))), u_input.b.zy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1024f, _wgslsmith_f_op_f32(180f + var_0.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1596f, -187f))))) * _wgslsmith_f_op_vec2_f32(-var_0.zz)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(~0u, var_2.x, ~99552u, u_input.d), ~vec4<u32>(13500u, 4294967295u, var_2.x, 1u)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.zy);
}

