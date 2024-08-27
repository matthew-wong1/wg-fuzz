struct Struct_1 {
    a: i32,
    b: f32,
    c: vec3<f32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: vec3<i32>,
    b: bool,
    c: vec3<u32>,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -39267i;

var<private> global1: Struct_2;

var<private> global2: Struct_4 = Struct_4(vec3<i32>(5314i, -29851i, -13633i), false, vec3<u32>(1u, 39219u, 83567u), vec3<u32>(0u, 21833u, 70522u));

var<private> global3: f32 = 496f;

var<private> global4: Struct_3 = Struct_3(Struct_1(2967i, 637f, vec3<f32>(1000f, -903f, -1133f), -2308f, 18686i), Struct_2(Struct_1(i32(-2147483648), 515f, vec3<f32>(123f, -2018f, 1612f), 1476f, 0i), false, vec2<u32>(0u, 4294967295u), vec4<f32>(-1250f, 200f, -195f, 2710f)), 0u, vec2<u32>(4294967295u, 4294967295u));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<f32>, arg_2: Struct_2, arg_3: vec4<u32>) -> bool {
    var var_0 = !vec2<bool>(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) > arg_1.x);
    return false && select(global2.b, !global4.b.b, !(!global4.b.b));
}

fn func_3() -> vec3<i32> {
    var var_0 = _wgslsmith_mod_vec4_u32(~vec4<u32>(_wgslsmith_sub_u32(u_input.a.x | 1u, u_input.a.x), 88428u, 1u, 1u), u_input.a);
    return ~((max(global2.a, u_input.b.yww) & u_input.b.yxx) << (global2.c % vec3<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_i32(select(vec3<i32>(u_input.b.x, -1i, _wgslsmith_mod_i32(-1i, _wgslsmith_add_i32(u_input.d, 0i))), _wgslsmith_add_vec3_i32(firstTrailingBit(u_input.b.ywz), ~(~global2.a)), false & func_2(~vec2<u32>(global4.d.x, u_input.a.x), _wgslsmith_f_op_vec3_f32(global1.d.xxy - global4.a.c), Struct_2(Struct_1(-2147483647i, global4.a.b, global4.b.d.yyx, global1.d.x, u_input.b.x), true, global4.d, vec4<f32>(-1224f, global1.a.b, 271f, -251f)), ~u_input.a)), abs(func_3()) << (max(_wgslsmith_clamp_vec3_u32(u_input.a.yxz, _wgslsmith_add_vec3_u32(global2.c, global2.d), ~global2.c), vec3<u32>(firstTrailingBit(global2.d.x), 1u, 23912u)) % vec3<u32>(32u)));
    var var_0 = firstTrailingBit(reverseBits(27481u));
    var var_1 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.a.e, u_input.d), vec2<i32>(min(firstLeadingBit(-24762i), _wgslsmith_sub_i32(u_input.c, global1.a.e)), -8344i)), _wgslsmith_f_op_f32(-global1.a.b), _wgslsmith_f_op_vec3_f32(select(global1.d.wxw, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.b.d.x, global4.b.d.x, 1930f))), select(!(!vec3<bool>(global2.b, true, false)), vec3<bool>(all(vec3<bool>(global2.b, false, true)), global1.b, !global4.b.b), select(!vec3<bool>(true, true, global4.b.b), select(vec3<bool>(true, global4.b.b, true), vec3<bool>(true, true, true), global1.b), global2.b == global1.b)))), -691f, u_input.b.x);
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.c.yy, var_1.c.yz, vec2<bool>(global1.b, global1.b))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(global1.d.xw)) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1000f, global4.b.d.x), global4.b.d.xw, true)))) - var_1.c.zy)));
    let var_3 = ~global2.d.x;
    return Struct_1(-2147483647i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.d)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.d.x * var_1.b))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global4.a.d), -646f, global1.a.d)), _wgslsmith_f_op_f32(max(global1.a.d, 980f)), -_wgslsmith_add_i32(-_wgslsmith_add_i32(global2.a.x, 0i), -(global1.a.e >> (0u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(func_1(), true, _wgslsmith_clamp_vec2_u32(firstLeadingBit(~(~vec2<u32>(68680u, global2.c.x))), abs(global1.c), vec2<u32>(max(min(global1.c.x, 20680u), select(4294967295u, 54738u, false)), min(global4.c << (global1.c.x % 32u), _wgslsmith_dot_vec2_u32(u_input.a.ww, vec2<u32>(u_input.a.x, 4294967295u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(global4.a.c.x, -303f), 2587f, _wgslsmith_div_f32(1000f, global1.a.b), _wgslsmith_f_op_f32(1394f * global4.a.d)) + global1.d)));
    var var_0 = func_2(~(~vec2<u32>(global1.c.x | global2.d.x, _wgslsmith_div_u32(1u, u_input.a.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-237f, -1089f, -1243f), global1.a.c))) + vec3<f32>(187f, global4.b.d.x, func_1().c.x))), global4.b, ~vec4<u32>(_wgslsmith_sub_u32(~48921u, _wgslsmith_sub_u32(19766u, 0u)), 1u, _wgslsmith_sub_u32(~6831u, max(4294967295u, u_input.a.x)), ~global2.d.x));
    var var_1 = global4.b;
    let var_2 = u_input.a.yyy;
    let var_3 = select(!vec2<bool>(!global4.b.b, select(global1.b, true, all(vec4<bool>(false, global4.b.b, false, global2.b)))), !select(vec2<bool>(var_1.b, false), select(vec2<bool>(global2.b, global2.b), select(vec2<bool>(global4.b.b, false), vec2<bool>(true, var_1.b), vec2<bool>(global1.b, global1.b)), select(vec2<bool>(false, global2.b), vec2<bool>(var_1.b, var_1.b), global1.b)), var_1.b), !vec2<bool>(true, var_1.b));
    var_1 = Struct_2(Struct_1(~(-2147483647i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(529f * -1000f) * global1.d.x)), var_1.d.wzz, global1.d.x, -min(43374i, _wgslsmith_mod_i32(var_1.a.a, 0i))), any(select(vec4<bool>(true, u_input.a.x == 21990u, all(vec4<bool>(global4.b.b, var_1.b, true, var_3.x)), true), select(select(vec4<bool>(global2.b, true, global4.b.b, global1.b), vec4<bool>(var_3.x, false, var_1.b, true), vec4<bool>(global1.b, true, global1.b, global4.b.b)), !vec4<bool>(false, var_1.b, false, var_1.b), true), _wgslsmith_f_op_f32(1745f + var_1.d.x) == _wgslsmith_f_op_f32(sign(-294f)))), reverseBits(reverseBits(vec2<u32>(~1u, countOneBits(global2.d.x)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(1010f, global1.d.x, -1000f, global1.a.d), _wgslsmith_f_op_vec4_f32(-global4.b.d))) - vec4<f32>(_wgslsmith_f_op_f32(global4.b.d.x + global1.d.x), _wgslsmith_f_op_f32(752f + global1.d.x), global1.a.c.x, _wgslsmith_f_op_f32(-var_1.a.b))), vec4<f32>(global1.a.b, 1673f, -2290f, var_1.a.b)));
    global2 = Struct_4(-_wgslsmith_mod_vec3_i32(u_input.b.zww, global2.a), global2.b, countOneBits(min(~vec3<u32>(35743u, global1.c.x, 0u), firstTrailingBit(global2.c | vec3<u32>(0u, 32096u, var_1.c.x)))), vec3<u32>(var_1.c.x, 4294967295u, global2.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.a.e, u_input.c, u_input.d), _wgslsmith_sub_vec4_i32(vec4<i32>(global4.a.e, u_input.d, -14777i, global4.a.a), u_input.b)), reverseBits(func_3().x)), -(~vec2<i32>(0i, -11240i)), select(vec2<bool>(global2.b, !var_1.b), var_3, select(vec2<bool>(global1.b, true), vec2<bool>(global2.b, true), true))), global1.c.x, _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(global4.b.a.a & _wgslsmith_mult_i32(5092i, u_input.c), abs(global4.a.e) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.a.e, -693i), vec2<i32>(global2.a.x, 2147483647i)), global2.a.x, 3271i)));
}

