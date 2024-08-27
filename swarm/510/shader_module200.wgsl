struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec4<u32>;

var<private> global2: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec2<f32>(1142f, 1027f)), Struct_1(vec2<f32>(671f, 1588f)), Struct_1(vec2<f32>(1824f, -452f)), Struct_1(vec2<f32>(-1262f, -1575f)), Struct_1(vec2<f32>(366f, 1135f)), Struct_1(vec2<f32>(313f, 855f)), Struct_1(vec2<f32>(1279f, 475f)), Struct_1(vec2<f32>(-1000f, 1181f)), Struct_1(vec2<f32>(630f, 478f)), Struct_1(vec2<f32>(499f, 833f)), Struct_1(vec2<f32>(1000f, 1090f)), Struct_1(vec2<f32>(144f, 169f)), Struct_1(vec2<f32>(416f, 1884f)), Struct_1(vec2<f32>(1032f, 1553f)), Struct_1(vec2<f32>(1308f, -550f)), Struct_1(vec2<f32>(-2742f, 471f)), Struct_1(vec2<f32>(302f, -1373f)), Struct_1(vec2<f32>(1389f, 844f)), Struct_1(vec2<f32>(-1129f, 1413f)), Struct_1(vec2<f32>(410f, 385f)), Struct_1(vec2<f32>(-266f, -1000f)), Struct_1(vec2<f32>(1325f, 397f)), Struct_1(vec2<f32>(-407f, 176f)), Struct_1(vec2<f32>(295f, -1000f)), Struct_1(vec2<f32>(145f, 1008f)), Struct_1(vec2<f32>(802f, 752f)), Struct_1(vec2<f32>(2439f, 2684f)), Struct_1(vec2<f32>(-1136f, 911f)), Struct_1(vec2<f32>(-286f, -501f)), Struct_1(vec2<f32>(-479f, -199f)));

var<private> global3: vec3<f32> = vec3<f32>(701f, 1485f, 1457f);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> u32 {
    var var_0 = global0.a;
    let var_1 = _wgslsmith_sub_i32(-1i, -10726i);
    global1 = ~firstTrailingBit(~(~vec4<u32>(global1.x, global0.a.b.x, 1u, 1u)));
    global0 = Struct_4(global0.a, ~((global0.b | global0.b) & (global0.b << ((vec3<u32>(15545u, 0u, 0u) & var_0.b) % vec3<u32>(32u)))));
    let var_2 = vec4<i32>(u_input.a, -2147483647i, _wgslsmith_add_i32(-max(var_1, ~global0.b.x), _wgslsmith_add_i32(max(~global0.b.x, u_input.a), u_input.a)), -3060i);
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(~_wgslsmith_add_u32(var_0.b.x, var_0.b.x), var_0.b.x, select(global1.x, var_0.b.x, false)), _wgslsmith_div_vec3_u32(global0.a.b, vec3<u32>(_wgslsmith_add_u32(var_0.b.x, 43665u), select(0u, 15875u, false), 36976u))), ~vec3<u32>(~_wgslsmith_mult_u32(var_0.b.x, 5706u), 23855u, 51615u));
}

fn func_2(arg_0: vec2<i32>, arg_1: vec3<u32>) -> Struct_3 {
    let var_0 = ~abs(~_wgslsmith_add_vec3_u32(~vec3<u32>(global0.a.b.x, arg_1.x, 4294967295u), arg_1));
    global1 = vec4<u32>(_wgslsmith_add_u32(global0.a.b.x, 114225u), 37577u, 0u, func_3(global2[_wgslsmith_index_u32(abs(arg_1.x) & _wgslsmith_mod_u32(0u, ~arg_1.x), 30u)]));
    global2 = array<Struct_1, 30>();
    let var_1 = Struct_4(global0.a, vec3<i32>(-arg_0.x, -25736i, 7712i));
    global2 = array<Struct_1, 30>();
    return var_1.a;
}

fn func_4(arg_0: Struct_4, arg_1: Struct_4, arg_2: vec2<f32>, arg_3: Struct_4) -> vec4<u32> {
    var var_0 = vec4<u32>(~(~4294967295u), 28851u, ~select(0u, min(0u, ~arg_1.a.b.x), arg_0.a.a.b), 4294967295u);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-826f * _wgslsmith_f_op_f32(abs(263f)))));
    global0 = Struct_4(Struct_3(Struct_2(_wgslsmith_div_f32(-775f, arg_1.a.c.x), false), vec3<u32>(global1.x, 4294967295u, ~var_0.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(arg_3.a.c, vec4<f32>(-205f, -1794f, 413f, arg_0.a.c.x))), arg_3.a.c, true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.a, arg_3.a.a.a, global3.x, 1685f)) - arg_0.a.c)))), _wgslsmith_clamp_vec3_i32(abs(~vec3<i32>(global0.b.x, -2147483647i, 2147483647i)), vec3<i32>(select(u_input.a, arg_0.b.x, true), ~(-18151i), -43047i), vec3<i32>(-1i) * -global0.b) ^ (global0.b & ~countOneBits(arg_0.b)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.a.a) * _wgslsmith_f_op_f32(sign(167f))))));
    var var_3 = _wgslsmith_f_op_f32(-global3.x);
    return _wgslsmith_div_vec4_u32(~vec4<u32>(_wgslsmith_div_u32(func_3(global2[_wgslsmith_index_u32(56398u, 30u)]), func_2(vec2<i32>(arg_1.b.x, arg_0.b.x), arg_0.a.b).b.x), _wgslsmith_dot_vec2_u32(~var_0.wz, var_0.wz), _wgslsmith_dot_vec2_u32(global0.a.b.zz, select(arg_3.a.b.yy, arg_3.a.b.yz, vec2<bool>(arg_3.a.a.b, true))), arg_1.a.b.x), _wgslsmith_mult_vec4_u32(~vec4<u32>(1u, firstTrailingBit(1u), _wgslsmith_sub_u32(arg_1.a.b.x, 48803u), 64329u), vec4<u32>(7416u, _wgslsmith_sub_u32(79216u, 0u), global1.x, arg_1.a.b.x ^ ~4294967295u)));
}

fn func_1() -> vec2<u32> {
    let var_0 = false;
    let var_1 = Struct_2(-701f, false);
    global1 = select(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.x, 109663u, 14070u, 4294967295u), vec4<u32>(14998u, 1u, global1.x, global0.a.b.x)), global0.a.b.x << (global0.a.b.x % 32u), 1u) & ~countOneBits(vec4<u32>(0u, 14483u, global0.a.b.x, 4294967295u)), func_4(Struct_4(func_2(vec2<i32>(-1i, 4578i), global1.yxz), global0.b), Struct_4(func_2(global0.b.yy, global1.wyy), firstLeadingBit(global0.b)), global3.xz, Struct_4(global0.a, ~vec3<i32>(2147483647i, -5598i, 0i)))), countOneBits(_wgslsmith_sub_vec4_u32(~min(vec4<u32>(44335u, global0.a.b.x, 4294967295u, global0.a.b.x), vec4<u32>(4294967295u, 88144u, 1u, global0.a.b.x)), vec4<u32>(1u, 1u, max(global0.a.b.x, global1.x), 16196u))), true);
    global1 = max(~max(abs(vec4<u32>(global1.x, 6007u, 82447u, 4294967295u)), ~vec4<u32>(4294967295u, global1.x, global1.x, global1.x)) ^ min(~reverseBits(vec4<u32>(global1.x, global0.a.b.x, global0.a.b.x, 0u)), vec4<u32>(~30726u, 44215u, _wgslsmith_dot_vec4_u32(vec4<u32>(207u, global1.x, 10630u, 108543u), vec4<u32>(10295u, 1u, 4294967295u, global1.x)), 1u)), vec4<u32>(func_4(Struct_4(Struct_3(Struct_2(global0.a.a.a, var_1.b), global1.zww, vec4<f32>(var_1.a, global0.a.a.a, var_1.a, 138f)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, u_input.a, global0.b.x), vec3<i32>(u_input.a, u_input.a, -1910i))), Struct_4(global0.a, firstTrailingBit(global0.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.c.wz)), Struct_4(global0.a, ~global0.b)).x, global0.a.b.x, 1u, ~select(min(global1.x, global0.a.b.x), 1u, func_2(vec2<i32>(1i, -11109i), global0.a.b).a.b)));
    return global0.a.b.xx;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<u32>, arg_2: f32) -> Struct_1 {
    let var_0 = ~global1.x;
    let var_1 = Struct_1(global0.a.c.zz);
    var var_2 = ~(~(global1.zw | global1.yx));
    global2 = array<Struct_1, 30>();
    let var_3 = var_1;
    return var_3;
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = false;
    global1 = vec4<u32>(global0.a.b.x, func_3(Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a.c.xw))) ^ ~(max(35482u, global0.a.b.x) & ~global1.x), _wgslsmith_mult_u32(abs(firstTrailingBit(global0.a.b.x)) >> (abs(~44840u) % 32u), max(~_wgslsmith_mod_u32(23378u, global1.x), 32892u)), 56841u);
    let var_1 = func_2(vec2<i32>(global0.b.x, _wgslsmith_mod_i32(min(select(global0.b.x, u_input.a, global0.a.a.b), _wgslsmith_dot_vec3_i32(global0.b, global0.b)), ~global0.b.x)), ~(~_wgslsmith_sub_vec3_u32(vec3<u32>(37733u, global1.x, global1.x), vec3<u32>(60624u, global0.a.b.x, global0.a.b.x)) >> (vec3<u32>(global1.x, global0.a.b.x, 0u) % vec3<u32>(32u))));
    global3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(vec3<f32>(-458f, -102f, var_1.a.a), var_1.c.xxw)))))), var_1.c.wxx, !select(vec3<bool>(!global0.a.a.b, any(vec2<bool>(global0.a.a.b, true)), false), !select(vec3<bool>(var_1.a.b, var_0, true), vec3<bool>(false, global0.a.a.b, var_0), vec3<bool>(var_0, var_0, global0.a.a.b)), any(vec4<bool>(true, var_0, var_0, false)))));
    global0 = Struct_4(func_2(-(vec2<i32>(-37616i, u_input.a) | vec2<i32>(1i, -42411i)), abs(firstTrailingBit(global1.zxz | var_1.b))), abs(vec3<i32>(-1i) * -vec3<i32>(global0.b.x, 1i, u_input.a)));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = global0.a.c.wzz;
    let var_0 = global1.x;
    let var_1 = Struct_3(Struct_2(_wgslsmith_f_op_f32(117f * _wgslsmith_f_op_f32(min(global3.x, _wgslsmith_f_op_f32(-global3.x)))), (2392i ^ (global0.b.x & u_input.a)) <= (max(global0.b.x, global0.b.x) | -14765i)), vec3<u32>(func_6(func_5(countOneBits(global0.b), func_1(), -1546f), func_5(select(global0.b, global0.b, vec3<bool>(global0.a.a.b, global0.a.a.b, false)), max(global1.zy, global0.a.b.xy), global3.x)), func_6(Struct_1(_wgslsmith_div_vec2_f32(global0.a.c.yw, global3.yy)), global2[_wgslsmith_index_u32(global1.x, 30u)]), ~global0.a.b.x), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(431f - -404f) - _wgslsmith_f_op_f32(abs(1961f)))), _wgslsmith_f_op_f32(-global0.a.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0.a.a.a)) + _wgslsmith_f_op_f32(round(831f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(-438f, -1569f, global0.a.a.b)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.c.zyw, vec4<i32>(~(~(-18912i)), i32(-1i) * -(~global0.b.x), -_wgslsmith_div_i32(-28060i, -1i), _wgslsmith_dot_vec3_i32(~vec3<i32>(-45183i, -62755i, global0.b.x), vec3<i32>(1i, global0.b.x, global0.b.x)) << (_wgslsmith_clamp_u32(_wgslsmith_mult_u32(global1.x, var_1.b.x), global0.a.b.x, global0.a.b.x) % 32u)), countOneBits(vec2<i32>(i32(-1i) * -u_input.a, u_input.a)), ~vec4<u32>(countOneBits(10566u), 41405u, var_1.b.x, 1u));
}

