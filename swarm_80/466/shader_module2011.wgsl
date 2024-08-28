struct Struct_1 {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 1>;

var<private> global1: array<bool, 3> = array<bool, 3>(true, true, false);

var<private> global2: bool;

var<private> global3: array<Struct_1, 19>;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: u32) -> vec3<i32> {
    let var_0 = _wgslsmith_clamp_vec4_i32(abs(arg_0.b) | -(~arg_1.b >> (~vec4<u32>(arg_2, 0u, 4294967295u, 0u) % vec4<u32>(32u))), ~(-arg_1.b ^ ~vec4<i32>(24398i, u_input.a, 20851i, u_input.a)) & vec4<i32>(abs(u_input.e), _wgslsmith_dot_vec3_i32(arg_1.b.zxw, vec3<i32>(arg_0.b.x, 2147483647i, -37437i)) ^ (u_input.a >> (u_input.b.x % 32u)), u_input.a, -7743i), arg_0.b);
    global0 = array<Struct_1, 1>();
    global1 = array<bool, 3>();
    var var_1 = arg_0.a.x;
    let var_2 = Struct_1(arg_1.b.zwx, vec4<i32>(1i, -1529i, arg_1.a.x, reverseBits(arg_0.b.x)));
    return var_2.b.xxz;
}

fn func_4(arg_0: Struct_1) -> vec3<i32> {
    var var_0 = -(vec2<i32>(-1i) * -vec2<i32>(_wgslsmith_div_i32(46592i, 43932i), ~(-1i)));
    let var_1 = min(u_input.b.ww, vec2<u32>(u_input.b.x, countOneBits(~reverseBits(46237u))));
    global0 = array<Struct_1, 1>();
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1854f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-807f * -1454f), _wgslsmith_f_op_f32(floor(-1000f)))), _wgslsmith_f_op_f32(f32(-1f) * -2023f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(593f, -1570f))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1999f, 315f, -1401f, -2048f)))))));
    let var_3 = Struct_1(~abs(-(~arg_0.a)), min(abs(arg_0.b), vec4<i32>(1i, 24331i, 1i, 0i) >> (vec4<u32>(1u, ~4294967295u, ~95080u, var_1.x) % vec4<u32>(32u))));
    return -(~vec3<i32>(_wgslsmith_clamp_i32(var_3.a.x, 9227i, arg_0.a.x), var_0.x, 0i) >> (vec3<u32>(var_1.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 0u, 0u), vec3<u32>(var_1.x, 35348u, u_input.c)), _wgslsmith_div_u32(var_1.x, ~var_1.x)) % vec3<u32>(32u)));
}

fn func_2() -> vec3<i32> {
    let var_0 = u_input.c;
    let var_1 = Struct_1(func_4(Struct_1(_wgslsmith_mod_vec3_i32(func_3(global3[_wgslsmith_index_u32(32827u, 19u)], global3[_wgslsmith_index_u32(4294967295u, 19u)], var_0), ~vec3<i32>(u_input.a, u_input.e, -38347i)), -vec4<i32>(1i, -31157i, u_input.d.x, u_input.d.x) >> (_wgslsmith_clamp_vec4_u32(vec4<u32>(var_0, 0u, 1u, 1u), vec4<u32>(66999u, 0u, var_0, 4294967295u), u_input.b) % vec4<u32>(32u)))), _wgslsmith_add_vec4_i32(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d.x, u_input.a, u_input.a, 0i), max(vec4<i32>(u_input.a, 0i, 23449i, u_input.d.x), vec4<i32>(u_input.a, u_input.d.x, u_input.a, -2147483647i)))), -_wgslsmith_add_vec4_i32(vec4<i32>(1i, -1i, -1i, 2147483647i), vec4<i32>(u_input.a, 58459i, -1i, -43938i)) & (countOneBits(vec4<i32>(u_input.e, u_input.e, -38760i, u_input.e)) | -vec4<i32>(37448i, u_input.e, -26321i, u_input.a))));
    global1 = array<bool, 3>();
    global3 = array<Struct_1, 19>();
    global2 = !global1[_wgslsmith_index_u32(reverseBits(~(u_input.b.x ^ _wgslsmith_dot_vec4_u32(vec4<u32>(var_0, var_0, 1u, u_input.b.x), vec4<u32>(var_0, 46354u, 0u, u_input.c)))), 3u)];
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: vec2<u32>) -> Struct_1 {
    let var_0 = vec2<i32>(27530i, i32(-1i) * -10737i);
    let var_1 = -143f;
    global2 = global1[_wgslsmith_index_u32(u_input.c, 3u)];
    global2 = true;
    let var_2 = -52674i;
    return Struct_1(func_2(), -countOneBits(reverseBits(firstLeadingBit(vec4<i32>(var_2, 2147483647i, -1i, u_input.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 1>();
    let var_0 = func_1(~1i, vec2<u32>(u_input.c, 1u) & vec2<u32>(max(~42287u, u_input.b.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.c), u_input.b)));
    var var_1 = vec3<bool>(global1[_wgslsmith_index_u32(u_input.b.x, 3u)], !global1[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(1u, 4294967295u), ~u_input.b.x), 3u)], true);
    global3 = array<Struct_1, 19>();
    var var_2 = _wgslsmith_add_i32(u_input.a, select(18688i, u_input.e, false));
    let var_3 = _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(abs(vec4<i32>(-1i) * -var_0.b), ~var_0.b, vec4<i32>(_wgslsmith_add_i32(var_0.b.x, var_0.b.x & u_input.a), -_wgslsmith_sub_i32(var_0.a.x, 43322i), var_0.a.x, -2781i)), _wgslsmith_mult_vec4_i32(firstLeadingBit(~var_0.b >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.c, 77379u, 50051u), u_input.b) % vec4<u32>(32u))), vec4<i32>(u_input.d.x, 2147483647i, ~u_input.a, ~abs(u_input.d.x))));
    let var_4 = ~_wgslsmith_sub_i32(~(-2147483647i), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b.zzw, select(select(u_input.b.xyz, u_input.b.xxy, vec3<bool>(global1[_wgslsmith_index_u32(47896u, 3u)], global1[_wgslsmith_index_u32(0u, 3u)], var_1.x)), _wgslsmith_mult_vec3_u32(u_input.b.yyz, vec3<u32>(0u, 48741u, 36273u)), vec3<bool>(var_1.x, true, global1[_wgslsmith_index_u32(1u, 3u)])), true) << (max(u_input.b.zzz, u_input.b.wxy) % vec3<u32>(32u)), -var_3, 414f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(438f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1395f))));
}

