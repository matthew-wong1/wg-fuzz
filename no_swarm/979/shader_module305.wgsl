struct Struct_1 {
    a: vec3<u32>,
    b: bool,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: array<vec3<u32>, 1>;

var<private> global2: vec4<u32> = vec4<u32>(4294967295u, 1u, 4294967295u, 16111u);

var<private> global3: array<i32, 7> = array<i32, 7>(2147483647i, 18245i, -1i, -5216i, i32(-2147483648), 2147483647i, i32(-2147483648));

var<private> global4: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(0u, 4294967295u, 0u), true, vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 0u), false, vec4<bool>(false, true, false, true)), Struct_1(vec3<u32>(0u, 1u, 39u), false, vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(58336u, 4294967295u, 0u), false, vec4<bool>(true, true, true, true)), Struct_1(vec3<u32>(4294967295u, 13215u, 17428u), false, vec4<bool>(false, true, false, true)), Struct_1(vec3<u32>(1u, 4294967295u, 12742u), false, vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(1u, 0u, 17520u), true, vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(61028u, 4294967295u, 1u), true, vec4<bool>(true, false, true, false)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec3<f32>) -> u32 {
    global0 = vec2<u32>(42704u, ~global0.x);
    var var_0 = Struct_1(_wgslsmith_add_vec3_u32(((vec3<u32>(u_input.c.x, u_input.c.x, 1u) >> (u_input.c.yyx % vec3<u32>(32u))) & vec3<u32>(global2.x, 0u, 18774u)) | global1[_wgslsmith_index_u32(firstTrailingBit(6902u | global0.x), 1u)], ~vec3<u32>(~global0.x, firstLeadingBit(57804u), global0.x)), !(false != all(vec4<bool>(false, false, true, true))), vec4<bool>(true | ((i32(-1i) * -1i) < global3[_wgslsmith_index_u32(~u_input.c.x, 7u)]), false, all(vec4<bool>(true, true, true, true)), select(true, false, !all(vec2<bool>(true, false)))));
    var_0 = global4[_wgslsmith_index_u32(u_input.a.x, 8u)];
    let var_1 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(8735u, ~var_0.a.x) << (global0.x % 32u), 8u)];
    global4 = array<Struct_1, 8>();
    return var_1.a.x;
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> vec3<bool> {
    global1 = array<vec3<u32>, 1>();
    global4 = array<Struct_1, 8>();
    var var_0 = 29180u << (func_3(_wgslsmith_f_op_vec3_f32(-arg_1.yyy)) % 32u);
    var var_1 = min(-vec3<i32>(2147483647i, 57429i, -65386i), vec3<i32>(_wgslsmith_sub_i32(min(-14198i, 12953i) << (~global0.x % 32u), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(u_input.b, -1i, u_input.b, u_input.b)), vec4<i32>(-23564i, global3[_wgslsmith_index_u32(0u, 7u)], u_input.b, u_input.b) ^ vec4<i32>(-7274i, u_input.b, 2147483647i, u_input.b))), ~abs(abs(u_input.b)), 0i));
    global4 = array<Struct_1, 8>();
    return vec3<bool>(all(!vec3<bool>(arg_0.b, true, arg_0.c.x)), any(arg_0.c.zyz), false);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<u32>) -> vec3<i32> {
    global4 = array<Struct_1, 8>();
    global2 = _wgslsmith_mod_vec4_u32(arg_2, vec4<u32>(41745u, ~(~_wgslsmith_mod_u32(733u, 35717u)), ~_wgslsmith_add_u32(~arg_0.a.x, min(arg_2.x, 33328u)), arg_0.a.x));
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, _wgslsmith_div_u32(global0.x, 15796u)), _wgslsmith_dot_vec4_u32(reverseBits(u_input.c), ~vec4<u32>(arg_1.a.x, 65254u, 85271u, 1u)), countOneBits(u_input.a.x)), 0u, ~global2.x), false, select(arg_0.c, vec4<bool>(true, any(!arg_1.c.zwy), true, func_2(Struct_1(vec3<u32>(global2.x, 59493u, 13437u), false, arg_0.c), vec4<f32>(1f, 1f, 1f, 1f)).x), (~arg_0.a.x >= _wgslsmith_dot_vec3_u32(arg_1.a, vec3<u32>(1u, 47567u, arg_2.x))) | (-821f < _wgslsmith_f_op_f32(ceil(-513f)))));
    var_0 = Struct_1(~vec3<u32>(~_wgslsmith_div_u32(69698u, global2.x), global0.x, 6125u), true, !(!(!select(arg_0.c, vec4<bool>(true, true, arg_0.b, var_0.b), vec4<bool>(false, var_0.c.x, arg_0.c.x, arg_0.c.x)))));
    var var_1 = arg_0.b;
    return vec3<i32>(min(u_input.b, u_input.b), global3[_wgslsmith_index_u32(arg_1.a.x, 7u)], u_input.b);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    var var_0 = arg_1;
    global3 = array<i32, 7>();
    var var_1 = ~(~(countOneBits(vec4<i32>(-1i, global3[_wgslsmith_index_u32(global2.x, 7u)], global3[_wgslsmith_index_u32(global2.x, 7u)], u_input.b)) << (~u_input.c % vec4<u32>(32u))) ^ -(~(vec4<i32>(-20248i, 0i, global3[_wgslsmith_index_u32(global2.x, 7u)], -4141i) & vec4<i32>(global3[_wgslsmith_index_u32(123118u, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)], u_input.b, 0i))));
    let var_2 = global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(max(u_input.a.x, u_input.c.x), _wgslsmith_sub_u32(u_input.a.x, ~564u), 4232u), 8u)];
    let var_3 = select(func_4(global4[_wgslsmith_index_u32(~(~max(16183u, u_input.c.x)), 8u)], Struct_1(select(_wgslsmith_div_vec3_u32(vec3<u32>(global0.x, global0.x, 18004u), u_input.c.yxx), vec3<u32>(27594u, 35271u, var_2.a.x) << (vec3<u32>(u_input.c.x, global2.x, global0.x) % vec3<u32>(32u)), func_2(global4[_wgslsmith_index_u32(1u, 8u)], arg_1)), !any(vec3<bool>(var_2.c.x, var_2.c.x, false)), select(vec4<bool>(var_2.b, false, var_2.b, true), !var_2.c, select(vec4<bool>(var_2.b, true, var_2.b, var_2.b), var_2.c, var_2.c))), _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(u_input.c, u_input.a), u_input.c, ~_wgslsmith_mod_vec4_u32(u_input.a, u_input.a))), ~(var_1.zzz ^ -_wgslsmith_sub_vec3_i32(var_1.wyz, var_1.yyy)), var_2.c.x);
    return Struct_1(min(~min(var_2.a | vec3<u32>(u_input.c.x, global2.x, global2.x), vec3<u32>(global2.x, 181103u, global2.x)), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global0.x), vec2<u32>(20891u, global0.x)) ^ 1u, 1u)]), var_2.b, vec4<bool>(any(!(!vec2<bool>(var_2.b, var_2.b))), true, var_2.c.x, false));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<i32, 7>();
    let var_0 = -vec3<i32>(global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~4294967295u), 1750u), 7u)], u_input.b, 26146i);
    var var_1 = -453f == _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -751f)))), 1034f);
    var var_2 = func_1(1245f, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-121f)), _wgslsmith_div_f32(447f, 1000f))), _wgslsmith_div_f32(-2141f, 1641f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(199f * -1055f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1306f + -1291f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2014f + 1587f) - 1338f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(518f - 244f)))));
    global4 = array<Struct_1, 8>();
    var var_3 = 1u;
    let var_4 = func_1(_wgslsmith_f_op_f32(1115f - 909f), vec4<f32>(1148f, -730f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(230f, -130f), 259f, false | var_2.b)) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-331f * -1197f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-915f, -1203f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f)))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.x, -1385f);
}

