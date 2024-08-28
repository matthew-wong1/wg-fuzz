struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<u32>,
    c: Struct_2,
}

struct Struct_5 {
    a: vec4<u32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: u32,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 701f;

var<private> global1: Struct_2 = Struct_2(vec4<f32>(665f, -186f, -721f, -1976f), Struct_1(0i, true, vec3<f32>(1209f, 1000f, 501f)), false, Struct_1(-1i, true, vec3<f32>(1855f, -590f, -615f)));

var<private> global2: Struct_5 = Struct_5(vec4<u32>(4294967295u, 1u, 42755u, 35963u), 2147483647i);

var<private> global3: vec2<u32> = vec2<u32>(22082u, 39813u);

var<private> global4: vec4<u32>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: f32) -> bool {
    global4 = _wgslsmith_mod_vec4_u32(~global2.a, global2.a);
    let var_0 = select(select(select(select(!vec2<bool>(false, global1.d.b), vec2<bool>(global1.c, global1.b.b), !global1.b.b), !vec2<bool>(false, global1.b.b), global1.b.b), vec2<bool>(true, global1.d.b), !select(select(vec2<bool>(global1.b.b, true), vec2<bool>(true, global1.d.b), global1.c), !vec2<bool>(global1.d.b, global1.b.b), global1.d.b)), select(!(!vec2<bool>(global1.b.b, global1.c)), vec2<bool>(!(!global1.b.b), any(select(vec3<bool>(global1.d.b, true, global1.c), vec3<bool>(false, false, global1.c), true))), select(!(!vec2<bool>(global1.b.b, false)), !select(vec2<bool>(true, false), vec2<bool>(global1.b.b, global1.b.b), vec2<bool>(global1.c, false)), !vec2<bool>(false, global1.d.b))), (~global3.x > ~u_input.c) | (global2.b > _wgslsmith_dot_vec3_i32(select(vec3<i32>(-25680i, u_input.b.x, -1i), vec3<i32>(global1.d.a, global2.b, global2.b), global1.d.b), ~vec3<i32>(-1i, global2.b, u_input.b.x))));
    var var_1 = vec2<u32>(0u, select(u_input.a, ~abs(select(4294967295u, global4.x, global1.c)), true));
    global0 = _wgslsmith_f_op_f32(max(894f, -377f));
    global4 = _wgslsmith_add_vec4_u32((countOneBits(global2.a) | vec4<u32>(96561u, var_1.x, firstLeadingBit(4294967295u), 4294967295u)) >> (firstTrailingBit(vec4<u32>(global3.x, 15620u, 0u, global4.x | 1u)) % vec4<u32>(32u)), vec4<u32>(~(global2.a.x | abs(1u)), 11397u, ~0u, ~global4.x));
    return any(select(vec3<bool>(var_0.x, true, all(!vec2<bool>(false, var_0.x))), select(!select(vec3<bool>(false, var_0.x, global1.b.b), vec3<bool>(var_0.x, true, true), vec3<bool>(true, var_0.x, false)), !(!vec3<bool>(true, var_0.x, var_0.x)), any(vec2<bool>(true, global1.d.b))), !(!select(vec3<bool>(true, true, true), vec3<bool>(var_0.x, var_0.x, global1.d.b), vec3<bool>(false, false, var_0.x)))));
}

fn func_2() -> Struct_5 {
    let var_0 = any(select(vec2<bool>(!(!global1.c), !func_3(global1.d.c.x, 1450f)), !vec2<bool>(global1.d.b, all(vec3<bool>(global1.c, false, global1.b.b))), !(global1.c != global1.b.b) && global1.d.b));
    let var_1 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(round(global1.a)), Struct_1(~_wgslsmith_mod_i32(global1.b.a, 1i), true, vec3<f32>(_wgslsmith_f_op_f32(global1.d.c.x - -1467f), _wgslsmith_div_f32(global1.b.c.x, global1.a.x), _wgslsmith_f_op_f32(ceil(global1.b.c.x)))), global1.c, global1.d), global2.a, Struct_2(vec4<f32>(global1.a.x, 455f, global1.d.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a.x - 962f)))), global1.b, true, Struct_1(_wgslsmith_mod_i32(2147483647i, global1.b.a & global1.d.a), !global1.c, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.b.c.x, global1.d.c.x, global1.d.c.x) * vec3<f32>(global1.a.x, global1.a.x, 348f)))))));
    var var_2 = firstLeadingBit(vec4<i32>(-2147483647i, 1i & _wgslsmith_clamp_i32(1i, 1i, _wgslsmith_mod_i32(1i, global1.b.a)), -1i, _wgslsmith_div_i32(-2147483647i, 1i)));
    global2 = Struct_5(reverseBits(vec4<u32>(1u >> (_wgslsmith_div_u32(var_1.b.x, global3.x) % 32u), var_1.b.x, 4294967295u, 16575u)), abs(firstLeadingBit(global1.b.a)));
    global1 = var_1.c;
    return Struct_5(vec4<u32>(((global2.a.x << (var_1.b.x % 32u)) ^ _wgslsmith_clamp_u32(global2.a.x, global2.a.x, var_1.b.x)) >> (_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, global2.a.x, global4.x), vec3<u32>(13299u, global4.x, 34185u)), 1u, min(1u, global2.a.x)) % 32u), _wgslsmith_sub_u32(0u, global2.a.x), _wgslsmith_sub_u32(firstTrailingBit(~4294967295u), _wgslsmith_dot_vec3_u32(~global2.a.zwx, global4.wyz >> (vec3<u32>(4294967295u, global4.x, 4294967295u) % vec3<u32>(32u)))), ~(~1227u)), _wgslsmith_div_i32(~(-71821i), countOneBits(var_2.x)));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: u32, arg_3: u32) -> bool {
    let var_0 = -(_wgslsmith_clamp_vec4_i32(-vec4<i32>(u_input.b.x, global2.b, u_input.b.x, global2.b) & ~vec4<i32>(1i, 0i, 14892i, u_input.b.x), ~select(vec4<i32>(-19206i, 0i, global2.b, global1.b.a), vec4<i32>(global1.b.a, 1i, -23395i, 7129i), vec4<bool>(global1.c, global1.c, global1.d.b, false)), select(vec4<i32>(global2.b, global1.d.a, 9720i, 28925i), firstLeadingBit(vec4<i32>(2147483647i, 1i, global1.d.a, -1i)), global1.d.b && global1.c)) << (~(~global2.a) % vec4<u32>(32u)));
    var var_1 = func_2();
    let var_2 = 132885u;
    var var_3 = !vec3<bool>(true, true, _wgslsmith_f_op_f32(f32(-1f) * -2856f) <= global1.d.c.x);
    global4 = global2.a;
    return true && !(!((global1.d.a ^ 1i) < ~0i));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(-global1.a.x), 1219f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-251f, _wgslsmith_f_op_f32(trunc(global1.b.c.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.b.c.x + global1.d.c.x) + 1000f)))), Struct_1(1i, !(true | any(vec4<bool>(false, global1.b.b, false, false))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-473f, global1.d.c.x), global1.d.c.x, all(vec4<bool>(global1.c, true, true, false)))), _wgslsmith_f_op_f32(-global1.a.x), global1.b.c.x)), select(false, !func_1(vec3<u32>(19450u, 21240u, u_input.c), Struct_3(global1.b.c.x), _wgslsmith_div_u32(4294967295u, 117814u), 4294967295u), 0u <= ((1u << (u_input.a % 32u)) & ~u_input.c)), Struct_1(1i, !global1.c | any(vec3<bool>(false, global1.c, global1.d.b)), global1.b.c));
    global1 = Struct_2(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(285f, 782f, _wgslsmith_f_op_f32(global1.a.x - -1985f), global1.a.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.a)))), Struct_1(global2.b, any(!vec4<bool>(global1.b.b, true, false, global1.d.b)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1494f, global1.d.c.x, global1.b.c.x)))))), any(select(!select(vec4<bool>(true, false, global1.c, global1.d.b), vec4<bool>(false, false, false, false), true), vec4<bool>(global1.c && true, 0u < global3.x, all(vec3<bool>(true, global1.d.b, global1.b.b)), any(vec3<bool>(global1.c, global1.d.b, global1.b.b))), !vec4<bool>(false, global1.b.b, false, global1.b.b))), Struct_1(u_input.b.x, global1.b.b, global1.b.c));
    var var_0 = firstLeadingBit(_wgslsmith_sub_vec4_i32(~vec4<i32>(0i, global1.d.a, 0i, global1.d.a), -_wgslsmith_sub_vec4_i32(vec4<i32>(global1.b.a, -43619i, global2.b, 0i), vec4<i32>(global2.b, 0i, global1.b.a, 0i)))) >> (vec4<u32>(0u, u_input.c, u_input.c, global2.a.x) % vec4<u32>(32u));
    global2 = Struct_5(vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(0u, 0u, global3.x)), vec3<u32>(~global2.a.x, ~global3.x, firstTrailingBit(928u))), reverseBits(~1u), 34152u, ~global4.x), u_input.d);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(global1.a.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.b.c.x), global1.d.c.x, global1.b.b)))), _wgslsmith_f_op_f32(exp2(global1.a.x)), !(!global1.b.b))));
    global3 = ~(~vec2<u32>(37540u, _wgslsmith_mult_u32(u_input.c, func_2().a.x)));
    var var_2 = _wgslsmith_mod_u32(31842u, global2.a.x);
    global3 = ~global2.a.zx >> (abs(global4.wz) % vec2<u32>(32u));
    var var_3 = _wgslsmith_sub_vec2_i32(vec2<i32>(-1i, abs(global1.b.a | var_0.x) >> (global4.x % 32u)), var_0.wz);
    let x = u_input.a;
    s_output = StorageBuffer(~global4.x);
}

