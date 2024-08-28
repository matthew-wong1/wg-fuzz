struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec4<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<f32>,
    c: vec4<bool>,
    d: u32,
    e: Struct_2,
}

struct Struct_5 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: vec2<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<f32, 32> = array<f32, 32>(102f, -667f, 858f, 2026f, 1361f, 1585f, -132f, -2455f, 724f, 200f, 276f, 370f, 1009f, -1575f, 172f, -2457f, 728f, -404f, 1101f, -253f, -101f, 1296f, -1063f, 387f, -1125f, -448f, -114f, 1080f, 655f, -1047f, 327f, -1174f);

var<private> global2: vec2<u32> = vec2<u32>(15631u, 1u);

var<private> global3: vec2<f32>;

var<private> global4: array<vec4<u32>, 13> = array<vec4<u32>, 13>(vec4<u32>(2369u, 1u, 0u, 1u), vec4<u32>(7544u, 0u, 22306u, 60851u), vec4<u32>(0u, 0u, 3065u, 56237u), vec4<u32>(0u, 93263u, 1u, 1u), vec4<u32>(1u, 56756u, 0u, 4294967295u), vec4<u32>(36783u, 19532u, 39555u, 27631u), vec4<u32>(52973u, 0u, 78338u, 2209u), vec4<u32>(4294967295u, 28124u, 1u, 4294967295u), vec4<u32>(1u, 55045u, 1u, 4294967295u), vec4<u32>(64930u, 38659u, 0u, 33552u), vec4<u32>(0u, 44719u, 0u, 1u), vec4<u32>(10437u, 50689u, 1u, 22527u), vec4<u32>(0u, 92544u, 30428u, 0u));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: u32) -> u32 {
    global3 = vec2<f32>(372f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2007f)), -432f) - _wgslsmith_f_op_f32(ceil(global0.e.b.x))), _wgslsmith_f_op_f32(select(-253f, -1266f, global3.x < _wgslsmith_f_op_f32(global0.e.b.x - global3.x))))));
    var var_0 = ~(-u_input.b.x);
    let var_1 = Struct_3(Struct_1(true, vec4<i32>(2147483647i, ~(-2147483647i), select(~u_input.b.x, u_input.b.x, true), _wgslsmith_add_i32(-2147483647i, u_input.b.x) << (arg_0 % 32u)), global4[_wgslsmith_index_u32(u_input.c, 13u)], ~(~u_input.c | (u_input.c >> (1u % 32u)))));
    let var_2 = Struct_4(global0.a, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.e.b.x + 1910f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(1u, 32u)], -955f), _wgslsmith_div_f32(global0.b.x, 2788f))))), vec4<bool>((44202u << ((global0.d ^ global2.x) % 32u)) != abs(_wgslsmith_mult_u32(1u, 0u)), false, any(!vec3<bool>(var_1.a.a, true, false)), true), ~(~(~global0.a.a.c.x)), global0.e);
    var var_3 = Struct_1(select(false, true, var_2.e.c.x), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b.x, 0i, 0i, 2147483647i) | abs(global0.a.a.b), ~vec4<i32>(var_2.a.a.b.x & u_input.b.x, var_1.a.b.x, -var_1.a.b.x, var_2.a.a.b.x << (14664u % 32u))), firstLeadingBit(var_1.a.c), global0.a.a.c.x);
    return var_2.e.a;
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> i32 {
    var var_0 = Struct_3(Struct_1(false, select(arg_1.b, firstLeadingBit(arg_1.b), vec4<bool>(true, false, arg_1.a, false)), vec4<u32>(_wgslsmith_dot_vec4_u32(arg_1.c, global4[_wgslsmith_index_u32(1u, 13u)]), _wgslsmith_mod_u32(1u, global0.d >> (0u % 32u)), func_3(max(arg_1.d, 4294967295u)), _wgslsmith_mod_u32(arg_1.c.x << (arg_0.x % 32u), 2329u)), ~(~u_input.c)));
    let var_1 = ~((_wgslsmith_mod_vec4_u32(vec4<u32>(0u, u_input.c, 43329u, arg_3.a.c.x), var_0.a.c) >> (vec4<u32>(arg_3.a.c.x, arg_1.c.x, 5483u, 6899u) % vec4<u32>(32u))) >> (~abs(vec4<u32>(46470u, global2.x, u_input.c, arg_3.a.d)) % vec4<u32>(32u))) & vec4<u32>(u_input.c, func_3(global0.d), _wgslsmith_dot_vec4_u32(~(var_0.a.c & var_0.a.c), max(vec4<u32>(var_0.a.d, 1u, 49332u, 15324u) & arg_0, max(arg_3.a.c, vec4<u32>(2895u, var_0.a.d, arg_0.x, arg_0.x)))), global0.a.a.d);
    let var_2 = _wgslsmith_dot_vec4_u32(~min(global4[_wgslsmith_index_u32(arg_3.a.c.x, 13u)], ~arg_0), select(arg_0, ~arg_3.a.c, !global0.c) ^ ~vec4<u32>(arg_0.x, _wgslsmith_mod_u32(u_input.c, u_input.c), ~4294967295u, ~var_0.a.d));
    var var_3 = !vec3<bool>(false, !any(global0.e.c), true);
    global0 = Struct_4(global0.a, vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(var_2, 32u)], 642f)), 226f)), global3.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-759f)))))), vec4<bool>(arg_1.a, true, all(!select(vec4<bool>(var_0.a.a, var_0.a.a, var_0.a.a, true), global0.c, global0.c)), _wgslsmith_dot_vec2_u32(abs(vec2<u32>(global2.x, global0.e.a)), vec2<u32>(61486u, 20258u)) != u_input.c), global0.e.a, global0.e);
    return reverseBits(firstTrailingBit(firstTrailingBit(~(-arg_2))));
}

fn func_4(arg_0: i32, arg_1: vec4<i32>, arg_2: bool) -> Struct_5 {
    global3 = global0.b.zx;
    var var_0 = global0.e.b.zy;
    global0 = Struct_4(Struct_3(Struct_1(arg_2, vec4<i32>(_wgslsmith_div_i32(global0.a.a.b.x, global0.a.a.b.x), select(64001i, global0.a.a.b.x, global0.e.c.x), -23593i, -17403i), ~global0.a.a.c & _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, global2.x, 1u, 37252u), global4[_wgslsmith_index_u32(u_input.c, 13u)]), ~global0.e.a << (18415u % 32u))), global0.e.b.xxz, select(global0.c, global0.c, global0.c), ~u_input.c, global0.e);
    let var_1 = ~u_input.c | _wgslsmith_mult_u32(global2.x, global2.x);
    var var_2 = !vec4<bool>(false, true, all(!vec4<bool>(true, global0.c.x, true, false)), !all(vec4<bool>(global0.c.x, false, false, false)));
    return Struct_5(vec3<i32>(2045i, arg_0, _wgslsmith_add_i32(~(-26163i), -arg_1.x)), global0.a.a, select(vec4<bool>(var_2.x, !(true && global0.e.c.x), any(!vec3<bool>(var_2.x, global0.e.c.x, true)), true), global0.c, var_2.x), select(global0.e.c, select(!vec2<bool>(arg_2, false), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 32u)] < -1447f, true), !arg_2), global0.c.zy), ~arg_1.x);
}

fn func_5(arg_0: bool, arg_1: i32, arg_2: Struct_5) -> Struct_4 {
    var var_0 = global0.e.b.x;
    global0 = Struct_4(global0.a, global0.e.b.yww, !(!vec4<bool>(!global0.c.x, true, arg_0, arg_2.b.a)), u_input.c, Struct_2(~1u, _wgslsmith_f_op_vec4_f32(-global0.e.b), select(!vec2<bool>(false, global0.c.x), !vec2<bool>(true, global0.a.a.a), true)));
    var var_1 = arg_2.b;
    var var_2 = -173f;
    global1 = array<f32, 32>();
    return Struct_4(global0.a, global0.b, vec4<bool>(true, arg_0, arg_2.b.d == arg_2.b.d, !select(all(arg_2.c.xww), arg_0 | true, false & arg_2.b.a)), _wgslsmith_dot_vec2_u32(firstTrailingBit(arg_2.b.c.xy | var_1.c.xy), ~min(var_1.c.zz, _wgslsmith_mod_vec2_u32(vec2<u32>(41028u, 29077u), var_1.c.yy))), global0.e);
}

fn func_1(arg_0: bool, arg_1: u32) -> f32 {
    var var_0 = !all(!vec4<bool>(global0.a.a.a, arg_0, true, true));
    global4 = array<vec4<u32>, 13>();
    global1 = array<f32, 32>();
    global2 = global0.a.a.c.yy;
    let var_1 = func_5(true, -26318i, func_4(~(-2147483647i), global0.a.a.b & (u_input.b ^ select(u_input.b, vec4<i32>(u_input.a, 54950i, u_input.a, 33034i), false)), _wgslsmith_dot_vec3_i32(min(vec3<i32>(-33089i, 2147483647i, global0.a.a.b.x), global0.a.a.b.xww), abs(u_input.b.yyx)) <= func_2(~vec4<u32>(global2.x, arg_1, global0.a.a.d, 26723u), Struct_1(true, vec4<i32>(global0.a.a.b.x, 35941i, u_input.b.x, global0.a.a.b.x), vec4<u32>(global0.a.a.c.x, global0.a.a.c.x, 36762u, global2.x), 22789u), _wgslsmith_dot_vec3_i32(vec3<i32>(59689i, u_input.a, u_input.b.x), global0.a.a.b.ywy), global0.a)));
    return global0.e.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.e.b.x * _wgslsmith_f_op_f32(f32(-1f) * -1085f)));
    let var_1 = global0.e.a;
    var var_2 = global0.a.a;
    global1 = array<f32, 32>();
    let var_3 = false;
    var var_4 = (~(~abs(u_input.b)) ^ select(max(-var_2.b, vec4<i32>(u_input.b.x, global0.a.a.b.x, global0.a.a.b.x, global0.a.a.b.x)), abs(_wgslsmith_mult_vec4_i32(global0.a.a.b, vec4<i32>(-2147483647i, 1i, -83291i, u_input.a))), var_2.a == var_3)) >> (abs(vec4<u32>(1u, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 4294967295u, u_input.c, global0.e.a), countOneBits(vec4<u32>(0u, var_2.d, 1u, global0.a.a.d))), 4294967295u, firstLeadingBit(global0.d))) % vec4<u32>(32u));
    var_0 = _wgslsmith_f_op_f32(func_1(true, var_2.c.x));
    var_2 = Struct_1(all(!func_4(global0.a.a.b.x, global0.a.a.b, true).c.yyy), vec4<i32>(_wgslsmith_add_i32(~abs(-1i), var_2.b.x << ((global0.e.a << (35865u % 32u)) % 32u)), ~var_4.x, u_input.a, countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_2.b.xx, var_2.b.yy), vec2<i32>(global0.a.a.b.x, 51682i)))), var_2.c, firstLeadingBit(9545u));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(0u, u_input.c ^ (_wgslsmith_mult_u32(4294967295u, global0.e.a) << (1u % 32u)), global0.a.a.c.x, var_2.d), vec4<u32>(15381u >> (_wgslsmith_dot_vec2_u32(var_2.c.wy, vec2<u32>(u_input.c, global2.x)) % 32u), _wgslsmith_mult_u32(~(~19483u), global0.e.a), 16629u, func_5(true, ~(~u_input.b.x), func_4(var_4.x, vec4<i32>(27958i, u_input.a, global0.a.a.b.x, -2147483647i), true && var_3)).d), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x)), 1331f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -799f) * _wgslsmith_f_op_f32(-global0.b.x))), global0.b), global3.x);
}

