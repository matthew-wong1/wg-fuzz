struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: i32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<f32>,
    d: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_1 = Struct_1(-1i, vec4<bool>(true, false, true, true), -306i, vec2<i32>(0i, -1i));

var<private> global2: i32 = -12792i;

var<private> global3: array<u32, 9> = array<u32, 9>(64125u, 44189u, 2648u, 48516u, 0u, 4294967295u, 0u, 1u, 42657u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_5, arg_2: vec2<u32>) -> vec4<f32> {
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d), _wgslsmith_f_op_f32(sign(arg_1.d)))))), 295f, _wgslsmith_f_op_f32(f32(-1f) * -491f), arg_1.d);
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_1) -> vec4<bool> {
    var var_0 = arg_3;
    var_0 = Struct_1(_wgslsmith_mult_i32(arg_3.d.x, _wgslsmith_sub_i32(_wgslsmith_mult_i32(48366i, u_input.b), u_input.c) >> (arg_1 % 32u)), vec4<bool>(any(select(select(global1.b, arg_3.b, global1.b), vec4<bool>(false, false, global1.b.x, global0.x), var_0.b.x && false)), false, _wgslsmith_f_op_f32(floor(arg_2.x)) < _wgslsmith_f_op_f32(select(arg_0.c.x, _wgslsmith_f_op_f32(f32(-1f) * -2143f), true)), global0.x), -2147483647i, var_0.d);
    global3 = array<u32, 9>();
    global3 = array<u32, 9>();
    global1 = Struct_1(_wgslsmith_clamp_i32(u_input.c << (1u % 32u), select(_wgslsmith_dot_vec4_i32(~vec4<i32>(global1.c, -64278i, global1.a, 1i), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.a, -1i, var_0.c, arg_3.c), vec4<i32>(-2147483647i, 1i, -15743i, u_input.c))), global1.a, (1468f == arg_2.x) & any(arg_3.b.wzy)), ~_wgslsmith_clamp_i32(1i, 1i, 2147483647i)), select(!var_0.b, !global1.b, true), -1i, max(_wgslsmith_mod_vec2_i32(var_0.d, vec2<i32>(-23769i, global1.d.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(-2147483647i), arg_3.c ^ -40758i), ~countOneBits(vec2<i32>(5289i, u_input.c)))));
    return !vec4<bool>(true, any(vec4<bool>(true, any(var_0.b.zw), false, all(vec4<bool>(global0.x, false, global1.b.x, false)))), var_0.b.x && global0.x, !(!var_0.b.x));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-180f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1060f, 1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -964f))));
    global3 = array<u32, 9>();
    let var_1 = func_4(Struct_2(min(abs(min(vec2<u32>(global3[_wgslsmith_index_u32(86557u, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)]), vec2<u32>(50908u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(46460u, 9u)], 9u)]))), ~vec2<u32>(49277u, 40750u)), (vec2<u32>(global3[_wgslsmith_index_u32(32360u, 9u)], 1u) << (vec2<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)]) % vec2<u32>(32u))) ^ vec2<u32>(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(41243u, 9u)], 9u)] ^ global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(53924u, 9u)], 9u)]), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -946f)), var_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0 + var_0), _wgslsmith_f_op_f32(var_0 + -370f)), 2268f)), global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global3[_wgslsmith_index_u32(~global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], 9792u, firstTrailingBit(1u)), 9u)], 9u)], 9u)], 9u)], _wgslsmith_f_op_vec4_f32(func_3(Struct_4(select(select(global1.b, global1.b, global1.b), !vec4<bool>(false, global0.x, true, true), global1.b.x)), Struct_5(select(vec4<i32>(u_input.c, -2147483647i, -2147483647i, 2147483647i), vec4<i32>(-51623i, -2147483647i, u_input.c, u_input.c), true) ^ -vec4<i32>(u_input.b, u_input.a, u_input.c, u_input.b), vec4<u32>(~global3[_wgslsmith_index_u32(54061u, 9u)], ~0u, global3[_wgslsmith_index_u32(4936u, 9u)], global3[_wgslsmith_index_u32(_wgslsmith_add_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 24645u), 9u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(256f, -919f, var_0)))), var_0), vec2<u32>(~(global3[_wgslsmith_index_u32(0u, 9u)] >> (1u % 32u)), global3[_wgslsmith_index_u32(firstTrailingBit(1u), 9u)]))), Struct_1(u_input.b, vec4<bool>(global1.b.x, true, (-9379i <= global1.a) == true, true), 2147483647i, vec2<i32>(_wgslsmith_dot_vec3_i32(select(vec3<i32>(global1.a, 3841i, u_input.c), vec3<i32>(u_input.a, -11901i, -2941i), global1.b.wwx), ~vec3<i32>(1i, global1.c, global1.c)), u_input.b)));
    global0 = vec4<bool>(var_1.x, false, func_4(Struct_2(~(vec2<u32>(global3[_wgslsmith_index_u32(42169u, 9u)], global3[_wgslsmith_index_u32(27934u, 9u)]) >> (vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(12373u, 9u)], 9u)], 9u)], 9u)], 4294967295u) % vec2<u32>(32u))), ~(vec2<u32>(global3[_wgslsmith_index_u32(6124u, 9u)], 1u) << (vec2<u32>(45510u, 4294967295u) % vec2<u32>(32u))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(var_0, var_0, var_0, var_0)))), global3[_wgslsmith_index_u32(~0u, 9u)] >> (_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 9u)], 9u)]), vec2<u32>(1u, 0u)), vec2<u32>(global3[_wgslsmith_index_u32(1u, 9u)], 1u)) % 32u), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0, var_0, var_0, 399f) * vec4<f32>(1371f, var_0, 264f, -1585f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(859f, 2216f, 286f, 1869f)))))), Struct_1(~(-52890i), global1.b, _wgslsmith_sub_i32(2147483647i, global1.c), global1.d)).x, !var_1.x);
    global3 = array<u32, 9>();
    return Struct_2(vec2<u32>(23529u, ~(~(global3[_wgslsmith_index_u32(60588u, 9u)] >> (global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(6500u, 9u)], 9u)], 9u)], 9u)], 9u)] % 32u)))), countOneBits(reverseBits(_wgslsmith_mult_vec2_u32(vec2<u32>(39644u, 63412u), vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)])))) & ~max(vec2<u32>(0u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 9u)], 9u)], 9u)], 9u)], 9u)]), min(vec2<u32>(global3[_wgslsmith_index_u32(4294967295u, 9u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)]), vec2<u32>(0u, 3199u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1183f, -369f, var_0, var_0)))))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    let var_0 = func_2();
    var var_1 = min(~_wgslsmith_sub_vec2_u32(countOneBits(select(var_0.a, var_0.b, true)), var_0.b), ~max(var_0.a << ((vec2<u32>(arg_0, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(arg_0, 9u)], 9u)]) >> (vec2<u32>(2792u, 4294967295u) % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.b));
    global2 = ~global1.c;
    global2 = _wgslsmith_dot_vec2_i32(-global1.d, vec2<i32>(-16074i, i32(-1i) * -11332i)) >> ((var_1.x & 0u) % 32u);
    global2 = ~(~0i);
    return Struct_3(-1657f < _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1219f), -1179f), _wgslsmith_div_f32(680f, 1f))), global3[_wgslsmith_index_u32(36655u, 9u)], vec4<i32>(u_input.a, abs((i32(-1i) * -49322i) << ((var_1.x << (0u % 32u)) % 32u)), firstTrailingBit(u_input.b), ~2147483647i | global1.d.x), _wgslsmith_div_vec4_i32(min(~vec4<i32>(u_input.c, global1.c, u_input.c, 2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(15779i, 2147483647i, -27803i, u_input.a), vec4<i32>(-2147483647i, u_input.a, u_input.a, -31403i))), vec4<i32>(global1.c, u_input.b, global1.d.x, u_input.b) ^ max(vec4<i32>(u_input.c, -1i, -1i, -8779i), vec4<i32>(2147483647i, global1.c, u_input.b, -2147483647i))) & _wgslsmith_div_vec4_i32(vec4<i32>(1i, ~u_input.a, ~global1.a, 0i), _wgslsmith_mult_vec4_i32(vec4<i32>(global1.d.x, -930i, u_input.c, -36591i), vec4<i32>(-1i, 1i, -2147483647i, u_input.c)) & -vec4<i32>(309i, 1i, 0i, global1.d.x)), Struct_2(firstTrailingBit(vec2<u32>(var_0.b.x, arg_0)), var_0.a, var_0.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~(13196u & global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(13824u, 52225u, global3[_wgslsmith_index_u32(55644u, 9u)]), vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(0u, 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(42210u, 9u)], 51403u)) >> (global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(30319u, 9u)], 9u)], 9u)], global3[_wgslsmith_index_u32(0u, 9u)]), 9u)] % 32u), 9u)], 9u)], 9u)]));
    let var_1 = _wgslsmith_f_op_vec4_f32(func_3(Struct_4(select(global1.b, global1.b, vec4<bool>(!global0.x, false, true, !global0.x))), Struct_5(_wgslsmith_clamp_vec4_i32(firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.a, global1.d.x, u_input.a), vec4<i32>(0i, global1.c, 0i, 8727i))), vec4<i32>(var_0.c.x << (51540u % 32u), -1i, -1i, ~u_input.a), abs(var_0.d)), ~(vec4<u32>(1u, var_0.b, global3[_wgslsmith_index_u32(4625u, 9u)], 0u) & ~vec4<u32>(4294967295u, var_0.e.b.x, global3[_wgslsmith_index_u32(var_0.e.b.x, 9u)], global3[_wgslsmith_index_u32(var_0.e.a.x, 9u)])), var_0.e.c.zyz, _wgslsmith_f_op_f32(var_0.e.c.x - var_0.e.c.x)), ~(~var_0.e.b) | (firstTrailingBit(var_0.e.b) >> (vec2<u32>(_wgslsmith_div_u32(global3[_wgslsmith_index_u32(23171u, 9u)], global3[_wgslsmith_index_u32(var_0.e.a.x, 9u)]), global3[_wgslsmith_index_u32(25936u, 9u)]) % vec2<u32>(32u))))).yxy;
    var var_2 = Struct_5(var_0.d, abs(reverseBits(~(vec4<u32>(var_0.b, var_0.b, global3[_wgslsmith_index_u32(4294967295u, 9u)], var_0.b) << (vec4<u32>(global3[_wgslsmith_index_u32(0u, 9u)], global3[_wgslsmith_index_u32(1u, 9u)], 4294967295u, var_0.e.b.x) % vec4<u32>(32u))))), _wgslsmith_f_op_vec3_f32(-var_0.e.c.xxz), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * _wgslsmith_f_op_f32(max(-538f, 926f)))))));
    let var_3 = _wgslsmith_dot_vec2_u32(vec2<u32>(~(~491u), 4294967295u) >> (vec2<u32>(var_0.e.a.x << (~global3[_wgslsmith_index_u32(1u, 9u)] % 32u), global3[_wgslsmith_index_u32(var_2.b.x, 9u)]) % vec2<u32>(32u)), var_0.e.b);
    var var_4 = _wgslsmith_clamp_vec4_i32(vec4<i32>(var_0.c.x << (var_2.b.x % 32u), _wgslsmith_sub_i32(_wgslsmith_mod_i32(13802i, global1.d.x), _wgslsmith_add_i32(var_2.a.x, 0i)), _wgslsmith_div_i32(-1i, -1i), ~41881i) | ~vec4<i32>(_wgslsmith_add_i32(-16900i, 2147483647i), _wgslsmith_add_i32(global1.a, 61257i), 5369i, _wgslsmith_sub_i32(var_2.a.x, var_0.c.x)), (~vec4<i32>(var_2.a.x, global1.d.x, global1.d.x, -15392i) ^ -var_2.a) ^ var_0.c, var_0.c);
    var_0 = func_1(3398u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.c.zx) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_2.c.x, var_2.d))) - _wgslsmith_f_op_vec2_f32(min(var_1.zx, var_1.xy))), vec2<f32>(203f, 1982f))), ~(~32924u), var_2.b.wzx, var_2.b.zx ^ var_0.e.b, func_2().c);
}

