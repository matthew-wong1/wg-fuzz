struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, false);

var<private> global1: array<vec3<bool>, 24> = array<vec3<bool>, 24>(vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<u32>) -> f32 {
    global0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~select(min(vec4<u32>(0u, 1u, 4294967295u, 856u) >> (vec4<u32>(57858u, 23616u, 70093u, arg_1.x) % vec4<u32>(32u)), ~vec4<u32>(arg_1.x, arg_1.x, 48082u, 10868u)), ~(~vec4<u32>(1u, arg_1.x, arg_1.x, 4294967295u)), !any(vec2<bool>(arg_0.x, global0.x))), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.a, u_input.a, arg_1.x, 15330u) ^ select(vec4<u32>(1u, 4294967295u, 48144u, u_input.c.x), vec4<u32>(32509u, 0u, 57488u, u_input.c.x), global0.x), vec4<u32>(0u, 23459u, 40300u, u_input.a | 1u)), countOneBits(vec4<u32>(86225u, arg_1.x, ~4363u, ~arg_1.x)))), 24u)];
    let var_0 = Struct_2(Struct_1(1i, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1001f, 1f)), u_input.b.x, -104i), Struct_1(u_input.e.x, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(259f, 2173f))))), -1i, ~countOneBits(abs(u_input.d.x))), Struct_1(-65317i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(3811f, -1000f) + vec2<f32>(2050f, 612f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1267f, -416f))))), 1i, -u_input.b.x), Struct_1(~_wgslsmith_dot_vec2_i32(u_input.d.xx, u_input.b.xz) | 0i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1659f, 196f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-1008f, -303f) * vec2<f32>(-350f, -1505f)))), 2147483647i, ~(u_input.d.x << (_wgslsmith_mod_u32(u_input.c.x, 1u) % 32u))));
    let var_1 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, countOneBits(-3457i), countOneBits(var_0.c.d)), u_input.e.zzw), 1i), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-var_0.c.b))), _wgslsmith_clamp_i32(2147483647i, countOneBits(-(18249i << (arg_1.x % 32u))), var_0.a.a), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(abs(var_0.b.a), _wgslsmith_clamp_i32(-1i, var_0.d.c, 12081i) & var_0.a.d, u_input.b.x, 0i)));
    global0 = vec3<bool>(arg_0.x, all(vec4<bool>(select(true, global0.x, true), !global0.x, any(arg_0), var_1.b.x < -442f)) | !(~arg_1.x == 1585u), _wgslsmith_add_u32(17277u, min(arg_1.x, ~u_input.c.x)) == ~43393u);
    global1 = array<vec3<bool>, 24>();
    return var_1.b.x;
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global1 = array<vec3<bool>, 24>();
    global1 = array<vec3<bool>, 24>();
    var var_0 = 4294967295u;
    var var_1 = Struct_2(Struct_1(u_input.b.x, vec2<f32>(_wgslsmith_f_op_f32(abs(-387f)), 302f), -_wgslsmith_sub_i32(27501i, ~1i), _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)), Struct_1(u_input.b.x, vec2<f32>(-230f, 1270f), ~1i, 38119i), Struct_1(firstTrailingBit(min(u_input.e.x, -2147483647i)), vec2<f32>(_wgslsmith_f_op_f32(abs(-465f)), 1f), u_input.d.x, u_input.b.x), Struct_1(u_input.d.x, vec2<f32>(-1226f, _wgslsmith_f_op_f32(func_3(vec3<bool>(true, true, true), vec3<u32>(arg_0.x, 0u, u_input.a)))), max(u_input.e.x, -24421i), u_input.b.x));
    let var_2 = Struct_2(var_1.b, Struct_1(~u_input.e.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(var_1.a.b, var_1.d.b))), 42204i, ~var_1.a.a), Struct_1(-1i, vec2<f32>(_wgslsmith_div_f32(1282f, -557f), 538f), var_1.b.d, _wgslsmith_dot_vec4_i32(u_input.d, u_input.e)), Struct_1(var_1.d.d, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_1.d.b))))), _wgslsmith_div_i32(_wgslsmith_mod_i32(var_1.a.d, 0i), -33412i) & max(_wgslsmith_sub_i32(var_1.d.d, var_1.d.c), 18149i ^ var_1.d.c), 13870i));
    return true;
}

fn func_4(arg_0: bool) -> vec3<bool> {
    global1 = array<vec3<bool>, 24>();
    global0 = select(vec3<bool>(select(true, global0.x, global0.x), func_2(vec4<u32>(1u, ~u_input.a, u_input.c.x, reverseBits(1u))), all(global0.yz)), !(!(!select(global1[_wgslsmith_index_u32(1u, 24u)], global1[_wgslsmith_index_u32(10207u, 24u)], global1[_wgslsmith_index_u32(u_input.c.x, 24u)]))), vec3<bool>(true, !(false || (arg_0 | arg_0)), abs(_wgslsmith_mult_u32(u_input.a, 4294967295u)) > _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, 1u), firstLeadingBit(u_input.c))));
    var var_0 = Struct_2(Struct_1(u_input.e.x, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(657f, -925f) + vec2<f32>(-521f, -584f)))), ~u_input.d.x, u_input.e.x), Struct_1(~abs(_wgslsmith_add_i32(u_input.e.x, -40974i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-315f, 995f), vec2<f32>(-1024f, -1000f)))), u_input.e.x, ~_wgslsmith_sub_i32(-2147483647i, -24961i) & u_input.e.x), Struct_1(~u_input.d.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(879f))), -1000f), _wgslsmith_dot_vec4_i32(vec4<i32>(min(u_input.d.x, u_input.e.x), -2147483647i, ~(-28049i), 60654i), u_input.b), max(~(i32(-1i) * -16475i), u_input.e.x)), Struct_1(_wgslsmith_dot_vec3_i32(abs(abs(u_input.e.wwy)), vec3<i32>(u_input.e.x, 2147483647i, u_input.d.x) | reverseBits(vec3<i32>(u_input.d.x, -1973i, u_input.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1f, 1f))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -809f), _wgslsmith_f_op_f32(-716f + 821f))), countOneBits(firstLeadingBit(u_input.d.x)), 1i));
    var var_1 = u_input.e;
    global1 = array<vec3<bool>, 24>();
    return select(!global1[_wgslsmith_index_u32(min(0u, ~u_input.c.x), 24u)], vec3<bool>(arg_0, global0.x, true != (_wgslsmith_f_op_f32(var_0.d.b.x + 1084f) == -1150f)), arg_0);
}

fn func_1() -> Struct_2 {
    global0 = func_4(func_2(vec4<u32>(42942u, u_input.c.x << (u_input.c.x % 32u), _wgslsmith_sub_u32(u_input.c.x, 4922u), 1u) & firstLeadingBit(abs(vec4<u32>(0u, 4294967295u, 0u, u_input.c.x)))));
    let var_0 = Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d.x, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, u_input.b.x, u_input.e.x)), _wgslsmith_add_vec3_i32(u_input.e.www, vec3<i32>(u_input.d.x, u_input.d.x, -1i))), i32(-1i) * -4228i), u_input.b.zyy), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1813f, -281f), vec2<f32>(2134f, 1000f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(245f, -568f) + vec2<f32>(381f, -2318f))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-131f, -337f) * vec2<f32>(101f, 1866f))))), (12464i | countOneBits(~u_input.d.x)) | firstTrailingBit(_wgslsmith_dot_vec4_i32(select(u_input.d, u_input.b, global0.x), u_input.b)), ~min(-select(-26915i, u_input.d.x, global0.x), u_input.b.x));
    let var_1 = func_4(false != select(_wgslsmith_f_op_f32(-var_0.b.x) == _wgslsmith_f_op_f32(-var_0.b.x), global0.x, global0.x));
    var var_2 = u_input.c.xy;
    let var_3 = var_0;
    return Struct_2(var_3, var_0, Struct_1(29786i, var_0.b, reverseBits(~(-var_0.a)), 0i), var_0);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: Struct_1) -> Struct_1 {
    global1 = array<vec3<bool>, 24>();
    var var_0 = Struct_1(abs(~17892i), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1292f - -789f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-arg_1.c.b.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_3.b), func_1().c.b)), ~max(-1i, func_1().d.c), -1i);
    var var_1 = _wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(max(var_0.c, 6440i), u_input.e.x, -2147483647i ^ arg_1.c.c, arg_3.a), vec4<i32>(-2147483647i, reverseBits(1i), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_0.d, 0i, 2147483647i), vec4<i32>(1i, arg_3.a, 7416i, -31703i)), 0i)), vec4<i32>(-36691i, _wgslsmith_add_i32(u_input.b.x & arg_3.c, _wgslsmith_div_i32(-9786i, u_input.d.x)), -(var_0.a | 1396i), 0i)), reverseBits(u_input.e), vec4<i32>(arg_3.a ^ (i32(-1i) * -18028i), _wgslsmith_sub_i32(_wgslsmith_mult_i32(arg_1.c.c, arg_3.d), ~(~0i)), _wgslsmith_mod_i32(countOneBits(u_input.b.x >> (4294967295u % 32u)), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(u_input.e.xzz, vec3<i32>(arg_3.c, -2147483647i, 2147483647i)), -26265i)), -2147483647i));
    var var_2 = countOneBits(reverseBits(u_input.d.x));
    global1 = array<vec3<bool>, 24>();
    return func_1().b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<bool>(global0.x, abs(u_input.c.x) != _wgslsmith_div_u32(16909u, _wgslsmith_sub_u32(~4294967295u, min(u_input.c.x, u_input.a))), !any(global0.zz));
    let var_0 = func_5(!(!select(global0.x, all(global1[_wgslsmith_index_u32(11943u, 24u)]), any(global0.zz))), func_1(), vec2<f32>(-647f, -984f), Struct_1(_wgslsmith_div_i32(-30935i, 1i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-390f, -1532f)))), -1i, select(-59304i, firstLeadingBit(-u_input.d.x), true)));
    let var_1 = vec2<i32>(u_input.d.x, ~var_0.d);
    global1 = array<vec3<bool>, 24>();
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_sub_i32(20811i, reverseBits(-61034i)), -(~var_0.c)));
}

