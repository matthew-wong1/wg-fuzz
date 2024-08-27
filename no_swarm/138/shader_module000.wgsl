struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: Struct_1,
    d: vec4<u32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: vec4<u32>,
    d: vec2<u32>,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 16> = array<vec3<i32>, 16>(vec3<i32>(0i, 2351i, -11905i), vec3<i32>(-24317i, -4314i, 32689i), vec3<i32>(1i, i32(-2147483648), 2147483647i), vec3<i32>(1i, 16605i, -5236i), vec3<i32>(-20471i, -63161i, -1i), vec3<i32>(54113i, -34471i, 1i), vec3<i32>(20474i, 2147483647i, -11089i), vec3<i32>(4759i, -54444i, 2147483647i), vec3<i32>(-39227i, -14416i, 25205i), vec3<i32>(1i, 29664i, -10742i), vec3<i32>(-22450i, -14727i, 2147483647i), vec3<i32>(61457i, -1i, -61657i), vec3<i32>(18056i, i32(-2147483648), 1361i), vec3<i32>(2147483647i, -46243i, -13478i), vec3<i32>(7342i, -16935i, 27049i), vec3<i32>(2147483647i, -54639i, 2147483647i));

var<private> global1: array<vec2<f32>, 20>;

var<private> global2: vec3<u32> = vec3<u32>(22956u, 87975u, 0u);

var<private> global3: Struct_3 = Struct_3(vec4<i32>(-3849i, 33565i, 2147483647i, 23184i), -1933f, Struct_1(vec2<bool>(true, true)), vec4<u32>(1u, 15896u, 13666u, 1u), Struct_1(vec2<bool>(false, true)));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool) -> vec3<u32> {
    var var_0 = 1u;
    global1 = array<vec2<f32>, 20>();
    var var_1 = firstLeadingBit(~1u);
    global1 = array<vec2<f32>, 20>();
    var var_2 = _wgslsmith_sub_vec2_i32(u_input.b, vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(u_input.b.x, -11325i)), vec2<i32>(-2147483647i, 5663i) ^ -vec2<i32>(u_input.b.x, u_input.b.x)), -1i));
    return vec3<u32>(~(~31987u), ~(_wgslsmith_sub_u32(10464u, _wgslsmith_add_u32(11493u, global2.x)) >> (4294967295u % 32u)), u_input.a);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_4) -> i32 {
    global0 = array<vec3<i32>, 16>();
    global2 = firstLeadingBit(countOneBits(select(vec3<u32>(45122u, global3.d.x, 1u) | global3.d.ywz, _wgslsmith_mult_vec3_u32(vec3<u32>(arg_1.d.x, 51212u, 4294967295u), global3.d.yzz), true))) | func_3((_wgslsmith_sub_u32(96187u, global3.d.x) | ~global2.x) != _wgslsmith_mult_u32(38755u ^ arg_1.c.x, 46332u));
    global2 = vec3<u32>(select(u_input.a, _wgslsmith_mod_u32(16692u, 104689u), select(global3.c.a.x, global3.e.a.x, select(all(vec3<bool>(false, false, global3.c.a.x)), false, false))), ~_wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, arg_1.c.x, 4294967295u), global3.d.yxx)), firstLeadingBit(arg_1.c.xwy)), _wgslsmith_clamp_u32(min(_wgslsmith_mult_u32(4294967295u, 1u), 1u >> (~global3.d.x % 32u)), _wgslsmith_div_u32(~(~global3.d.x), firstTrailingBit(max(0u, u_input.d.x))), ~abs(reverseBits(arg_1.c.x))));
    global3 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(i32(-1i) * -u_input.b.x, countOneBits(~arg_1.a.a), 25505i, arg_1.e.a), ~global3.a), arg_1.e.b.x, global3.c, reverseBits(global3.d << (vec4<u32>(_wgslsmith_clamp_u32(35688u, 5996u, arg_1.d.x), 0u, global2.x, _wgslsmith_dot_vec2_u32(vec2<u32>(44883u, global3.d.x), global3.d.wz)) % vec4<u32>(32u))), Struct_1(global3.e.a));
    var var_0 = Struct_2(~global3.a.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b), arg_1.e.b));
    return reverseBits(_wgslsmith_dot_vec2_i32(reverseBits(-arg_0 >> (firstLeadingBit(vec2<u32>(17405u, global2.x)) % vec2<u32>(32u))), ~(-select(u_input.b, vec2<i32>(global3.a.x, var_0.a), global3.c.a))));
}

fn func_1(arg_0: vec2<f32>) -> vec4<i32> {
    var var_0 = ~_wgslsmith_dot_vec2_i32(max(_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(2147483647i, global3.a.x), vec2<i32>(-1i, global3.a.x)), _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(27281i, 23757i)), global3.a.ww)), vec2<i32>(u_input.b.x ^ func_2(vec2<i32>(global3.a.x, -1i), Struct_4(Struct_2(global3.a.x, vec3<f32>(arg_0.x, -514f, global3.b)), vec3<f32>(arg_0.x, -1236f, -197f), global3.d, global3.d.xz, Struct_2(-75633i, vec3<f32>(global3.b, 968f, arg_0.x)))), global3.a.x));
    let var_1 = Struct_2(u_input.b.x, vec3<f32>(arg_0.x, 1613f, 685f));
    global0 = array<vec3<i32>, 16>();
    let var_2 = arg_0.x;
    let var_3 = _wgslsmith_f_op_f32(sign(-1463f));
    return global3.a;
}

fn func_4(arg_0: u32, arg_1: Struct_3, arg_2: f32) -> vec3<u32> {
    global2 = vec3<u32>(2921u, _wgslsmith_add_u32(~(~global3.d.x), arg_0), arg_1.d.x);
    global3 = Struct_3(arg_1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1063f)) * arg_2) - -1161f), Struct_1(select(vec2<bool>(arg_1.c.a.x, all(vec3<bool>(arg_1.e.a.x, true, arg_1.c.a.x))), arg_1.e.a, !arg_1.e.a)), _wgslsmith_sub_vec4_u32(~abs(~vec4<u32>(arg_1.d.x, arg_0, 0u, u_input.d.x)), vec4<u32>(firstLeadingBit(arg_1.d.x) | u_input.c.x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.c.x, 1u), firstLeadingBit(arg_1.d.wwx)), 4294967295u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(93329u, global2.x), vec2<u32>(23183u, 1u)), ~u_input.d.x))), global3.e);
    global3 = Struct_3(abs(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(arg_1.a, global3.a), global3.a), firstLeadingBit(firstTrailingBit(vec4<i32>(u_input.b.x, 14030i, arg_1.a.x, arg_1.a.x))), max(vec4<i32>(u_input.b.x, 25912i, -1i, -28654i), global3.a))), _wgslsmith_f_op_f32(-arg_2), Struct_1(select(!vec2<bool>(true, arg_1.c.a.x), !global3.e.a, vec2<bool>(global3.e.a.x, true))), arg_1.d, global3.c);
    let var_0 = Struct_4(Struct_2(~func_2(~vec2<i32>(u_input.b.x, global3.a.x), Struct_4(Struct_2(0i, vec3<f32>(765f, arg_1.b, -1482f)), vec3<f32>(444f, 608f, arg_1.b), global3.d, vec2<u32>(16133u, 11258u), Struct_2(arg_1.a.x, vec3<f32>(arg_1.b, global3.b, -928f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-266f, 896f, 738f))), vec3<f32>(1f, 749f, _wgslsmith_f_op_f32(arg_1.b * 539f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(1000f)), arg_1.b, _wgslsmith_f_op_f32(abs(-1036f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-471f, global3.b, 450f))))), arg_1.d, _wgslsmith_mod_vec2_u32(max(arg_1.d.xx, ~(vec2<u32>(57264u, 22398u) ^ arg_1.d.zw)), vec2<u32>(abs(25281u), ~global3.d.x)), Struct_2(~(~(u_input.b.x & 8355i)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1803f, -1399f, -2574f)))))));
    let var_1 = all(!select(select(!arg_1.e.a, vec2<bool>(true, false), any(vec4<bool>(true, true, global3.c.a.x, true))), !select(vec2<bool>(true, arg_1.e.a.x), vec2<bool>(global3.e.a.x, global3.e.a.x), global3.e.a.x), !(!arg_1.e.a.x)));
    return vec3<u32>(6308u, u_input.a, global2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~func_4(~global3.d.x, Struct_3(~func_1(global1[_wgslsmith_index_u32(u_input.c.x, 20u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-318f)), global3.b), global3.e, vec4<u32>(countOneBits(0u), _wgslsmith_mod_u32(global2.x, 1u), ~1u, global2.x ^ 0u), Struct_1(vec2<bool>(true, true))), global3.b);
    var var_0 = _wgslsmith_add_i32(global3.a.x, -global3.a.x);
    let var_1 = any(!(!(!select(vec3<bool>(true, global3.e.a.x, global3.c.a.x), vec3<bool>(global3.e.a.x, global3.e.a.x, global3.e.a.x), false))));
    let var_2 = true;
    var_0 = u_input.b.x;
    global3 = Struct_3(-(vec4<i32>(-1i) * -(vec4<i32>(-49571i, global3.a.x, global3.a.x, global3.a.x) >> (vec4<u32>(45742u, global2.x, u_input.a, global3.d.x) % vec4<u32>(32u)))), _wgslsmith_f_op_f32(global3.b * -146f), Struct_1(!vec2<bool>(global3.c.a.x || var_1, var_2)), vec4<u32>(4294967295u & _wgslsmith_sub_u32(global3.d.x, firstTrailingBit(global2.x)), global3.d.x, _wgslsmith_dot_vec3_u32(firstLeadingBit(max(vec3<u32>(0u, 1u, 37661u), global3.d.wwx)), _wgslsmith_mult_vec3_u32(global3.d.xyz, vec3<u32>(5180u, 99578u, global2.x)) << (vec3<u32>(0u, global3.d.x, 4294967295u) % vec3<u32>(32u))), ~global2.x), global3.e);
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.b, global3.b, global3.b))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(455f, global3.b, 460f))) - vec3<f32>(global3.b, 2032f, global3.b))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(global3.b, global3.b), 1000f, _wgslsmith_f_op_f32(199f * global3.b)))), abs(23668u), global3.a.yy);
}

