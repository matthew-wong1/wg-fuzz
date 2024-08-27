struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec3<bool>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 28> = array<i32, 28>(1i, 10336i, -290i, 30503i, 2147483647i, -875i, -25555i, -1i, -95852i, i32(-2147483648), -12370i, -1i, 2147483647i, 2147483647i, 1i, -4509i, -76665i, 2147483647i, -2933i, 0i, -49882i, 13150i, -18676i, 7060i, 1i, 0i, 3157i, -1i);

var<private> global1: u32;

var<private> global2: Struct_2 = Struct_2(vec4<bool>(true, true, false, false), 0u, Struct_1(vec3<u32>(0u, 28068u, 47107u), vec4<f32>(1000f, 1083f, 830f, -2127f), vec2<u32>(4294967295u, 1u), vec3<bool>(true, true, false), 1u), true);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<u32> {
    let var_0 = global2.a.xzx;
    var var_1 = !(!global2.c.d);
    let var_2 = Struct_1(~global2.c.a >> (vec3<u32>(~min(1u, 21108u), global2.b, 67357u) % vec3<u32>(32u)), global2.c.b, select(global2.c.a.zy, _wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c, _wgslsmith_clamp_u32(global2.b, global2.b, 4294967295u)), ~(~vec2<u32>(6235u, global2.c.a.x)), global2.c.a.xx), global2.a.ww), select(global2.c.d, select(global2.c.d, global2.a.zxy, global2.c.d), true), global2.b);
    global2 = Struct_2(select(vec4<bool>(var_2.d.x | (global2.c.c.x < 8837u), !any(var_2.d.zy), any(select(vec2<bool>(var_2.d.x, false), vec2<bool>(false, var_2.d.x), true)), true), global2.a, all(global2.a.ww)), ~49638u, var_2, true);
    let var_3 = global0[_wgslsmith_index_u32(~u_input.c, 28u)];
    return max(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(43150u, u_input.c, 1u), ~vec3<u32>(var_2.e, 61707u, var_2.e)), vec3<u32>(firstTrailingBit(1u), u_input.c | var_2.c.x, 1u)), firstLeadingBit(~var_2.a >> (~vec3<u32>(var_2.a.x, var_2.e, 1u) % vec3<u32>(32u))), ~(~(vec3<u32>(66290u, 14210u, global2.b) | vec3<u32>(var_2.a.x, global2.c.c.x, 1u)))), reverseBits(global2.c.a));
}

fn func_2() -> vec4<bool> {
    global2 = Struct_2(!global2.a, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(global2.b, 37316u, 4294967295u), global2.c.a), _wgslsmith_sub_vec3_u32(func_3(), func_3())), global2.c, global2.a.x);
    var var_0 = Struct_1(_wgslsmith_sub_vec3_u32(global2.c.a, _wgslsmith_add_vec3_u32(global2.c.a, max(global2.c.a ^ vec3<u32>(u_input.a, global2.b, 1u), ~vec3<u32>(9260u, u_input.a, 1u)))), global2.c.b, _wgslsmith_add_vec2_u32(select(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 104656u), vec2<u32>(global2.b, u_input.c)) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(global2.c.e, global2.c.a.x), global2.c.a.xy), vec2<u32>(_wgslsmith_mod_u32(35138u, global2.c.c.x), ~4294967295u), !any(vec3<bool>(false, false, false))), vec2<u32>(u_input.c, _wgslsmith_mod_u32(~u_input.c, 22070u & u_input.c))), !global2.a.wzy, global2.b);
    let var_1 = -_wgslsmith_mod_i32(~(~(-2147483647i)), countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(22321i, u_input.d, u_input.b.x, 1i), vec4<i32>(u_input.b.x, global0[_wgslsmith_index_u32(global2.b, 28u)], global0[_wgslsmith_index_u32(u_input.a, 28u)], 1i) << (vec4<u32>(global2.c.c.x, 4294967295u, 1u, var_0.e) % vec4<u32>(32u)))));
    var var_2 = select(!vec3<bool>((global2.c.b.x != -898f) || any(global2.c.d), false, _wgslsmith_dot_vec3_i32(vec3<i32>(var_1, global0[_wgslsmith_index_u32(1u, 28u)], -34721i), u_input.b) > (u_input.b.x ^ 4889i)), vec3<bool>(global2.d, all(vec2<bool>(global2.d, var_0.d.x)), var_0.d.x && global2.d), select(false, true, any(vec2<bool>(var_0.d.x, var_0.d.x))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.b.x, var_0.b.x));
    return vec4<bool>(any(!global2.a), any(select(var_0.d, select(vec3<bool>(true, false, true), var_0.d, select(vec3<bool>(true, false, false), global2.a.wyz, var_0.d.x)), !vec3<bool>(true, true, var_0.d.x))), var_0.d.x, var_0.d.x);
}

fn func_1() -> Struct_1 {
    global1 = abs(144780u);
    let var_0 = Struct_2(!func_2(), 1746u, global2.c, all(vec3<bool>(global2.d, any(select(vec4<bool>(true, global2.d, true, false), global2.a, vec4<bool>(global2.d, true, true, global2.c.d.x))), func_2().x)));
    let var_1 = 32894u < _wgslsmith_mod_u32(_wgslsmith_div_u32(~(4148u & var_0.b), select(12865u, u_input.c, global2.c.d.x)), _wgslsmith_dot_vec2_u32(global2.c.c, ~(~global2.c.c)));
    global0 = array<i32, 28>();
    var var_2 = var_0;
    return Struct_1(vec3<u32>(abs(1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(28701u, 57063u), select(u_input.c, var_2.b, false)), ~(8189u >> (var_0.c.e % 32u))), 4294967295u), var_0.c.b, ~var_0.c.a.zz, vec3<bool>(~_wgslsmith_mod_u32(u_input.a, 25987u) != u_input.a, !(true | !var_2.a.x), false), 7354u);
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(func_2(), 1u, arg_0, global2.c.d.x);
    var var_1 = Struct_2(vec4<bool>(select(arg_0.d.x, arg_0.d.x, !any(global2.a)), any(!var_0.c.d) || global2.c.d.x, all(var_0.c.d), !(firstLeadingBit(u_input.d) < 1i)), 4294967295u, func_1(), arg_0.d.x);
    var var_2 = vec4<i32>(select(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(-59068i, u_input.b.x, global0[_wgslsmith_index_u32(0u, 28u)], -16603i), vec4<i32>(-19366i, -2147483647i, u_input.b.x, global0[_wgslsmith_index_u32(var_0.c.c.x, 28u)])), vec4<i32>(~global0[_wgslsmith_index_u32(global2.c.e, 28u)], 4638i, ~(-60204i), u_input.d)), _wgslsmith_add_i32(~u_input.d, select(global0[_wgslsmith_index_u32(94549u, 28u)], -11855i, var_0.a.x)) & -firstLeadingBit(global0[_wgslsmith_index_u32(var_0.c.a.x, 28u)]), true), u_input.b.x, 19155i, firstLeadingBit(20793i));
    global1 = ~(~u_input.a);
    global0 = array<i32, 28>();
    return arg_0;
}

fn func_5(arg_0: Struct_2) -> Struct_2 {
    let var_0 = 462f;
    global2 = Struct_2(arg_0.a, select(u_input.c, _wgslsmith_mod_u32(0u, abs(4294967295u)), true) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u) & vec2<u32>(global2.c.e, arg_0.c.a.x), vec2<u32>(arg_0.c.c.x, 26321u)) % 32u), func_4(global2.c), true);
    global2 = Struct_2(!(!func_2()), ~46155u, func_4(global2.c), !(!(!arg_0.d)));
    var var_1 = !(!(!(!(!vec4<bool>(false, true, arg_0.d, true)))));
    global2 = arg_0;
    return Struct_2(select(vec4<bool>(arg_0.a.x, arg_0.a.x, false, _wgslsmith_clamp_u32(global2.c.a.x, 1u, 5459u) >= ~arg_0.b), !arg_0.a, global2.a), 53091u, func_1(), 0i >= _wgslsmith_mult_i32(countOneBits(~global0[_wgslsmith_index_u32(global2.b, 28u)]), min(global0[_wgslsmith_index_u32(12774u, 28u)], -2147483647i) & _wgslsmith_mod_i32(global0[_wgslsmith_index_u32(arg_0.c.c.x, 28u)], u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_i32(_wgslsmith_div_i32(-1i, global0[_wgslsmith_index_u32((min(0u, 1u) & global2.b) << (_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 0u, global2.c.a.x, global2.b), firstTrailingBit(vec4<u32>(global2.b, 937u, u_input.c, 1u))) % 32u), 28u)]), ~u_input.d);
    global2 = func_5(Struct_2(select(global2.a, global2.a, global2.a), min(u_input.a << (global2.b % 32u), u_input.c) ^ ~select(u_input.c, global2.c.a.x, global2.d), func_4(func_1()), !global2.c.d.x));
    var var_1 = u_input.a;
    var var_2 = u_input.a;
    let var_3 = select(0u, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(abs(~global2.c.a.yx), global2.c.c, global2.c.c), _wgslsmith_div_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(40382u, global2.c.a.x), ~u_input.c), _wgslsmith_sub_vec2_u32(global2.c.c, ~vec2<u32>(0u, global2.b)))), ~(~global2.b) < _wgslsmith_dot_vec3_u32(global2.c.a, _wgslsmith_sub_vec3_u32(global2.c.a, global2.c.a) << (func_4(global2.c).a % vec3<u32>(32u))));
    let var_4 = global2.c;
    var var_5 = false;
    var var_6 = global2.a.zz;
    let var_7 = func_5(Struct_2(!global2.a, u_input.c, Struct_1(var_4.a & ~vec3<u32>(global2.b, 1u, 104520u), _wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, global2.c.b.x, -270f, 1905f) * vec4<f32>(var_4.b.x, -442f, -617f, global2.c.b.x)), ~(~vec2<u32>(global2.c.c.x, u_input.a)), !var_4.d, 89962u), true));
    let x = u_input.a;
    s_output = StorageBuffer(-2797i, firstLeadingBit(~(~(vec4<u32>(var_7.b, 0u, global2.c.a.x, global2.b) >> (vec4<u32>(var_3, u_input.c, 22868u, u_input.c) % vec4<u32>(32u))))), (vec2<i32>(_wgslsmith_div_i32(2495i, 2147483647i), var_0) ^ vec2<i32>(-20356i, -2386i)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(42266i << (var_7.b % 32u), -2147483647i), -abs(u_input.b.yz), u_input.b.yx << (~var_4.a.zy % vec2<u32>(32u))), var_3 << (~var_7.b % 32u));
}

