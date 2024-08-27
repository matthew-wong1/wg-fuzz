struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: i32,
    d: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: Struct_2,
    c: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec2<bool>,
    c: Struct_2,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<Struct_2, 2>;

var<private> global2: array<i32, 29>;

var<private> global3: vec3<u32> = vec3<u32>(1u, 0u, 1u);

var<private> global4: array<i32, 1> = array<i32, 1>(1i);

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: vec3<f32>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(trunc(1619f)), _wgslsmith_f_op_f32(trunc(-1302f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(step(1457f, _wgslsmith_f_op_f32(f32(-1f) * -1218f))))));
    var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 1112f, -190f) * vec4<f32>(1827f, 279f, var_0.x, -2188f)) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_1.x, -132f, arg_1.x, -519f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(arg_1.x, arg_1.x)), arg_1.x, _wgslsmith_f_op_f32(-888f + arg_1.x), _wgslsmith_f_op_f32(ceil(564f)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, var_0.x, var_0.x, arg_1.x) + vec4<f32>(-233f, var_0.x, var_0.x, var_0.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, arg_1.x, 1696f) * vec4<f32>(arg_1.x, 272f, 1365f, 916f))))));
    global1 = array<Struct_2, 2>();
    var var_1 = reverseBits(arg_2.zz | ~min(vec2<i32>(-32421i, arg_2.x), -u_input.d.zy));
    global2 = array<i32, 29>();
    return 0u;
}

fn func_2(arg_0: vec3<bool>) -> Struct_4 {
    global3 = ~vec3<u32>(func_3(select(~vec3<u32>(u_input.c, 0u, 3905u), vec3<u32>(50542u, 16272u, global3.x), true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1120f, -608f, 838f) + vec3<f32>(285f, -419f, -1204f))), -vec4<i32>(global2[_wgslsmith_index_u32(67484u, 29u)], u_input.a, u_input.d.x, global2[_wgslsmith_index_u32(u_input.c, 29u)]), global3.yy), 1u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(global3.x, global3.x, 35694u, 1u), vec4<u32>(1u, 80821u, 27538u, u_input.c) | vec4<u32>(31806u, 0u, 26526u, 4294967295u)));
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = true;
    let var_2 = u_input.b;
    var var_3 = abs(max(vec2<u32>(global3.x, 39792u) >> (vec2<u32>(33267u, 1u) % vec2<u32>(32u)), vec2<u32>(36160u, u_input.c)) | min(global3.yz, countOneBits(vec2<u32>(1u, var_2)))) & global3.xz;
    return Struct_4(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(abs(abs(min(global3.x, var_2))), 41057u), 29u)], arg_0.yx, Struct_2(Struct_1(!select(vec4<bool>(true, false, arg_0.x, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x), vec4<bool>(arg_0.x, false, false, false)), _wgslsmith_clamp_u32(var_3.x << (u_input.c % 32u), _wgslsmith_clamp_u32(18338u, var_2, u_input.b), _wgslsmith_div_u32(var_3.x, 59169u)), -2147483647i, _wgslsmith_add_vec3_u32(~vec3<u32>(var_3.x, 1u, u_input.b), vec3<u32>(59147u, 20457u, var_2))), vec2<u32>(~1u | select(0u, global3.x, arg_0.x), ~(~var_2))), _wgslsmith_div_vec3_f32(vec3<f32>(1f, 1865f, _wgslsmith_div_f32(-240f, _wgslsmith_f_op_f32(floor(-1281f)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-519f, 805f, 540f))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(321f, 1043f, -805f))), _wgslsmith_div_vec3_f32(vec3<f32>(-520f, 805f, -1000f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 268f, 169f))))));
}

fn func_4(arg_0: Struct_4, arg_1: vec4<u32>, arg_2: u32, arg_3: vec3<f32>) -> u32 {
    let var_0 = Struct_3(arg_0.c.a.a.zx, arg_0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d.x, arg_3.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0.d.x, -983f), arg_3.zz, arg_0.c.a.a.x))), true))));
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(arg_1.yyx, var_0.b.a.d), vec3<u32>(arg_1.x, arg_0.c.b.x | arg_2, ~global3.x));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1, arg_3: f32) -> f32 {
    global0 = any(select(!select(vec4<bool>(true, arg_0.a.x, false, arg_1.x), !vec4<bool>(arg_1.x, true, false, true), vec4<bool>(arg_0.a.x, arg_1.x, false, arg_0.a.x)), vec4<bool>(arg_2.a.x, true, true, true), true));
    var var_0 = arg_0;
    global3 = vec3<u32>(var_0.b << (~reverseBits(arg_2.b) % 32u), global3.x, ~_wgslsmith_dot_vec2_u32(~var_0.d.yx, countOneBits(vec2<u32>(49489u, 20050u))));
    let var_1 = global1[_wgslsmith_index_u32(1u, 2u)];
    global3 = select(~vec3<u32>(var_0.b ^ _wgslsmith_mult_u32(arg_0.b, arg_2.d.x), func_4(func_2(vec3<bool>(var_1.a.a.x, true, false)), abs(vec4<u32>(0u, var_1.a.d.x, arg_2.d.x, 1u)), firstTrailingBit(5078u), vec3<f32>(1218f, -910f, -1783f)), var_0.b), arg_0.d, vec3<bool>(any(vec3<bool>(!arg_2.a.x, true, !arg_0.a.x)), !var_1.a.a.x, true));
    return 993f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2737f * -1023f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(426f)) - 536f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_1(vec4<bool>(true, true, false, false), u_input.b, -2147483647i, vec3<u32>(1u, 93214u, u_input.b)), vec3<bool>(false, true, false), Struct_1(vec4<bool>(false, false, true, true), 31172u, 0i, vec3<u32>(u_input.c, 20375u, 38987u)), -326f))))));
    let var_1 = var_0;
    var var_2 = false;
    let var_3 = u_input.d;
    var var_4 = Struct_1(vec4<bool>(func_2(vec3<bool>(true, true, true)).b.x, _wgslsmith_mod_u32(~global3.x, firstLeadingBit(4294967295u)) == 21422u, any(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), false)), true), _wgslsmith_dot_vec3_u32(~(firstTrailingBit(vec3<u32>(u_input.c, 50389u, u_input.c)) >> (~vec3<u32>(u_input.c, 74114u, 0u) % vec3<u32>(32u))), ~(max(vec3<u32>(52617u, 0u, 4294967295u), vec3<u32>(u_input.c, global3.x, 7189u)) >> (vec3<u32>(global3.x, u_input.c, u_input.b) % vec3<u32>(32u)))), 1i, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, ~0u << (firstTrailingBit(u_input.c) % 32u)), vec3<u32>(global3.x, _wgslsmith_add_u32(func_2(vec3<bool>(true, false, false)).c.b.x, ~global3.x), global3.x)));
    var var_5 = func_2(select(func_2(vec3<bool>(true, -373f >= var_0.x, var_4.a.x)).c.a.a.zxx, vec3<bool>(true, true, any(var_4.a.zy)), !select(var_4.a.wwx, select(var_4.a.xxz, var_4.a.wwz, false), !var_4.a.yzz))).c.a;
    let x = u_input.a;
    s_output = StorageBuffer(~select(max(~vec3<u32>(var_5.b, var_5.b, 39857u), var_5.d), var_4.d, var_5.a.ywx), var_1, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d), max(var_3.xy, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.d.x, 0i), -vec2<i32>(0i, -1i))) | vec2<i32>(~_wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(global4[_wgslsmith_index_u32(var_4.b, 1u)], u_input.a)), select(~global2[_wgslsmith_index_u32(4294967295u, 29u)], u_input.d.x, true)));
}

