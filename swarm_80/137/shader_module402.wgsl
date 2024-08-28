struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
    c: vec3<f32>,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: Struct_1,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec3<u32>,
    b: Struct_2,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 19>;

var<private> global1: Struct_5 = Struct_5(vec3<u32>(4294967295u, 49630u, 105121u), Struct_2(Struct_1(vec2<f32>(-1986f, -1634f), false, false, vec4<f32>(1197f, 1475f, -368f, 285f)), vec3<i32>(0i, 2584i, -29481i), vec3<f32>(-933f, 752f, 361f), Struct_1(vec2<f32>(1000f, -312f), true, true, vec4<f32>(-824f, -1362f, -823f, 616f)), vec4<i32>(2147483647i, 67683i, 4331i, 22071i)), -65307i);

var<private> global2: Struct_2;

var<private> global3: vec3<bool>;

var<private> global4: array<u32, 26> = array<u32, 26>(1u, 4294967295u, 769u, 22831u, 0u, 0u, 82412u, 8846u, 34313u, 4294967295u, 1u, 13431u, 0u, 4294967295u, 56583u, 0u, 0u, 1u, 1u, 4294967295u, 41026u, 85699u, 4294967295u, 0u, 27746u, 11305u);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> vec3<bool> {
    let var_0 = -781f;
    var var_1 = 84396u;
    global2 = global1.b;
    let var_2 = reverseBits(~global1.a);
    let var_3 = _wgslsmith_add_i32(-(global1.b.b.x | -1i), _wgslsmith_mult_i32(global1.b.e.x, i32(-1i) * -16345i));
    return vec3<bool>(global1.b.d.b, true, !global2.a.c);
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-global2.d.a)))), global2.c.x < global1.b.c.x, ~(-61114i) >= (_wgslsmith_sub_i32(17391i, global1.c) << (1u % 32u)), vec4<f32>(_wgslsmith_f_op_f32(step(-1374f, _wgslsmith_div_f32(-167f, 332f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), -1371f, _wgslsmith_f_op_f32(-global1.b.d.d.x))), _wgslsmith_div_vec3_i32(global2.b, firstLeadingBit(~vec3<i32>(global2.b.x, 3331i, 27132i)) | -global1.b.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global1.b.a.d.wwy)), Struct_1(_wgslsmith_f_op_vec2_f32(-global1.b.a.a), true, !any(vec2<bool>(global3.x, global2.d.c)), _wgslsmith_f_op_vec4_f32(max(global2.a.d, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.b.a.d, global1.b.a.d))))), -(~select(global1.b.e << (vec4<u32>(83747u, 58970u, global4[_wgslsmith_index_u32(12484u, 26u)], 37949u) % vec4<u32>(32u)), firstLeadingBit(vec4<i32>(global2.e.x, 1229i, global1.c, global1.b.e.x)), vec4<bool>(global3.x, global2.d.b, false, true))));
    var var_1 = global1.b.d.a.x;
    var var_2 = 742u;
    var var_3 = global2.e.zwy;
    global0 = array<vec2<i32>, 19>();
    return vec3<u32>(_wgslsmith_add_u32(65221u, global4[_wgslsmith_index_u32(101344u, 26u)]), _wgslsmith_dot_vec2_u32(vec2<u32>(select(u_input.a.x, ~global1.a.x, any(global3.yy)), 89u), ~(~(~vec2<u32>(17330u, u_input.b.x)))), _wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_clamp_vec2_u32(global1.a.yy, vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(39494u, 4294967295u, 38238u), global1.a), min(35100u, global1.a.x)), _wgslsmith_mod_vec2_u32(global1.a.zx >> (global1.a.zx % vec2<u32>(32u)), vec2<u32>(8041u, 53492u)))));
}

fn func_1(arg_0: vec4<i32>) -> vec4<i32> {
    var var_0 = any(!(!select(vec3<bool>(global1.b.a.c, global3.x, global1.b.a.b), func_2(), !vec3<bool>(global3.x, true, true))));
    var_0 = !any(select(global3.yz, global3.zz, select(true, true, false)));
    var var_1 = ~(~(u_input.b ^ ~global1.a.xy)) & u_input.b;
    global1 = Struct_5(_wgslsmith_mod_vec3_u32(abs(~select(vec3<u32>(64601u, u_input.a.x, 39239u), global1.a, global1.b.d.c)), min(~global1.a, func_3())), Struct_2(global2.d, ~reverseBits(-global2.e.ywx), global2.d.d.wwx, Struct_1(global2.c.xz, global3.x, any(!vec3<bool>(global2.d.b, global1.b.d.c, global2.d.c)), global2.d.d), max(-(~global1.b.e), global1.b.e & vec4<i32>(-1i, global2.b.x, 69336i, -41124i))), -46396i);
    let var_2 = vec4<i32>(global2.e.x, -(1i & -global1.b.b.x), 352i, -35637i);
    return -global1.b.e;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2.a.d.x)) * global2.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -949f) - _wgslsmith_f_op_f32(ceil(global2.c.x)))), true, global2.a.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(global1.b.d.d, _wgslsmith_div_vec4_f32(global1.b.a.d, vec4<f32>(global2.a.d.x, 1979f, global1.b.a.d.x, 1000f))))), global2.e.xww, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, _wgslsmith_f_op_f32(-global1.b.d.a.x), _wgslsmith_f_op_f32(select(1000f, -153f, global3.x)))))), Struct_1(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.c.x) * -418f), global2.a.a.x), global2.d.c, false, global2.a.d), func_1(~vec4<i32>(reverseBits(global2.b.x), reverseBits(global1.c), _wgslsmith_dot_vec3_i32(global1.b.b, vec3<i32>(global1.c, 2147483647i, global2.e.x)), i32(-1i) * -2147483647i)));
    var var_1 = _wgslsmith_f_op_f32(var_0.a.d.x * global1.b.c.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(var_0.a.a));
    let var_3 = !func_2();
    global4 = array<u32, 26>();
    let var_4 = var_3;
    var var_5 = Struct_5(reverseBits(_wgslsmith_sub_vec3_u32(global1.a, vec3<u32>(_wgslsmith_mod_u32(u_input.a.x, global4[_wgslsmith_index_u32(u_input.a.x, 26u)]), u_input.b.x, _wgslsmith_mult_u32(global1.a.x, 13356u)))), global1.b, _wgslsmith_clamp_i32(-select(-var_0.b.x, min(30404i, global2.e.x), all(var_4.zx)), global2.b.x, global1.b.e.x));
    global4 = array<u32, 26>();
    let var_6 = _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global2.b.zz, var_5.b.b.yz), global1.c) & -1i;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_div_u32(var_5.a.x, ~4294967295u)));
}

