struct Struct_1 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec3<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: vec3<i32>,
    d: vec4<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-439f, -504f, 682f);

var<private> global1: Struct_3;

var<private> global2: bool;

var<private> global3: array<Struct_1, 6>;

var<private> global4: vec3<i32>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: i32, arg_2: vec4<f32>, arg_3: bool) -> u32 {
    global1 = Struct_3(Struct_1(!select(global1.a.a, global1.a.a, select(arg_0.x, true, global1.a.a.x)), -412f));
    let var_0 = arg_1;
    var var_1 = global3[_wgslsmith_index_u32(~4294967295u, 6u)];
    return 1u;
}

fn func_2(arg_0: u32) -> Struct_3 {
    global1 = Struct_3(global3[_wgslsmith_index_u32(~(~u_input.d.x | _wgslsmith_div_u32(arg_0, arg_0)) | _wgslsmith_mod_u32(~_wgslsmith_mod_u32(u_input.c.x, u_input.b), func_3(vec2<bool>(true, true), global4.x, vec4<f32>(1428f, global1.a.b, global0.x, global0.x), global1.a.a.x)), 6u)]);
    let var_0 = max(abs(select(~vec3<i32>(-16048i, 7745i, 491i), max(vec3<i32>(global4.x, 0i, 0i) & vec3<i32>(-29561i, -1i, -59507i), vec3<i32>(-5324i, 22362i, -9500i)), !global1.a.a)), vec3<i32>(abs(global4.x & 1i), global4.x, global4.x) ^ vec3<i32>(_wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(global4.x, -1i, 0i)), select(vec3<i32>(global4.x, global4.x, -17367i), vec3<i32>(2147483647i, 51019i, 2147483647i), vec3<bool>(false, false, true))), global4.x, 59878i));
    var var_1 = Struct_3(global3[_wgslsmith_index_u32(u_input.d.x, 6u)]);
    global3 = array<Struct_1, 6>();
    let var_2 = !(!var_1.a.a.x);
    return Struct_3(Struct_1(global1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(206f, 1764f, true)))))));
}

fn func_1() -> f32 {
    global1 = func_2(~u_input.a.x);
    global4 = abs(min(~(-vec3<i32>(global4.x, global4.x, -2147483647i) ^ -vec3<i32>(global4.x, -19838i, -1i)), -_wgslsmith_sub_vec3_i32(vec3<i32>(global4.x, global4.x, global4.x), countOneBits(vec3<i32>(global4.x, -3750i, -35982i)))));
    global3 = array<Struct_1, 6>();
    var var_0 = -29468i;
    var var_1 = firstTrailingBit(~vec4<i32>(-1i, _wgslsmith_sub_i32(global4.x, global4.x), global4.x & global4.x, global4.x)) << (countOneBits(vec4<u32>(~min(u_input.d.x, 5140u), u_input.d.x, u_input.c.x, u_input.e.x)) % vec4<u32>(32u));
    return _wgslsmith_f_op_f32(floor(282f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(2147483647i ^ ~_wgslsmith_mod_i32(26162i, global4.x), -2147483647i);
    global0 = vec3<f32>(-705f, 1285f, _wgslsmith_div_f32(global1.a.b, -832f));
    var var_1 = vec3<bool>(true, global1.a.a.x, ~global4.x >= var_0);
    let var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1080f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -233f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1()))), _wgslsmith_div_f32(global1.a.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global1.a.b, global1.a.b)), _wgslsmith_f_op_f32(-global1.a.b)))) + vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(533f)))), -428f, global0.x));
    let var_3 = Struct_2(global4.x <= 2147483647i, Struct_1(global1.a.a, global0.x), vec4<u32>(func_3(vec2<bool>(!var_1.x, true), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(0i, global4.x, -23739i, var_0), vec4<i32>(-35475i, -61594i, 2147483647i, 0i), vec4<i32>(var_0, -2147483647i, 2147483647i, -22081i)), -vec4<i32>(70i, var_0, -1i, var_0)), vec4<f32>(-1278f, _wgslsmith_f_op_f32(min(global0.x, 272f)), _wgslsmith_f_op_f32(ceil(global1.a.b)), global0.x), true), u_input.a.x, u_input.b, 30620u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(func_3(global1.a.a.zx, -1i ^ global4.x, vec4<f32>(global0.x, _wgslsmith_f_op_f32(-var_2.x), global0.x, _wgslsmith_f_op_f32(f32(-1f) * -991f)), true), 61428u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(abs(-766f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.x, var_2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(394f, _wgslsmith_f_op_f32(-global0.x), 2145f, -1136f)))), ~(~max(vec3<i32>(var_0, -52907i, -34698i), vec3<i32>(-1i, -15154i, var_0)) << (vec3<u32>(~33168u, var_3.c.x, u_input.b) % vec3<u32>(32u))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(func_1()), var_2.x, -788f, 489f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, 567f, var_3.b.b, var_2.x)))), false)))), u_input.a.x);
}

