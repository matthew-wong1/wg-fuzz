struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 8>;

var<private> global1: array<f32, 21> = array<f32, 21>(-1597f, -176f, 1198f, -1051f, -487f, 272f, -111f, 2234f, -1614f, -393f, 572f, 622f, -221f, -1551f, -369f, -745f, 1284f, -574f, 2130f, 627f, -1529f);

var<private> global2: Struct_1 = Struct_1(vec3<i32>(-1i, -35958i, 2592i), vec4<u32>(31880u, 1u, 19988u, 4294967295u), vec3<i32>(0i, 4039i, i32(-2147483648)), vec4<bool>(false, false, false, false));

var<private> global3: Struct_1;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<u32>) -> i32 {
    let var_0 = Struct_1(global2.a, vec4<u32>(countOneBits(_wgslsmith_dot_vec3_u32(countOneBits(global3.b.wxw), ~vec3<u32>(1u, 27813u, u_input.b.x))), 59726u, select(1u, ~(~43392u), all(select(global3.d.xzz, vec3<bool>(global2.d.x, false, false), global2.d.wxz))), 66220u), _wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(global3.c.x, global3.a.x, global2.a.x), vec3<i32>(global3.a.x, u_input.a, u_input.a)), global3.a), select(select(select(vec4<bool>(global3.d.x, false, global3.d.x, true), vec4<bool>(false, true, global2.d.x, global2.d.x), 2147483647i < global2.c.x), !vec4<bool>(global2.d.x, global3.d.x, false, global2.d.x), global3.d), !global3.d, global3.d));
    let var_1 = var_0.d.x;
    global1 = array<f32, 21>();
    let var_2 = !global2.d.x;
    var var_3 = -vec4<i32>(u_input.a, u_input.a, ~(-(~1i)), var_0.c.x);
    return u_input.a;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec3<u32>, arg_2: vec2<bool>, arg_3: Struct_1) -> u32 {
    var var_0 = vec2<i32>(global2.a.x, ~(-_wgslsmith_mod_i32(u_input.a, func_3(arg_3.b.wzw))));
    var var_1 = global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.b.x, global2.b.x, global2.b.x), _wgslsmith_add_vec3_u32(global3.b.xzw, vec3<u32>(0u, arg_3.b.x, global3.b.x))), 4294967295u), _wgslsmith_mod_vec2_u32(vec2<u32>(arg_3.b.x, _wgslsmith_clamp_u32(arg_1.x, arg_1.x, global3.b.x)), abs(vec2<u32>(0u, arg_1.x) | vec2<u32>(global2.b.x, 76763u)))), 8u)];
    global0 = array<Struct_1, 8>();
    var var_2 = all(select(select(!vec2<bool>(true, arg_3.d.x), global2.d.zy, true & arg_2.x), vec2<bool>(_wgslsmith_clamp_u32(global2.b.x, 1u, global3.b.x) > arg_1.x, true), !vec2<bool>(!arg_2.x, true)));
    global3 = global0[_wgslsmith_index_u32(34553u, 8u)];
    return ~u_input.b.x;
}

fn func_1(arg_0: vec2<f32>) -> bool {
    let var_0 = vec4<u32>(_wgslsmith_clamp_u32(func_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global1[_wgslsmith_index_u32(u_input.b.x, 21u)], -654f, 1624f), vec3<f32>(-969f, 1021f, -548f))), _wgslsmith_add_vec3_u32(global2.b.xwx, u_input.b) ^ global3.b.wzx, select(global2.d.zw, !vec2<bool>(global2.d.x, false), select(global2.d.xx, global2.d.yy, global2.d.x)), Struct_1(global3.a | vec3<i32>(-24761i, u_input.a, u_input.a), vec4<u32>(1u, 30206u, u_input.b.x, 4294967295u) & global2.b, global3.c, vec4<bool>(global2.d.x, global3.d.x, true, true))), global3.b.x, 38435u), (1u << ((~0u | global3.b.x) % 32u)) >> (1u % 32u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x >> (~u_input.b.x % 32u), global3.b.x), ~(~vec2<u32>(global2.b.x, 4294967295u) | vec2<u32>(global3.b.x, u_input.b.x))), reverseBits(~u_input.b.x));
    global3 = Struct_1(vec3<i32>(global3.c.x, -32118i, -2147483647i), vec4<u32>(reverseBits(17476u), var_0.x, u_input.b.x, ~abs(global2.b.x) ^ ~2532u), _wgslsmith_sub_vec3_i32(vec3<i32>(global3.a.x, 1i, _wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.a, u_input.a), reverseBits(-1i))), _wgslsmith_mult_vec3_i32(select(abs(vec3<i32>(u_input.a, global3.c.x, global2.a.x)), -vec3<i32>(-80532i, 0i, -43458i), global3.d.x), -vec3<i32>(-232i, global3.c.x, -13243i))), global3.d);
    let var_1 = _wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(var_0.x, u_input.b.x, global3.b.x));
    global3 = Struct_1(-global2.c, var_0, _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-53429i, global3.a.x), u_input.a, _wgslsmith_div_i32(2147483647i, u_input.a)), ~vec3<i32>(2147483647i, 32807i, 1i), vec3<i32>(0i, -u_input.a, u_input.a)), select(_wgslsmith_div_vec3_i32(global3.c, vec3<i32>(55050i, global2.a.x, global3.a.x)), global2.c ^ vec3<i32>(u_input.a, global2.c.x, global3.a.x), global2.d.x) >> ((_wgslsmith_clamp_vec3_u32(vec3<u32>(21567u, 0u, 0u), vec3<u32>(75362u, global3.b.x, 72905u), vec3<u32>(4294967295u, u_input.b.x, var_0.x)) >> (~global3.b.yyz % vec3<u32>(32u))) % vec3<u32>(32u))), global3.d);
    var var_2 = global0[_wgslsmith_index_u32(global3.b.x, 8u)];
    return true;
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1) -> Struct_1 {
    let var_0 = vec4<i32>(~select(arg_0.c.x, firstLeadingBit(_wgslsmith_add_i32(-1i, 0i)), arg_0.d.x), arg_0.a.x, -1i, min(~(-1i), arg_2.a.x & _wgslsmith_mult_i32(firstTrailingBit(global3.c.x), 1i)));
    var var_1 = Struct_1(firstTrailingBit(global3.c << (abs(global3.b.xwy) % vec3<u32>(32u))) >> (~(~global3.b.zxy) % vec3<u32>(32u)), vec4<u32>(countOneBits(1u), ~11313u, 19241u, 0u), vec3<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(~vec3<i32>(arg_2.a.x, 0i, -20103i), arg_0.c), 55002i), -55023i, ~global2.c.x), vec4<bool>(true, global2.d.x, func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(global1[_wgslsmith_index_u32(1u, 21u)], global1[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec2<f32>(217f, 770f))))), all(vec3<bool>(true, global3.d.x, arg_2.d.x))));
    global2 = global0[_wgslsmith_index_u32(arg_0.b.x << (~52418u % 32u), 8u)];
    let var_2 = arg_0;
    let var_3 = arg_0.b ^ ~(~vec4<u32>(29832u, 77827u ^ global2.b.x, 0u, var_1.b.x));
    return Struct_1(firstTrailingBit(abs(~(vec3<i32>(arg_2.a.x, -28379i, var_1.a.x) & var_1.a))), var_2.b, reverseBits(countOneBits(select(vec3<i32>(arg_2.c.x, arg_0.c.x, global3.a.x), vec3<i32>(var_0.x, arg_1, global2.c.x), vec3<bool>(false, global3.d.x, false)) & global3.a)), select(select(select(vec4<bool>(false, false, arg_2.d.x, arg_0.d.x), var_1.d, true), global2.d, global3.d), var_1.d, false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstTrailingBit(_wgslsmith_mult_i32(global3.a.x, 2147483647i) & global3.a.x);
    let var_1 = ~firstTrailingBit(u_input.b.x);
    global3 = func_4(Struct_1(-firstTrailingBit(abs(vec3<i32>(global3.a.x, 1i, var_0))), ~global3.b, global2.a, vec4<bool>(true == func_1(vec2<f32>(global1[_wgslsmith_index_u32(1u, 21u)], 932f)), all(vec3<bool>(true, false, true)), all(select(vec4<bool>(true, true, global3.d.x, true), global3.d, vec4<bool>(global3.d.x, true, true, false))), global2.d.x || all(vec4<bool>(global2.d.x, global3.d.x, true, global2.d.x)))), u_input.a, Struct_1(-global2.c ^ global2.c, ~vec4<u32>(u_input.b.x, 0u, 1u, global3.b.x) | _wgslsmith_div_vec4_u32(min(vec4<u32>(var_1, 1u, 97439u, global2.b.x), vec4<u32>(global2.b.x, global3.b.x, 699u, u_input.b.x)), global2.b), global2.c, global2.d));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1[_wgslsmith_index_u32(80000u, 21u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(111f, 121f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(1775f)), _wgslsmith_f_op_f32(abs(global1[_wgslsmith_index_u32(var_1, 21u)]))))))));
    global0 = array<Struct_1, 8>();
    let var_3 = countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, -47393i, max(_wgslsmith_mod_i32(-1i, 7006i), _wgslsmith_mult_i32(global3.c.x, global3.c.x)), var_0), -(vec4<i32>(-1i) * -vec4<i32>(0i, -2147483647i, var_0, -28291i))));
    let x = u_input.a;
    s_output = StorageBuffer(global2.c.x, _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(373f, _wgslsmith_f_op_f32(sign(1421f)), -772f, _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(4294967295u, 21u)]))))), u_input.b.zz);
}

