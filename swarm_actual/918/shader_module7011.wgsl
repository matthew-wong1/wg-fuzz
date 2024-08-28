struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: i32,
}

struct Struct_4 {
    a: f32,
    b: vec2<f32>,
}

struct Struct_5 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 30>;

var<private> global1: array<u32, 6>;

var<private> global2: array<vec4<bool>, 5>;

var<private> global3: i32;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1, arg_2: u32) -> i32 {
    global2 = array<vec4<bool>, 5>();
    var var_0 = ~1u;
    global1 = array<u32, 6>();
    global2 = array<vec4<bool>, 5>();
    global1 = array<u32, 6>();
    return _wgslsmith_dot_vec2_i32(firstLeadingBit(-_wgslsmith_div_vec2_i32(-u_input.b.wz, select(vec2<i32>(13678i, arg_0.c), vec2<i32>(u_input.a, u_input.b.x), arg_0.d.x))), reverseBits(select(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(arg_1.b.yw, u_input.b.zy), vec2<i32>(u_input.b.x, arg_0.c)), ~arg_1.b.ww, all(select(global2[_wgslsmith_index_u32(0u, 5u)], global2[_wgslsmith_index_u32(30918u, 5u)], false)))));
}

fn func_3() -> i32 {
    let var_0 = _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(countOneBits(u_input.b.wx | (u_input.b.xx >> (vec2<u32>(12753u, 16244u) % vec2<u32>(32u)))), -_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b.x, 2147483647i), vec2<i32>(u_input.b.x, u_input.a))), ~u_input.b.wz);
    let var_1 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, 212f)), vec2<f32>(-575f, -895f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(524f, 619f)), vec2<bool>(any(global2[_wgslsmith_index_u32(4079u, 5u)]), true))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1066f, -365f), vec2<f32>(774f, -817f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-784f, 777f)))));
    let var_2 = global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~74609u, _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_div_u32(global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(26027u, 6u)], 6u)]), 6u)], 50523u)), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)], 6u)]) | firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 6u)], 6u)]), 1u, 0u), 6u)])), 6u)], 5u)];
    global0 = array<Struct_1, 30>();
    global3 = firstLeadingBit(u_input.a);
    return min(_wgslsmith_dot_vec3_i32(~(-u_input.b.zxw), u_input.b.wwz), -(var_0.x >> (3898u % 32u)));
}

fn func_2(arg_0: bool, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> Struct_3 {
    var var_0 = select(vec2<bool>(select(false, !(947i >= arg_1), any(!global2[_wgslsmith_index_u32(24467u, 5u)])), !select(true, -421f < arg_3.a, true)), select(vec2<bool>(all(!global2[_wgslsmith_index_u32(0u, 5u)]), arg_0), !(!vec2<bool>(arg_0, arg_0)), select(vec2<bool>(arg_0, true), !select(vec2<bool>(arg_0, true), vec2<bool>(false, true), vec2<bool>(false, arg_0)), any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(arg_0, arg_0))))), true);
    var var_1 = Struct_3(select(vec2<i32>(reverseBits(arg_2.b.x), u_input.a), vec2<i32>(16724i, arg_1) << (countOneBits(vec2<u32>(arg_2.c, arg_2.c)) % vec2<u32>(32u)), true) & abs(max(vec2<i32>(arg_3.b.x, -20876i), min(arg_2.b.zw, arg_2.b.yy))), func_3(), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(700f, -545f)) - vec2<f32>(arg_3.a, arg_2.a)), vec2<f32>(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-arg_2.a)), !(!vec2<bool>(var_0.x, arg_0)))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(arg_3.a, -1604f))), vec2<f32>(arg_2.a, 668f))))), max(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(select(vec4<u32>(arg_2.c, 80250u, 4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(arg_2.c, 6u)], 6u)]), vec4<u32>(arg_3.c, arg_3.c, 48927u, 4294967295u), var_0.x), reverseBits(vec4<u32>(0u, 4056u, 1u, arg_3.c))), ~vec4<u32>(44143u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(24705u, 6u)], 6u)], 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], 7892u)), ~_wgslsmith_mult_vec4_u32(~vec4<u32>(arg_3.c, 4294967295u, 0u, global1[_wgslsmith_index_u32(1571u, 6u)]), vec4<u32>(arg_2.c, 46534u, 8229u, arg_3.c))), -2147483647i);
    global1 = array<u32, 6>();
    var var_2 = Struct_3(vec2<i32>(_wgslsmith_sub_i32(arg_1, -29499i), ~func_1(Struct_2(arg_3.a, arg_3.a, var_1.a.x, vec4<bool>(arg_0, arg_0, arg_0, false), vec2<u32>(4294967295u, var_1.d.x)), Struct_1(-495f, u_input.b, 1890u), 0u)) ^ ((arg_3.b.yw | var_1.a) & (u_input.b.zy & var_1.a)), reverseBits(_wgslsmith_dot_vec4_i32(~u_input.b << (vec4<u32>(0u, 0u, var_1.d.x, 56469u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_3.b.x, arg_1, 2147483647i, 0i) << (var_1.d % vec4<u32>(32u)), abs(vec4<i32>(-29465i, u_input.a, -2147483647i, u_input.a))))), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.c.x, _wgslsmith_f_op_f32(floor(arg_3.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-802f, arg_2.a)))))), _wgslsmith_sub_vec4_u32(vec4<u32>(arg_2.c, abs(countOneBits(0u)), min(~4294967295u, abs(18261u)), ~36488u), _wgslsmith_sub_vec4_u32(var_1.d, ~(var_1.d >> (vec4<u32>(global1[_wgslsmith_index_u32(1u, 6u)], 34046u, arg_2.c, 1u) % vec4<u32>(32u))))), 1i);
    let var_3 = Struct_2(-530f, var_2.c.x, 0i, global2[_wgslsmith_index_u32(arg_3.c, 5u)], ~vec2<u32>(abs(max(global1[_wgslsmith_index_u32(var_2.d.x, 6u)], 1u)), ~min(1u, arg_2.c)));
    return Struct_3(~min(arg_2.b.zy, vec2<i32>(~2567i, firstTrailingBit(var_3.c))), var_3.c ^ -80869i, var_2.c, _wgslsmith_clamp_vec4_u32(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(43289u, 9235u, 4294967295u, 4294967295u), vec4<u32>(arg_2.c, 10230u, global1[_wgslsmith_index_u32(0u, 6u)], 1u))), var_2.d, ~var_1.d | firstTrailingBit(vec4<u32>(var_3.e.x, var_1.d.x, 19035u, 45906u))), arg_2.b.x ^ _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_1, arg_3.b.x, var_3.c), u_input.b), vec4<i32>(var_2.b, -2147483647i, var_1.b, 0i)), abs(arg_3.b << (vec4<u32>(4294967295u, 64359u, global1[_wgslsmith_index_u32(arg_2.c, 6u)], 1u) % vec4<u32>(32u)))));
}

fn func_4(arg_0: Struct_3) -> bool {
    let var_0 = vec3<bool>(true, false & !(arg_0.d.x < 282u), !(true & all(select(global2[_wgslsmith_index_u32(24315u, 5u)], vec4<bool>(true, true, false, false), global2[_wgslsmith_index_u32(80691u, 5u)]))));
    var var_1 = 2147483647i;
    let var_2 = ~(-arg_0.a.x) & _wgslsmith_div_i32(_wgslsmith_mod_i32(reverseBits(i32(-1i) * -28810i), abs(u_input.b.x)), arg_0.e);
    var var_3 = Struct_3(-u_input.b.zx, arg_0.e, arg_0.c, arg_0.d, countOneBits(~(~28497i)) << ((select(countOneBits(1u), ~arg_0.d.x, var_0.x) | 1u) % 32u));
    var var_4 = arg_0;
    return var_0.x;
}

fn func_5(arg_0: Struct_4, arg_1: vec4<bool>) -> u32 {
    global0 = array<Struct_1, 30>();
    global2 = array<vec4<bool>, 5>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)));
    global3 = u_input.a;
    global1 = array<u32, 6>();
    return func_2(all(!vec3<bool>(arg_1.x != false, arg_1.x, arg_1.x)), 61111i, Struct_1(351f, firstTrailingBit(~(vec4<i32>(1i, -10361i, -2147483647i, u_input.a) & vec4<i32>(u_input.a, u_input.a, -14951i, u_input.a))), ~max(1201u | global1[_wgslsmith_index_u32(6798u, 6u)], firstTrailingBit(global1[_wgslsmith_index_u32(99294u, 6u)]))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_f_op_f32(1646f + 1948f))), u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)])).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~func_1(Struct_2(-548f, _wgslsmith_f_op_f32(min(435f, -520f)), u_input.b.x, vec4<bool>(true, false, true, false), select(vec2<u32>(global1[_wgslsmith_index_u32(1u, 6u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)], 6u)], 6u)]), vec2<u32>(25941u, global1[_wgslsmith_index_u32(1u, 6u)]), vec2<bool>(false, false))), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~50892u, 6u)], 30u)], 8502u));
    var var_1 = vec4<u32>(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(abs(50297u), 6u)] << (~22863u % 32u), 4294967295u), ~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 6u)], 6u)], 6u)], 6u)], 6u)], 6u)], func_5(Struct_4(166f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(991f, 502f))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-575f, 387f) - vec2<f32>(180f, 161f)))), vec4<bool>(true, true, all(vec2<bool>(true, true)), func_4(func_2(true, var_0, Struct_1(-133f, vec4<i32>(7515i, 38307i, -2147483647i, var_0), global1[_wgslsmith_index_u32(20781u, 6u)]), Struct_1(1067f, u_input.b, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 6u)], 6u)]))))), ~4294967295u);
    var var_2 = global0[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~(~var_1.x), 6u)], 30u)];
    var_1 = func_2(all(vec2<bool>(any(vec3<bool>(true, true, true)) & (4294967295u != var_1.x), select(true, any(vec2<bool>(true, false)), true))), u_input.b.x, Struct_1(-435f, vec4<i32>(-6862i, _wgslsmith_sub_i32(2147483647i, countOneBits(u_input.a)), func_2(true, 57880i, Struct_1(var_2.a, var_2.b, var_1.x), global0[_wgslsmith_index_u32(var_2.c, 30u)]).e, ~2147483647i), _wgslsmith_sub_u32(1u, var_1.x)), Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_2.a))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a) + -2837f), true)), vec4<i32>(-2147483647i, _wgslsmith_div_i32(var_0, u_input.a), u_input.a, func_1(Struct_2(-191f, var_2.a, 1i, global2[_wgslsmith_index_u32(27773u, 5u)], var_1.zy), global0[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(var_1.x, 6u)], 30u)], ~0u)), _wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(4064u, 2302u, 12233u)), ~(~vec3<u32>(var_2.c, 8109u, var_1.x))))).d;
    global3 = _wgslsmith_div_i32(func_3(), 0i) ^ -_wgslsmith_clamp_i32(~var_2.b.x, _wgslsmith_add_i32(18412i, -1i) | var_2.b.x, firstTrailingBit(1i));
    let var_3 = !(!vec4<bool>(true && all(global2[_wgslsmith_index_u32(4294967295u, 5u)]), all(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(43008u, 6u)], 5u)]) | true, select(true, true, true), any(select(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true)))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1161f + _wgslsmith_f_op_f32(ceil(var_2.a))))) + var_2.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-311f, -578f, var_2.a), vec3<f32>(-673f, var_2.a, var_2.a), var_3.wwx)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, var_2.a)), var_3.x | false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1094f, var_2.a, var_2.a) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, var_2.a, var_2.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-680f, -1032f, var_2.a), vec3<f32>(-1000f, var_2.a, 547f), var_3.yww)) - vec3<f32>(633f, var_2.a, 297f))), !var_3.x)), _wgslsmith_mult_i32(-(~var_2.b.x), _wgslsmith_mod_i32(select(-17625i, ~var_0, all(vec2<bool>(var_3.x, var_3.x))), select(-59387i, -41144i, var_3.x))), _wgslsmith_sub_i32(-1i ^ min(~u_input.a, -48841i), var_0), vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(var_0 >> (var_1.x % 32u), var_0)));
}

