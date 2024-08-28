struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: f32,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

var<private> global1: Struct_2;

var<private> global2: f32 = 1331f;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> vec4<u32> {
    let var_0 = vec4<bool>(all(vec3<bool>(true, arg_0.b, arg_0.b & arg_0.b)), !global1.b.b, !arg_0.b, any(select(!vec3<bool>(arg_0.b, false, false), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, arg_0.b), vec3<bool>(arg_0.b, arg_0.b, false)), vec3<bool>(true, false, true), !vec3<bool>(arg_0.b, arg_0.b, arg_0.b)), vec3<bool>(!arg_0.b, arg_0.b, false))));
    global0 = array<vec3<i32>, 8>();
    global2 = arg_0.c;
    global1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))), _wgslsmith_f_op_f32(f32(-1f) * -3340f))) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.c) * _wgslsmith_f_op_f32(floor(arg_1))), -1249f))), global1.c, global1.b);
    let var_1 = vec4<bool>(var_0.x, any(vec4<bool>(!(!global1.c.b), all(var_0) || global1.b.b, true, true)), !all(select(var_0, var_0, true)) != true, arg_0.b);
    return _wgslsmith_clamp_vec4_u32(abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global1.b.a.x, reverseBits(global1.c.a.x), _wgslsmith_mod_u32(11167u, 1u)), _wgslsmith_mult_vec4_u32(global1.b.a, arg_0.a), vec4<u32>(_wgslsmith_div_u32(40922u, 32204u), _wgslsmith_mult_u32(global1.b.d.x, global1.c.d.x), ~arg_0.d.x, 0u))), arg_0.a ^ global1.b.a, global1.b.a);
}

fn func_4(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(abs(~countOneBits(vec4<u32>(4294967295u, 8464u, arg_1.x, 14358u))), global1.c.b, -1234f, global1.c.a.ywz, arg_2.e);
    global0 = array<vec3<i32>, 8>();
    return _wgslsmith_f_op_f32(1096f - -326f);
}

fn func_2(arg_0: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-199f, 748f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, -385f) * vec2<f32>(global1.a, 894f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(923f, global1.a), vec2<f32>(global1.c.c, 106f))))));
    let var_1 = global1.c.e.zx & ~_wgslsmith_add_vec2_i32(vec2<i32>(arg_0, _wgslsmith_div_i32(global1.c.e.x, -2147483647i)), ~(~global1.c.e.xz));
    let var_2 = _wgslsmith_f_op_f32(func_4(global1.c.e.x, vec4<u32>(_wgslsmith_dot_vec4_u32(func_3(global1.c, _wgslsmith_f_op_f32(-215f * 1832f)), firstTrailingBit(global1.b.a)), ~((global1.c.d.x << (global1.b.a.x % 32u)) | select(global1.c.a.x, 4294967295u, global1.b.b)), 0u, 12086u >> (global1.b.a.x % 32u)), Struct_1(_wgslsmith_mult_vec4_u32(~countOneBits(global1.c.a), global1.b.a >> (~global1.c.a % vec4<u32>(32u))), global1.c.b, _wgslsmith_f_op_f32(-930f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + _wgslsmith_f_op_f32(f32(-1f) * -1098f))), global1.b.a.zzy, vec3<i32>(arg_0, _wgslsmith_add_i32(global1.b.e.x, 0i) ^ -1i, global1.b.e.x))));
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1501f, var_0.x, global1.b.c, global1.c.c), vec4<f32>(var_2, -562f, -332f, var_0.x)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(309f, global1.b.c, var_0.x, -185f), vec4<f32>(-1713f, -1140f, global1.b.c, 543f), global1.b.b))))));
    let var_4 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-var_3.x)))), global1.c, Struct_1(global1.b.a, global1.b.b | true, var_2, abs(~vec3<u32>(global1.c.d.x, 0u, global1.c.a.x) | ~global1.b.a.zxw), _wgslsmith_clamp_vec3_i32(countOneBits(global1.c.e << (vec3<u32>(global1.b.d.x, global1.b.a.x, global1.c.d.x) % vec3<u32>(32u))), global0[_wgslsmith_index_u32(32965u, 8u)], global0[_wgslsmith_index_u32(~(~4294967295u), 8u)])));
    return vec4<bool>(!(!(226f >= _wgslsmith_f_op_f32(-var_4.a))), 0i != var_4.c.e.x, true, any(!(!vec2<bool>(global1.b.b, var_4.b.b))));
}

fn func_1(arg_0: Struct_1) -> StorageBuffer {
    let var_0 = false;
    let var_1 = Struct_3(!(!func_2(~global1.c.e.x)), 0u, arg_0, Struct_1(~(~vec4<u32>(1u, 22879u, arg_0.d.x, arg_0.a.x)), false, 1098f, global1.b.a.ywx, vec3<i32>(select(global1.b.e.x, 1i, false), _wgslsmith_dot_vec4_i32(~vec4<i32>(9038i, 0i, global1.b.e.x, u_input.b.x), max(vec4<i32>(global1.c.e.x, global1.c.e.x, u_input.a, 4123i), u_input.b)), ~(arg_0.e.x & -35702i))));
    var var_2 = Struct_2(var_1.c.c, Struct_1(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_div_u32(0u, var_1.c.d.x), _wgslsmith_add_u32(7832u, 74365u), _wgslsmith_mod_u32(0u, global1.b.a.x), arg_0.d.x), vec4<u32>(6045u, _wgslsmith_sub_u32(4294967295u, 1u), _wgslsmith_dot_vec2_u32(arg_0.d.xz, vec2<u32>(global1.c.d.x, var_1.d.a.x)), ~42179u)), all(vec2<bool>(global1.b.b, any(vec4<bool>(var_1.a.x, arg_0.b, true, true)))), _wgslsmith_f_op_f32(floor(544f)), ~(~(var_1.c.a.zzw << (var_1.c.d % vec3<u32>(32u)))), ~global0[_wgslsmith_index_u32(0u, 8u)]), var_1.d);
    let var_3 = ~(-8576i) >= ~(~_wgslsmith_mod_i32(u_input.a, firstLeadingBit(0i)));
    global0 = array<vec3<i32>, 8>();
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(384f, 344f, global1.c.c))), vec4<u32>(max(~(~var_2.b.a.x), firstTrailingBit(~var_1.d.a.x)), ~abs(min(1u, 0u)), ~(~var_1.d.a.x), _wgslsmith_dot_vec3_u32(reverseBits(vec3<u32>(1u, 0u, arg_0.d.x) | vec3<u32>(var_1.b, global1.b.a.x, global1.b.d.x)), firstTrailingBit(vec3<u32>(1u, arg_0.d.x, var_1.b)) & _wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.d.x, var_1.b, 25797u), vec3<u32>(arg_0.a.x, global1.c.a.x, 32174u)))), var_1.d.a.xw);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1.c.c, global1.c.c), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.c, -892f)) - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(1219f, -203f), vec2<f32>(130f, 730f), global1.c.b))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c.c, 550f))))));
    var var_1 = vec4<u32>(~global1.b.a.x, 1u, ~(~global1.b.a.x), 1u);
    var var_2 = ~((_wgslsmith_div_vec3_u32(vec3<u32>(global1.b.d.x, global1.c.d.x, var_1.x) >> (var_1.zxz % vec3<u32>(32u)), ~global1.c.a.yxx) & ~(~vec3<u32>(0u, 33287u, 33787u))) >> (vec3<u32>(firstLeadingBit(~4294967295u), 4294967295u, _wgslsmith_clamp_u32(0u & var_1.x, ~50665u, 0u)) % vec3<u32>(32u)));
    var var_3 = var_0;
    var var_4 = global1.a;
    let x = u_input.a;
    s_output = func_1(Struct_1(~global1.b.a, _wgslsmith_dot_vec2_u32(~var_1.zw, ~var_2.xy) <= var_2.x, 302f, abs(~(~vec3<u32>(var_1.x, 50595u, 0u))), firstLeadingBit(_wgslsmith_div_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, 21372i, u_input.b.x), vec3<i32>(u_input.b.x, global1.c.e.x, global1.c.e.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(global1.c.e.x, 0i, u_input.a), global1.b.e)))));
}

