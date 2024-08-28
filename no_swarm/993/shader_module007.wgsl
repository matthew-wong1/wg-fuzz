struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: vec3<bool>,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<bool, 7>;

var<private> global2: array<vec4<bool>, 9>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> i32 {
    global1 = array<bool, 7>();
    var var_0 = !global1[_wgslsmith_index_u32(85536u, 7u)];
    global1 = array<bool, 7>();
    global2 = array<vec4<bool>, 9>();
    global2 = array<vec4<bool>, 9>();
    return global0.d.c;
}

fn func_2() -> Struct_2 {
    global1 = array<bool, 7>();
    let var_0 = -557f;
    global1 = array<bool, 7>();
    global2 = array<vec4<bool>, 9>();
    global1 = array<bool, 7>();
    return Struct_2(Struct_1(global0.d.d.x, func_3(global0.d), u_input.a.x, _wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c.x, 36371u, 5803u, 4294967295u), vec4<u32>(global0.d.a, 6596u, u_input.c.x, 81705u)), ~global0.a.d) & ~reverseBits(global0.a.d)), (_wgslsmith_clamp_vec2_i32(vec2<i32>(global0.d.c, global0.b.x), select(vec2<i32>(u_input.a.x, -15458i), vec2<i32>(-39434i, 9142i), vec2<bool>(false, global1[_wgslsmith_index_u32(global0.d.a, 7u)])), vec2<i32>(-770i, u_input.b) & u_input.e.yy) | -(~vec2<i32>(-78896i, -24170i))) | abs(u_input.e.zz), vec3<bool>(global1[_wgslsmith_index_u32(1u, 7u)], !global0.c.x, true), global0.d, global0.e);
}

fn func_1(arg_0: u32) -> Struct_2 {
    let var_0 = global2[_wgslsmith_index_u32(32360u, 9u)];
    let var_1 = func_2();
    let var_2 = global0.d;
    global0 = func_2();
    var var_3 = _wgslsmith_add_i32(i32(-1i) * -reverseBits(-var_1.a.b), _wgslsmith_mult_i32(u_input.b, _wgslsmith_sub_i32(min(_wgslsmith_add_i32(var_1.d.c, -6157i), -2147483647i << (global0.a.a % 32u)), _wgslsmith_clamp_i32(-var_2.b, _wgslsmith_mod_i32(33179i, var_2.c), _wgslsmith_mod_i32(-2147483647i, var_2.b)))));
    return Struct_2(Struct_1(firstTrailingBit(49309u ^ select(49609u, global0.d.a, true)), i32(-1i) * -(~36201i), _wgslsmith_mult_i32(var_1.d.b, u_input.e.x), vec4<u32>(max(~var_2.a, abs(31025u)), ~(~var_2.a), global0.d.a, abs(global0.d.d.x))), countOneBits((~u_input.a.xw ^ _wgslsmith_sub_vec2_i32(u_input.a.yw, vec2<i32>(var_2.b, global0.d.c))) & _wgslsmith_div_vec2_i32(vec2<i32>(36796i, 0i), countOneBits(u_input.a.yz))), !select(var_0.wzz, select(vec3<bool>(true, global1[_wgslsmith_index_u32(56893u, 7u)], false), func_2().c, global0.d.b < u_input.e.x), true), func_2().a, global0.e);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_div_u32(0u, 4294967295u));
    let var_0 = u_input.c.zx;
    global1 = array<bool, 7>();
    let var_1 = Struct_2(global0.d, _wgslsmith_div_vec2_i32(_wgslsmith_mod_vec2_i32(global0.b, -u_input.e.wx), global0.b), vec3<bool>(global0.c.x, var_0.x != ~(~var_0.x), false), Struct_1(_wgslsmith_mod_u32(var_0.x, 1u), ~(-u_input.a.x), global0.d.b, ~abs(~global0.a.d)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.e), _wgslsmith_f_op_vec3_f32(-global0.e)));
    let var_2 = global1[_wgslsmith_index_u32(0u, 7u)];
    var var_3 = ((-(~vec3<i32>(u_input.a.x, -5305i, 30251i)) | (abs(vec3<i32>(-1i, 1i, var_1.a.b)) >> (var_1.a.d.zzz % vec3<u32>(32u)))) << (_wgslsmith_mult_vec3_u32(global0.a.d.xyx, global0.d.d.wxx) % vec3<u32>(32u))) >> (reverseBits((vec3<u32>(var_0.x, var_0.x, u_input.c.x) & _wgslsmith_mod_vec3_u32(vec3<u32>(1u, global0.d.a, 0u), global0.d.d.wyy)) >> (~global0.d.d.zyz % vec3<u32>(32u))) % vec3<u32>(32u));
    let var_4 = 44460u;
    var_3 = vec3<i32>(i32(-1i) * -(~1i), 2147483647i, _wgslsmith_clamp_i32(var_3.x, _wgslsmith_sub_i32(-2147483647i, firstLeadingBit(u_input.b) >> ((var_4 >> (var_4 % 32u)) % 32u)), _wgslsmith_sub_i32(global0.d.c, 1i)));
    global0 = func_1(min(~reverseBits(117569u), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(1535f, _wgslsmith_mod_u32(18581u, ~0u), ~vec3<u32>(~var_4, _wgslsmith_mod_u32(var_0.x, u_input.c.x), 34629u) >> (_wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.c, ~var_1.d.d.xzx), vec3<u32>(global0.a.d.x, var_1.d.a >> (var_4 % 32u), _wgslsmith_div_u32(1u, 88407u))) % vec3<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(u_input.c.x, abs(var_1.d.d.x) >> (1u % 32u)), 4294967295u, abs(~1u), u_input.c.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(var_1.e.yx))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(global0.e.x, var_1.e.x), var_1.e.zx, var_1.c.xz)) * var_1.e.xx))));
}

